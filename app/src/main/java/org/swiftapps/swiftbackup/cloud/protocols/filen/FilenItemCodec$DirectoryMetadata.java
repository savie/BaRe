package org.swiftapps.swiftbackup.cloud.protocols.filen;

import defpackage.pe4;
import defpackage.u48;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
final class FilenItemCodec$DirectoryMetadata {
    private final long creation;
    private final String name;

    public FilenItemCodec$DirectoryMetadata(String str, long j) {
        str.getClass();
        this.name = str;
        this.creation = j;
    }

    public static /* synthetic */ FilenItemCodec$DirectoryMetadata copy$default(FilenItemCodec$DirectoryMetadata filenItemCodec$DirectoryMetadata, String str, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = filenItemCodec$DirectoryMetadata.name;
        }
        if ((i & 2) != 0) {
            j = filenItemCodec$DirectoryMetadata.creation;
        }
        return filenItemCodec$DirectoryMetadata.copy(str, j);
    }

    public final String component1() {
        return this.name;
    }

    public final long component2() {
        return this.creation;
    }

    public final FilenItemCodec$DirectoryMetadata copy(String str, long j) {
        str.getClass();
        return new FilenItemCodec$DirectoryMetadata(str, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FilenItemCodec$DirectoryMetadata)) {
            return false;
        }
        FilenItemCodec$DirectoryMetadata filenItemCodec$DirectoryMetadata = (FilenItemCodec$DirectoryMetadata) obj;
        return pe4.d(this.name, filenItemCodec$DirectoryMetadata.name) && this.creation == filenItemCodec$DirectoryMetadata.creation;
    }

    public final long getCreation() {
        return this.creation;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return Long.hashCode(this.creation) + (this.name.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbO = u48.o("DirectoryMetadata(name=", this.name, this.creation, ", creation=");
        sbO.append(")");
        return sbO.toString();
    }
}
