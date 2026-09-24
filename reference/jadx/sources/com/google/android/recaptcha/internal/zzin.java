package com.google.android.recaptcha.internal;

import defpackage.be8;
import defpackage.jv1;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzin extends ws7 implements qt3 {
    int zza;
    final /* synthetic */ zzja zzb;
    final /* synthetic */ String zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzin(zzja zzjaVar, String str, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzb = zzjaVar;
        this.zzc = str;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new zzin(this.zzb, this.zzc, jv1Var);
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzin) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        if (r4.zzF(r0, r3) == r2) goto L13;
     */
    @Override // defpackage.ml0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r4) {
        /*
            r3 = this;
            int r0 = r3.zza
            r1 = 1
            yx1 r2 = defpackage.yx1.a
            defpackage.lg7.H(r4)
            if (r0 == 0) goto Ld
            if (r0 == r1) goto L17
            goto L2a
        Ld:
            com.google.android.recaptcha.internal.zzja r4 = r3.zzb
            r3.zza = r1
            java.lang.Object r4 = r4.zzw(r3)
            if (r4 == r2) goto L2d
        L17:
            android.webkit.WebView r4 = (android.webkit.WebView) r4
            r4.clearCache(r1)
            com.google.android.recaptcha.internal.zzja r4 = r3.zzb
            java.lang.String r0 = r3.zzc
            r1 = 2
            r3.zza = r1
            java.lang.Object r3 = com.google.android.recaptcha.internal.zzja.zzu(r4, r0, r3)
            if (r3 != r2) goto L2a
            goto L2d
        L2a:
            be8 r3 = defpackage.be8.a
            return r3
        L2d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzin.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
