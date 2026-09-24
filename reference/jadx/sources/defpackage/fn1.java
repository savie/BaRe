package defpackage;

import java.util.function.Consumer;
import okhttp3.MediaType;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fn1 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ fn1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                hn1.l((hn1) obj, (gx5[]) obj2);
                break;
            case 1:
                s12.i((s12) obj, (v64.c) obj2);
                break;
            case 2:
                ((cy4) obj).h = (Integer) obj2;
                break;
            case 3:
                ((ry4) obj).h = (String[]) obj2;
                break;
            case 4:
                ((dc6) obj).t = (MediaType) obj2;
                break;
            default:
                t67.m((t67) obj, (Long) obj2);
                break;
        }
    }
}
