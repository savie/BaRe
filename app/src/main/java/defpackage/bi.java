package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bi {
    public final List a;
    public final List b;
    public final String c;

    public bi(String str, List list, List list2) {
        this.a = list;
        this.b = list2;
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bi)) {
            return false;
        }
        bi biVar = (bi) obj;
        return this.a.equals(biVar.a) && this.b.equals(biVar.b) && pe4.d(this.c, biVar.c);
    }

    public final int hashCode() {
        int i = fz5.i(this.b, this.a.hashCode() * 31, 31);
        String str = this.c;
        return i + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Request(apkFiles=");
        sb.append(this.a);
        sb.append(", metadataFiles=");
        sb.append(this.b);
        sb.append(", packageName=");
        return dj7.n(sb, this.c, ")");
    }
}
