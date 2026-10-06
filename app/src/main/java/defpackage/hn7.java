package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hn7 extends n50 {
    static {
        ln7.a(Integer.TYPE);
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return ((int[]) obj).length == 0;
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        int[] iArr = (int[]) obj;
        int i = 0;
        if (iArr.length == 1 && p(c87Var)) {
            int length = iArr.length;
            while (i < length) {
                fk4Var.D(iArr[i]);
                i++;
            }
            return;
        }
        int length2 = iArr.length;
        int length3 = iArr.length;
        fk4Var.getClass();
        fk4.b(length3, length2);
        fk4Var.U(iArr);
        while (i < length2) {
            fk4Var.D(iArr[i]);
            i++;
        }
        fk4Var.n();
    }

    @Override // defpackage.n50
    public final em4 q(kp0 kp0Var, Boolean bool) {
        return new hn7(this, kp0Var, bool);
    }

    @Override // defpackage.n50
    public final void r(Object obj, fk4 fk4Var, c87 c87Var) {
        for (int i : (int[]) obj) {
            fk4Var.D(i);
        }
    }

    @Override // defpackage.fu1
    public final fu1 o(rc8 rc8Var) {
        return this;
    }
}
