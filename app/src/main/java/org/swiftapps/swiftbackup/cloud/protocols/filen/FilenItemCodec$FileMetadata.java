package org.swiftapps.swiftbackup.cloud.protocols.filen;

import defpackage.eq3;
import defpackage.fz5;
import defpackage.pe4;
import defpackage.u48;
import defpackage.xs1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
final class FilenItemCodec$FileMetadata {
    private final String blake3;
    private final long creation;
    private final String hash;
    private final String key;
    private final long lastModified;
    private final String mime;
    private final String name;
    private final long size;

    public FilenItemCodec$FileMetadata(String str, long j, String str2, String str3, long j2, long j3, String str4, String str5) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.name = str;
        this.size = j;
        this.mime = str2;
        this.key = str3;
        this.lastModified = j2;
        this.creation = j3;
        this.blake3 = str4;
        this.hash = str5;
    }

    public static /* synthetic */ FilenItemCodec$FileMetadata copy$default(FilenItemCodec$FileMetadata filenItemCodec$FileMetadata, String str, long j, String str2, String str3, long j2, long j3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = filenItemCodec$FileMetadata.name;
        }
        if ((i & 2) != 0) {
            j = filenItemCodec$FileMetadata.size;
        }
        if ((i & 4) != 0) {
            str2 = filenItemCodec$FileMetadata.mime;
        }
        if ((i & 8) != 0) {
            str3 = filenItemCodec$FileMetadata.key;
        }
        if ((i & 16) != 0) {
            j2 = filenItemCodec$FileMetadata.lastModified;
        }
        if ((i & 32) != 0) {
            j3 = filenItemCodec$FileMetadata.creation;
        }
        if ((i & 64) != 0) {
            str4 = filenItemCodec$FileMetadata.blake3;
        }
        if ((i & 128) != 0) {
            str5 = filenItemCodec$FileMetadata.hash;
        }
        long j4 = j3;
        long j5 = j2;
        String str6 = str2;
        return filenItemCodec$FileMetadata.copy(str, j, str6, str3, j5, j4, str4, str5);
    }

    public final String component1() {
        return this.name;
    }

    public final long component2() {
        return this.size;
    }

    public final String component3() {
        return this.mime;
    }

    public final String component4() {
        return this.key;
    }

    public final long component5() {
        return this.lastModified;
    }

    public final long component6() {
        return this.creation;
    }

    public final String component7() {
        return this.blake3;
    }

    public final String component8() {
        return this.hash;
    }

    public final FilenItemCodec$FileMetadata copy(String str, long j, String str2, String str3, long j2, long j3, String str4, String str5) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        return new FilenItemCodec$FileMetadata(str, j, str2, str3, j2, j3, str4, str5);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FilenItemCodec$FileMetadata)) {
            return false;
        }
        FilenItemCodec$FileMetadata filenItemCodec$FileMetadata = (FilenItemCodec$FileMetadata) obj;
        return pe4.d(this.name, filenItemCodec$FileMetadata.name) && this.size == filenItemCodec$FileMetadata.size && pe4.d(this.mime, filenItemCodec$FileMetadata.mime) && pe4.d(this.key, filenItemCodec$FileMetadata.key) && this.lastModified == filenItemCodec$FileMetadata.lastModified && this.creation == filenItemCodec$FileMetadata.creation && pe4.d(this.blake3, filenItemCodec$FileMetadata.blake3) && pe4.d(this.hash, filenItemCodec$FileMetadata.hash);
    }

    public final String getBlake3() {
        return this.blake3;
    }

    public final long getCreation() {
        return this.creation;
    }

    public final String getHash() {
        return this.hash;
    }

    public final String getKey() {
        return this.key;
    }

    public final long getLastModified() {
        return this.lastModified;
    }

    public final String getMime() {
        return this.mime;
    }

    public final String getName() {
        return this.name;
    }

    public final long getSize() {
        return this.size;
    }

    public int hashCode() {
        int iF = xs1.f(this.creation, xs1.f(this.lastModified, fz5.g(fz5.g(xs1.f(this.size, this.name.hashCode() * 31, 31), 31, this.mime), 31, this.key), 31), 31);
        String str = this.blake3;
        int iHashCode = (iF + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.hash;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        String str = this.name;
        long j = this.size;
        String str2 = this.mime;
        String str3 = this.key;
        long j2 = this.lastModified;
        long j3 = this.creation;
        String str4 = this.blake3;
        String str5 = this.hash;
        StringBuilder sbO = u48.o("FileMetadata(name=", str, j, ", size=");
        xs1.t(sbO, ", mime=", str2, ", key=", str3);
        fz5.r(sbO, ", lastModified=", j2, ", creation=");
        sbO.append(j3);
        sbO.append(", blake3=");
        sbO.append(str4);
        return eq3.n(sbO, ", hash=", str5, ")");
    }

    public /* synthetic */ FilenItemCodec$FileMetadata(String str, long j, String str2, String str3, long j2, long j3, String str4, String str5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j, str2, str3, j2, j3, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : str5);
    }
}
