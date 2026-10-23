package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dn7 extends n50 {
    static {
        ln7.a(Boolean.TYPE);
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return ((boolean[]) obj).length == 0;
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        boolean[] zArr = (boolean[]) obj;
        int i = 0;
        if (zArr.length == 1 && p(c87Var)) {
            int length = zArr.length;
            while (i < length) {
                fk4Var.m(zArr[i]);
                i++;
            }
            return;
        }
        fk4Var.U(zArr);
        int length2 = zArr.length;
        while (i < length2) {
            fk4Var.m(zArr[i]);
            i++;
        }
        fk4Var.n();
    }

    @Override // defpackage.n50
    public final em4 q(kp0 kp0Var, Boolean bool) {
        return new dn7(this, kp0Var, bool);
    }

    @Override // defpackage.n50
    public final void r(Object obj, fk4 fk4Var, c87 c87Var) {
        for (boolean z : (boolean[]) obj) {
            fk4Var.m(z);
        }
    }

    @Override // defpackage.fu1
    public final fu1 o(rc8 rc8Var) {
        return this;
    }
}
