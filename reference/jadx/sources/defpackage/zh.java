package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zh {
    public final q63 a;
    public final List b;
    public final List c;

    public zh(q63 q63Var, List list, List list2) {
        this.a = q63Var;
        this.b = list;
        this.c = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zh)) {
            return false;
        }
        zh zhVar = (zh) obj;
        return this.a.equals(zhVar.a) && this.b.equals(zhVar.b) && this.c.equals(zhVar.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + fz5.i(this.b, this.a.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ApksArchiveReadResult(workingDir=");
        sb.append(this.a);
        sb.append(", apkFiles=");
        sb.append(this.b);
        sb.append(", metadataFiles=");
        return dj7.o(sb, this.c, ")");
    }
}
