package defpackage;

import org.swiftapps.swiftbackup.settings.LicensesActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w60 extends jm1 {
    public final /* synthetic */ x60 g;

    public w60(x60 x60Var) {
        this.g = x60Var;
    }

    @Override // defpackage.jm1
    public final boolean b(int i, int i2) {
        x60 x60Var = this.g;
        Object obj = x60Var.a.get(i);
        Object obj2 = x60Var.b.get(i2);
        if (obj != null && obj2 != null) {
            x60Var.d.b.getClass();
            int i3 = LicensesActivity.L;
            return ((nt4) obj).equals((nt4) obj2);
        }
        if (obj == null && obj2 == null) {
            return true;
        }
        d6.n();
        return false;
    }

    @Override // defpackage.jm1
    public final boolean c(int i, int i2) {
        x60 x60Var = this.g;
        Object obj = x60Var.a.get(i);
        Object obj2 = x60Var.b.get(i2);
        if (obj == null || obj2 == null) {
            return obj == null && obj2 == null;
        }
        x60Var.d.b.getClass();
        int i3 = LicensesActivity.L;
        return ((nt4) obj).a.equalsIgnoreCase(((nt4) obj2).a);
    }

    @Override // defpackage.jm1
    public final void n(int i, int i2) {
        x60 x60Var = this.g;
        Object obj = x60Var.a.get(i);
        Object obj2 = x60Var.b.get(i2);
        if (obj == null || obj2 == null) {
            d6.n();
        } else {
            x60Var.d.b.getClass();
            int i3 = LicensesActivity.L;
        }
    }

    @Override // defpackage.jm1
    public final int q() {
        return this.g.b.size();
    }

    @Override // defpackage.jm1
    public final int r() {
        return this.g.a.size();
    }
}
