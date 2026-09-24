package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rf9 implements a42, bw0 {
    public static final rf9 c;
    public static final rf9 d;
    public static final rf9 e;
    public static final rf9 f;
    public static final rf9 k;
    public final /* synthetic */ int a;
    public final String b;

    static {
        int i = 0;
        c = new rf9("TINK", i);
        d = new rf9("CRUNCHY", i);
        e = new rf9("NO_PREFIX", i);
        int i2 = 1;
        f = new rf9("TINK", i2);
        k = new rf9("NO_PREFIX", i2);
    }

    public /* synthetic */ rf9(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.a42
    public String a() {
        return this.b;
    }

    @Override // defpackage.bw0
    public boolean h(aw0 aw0Var) {
        aw0Var.getClass();
        return aw0Var.d.booleanValue() && pe4.d(aw0Var.a, this.b);
    }

    public String toString() {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
            case 1:
                return str;
            default:
                return super.toString();
        }
    }
}
