package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class em3 {
    public final FolderMetadata a;
    public final List b;
    public final List c;
    public final long d;

    public em3(long j, ArrayList arrayList, List list, FolderMetadata folderMetadata) {
        folderMetadata.getClass();
        this.a = folderMetadata;
        this.b = list;
        this.c = arrayList;
        this.d = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof em3)) {
            return false;
        }
        em3 em3Var = (em3) obj;
        return pe4.d(this.a, em3Var.a) && this.b.equals(em3Var.b) && pe4.d(this.c, em3Var.c) && this.d == em3Var.d;
    }

    public final int hashCode() {
        int i = fz5.i(this.b, this.a.hashCode() * 31, 31);
        List list = this.c;
        return Long.hashCode(this.d) + ((i + (list == null ? 0 : list.hashCode())) * 31);
    }

    public final String toString() {
        return "FolderDownload(cd=" + this.a + ", baseInfoList=" + this.b + ", incrementalInfoList=" + this.c + ", totalSize=" + this.d + ")";
    }
}
