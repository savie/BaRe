package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mk0 {
    public final hz a;

    public mk0(hz hzVar) {
        this.a = hzVar;
    }

    public final boolean a(final iu iuVar, final String str, final q63 q63Var, final long j, final long j2, final long j3, final long j4, String str2, String str3) {
        iuVar.getClass();
        if (ji8.s(this.a.d) && (q63Var == null || !q63Var.j())) {
            return true;
        }
        return ((Boolean) new gv7(new bt3() { // from class: kk0
            @Override // defpackage.bt3
            public final Object invoke() {
                boolean zC;
                long j5 = j3;
                if (j5 <= 0) {
                    zC = true;
                } else {
                    zC = eq.c(j2, j5, iuVar.toString());
                }
                return Boolean.valueOf(zC);
            }
        }).getValue()).booleanValue() || ((Boolean) new gv7(new bt3() { // from class: lk0
            @Override // defpackage.bt3
            public final Object invoke() {
                String str4 = str;
                return Boolean.valueOf((str4 == null || str4.length() == 0) ? false : eq.b(j, iuVar, str4));
            }
        }).getValue()).booleanValue() || ((Boolean) new gv7(new mh(2, str2, iuVar, str3)).getValue()).booleanValue() || ((Boolean) new gv7(new bt3() { // from class: jk0
            /* JADX WARN: Code duplicated, block: B:12:0x005d  */
            @Override // defpackage.bt3
            public final Object invoke() {
                boolean z;
                q63 q63Var2 = q63Var;
                if (q63Var2 != null && ji8.s(this.a.d) && q63Var2.j()) {
                    long jA = q63Var2.A();
                    long j5 = j4;
                    if (jA != j5) {
                        Long lValueOf = Long.valueOf(jA);
                        p93 p93Var = p93.a;
                        String strC = p93.c(lValueOf);
                        String strC2 = p93.c(Long.valueOf(j5));
                        String strC3 = p93.c(Long.valueOf(Math.abs(jA - j5)));
                        StringBuilder sbP = u48.p("Backup file size mismatch: Expected: ", strC2, ", Actual: ", strC, ", Diff: ");
                        sbP.append(strC3);
                        vr6.e$default(vr6.INSTANCE, "BackupNeededChecker", sbP.toString(), null, 4, null);
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        }).getValue()).booleanValue();
    }
}
