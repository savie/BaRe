package defpackage;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class eg1 implements es5, zt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ eg1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.zt3
    public final yt3 a() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return new cu3(1, (gg1) obj, gg1.class, "onViewStatusUI", "onViewStatusUI(Lorg/swiftapps/swiftbackup/cloud/clients/CloudClient$ViewStatus;)V", 0);
            case 1:
                return (cz) obj;
            default:
                return (u10) obj;
        }
    }

    @Override // defpackage.es5
    public final void b(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                rb1 rb1Var = (rb1) obj;
                rb1Var.getClass();
                gg1 gg1Var = (gg1) obj2;
                Log.i(gg1Var.a, "onViewStatusUI: " + rb1Var);
                int i2 = ag1.a[rb1Var.ordinal()];
                if (i2 == 1) {
                    gg1Var.k().setVisibility(0);
                    gg1Var.l().setVisibility(8);
                    gg1Var.j().a.setVisibility(8);
                } else if (i2 == 2) {
                    gg1Var.k().setVisibility(8);
                    gg1Var.l().setVisibility(0);
                    gg1Var.j().a.setVisibility(8);
                } else if (i2 == 3) {
                    gg1Var.k().setVisibility(8);
                    gg1Var.l().setVisibility(8);
                    gg1Var.j().a.setVisibility(0);
                    gg1Var.n(rb1.DRIVE_NOT_CONNECTED);
                } else if (i2 == 4) {
                    gg1Var.k().setVisibility(8);
                    gg1Var.l().setVisibility(8);
                    gg1Var.j().a.setVisibility(0);
                    gg1Var.n(rb1.NETWORK_ERROR);
                } else if (i2 != 5) {
                    q.j();
                } else {
                    gg1Var.k().setVisibility(8);
                    gg1Var.l().setVisibility(8);
                    gg1Var.j().a.setVisibility(0);
                    gg1Var.n(rb1.TEMP_CONNECTION_ERROR);
                }
                break;
            case 1:
                ((cz) obj2).invoke(obj);
                break;
            default:
                ((u10) obj2).invoke(obj);
                break;
        }
    }

    public final boolean equals(Object obj) {
        switch (this.a) {
            case 0:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
            case 1:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
            default:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
        }
    }

    public final int hashCode() {
        switch (this.a) {
            case 0:
                break;
            case 1:
                break;
        }
        return a().hashCode();
    }
}
