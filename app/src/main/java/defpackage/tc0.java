package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tc0 {
    public long a;
    public String b;
    public String c;
    public long d;
    public int e;
    public byte f;

    public final uc0 a() {
        String str;
        if (this.f == 7 && (str = this.b) != null) {
            return new uc0(this.a, str, this.c, this.d, this.e);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.f & 1) == 0) {
            sb.append(" pc");
        }
        if (this.b == null) {
            sb.append(" symbol");
        }
        if ((this.f & 2) == 0) {
            sb.append(" offset");
        }
        if ((this.f & 4) == 0) {
            sb.append(" importance");
        }
        l0.e(xs1.k("Missing required properties:", sb));
        return null;
    }
}
