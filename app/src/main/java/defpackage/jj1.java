package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jj1 {
    public final kj1 a;
    public final boolean b;
    public final long c;
    public final String d;

    public jj1(kj1 kj1Var, boolean z, long j, String str) {
        kj1Var.getClass();
        this.a = kj1Var;
        this.b = z;
        this.c = j;
        this.d = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jj1)) {
            return false;
        }
        jj1 jj1Var = (jj1) obj;
        return pe4.d(this.a, jj1Var.a) && this.b == jj1Var.b && this.c == jj1Var.c && this.d.equals(jj1Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + xs1.f(this.c, fz5.h(this.a.hashCode() * 31, 31, this.b), 31);
    }

    public final String toString() {
        return "CloudServerProbeResult(target=" + this.a + ", found=" + this.b + ", elapsedMillis=" + this.c + ", evidence=" + this.d + ")";
    }
}
