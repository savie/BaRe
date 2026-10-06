package defpackage;

import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class p extends bg0 {
    public final /* synthetic */ int a;

    public /* synthetic */ p(int i) {
        this.a = i;
    }

    @Override // defpackage.ad3
    public final InputStream a(InputStream inputStream, v40 v40Var) {
        switch (this.a) {
            case 0:
                return new ig7(inputStream, new o(0, 0, false));
            default:
                return new ig7(inputStream, new o(0, 1, false));
        }
    }

    @Override // defpackage.ad3
    public final oe3 b(pe3 pe3Var, v40 v40Var) {
        switch (this.a) {
            case 0:
                return new ng7(pe3Var, new o(0, 0, true));
            default:
                return new ng7(pe3Var, new o(0, 1, true));
        }
    }
}
