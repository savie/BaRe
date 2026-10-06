package defpackage;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mz5 implements qz5 {
    public final /* synthetic */ String a;
    public final /* synthetic */ long b;
    public final /* synthetic */ uz5 c;
    public final /* synthetic */ cl6 d;
    public final /* synthetic */ wz5 e;

    public mz5(wz5 wz5Var, String str, long j, uz5 uz5Var, cl6 cl6Var) {
        this.e = wz5Var;
        this.a = str;
        this.b = j;
        this.c = uz5Var;
        this.d = cl6Var;
    }

    @Override // defpackage.qz5
    public final void a(Map map) {
        wz5 wz5Var = this.e;
        HashMap map2 = wz5Var.n;
        u00 u00Var = wz5Var.y;
        if (u00Var.e()) {
            u00Var.c(this.a + " response: " + map, null, new Object[0]);
        }
        long j = this.b;
        if (((uz5) map2.get(Long.valueOf(j))) == this.c) {
            map2.remove(Long.valueOf(j));
            String str = (String) map.get("s");
            boolean zEquals = str.equals("ok");
            cl6 cl6Var = this.d;
            if (zEquals) {
                cl6Var.d(null, null);
            } else {
                cl6Var.d(str, (String) map.get("d"));
            }
        } else if (u00Var.e()) {
            u00Var.c(fz5.m("Ignoring on complete for put ", " because it was removed already.", j), null, new Object[0]);
        }
        wz5Var.b();
    }
}
