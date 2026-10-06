package org.swiftapps.swiftbackup.intro;

import defpackage.be8;
import defpackage.jv1;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class e extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ d b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(d dVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = dVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new e(this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((e) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
    
        if (defpackage.zn4.g(r0, r12) == r4) goto L22;
     */
    @Override // defpackage.ml0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            int r0 = r12.a
            r1 = 2
            r2 = 1
            org.swiftapps.swiftbackup.intro.d r3 = r12.b
            yx1 r4 = defpackage.yx1.a
            if (r0 == 0) goto L21
            if (r0 == r2) goto L19
            if (r0 != r1) goto L12
            defpackage.lg7.H(r13)
            goto L52
        L12:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r12)
            r12 = 0
            return r12
        L19:
            defpackage.lg7.H(r13)     // Catch: java.lang.Exception -> L1d
            goto L2d
        L1d:
            r0 = move-exception
            r13 = r0
            r8 = r13
            goto L34
        L21:
            defpackage.lg7.H(r13)
            r12.a = r2     // Catch: java.lang.Exception -> L1d
            java.lang.Object r13 = r3.l(r12)     // Catch: java.lang.Exception -> L1d
            if (r13 != r4) goto L2d
            goto L51
        L2d:
            java.lang.Boolean r13 = (java.lang.Boolean) r13     // Catch: java.lang.Exception -> L1d
            boolean r13 = r13.booleanValue()     // Catch: java.lang.Exception -> L1d
            goto L42
        L34:
            vr6 r5 = defpackage.vr6.INSTANCE
            java.lang.String r6 = r3.b
            r10 = 8
            r11 = 0
            java.lang.String r7 = "Unable to restore first-run cloud settings"
            r9 = 0
            defpackage.vr6.e$default(r5, r6, r7, r8, r9, r10, r11)
            r13 = 0
        L42:
            zn4 r0 = defpackage.zn4.a
            vf4 r0 = new vf4
            r0.<init>()
            r12.a = r1
            java.lang.Object r12 = defpackage.zn4.g(r0, r12)
            if (r12 != r4) goto L52
        L51:
            return r4
        L52:
            be8 r12 = defpackage.be8.a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: org.swiftapps.swiftbackup.intro.e.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
