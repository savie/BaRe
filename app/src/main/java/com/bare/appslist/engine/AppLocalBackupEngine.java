package com.bare.appslist.engine;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

import com.bare.appslist.data.AppInventoryItem;
import com.bare.appslist.restore.SbaArchiveCreationExecutor;
import com.bare.appslist.restore.SbaNativeArchiveBackend;
import com.bare.home.repository.AnonymousIdentityStore;
import com.bare.messagescalls.backups.CallsBackupRepository;
import com.bare.storage.AndroidStorageInventory;
import com.bare.storage.LocalStorageCoordinator;
import com.bare.storage.StorageSelection;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/**
 * Concrete local Apps backup/restore owner.
 *
 * Reference storage shape:
 * SwiftBackup/accounts/<uid-half-md5>/backups/apps/local/<package>/<backupId>.<part>
 * with .app/.splits/.libs/.dat/.extdat/.med/.extra and a metadata .xml.
 *
 * Archive creation uses the Reference SBA native ABI. Privileged app-private
 * paths are staged through the privileged command boundary before native
 * archive creation and copied back through the same boundary during restore.
 */
public final class AppLocalBackupEngine {
    public enum Part { APK, SPLITS, SHARED_LIBS, DATA, EXTERNAL_DATA, MEDIA, EXPANSION }

    private static final int SBA_VERSION = 2;
    private static final int COMPRESSION_METHOD = 1;
    private static final int COMPRESSION_LEVEL = 1;
    private static final int ENCRYPTION_METHOD = 4;
    private static final int KDF = 1;
    private static final int ARGON_ITERATIONS = 3;
    private static final int ARGON_MEMORY_KIB = 16384;
    private static final int ARGON_PARALLELISM = 1;
    private static final int CHUNK_SIZE = 1048576;

    private final Context context;
    private final PrivilegedFileAccess privileged;

    public AppLocalBackupEngine(Context context) {
        this(context, new PrivilegedFileAccess());
    }

    public AppLocalBackupEngine(Context context, PrivilegedFileAccess privileged) {
        if (context == null) throw new NullPointerException("context");
        if (privileged == null) throw new NullPointerException("privileged");
        this.context = context.getApplicationContext();
        this.privileged = privileged;
    }

    public BackupResult backup(AppInventoryItem item, Set<Part> requested) throws Exception {
        if (item == null) throw new IllegalArgumentException("app");
        PackageInfo info = packageInfo(item.packageName);
        File packageDir = packageBackupDirectory(item.packageName);
        if (!packageDir.exists() && !packageDir.mkdirs()) {
            throw new IllegalStateException("Cannot create app backup directory");
        }

        String backupId = nextBackupId(packageDir);
        ArrayList<String> completed = new ArrayList<>();
        ArrayList<File> temporary = new ArrayList<>();
        JSONObject metadata = new JSONObject();

        metadata.put("formatVersion", 1);
        metadata.put("backupId", backupId);
        metadata.put("packageName", info.packageName);
        metadata.put("versionName", info.versionName);
        metadata.put("versionCode", info.getLongVersionCode());
        metadata.put("backupDate", System.currentTimeMillis());
        metadata.put("encrypted", true);
        metadata.put("encryptionMethod", "AEGIS-256");
        metadata.put("compressionMethod", "ZSTD");
        metadata.put("requiredVersionCode", 580);
        metadata.put("requiredVersionName", "v5.0.0");

        try {
            Set<Part> parts = requested == null || requested.isEmpty()
                    ? new LinkedHashSet<>(Collections.singleton(Part.APK))
                    : new LinkedHashSet<>(requested);

            if (parts.contains(Part.APK)) {
                File source = new File(info.applicationInfo.sourceDir);
                File destination = new File(packageDir, backupId + ".app");
                copyFile(source, destination);
                metadata.put("apkSize", destination.length());
                completed.add("APK");
            }

            if (parts.contains(Part.SPLITS)) {
                List<String> splits = splitSources(info);
                if (!splits.isEmpty()) {
                    File archive = new File(packageDir, backupId + ".splits");
                    createArchive(
                            archive,
                            "splits",
                            splitSourcesForArchive(splits),
                            temporary);
                    metadata.put("splits", new JSONArray(splitNames(splits)));
                    metadata.put("splitsSize", archive.length());
                    completed.add("SPLITS");
                }
            }

            if (parts.contains(Part.SHARED_LIBS)) {
                List<File> libraries = sharedLibraries(info);
                if (!libraries.isEmpty()) {
                    File archive = new File(packageDir, backupId + ".libs");
                    createArchive(archive, "libs", libraries, temporary);
                    metadata.put("sharedLibs", new JSONArray(fileNames(libraries)));
                    metadata.put("sharedLibsSize", archive.length());
                    completed.add("SHARED_LIBS");
                }
            }

            if (parts.contains(Part.DATA)) {
                File archive = new File(packageDir, backupId + ".dat");
                List<File> sources = stagePrivilegedData(info, temporary);
                if (!sources.isEmpty()) {
                    createArchive(archive, "data", sources, temporary);
                    metadata.put("dataSize", archive.length());
                    metadata.put("dataEntries", new JSONArray(new String[]{"data"}));
                    completed.add("DATA");
                }
            }

            if (parts.contains(Part.EXTERNAL_DATA)) {
                File source = externalDataDirectory(info.packageName);
                if (source.isDirectory()) {
                    File archive = new File(packageDir, backupId + ".extdat");
                    createArchive(archive, info.packageName, Collections.singletonList(source), temporary);
                    metadata.put("extDataSize", archive.length());
                    completed.add("EXTERNAL_DATA");
                }
            }

            if (parts.contains(Part.MEDIA)) {
                File source = mediaDirectory(info.packageName);
                if (source.isDirectory()) {
                    File archive = new File(packageDir, backupId + ".med");
                    createArchive(archive, info.packageName, Collections.singletonList(source), temporary);
                    metadata.put("mediaSize", archive.length());
                    completed.add("MEDIA");
                }
            }

            if (parts.contains(Part.EXPANSION)) {
                File source = expansionDirectory(info.packageName);
                if (source.isDirectory()) {
                    File archive = new File(packageDir, backupId + ".extra");
                    createArchive(archive, info.packageName, Collections.singletonList(source), temporary);
                    metadata.put("expansionSize", archive.length());
                    completed.add("EXPANSION");
                }
            }

            metadata.put("parts", new JSONArray(completed));
            File xml = new File(packageDir, backupId + ".xml");
            writeAtomic(xml, metadata.toString());

            return new BackupResult(
                    item.packageName, backupId, packageDir, completed,
                    metadata.optLong("apkSize", 0L)
                            + metadata.optLong("splitsSize", 0L)
                            + metadata.optLong("sharedLibsSize", 0L)
                            + metadata.optLong("dataSize", 0L)
                            + metadata.optLong("extDataSize", 0L)
                            + metadata.optLong("mediaSize", 0L)
                            + metadata.optLong("expansionSize", 0L));
        } finally {
            for (File file : temporary) deleteTree(file);
        }
    }

    public List<BackupRecord> listBackups(String packageName) {
        File dir = packageBackupDirectory(packageName);
        File[] files = dir.listFiles();
        if (files == null) return Collections.emptyList();
        ArrayList<BackupRecord> result = new ArrayList<>();
        for (File file : files) {
            if (!file.isFile() || !file.getName().endsWith(".xml")) continue;
            String id = file.getName().substring(0, file.getName().length() - 4);
            try {
                JSONObject metadata = new JSONObject(readUtf8(file));
                if (!packageName.equals(metadata.optString("packageName", ""))) continue;
                result.add(new BackupRecord(id, file, metadata, dir));
            } catch (Exception ignored) {
            }
        }
        result.sort((a, b) -> b.id.compareTo(a.id));
        return result;
    }

    public RestoreResult restore(
            String packageName, String backupId, Set<Part> requested) throws Exception {
        BackupRecord record = findBackup(packageName, backupId);
        PackageInfo installed = installedOrNull(packageName);
        long requiredVersion = record.metadata.optLong("requiredVersionCode", 0L);
        if (requiredVersion > 0 && currentVersionCode() < requiredVersion) {
            throw new IllegalStateException("Backup requires a newer BaRe version");
        }

        Set<Part> parts = requested == null || requested.isEmpty()
                ? parseParts(record.metadata.optJSONArray("parts"))
                : new LinkedHashSet<>(requested);

        int restored = 0;
        if (parts.contains(Part.APK)) {
            ArrayList<AppPackageInstaller.Entry> entries = new ArrayList<>();
            File apk = new File(record.directory, backupId + ".app");
            if (apk.isFile()) {
                entries.add(new AppPackageInstaller.Entry("base.apk", apk));
            }
            File splitArchive = new File(record.directory, backupId + ".splits");
            if (parts.contains(Part.SPLITS) && splitArchive.isFile()) {
                File splitDir = extractArchive(splitArchive, "splits-restore", record, false);
                for (File file : apkFiles(splitDir)) {
                    entries.add(new AppPackageInstaller.Entry(file.getName(), file));
                }
            }
            if (!entries.isEmpty()) {
                new AppPackageInstaller(context).install(packageName, entries);
                restored++;
            }
        }

        if (parts.contains(Part.DATA)) {
            File archive = new File(record.directory, backupId + ".dat");
            if (archive.isFile()) {
                File extracted = extractArchive(archive, "data-restore", record, true);
                File data = new File(extracted, "data");
                if (data.exists()) {
                    privileged.copyTree(
                            data.getAbsolutePath(),
                            dataDirectory(packageName),
                            installed == null);
                    restored++;
                }
            }
        }

        if (parts.contains(Part.EXTERNAL_DATA)) {
            restored += restoreArchivePart(
                    record, backupId + ".extdat", externalDataDirectory(packageName), false);
        }
        if (parts.contains(Part.MEDIA)) {
            restored += restoreArchivePart(
                    record, backupId + ".med", mediaDirectory(packageName), false);
        }
        if (parts.contains(Part.EXPANSION)) {
            restored += restoreArchivePart(
                    record, backupId + ".extra", expansionDirectory(packageName), false);
        }

        return new RestoreResult(packageName, backupId, restored);
    }

    private int restoreArchivePart(
            BackupRecord record, String fileName, File destination, boolean privilegedCopy)
            throws Exception {
        File archive = new File(record.directory, fileName);
        if (!archive.isFile()) return 0;
        File extracted = extractArchive(archive, "part-restore", record, privilegedCopy);
        File source = new File(extracted, record.metadata.optString("packageName", ""));
        if (!source.exists()) source = extracted;
        if (privilegedCopy) privileged.copyTree(source.getAbsolutePath(), destination.getAbsolutePath(), true);
        else copyTree(source, destination);
        return 1;
    }

    private File extractArchive(
            File archive, String name, BackupRecord record, boolean privileged) throws Exception {
        File root = new File(context.getCacheDir(), "app-restore-" + name + "-" + System.nanoTime());
        if (!root.mkdirs()) throw new IllegalStateException("Cannot create restore staging directory");
        String password = new String(CallsBackupRepository.referencePassword(context));
        try {
            com.bare.messagescalls.restore.ReferenceSbaNativeRestoreOrchestrator.extractToDirectory(
                    archive, password, root, null);
            return root;
        } finally {
            Arrays.fill(password.toCharArray(), '\0');
        }
    }

    private void createArchive(
            File output, String entryName, List<File> sources, List<File> temporary) throws Exception {
        if (sources == null || sources.isEmpty()) throw new IllegalArgumentException("No SBA source");
        byte[] salt = new byte[16];
        byte[] nonce = new byte[16];
        byte[] key = null;
        byte[] keyCheck = null;
        char[] password = CallsBackupRepository.referencePassword(context);
        try {
            SecureRandom random = new SecureRandom();
            random.nextBytes(salt);
            random.nextBytes(nonce);
            key = new SbaNativeArchiveBackend().deriveArgon2id(
                    new String(password), salt, ARGON_ITERATIONS, ARGON_MEMORY_KIB,
                    ARGON_PARALLELISM, 32);
            keyCheck = SbaArchiveCreationExecutor.keyCheck(
                    "SBA1-AEGIS256-key-check-v1", key, salt, nonce);

            byte[][] metadata = new byte[sources.size()][];
            String[] sourcePaths = new String[sources.size()];
            int[] flags = new int[sources.size()];
            for (int i = 0; i < sources.size(); i++) {
                metadata[i] = (i == 0 ? entryName : (entryName + "_" + i))
                        .getBytes(StandardCharsets.UTF_8);
                sourcePaths[i] = sources.get(i).getAbsolutePath();
                flags[i] = 0;
            }

            SbaArchiveCreationExecutor.Result result = new SbaArchiveCreationExecutor().create(
                    output,
                    "swiftbackup.app-data".getBytes(StandardCharsets.UTF_8),
                    metadata, sourcePaths, flags,
                    new String[sources.size()][],
                    new String[sources.size()][],
                    SBA_VERSION, COMPRESSION_METHOD, COMPRESSION_LEVEL, ENCRYPTION_METHOD,
                    KDF, ARGON_ITERATIONS, ARGON_MEMORY_KIB, ARGON_PARALLELISM, CHUNK_SIZE,
                    1, 0, key, keyCheck, salt, nonce, null);
            key = null;
            keyCheck = null;
            if (!result.isSuccess()) throw new IllegalStateException(result.getError());
        } finally {
            Arrays.fill(password, '\0');
            if (key != null) Arrays.fill(key, (byte) 0);
            if (keyCheck != null) Arrays.fill(keyCheck, (byte) 0);
            Arrays.fill(salt, (byte) 0);
            Arrays.fill(nonce, (byte) 0);
        }
    }

    private List<File> stagePrivilegedData(PackageInfo info, List<File> temporary) throws Exception {
        ArrayList<File> sources = new ArrayList<>();
        File root = new File(context.getCacheDir(), "app-data-stage-" + System.nanoTime());
        if (!root.mkdirs()) throw new IllegalStateException("Cannot create app data stage");
        temporary.add(root);

        File data = new File(root, "data");
        privileged.copyTree(dataDirectory(info.packageName), data.getAbsolutePath(), false);
        if (data.isDirectory()) sources.add(data);

        if (android.os.Build.VERSION.SDK_INT >= 24) {
            File de = new File(root, "data_de");
            String dePath = deDataDirectory(info.packageName);
            if (privileged.copyTree(dePath, de.getAbsolutePath(), false) && de.isDirectory()) {
                sources.add(de);
            }
        }
        return sources;
    }

    private PackageInfo packageInfo(String packageName) throws Exception {
        return context.getPackageManager().getPackageInfo(
                packageName, PackageManager.GET_META_DATA | PackageManager.GET_SHARED_LIBRARY_FILES);
    }

    private PackageInfo installedOrNull(String packageName) {
        try { return packageInfo(packageName); } catch (Exception ignored) { return null; }
    }

    private List<String> splitSources(PackageInfo info) {
        ArrayList<String> result = new ArrayList<>();
        if (info.applicationInfo != null && info.applicationInfo.splitSourceDirs != null) {
            for (String path : info.applicationInfo.splitSourceDirs) if (path != null) result.add(path);
        }
        return result;
    }

    private List<File> splitSourcesForArchive(List<String> sources) {
        ArrayList<File> result = new ArrayList<>();
        for (String path : sources) result.add(new File(path));
        return result;
    }

    private List<File> sharedLibraries(PackageInfo info) {
        ArrayList<File> result = new ArrayList<>();
        String[] files = info.applicationInfo == null ? null : info.applicationInfo.sharedLibraryFiles;
        if (files != null) for (String path : files) if (path != null) result.add(new File(path));
        return result;
    }

    private List<String> splitNames(List<String> sources) {
        ArrayList<String> result = new ArrayList<>();
        for (String path : sources) result.add(new File(path).getName());
        return result;
    }

    private List<String> fileNames(List<File> files) {
        ArrayList<String> result = new ArrayList<>();
        for (File file : files) result.add(file.getName());
        return result;
    }

    private List<File> apkFiles(File root) {
        ArrayList<File> result = new ArrayList<>();
        File[] files = root.listFiles();
        if (files == null) return result;
        for (File file : files) {
            if (file.isFile() && file.getName().endsWith(".apk")) result.add(file);
            else if (file.isDirectory()) result.addAll(apkFiles(file));
        }
        result.sort((a, b) -> a.getName().compareTo(b.getName()));
        return result;
    }

    private BackupRecord findBackup(String packageName, String backupId) {
        for (BackupRecord record : listBackups(packageName)) {
            if (record.id.equals(backupId)) return record;
        }
        throw new IllegalArgumentException("Backup not found");
    }

    private File packageBackupDirectory(String packageName) {
        StorageSelection selection = new LocalStorageCoordinator(
                context, new AndroidStorageInventory(context)).resolveSelection();
        if (selection == null || selection.selected == null) {
            throw new IllegalStateException("No selected local storage");
        }
        String uid = new AnonymousIdentityStore(context).getOrCreateUid();
        String account = md5(uid).substring(0, 16);
        return new File(selection.selected.rootPath,
                "SwiftBackup/accounts/" + account + "/backups/apps/local/" + packageName);
    }

    private String nextBackupId(File packageDir) {
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.ROOT);
        String base = format.format(new Date());
        String id = base + "-" + randomTag();
        while (new File(packageDir, id + ".xml").exists()) id = base + "-" + randomTag();
        return id;
    }

    private String randomTag() {
        final char[] alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        SecureRandom random = new SecureRandom();
        return "" + alphabet[random.nextInt(alphabet.length)]
                + alphabet[random.nextInt(alphabet.length)];
    }

    private static String md5(String value) {
        try {
            byte[] digest = java.security.MessageDigest.getInstance("MD5").digest(
                    value.getBytes(StandardCharsets.UTF_8));
            StringBuilder out = new StringBuilder();
            for (byte b : digest) out.append(String.format(Locale.ROOT, "%02x", b & 255));
            return out.toString();
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    private static long currentVersionCode() {
        return 620;
    }

    private static File dataDirectory(String packageName) {
        return new File("/data/user/0/" + packageName);
    }

    private static String deDataDirectory(String packageName) {
        return "/data/user_de/0/" + packageName;
    }

    private static File externalDataDirectory(String packageName) {
        return new File(android.os.Environment.getExternalStorageDirectory(),
                "Android/data/" + packageName);
    }

    private static File mediaDirectory(String packageName) {
        return new File(android.os.Environment.getExternalStorageDirectory(),
                "Android/media/" + packageName);
    }

    private static File expansionDirectory(String packageName) {
        return new File(android.os.Environment.getExternalStorageDirectory(),
                "Android/obb/" + packageName);
    }

    private static void copyTree(File source, File destination) throws Exception {
        if (!source.exists()) return;
        if (source.isDirectory()) {
            if (!destination.exists() && !destination.mkdirs()) {
                throw new IllegalStateException("Cannot create destination directory");
            }
            File[] children = source.listFiles();
            if (children != null) for (File child : children) {
                copyTree(child, new File(destination, child.getName()));
            }
        } else {
            File parent = destination.getParentFile();
            if (parent != null && !parent.exists() && !parent.mkdirs()) {
                throw new IllegalStateException("Cannot create destination directory");
            }
            try (FileInputStream in = new FileInputStream(source);
                 FileOutputStream out = new FileOutputStream(destination)) {
                byte[] buffer = new byte[262144];
                int n;
                while ((n = in.read(buffer)) != -1) out.write(buffer, 0, n);
            }
        }
    }

    private static void writeAtomic(File file, String value) throws Exception {
        File temp = new File(file.getParentFile(), "." + file.getName() + ".tmp");
        try (FileOutputStream out = new FileOutputStream(temp)) {
            out.write(value.getBytes(StandardCharsets.UTF_8));
            out.getFD().sync();
        }
        if (!temp.renameTo(file)) {
            if (file.exists()) file.delete();
            if (!temp.renameTo(file)) throw new IllegalStateException("Cannot finalize metadata");
        }
    }

    private static void deleteTree(File root) {
        if (root == null || !root.exists()) return;
        File[] children = root.listFiles();
        if (children != null) for (File child : children) {
            if (child.isDirectory()) deleteTree(child);
            else child.delete();
        }
        root.delete();
    }

    public static final class BackupRecord {
        public final String id;
        public final File metadataFile;
        public final JSONObject metadata;
        public final File directory;
        BackupRecord(String i, File m, JSONObject j, File d) {
            id = i; metadataFile = m; metadata = j; directory = d;
        }
    }

    public static final class BackupResult {
        public final String packageName, backupId;
        public final File directory;
        public final List<String> parts;
        public final long size;
        BackupResult(String p, String i, File d, List<String> r, long s) {
            packageName = p; backupId = i; directory = d;
            parts = Collections.unmodifiableList(new ArrayList<>(r)); size = s;
        }
    }

    public static final class RestoreResult {
        public final String packageName, backupId;
        public final int restoredParts;
        RestoreResult(String p, String i, int r) {
            packageName = p; backupId = i; restoredParts = r;
        }
    }

    public static final class PrivilegedFileAccess {
        private final com.bare.appslist.actions.PrivilegedAppActionExecutor.RootCommandRunner runner =
                new com.bare.appslist.actions.PrivilegedAppActionExecutor.RootCommandRunner();

        public boolean copyTree(String source, String destination, boolean replace) throws Exception {
            validatePath(source);
            validatePath(destination);
            String command = (replace ? "rm -rf " : "test -e ")
                    + shell(destination);
            if (replace) {
                com.bare.appslist.actions.PrivilegedAppActionExecutor.Result rm = runner.run(command);
                if (!rm.isSuccess()) throw new IllegalStateException(rm.getError());
            } else if (runner.run(command).isSuccess()) {
                return true;
            }
            String mkdir = "mkdir -p " + shell(new File(destination).getParent());
            com.bare.appslist.actions.PrivilegedAppActionExecutor.Result m = runner.run(mkdir);
            if (!m.isSuccess()) throw new IllegalStateException(m.getError());
            com.bare.appslist.actions.PrivilegedAppActionExecutor.Result cp =
                    runner.run("cp -a " + shell(source) + " " + shell(destination));
            if (!cp.isSuccess()) throw new IllegalStateException(cp.getError());
            return true;
        }

        private static void validatePath(String path) {
            if (path == null || path.isEmpty() || path.indexOf('\0') >= 0) {
                throw new IllegalArgumentException("Invalid path");
            }
        }

        private static String shell(String path) {
            return "'" + path.replace("'", "'\\''") + "'";
        }
    }

    private static String readUtf8(File file) throws Exception {
        try (FileInputStream in = new FileInputStream(file)) {
            byte[] data = new byte[(int) file.length()];
            int off = 0;
            int n;
            while (off < data.length && (n = in.read(data, off, data.length - off)) > 0) off += n;
            return new String(data, 0, off, StandardCharsets.UTF_8);
        }
    }

    private static Set<Part> parseParts(JSONArray array) {
        LinkedHashSet<Part> parts = new LinkedHashSet<>();
        if (array == null) return parts;
        for (int i = 0; i < array.length(); i++) {
            try { parts.add(Part.valueOf(array.optString(i, ""))); } catch (IllegalArgumentException ignored) {}
        }
        return parts;
    }
}
