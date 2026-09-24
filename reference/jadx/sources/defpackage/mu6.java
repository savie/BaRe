package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mu6 extends tt6 {
    public static final l15 k = o15.b(mu6.class);
    public la e;
    public tf7 f;

    @Override // defpackage.tt6
    public final void H(st6 st6Var) {
        j87 j87VarC;
        la laVar = this.e;
        dv6 dv6Var = st6Var.a;
        dv6 dv6Var2 = st6Var.a;
        ut6 ut6Var = (ut6) dv6Var;
        long j = ut6Var.f;
        l15 l15Var = k;
        if (j == -1) {
            l15Var.k("Message ID is 0xFFFFFFFFFFFFFFFF, no verification necessary");
            ((ol1) this.b).t(st6Var);
            return;
        }
        if (st6Var instanceof ts6) {
            l15Var.k("Passthrough Signature Verification as packet is decrypted");
            ((ol1) this.b).t(st6Var);
            return;
        }
        long j2 = ut6Var.k;
        kt6 kt6Var = kt6.SMB2_FLAGS_SIGNED;
        if (!sz8.H(j2, kt6Var)) {
            ut6 ut6Var2 = (ut6) dv6Var;
            if (!sz8.H(ut6Var2.k, kt6Var)) {
                ut6 ut6Var3 = (ut6) dv6Var2;
                if (!sz8.H(ut6Var3.k, kt6.SMB2_FLAGS_ASYNC_COMMAND) || ut6Var3.j != 259) {
                    ut6 ut6Var4 = (ut6) dv6Var2;
                    if ((ut6Var4.f != -1 || ut6Var4.e != it6.SMB2_OPLOCK_BREAK) && (j87VarC = laVar.c(Long.valueOf(ut6Var2.h))) != null && j87VarC.t.a) {
                        l15Var.i(st6Var, "Illegal request, session requires message signing, but packet {} is not signed.");
                        ((ol1) this.b).t(new kd2(dv6Var));
                        return;
                    }
                }
            }
            ((ol1) this.b).t(st6Var);
            return;
        }
        ut6 ut6Var5 = (ut6) dv6Var;
        long j3 = ut6Var5.h;
        if (j3 == 0 || ut6Var5.e == it6.SMB2_SESSION_SETUP) {
            ((ol1) this.b).t(st6Var);
            return;
        }
        j87 j87VarC2 = laVar.c(Long.valueOf(j3));
        if (j87VarC2 == null) {
            l15Var.e(Long.valueOf(j3), st6Var, "Could not find session << {} >> for packet {}.");
            ((ol1) this.b).t(new kd2(dv6Var));
        } else if (this.f.b(st6Var, j87VarC2.j(ut6Var5, false))) {
            l15Var.D(st6Var, "Signature for packet {} verified.");
            ((ol1) this.b).t(st6Var);
        } else {
            l15Var.i(st6Var, "Invalid packet signature for packet {}");
            ((ol1) this.b).t(new kd2(dv6Var));
        }
    }
}
