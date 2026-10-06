package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mw1 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ mw1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                pw1.x((pw1) obj, (zl2) obj2);
                break;
            case 1:
                StringBuilder sb = (StringBuilder) obj2;
                l43.b((String) obj, sb);
                sb.append('|');
                break;
            case 2:
                ((px4) obj).h = (Integer) obj2;
                break;
            default:
                q97.i((q97) obj, (wt4) obj2);
                break;
        }
    }
}
