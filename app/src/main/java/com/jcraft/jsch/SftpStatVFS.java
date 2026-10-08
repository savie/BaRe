package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SftpStatVFS {
    public long a;
    public long b;
    public long c;
    public long d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;
    public long j;
    public long k;

    private SftpStatVFS() {
    }

    public static SftpStatVFS a(Buffer buffer) {
        SftpStatVFS sftpStatVFS = new SftpStatVFS();
        sftpStatVFS.a = buffer.getLong();
        sftpStatVFS.b = buffer.getLong();
        sftpStatVFS.c = buffer.getLong();
        sftpStatVFS.d = buffer.getLong();
        sftpStatVFS.e = buffer.getLong();
        sftpStatVFS.f = buffer.getLong();
        sftpStatVFS.g = buffer.getLong();
        sftpStatVFS.h = buffer.getLong();
        sftpStatVFS.i = buffer.getLong();
        int i = (int) buffer.getLong();
        sftpStatVFS.k = buffer.getLong();
        long j = (i & 1) != 0 ? 1L : 0L;
        sftpStatVFS.j = j;
        sftpStatVFS.j = j | ((i & 2) != 0 ? 2L : 0L);
        return sftpStatVFS;
    }

    public final long getAvail() {
        return (this.b * this.d) / 1024;
    }

    public final long getAvailBlocks() {
        return this.e;
    }

    public final long getAvailForNonRoot() {
        return (this.b * this.e) / 1024;
    }

    public final long getAvailINodes() {
        return this.h;
    }

    public final long getBlockSize() {
        return this.a;
    }

    public final long getBlocks() {
        return this.c;
    }

    public final int getCapacity() {
        long j = this.c;
        return (int) (((j - this.d) * 100) / j);
    }

    public final long getFileSystemID() {
        return this.i;
    }

    public final long getFragmentSize() {
        return this.b;
    }

    public final long getFreeBlocks() {
        return this.d;
    }

    public final long getFreeINodes() {
        return this.g;
    }

    public final long getINodes() {
        return this.f;
    }

    public final long getMaximumFilenameLength() {
        return this.k;
    }

    public final long getMountFlag() {
        return this.j;
    }

    public final long getSize() {
        return (this.b * this.c) / 1024;
    }

    public final long getUsed() {
        return ((this.c - this.d) * this.b) / 1024;
    }
}
