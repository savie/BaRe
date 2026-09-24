package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jn1 {
    public final Object a;
    public final j21 b;
    public final rt3 c;
    public final Object d;
    public final Throwable e;

    public /* synthetic */ jn1(Object obj, j21 j21Var, rt3 rt3Var, Throwable th, int i) {
        this(obj, (i & 2) != 0 ? null : j21Var, (i & 4) != 0 ? null : rt3Var, (Object) null, (i & 16) != 0 ? null : th);
    }

    public static jn1 a(jn1 jn1Var, j21 j21Var, Throwable th, int i) {
        Object obj = jn1Var.a;
        if ((i & 2) != 0) {
            j21Var = jn1Var.b;
        }
        j21 j21Var2 = j21Var;
        rt3 rt3Var = jn1Var.c;
        Object obj2 = jn1Var.d;
        if ((i & 16) != 0) {
            th = jn1Var.e;
        }
        return new jn1(obj, j21Var2, rt3Var, obj2, th);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jn1)) {
            return false;
        }
        jn1 jn1Var = (jn1) obj;
        return pe4.d(this.a, jn1Var.a) && pe4.d(this.b, jn1Var.b) && pe4.d(this.c, jn1Var.c) && pe4.d(this.d, jn1Var.d) && pe4.d(this.e, jn1Var.e);
    }

    public final int hashCode() {
        Object obj = this.a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        j21 j21Var = this.b;
        int iHashCode2 = (iHashCode + (j21Var == null ? 0 : j21Var.hashCode())) * 31;
        rt3 rt3Var = this.c;
        int iHashCode3 = (iHashCode2 + (rt3Var == null ? 0 : rt3Var.hashCode())) * 31;
        Object obj2 = this.d;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.e;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.a + ", cancelHandler=" + this.b + ", onCancellation=" + this.c + ", idempotentResume=" + this.d + ", cancelCause=" + this.e + ')';
    }

    public jn1(Object obj, j21 j21Var, rt3 rt3Var, Object obj2, Throwable th) {
        this.a = obj;
        this.b = j21Var;
        this.c = rt3Var;
        this.d = obj2;
        this.e = th;
    }
}
