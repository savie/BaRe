package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tw3 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;

    public /* synthetic */ tw3(int i, int i2) {
        this.a = i2;
        this.b = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        int i2 = this.b;
        switch (i) {
            case 0:
                uw3.l((uw3) obj, i2);
                break;
            default:
                xf8.l((xf8) obj, i2);
                break;
        }
    }
}
