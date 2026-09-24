package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fo3 {
    public final List a;
    public final List b;
    public final FolderMetadata c;
    public final long d;

    public fo3(long j, ArrayList arrayList, List list, FolderMetadata folderMetadata) {
        this.a = list;
        this.b = arrayList;
        this.c = folderMetadata;
        this.d = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fo3)) {
            return false;
        }
        fo3 fo3Var = (fo3) obj;
        return pe4.d(this.a, fo3Var.a) && pe4.d(this.b, fo3Var.b) && this.c.equals(fo3Var.c) && this.d == fo3Var.d;
    }

    public final int hashCode() {
        List list = this.a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.b;
        return Long.hashCode(this.d) + ((this.c.hashCode() + ((iHashCode + (list2 != null ? list2.hashCode() : 0)) * 31)) * 31);
    }

    public final String toString() {
        return "FolderUpload(baseInfoList=" + this.a + ", incInfoList=" + this.b + ", folderMetadata=" + this.c + ", totalSize=" + this.d + ")";
    }
}
