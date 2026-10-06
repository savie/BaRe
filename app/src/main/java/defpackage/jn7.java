package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jn7 extends kn7 {
    static {
        ln7.a(Short.TYPE);
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return ((short[]) obj).length == 0;
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        short[] sArr = (short[]) obj;
        int i = 0;
        if (sArr.length == 1 && p(c87Var)) {
            int length = sArr.length;
            while (i < length) {
                fk4Var.D(sArr[i]);
                i++;
            }
            return;
        }
        fk4Var.U(sArr);
        int length2 = sArr.length;
        while (i < length2) {
            fk4Var.D(sArr[i]);
            i++;
        }
        fk4Var.n();
    }

    @Override // defpackage.n50
    public final em4 q(kp0 kp0Var, Boolean bool) {
        return new jn7(this, kp0Var, bool);
    }

    @Override // defpackage.n50
    public final void r(Object obj, fk4 fk4Var, c87 c87Var) {
        for (short s : (short[]) obj) {
            fk4Var.D(s);
        }
    }
}
