package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xg8 {
    public final /* synthetic */ yg8 a;
    public final /* synthetic */ wg8 b;

    public /* synthetic */ xg8(yg8 yg8Var, wg8 wg8Var) {
        this.a = yg8Var;
        this.b = wg8Var;
    }

    public final void a(boolean z) {
        yg8 yg8Var = this.a;
        wg8 wg8Var = this.b;
        ms8.A(4, zg8.d, "permission result {}", Boolean.valueOf(z));
        if (z) {
            synchronized (yg8Var.d) {
                try {
                    if (yg8Var.d.c == yg8Var) {
                        yg8Var.a.invoke(wg8Var);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
