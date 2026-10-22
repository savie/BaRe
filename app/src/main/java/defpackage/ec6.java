package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ec6 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ long b;

    public /* synthetic */ ec6(int i, long j) {
        this.a = i;
        this.b = j;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.a) {
            case 0:
                ((fc6) obj).g = this.b;
                break;
            default:
                ((uf8) obj).r = this.b;
                break;
        }
    }
}
