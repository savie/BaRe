package com.pcloud.sdk.internal;

import defpackage.aj6;
import defpackage.fz5;
import defpackage.q03;
import defpackage.y77;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class c extends RealRemoteEntry implements aj6 {

    @q03
    @y77("contenttype")
    private String contentType;

    @q03
    @y77("fileid")
    private long fileId;

    @q03
    @y77("thumb")
    private Boolean hasThumbnail;

    @q03
    @y77("hash")
    private String hash;

    @q03
    @y77("size")
    private long size;

    @Override // com.pcloud.sdk.internal.RealRemoteEntry
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.fileId == cVar.fileId && this.size == cVar.size && this.contentType.equals(cVar.contentType)) {
            return this.hash.equals(cVar.hash);
        }
        return false;
    }

    @Override // com.pcloud.sdk.internal.RealRemoteEntry
    public final int hashCode() {
        int iHashCode = super.hashCode() * 31;
        long j = this.fileId;
        int iG = fz5.g((iHashCode + ((int) (j ^ (j >>> 32)))) * 31, 31, this.contentType);
        long j2 = this.size;
        return this.hash.hashCode() + ((iG + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }

    @Override // defpackage.aj6
    public final long size() {
        return this.size;
    }

    public final String toString() {
        return String.format(Locale.US, "%s | ID:%s | Created:%s | Modified: %s | Size:%s", name(), f(), a(), d(), Long.valueOf(this.size));
    }

    @Override // com.pcloud.sdk.internal.RealRemoteEntry, defpackage.zi6
    public final aj6 c() {
        return this;
    }
}
