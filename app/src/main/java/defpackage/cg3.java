package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cg3 implements aj8 {
    @Override // defpackage.aj8
    public final void onCancelled(wc2 wc2Var) {
        wc2Var.getClass();
        vr6.w$default(vr6.INSTANCE, "FCW", "Listener cancelled: ".concat(io4.b(wc2Var.c())), null, 4, null);
    }

    @Override // defpackage.aj8
    public final void onDataChange(eb2 eb2Var) {
        Boolean bool = (Boolean) eb2Var.c(Boolean.TYPE);
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        gg3 gg3Var = gg3.a;
        synchronized (gg3Var) {
            try {
                long j = gg3.g + 1;
                gg3.g = j;
                if (zBooleanValue) {
                    bl7 bl7Var = gg3.h;
                    if (bl7Var != null) {
                        bl7Var.cancel(null);
                    }
                    gg3.h = null;
                    gg3Var.j(xf3.CONNECTED);
                    return;
                }
                bl7 bl7Var2 = gg3.h;
                if (bl7Var2 != null) {
                    bl7Var2.cancel(null);
                }
                if (gg3.b != xf3.DISCONNECTED) {
                    gg3Var.j(xf3.CONNECTING);
                }
                zn4 zn4Var = zn4.a;
                gg3.h = zn4.b(null, new dg3(j, null));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
