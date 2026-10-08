package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vc0 {
    public String a;
    public int b;
    public int c;
    public boolean d;
    public byte e;

    public final wc0 a() {
        String str;
        if (this.e == 7 && (str = this.a) != null) {
            return new wc0(str, this.b, this.c, this.d);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" processName");
        }
        if ((this.e & 1) == 0) {
            sb.append(" pid");
        }
        if ((this.e & 2) == 0) {
            sb.append(" importance");
        }
        if ((this.e & 4) == 0) {
            sb.append(" defaultProcess");
        }
        l0.e(xs1.k("Missing required properties:", sb));
        return null;
    }
}
