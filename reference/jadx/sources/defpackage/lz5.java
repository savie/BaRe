package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lz5 implements qz5 {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ wz5 b;

    public lz5(wz5 wz5Var, boolean z) {
        this.b = wz5Var;
        this.a = z;
    }

    @Override // defpackage.qz5
    public final void a(Map map) {
        String str = (String) map.get("s");
        boolean zEquals = str.equals("ok");
        wz5 wz5Var = this.b;
        u00 u00Var = wz5Var.y;
        if (zEquals) {
            wz5Var.h = rz5.e;
            wz5Var.C = 0;
            wz5Var.i(this.a);
            return;
        }
        wz5Var.q = null;
        wz5Var.r = true;
        wj6 wj6Var = wz5Var.a;
        wj6Var.getClass();
        wj6Var.p(vs1.c, Boolean.FALSE);
        u00Var.c(eq3.l("Authentication failed: ", str, " (", (String) map.get("d"), ")"), null, new Object[0]);
        wz5Var.g.c(2);
        if (str.equals("invalid_token")) {
            int i = wz5Var.C + 1;
            wz5Var.C = i;
            if (i >= 3) {
                ln6 ln6Var = wz5Var.z;
                ln6Var.i = ln6Var.d;
                u00Var.j("Provided authentication credentials are invalid. This usually indicates your FirebaseApp instance was not initialized correctly. Make sure your google-services.json file has the correct firebase_url and api_key. You can re-download google-services.json from https://console.firebase.google.com/.");
            }
        }
    }
}
