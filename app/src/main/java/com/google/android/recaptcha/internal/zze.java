package com.google.android.recaptcha.internal;

import com.jcraft.jsch.SftpATTRS;
import defpackage.be8;
import defpackage.en6;
import defpackage.jv1;
import defpackage.l0;
import defpackage.lg7;
import defpackage.tu0;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zze {
    private boolean zza;

    public zzen zza(String str) {
        throw null;
    }

    public zzen zzb() {
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object zzc(String str, long j, jv1 jv1Var) throws zzbd {
        zza zzaVar;
        String str2;
        long j2;
        Exception exc;
        zze zzeVar;
        zzen zzenVar;
        zze zzeVar2;
        zzbd zzbdVarZza;
        zze zzeVar3;
        String str3;
        Object objZzd;
        if (jv1Var instanceof zza) {
            zzaVar = (zza) jv1Var;
            int i = zzaVar.zze;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzaVar.zze = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzaVar = new zza(this, jv1Var);
            }
        } else {
            zzaVar = new zza(this, jv1Var);
        }
        zza zzaVar2 = zzaVar;
        Object obj = zzaVar2.zzc;
        int i2 = zzaVar2.zze;
        yx1 yx1Var = yx1.a;
        if (i2 == 0) {
            lg7.H(obj);
            zzen zzenVarZza = zza(str);
            try {
                zzb zzbVar = new zzb(this, str, null);
                zzaVar2.zza = this;
                zzaVar2.zzf = str;
                zzaVar2.zzg = zzenVarZza;
                zzaVar2.zzb = j;
                zzaVar2.zze = 1;
                Object objD = tu0.D(j, zzbVar, zzaVar2);
                if (objD != yx1Var) {
                    zzeVar2 = this;
                    zzenVar = zzenVarZza;
                    obj = objD;
                }
            } catch (Exception e) {
                str2 = str;
                j2 = j;
                exc = e;
                zzeVar = this;
                zzenVar = zzenVarZza;
                zzbdVarZza = zzf.zza(exc, new zzbd(zzbb.zzb, zzba.zzaa, exc.getMessage()));
                if (zzenVar != null) {
                    zzenVar.zzb(zzbdVarZza);
                }
                zzaVar2.zza = zzeVar;
                zzaVar2.zzf = str2;
                zzaVar2.zzg = null;
                zzaVar2.zze = 2;
                if (zzeVar.zzi(str2, j2, exc, zzaVar2) != yx1Var) {
                    zzeVar3 = zzeVar;
                    str3 = str2;
                    zzaVar2.zza = null;
                    zzaVar2.zzf = null;
                    zzaVar2.zze = 3;
                    objZzd = zzeVar3.zzd(str3, zzaVar2);
                    if (objZzd == yx1Var) {
                        return objZzd;
                    }
                }
            }
            return yx1Var;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    lg7.H(obj);
                    return obj;
                }
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str3 = zzaVar2.zzf;
            zzeVar3 = (zze) zzaVar2.zza;
            lg7.H(obj);
            zzaVar2.zza = null;
            zzaVar2.zzf = null;
            zzaVar2.zze = 3;
            objZzd = zzeVar3.zzd(str3, zzaVar2);
            if (objZzd == yx1Var) {
                return yx1Var;
            }
            return objZzd;
        }
        j = zzaVar2.zzb;
        zzenVar = zzaVar2.zzg;
        str = zzaVar2.zzf;
        zzeVar2 = (zze) zzaVar2.zza;
        try {
            lg7.H(obj);
        } catch (Exception e2) {
            zze zzeVar4 = zzeVar2;
            str2 = str;
            zzeVar = zzeVar4;
            j2 = j;
            exc = e2;
            zzbdVarZza = zzf.zza(exc, new zzbd(zzbb.zzb, zzba.zzaa, exc.getMessage()));
            if (zzenVar != null) {
                zzenVar.zzb(zzbdVarZza);
            }
            zzaVar2.zza = zzeVar;
            zzaVar2.zzf = str2;
            zzaVar2.zzg = null;
            zzaVar2.zze = 2;
            if (zzeVar.zzi(str2, j2, exc, zzaVar2) != yx1Var) {
                zzeVar3 = zzeVar;
                str3 = str2;
                zzaVar2.zza = null;
                zzaVar2.zzf = null;
                zzaVar2.zze = 3;
                objZzd = zzeVar3.zzd(str3, zzaVar2);
                if (objZzd == yx1Var) {
                    return objZzd;
                }
            }
            return yx1Var;
        }
        Object obj2 = ((en6) obj).a;
        lg7.H(obj2);
        zzsi zzsiVar = (zzsi) obj2;
        if (zzenVar != null) {
            zzenVar.zza();
        }
        return zzsiVar;
    }

    public abstract Object zzd(String str, jv1 jv1Var);

    /* JADX WARN: Code duplicated, block: B:37:0x0099  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0075, code lost:
    
        if (r10 != r7) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zze(long r10, com.google.android.recaptcha.internal.zzsc r12, defpackage.jv1 r13) throws com.google.android.recaptcha.internal.zzbd {
        /*
            r9 = this;
            boolean r0 = r13 instanceof com.google.android.recaptcha.internal.zzc
            if (r0 == 0) goto L13
            r0 = r13
            com.google.android.recaptcha.internal.zzc r0 = (com.google.android.recaptcha.internal.zzc) r0
            int r1 = r0.zzd
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzd = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzc r0 = new com.google.android.recaptcha.internal.zzc
            r0.<init>(r9, r13)
        L18:
            java.lang.Object r13 = r0.zzb
            int r1 = r0.zzd
            r2 = 0
            be8 r3 = defpackage.be8.a
            r4 = 3
            r5 = 2
            r6 = 1
            yx1 r7 = defpackage.yx1.a
            if (r1 == 0) goto L57
            if (r1 == r6) goto L45
            if (r1 == r5) goto L3b
            if (r1 != r4) goto L35
            java.lang.Object r9 = r0.zza
            com.google.android.recaptcha.internal.zzbd r9 = (com.google.android.recaptcha.internal.zzbd) r9
            defpackage.lg7.H(r13)
            goto Lb2
        L35:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r9)
            return r2
        L3b:
            com.google.android.recaptcha.internal.zzen r9 = r0.zze
            java.lang.Object r10 = r0.zza
            com.google.android.recaptcha.internal.zze r10 = (com.google.android.recaptcha.internal.zze) r10
            defpackage.lg7.H(r13)
            goto L9d
        L45:
            com.google.android.recaptcha.internal.zzen r9 = r0.zze
            java.lang.Object r10 = r0.zza
            com.google.android.recaptcha.internal.zze r10 = (com.google.android.recaptcha.internal.zze) r10
            defpackage.lg7.H(r13)     // Catch: java.lang.Exception -> L53
            r8 = r13
            r13 = r9
            r9 = r10
            r10 = r8
            goto L77
        L53:
            r11 = move-exception
            r13 = r9
            r9 = r10
            goto L8a
        L57:
            defpackage.lg7.H(r13)
            com.google.android.recaptcha.internal.zzen r13 = r9.zzb()
            boolean r1 = r9.zza
            if (r1 == 0) goto L66
            r13.zza()
            return r3
        L66:
            com.google.android.recaptcha.internal.zzd r1 = new com.google.android.recaptcha.internal.zzd     // Catch: java.lang.Exception -> L86
            r1.<init>(r9, r12, r2)     // Catch: java.lang.Exception -> L86
            r0.zza = r9     // Catch: java.lang.Exception -> L86
            r0.zze = r13     // Catch: java.lang.Exception -> L86
            r0.zzd = r6     // Catch: java.lang.Exception -> L86
            java.lang.Object r10 = defpackage.tu0.D(r10, r1, r0)     // Catch: java.lang.Exception -> L86
            if (r10 == r7) goto Lb7
        L77:
            en6 r10 = (defpackage.en6) r10     // Catch: java.lang.Exception -> L86
            java.lang.Object r10 = r10.a     // Catch: java.lang.Exception -> L86
            defpackage.lg7.H(r10)     // Catch: java.lang.Exception -> L86
            r9.zza = r6     // Catch: java.lang.Exception -> L86
            if (r13 == 0) goto L89
            r13.zza()     // Catch: java.lang.Exception -> L86
            return r3
        L86:
            r10 = move-exception
            r11 = r10
            goto L8a
        L89:
            return r3
        L8a:
            r10 = 0
            r9.zza = r10
            r0.zza = r9
            r0.zze = r13
            r0.zzd = r5
            java.lang.Object r10 = r9.zzj(r11, r0)
            if (r10 == r7) goto Lb7
            r8 = r10
            r10 = r9
            r9 = r13
            r13 = r8
        L9d:
            r11 = r13
            com.google.android.recaptcha.internal.zzbd r11 = (com.google.android.recaptcha.internal.zzbd) r11
            if (r9 == 0) goto La5
            r9.zzb(r11)
        La5:
            r0.zza = r11
            r0.zze = r2
            r0.zzd = r4
            java.lang.Object r9 = r10.zzg(r11, r0)
            if (r9 == r7) goto Lb7
            r9 = r11
        Lb2:
            bn6 r9 = defpackage.lg7.e(r9)
            return r9
        Lb7:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zze.zze(long, com.google.android.recaptcha.internal.zzsc, jv1):java.lang.Object");
    }

    public abstract Object zzf(String str, jv1 jv1Var) throws zzbd;

    public Object zzg(zzbd zzbdVar, jv1 jv1Var) {
        return be8.a;
    }

    public abstract Object zzh(zzsc zzscVar, jv1 jv1Var) throws zzbd;

    public Object zzi(String str, long j, Exception exc, jv1 jv1Var) {
        return be8.a;
    }

    public Object zzj(Exception exc, jv1 jv1Var) {
        return zzf.zza(exc, new zzbd(zzbb.zzb, zzba.zzap, exc.getMessage()));
    }

    public final boolean zzl() {
        return this.zza;
    }

    public void zzk(zzsr zzsrVar) {
    }
}
