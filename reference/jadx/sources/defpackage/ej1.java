package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ej1 {
    public final String a;
    public final int b;
    public final fd1 c;

    public ej1(int i, fd1 fd1Var, String str) {
        str.getClass();
        fd1Var.getClass();
        this.a = str;
        this.b = i;
        this.c = fd1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ej1)) {
            return false;
        }
        ej1 ej1Var = (ej1) obj;
        return pe4.d(this.a, ej1Var.a) && this.b == ej1Var.b && this.c == ej1Var.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + eq3.d(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sbV = dj7.v("WebDavProbeGroupKey(host=", this.a, ", port=", this.b, ", protocol=");
        sbV.append(this.c);
        sbV.append(")");
        return sbV.toString();
    }
}
