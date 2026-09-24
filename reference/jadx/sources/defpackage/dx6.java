package defpackage;

import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class dx6 extends xh8 {
    @Override // defpackage.xh8, defpackage.aj8
    public final void onDataChange(eb2 eb2Var) {
        Boolean bool = (Boolean) eb2Var.c(Boolean.class);
        if (bool == null) {
            bool = Boolean.FALSE;
        }
        zc2 zc2Var = re3.a;
        try {
            new qe3("vcl", String.valueOf(bool)).invoke();
        } catch (Exception unused) {
        }
        V v = V.INSTANCE;
        try {
            new qe3("vprf", String.valueOf(v.getA())).invoke();
        } catch (Exception unused2) {
        }
        v.setVp(bool.booleanValue());
    }
}
