package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class id4 implements w23, d09 {
    public final Object a;

    public /* synthetic */ id4(Object obj) {
        this.a = obj;
    }

    public static id4 b(Object obj) {
        if (obj != null) {
            return new id4(obj);
        }
        f6.n("instance cannot be null");
        return null;
    }

    @Override // defpackage.e09
    public Object a() {
        return this.a;
    }

    @Override // defpackage.ea6
    public Object get() {
        return this.a;
    }
}
