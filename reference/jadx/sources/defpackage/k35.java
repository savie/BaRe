package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k35 implements s26 {
    public final l35 a;
    public int b;
    public Class c;

    public k35(l35 l35Var) {
        this.a = l35Var;
    }

    @Override // defpackage.s26
    public final void a() {
        this.a.v(this);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof k35) {
            k35 k35Var = (k35) obj;
            if (this.b == k35Var.b && this.c == k35Var.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.b * 31;
        Class cls = this.c;
        return i + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "Key{size=" + this.b + "array=" + this.c + '}';
    }
}
