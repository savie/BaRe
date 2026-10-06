package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a5 {
    public static final a5 c;
    public static final a5 d;
    public final boolean a;
    public final Throwable b;

    static {
        if (h5.d) {
            d = null;
            c = null;
        } else {
            d = new a5(null, false);
            c = new a5(null, true);
        }
    }

    public a5(Throwable th, boolean z) {
        this.a = z;
        this.b = th;
    }
}
