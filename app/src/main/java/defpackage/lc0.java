package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lc0 {
    public long a;
    public String b;
    public sz1 c;
    public tz1 d;
    public uz1 e;
    public xz1 f;
    public byte g;

    public final mc0 a() {
        String str;
        sz1 sz1Var;
        tz1 tz1Var;
        if (this.g == 1 && (str = this.b) != null && (sz1Var = this.c) != null && (tz1Var = this.d) != null) {
            return new mc0(this.a, str, sz1Var, tz1Var, this.e, this.f);
        }
        StringBuilder sb = new StringBuilder();
        if ((1 & this.g) == 0) {
            sb.append(" timestamp");
        }
        if (this.b == null) {
            sb.append(" type");
        }
        if (this.c == null) {
            sb.append(" app");
        }
        if (this.d == null) {
            sb.append(" device");
        }
        l0.e(xs1.k("Missing required properties:", sb));
        return null;
    }
}
