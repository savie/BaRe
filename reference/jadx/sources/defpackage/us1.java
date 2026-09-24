package defpackage;

import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class us1 extends xh8 {
    public final /* synthetic */ String q;

    public us1(String str) {
        this.q = str;
    }

    @Override // defpackage.xh8, defpackage.aj8
    public final void onDataChange(eb2 eb2Var) {
        Integer num = (Integer) eb2Var.c(Integer.TYPE);
        if (num != null) {
            boolean z = 620 <= num.intValue();
            if (z) {
                Const.a.Q(this.q);
            }
            V v = V.INSTANCE;
            if (!z) {
                num = null;
            }
            v.setB(num);
        }
    }
}
