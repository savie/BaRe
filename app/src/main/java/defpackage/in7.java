package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class in7 extends kn7 {
    static {
        ln7.a(Long.TYPE);
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return ((long[]) obj).length == 0;
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        long[] jArr = (long[]) obj;
        int i = 0;
        if (jArr.length == 1 && p(c87Var)) {
            int length = jArr.length;
            while (i < length) {
                fk4Var.G(jArr[i]);
                i++;
            }
            return;
        }
        int length2 = jArr.length;
        int length3 = jArr.length;
        fk4Var.getClass();
        fk4.b(length3, length2);
        fk4Var.U(jArr);
        while (i < length2) {
            fk4Var.G(jArr[i]);
            i++;
        }
        fk4Var.n();
    }

    @Override // defpackage.n50
    public final em4 q(kp0 kp0Var, Boolean bool) {
        return new in7(this, kp0Var, bool);
    }

    @Override // defpackage.n50
    public final void r(Object obj, fk4 fk4Var, c87 c87Var) {
        for (long j : (long[]) obj) {
            fk4Var.G(j);
        }
    }
}
