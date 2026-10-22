package defpackage;

import java.io.InputStream;
import java.util.LinkedList;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y00 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ y00(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                d10.o((d10) obj, (Long) obj2);
                break;
            case 1:
                ((Consumer) obj).accept((ll0) obj2);
                break;
            case 2:
                mw3.n((mw3) obj, (Integer) obj2);
                break;
            case 3:
                ((rr5) obj).h = (g87.a) obj2;
                break;
            case 4:
                ((yr5) obj).k = (jn6) obj2;
                break;
            case 5:
                ((yb6) obj).h = (ox0) obj2;
                break;
            case 6:
                ((fc6) obj).f = (InputStream) obj2;
                break;
            case 7:
                t67.p((t67) obj, (oc4) obj2);
                break;
            case 8:
                x97.i((x97) obj, (pr5) obj2);
                break;
            default:
                ez8 ez8Var = (ez8) obj;
                ((LinkedList) ((hz8) obj2).b.computeIfAbsent(ez8Var.getName(), new q40(3))).addLast(ez8Var);
                break;
        }
    }
}
