package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xr5 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ v64.c b;

    public /* synthetic */ xr5(v64.c cVar, int i) {
        this.a = i;
        this.b = cVar;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        v64.c cVar = this.b;
        switch (i) {
            case 0:
                ((yr5) obj).g = cVar;
                break;
            default:
                xf8.n((xf8) obj, cVar);
                break;
        }
    }
}
