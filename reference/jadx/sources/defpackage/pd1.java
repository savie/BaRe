package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pd1 {
    public final rd1 a;
    public final String b;
    public final Long c;

    public pd1(rd1 rd1Var, String str, Long l) {
        rd1Var.getClass();
        str.getClass();
        this.a = rd1Var;
        this.b = str;
        this.c = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pd1)) {
            return false;
        }
        pd1 pd1Var = (pd1) obj;
        return this.a == pd1Var.a && pe4.d(this.b, pd1Var.b) && pe4.d(this.c, pd1Var.c);
    }

    public final int hashCode() {
        int iG = fz5.g(this.a.hashCode() * 31, 31, this.b);
        Long l = this.c;
        return iG + (l == null ? 0 : l.hashCode());
    }

    public final String toString() {
        return "CloudDiagnosticRunResult(status=" + this.a + ", detail=" + this.b + ", durationMillis=" + this.c + ")";
    }
}
