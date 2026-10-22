package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jc9 {
    public static final jc9 c;
    public static final jc9 d;
    public final boolean a;
    public final Throwable b;

    static {
        if (uc9.f) {
            d = null;
            c = null;
        } else {
            d = new jc9(null, false);
            c = new jc9(null, true);
        }
    }

    public jc9(Throwable th, boolean z) {
        this.a = z;
        this.b = th;
    }
}
