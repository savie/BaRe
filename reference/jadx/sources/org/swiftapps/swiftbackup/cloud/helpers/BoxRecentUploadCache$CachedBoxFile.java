package org.swiftapps.swiftbackup.cloud.helpers;

import defpackage.fz5;
import defpackage.pe4;
import defpackage.u48;
import defpackage.xs1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class BoxRecentUploadCache$CachedBoxFile {
    private final String id;
    private final long modifiedAtMillis;
    private final String name;
    private final long size;

    public BoxRecentUploadCache$CachedBoxFile(String str, String str2, long j, long j2) {
        str.getClass();
        str2.getClass();
        this.id = str;
        this.name = str2;
        this.size = j;
        this.modifiedAtMillis = j2;
    }

    public static /* synthetic */ BoxRecentUploadCache$CachedBoxFile copy$default(BoxRecentUploadCache$CachedBoxFile boxRecentUploadCache$CachedBoxFile, String str, String str2, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = boxRecentUploadCache$CachedBoxFile.id;
        }
        if ((i & 2) != 0) {
            str2 = boxRecentUploadCache$CachedBoxFile.name;
        }
        if ((i & 4) != 0) {
            j = boxRecentUploadCache$CachedBoxFile.size;
        }
        if ((i & 8) != 0) {
            j2 = boxRecentUploadCache$CachedBoxFile.modifiedAtMillis;
        }
        long j3 = j2;
        return boxRecentUploadCache$CachedBoxFile.copy(str, str2, j, j3);
    }

    public final String component1() {
        return this.id;
    }

    public final String component2() {
        return this.name;
    }

    public final long component3() {
        return this.size;
    }

    public final long component4() {
        return this.modifiedAtMillis;
    }

    public final BoxRecentUploadCache$CachedBoxFile copy(String str, String str2, long j, long j2) {
        str.getClass();
        str2.getClass();
        return new BoxRecentUploadCache$CachedBoxFile(str, str2, j, j2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoxRecentUploadCache$CachedBoxFile)) {
            return false;
        }
        BoxRecentUploadCache$CachedBoxFile boxRecentUploadCache$CachedBoxFile = (BoxRecentUploadCache$CachedBoxFile) obj;
        return pe4.d(this.id, boxRecentUploadCache$CachedBoxFile.id) && pe4.d(this.name, boxRecentUploadCache$CachedBoxFile.name) && this.size == boxRecentUploadCache$CachedBoxFile.size && this.modifiedAtMillis == boxRecentUploadCache$CachedBoxFile.modifiedAtMillis;
    }

    public final String getId() {
        return this.id;
    }

    public final long getModifiedAtMillis() {
        return this.modifiedAtMillis;
    }

    public final String getName() {
        return this.name;
    }

    public final long getSize() {
        return this.size;
    }

    public int hashCode() {
        return Long.hashCode(this.modifiedAtMillis) + xs1.f(this.size, fz5.g(this.id.hashCode() * 31, 31, this.name), 31);
    }

    public String toString() {
        String str = this.id;
        String str2 = this.name;
        long j = this.size;
        long j2 = this.modifiedAtMillis;
        StringBuilder sbP = u48.p("CachedBoxFile(id=", str, ", name=", str2, ", size=");
        sbP.append(j);
        sbP.append(", modifiedAtMillis=");
        sbP.append(j2);
        sbP.append(")");
        return sbP.toString();
    }
}
