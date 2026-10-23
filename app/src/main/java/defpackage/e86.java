package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e86 {
    public final i07 a;
    public final k07 b;
    public final String c;

    public e86(i07 i07Var, k07 k07Var, String str) {
        i07Var.getClass();
        k07Var.getClass();
        this.a = i07Var;
        this.b = k07Var;
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e86)) {
            return false;
        }
        e86 e86Var = (e86) obj;
        return this.a == e86Var.a && this.b == e86Var.b && pe4.d(this.c, e86Var.c);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        String str = this.c;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ProgressKey(operation=");
        sb.append(this.a);
        sb.append(", phase=");
        sb.append(this.b);
        sb.append(", entryName=");
        return dj7.n(sb, this.c, ")");
    }
}
