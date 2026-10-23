package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gn7 extends kn7 {
    public static final gn7 e;

    static {
        ln7.a(Float.TYPE);
        e = new gn7();
    }

    public gn7() {
        super(float[].class);
    }

    @Override // defpackage.n50, defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, this.a);
        return (bk4VarK == null || bk4VarK.b != ak4.a) ? super.a(c87Var, kp0Var) : cn7.c;
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return ((float[]) obj).length == 0;
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        float[] fArr = (float[]) obj;
        int i = 0;
        if (fArr.length == 1 && p(c87Var)) {
            int length = fArr.length;
            while (i < length) {
                fk4Var.A(fArr[i]);
                i++;
            }
            return;
        }
        fk4Var.U(fArr);
        int length2 = fArr.length;
        while (i < length2) {
            fk4Var.A(fArr[i]);
            i++;
        }
        fk4Var.n();
    }

    @Override // defpackage.n50
    public final em4 q(kp0 kp0Var, Boolean bool) {
        return new gn7(this, kp0Var, bool);
    }

    @Override // defpackage.n50
    public final void r(Object obj, fk4 fk4Var, c87 c87Var) {
        for (float f : (float[]) obj) {
            fk4Var.A(f);
        }
    }
}
