package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaAction;
import com.jcraft.jsch.SftpATTRS;
import defpackage.jv1;
import defpackage.l0;
import defpackage.lg7;
import defpackage.pe4;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzef implements zzcn {
    private final zzdt zza;
    private zzcm zzb = zzcm.zza;
    private zzsc zzc;

    public zzef(zzdt zzdtVar) {
        this.zza = zzdtVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    @Override // com.google.android.recaptcha.internal.zzcn
    public final Object zza(String str, RecaptchaAction recaptchaAction, long j, jv1 jv1Var) throws zzbd {
        zzed zzedVar;
        RecaptchaAction recaptchaAction2;
        double d;
        zzef zzefVar;
        String str2;
        zzef zzefVar2 = this;
        String str3 = str;
        if (jv1Var instanceof zzed) {
            zzedVar = (zzed) jv1Var;
            int i = zzedVar.zzd;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzedVar.zzd = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzedVar = new zzed(zzefVar2, jv1Var);
            }
        } else {
            zzedVar = new zzed(zzefVar2, jv1Var);
        }
        Object objZzl = zzedVar.zzb;
        int i2 = zzedVar.zzd;
        yx1 yx1Var = yx1.a;
        try {
            if (i2 == 0) {
                lg7.H(objZzl);
                if (!pe4.d(zzefVar2.zzb, zzcm.zzb)) {
                    throw new zzbd(zzbb.zzb, zzba.zzar, null);
                }
                double d2 = j;
                zzdt zzdtVar = zzefVar2.zza;
                double d3 = 0.45d * d2;
                zzedVar.zze = zzefVar2;
                zzedVar.zzf = str3;
                recaptchaAction2 = recaptchaAction;
                zzedVar.zzg = recaptchaAction2;
                d = d2 * 0.55d;
                zzedVar.zza = d;
                zzedVar.zzd = 1;
                objZzl = zzdtVar.zzl(str3, (long) d3, zzedVar);
                if (objZzl != yx1Var) {
                }
                return yx1Var;
            }
            if (i2 == 1) {
                double d4 = zzedVar.zza;
                recaptchaAction2 = zzedVar.zzg;
                String str4 = zzedVar.zzf;
                zzef zzefVar3 = zzedVar.zze;
                lg7.H(objZzl);
                zzefVar2 = zzefVar3;
                d = d4;
                str3 = str4;
            } else {
                if (i2 != 2) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                str2 = zzedVar.zzf;
                zzefVar = zzedVar.zze;
                lg7.H(objZzl);
            }
            zzsr zzsrVar = (zzsr) objZzl;
            zzefVar.zza.zzq(str2, zzsrVar);
            return zzsrVar.zzj();
            zzsi zzsiVar = (zzsi) objZzl;
            zzdt zzdtVar2 = zzefVar2.zza;
            zzsc zzscVar = zzefVar2.zzc;
            if (zzscVar == null) {
                zzscVar = null;
            }
            zzsp zzspVarZzi = zzdtVar2.zzi(recaptchaAction2, zzsiVar, zzscVar);
            zzedVar.zze = zzefVar2;
            zzedVar.zzf = str3;
            zzedVar.zzg = null;
            zzedVar.zzd = 2;
            String str5 = str3;
            objZzl = zzefVar2.zza.zzm(zzspVarZzi, str5, (long) d, zzedVar);
            if (objZzl != yx1Var) {
                zzefVar = zzefVar2;
                str2 = str5;
                zzsr zzsrVar2 = (zzsr) objZzl;
                zzefVar.zza.zzq(str2, zzsrVar2);
                return zzsrVar2.zzj();
            }
            return yx1Var;
        } catch (zzbd e) {
            throw e;
        } catch (Exception e2) {
            throw new zzbd(zzbb.zzb, zzba.zzaz, e2.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0093, code lost:
    
        if (r12.zza.zzn(r15, (long) r13, r0) != r5) goto L34;
     */
    @Override // com.google.android.recaptcha.internal.zzcn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzb(long r13, defpackage.jv1 r15) throws com.google.android.recaptcha.internal.zzbd {
        /*
            r12 = this;
            boolean r0 = r15 instanceof com.google.android.recaptcha.internal.zzee
            if (r0 == 0) goto L13
            r0 = r15
            com.google.android.recaptcha.internal.zzee r0 = (com.google.android.recaptcha.internal.zzee) r0
            int r1 = r0.zzd
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzd = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzee r0 = new com.google.android.recaptcha.internal.zzee
            r0.<init>(r12, r15)
        L18:
            java.lang.Object r15 = r0.zzb
            int r1 = r0.zzd
            be8 r2 = defpackage.be8.a
            r3 = 2
            r4 = 1
            yx1 r5 = defpackage.yx1.a
            if (r1 == 0) goto L46
            if (r1 == r4) goto L38
            if (r1 != r3) goto L31
            com.google.android.recaptcha.internal.zzef r12 = r0.zze
            defpackage.lg7.H(r15)     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            goto L95
        L2e:
            r13 = move-exception
            goto L9d
        L31:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r12)
            r12 = 0
            return r12
        L38:
            double r12 = r0.zza
            com.google.android.recaptcha.internal.zzef r14 = r0.zze
            defpackage.lg7.H(r15)     // Catch: com.google.android.recaptcha.internal.zzbd -> L43
            r10 = r12
            r12 = r14
            r13 = r10
            goto L84
        L43:
            r13 = move-exception
            r12 = r14
            goto L9d
        L46:
            defpackage.lg7.H(r15)
            com.google.android.recaptcha.internal.zzcm r15 = r12.zzb
            com.google.android.recaptcha.internal.zzcj r1 = com.google.android.recaptcha.internal.zzcm.zzb()
            boolean r15 = defpackage.pe4.d(r15, r1)
            if (r15 != 0) goto La4
            com.google.android.recaptcha.internal.zzcm r15 = r12.zzb
            com.google.android.recaptcha.internal.zzci r1 = com.google.android.recaptcha.internal.zzcm.zza()
            boolean r15 = defpackage.pe4.d(r15, r1)
            if (r15 == 0) goto L62
            goto La4
        L62:
            com.google.android.recaptcha.internal.zzck r15 = com.google.android.recaptcha.internal.zzcm.zzc()
            r12.zzb = r15
            double r13 = (double) r13
            com.google.android.recaptcha.internal.zzdt r15 = r12.zza     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            r6 = 4603579539098121011(0x3fe3333333333333, double:0.6)
            double r6 = r6 * r13
            r0.zze = r12     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            r8 = 4600877379321698714(0x3fd999999999999a, double:0.4)
            double r13 = r13 * r8
            r0.zza = r13     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            r0.zzd = r4     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            long r6 = (long) r6     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            java.lang.Object r15 = r15.zzo(r6, r0)     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            if (r15 == r5) goto L9c
        L84:
            com.google.android.recaptcha.internal.zzsc r15 = (com.google.android.recaptcha.internal.zzsc) r15     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            r12.zzc = r15     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            com.google.android.recaptcha.internal.zzdt r1 = r12.zza     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            long r13 = (long) r13     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            r0.zze = r12     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            r0.zzd = r3     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            java.lang.Object r13 = r1.zzn(r15, r13, r0)     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            if (r13 == r5) goto L9c
        L95:
            com.google.android.recaptcha.internal.zzcj r13 = com.google.android.recaptcha.internal.zzcm.zzb()     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            r12.zzb = r13     // Catch: com.google.android.recaptcha.internal.zzbd -> L2e
            return r2
        L9c:
            return r5
        L9d:
            com.google.android.recaptcha.internal.zzci r14 = com.google.android.recaptcha.internal.zzcm.zza()
            r12.zzb = r14
            throw r13
        La4:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzef.zzb(long, jv1):java.lang.Object");
    }
}
