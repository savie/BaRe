package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yq2 {
    public final List a;
    public final String b;
    public final boolean c;

    public yq2(String str, List list, boolean z) {
        this.a = list;
        this.b = str;
        this.c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yq2)) {
            return false;
        }
        yq2 yq2Var = (yq2) obj;
        return this.a.equals(yq2Var.a) && pe4.d(this.b, yq2Var.b) && this.c == yq2Var.c;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return Boolean.hashCode(this.c) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DropboxListFolderResult(entries=");
        sb.append(this.a);
        sb.append(", cursor=");
        sb.append(this.b);
        sb.append(", hasMore=");
        return dj7.p(sb, this.c, ")");
    }
}
