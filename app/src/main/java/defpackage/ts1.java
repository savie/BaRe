package defpackage;

import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ts1 extends xh8 {
    public final /* synthetic */ String q;

    public ts1(String str) {
        this.q = str;
    }

    @Override // defpackage.xh8, defpackage.aj8
    public final void onDataChange(eb2 eb2Var) {
        Boolean bool = (Boolean) eb2Var.c(Boolean.TYPE);
        if (bool != null) {
            if (bool.booleanValue()) {
                Const.a.Q(this.q);
            }
            V v = V.INSTANCE;
            if (!bool.booleanValue()) {
                bool = null;
            }
            v.setC(bool);
        }
    }
}
