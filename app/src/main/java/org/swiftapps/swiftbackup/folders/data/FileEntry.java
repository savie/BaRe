package org.swiftapps.swiftbackup.folders.data;

import defpackage.dj7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FileEntry {
    private final long mtime;
    private final long size;

    public FileEntry(long j, long j2) {
        this.size = j;
        this.mtime = j2;
    }

    public static /* synthetic */ FileEntry copy$default(FileEntry fileEntry, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = fileEntry.size;
        }
        if ((i & 2) != 0) {
            j2 = fileEntry.mtime;
        }
        return fileEntry.copy(j, j2);
    }

    public final long component1() {
        return this.size;
    }

    public final long component2() {
        return this.mtime;
    }

    public final FileEntry copy(long j, long j2) {
        return new FileEntry(j, j2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FileEntry)) {
            return false;
        }
        FileEntry fileEntry = (FileEntry) obj;
        return this.size == fileEntry.size && this.mtime == fileEntry.mtime;
    }

    public final long getMtime() {
        return this.mtime;
    }

    public final long getSize() {
        return this.size;
    }

    public int hashCode() {
        return Long.hashCode(this.mtime) + (Long.hashCode(this.size) * 31);
    }

    public String toString() {
        return dj7.h(this.mtime, ")", dj7.t("FileEntry(size=", ", mtime=", this.size));
    }
}
