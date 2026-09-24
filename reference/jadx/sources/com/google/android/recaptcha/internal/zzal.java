package com.google.android.recaptcha.internal;

import defpackage.be8;
import defpackage.jv1;
import defpackage.lh6;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzal extends ws7 implements qt3 {
    long zza;
    boolean zzb;
    int zzc;
    final /* synthetic */ zzan zzd;
    final /* synthetic */ zzen zze;
    final /* synthetic */ lh6 zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzal(zzan zzanVar, zzen zzenVar, lh6 lh6Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzd = zzanVar;
        this.zze = zzenVar;
        this.zzf = lh6Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new zzal(this.zzd, this.zze, this.zzf, jv1Var);
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzal) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        if (r8 != r3) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007c, code lost:
    
        if (defpackage.yc9.j(r4, r7) != r3) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0081, code lost:
    
        return r3;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0049 -> B:13:0x0022). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x007c -> B:6:0x0011). Please report as a decompilation issue!!! */
    @Override // defpackage.ml0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) throws java.lang.Exception {
        /*
            r7 = this;
            int r0 = r7.zzc
            r1 = 0
            r2 = 1
            yx1 r3 = defpackage.yx1.a
            if (r0 == 0) goto L1c
            if (r0 == r2) goto L14
            boolean r0 = r7.zzb
            long r4 = r7.zza
            defpackage.lg7.H(r8)
        L11:
            r8 = r0
            goto L7f
        L14:
            long r4 = r7.zza
            defpackage.lg7.H(r8)     // Catch: java.lang.Exception -> L1a
            goto L30
        L1a:
            r8 = move-exception
            goto L4b
        L1c:
            defpackage.lg7.H(r8)
            r4 = 1000(0x3e8, double:4.94E-321)
            r8 = r2
        L22:
            if (r8 == 0) goto L83
            com.google.android.recaptcha.internal.zzan r8 = r7.zzd     // Catch: java.lang.Exception -> L1a
            r7.zza = r4     // Catch: java.lang.Exception -> L1a
            r7.zzc = r2     // Catch: java.lang.Exception -> L1a
            java.lang.Object r8 = com.google.android.recaptcha.internal.zzan.zza(r8, r7)     // Catch: java.lang.Exception -> L1a
            if (r8 == r3) goto L81
        L30:
            com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityTokenProvider r8 = (com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenProvider) r8     // Catch: java.lang.Exception -> L1a
            com.google.android.recaptcha.internal.zzan r0 = r7.zzd     // Catch: java.lang.Exception -> L1a
            an1 r0 = r0.zzf()     // Catch: java.lang.Exception -> L1a
            bn1 r0 = (defpackage.bn1) r0     // Catch: java.lang.Exception -> L1a
            r0.G(r8)     // Catch: java.lang.Exception -> L1a
            com.google.android.recaptcha.internal.zzan r8 = r7.zzd     // Catch: java.lang.Exception -> L1a
            com.google.android.recaptcha.internal.zzao r0 = com.google.android.recaptcha.internal.zzao.zzc     // Catch: java.lang.Exception -> L1a
            com.google.android.recaptcha.internal.zzan.zzh(r8, r0)     // Catch: java.lang.Exception -> L1a
            com.google.android.recaptcha.internal.zzen r8 = r7.zze     // Catch: java.lang.Exception -> L1a
            r8.zza()     // Catch: java.lang.Exception -> L1a
            r8 = r1
            goto L22
        L4b:
            lh6 r0 = r7.zzf
            r0.a = r8
            boolean r0 = r8 instanceof com.google.android.play.core.integrity.StandardIntegrityException
            if (r0 == 0) goto L6c
            r0 = r8
            com.google.android.play.core.integrity.StandardIntegrityException r0 = (com.google.android.play.core.integrity.StandardIntegrityException) r0
            int r0 = r0.getErrorCode()
            r6 = -100
            if (r0 == r6) goto L6e
            r6 = -18
            if (r0 == r6) goto L6e
            r6 = -12
            if (r0 == r6) goto L6e
            r6 = -8
            if (r0 == r6) goto L6e
            r6 = -3
            if (r0 == r6) goto L6e
        L6c:
            r0 = r1
            goto L6f
        L6e:
            r0 = r2
        L6f:
            if (r0 == 0) goto L82
            r7.zza = r4
            r7.zzb = r2
            r8 = 2
            r7.zzc = r8
            java.lang.Object r8 = defpackage.yc9.j(r4, r7)
            if (r8 == r3) goto L81
            goto L11
        L7f:
            long r4 = r4 + r4
            goto L22
        L81:
            return r3
        L82:
            throw r8
        L83:
            be8 r7 = defpackage.be8.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzal.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
