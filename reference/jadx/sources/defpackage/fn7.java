package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fn7 extends n50 {
    public static final fn7 e;

    static {
        ln7.a(Double.TYPE);
        e = new fn7();
    }

    public fn7() {
        super(double[].class);
    }

    @Override // defpackage.n50, defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, this.a);
        return (bk4VarK == null || bk4VarK.b != ak4.a) ? super.a(c87Var, kp0Var) : bn7.c;
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return ((double[]) obj).length == 0;
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        double[] dArr = (double[]) obj;
        int i = 0;
        if (dArr.length == 1 && p(c87Var)) {
            int length = dArr.length;
            while (i < length) {
                fk4Var.z(dArr[i]);
                i++;
            }
            return;
        }
        int length2 = dArr.length;
        int length3 = dArr.length;
        fk4Var.getClass();
        fk4.b(length3, length2);
        fk4Var.U(dArr);
        while (i < length2) {
            fk4Var.z(dArr[i]);
            i++;
        }
        fk4Var.n();
    }

    @Override // defpackage.n50
    public final em4 q(kp0 kp0Var, Boolean bool) {
        return new fn7(this, kp0Var, bool);
    }

    @Override // defpackage.n50
    public final void r(Object obj, fk4 fk4Var, c87 c87Var) {
        for (double d : (double[]) obj) {
            fk4Var.z(d);
        }
    }

    @Override // defpackage.fu1
    public final fu1 o(rc8 rc8Var) {
        return this;
    }
}
