package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xi1 {
    public final fd1 a;
    public final int b;
    public final String c;

    public xi1(int i, fd1 fd1Var, String str) {
        fd1Var.getClass();
        this.a = fd1Var;
        this.b = i;
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xi1)) {
            return false;
        }
        xi1 xi1Var = (xi1) obj;
        return this.a == xi1Var.a && this.b == xi1Var.b && pe4.d(this.c, xi1Var.c);
    }

    public final int hashCode() {
        int iD = eq3.d(this.b, this.a.hashCode() * 31, 31);
        String str = this.c;
        return iD + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ProbeEndpoint(protocol=");
        sb.append(this.a);
        sb.append(", port=");
        sb.append(this.b);
        sb.append(", path=");
        return dj7.n(sb, this.c, ")");
    }
}
