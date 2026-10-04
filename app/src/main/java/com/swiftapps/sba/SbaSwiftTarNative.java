package com.swiftapps.sba;

import android.os.ParcelFileDescriptor;
import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;
import com.swiftapps.sba.internal.tar.SbaTarEntryInfo;
import java.io.FileDescriptor;
import java.io.IOException;

public final class SbaSwiftTarNative {
    public static final SbaSwiftTarNative a = new SbaSwiftTarNative();

    static {
        System.loadLibrary("sba_archive");
    }

    public static long[] a(long offset, String destination, int flags, String[] selected,
                           SbaNativeProgressListener listener, int fd) {
        return a.extractTarFromFdWithStatsRaw(fd, offset, destination, flags, selected, listener);
    }

    public static String[] b(FileDescriptor fileDescriptor, long offset, String destination,
                             int flags, String[] selected, SbaNativeProgressListener listener)
            throws IOException {
        ParcelFileDescriptor dup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            return a.extractTarFromFdRaw(dup.getFd(), offset, destination, flags, selected, listener);
        } finally {
            dup.close();
        }
    }

    public static String[] c(FileDescriptor fileDescriptor, long offset, long length,
                             String destination, int flags, String[] selected,
                             SbaNativeProgressListener listener) throws IOException {
        ParcelFileDescriptor dup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            return a.extractTarZstdFromFdRaw(dup.getFd(), offset, length, destination, flags,
                    selected, listener);
        } finally {
            dup.close();
        }
    }

    public static SbaTarEntryInfo[] d(FileDescriptor fileDescriptor, long offset) throws IOException {
        ParcelFileDescriptor dup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            return a.listTarEntriesFromFdRaw(dup.getFd(), offset);
        } finally {
            dup.close();
        }
    }

    public static SbaTarEntryInfo[] e(FileDescriptor fileDescriptor, long offset, long length)
            throws IOException {
        ParcelFileDescriptor dup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            return a.listTarEntriesZstdFromFdRaw(dup.getFd(), offset, length);
        } finally {
            dup.close();
        }
    }

    public static String[] extractZstd(int fd, long offset, long length, String destination,
                                       int flags, String[] selected,
                                       SbaNativeProgressListener listener) {
        return a.extractTarZstdFromFdRaw(fd, offset, length, destination, flags, selected, listener);
    }

    public static String[] extract(int fd, long offset, String destination, int flags,
                                   String[] selected, SbaNativeProgressListener listener) {
        return a.extractTarFromFdRaw(fd, offset, destination, flags, selected, listener);
    }

    private native String[] extractTarFromFdRaw(int fd, long offset, String destination, int flags,
            String[] selected, SbaNativeProgressListener listener);

    private native long[] extractTarFromFdWithStatsRaw(int fd, long offset, String destination,
            int flags, String[] selected, SbaNativeProgressListener listener);

    private native String[] extractTarZstdFromFdRaw(int fd, long offset, long length,
            String destination, int flags, String[] selected,
            SbaNativeProgressListener listener);

    private native SbaTarEntryInfo[] listTarEntriesFromFdRaw(int fd, long offset);

    private native SbaTarEntryInfo[] listTarEntriesZstdFromFdRaw(int fd, long offset, long length);

    public native String[] extractAegisArchiveEntry(String destination, long offset,
            long archiveLength, long entryOffset, long entryLength, String entryName,
            int flags, String[] selectedEntries, int cryptoMode, int chunkSize,
            byte[] key, byte[] nonce, byte[] aad, long totalBytes, int progressMode,
            SbaNativeProgressListener listener);

    public native String[] extractAegisArchiveEntryFused(String destination, long offset,
            long archiveLength, long entryOffset, long entryLength, String entryName,
            int flags, String[] selectedEntries, int cryptoMode, int chunkSize,
            byte[] key, byte[] nonce, byte[] aad, long totalBytes, int progressMode,
            SbaNativeProgressListener listener);
}
