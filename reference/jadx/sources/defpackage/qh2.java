package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qh2 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ boolean b;

    public /* synthetic */ qh2(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        boolean z = this.b;
        switch (i) {
            case 0:
                ((th2) obj).g = z;
                break;
            case 1:
                wx4.m((wx4) obj, z);
                break;
            default:
                ((ij6) obj).f = z;
                break;
        }
    }
}
