package com.bare.appslist.restore;

import android.content.Context;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/**
 * Basic APKS/ZIP intake validation before the existing install path.
 * It deliberately does not pretend to perform the full package parsing;
 * that remains with the Android package/install path.
 */
public final class ApkImportArchiveValidator {
    public static final class Result {
        private final boolean valid;
        private final boolean hasBaseApk;
        private final int apkCount;
        private final long totalBytes;
        private final String error;

        private Result(boolean valid, boolean hasBaseApk, int apkCount, long totalBytes, String error) {
            this.valid = valid;
            this.hasBaseApk = hasBaseApk;
            this.apkCount = apkCount;
            this.totalBytes = totalBytes;
            this.error = error;
        }

        public boolean isValid() { return valid; }
        public boolean hasBaseApk() { return hasBaseApk; }
        public int getApkCount() { return apkCount; }
        public long getTotalBytes() { return totalBytes; }
        public String getError() { return error; }
    }

    public Result validate(Context context, File input, ApkImportIntake.Kind kind) {
        if (input == null || !input.isFile() || input.length() <= 0) {
            return invalid(context.getString(com.bare.R.string.apk_import_input_missing));
        }

        if (kind == ApkImportIntake.Kind.SINGLE_APK) {
            return new Result(true, true, 1, input.length(), null);
        }

        Set<String> names = new HashSet<>();
        boolean base = false;
        int apkCount = 0;
        long total = 0;

        try (ZipFile zip = new ZipFile(input)) {
            java.util.Enumeration<? extends ZipEntry> entries = zip.entries();
            while (entries.hasMoreElements()) {
                ZipEntry entry = entries.nextElement();
                String name = entry.getName();
                if (name == null || name.isEmpty() || entry.isDirectory()) continue;

                if (!safeEntry(name) || !names.add(name)) {
                    return invalid(context.getString(com.bare.R.string.apk_import_invalid_entry));
                }

                long size = entry.getSize();
                if (size > 0) total += size;

                if (name.equals("base.apk")) {
                    base = true;
                }
                if (name.toLowerCase(java.util.Locale.ROOT).endsWith(".apk")) {
                    apkCount++;
                }
            }
        } catch (IOException | SecurityException e) {
            return invalid(context.getString(com.bare.R.string.apk_import_archive_read_error));
        }

        if (!base || apkCount == 0) {
            return invalid(context.getString(com.bare.R.string.apk_import_no_base));
        }
        return new Result(true, true, apkCount, total, null);
    }

    private Result invalid(String message) {
        return new Result(false, false, 0, 0, message);
    }

    private boolean safeEntry(String name) {
        if (name.startsWith("/") || name.startsWith("\\") || name.contains(":")) return false;
        String normalized = name.replace('\\', '/');
        String[] parts = normalized.split("/");
        for (String part : parts) {
            if (part.equals("..")) return false;
        }
        return true;
    }
}
