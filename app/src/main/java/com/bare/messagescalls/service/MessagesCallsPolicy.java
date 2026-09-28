package com.bare.messagescalls.service;

/**
 * Reference-derived policy helpers for SMS/call-log backup and restore entry points.
 */
public final class MessagesCallsPolicy {
    public static final String EXTRA_BACKUP_FILE_PATH = "EXTRA_BACKUP_FILE_PATH";
    public static final String EXTRA_HIGHLIGHT_CLOUD_CARD = "highlight_cloud_card";
    public static final String KEY_DEFAULT_SMS_PACKAGE = "KEY_DEF_SMS_PACKAGE";

    private MessagesCallsPolicy() {}

    public static boolean shouldRememberPreviousSmsHandler(String currentPackage, String ownPackage) {
        return currentPackage != null
                && !currentPackage.isEmpty()
                && ownPackage != null
                && !currentPackage.equals(ownPackage);
    }

    public static boolean isValidBackupFilePath(String path) {
        return path != null && !path.isEmpty();
    }
}
