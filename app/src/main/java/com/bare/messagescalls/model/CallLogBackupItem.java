package com.bare.messagescalls.model;

/** Reference rz0-compatible local call-log backup metadata. */
public final class CallLogBackupItem {
    private final String fileName;
    private final long backupTime;
    private final int totalCalls;
    private final String device;
    private final java.io.File localFile;

    public CallLogBackupItem(String fileName, long backupTime, int totalCalls,
                             String device, java.io.File localFile) {
        this.fileName = fileName;
        this.backupTime = backupTime;
        this.totalCalls = totalCalls;
        this.device = device;
        this.localFile = localFile;
    }

    public String getFileName() { return fileName; }
    public long getBackupTime() { return backupTime; }
    public int getTotalCalls() { return totalCalls; }
    public String getDevice() { return device; }
    public java.io.File getLocalFile() { return localFile; }
}
