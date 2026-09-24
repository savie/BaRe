package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p02 extends cu3 implements bt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p02(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    @Override // defpackage.bt3
    public final Object invoke() throws Exception {
        switch (this.a) {
            case 0:
                ((r02) this.receiver).getClass();
                String name = Thread.currentThread().getName();
                name.getClass();
                return Boolean.valueOf(nq7.Z(name, "Firebase Background Thread #", false));
            default:
                eo6 eo6Var = (eo6) this.receiver;
                dv1 dv1Var = eo6Var.a;
                if (dv1Var == null) {
                    pe4.F("coroutineScope");
                    throw null;
                }
                oh4 oh4Var = (oh4) dv1Var.a.get(nh4.b);
                if (oh4Var == null) {
                    l0.k(dv1Var, "Scope cannot be cancelled because it does not have a job: ");
                    return null;
                }
                oh4Var.cancel(null);
                eo6Var.d();
                mi2 mi2Var = eo6Var.d;
                if (mi2Var == null) {
                    pe4.F("connectionManager");
                    throw null;
                }
                ((cs1) mi2Var.f).close();
                ns7 ns7Var = (ns7) mi2Var.g;
                if (ns7Var != null) {
                    ns7Var.close();
                }
                return be8.a;
        }
    }
}
