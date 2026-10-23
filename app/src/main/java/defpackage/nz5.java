package defpackage;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nz5 implements qz5 {
    public final /* synthetic */ Long a;
    public final /* synthetic */ sz5 b;
    public final /* synthetic */ wz5 c;

    public nz5(wz5 wz5Var, Long l, sz5 sz5Var) {
        this.c = wz5Var;
        this.a = l;
        this.b = sz5Var;
    }

    @Override // defpackage.qz5
    public final void a(Map map) {
        wz5 wz5Var = this.c;
        u00 u00Var = wz5Var.y;
        ConcurrentHashMap concurrentHashMap = wz5Var.o;
        Long l = this.a;
        sz5 sz5Var = (sz5) concurrentHashMap.get(l);
        sz5 sz5Var2 = this.b;
        if (sz5Var == sz5Var2) {
            concurrentHashMap.remove(l);
            sz5Var2.b.a(map);
        } else if (u00Var.e()) {
            u00Var.c("Ignoring on complete for get " + l + " because it was removed already.", null, new Object[0]);
        }
    }
}
