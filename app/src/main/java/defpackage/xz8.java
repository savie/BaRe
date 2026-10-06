package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xz8 extends s09 {
    public final /* synthetic */ int k;
    public final /* synthetic */ Object n;

    public /* synthetic */ xz8(Object obj, int i) {
        this.k = i;
        this.n = obj;
    }

    @Override // defpackage.s09
    public final void b() {
        switch (this.k) {
            case 0:
                zz8 zz8Var = ((yz8) this.n).a;
                zz8Var.b.b("unlinkToDeath", new Object[0]);
                zz8Var.n.asBinder().unlinkToDeath(zz8Var.k, 0);
                zz8Var.n = null;
                zz8Var.g = false;
                return;
            default:
                synchronized (((zz8) this.n).f) {
                    try {
                        if (((zz8) this.n).l.get() > 0 && ((zz8) this.n).l.decrementAndGet() > 0) {
                            ((zz8) this.n).b.b("Leaving the connection open for other ongoing calls.", new Object[0]);
                            return;
                        }
                        zz8 zz8Var2 = (zz8) this.n;
                        if (zz8Var2.n != null) {
                            zz8Var2.b.b("Unbind from service.", new Object[0]);
                            zz8 zz8Var3 = (zz8) this.n;
                            zz8Var3.a.unbindService(zz8Var3.m);
                            zz8 zz8Var4 = (zz8) this.n;
                            zz8Var4.g = false;
                            zz8Var4.n = null;
                            zz8Var4.m = null;
                        }
                        ((zz8) this.n).e();
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
        }
    }
}
