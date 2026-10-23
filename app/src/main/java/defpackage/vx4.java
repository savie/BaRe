package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vx4 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ vx4(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
                wx4.t((wx4) obj, str);
                break;
            case 1:
                ay4.k((ay4) obj, str);
                break;
            case 2:
                ((ry4) obj).g = str;
                break;
            default:
                s97.i((s97) obj, str);
                break;
        }
    }
}
