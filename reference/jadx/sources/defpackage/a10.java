package defpackage;

import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a10 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ a10(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                d10.l((d10) obj, (InputStream) obj2);
                break;
            case 1:
                ((ll0) obj).c = (v64.e) obj2;
                break;
            case 2:
                ((y02) obj).h = (z02.a) obj2;
                break;
            case 3:
                mw3.o((mw3) obj, (Integer) obj2);
                break;
            case 4:
                px4.h((px4) obj, (String) obj2);
                break;
            case 5:
                p86.o((p86) obj, (Map) obj2);
                break;
            case 6:
                ((yb6) obj).j = (Long) obj2;
                break;
            case 7:
                fc6.k((fc6) obj, (List) obj2);
                break;
            default:
                y97.k((y97) obj, (jn6) obj2);
                break;
        }
    }
}
