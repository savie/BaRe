package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xv0 {
    public final ds8 a;
    public final Throwable b;

    public xv0(ds8 ds8Var, Throwable th) {
        ds8Var.getClass();
        this.a = ds8Var;
        this.b = th;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xv0)) {
            return false;
        }
        xv0 xv0Var = (xv0) obj;
        return this.a == xv0Var.a && pe4.d(this.b, xv0Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Throwable th = this.b;
        return iHashCode + (th == null ? 0 : th.hashCode());
    }

    public final String toString() {
        return "Failure(reason=" + this.a + ", cause=" + this.b + ")";
    }
}
