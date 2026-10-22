package defpackage;

import java.io.InputStream;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b10 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ b10(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                d10.n((d10) obj, (byte[]) obj2);
                break;
            case 1:
                ((ay4) obj).h = (Integer) obj2;
                break;
            case 2:
                bc6.A((bc6) obj, (InputStream) obj2);
                break;
            case 3:
                o97.i((o97) obj, (yy0) obj2);
                break;
            default:
                z97.k((z97) obj, (jx7) obj2);
                break;
        }
    }
}
