package com.google.android.recaptcha.internal;

import defpackage.be8;
import defpackage.jv1;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzil extends ws7 implements qt3 {
    Object zza;
    int zzb;
    final /* synthetic */ zzja zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzil(zzja zzjaVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzc = zzjaVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new zzil(this.zzc, jv1Var);
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzil) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0055 A[PHI: r7
      0x0055: PHI (r7v14 java.lang.Object) = (r7v11 java.lang.Object), (r7v0 java.lang.Object) binds: [B:16:0x0053, B:7:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0069, code lost:
    
        if (r7 == r5) goto L22;
     */
    @Override // defpackage.ml0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            int r0 = r6.zzb
            java.lang.String r1 = "RN"
            r2 = 3
            r3 = 2
            r4 = 1
            yx1 r5 = defpackage.yx1.a
            if (r0 == 0) goto L21
            if (r0 == r4) goto L1d
            if (r0 == r3) goto L15
            defpackage.lg7.H(r7)
            if (r0 == r2) goto L55
            goto L6c
        L15:
            java.lang.Object r0 = r6.zza
            com.google.android.recaptcha.internal.zzja r0 = (com.google.android.recaptcha.internal.zzja) r0
            defpackage.lg7.H(r7)
            goto L3f
        L1d:
            defpackage.lg7.H(r7)
            goto L2e
        L21:
            defpackage.lg7.H(r7)
            com.google.android.recaptcha.internal.zzja r7 = r6.zzc
            r6.zzb = r4
            java.lang.Object r7 = r7.zzw(r6)
            if (r7 == r5) goto L7b
        L2e:
            android.webkit.WebView r7 = (android.webkit.WebView) r7
            r7.removeJavascriptInterface(r1)
            com.google.android.recaptcha.internal.zzja r7 = r6.zzc
            r6.zza = r7
            r6.zzb = r3
            java.lang.Object r7 = r7.zzw(r6)
            if (r7 == r5) goto L7b
        L3f:
            android.webkit.WebView r7 = (android.webkit.WebView) r7
            android.webkit.WebSettings r7 = r7.getSettings()
            r7.setJavaScriptEnabled(r4)
            com.google.android.recaptcha.internal.zzja r7 = r6.zzc
            r0 = 0
            r6.zza = r0
            r6.zzb = r2
            java.lang.Object r7 = r7.zzw(r6)
            if (r7 == r5) goto L7b
        L55:
            com.google.android.recaptcha.internal.zzja r0 = r6.zzc
            android.webkit.WebView r7 = (android.webkit.WebView) r7
            com.google.android.recaptcha.internal.zzij r0 = r0.zzq()
            r7.addJavascriptInterface(r0, r1)
            com.google.android.recaptcha.internal.zzja r7 = r6.zzc
            r0 = 4
            r6.zzb = r0
            java.lang.Object r7 = r7.zzw(r6)
            if (r7 != r5) goto L6c
            goto L7b
        L6c:
            com.google.android.recaptcha.internal.zzja r6 = r6.zzc
            android.webkit.WebView r7 = (android.webkit.WebView) r7
            com.google.android.recaptcha.internal.zzik r0 = new com.google.android.recaptcha.internal.zzik
            r0.<init>(r6)
            r7.setWebViewClient(r0)
            be8 r6 = defpackage.be8.a
            return r6
        L7b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzil.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
