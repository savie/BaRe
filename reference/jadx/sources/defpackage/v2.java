package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v2 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ v2(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
                w2.j((w2) obj, str);
                break;
            case 1:
                ((nx4) obj).i = str;
                break;
            case 2:
                wx4.a.S(str, (wx4) obj);
                break;
            case 3:
                yx4.h((yx4) obj, str);
                break;
            default:
                ((ry4) obj).f = str;
                break;
        }
    }
}
