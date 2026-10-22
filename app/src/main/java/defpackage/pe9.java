package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pe9 implements nt9 {
    public static final pe9 b = new pe9(0);
    public static final kt9 c = new kt9(ns9.class, w99.class);
    public static final pe9 d = new pe9(1);
    public static final kt9 e = new kt9(ns9.class, m1a.class);
    public final /* synthetic */ int a;

    public /* synthetic */ pe9(int i) {
        this.a = i;
    }

    @Override // defpackage.nt9
    public final Class zza() {
        switch (this.a) {
            case 0:
                return w99.class;
            default:
                return m1a.class;
        }
    }
}
