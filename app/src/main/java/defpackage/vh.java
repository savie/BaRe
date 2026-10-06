package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vh {
    public final q63 a;
    public final String b;
    public final uh c;

    public vh(q63 q63Var, String str, uh uhVar) {
        q63Var.getClass();
        uhVar.getClass();
        this.a = q63Var;
        this.b = str;
        this.c = uhVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vh)) {
            return false;
        }
        vh vhVar = (vh) obj;
        return pe4.d(this.a, vhVar.a) && this.b.equals(vhVar.b) && this.c == vhVar.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + fz5.g(this.a.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return "ApkShareFile(sourceFile=" + this.a + ", archiveName=" + this.b + ", role=" + this.c + ")";
    }
}
