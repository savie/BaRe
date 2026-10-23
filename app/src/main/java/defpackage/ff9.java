package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ff9 implements a42 {
    public static final ff9 c;
    public static final ff9 d;
    public static final ff9 e;
    public static final ff9 f;
    public static final ff9 k;
    public final /* synthetic */ int a;
    public final String b;

    static {
        int i = 0;
        c = new ff9("SHA1", i);
        d = new ff9("SHA224", i);
        e = new ff9("SHA256", i);
        f = new ff9("SHA384", i);
        k = new ff9("SHA512", i);
    }

    public /* synthetic */ ff9(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.a42
    public String a() {
        return this.b;
    }

    public String toString() {
        switch (this.a) {
            case 0:
                return this.b;
            default:
                return super.toString();
        }
    }
}
