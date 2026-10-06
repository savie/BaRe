package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jo2 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ boolean b;

    public /* synthetic */ jo2(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        boolean z = this.b;
        switch (i) {
            case 0:
                mo2.l((mo2) obj, z);
                break;
            default:
                ((wx4) obj).q = z;
                break;
        }
    }
}
