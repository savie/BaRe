package com.bare.folders.backup;

import android.content.Context;
import android.os.Build;

import com.bare.appslist.restore.SbaArchiveCreationExecutor;
import com.bare.appslist.restore.SbaNativeArchiveBackend;
import com.bare.folders.data.FolderItem;
import com.bare.folders.manifest.FolderManifest;
import com.bare.folders.manifest.FolderManifestEntry;
import com.bare.folders.repository.LocalFolderSetupRepository;
import com.bare.home.repository.AnonymousIdentityStore;
import com.bare.settings.PasswordStrategy;
import com.bare.settings.PasswordStrategyRepository;
import com.bare.core.state.SecureLocalState;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileInputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * Concrete local Folder backup engine aligned with Reference wj3/kj3/ry5.
 *
 * Reference local path:
 *   <storage>/SwiftBackup/accounts/<first-half-MD5(uid)>/backups/folders/local/Folder-<id>/
 *
 * Reference artifacts:
 *   folder-base.fld / folder-base.flm
 *   folder-inc-<timestamp>.fld / folder-inc-<timestamp>.flm
 *
 * Archive framing is delegated to the exact Reference SBA native creator.
 */
public final class FolderLocalBackupEngine {
    private static final String ROOT = "SwiftBackup";
    private static final String BACKUPS = "backups";
    private static final String FOLDERS = "folders";
    private static final String LOCAL = "local";
    private static final String METADATA = "swiftbackup.folder.v1";
    private static final int SBA_VERSION = 2;
    private static final int COMPRESSION_METHOD = 1;
    private static final int COMPRESSION_LEVEL = 1;
    private static final int ENCRYPTION_METHOD = 4; // Reference default public native AEGIS-256
    private static final int KDF = 1;
    private static final int ARGON_ITERATIONS = 3;
    private static final int ARGON_MEMORY_KIB = 16_384;
    private static final int ARGON_PARALLELISM = 1;
    private static final int CHUNK_SIZE = 1_048_576;

    private final Context context;
    private final LocalFolderSetupRepository setups;

    public FolderLocalBackupEngine(Context context) {
        this.context = context.getApplicationContext();
        this.setups = new LocalFolderSetupRepository(context);
    }

    public Result backup(FolderItem item) throws Exception {
        if (item == null || !item.isValid()) throw new IllegalArgumentException("Invalid folder item");
        File source = new File(item.getSourceFolder());
        if (!source.isDirectory()) throw new IllegalArgumentException("Source folder does not exist: " + source);

        File backupDir = backupDir(item);
        if (!backupDir.exists() && !backupDir.mkdirs()) {
            throw new IllegalStateException("Cannot create folder backup directory");
        }

        Snapshot snapshot = scan(source);
        Existing existing = readLatest(backupDir);

        if (existing != null && sameState(existing, snapshot)) {
            return Result.noChange(existing.manifestFile, existing.archiveFile, snapshot.entries.size());
        }

        boolean createBase = existing == null;
        String backupId;
        String parent = null;
        String archiveName;
        String manifestName;
        Map<String, EntryState> payload = snapshot.entries;
        List<String> payloadDirectories = new ArrayList<>();
        List<String> added = new ArrayList<>();
        List<String> modified = new ArrayList<>();
        List<String> deleted = new ArrayList<>();

        if (!createBase) {
            parent = existing.manifest.optString("backupId", null);
            Diff diff = diff(existing.entries, snapshot.entries, existing.directories, snapshot.directories);
            added.addAll(diff.added);
            modified.addAll(diff.modified);
            deleted.addAll(diff.deleted);
            payloadDirectories.addAll(diff.directoriesAdded);
            if (diff.added.isEmpty() && diff.modified.isEmpty()
                    && diff.deleted.isEmpty() && diff.directoriesAdded.isEmpty()
                    && diff.directoriesDeleted.isEmpty()) {
                return Result.noChange(existing.manifestFile, existing.archiveFile, snapshot.entries.size());
            }
            String timestamp = new java.text.SimpleDateFormat(
                    "yyyyMMdd-HHmmss-SSS", Locale.ROOT).format(new java.util.Date());
            backupId = "inc-" + timestamp;
            archiveName = "folder-inc-" + timestamp + ".fld";
            manifestName = "folder-inc-" + timestamp + ".flm";
            payload = new LinkedHashMap<>();
            for (String path : diff.added) payload.put(path, snapshot.entries.get(path));
            for (String path : diff.modified) payload.put(path, snapshot.entries.get(path));
        } else {
            backupId = "base";
            archiveName = "folder-base.fld";
            manifestName = "folder-base.flm";
            added.addAll(snapshot.entries.keySet());
            payloadDirectories.addAll(snapshot.directories);
        }

        File archive = new File(backupDir, archiveName);
        File manifest = new File(backupDir, manifestName);

        createArchive(archive, source, payload, payloadDirectories, createBase);
        DirectoryChanges directoryChanges = createBase
                ? new DirectoryChanges(new ArrayList<>(snapshot.directories), Collections.emptyList())
                : diffDirectories(snapshot, existing);
        writeManifest(manifest, item, snapshot, backupId,
                createBase ? "BASE" : "INCREMENTAL", parent,
                added, modified, deleted, directoryChanges);

        if (!archive.isFile() || archive.length() <= 0L || !manifest.isFile() || manifest.length() <= 0L) {
            throw new IllegalStateException("Folder backup artifacts are incomplete");
        }

        return Result.success(manifest, archive, snapshot.entries.size(),
                added.size(), modified.size(), deleted.size(), archive.length());
    }

    public RestoreResult restore(FolderItem item, File manifestFile, File archiveFile) throws Exception {
        if (item == null || !item.isValid()) throw new IllegalArgumentException("Invalid folder item");
        if (manifestFile == null || !manifestFile.isFile() || archiveFile == null || !archiveFile.isFile()) {
            throw new IllegalArgumentException("Folder backup artifacts are missing");
        }

        if (manifestFile == null || archiveFile == null) {
            throw new IllegalArgumentException("Folder backup artifacts are missing");
        }
        com.bare.folders.restore.FolderLocalRestoreEngine engine =
                new com.bare.folders.restore.FolderLocalRestoreEngine(context);
        com.bare.folders.restore.FolderLocalRestoreEngine.RestoreOutcome outcome =
                engine.restore(item, new File(item.getSourceFolder()),
                        com.bare.folders.restore.FolderRestoreStrategy.MISSING_ONLY);
        return new RestoreResult(outcome.restoredFiles, outcome.removedFiles);
    }

    public List<BackupInfo> listBackups(FolderItem item) {
        if (item == null || !item.isValid()) return Collections.emptyList();
        File dir = backupDir(item);
        File[] files = dir.listFiles();
        if (files == null) return Collections.emptyList();
        ArrayList<BackupInfo> result = new ArrayList<>();
        for (File file : files) {
            if (!file.isFile() || !file.getName().endsWith(".flm")) continue;
            File archive = new File(dir, file.getName().replace(".flm", ".fld"));
            if (!archive.isFile() || archive.length() <= 0) continue;
            try {
                JSONObject m = new JSONObject(readUtf8(file));
                result.add(new BackupInfo(file, archive, m.optString("backupId", file.getName()),
                        m.optString("backupType", "UNKNOWN"), m.optLong("created", file.lastModified()),
                        m.optLong("filesScanned", 0L)));
            } catch (Exception ignored) {}
        }
        result.sort((a,b) -> Long.compare(b.created, a.created));
        return result;
    }

    private Existing readLatest(File dir) {
        List<BackupInfo> list = new ArrayList<>();
        File[] files = dir.listFiles();
        if (files == null) return null;
        for (File f : files) {
            if (!f.isFile() || !f.getName().endsWith(".flm")) continue;
            File archive = new File(dir, f.getName().replace(".flm", ".fld"));
            if (!archive.isFile()) continue;
            try {
                JSONObject m = new JSONObject(readUtf8(f));
                list.add(new BackupInfo(f, archive, m.optString("backupId", ""),
                        m.optString("backupType", ""), m.optLong("created", 0L),
                        m.optLong("filesScanned", 0L)));
            } catch (Exception ignored) {}
        }
        if (list.isEmpty()) return null;
        list.sort((a,b) -> Long.compare(b.created, a.created));
        BackupInfo latest = list.get(0);
        try {
            JSONObject m = new JSONObject(readUtf8(latest.manifestFile));
            Map<String, EntryState> entries = parseState(m.optJSONArray("files"));
            return new Existing(latest.manifestFile, latest.archiveFile, m, entries);
        } catch (Exception e) {
            return null;
        }
    }

    private void createArchive(
            File output, File source, Map<String, EntryState> payload,
            List<String> payloadDirectories, boolean createBase) throws Exception {
        File archiveSource = source;
        File staging = null;
        boolean fullSource = createBase;
        try {
            if (!fullSource) {
                staging = new File(context.getCacheDir(),
                        "folder-sba-stage-" + System.nanoTime());
                if (!staging.mkdirs()) throw new IllegalStateException("Cannot create folder archive staging directory");
                for (String relative : payloadDirectories) {
                    File directory = new File(source, relative);
                    if (directory.isDirectory() && !new File(staging, relative).mkdirs()
                            && !new File(staging, relative).isDirectory()) {
                        throw new IllegalStateException("Cannot create folder archive staging directory");
                    }
                }
                for (String relative : payload.keySet()) {
                    File from = new File(source, relative);
                    File to = new File(staging, relative);
                    File parent = to.getParentFile();
                    if (parent != null && !parent.exists() && !parent.mkdirs()) {
                        throw new IllegalStateException("Cannot create folder archive staging path");
                    }
                    if (from.isFile()) copyFile(from, to);
                }
                archiveSource = staging;
            }

            String[] entryNames = new String[]{output.getName()};
            int[] flags = new int[]{0};
            char[] passwordChars = referencePasswordChars();
            byte[] salt = new byte[16];
            byte[] nonce = new byte[16];
            byte[] key = null;
            byte[] keyCheck = null;
            try {
                java.security.SecureRandom random = new java.security.SecureRandom();
                random.nextBytes(salt);
                random.nextBytes(nonce);
                key = new SbaNativeArchiveBackend().deriveArgon2id(
                        new String(passwordChars), salt, ARGON_ITERATIONS,
                        ARGON_MEMORY_KIB, ARGON_PARALLELISM, 32);
                keyCheck = SbaArchiveCreationExecutor.keyCheck(
                        "SBA1-AEGIS256-key-check-v1", key, salt, nonce);
                SbaArchiveCreationExecutor.Result result = new SbaArchiveCreationExecutor().create(
                        output,
                        METADATA.getBytes(StandardCharsets.UTF_8),
                        new byte[][]{null},
                        entryNames,
                        flags,
                        new String[][]{null},
                        new String[][]{null},
                        SBA_VERSION, COMPRESSION_METHOD, COMPRESSION_LEVEL, ENCRYPTION_METHOD,
                        KDF, ARGON_ITERATIONS, ARGON_MEMORY_KIB, ARGON_PARALLELISM, CHUNK_SIZE,
                        1, 0, key, keyCheck, salt, nonce, null);
                if (!result.isSuccess()) throw new IllegalStateException(result.getError());
                key = null;
                keyCheck = null;
            } finally {
                Arrays.fill(passwordChars, '\0');
                if (key != null) Arrays.fill(key, (byte) 0);
                if (keyCheck != null) Arrays.fill(keyCheck, (byte) 0);
                Arrays.fill(salt, (byte) 0);
                Arrays.fill(nonce, (byte) 0);
            }
        } finally {
            if (staging != null) deleteTree(staging);
        }
    }

    private static int countFiles(File root) {
        int count = 0;
        File[] files = root.listFiles();
        if (files == null) return 0;
        for (File file : files) count += file.isDirectory() ? countFiles(file) : 1;
        return count;
    }

    private static void copyFile(File from, File to) throws Exception {
        try (FileInputStream in = new FileInputStream(from);
             FileOutputStream out = new FileOutputStream(to)) {
            byte[] buffer = new byte[262144];
            int n;
            while ((n = in.read(buffer)) != -1) out.write(buffer, 0, n);
        }
    }

    private static void deleteTree(File root) {
        if (root == null || !root.exists()) return;
        File[] files = root.listFiles();
        if (files != null) for (File file : files) {
            if (file.isDirectory()) deleteTree(file);
            else file.delete();
        }
        root.delete();
    }

    private Snapshot scan(File source) throws Exception {
        LinkedHashMap<String, EntryState> entries = new LinkedHashMap<>();
        ArrayList<String> directories = new ArrayList<>();
        scanDir(source, source, entries, directories);
        Collections.sort(directories);
        return new Snapshot(entries, directories);
    }

    private void scanDir(
            File root, File dir, Map<String, EntryState> out, List<String> directories) throws Exception {
        File[] files = dir.listFiles();
        if (files == null) return;
        Arrays.sort(files, (a,b) -> a.getAbsolutePath().compareTo(b.getAbsolutePath()));
        for (File file : files) {
            String relative = root.toPath().relativize(file.toPath()).toString().replace(File.separatorChar, '/');
            if (file.isDirectory()) {
                if (!relative.isEmpty()) directories.add(relative);
                scanDir(root, file, out, directories);
            } else if (file.isFile()) {
                out.put(relative, new EntryState(file.length(), file.lastModified()));
            }
        }
    }

    private Diff diff(
            Map<String, EntryState> oldState, Map<String, EntryState> newState,
            List<String> oldDirectories, List<String> newDirectories) {
        ArrayList<String> added = new ArrayList<>();
        ArrayList<String> modified = new ArrayList<>();
        ArrayList<String> deleted = new ArrayList<>();
        for (Map.Entry<String, EntryState> e : newState.entrySet()) {
            EntryState old = oldState.get(e.getKey());
            if (old == null) added.add(e.getKey());
            else if (!old.same(e.getValue())) modified.add(e.getKey());
        }
        for (String path : oldState.keySet()) if (!newState.containsKey(path)) deleted.add(path);
        ArrayList<String> directoriesAdded = new ArrayList<>();
        ArrayList<String> directoriesDeleted = new ArrayList<>();
        Set<String> oldDirs = new java.util.LinkedHashSet<>(oldDirectories);
        Set<String> newDirs = new java.util.LinkedHashSet<>(newDirectories);
        for (String path : newDirectories) if (!oldDirs.contains(path)) directoriesAdded.add(path);
        for (String path : oldDirectories) if (!newDirs.contains(path)) directoriesDeleted.add(path);
        return new Diff(added, modified, deleted, directoriesAdded, directoriesDeleted);
    }

    private boolean sameState(Snapshot a, Snapshot b) {
        Diff d = diff(a.entries, b.entries, a.directories, b.directories);
        return d.added.isEmpty() && d.modified.isEmpty() && d.deleted.isEmpty()
                && d.directoriesAdded.isEmpty() && d.directoriesDeleted.isEmpty();
    }

    private void writeManifest(File file, FolderItem item, Snapshot snapshot, String backupId,
                               String type, String parent, List<String> added,
                               List<String> modified, List<String> deleted,
                               DirectoryChanges directoryChanges) throws Exception {
        JSONObject root = new JSONObject();
        root.put("manifestVersion", 1);
        root.put("backupId", backupId);
        root.put("backupType", type);
        if (parent != null) root.put("parentBackupId", parent);
        root.put("created", System.currentTimeMillis());
        root.put("sourcePath", item.getSourceFolder());
        root.put("displayName", item.getDisplayName());
        root.put("filesScanned", snapshot.entries.size());
        JSONArray files = new JSONArray();
        for (Map.Entry<String, EntryState> e : snapshot.entries.entrySet()) {
            JSONObject o = new JSONObject();
            o.put("path", e.getKey());
            o.put("size", e.getValue().size);
            o.put("mtime", e.getValue().mtime);
            files.put(o);
        }
        root.put("files", files);
        root.put("filesAdded", new JSONArray(added));
        root.put("filesModified", new JSONArray(modified));
        root.put("filesDeleted", new JSONArray(deleted));
        root.put("directories", new JSONArray(snapshot.directories));
        root.put("directoriesAdded", new JSONArray(directoryChanges.added));
        root.put("directoriesDeleted", new JSONArray(directoryChanges.deleted));
        writeUtf8(file, root.toString());
    }

    private DirectoryChanges diffDirectories(
            Snapshot snapshot, Existing existing) {
        Diff d = diff(existing.entries, snapshot.entries, existing.directories, snapshot.directories);
        return new DirectoryChanges(d.directoriesAdded, d.directoriesDeleted);
    }

    private File backupDir(FolderItem item) {
        String uid = new AnonymousIdentityStore(context).getOrCreateUid();
        String account = md5(uid).substring(0, 16);
        StorageRoot storage = new StorageRoot(context);
        File root = new File(storage.root(), ROOT + "/accounts/" + account + "/backups/folders/local");
        return new File(root, "Folder-" + item.getId());
    }

    private String referencePassword() {
        return FolderBackupPasswordProvider.get(context);
    }

    private char[] referencePasswordChars() { return referencePassword().toCharArray(); }

    private static String md5(String value) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(
                    value.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) sb.append(String.format(Locale.ROOT, "%02x", b & 255));
            return sb.toString();
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    private static String safeRelative(String value) {
        if (value == null || value.isEmpty() || value.startsWith("/")
                || value.contains("..") || value.indexOf('\0') >= 0) return null;
        return value.replace('\\', '/');
    }

    private static String readUtf8(File file) throws Exception {
        try (FileInputStream in = new FileInputStream(file)) {
            byte[] data = new byte[(int) file.length()];
            int off = 0, n;
            while (off < data.length && (n = in.read(data, off, data.length-off)) > 0) off += n;
            return new String(data, 0, off, StandardCharsets.UTF_8);
        }
    }

    private static void writeUtf8(File file, String value) throws Exception {
        try (FileOutputStream out = new FileOutputStream(file)) {
            out.write(value.getBytes(StandardCharsets.UTF_8));
        }
    }

    public static final class BackupInfo {
        public final File manifestFile, archiveFile;
        public final String backupId, backupType;
        public final long created, filesScanned;
        BackupInfo(File m, File a, String id, String type, long created, long scanned) {
            manifestFile=m; archiveFile=a; backupId=id; backupType=type; this.created=created; filesScanned=scanned;
        }
    }
    public static final class Result {
        public enum Kind { SUCCESS, NO_CHANGE }
        public final Kind kind; public final File manifestFile, archiveFile;
        public final int filesScanned, filesAdded, filesModified, filesDeleted; public final long bytes;
        private Result(Kind k, File m, File a, int s, int ad, int mo, int de, long b) {
            kind=k; manifestFile=m; archiveFile=a; filesScanned=s; filesAdded=ad; filesModified=mo; filesDeleted=de; bytes=b;
        }
        static Result success(File m, File a,int s,int ad,int mo,int de,long b){return new Result(Kind.SUCCESS,m,a,s,ad,mo,de,b);}
        static Result noChange(File m, File a,int s){return new Result(Kind.NO_CHANGE,m,a,s,0,0,0,a==null?0:a.length());}
    }
    public static final class RestoreResult {
        public final int restored, removed;
        RestoreResult(int r,int d){restored=r;removed=d;}
    }
    private static final class Snapshot {
        final Map<String,EntryState> entries;
        final List<String> directories;
        Snapshot(Map<String,EntryState> e, List<String> d){entries=e;directories=d;}
    }
    private static final class EntryState { final long size,mtime; EntryState(long s,long m){size=s;mtime=m;} boolean same(EntryState o){return o!=null&&size==o.size&&mtime==o.mtime;} }
    private static final class Existing {
        final File manifestFile,archiveFile; final JSONObject manifest;
        final Map<String,EntryState> entries; final List<String> directories;
        Existing(File m,File a,JSONObject j,Map<String,EntryState> e){
            manifestFile=m;archiveFile=a;manifest=j;entries=e;
            directories=parseDirectories(j.optJSONArray("directories"));
        }
    }
    private static final class Diff {
        final List<String> added,modified,deleted,directoriesAdded,directoriesDeleted;
        Diff(List<String>a,List<String>m,List<String>d,List<String>da,List<String>dd){
            added=a;modified=m;deleted=d;directoriesAdded=da;directoriesDeleted=dd;
        }
    }
    private static final class DirectoryChanges {
        final List<String> added,deleted;
        DirectoryChanges(List<String>a,List<String>d){added=a;deleted=d;}
    }
    private static final class StorageRoot {
        final Context context;
        StorageRoot(Context c){context=c;}
        File root(){
            com.bare.storage.StorageSelection s=new com.bare.storage.LocalStorageCoordinator(
                    context,new com.bare.storage.AndroidStorageInventory(context)).resolveSelection();
            if(s==null||s.selected==null) throw new IllegalStateException("No selected local storage");
            return new File(s.selected.rootPath);
        }
    }
    private static final class PreferenceState implements SecureLocalState {
        final android.content.SharedPreferences p;
        PreferenceState(Context c){p=c.getSharedPreferences(c.getPackageName()+"_preferences",Context.MODE_PRIVATE);}
        public boolean contains(String k){return p.contains(k);} public boolean getBoolean(String k,boolean d){return p.getBoolean(k,d);}
        public void putBoolean(String k,boolean v){p.edit().putBoolean(k,v).apply();} public int getInt(String k,int d){return p.getInt(k,d);}
        public void putInt(String k,int v){p.edit().putInt(k,v).apply();} public void putString(String k,String v){p.edit().putString(k,v).apply();}
        public String getString(String k,String d){return p.getString(k,d);} public void remove(String k){p.edit().remove(k).apply();}
    }
}
