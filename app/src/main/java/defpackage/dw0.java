package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dw0 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ dw0(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
                fw0.a.r(str, (fw0) obj);
                break;
            case 1:
                ((y02) obj).e = str;
                break;
            case 2:
                nx4.m((nx4) obj, str);
                break;
            case 3:
                wx4.t((wx4) obj, str);
                break;
            case 4:
                t67.q((t67) obj, str);
                break;
            default:
                uf8.A((uf8) obj, str);
                break;
        }
    }
}
