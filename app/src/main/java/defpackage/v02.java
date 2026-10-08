package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v02 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ v02(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((y02) obj).g = (z02.b) obj2;
                break;
            case 1:
                ((nx4) obj).h = (Integer) obj2;
                break;
            case 2:
                ((yx4) obj).g = (String) obj2;
                break;
            case 3:
                ((yr5) obj).i = (g87) obj2;
                break;
            case 4:
                ((yb6) obj).k = (v64.c) obj2;
                break;
            case 5:
                fc6.m((fc6) obj, (a61) obj2);
                break;
            case 6:
                ((ij6) obj).g = (Iterable) obj2;
                break;
            case 7:
                t67.n((t67) obj, (Boolean) obj2);
                break;
            default:
                ((u97) obj).f = (jx7) obj2;
                break;
        }
    }
}
