package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ef9 implements a42 {
    public static final ef9 c;
    public static final ef9 d;
    public static final ef9 e;
    public static final ef9 f;
    public static final ef9 k;
    public static final ef9 n;
    public final /* synthetic */ int a;
    public final String b;

    static {
        int i = 0;
        c = new ef9("TINK", i);
        d = new ef9("CRUNCHY", i);
        e = new ef9("NO_PREFIX", i);
        int i2 = 1;
        f = new ef9("TINK", i2);
        k = new ef9("CRUNCHY", i2);
        n = new ef9("NO_PREFIX", i2);
    }

    public /* synthetic */ ef9(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.a42
    public String a() {
        return this.b;
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
