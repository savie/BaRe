package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gs8 implements is8 {
    public final ds8 a;
    public final ks8 b;
    public final Throwable c;

    public gs8(ds8 ds8Var, ks8 ks8Var, Throwable th) {
        ds8Var.getClass();
        ks8Var.getClass();
        this.a = ds8Var;
        this.b = ks8Var;
        this.c = th;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gs8)) {
            return false;
        }
        gs8 gs8Var = (gs8) obj;
        return this.a == gs8Var.a && this.b == gs8Var.b && pe4.d(this.c, gs8Var.c);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        Throwable th = this.c;
        return iHashCode + (th == null ? 0 : th.hashCode());
    }

    public final String toString() {
        return "Failure(reason=" + this.a + ", source=" + this.b + ", cause=" + this.c + ")";
    }
}
