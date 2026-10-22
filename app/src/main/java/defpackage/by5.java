package defpackage;

import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class by5 extends qo0 {
    public final ex6 e = new ex6();
    public final ix6 f = new ix6();

    public by5() {
        k();
    }

    public final void j(ux5 ux5Var) {
        ux5Var.getClass();
        zx5 zx5Var = (zx5) this.e.d();
        int i = ay5.a[ux5Var.ordinal()];
        if (i == 1) {
            V.INSTANCE.getZ().edit().putInt("saved_password_mode", ((kx2) ux5.getEntries()).indexOf(ux5Var)).apply();
            k();
        } else {
            if (i != 2) {
                q.j();
                return;
            }
            String str = zx5Var != null ? zx5Var.b : null;
            if (str == null || str.length() == 0) {
                this.f.k(Boolean.TRUE);
            } else {
                V.INSTANCE.getZ().edit().putInt("saved_password_mode", ((kx2) ux5.getEntries()).indexOf(ux5Var)).apply();
                k();
            }
        }
    }

    public final void k() {
        this.e.k(new zx5());
    }
}
