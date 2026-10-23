package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ad0 {
    public cd0 a;
    public String b;
    public String c;
    public long d;
    public byte e;

    public final bd0 a() {
        cd0 cd0Var;
        String str;
        String str2;
        if (this.e == 1 && (cd0Var = this.a) != null && (str = this.b) != null && (str2 = this.c) != null) {
            return new bd0(cd0Var, str, str2, this.d);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" rolloutVariant");
        }
        if (this.b == null) {
            sb.append(" parameterKey");
        }
        if (this.c == null) {
            sb.append(" parameterValue");
        }
        if ((this.e & 1) == 0) {
            sb.append(" templateVersion");
        }
        l0.e(xs1.k("Missing required properties:", sb));
        return null;
    }
}
