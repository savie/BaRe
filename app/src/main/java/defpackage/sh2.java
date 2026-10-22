package defpackage;

import java.io.RandomAccessFile;
import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sh2 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ sh2(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((th2) obj).h = (List) obj2;
                break;
            case 1:
                mw3.a.N((String[]) obj2, (mw3) obj);
                break;
            case 2:
                ((yx4) obj).h = (Integer) obj2;
                break;
            case 3:
                ((yr5) obj).j = (jx7) obj2;
                break;
            case 4:
                ((yb6) obj).g = (RandomAccessFile) obj2;
                break;
            case 5:
                ((fc6) obj).j = (g87) obj2;
                break;
            default:
                v97.i((v97) obj, (ck8) obj2);
                break;
        }
    }
}
