package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dq5 extends xp5 {
    public static final dq5 d = new dq5(Short.class);

    @Override // defpackage.h58, defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        short sShortValue = ((Short) obj).shortValue();
        pw8 pw8Var = (pw8) fk4Var;
        int i = pw8Var.L;
        pw8Var.l0("write a number");
        if (!pw8Var.d) {
            if (pw8Var.K + 6 >= i) {
                pw8Var.u0();
            }
            pw8Var.K = up5.e(pw8Var.I, sShortValue, pw8Var.K);
            return;
        }
        char c = pw8Var.H;
        if (pw8Var.K + 8 >= i) {
            pw8Var.u0();
        }
        char[] cArr = pw8Var.I;
        int i2 = pw8Var.K;
        int i3 = i2 + 1;
        pw8Var.K = i3;
        cArr[i2] = c;
        int iE = up5.e(cArr, sShortValue, i3);
        char[] cArr2 = pw8Var.I;
        pw8Var.K = iE + 1;
        cArr2[iE] = c;
    }
}
