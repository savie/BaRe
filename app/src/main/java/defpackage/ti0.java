package defpackage;

import android.app.Activity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ti0 extends ws7 implements qt3 {
    public final /* synthetic */ n10 a;
    public final /* synthetic */ xi0 b;
    public final /* synthetic */ Activity c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ ri0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ti0(n10 n10Var, xi0 xi0Var, Activity activity, boolean z, boolean z2, ri0 ri0Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = n10Var;
        this.b = xi0Var;
        this.c = activity;
        this.d = z;
        this.e = z2;
        this.f = ri0Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new ti0(this.a, this.b, this.c, this.d, this.e, this.f, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        ti0 ti0Var = (ti0) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        ti0Var.invokeSuspend(be8Var);
        return be8Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
    
        r1 = defpackage.pe4.d(r3, "Sync backups");
        r2 = new defpackage.mj0(r7.c(r8, true, r1, r26.d, r26.e, !defpackage.pe4.d(r3, "Sync backups"), true, null, true, true, true, null, true, null, true, null, true, null), r1);
     */
    @Override // defpackage.ml0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r27) {
        /*
            r26 = this;
            r0 = r26
            defpackage.lg7.H(r27)
            n10 r1 = r0.a
            java.lang.String r2 = r1.a
            java.lang.String r3 = r1.a
            int r4 = r2.hashCode()
            r5 = -1532794258(0xffffffffa4a36a6e, float:-7.087028E-17)
            r6 = 0
            android.app.Activity r8 = r0.c
            xi0 r7 = r0.b
            r9 = 1
            if (r4 == r5) goto L66
            r5 = 338330252(0x142a828c, float:8.6085525E-27)
            java.lang.String r10 = "Sync backups"
            if (r4 == r5) goto L2f
            r5 = 1982161378(0x762561e2, float:8.385882E32)
            if (r4 != r5) goto L86
            java.lang.String r4 = "Backup"
            boolean r2 = r2.equals(r4)
            if (r2 == 0) goto L86
            goto L35
        L2f:
            boolean r2 = r2.equals(r10)
            if (r2 == 0) goto L86
        L35:
            boolean r1 = defpackage.pe4.d(r3, r10)
            mj0 r2 = new mj0
            boolean r3 = defpackage.pe4.d(r3, r10)
            r13 = r3 ^ 1
            r24 = 1
            r25 = 0
            r3 = r9
            r9 = 1
            boolean r11 = r0.d
            boolean r12 = r0.e
            r14 = 1
            r15 = 0
            r16 = 1
            r17 = 1
            r18 = 1
            r19 = 0
            r20 = 1
            r21 = 0
            r22 = 1
            r23 = 0
            r10 = r1
            java.util.ArrayList r1 = r7.c(r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
            r2.<init>(r1, r10)
            goto L7e
        L66:
            r3 = r9
            java.lang.String r4 = "Restore"
            boolean r2 = r2.equals(r4)
            if (r2 == 0) goto L86
            oj0 r2 = new oj0
            boolean r1 = r1.k
            boolean r4 = r0.d
            boolean r5 = r0.e
            java.util.ArrayList r4 = defpackage.xi0.a(r7, r8, r4, r5)
            r2.<init>(r4, r1)
        L7e:
            ri0 r0 = r0.f
            r7.f(r2, r3, r6, r0)
            be8 r0 = defpackage.be8.a
            return r0
        L86:
            java.lang.String r0 = "expandForBatchAction() for "
            defpackage.g84.i(r1, r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ti0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
