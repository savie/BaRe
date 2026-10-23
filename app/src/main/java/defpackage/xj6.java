package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xj6 {
    public String a;
    public boolean b;
    public String c;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || xj6.class != obj.getClass()) {
            return false;
        }
        xj6 xj6Var = (xj6) obj;
        if (this.b == xj6Var.b && this.a.equals(xj6Var.a)) {
            return this.c.equals(xj6Var.c);
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() + (((this.a.hashCode() * 31) + (this.b ? 1 : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("http");
        sb.append(this.b ? "s" : "");
        sb.append("://");
        sb.append(this.a);
        return sb.toString();
    }
}
