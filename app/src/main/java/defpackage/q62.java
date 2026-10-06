package defpackage;

import java.util.Currency;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q62 implements i98 {
    public final /* synthetic */ int a;

    @Override // defpackage.i98
    public final Object a(String str) {
        switch (this.a) {
            case 0:
                return Currency.getInstance(str);
            default:
                return Double.valueOf(str);
        }
    }

    @Override // defpackage.i98
    public final String b(Object obj) {
        switch (this.a) {
            case 0:
                return ((Currency) obj).toString();
            default:
                return ((Double) obj).toString();
        }
    }
}
