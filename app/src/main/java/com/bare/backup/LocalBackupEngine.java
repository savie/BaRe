package com.bare.backup;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;

import androidx.documentfile.provider.DocumentFile;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/** Independent local folder backup engine using SAF, versioned metadata, and SHA-256. */
public final class LocalBackupEngine {
    private static final String MANIFEST = "manifest.json";
    private static final String PAYLOAD = "payload";
    private static final int FORMAT_VERSION = 1;
    private static final int BUFFER_SIZE = 64 * 1024;
    private static final int MAX_DEPTH = 128;
    private static final int MAX_ENTRIES = 100_000;
    private static final int MAX_MANIFEST_BYTES = 16 * 1024 * 1024;

    private LocalBackupEngine() {}

    public static final class Result {
        public final String directoryName;
        public final int fileCount;
        public final long totalBytes;
        public final String detail;

        Result(String directoryName, int fileCount, long totalBytes, String detail) {
            this.directoryName = directoryName;
            this.fileCount = fileCount;
            this.totalBytes = totalBytes;
            this.detail = detail;
        }
    }

    private static final class Entry {
        final String path;
        final long size;
        final String sha256;

        Entry(String path, long size, String sha256) {
            this.path = BackupPathPolicy.requireSafeRelativePath(path);
            this.size = size;
            this.sha256 = sha256;
        }

        JSONObject toJson() throws JSONException {
            return new JSONObject().put("path", path).put("size", size).put("sha256", sha256);
        }
    }

    public static Result createBackup(Context context, Uri sourceTree, Uri backupRootTree)
            throws IOException, JSONException {
        DocumentFile source = requireDirectory(DocumentFile.fromTreeUri(context, sourceTree), "Source");
        DocumentFile root = requireDirectory(DocumentFile.fromTreeUri(context, backupRootTree), "Backup destination");
        if (sourceTree.equals(backupRootTree)) {
            throw new IOException("Source and backup destination must be different folders.");
        }

        String finalName = uniqueName(root, "BARE_BACKUP_" + System.currentTimeMillis());
        DocumentFile staging = root.createDirectory(finalName + "_INCOMPLETE");
        if (staging == null) throw new IOException("Could not create backup staging directory.");

        try {
            DocumentFile payloadRoot = staging.createDirectory(PAYLOAD);
            if (payloadRoot == null) throw new IOException("Could not create payload directory.");
            List<Entry> entries = new ArrayList<>();
            copySource(context.getContentResolver(), source, payloadRoot, "", entries, 0);
            JSONArray files = new JSONArray();
            long total = 0L;
            for (Entry entry : entries) {
                files.put(entry.toJson());
                total = Math.addExact(total, entry.size);
            }
            JSONObject manifest = new JSONObject()
                    .put("format", "bare-folder-backup")
                    .put("version", FORMAT_VERSION)
                    .put("createdAtEpochMs", System.currentTimeMillis())
                    .put("fileCount", entries.size())
                    .put("totalBytes", total)
                    .put("files", files);
            writeBytes(context.getContentResolver(),
                    staging.createFile("application/json", MANIFEST),
                    manifest.toString(2).getBytes(java.nio.charset.StandardCharsets.UTF_8));
            if (!staging.renameTo(finalName)) {
                throw new IOException("Provider could not finalize the backup directory.");
            }
            return new Result(finalName, entries.size(), total, "Backup and SHA-256 manifest created.");
        } catch (Exception failure) {
            deleteRecursively(staging);
            if (failure instanceof IOException) throw (IOException) failure;
            if (failure instanceof JSONException) throw (JSONException) failure;
            if (failure instanceof RuntimeException) throw (RuntimeException) failure;
            throw new IOException("Backup failed.", failure);
        }
    }

    public static Result verifyBackup(Context context, Uri backupTree) throws IOException, JSONException {
        DocumentFile backup = requireDirectory(DocumentFile.fromTreeUri(context, backupTree), "Backup");
        List<Entry> entries = readManifest(context.getContentResolver(), backup);
        DocumentFile payloadRoot = requireDirectory(backup.findFile(PAYLOAD), "Backup payload");
        long total = 0L;
        for (Entry entry : entries) {
            DocumentFile file = resolveFile(payloadRoot, entry.path);
            if (file == null || !file.isFile()) throw new IOException("Missing payload: " + entry.path);
            DigestResult actual = digest(context.getContentResolver(), file);
            if (actual.size != entry.size || !actual.sha256.equals(entry.sha256)) {
                throw new IOException("Integrity check failed: " + entry.path);
            }
            total = Math.addExact(total, entry.size);
        }
        return new Result(backup.getName(), entries.size(), total, "All payloads passed SHA-256 verification.");
    }

    public static Result restoreBackup(Context context, Uri backupTree, Uri destinationTree)
            throws IOException, JSONException {
        DocumentFile backup = requireDirectory(DocumentFile.fromTreeUri(context, backupTree), "Backup");
        DocumentFile destination = requireDirectory(DocumentFile.fromTreeUri(context, destinationTree), "Restore destination");
        if (backupTree.equals(destinationTree)) {
            throw new IOException("Backup and restore destination must be different folders.");
        }

        // Validate the complete manifest and all payloads before modifying the destination.
        List<Entry> entries = readManifest(context.getContentResolver(), backup);
        DocumentFile payloadRoot = requireDirectory(backup.findFile(PAYLOAD), "Backup payload");
        long total = 0L;
        for (Entry entry : entries) {
            DocumentFile file = resolveFile(payloadRoot, entry.path);
            if (file == null || !file.isFile()) throw new IOException("Missing payload: " + entry.path);
            DigestResult actual = digest(context.getContentResolver(), file);
            if (actual.size != entry.size || !actual.sha256.equals(entry.sha256)) {
                throw new IOException("Integrity check failed; destination was not modified: " + entry.path);
            }
            total = Math.addExact(total, entry.size);
        }

        String finalName = uniqueName(destination, "BARE_RESTORE_" + System.currentTimeMillis());
        DocumentFile staging = destination.createDirectory(finalName + "_INCOMPLETE");
        if (staging == null) throw new IOException("Could not create restore staging directory.");
        try {
            for (Entry entry : entries) {
                DocumentFile source = resolveFile(payloadRoot, entry.path);
                DocumentFile target = createFilePath(staging, entry.path);
                copy(context.getContentResolver(), source, target);
            }
            if (!staging.renameTo(finalName)) throw new IOException("Provider could not finalize the restore directory.");
            return new Result(finalName, entries.size(), total, "Restore completed into a new directory.");
        } catch (Exception failure) {
            deleteRecursively(staging);
            if (failure instanceof IOException) throw (IOException) failure;
            if (failure instanceof JSONException) throw (JSONException) failure;
            if (failure instanceof RuntimeException) throw (RuntimeException) failure;
            throw new IOException("Restore failed.", failure);
        }
    }

    private static void copySource(ContentResolver resolver, DocumentFile source, DocumentFile target,
                                   String prefix, List<Entry> entries, int depth)
            throws IOException {
        if (depth > MAX_DEPTH) throw new IOException("Source folder nesting exceeds safety limit.");
        for (DocumentFile child : source.listFiles()) {
            String name = child.getName();
            if (name == null || name.isEmpty() || name.contains("/") || name.contains("\\")) {
                throw new IOException("Unsupported or unsafe source filename.");
            }
            String relative = BackupPathPolicy.requireSafeRelativePath(prefix.isEmpty() ? name : prefix + "/" + name);
            if (child.isDirectory()) {
                DocumentFile targetDirectory = target.createDirectory(name);
                if (targetDirectory == null) throw new IOException("Could not create backup directory: " + relative);
                copySource(resolver, child, targetDirectory, relative, entries, depth + 1);
            } else if (child.isFile()) {
                if (entries.size() >= MAX_ENTRIES) throw new IOException("Source contains too many files.");
                DocumentFile output = target.createFile("application/octet-stream", name);
                if (output == null) throw new IOException("Could not create backup payload: " + relative);
                DigestResult copied = copyAndDigest(resolver, child, output);
                entries.add(new Entry(relative, copied.size, copied.sha256));
            }
        }
    }

    private static List<Entry> readManifest(ContentResolver resolver, DocumentFile backup)
            throws IOException, JSONException {
        DocumentFile manifestFile = backup.findFile(MANIFEST);
        if (manifestFile == null || !manifestFile.isFile()) throw new IOException("manifest.json is missing.");
        byte[] bytes = readAll(resolver, manifestFile);
        JSONObject manifest = new JSONObject(new String(bytes, java.nio.charset.StandardCharsets.UTF_8));
        if (!"bare-folder-backup".equals(manifest.optString("format"))
                || manifest.optInt("version", -1) != FORMAT_VERSION) {
            throw new IOException("Unsupported backup format or version.");
        }
        JSONArray files = manifest.optJSONArray("files");
        if (files == null || files.length() > MAX_ENTRIES) throw new IOException("Invalid manifest file list.");
        List<Entry> entries = new ArrayList<>();
        Set<String> paths = new HashSet<>();
        long total = 0L;
        for (int i = 0; i < files.length(); i++) {
            JSONObject item = files.getJSONObject(i);
            String path;
            try {
                path = BackupPathPolicy.requireSafeRelativePath(item.getString("path"));
            } catch (IllegalArgumentException invalid) {
                throw new IOException("Manifest contains an unsafe path.", invalid);
            }
            long size = item.getLong("size");
            String hash = item.getString("sha256");
            if (size < 0 || !hash.matches("[0-9a-f]{64}") || !paths.add(path)) {
                throw new IOException("Manifest contains invalid or duplicate file metadata.");
            }
            entries.add(new Entry(path, size, hash));
            total = Math.addExact(total, size);
        }
        if (manifest.optInt("fileCount", -1) != entries.size()
                || manifest.optLong("totalBytes", -1L) != total) {
            throw new IOException("Manifest summary does not match its file list.");
        }
        for (Entry entry : entries) {
            String parent = entry.path;
            while (parent.contains("/")) {
                parent = parent.substring(0, parent.lastIndexOf('/'));
                if (paths.contains(parent)) throw new IOException("Manifest has a file/directory path conflict.");
            }
        }
        return entries;
    }

    private static DocumentFile resolveFile(DocumentFile root, String relative) throws IOException {
        String safe;
        try {
            safe = BackupPathPolicy.requireSafeRelativePath(relative);
        } catch (IllegalArgumentException invalid) {
            throw new IOException("Unsafe payload path.", invalid);
        }
        String[] segments = safe.split("/");
        DocumentFile current = root;
        for (int i = 0; i < segments.length; i++) {
            current = current.findFile(segments[i]);
            if (current == null) return null;
            if (i < segments.length - 1 && !current.isDirectory()) return null;
        }
        return current;
    }

    private static DocumentFile createFilePath(DocumentFile root, String relative) throws IOException {
        String safe = BackupPathPolicy.requireSafeRelativePath(relative);
        String[] segments = safe.split("/");
        DocumentFile current = root;
        for (int i = 0; i < segments.length - 1; i++) {
            DocumentFile next = current.findFile(segments[i]);
            if (next == null) next = current.createDirectory(segments[i]);
            if (next == null || !next.isDirectory()) throw new IOException("Could not create restore path.");
            current = next;
        }
        DocumentFile output = current.createFile("application/octet-stream", segments[segments.length - 1]);
        if (output == null) throw new IOException("Could not create restored file: " + relative);
        return output;
    }

    private static DocumentFile requireDirectory(DocumentFile file, String label) throws IOException {
        if (file == null || !file.isDirectory()) throw new IOException(label + " folder is not accessible.");
        return file;
    }

    private static String uniqueName(DocumentFile root, String base) {
        String candidate = base;
        int suffix = 1;
        while (root.findFile(candidate) != null || root.findFile(candidate + "_INCOMPLETE") != null) {
            candidate = base + "_" + suffix++;
        }
        return candidate;
    }

    private static DigestResult copyAndDigest(ContentResolver resolver, DocumentFile input, DocumentFile output)
            throws IOException {
        MessageDigest digest = newDigest();
        long count = 0L;
        try (InputStream in = resolver.openInputStream(input.getUri());
             OutputStream out = resolver.openOutputStream(output.getUri(), "w")) {
            if (in == null || out == null) throw new IOException("Provider could not open a backup stream.");
            byte[] buffer = new byte[BUFFER_SIZE];
            int read;
            while ((read = in.read(buffer)) != -1) {
                out.write(buffer, 0, read);
                digest.update(buffer, 0, read);
                count += read;
            }
            out.flush();
        }
        return new DigestResult(count, toHex(digest.digest()));
    }

    private static DigestResult digest(ContentResolver resolver, DocumentFile file) throws IOException {
        MessageDigest digest = newDigest();
        long count = 0L;
        try (InputStream in = resolver.openInputStream(file.getUri())) {
            if (in == null) throw new IOException("Provider could not open payload: " + file.getName());
            byte[] buffer = new byte[BUFFER_SIZE];
            int read;
            while ((read = in.read(buffer)) != -1) {
                digest.update(buffer, 0, read);
                count += read;
            }
        }
        return new DigestResult(count, toHex(digest.digest()));
    }

    private static byte[] readAll(ContentResolver resolver, DocumentFile file) throws IOException {
        try (InputStream in = resolver.openInputStream(file.getUri());
             ByteArrayOutputStream out = new ByteArrayOutputStream()) {
            if (in == null) throw new IOException("Cannot read manifest.");
            byte[] buffer = new byte[BUFFER_SIZE];
            int read;
            while ((read = in.read(buffer)) != -1) {
                if (out.size() + read > MAX_MANIFEST_BYTES) throw new IOException("Manifest exceeds size limit.");
                out.write(buffer, 0, read);
            }
            return out.toByteArray();
        }
    }

    private static void writeBytes(ContentResolver resolver, DocumentFile output, byte[] bytes) throws IOException {
        if (output == null) throw new IOException("Could not create manifest.");
        try (OutputStream out = resolver.openOutputStream(output.getUri(), "w")) {
            if (out == null) throw new IOException("Cannot write manifest.");
            out.write(bytes);
            out.flush();
        }
    }

    private static void copy(ContentResolver resolver, DocumentFile input, DocumentFile output) throws IOException {
        try (InputStream in = resolver.openInputStream(input.getUri());
             OutputStream out = resolver.openOutputStream(output.getUri(), "w")) {
            if (in == null || out == null) throw new IOException("Provider could not open restore stream.");
            byte[] buffer = new byte[BUFFER_SIZE];
            int read;
            while ((read = in.read(buffer)) != -1) out.write(buffer, 0, read);
            out.flush();
        }
    }

    private static void deleteRecursively(DocumentFile file) {
        if (file == null) return;
        if (file.isDirectory()) for (DocumentFile child : file.listFiles()) deleteRecursively(child);
        file.delete();
    }

    private static MessageDigest newDigest() {
        try {
            return MessageDigest.getInstance("SHA-256");
        } catch (NoSuchAlgorithmException impossible) {
            throw new IllegalStateException("SHA-256 is required by Android.", impossible);
        }
    }

    private static String toHex(byte[] digest) {
        StringBuilder result = new StringBuilder(digest.length * 2);
        for (byte value : digest) result.append(String.format(java.util.Locale.ROOT, "%02x", value & 0xff));
        return result.toString();
    }

    private static final class DigestResult {
        final long size;
        final String sha256;
        DigestResult(long size, String sha256) { this.size = size; this.sha256 = sha256; }
    }
}
