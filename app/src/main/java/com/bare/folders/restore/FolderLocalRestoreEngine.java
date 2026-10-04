package com.bare.folders.restore;

import android.content.Context;

import com.bare.folders.backup.FolderBackupPasswordProvider;
import com.bare.folders.data.FolderItem;
import com.bare.messagescalls.restore.ReferenceSbaNativeRestoreOrchestrator;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Concrete local Folder restore owner.
 *
 * Reference wj3 restores the complete base -> incremental chain, filters each
 * archive against the current filesystem according to FolderRestoreStrategy,
 * extracts only required members through the native SBA path, and optionally
 * reconciles extra filesystem entries for FULL_RESTORE.
 */
public final class FolderLocalRestoreEngine {
    private final Context context;

    public FolderLocalRestoreEngine(Context context) {
        this.context = context.getApplicationContext();
    }

    public RestoreOutcome restore(FolderItem item, FolderRestoreStrategy strategy) throws Exception {
        if (item == null || !item.isValid()) throw new IllegalArgumentException("Invalid folder item");
        return restore(item, new File(item.getSourceFolder()), strategy);
    }

    public RestoreOutcome restore(
            FolderItem item, File target, FolderRestoreStrategy strategy) throws Exception {
        if (item == null || !item.isValid()) throw new IllegalArgumentException("Invalid folder item");
        if (target == null) throw new IllegalArgumentException("Restore target is missing");
        if (strategy == null) strategy = FolderRestoreStrategy.MISSING_ONLY;

        long started = System.currentTimeMillis();
        File backupDir = backupDir(item);
        List<BackupRecord> records = listBackups(backupDir);
        if (records.isEmpty()) throw new IllegalStateException("No folder backups found");

        BackupRecord latest = latest(records);
        List<BackupRecord> chain = buildChain(latest, records);

        Map<String, EntryState> finalFiles =
                parseFiles(latest.manifest.optJSONArray("files"));
        boolean hasDirectoryState = latest.manifest.optInt("directoryStateVersion", 0) >= 1;
        Set<String> finalDirectories = hasDirectoryState
                ? normalizePaths(parsePaths(latest.manifest.optJSONArray("directories")))
                : deriveParentDirectories(finalFiles.keySet());

        if (!target.exists() && !target.mkdirs()) {
            throw new IllegalStateException("Cannot create restore target folder");
        }
        if (!target.isDirectory()) throw new IllegalStateException("Restore target is not a directory");

        CurrentState current = scan(target);
        Set<String> desired = new LinkedHashSet<>();
        for (Map.Entry<String, EntryState> entry : finalFiles.entrySet()) {
            String path = safeRelative(entry.getKey());
            if (path == null) continue;
            EntryState currentEntry = current.files.get(path);
            boolean restore;
            if (strategy == FolderRestoreStrategy.MISSING_ONLY) {
                restore = currentEntry == null;
            } else {
                restore = currentEntry == null || !entry.getValue().same(currentEntry);
            }
            if (restore) desired.add(path);
        }

        Map<BackupRecord, List<String>> extractionPlan = planExtraction(chain, desired);
        for (Map.Entry<BackupRecord, List<String>> plan : extractionPlan.entrySet()) {
            if (plan.getValue().isEmpty()) continue;
            ReferenceSbaNativeRestoreOrchestrator.extractToDirectory(
                    plan.getKey().archiveFile,
                    FolderBackupPasswordProvider.get(context),
                    target,
                    plan.getValue());
        }

        CurrentState afterExtraction = scan(target);
        int restored = 0;
        long restoredBytes = 0L;
        for (String path : desired) {
            EntryState expected = finalFiles.get(path);
            EntryState actual = afterExtraction.files.get(path);
            if (actual != null && expected != null) {
                restored++;
                restoredBytes = safeAdd(restoredBytes, expected.size);
            }
        }

        int removedFiles = 0;
        int removedDirectories = 0;
        if (strategy == FolderRestoreStrategy.FULL_RESTORE) {
            DeletionResult deleted = deleteExtras(
                    target, finalFiles.keySet(), finalDirectories, hasDirectoryState);
            removedFiles = deleted.files;
            removedDirectories = deleted.directories;
        }

        long duration = Math.max(0L, System.currentTimeMillis() - started);
        return new RestoreOutcome(
                restored, restoredBytes, removedFiles, removedDirectories, duration,
                chain.size(), desired.size());
    }

    public List<BackupRecord> listBackups(FolderItem item) {
        if (item == null || !item.isValid()) return Collections.emptyList();
        return listBackups(backupDir(item));
    }

    private List<BackupRecord> listBackups(File dir) {
        if (dir == null || !dir.isDirectory()) return Collections.emptyList();
        File[] files = dir.listFiles();
        if (files == null) return Collections.emptyList();

        ArrayList<BackupRecord> records = new ArrayList<>();
        for (File manifestFile : files) {
            if (!manifestFile.isFile() || !manifestFile.getName().endsWith(".flm")) continue;
            File archiveFile = new File(dir, manifestFile.getName().replace(".flm", ".fld"));
            if (!archiveFile.isFile() || archiveFile.length() <= 0L) continue;
            try {
                JSONObject manifest = new JSONObject(readUtf8(manifestFile));
                String backupId = manifest.optString("backupId", "");
                String backupType = manifest.optString("backupType", "");
                long created = manifest.optLong("created", manifestFile.lastModified());
                if (backupId.isEmpty() || backupType.isEmpty()) continue;
                records.add(new BackupRecord(
                        manifestFile, archiveFile, manifest, backupId, backupType, created));
            } catch (Exception ignored) {
                // Invalid local manifests are not eligible for a restore chain.
            }
        }
        records.sort((a, b) -> Long.compare(a.created, b.created));
        return records;
    }

    private BackupRecord latest(List<BackupRecord> records) {
        BackupRecord latest = null;
        for (BackupRecord record : records) {
            if (latest == null || record.created > latest.created) latest = record;
        }
        return latest;
    }

    private List<BackupRecord> buildChain(BackupRecord latest, List<BackupRecord> records) {
        Map<String, BackupRecord> byId = new HashMap<>();
        for (BackupRecord record : records) byId.put(record.backupId, record);

        ArrayList<BackupRecord> reverse = new ArrayList<>();
        Set<String> seen = new HashSet<>();
        BackupRecord current = latest;
        while (current != null) {
            if (!seen.add(current.backupId)) {
                throw new IllegalStateException("Folder backup chain contains a cycle");
            }
            reverse.add(current);

            if ("BASE".equalsIgnoreCase(current.backupType)
                    || current.manifest.optString("parentBackupId", "").isEmpty()) {
                break;
            }

            String parentId = current.manifest.optString("parentBackupId", "");
            BackupRecord parent = byId.get(parentId);
            if (parent == null) {
                throw new IllegalStateException(
                        "Folder backup chain is incomplete; missing parent " + parentId);
            }
            current = parent;
        }

        BackupRecord first = reverse.get(reverse.size() - 1);
        if (!"BASE".equalsIgnoreCase(first.backupType)) {
            throw new IllegalStateException("Folder restore chain does not terminate at a base backup");
        }

        Collections.reverse(reverse);
        return reverse;
    }

    private Map<BackupRecord, List<String>> planExtraction(
            List<BackupRecord> chain, Set<String> desired) {
        LinkedHashMap<BackupRecord, List<String>> plan = new LinkedHashMap<>();
        if (desired.isEmpty()) return plan;

        Set<String> remaining = new LinkedHashSet<>(desired);
        for (int i = chain.size() - 1; i >= 0 && !remaining.isEmpty(); i--) {
            BackupRecord record = chain.get(i);
            Set<String> payload = payloadPaths(record);
            ArrayList<String> selected = new ArrayList<>();
            for (String path : remaining) {
                if (payload.contains(path)) selected.add(path);
            }
            if (!selected.isEmpty()) {
                Collections.sort(selected);
                plan.put(record, selected);
                remaining.removeAll(selected);
            }
        }

        if (!remaining.isEmpty()) {
            throw new IllegalStateException(
                    "Folder restore chain cannot provide payload for: " + remaining.iterator().next());
        }

        ArrayList<Map.Entry<BackupRecord, List<String>>> ordered =
                new ArrayList<>(plan.entrySet());
        Collections.reverse(ordered);
        LinkedHashMap<BackupRecord, List<String>> chronological = new LinkedHashMap<>();
        for (Map.Entry<BackupRecord, List<String>> entry : ordered) {
            chronological.put(entry.getKey(), entry.getValue());
        }
        return chronological;
    }

    private Set<String> payloadPaths(BackupRecord record) {
        LinkedHashSet<String> paths = new LinkedHashSet<>();
        addPaths(record.manifest.optJSONArray("filesAdded"), paths);
        addPaths(record.manifest.optJSONArray("filesModified"), paths);

        // Base manifests from older BaRe checkpoints may not carry filesAdded.
        if (paths.isEmpty() && "BASE".equalsIgnoreCase(record.backupType)) {
            JSONArray files = record.manifest.optJSONArray("files");
            if (files != null) {
                for (int i = 0; i < files.length(); i++) {
                    JSONObject file = files.optJSONObject(i);
                    if (file == null) continue;
                    String path = safeRelative(file.optString("path", ""));
                    if (path != null) paths.add(path);
                }
            }
        }
        return paths;
    }

    private static void addPaths(JSONArray array, Set<String> out) {
        if (array == null) return;
        for (int i = 0; i < array.length(); i++) {
            String path = safeRelative(array.optString(i, ""));
            if (path != null) out.add(path);
        }
    }

    private static Map<String, EntryState> parseFiles(JSONArray files) {
        LinkedHashMap<String, EntryState> result = new LinkedHashMap<>();
        if (files == null) return result;
        for (int i = 0; i < files.length(); i++) {
            JSONObject file = files.optJSONObject(i);
            if (file == null) continue;
            String path = safeRelative(file.optString("path", ""));
            if (path == null) continue;
            result.put(path, new EntryState(
                    Math.max(0L, file.optLong("size", 0L)),
                    Math.max(0L, file.optLong("mtime", 0L))));
        }
        return result;
    }

    private static Set<String> parsePaths(JSONArray paths) {
        LinkedHashSet<String> result = new LinkedHashSet<>();
        if (paths == null) return result;
        for (int i = 0; i < paths.length(); i++) {
            String path = safeRelative(paths.optString(i, ""));
            if (path != null) result.add(path);
        }
        return result;
    }

    private static Set<String> deriveParentDirectories(Set<String> files) {
        LinkedHashSet<String> result = new LinkedHashSet<>();
        for (String file : files) {
            String current = file;
            int slash;
            while ((slash = current.lastIndexOf('/')) > 0) {
                current = current.substring(0, slash);
                result.add(current);
            }
        }
        return result;
    }

    private static Set<String> normalizePaths(Set<String> paths) {
        LinkedHashSet<String> result = new LinkedHashSet<>();
        for (String path : paths) {
            String normalized = safeRelative(path);
            if (normalized != null && !normalized.isEmpty()) result.add(normalized);
        }
        return result;
    }

    private static CurrentState scan(File root) throws Exception {
        LinkedHashMap<String, EntryState> files = new LinkedHashMap<>();
        LinkedHashSet<String> directories = new LinkedHashSet<>();
        scanDirectory(root, root, files, directories);
        return new CurrentState(files, directories);
    }

    private static void scanDirectory(
            File root, File directory, Map<String, EntryState> files, Set<String> directories)
            throws Exception {
        File[] children = directory.listFiles();
        if (children == null) return;
        Arrays.sort(children, Comparator.comparing(File::getAbsolutePath));
        for (File child : children) {
            String relative = root.toPath().relativize(child.toPath()).toString()
                    .replace(File.separatorChar, '/');
            if (relative.isEmpty() || Files.isSymbolicLink(child.toPath())) continue;
            if (Files.isDirectory(child.toPath(), LinkOption.NOFOLLOW_LINKS)) {
                directories.add(relative);
                scanDirectory(root, child, files, directories);
            } else if (Files.isRegularFile(child.toPath(), LinkOption.NOFOLLOW_LINKS)) {
                files.put(relative, new EntryState(child.length(), child.lastModified()));
            }
        }
    }

    private static DeletionResult deleteExtras(
            File root, Set<String> finalFiles, Set<String> finalDirectories,
            boolean reconcileDirectories) throws Exception {
        CurrentState current = scan(root);
        int filesDeleted = 0;
        int directoriesDeleted = 0;

        ArrayList<String> extraFiles = new ArrayList<>();
        for (String path : current.files.keySet()) {
            if (!finalFiles.contains(path)) extraFiles.add(path);
        }
        extraFiles.sort(Comparator.reverseOrder());
        for (String path : extraFiles) {
            File file = safeFile(root, path);
            if (file != null && file.isFile() && file.delete()) filesDeleted++;
        }

        if (!reconcileDirectories) {
            return new DeletionResult(filesDeleted, 0);
        }

        ArrayList<String> extraDirectories = new ArrayList<>();
        for (String path : current.directories) {
            if (!finalDirectories.contains(path)) extraDirectories.add(path);
        }
        extraDirectories.sort((a, b) -> Integer.compare(b.length(), a.length()));
        for (String path : extraDirectories) {
            File directory = safeFile(root, path);
            if (directory != null && directory.isDirectory()) {
                File[] children = directory.listFiles();
                if (children == null || children.length == 0) {
                    if (directory.delete()) directoriesDeleted++;
                }
            }
        }
        return new DeletionResult(filesDeleted, directoriesDeleted);
    }

    private File backupDir(FolderItem item) {
        String uid = new com.bare.home.repository.AnonymousIdentityStore(context).getOrCreateUid();
        String account = md5(uid).substring(0, 16);
        com.bare.storage.StorageSelection selection =
                new com.bare.storage.LocalStorageCoordinator(
                        context,
                        new com.bare.storage.AndroidStorageInventory(context)).resolveSelection();
        if (selection == null || selection.selected == null) {
            throw new IllegalStateException("No selected local storage");
        }
        return new File(selection.selected.rootPath,
                "SwiftBackup/accounts/" + account
                        + "/backups/folders/local/Folder-" + item.getId());
    }

    private static String md5(String value) {
        try {
            byte[] digest = java.security.MessageDigest.getInstance("MD5").digest(
                    value.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(String.format(java.util.Locale.ROOT, "%02x", b & 255));
            }
            return sb.toString();
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    private static String readUtf8(File file) throws Exception {
        try (FileInputStream in = new FileInputStream(file)) {
            byte[] data = new byte[(int) file.length()];
            int off = 0;
            int n;
            while (off < data.length && (n = in.read(data, off, data.length - off)) > 0) {
                off += n;
            }
            return new String(data, 0, off, StandardCharsets.UTF_8);
        }
    }

    private static String safeRelative(String value) {
        if (value == null || value.isEmpty() || value.startsWith("/")
                || value.indexOf('\0') >= 0) return null;
        String normalized = value.replace('\\', '/');
        if (normalized.startsWith("/") || normalized.endsWith("/")) return null;
        String[] segments = normalized.split("/");
        for (String segment : segments) {
            if (segment.isEmpty() || ".".equals(segment) || "..".equals(segment)) return null;
        }
        return normalized;
    }

    private static File safeFile(File root, String relative) throws Exception {
        String path = safeRelative(relative);
        if (path == null) return null;
        File canonicalRoot = root.getCanonicalFile();
        File candidate = new File(canonicalRoot, path).getCanonicalFile();
        String rootPath = canonicalRoot.getPath();
        String candidatePath = candidate.getPath();
        if (!candidatePath.equals(rootPath)
                && !candidatePath.startsWith(rootPath + File.separator)) return null;
        return candidate;
    }

    private static long safeAdd(long a, long b) {
        if (b < 0L || Long.MAX_VALUE - a < b) return Long.MAX_VALUE;
        return a + b;
    }

    public static final class BackupRecord {
        public final File manifestFile;
        public final File archiveFile;
        public final JSONObject manifest;
        public final String backupId;
        public final String backupType;
        public final long created;

        BackupRecord(File manifestFile, File archiveFile, JSONObject manifest,
                     String backupId, String backupType, long created) {
            this.manifestFile = manifestFile;
            this.archiveFile = archiveFile;
            this.manifest = manifest;
            this.backupId = backupId;
            this.backupType = backupType;
            this.created = created;
        }
    }

    public static final class RestoreOutcome {
        public final int restoredFiles;
        public final long restoredBytes;
        public final int removedFiles;
        public final int removedDirectories;
        public final long durationMs;
        public final int chainLength;
        public final int requestedFiles;

        RestoreOutcome(int restoredFiles, long restoredBytes, int removedFiles,
                       int removedDirectories, long durationMs, int chainLength,
                       int requestedFiles) {
            this.restoredFiles = restoredFiles;
            this.restoredBytes = restoredBytes;
            this.removedFiles = removedFiles;
            this.removedDirectories = removedDirectories;
            this.durationMs = durationMs;
            this.chainLength = chainLength;
            this.requestedFiles = requestedFiles;
        }
    }

    private static final class CurrentState {
        final Map<String, EntryState> files;
        final Set<String> directories;
        CurrentState(Map<String, EntryState> files, Set<String> directories) {
            this.files = files;
            this.directories = directories;
        }
    }

    private static final class EntryState {
        final long size;
        final long mtime;
        EntryState(long size, long mtime) {
            this.size = size;
            this.mtime = mtime;
        }
        boolean same(EntryState other) {
            return other != null && size == other.size && mtime == other.mtime;
        }
    }

    private static final class DeletionResult {
        final int files, directories;
        DeletionResult(int files, int directories) {
            this.files = files;
            this.directories = directories;
        }
    }
}
