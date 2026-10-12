package com.bareapps.barebackup.model.storage;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.text.format.Formatter;

import com.bareapps.barebackup.model.account.LocalAccountManager;

import java.io.File;

/** Reads real device storage and the active account's on-disk backup footprint. */
public final class StorageInfoLocal {
    private final long totalBytes;
    private final long usedBytes;
    private final long freeBytes;
    private final long accountBytes;
    private final int usedPercent;
    private final float accountPercent;
    private final String folderPath;

    private StorageInfoLocal(long totalBytes, long usedBytes, long freeBytes,
                             long accountBytes, String folderPath) {
        this.totalBytes = Math.max(0L, totalBytes);
        this.usedBytes = Math.max(0L, usedBytes);
        this.freeBytes = Math.max(0L, freeBytes);
        this.accountBytes = Math.max(0L, accountBytes);
        this.usedPercent = totalBytes <= 0 ? 0 : (int) Math.min(100L, this.usedBytes * 100L / totalBytes);
        this.accountPercent = totalBytes <= 0 ? 0f : this.accountBytes * 100f / totalBytes;
        this.folderPath = folderPath;
    }

    public static StorageInfoLocal read(Context context) {
        File storageRoot = Environment.getExternalStorageDirectory();
        StatFs stats = new StatFs(storageRoot.getAbsolutePath());
        long total = stats.getTotalBytes();
        long free = stats.getAvailableBytes();
        long used = Math.max(0L, total - free);
        LocalAccountManager accounts = new LocalAccountManager(context);
        File accountDirectory = accounts.getAccountDirectory();
        return new StorageInfoLocal(total, used, free, directorySize(accountDirectory),
                accountDirectory.getAbsolutePath() + File.separator);
    }

    private static long directorySize(File file) {
        if (file == null || !file.exists()) return 0L;
        if (file.isFile()) return file.length();
        File[] children = file.listFiles();
        if (children == null) return 0L;
        long size = 0L;
        for (File child : children) {
            long childSize = directorySize(child);
            if (Long.MAX_VALUE - size < childSize) return Long.MAX_VALUE;
            size += childSize;
        }
        return size;
    }

    public long getTotalBytes() { return totalBytes; }
    public long getUsedBytes() { return usedBytes; }
    public long getFreeBytes() { return freeBytes; }
    public long getAccountBytes() { return accountBytes; }
    public int getUsedPercent() { return usedPercent; }
    public float getAccountPercent() { return accountPercent; }
    public String getFolderPath() { return folderPath; }
    public String getUsedSummary(Context context) {
        return usedPercent + "% Used (" + Formatter.formatFileSize(context, freeBytes)
                + " Free / " + Formatter.formatFileSize(context, totalBytes) + ")";
    }
    public String getAccountSummary(Context context) {
        java.text.NumberFormat format = java.text.NumberFormat.getNumberInstance();
        format.setMaximumFractionDigits(1);
        return "App usage is " + format.format(accountPercent) + "% ("
                + Formatter.formatFileSize(context, accountBytes) + ")";
    }
}
