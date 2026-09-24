package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class en1 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ en1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                hn1.m((hn1) obj, (g87.a) obj2);
                break;
            case 1:
                ((cy4) obj).i = (Integer) obj2;
                break;
            case 2:
                ((yr5) obj).j = (jx7) obj2;
                break;
            case 3:
                ((dc6) obj).u = (y51.a) obj2;
                break;
            case 4:
                t67.l((t67) obj, (Long) obj2);
                break;
            default:
                ((t97) obj).f = (qj6) obj2;
                break;
        }
    }
}
