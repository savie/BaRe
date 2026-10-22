package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class go6 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ go6(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                o21 o21Var = (o21) obj3;
                try {
                    l73.B(o21Var.e.minusKey(lv1.b), new fo6((eo6) obj2, o21Var, (o41) obj, null));
                } catch (Throwable th) {
                    o21Var.n(th);
                    return;
                }
                break;
            default:
                super/*dq0*/.a((ia9) obj2, (kq0) obj);
                break;
        }
    }
}
