package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class jj5 extends d96 implements co4, mt3 {
    public final /* synthetic */ int b = 1;

    public jj5(String str, String str2) {
        super(uz0.NO_RECEIVER, ji.class, str, str2, 0);
    }

    public abstract Object c(Object obj);

    @Override // defpackage.uz0
    public final rn4 computeReflected() {
        switch (this.b) {
            case 0:
                ph6.a.getClass();
                break;
            default:
                ph6.a.getClass();
                break;
        }
        return this;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                break;
        }
        return c(obj);
    }

    public jj5(Class cls, String str, String str2) {
        super(uz0.NO_RECEIVER, cls, str, str2, 0);
    }
}
