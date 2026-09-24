package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lh9 {
    public static final lh9 c;
    public static final lh9 d;
    public final /* synthetic */ int a;
    public final String b;

    static {
        int i = 0;
        c = new lh9("TINK", i);
        d = new lh9("NO_PREFIX", i);
    }

    public /* synthetic */ lh9(String str, int i) {
        this.a = i;
        this.b = str;
    }

    public String toString() {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
            case 2:
                return str;
            case 1:
            default:
                return super.toString();
        }
    }
}
