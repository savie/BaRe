package com.google.android.recaptcha.internal;

import android.content.Context;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import com.jcraft.jsch.SftpATTRS;
import defpackage.an1;
import defpackage.be8;
import defpackage.jg2;
import defpackage.jv1;
import defpackage.kj5;
import defpackage.l0;
import defpackage.l73;
import defpackage.lg7;
import defpackage.ly8;
import defpackage.mj5;
import defpackage.pe4;
import defpackage.xx1;
import defpackage.yx1;
import java.util.Timer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzan {
    public an1 zza;
    private final xx1 zzb;
    private final zzek zzc;
    private final StandardIntegrityManager zzd;
    private long zzf;
    private boolean zzh;
    private zzao zze = zzao.zza;
    private final kj5 zzg = new mj5();

    public zzan(Context context, xx1 xx1Var, zzek zzekVar, StandardIntegrityManager standardIntegrityManager, long j) {
        this.zzb = xx1Var;
        this.zzc = zzekVar;
        this.zzd = standardIntegrityManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzi(jv1 jv1Var) throws Exception {
        zzag zzagVar;
        if (jv1Var instanceof zzag) {
            zzagVar = (zzag) jv1Var;
            int i = zzagVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzagVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzagVar = new zzag(this, jv1Var);
            }
        } else {
            zzagVar = new zzag(this, jv1Var);
        }
        Object obj = zzagVar.zza;
        int i2 = zzagVar.zzc;
        if (i2 != 0) {
            if (i2 == 1) {
                lg7.H(obj);
                return obj;
            }
            l0.e("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        lg7.H(obj);
        jg2 jg2VarZza = zzbx.zza(this.zzd.prepareIntegrityToken(StandardIntegrityManager.PrepareIntegrityTokenRequest.builder().setCloudProjectNumber(this.zzf).build()));
        zzagVar.zzc = 1;
        Object objAwait = jg2VarZza.await(zzagVar);
        yx1 yx1Var = yx1.a;
        return objAwait == yx1Var ? yx1Var : objAwait;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0068, code lost:
    
        if (r8 == r5) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzj(java.lang.String r7, defpackage.jv1 r8) throws java.lang.Exception {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.google.android.recaptcha.internal.zzah
            if (r0 == 0) goto L13
            r0 = r8
            com.google.android.recaptcha.internal.zzah r0 = (com.google.android.recaptcha.internal.zzah) r0
            int r1 = r0.zzc
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzc = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzah r0 = new com.google.android.recaptcha.internal.zzah
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.zza
            int r1 = r0.zzc
            r2 = 0
            r3 = 2
            r4 = 1
            yx1 r5 = defpackage.yx1.a
            if (r1 == 0) goto L37
            if (r1 == r4) goto L31
            if (r1 != r3) goto L2b
            defpackage.lg7.H(r8)
            goto L6b
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r6)
            return r2
        L31:
            java.lang.String r7 = r0.zzd
            defpackage.lg7.H(r8)
            goto L4a
        L37:
            defpackage.lg7.H(r8)
            an1 r6 = r6.zzf()
            r0.zzd = r7
            r0.zzc = r4
            bn1 r6 = (defpackage.bn1) r6
            java.lang.Object r8 = r6.k(r0)
            if (r8 == r5) goto L72
        L4a:
            com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityTokenProvider r8 = (com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenProvider) r8
            com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityTokenRequest$Builder r6 = com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest.builder()
            com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityTokenRequest$Builder r6 = r6.setRequestHash(r7)
            com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityTokenRequest r6 = r6.build()
            com.google.android.gms.tasks.Task r6 = r8.request(r6)
            jg2 r6 = com.google.android.recaptcha.internal.zzbx.zza(r6)
            r0.zzd = r2
            r0.zzc = r3
            java.lang.Object r8 = r6.await(r0)
            if (r8 != r5) goto L6b
            goto L72
        L6b:
            com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityToken r8 = (com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityToken) r8
            java.lang.String r6 = r8.token()
            return r6
        L72:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzan.zzj(java.lang.String, jv1):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0071, code lost:
    
        if (r10 != r6) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzc(java.lang.String r9, defpackage.jv1 r10) throws java.lang.Exception {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.google.android.recaptcha.internal.zzaf
            if (r0 == 0) goto L13
            r0 = r10
            com.google.android.recaptcha.internal.zzaf r0 = (com.google.android.recaptcha.internal.zzaf) r0
            int r1 = r0.zzc
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzc = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzaf r0 = new com.google.android.recaptcha.internal.zzaf
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.zza
            int r1 = r0.zzc
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            yx1 r6 = defpackage.yx1.a
            if (r1 == 0) goto L44
            if (r1 == r5) goto L3c
            if (r1 == r4) goto L34
            if (r1 != r3) goto L2e
            defpackage.lg7.H(r10)
            goto L73
        L2e:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r8)
            return r2
        L34:
            java.lang.String r8 = r0.zze
            com.google.android.recaptcha.internal.zzan r9 = r0.zzd
            defpackage.lg7.H(r10)
            goto L67
        L3c:
            java.lang.String r9 = r0.zze
            com.google.android.recaptcha.internal.zzan r8 = r0.zzd
            defpackage.lg7.H(r10)     // Catch: java.lang.Exception -> L57
            goto L54
        L44:
            defpackage.lg7.H(r10)
            r0.zzd = r8     // Catch: java.lang.Exception -> L57
            r0.zze = r9     // Catch: java.lang.Exception -> L57
            r0.zzc = r5     // Catch: java.lang.Exception -> L57
            java.lang.Object r10 = r8.zzj(r9, r0)     // Catch: java.lang.Exception -> L57
            if (r10 != r6) goto L54
            goto L76
        L54:
            java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Exception -> L57
            return r10
        L57:
            r0.zzd = r8
            r0.zze = r9
            r0.zzc = r4
            java.lang.Object r10 = r8.zze(r0)
            if (r10 != r6) goto L64
            goto L76
        L64:
            r7 = r9
            r9 = r8
            r8 = r7
        L67:
            r0.zzd = r2
            r0.zze = r2
            r0.zzc = r3
            java.lang.Object r10 = r9.zzj(r8, r0)
            if (r10 == r6) goto L76
        L73:
            java.lang.String r10 = (java.lang.String) r10
            return r10
        L76:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzan.zzc(java.lang.String, jv1):java.lang.Object");
    }

    public final Object zzd(long j, jv1 jv1Var) {
        this.zzf = j;
        return be8.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zze(jv1 jv1Var) {
        zzak zzakVar;
        kj5 kj5Var;
        if (jv1Var instanceof zzak) {
            zzakVar = (zzak) jv1Var;
            int i = zzakVar.zzd;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzakVar.zzd = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzakVar = new zzak(this, jv1Var);
            }
        } else {
            zzakVar = new zzak(this, jv1Var);
        }
        Object obj = zzakVar.zzb;
        int i2 = zzakVar.zzd;
        be8 be8Var = be8.a;
        yx1 yx1Var = yx1.a;
        try {
            if (i2 == 0) {
                lg7.H(obj);
                kj5Var = this.zzg;
                zzakVar.zze = this;
                zzakVar.zza = kj5Var;
                zzakVar.zzd = 1;
                if (kj5Var.a(zzakVar) != yx1Var) {
                }
            }
            if (i2 != 1) {
                if (i2 == 2) {
                    lg7.H(obj);
                    return be8Var;
                }
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kj5 kj5Var2 = (kj5) zzakVar.zza;
            zzan zzanVar = zzakVar.zze;
            lg7.H(obj);
            kj5Var = kj5Var2;
            this = zzanVar;
            if (!pe4.d(this.zze, zzao.zza)) {
                kj5Var.b(null);
                return be8Var;
            }
            this.zze = zzao.zzb;
            kj5Var.b(null);
            zzek zzekVar = this.zzc;
            zzekVar.zzc(zzekVar.zzd());
            zzekVar.zzb(2);
            zzen zzenVarZzf = zzekVar.zzf(38);
            this.zza = ly8.a();
            l73.v(this.zzb, null, new zzam(this, zzenVarZzf, null), 3);
            zzakVar.zze = null;
            zzakVar.zza = null;
            zzakVar.zzd = 2;
            if (!this.zzh) {
                new Timer().schedule(new zzai(this), 28800000L, 28800000L);
                this.zzh = true;
            }
            return be8Var == yx1Var ? yx1Var : be8Var;
        } catch (Throwable th) {
            kj5Var.b(null);
            throw th;
        }
    }

    public final an1 zzf() {
        an1 an1Var = this.zza;
        if (an1Var != null) {
            return an1Var;
        }
        return null;
    }
}
