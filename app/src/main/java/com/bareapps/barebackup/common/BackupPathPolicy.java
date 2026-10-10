package com.bareapps.barebackup.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/** Pure-Java path and digest helpers shared by backup, restore, and tests. */
public final class BackupPathPolicy {
    private BackupPathPolicy() {}

    public static String requireSafeRelativePath(String path) {
        if (path == null || path.isEmpty() || path.startsWith("/") || path.startsWith("\\")
                || path.indexOf('\\') >= 0 || path.indexOf('\u0000') >= 0) {
            throw new IllegalArgumentException("Unsafe backup path");
        }
        String[] segments = path.split("/", -1);
        for (String segment : segments) {
            if (segment.isEmpty() || ".".equals(segment) || "..".equals(segment)) {
                throw new IllegalArgumentException("Unsafe backup path");
            }
        }
        return path;
    }

    public static String sha256(byte[] data) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(data);
            StringBuilder result = new StringBuilder(digest.length * 2);
            for (byte value : digest) {
                result.append(String.format(Locale.ROOT, "%02x", value & 0xff));
            }
            return result.toString();
        } catch (NoSuchAlgorithmException impossible) {
            throw new IllegalStateException("SHA-256 is required by the Java platform", impossible);
        }
    }
}
