package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ed0 {
    public int a;
    public String b;
    public String c;
    public boolean d;
    public byte e;

    public final fd0 a() {
        String str;
        String str2;
        if (this.e == 3 && (str = this.b) != null && (str2 = this.c) != null) {
            return new fd0(this.a, str, str2, this.d);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.e & 1) == 0) {
            sb.append(" platform");
        }
        if (this.b == null) {
            sb.append(" version");
        }
        if (this.c == null) {
            sb.append(" buildVersion");
        }
        if ((this.e & 2) == 0) {
            sb.append(" jailbroken");
        }
        l0.e(xs1.k("Missing required properties:", sb));
        return null;
    }
}
