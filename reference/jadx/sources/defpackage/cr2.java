package defpackage;

import org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cr2 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ DropboxSignInActivity b;
    public final /* synthetic */ g90 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cr2(DropboxSignInActivity dropboxSignInActivity, g90 g90Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = dropboxSignInActivity;
        this.c = g90Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new cr2(this.b, this.c, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((cr2) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b9, code lost:
    
        if (defpackage.zn4.g(r13, r12) == r5) goto L28;
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
            r1 = 0
            r2 = 2
            r3 = 1
            org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity r4 = r12.b
            yx1 r5 = defpackage.yx1.a
            if (r0 == 0) goto L22
            if (r0 == r3) goto L1a
            if (r0 != r2) goto L14
            defpackage.lg7.H(r13)
            goto Lbc
        L14:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r12)
            return r1
        L1a:
            defpackage.lg7.H(r13)     // Catch: java.lang.Exception -> L1f
            goto Lbc
        L1f:
            r0 = move-exception
            r13 = r0
            goto L91
        L22:
            defpackage.lg7.H(r13)
            int r13 = org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity.P     // Catch: java.lang.Exception -> L1f
            gv7 r13 = r4.M     // Catch: java.lang.Exception -> L1f
            java.lang.Object r13 = r13.getValue()     // Catch: java.lang.Exception -> L1f
            uj r13 = (defpackage.uj) r13     // Catch: java.lang.Exception -> L1f
            android.content.Context r0 = r4.getApplicationContext()     // Catch: java.lang.Exception -> L1f
            r0.getClass()     // Catch: java.lang.Exception -> L1f
            g90 r6 = r12.c     // Catch: java.lang.Exception -> L1f
            r13.getClass()     // Catch: java.lang.Exception -> L1f
            l58 r6 = r6.I()     // Catch: java.lang.Exception -> L1f
            vj r13 = r13.d(r0, r6)     // Catch: java.lang.Exception -> L1f
            nq2 r6 = new nq2     // Catch: java.lang.Exception -> L1f
            java.lang.String r7 = r13.a     // Catch: java.lang.Exception -> L1f
            java.lang.Long r8 = r13.b     // Catch: java.lang.Exception -> L1f
            java.lang.String r9 = r13.c     // Catch: java.lang.Exception -> L1f
            java.lang.String r10 = "mzc5bxvbe0960q1"
            r11 = 0
            r6.<init>(r7, r8, r9, r10, r11)     // Catch: java.lang.Exception -> L1f
            java.lang.Object r0 = defpackage.b82.i     // Catch: java.lang.Exception -> L1f
            java.lang.String r0 = "dropbox_credential"
            java.lang.String r7 = r6.toString()     // Catch: java.lang.Exception -> L1f
            android.content.SharedPreferences$Editor r8 = defpackage.cz4.k     // Catch: java.lang.Exception -> L1f
            java.lang.String r9 = "editor"
            if (r8 == 0) goto L8d
            android.content.SharedPreferences$Editor r0 = r8.putString(r0, r7)     // Catch: java.lang.Exception -> L1f
            r0.apply()     // Catch: java.lang.Exception -> L1f
            java.lang.String r13 = org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity.N(r4, r13)     // Catch: java.lang.Exception -> L1f
            java.lang.String r0 = "dropbox_user_id"
            android.content.SharedPreferences$Editor r7 = defpackage.cz4.k     // Catch: java.lang.Exception -> L1f
            if (r7 == 0) goto L89
            android.content.SharedPreferences$Editor r13 = r7.putString(r0, r13)     // Catch: java.lang.Exception -> L1f
            r13.apply()     // Catch: java.lang.Exception -> L1f
            zn4 r13 = defpackage.zn4.a     // Catch: java.lang.Exception -> L1f
            qf r13 = new qf     // Catch: java.lang.Exception -> L1f
            r0 = 11
            r13.<init>(r0, r4, r6)     // Catch: java.lang.Exception -> L1f
            r12.a = r3     // Catch: java.lang.Exception -> L1f
            java.lang.Object r12 = defpackage.zn4.g(r13, r12)     // Catch: java.lang.Exception -> L1f
            if (r12 != r5) goto Lbc
            goto Lbb
        L89:
            defpackage.pe4.F(r9)     // Catch: java.lang.Exception -> L1f
            throw r1     // Catch: java.lang.Exception -> L1f
        L8d:
            defpackage.pe4.F(r9)     // Catch: java.lang.Exception -> L1f
            throw r1     // Catch: java.lang.Exception -> L1f
        L91:
            java.lang.String r0 = r4.r()
            java.lang.String r1 = "Error in exchangeAuthCode"
            android.util.Log.e(r0, r1, r13)
            java.lang.String r8 = defpackage.io4.b(r13)
            vr6 r6 = defpackage.vr6.INSTANCE
            java.lang.String r7 = r4.r()
            r10 = 4
            r11 = 0
            r9 = 0
            defpackage.vr6.e$default(r6, r7, r8, r9, r10, r11)
            zn4 r13 = defpackage.zn4.a
            w01 r13 = new w01
            r0 = 8
            r13.<init>(r0, r4, r8)
            r12.a = r2
            java.lang.Object r12 = defpackage.zn4.g(r13, r12)
            if (r12 != r5) goto Lbc
        Lbb:
            return r5
        Lbc:
            be8 r12 = defpackage.be8.a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cr2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
