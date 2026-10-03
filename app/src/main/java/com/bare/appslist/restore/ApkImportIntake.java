package com.bare.appslist.restore;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;

/**
 * APK/APKS import intake: classify input, copy it into a temporary folder,
 * and keep the result ready for the existing install/validation path.
 */
public final class ApkImportIntake {
    public enum Kind { SINGLE_APK, APKS_ARCHIVE }

    public static final class Result {
        private final Kind kind;
        private final File file;
        private final String displayName;
        private final String error;

        private Result(Kind kind, File file, String displayName, String error) {
            this.kind = kind;
            this.file = file;
            this.displayName = displayName;
            this.error = error;
        }

        public static Result ready(Kind kind, File file, String displayName) {
            return new Result(kind, file, displayName, null);
        }

        public static Result error(String message) {
            return new Result(null, null, null, message);
        }

        public boolean isReady() { return error == null && file != null && kind != null; }
        public Kind getKind() { return kind; }
        public File getFile() { return file; }
        public String getDisplayName() { return displayName; }
        public String getError() { return error; }
    }

    public Result stage(Context context, Uri source, File taskDirectory) {
        if (context == null || source == null || taskDirectory == null) {
            return Result.error("Missing APK import input.");
        }
        if (!taskDirectory.exists() && !taskDirectory.mkdirs()) {
            return Result.error("Unable to create APK import directory.");
        }

        String name = displayName(context.getContentResolver(), source);
        Kind kind = classify(context.getContentResolver(), source, name);
        if (kind == null) {
            return Result.error("Unsupported APK file.");
        }

        File target = new File(taskDirectory, kind == Kind.SINGLE_APK ? "base.apk" : "package.apks");
        try {
            copy(context.getContentResolver(), source, target);
            if (!target.isFile() || target.length() <= 0) {
                delete(target);
                return Result.error("APK import is empty.");
            }
            return Result.ready(kind, target, name);
        } catch (IOException | SecurityException e) {
            delete(target);
            return Result.error(e.getMessage() == null ? "Unable to read APK file." : e.getMessage());
        }
    }

    private Kind classify(ContentResolver resolver, Uri source, String name) {
        String lower = name == null ? "" : name.toLowerCase(Locale.ROOT);
        if (lower.endsWith(".apks")) return Kind.APKS_ARCHIVE;
        if (lower.endsWith(".apk")) return Kind.SINGLE_APK;

        String type = resolver.getType(source);
        if ("application/vnd.android.package-archive".equalsIgnoreCase(type)) {
            return Kind.SINGLE_APK;
        }
        return null;
    }

    private String displayName(ContentResolver resolver, Uri source) {
        Cursor cursor = null;
        try {
            cursor = resolver.query(source, new String[]{"_display_name"}, null, null, null);
            if (cursor != null && cursor.moveToFirst()) {
                String value = cursor.getString(0);
                if (value != null && !value.trim().isEmpty()) return value;
            }
        } catch (RuntimeException ignored) {
        } finally {
            if (cursor != null) cursor.close();
        }
        String segment = source.getLastPathSegment();
        return segment == null ? "" : segment;
    }

    private void copy(ContentResolver resolver, Uri source, File target) throws IOException {
        InputStream input = resolver.openInputStream(source);
        if (input == null) throw new IOException("Unable to open APK file.");
        try (InputStream in = input; FileOutputStream out = new FileOutputStream(target, false)) {
            byte[] buffer = new byte[64 * 1024];
            int read;
            while ((read = in.read(buffer)) != -1) {
                if (read > 0) out.write(buffer, 0, read);
            }
            out.flush();
        }
    }

    private void delete(File file) {
        if (file != null && file.exists()) file.delete();
    }
}
