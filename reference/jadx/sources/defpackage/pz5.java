package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pz5 implements qz5 {
    public final /* synthetic */ wz5 a;

    public pz5(wz5 wz5Var) {
        this.a = wz5Var;
    }

    @Override // defpackage.qz5
    public final void a(Map map) {
        u00 u00Var = this.a.y;
        String str = (String) map.get("s");
        if (str.equals("ok")) {
            return;
        }
        String str2 = (String) map.get("d");
        if (u00Var.e()) {
            u00Var.c(eq3.l("Failed to send stats: ", str, " (message: ", str2, ")"), null, new Object[0]);
        }
    }
}
