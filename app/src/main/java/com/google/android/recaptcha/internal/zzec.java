package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaAction;
import com.jcraft.jsch.SftpATTRS;
import defpackage.an1;
import defpackage.be8;
import defpackage.bn1;
import defpackage.jv1;
import defpackage.l0;
import defpackage.l73;
import defpackage.lg7;
import defpackage.ly8;
import defpackage.mt3;
import defpackage.pe4;
import defpackage.yx1;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzec implements zzcn {
    private final zzdt zza;
    private final zzek zzb;
    private zzbd zzd;
    private zzsc zze;
    private final zzbi zzg;
    private an1 zzc = ly8.a();
    private zzcm zzf = zzcm.zza;

    public zzec(zzdt zzdtVar, zzbi zzbiVar, zzek zzekVar, zzbo zzboVar) {
        this.zza = zzdtVar;
        this.zzg = zzbiVar;
        this.zzb = zzekVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzl(mt3 mt3Var, jv1 jv1Var) {
        zzdv zzdvVar;
        zzbn zzbnVar;
        if (jv1Var instanceof zzdv) {
            zzdvVar = (zzdv) jv1Var;
            int i = zzdvVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzdvVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzdvVar = new zzdv(this, jv1Var);
            }
        } else {
            zzdvVar = new zzdv(this, jv1Var);
        }
        Object obj = zzdvVar.zza;
        int i2 = zzdvVar.zzc;
        if (i2 == 0) {
            lg7.H(obj);
            zzbn zzbnVar2 = new zzbn();
            zzdvVar.zzd = zzbnVar2;
            zzdvVar.zzc = 1;
            Object objInvoke = mt3Var.invoke(zzdvVar);
            Object obj2 = yx1.a;
            if (objInvoke == obj2) {
                return obj2;
            }
            zzbnVar = zzbnVar2;
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            zzbnVar = zzdvVar.zzd;
            lg7.H(obj);
        }
        zzbnVar.zzc();
        return new Long(zzbnVar.zza(TimeUnit.MILLISECONDS));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:28:0x006f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0075 A[Catch: Exception -> 0x002f, TRY_ENTER, TryCatch #1 {Exception -> 0x002f, blocks: (B:13:0x002b, B:25:0x0062, B:30:0x0075, B:31:0x007e), top: B:52:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0087  */
    /* JADX WARN: Code duplicated, block: B:38:0x008c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzm(long j, jv1 jv1Var) throws zzbd {
        zzdw zzdwVar;
        zzec zzecVar;
        Exception e;
        long j2;
        zzbd zzbdVar;
        zzbd zzbdVar2;
        long jLongValue;
        if (jv1Var instanceof zzdw) {
            zzdwVar = (zzdw) jv1Var;
            int i = zzdwVar.zzd;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzdwVar.zzd = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzdwVar = new zzdw(this, jv1Var);
            }
        } else {
            zzdwVar = new zzdw(this, jv1Var);
        }
        Object objZzl = zzdwVar.zzb;
        int i2 = zzdwVar.zzd;
        yx1 yx1Var = yx1.a;
        try {
            if (i2 == 0) {
                lg7.H(objZzl);
                zzdwVar.zze = this;
                zzdwVar.zza = j;
                zzdwVar.zzd = 1;
                if (zzn(j, zzdwVar) != yx1Var) {
                }
                return yx1Var;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                j2 = zzdwVar.zza;
                zzecVar = zzdwVar.zze;
                try {
                    lg7.H(objZzl);
                    jLongValue = j2 - ((Number) objZzl).longValue();
                    if (jLongValue >= 500) {
                        return new Long(jLongValue);
                    }
                    throw new zzbd(zzbb.zzc, zzba.zzar, null);
                } catch (Exception e2) {
                    e = e2;
                    zzbdVar = e instanceof zzbd ? (zzbd) e : null;
                    if (zzbdVar == null) {
                        zzbdVar = new zzbd(zzbb.zzc, zzba.zzar, e.getMessage());
                    }
                    if (pe4.d(zzecVar.zzf, zzcm.zzd)) {
                    }
                    throw zzbdVar2;
                }
            }
            j = zzdwVar.zza;
            this = zzdwVar.zze;
            lg7.H(objZzl);
            zzdy zzdyVar = new zzdy(j, this, null);
            zzdwVar.zze = this;
            zzdwVar.zza = j;
            zzdwVar.zzd = 2;
            objZzl = this.zzl(zzdyVar, zzdwVar);
            if (objZzl != yx1Var) {
                zzecVar = this;
                j2 = j;
                jLongValue = j2 - ((Number) objZzl).longValue();
                if (jLongValue >= 500) {
                    return new Long(jLongValue);
                }
                throw new zzbd(zzbb.zzc, zzba.zzar, null);
            }
            return yx1Var;
        } catch (Exception e3) {
            zzecVar = this;
            e = e3;
            if (e instanceof zzbd) {
            }
            if (zzbdVar == null) {
                zzbdVar = new zzbd(zzbb.zzc, zzba.zzar, e.getMessage());
            }
            if ((!pe4.d(zzecVar.zzf, zzcm.zzd) || pe4.d(zzecVar.zzf, zzcm.zzc)) && (zzbdVar2 = zzecVar.zzd) != null) {
                throw zzbdVar2;
            }
            throw zzbdVar;
        }
    }

    private final Object zzn(long j, jv1 jv1Var) {
        boolean zD = pe4.d(this.zzf, zzcm.zzb);
        be8 be8Var = be8.a;
        if (!zD && !pe4.d(this.zzf, zzcm.zzc) && (!pe4.d(this.zzf, zzcm.zzd) || zzo(this.zzd))) {
            this.zzf = zzcm.zzc;
            bn1 bn1VarA = ly8.a();
            this.zzc = bn1VarA;
            l73.v(this.zzg.zza(), null, new zzeb(this, bn1VarA, j, null), 3);
        }
        return be8Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean zzo(Exception exc) {
        if (!(exc instanceof zzbd)) {
            return true;
        }
        zzbd zzbdVar = (zzbd) exc;
        return (pe4.d(zzbdVar.zzb(), zzbb.zzd) || pe4.d(zzbdVar.zzb(), zzbb.zze) || pe4.d(zzbdVar.zzb(), zzbb.zzf)) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // com.google.android.recaptcha.internal.zzcn
    public final Object zza(String str, RecaptchaAction recaptchaAction, long j, jv1 jv1Var) throws zzbd {
        zzdu zzduVar;
        String str2;
        RecaptchaAction recaptchaAction2;
        Object objZzm;
        zzec zzecVar;
        RecaptchaAction recaptchaAction3;
        String str3;
        double d;
        zzsc zzscVar;
        String str4;
        zzec zzecVar2;
        zzec zzecVar3 = this;
        if (jv1Var instanceof zzdu) {
            zzduVar = (zzdu) jv1Var;
            int i = zzduVar.zzd;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzduVar.zzd = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzduVar = new zzdu(zzecVar3, jv1Var);
            }
        } else {
            zzduVar = new zzdu(zzecVar3, jv1Var);
        }
        Object objZzm2 = zzduVar.zzb;
        int i2 = zzduVar.zzd;
        yx1 yx1Var = yx1.a;
        try {
            if (i2 == 0) {
                lg7.H(objZzm2);
                zzduVar.zze = zzecVar3;
                str2 = str;
                zzduVar.zzf = str2;
                recaptchaAction2 = recaptchaAction;
                zzduVar.zzg = recaptchaAction2;
                zzduVar.zzd = 1;
                objZzm = zzecVar3.zzm(j, zzduVar);
                if (objZzm == yx1Var) {
                }
                return yx1Var;
            }
            if (i2 == 1) {
                RecaptchaAction recaptchaAction4 = zzduVar.zzg;
                String str5 = zzduVar.zzf;
                zzec zzecVar4 = zzduVar.zze;
                lg7.H(objZzm2);
                recaptchaAction2 = recaptchaAction4;
                zzecVar3 = zzecVar4;
                objZzm = objZzm2;
                str2 = str5;
            } else {
                if (i2 == 2) {
                    d = zzduVar.zza;
                    recaptchaAction3 = zzduVar.zzg;
                    str3 = zzduVar.zzf;
                    zzecVar = zzduVar.zze;
                    lg7.H(objZzm2);
                    zzsi zzsiVar = (zzsi) objZzm2;
                    zzdt zzdtVar = zzecVar.zza;
                    zzscVar = zzecVar.zze;
                    if (zzscVar == null) {
                        zzscVar = null;
                    }
                    zzsp zzspVarZzi = zzdtVar.zzi(recaptchaAction3, zzsiVar, zzscVar);
                    zzduVar.zze = zzecVar;
                    zzduVar.zzf = str3;
                    zzduVar.zzg = null;
                    zzduVar.zzd = 3;
                    String str6 = str3;
                    objZzm2 = zzecVar.zza.zzm(zzspVarZzi, str6, (long) d, zzduVar);
                    str4 = str6;
                    if (objZzm2 != yx1Var) {
                        zzecVar2 = zzecVar;
                    }
                    return yx1Var;
                }
                if (i2 != 3) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                str4 = zzduVar.zzf;
                zzecVar2 = zzduVar.zze;
                lg7.H(objZzm2);
            }
            zzsr zzsrVar = (zzsr) objZzm2;
            zzecVar2.zza.zzq(str4, zzsrVar);
            return zzsrVar.zzj();
            double dLongValue = ((Number) objZzm).longValue();
            zzdt zzdtVar2 = zzecVar3.zza;
            double d2 = 0.45d * dLongValue;
            zzduVar.zze = zzecVar3;
            zzduVar.zzf = str2;
            zzduVar.zzg = recaptchaAction2;
            double d3 = dLongValue * 0.55d;
            zzduVar.zza = d3;
            zzduVar.zzd = 2;
            Object objZzl = zzdtVar2.zzl(str2, (long) d2, zzduVar);
            if (objZzl != yx1Var) {
                zzecVar = zzecVar3;
                recaptchaAction3 = recaptchaAction2;
                str3 = str2;
                objZzm2 = objZzl;
                d = d3;
                zzsi zzsiVar2 = (zzsi) objZzm2;
                zzdt zzdtVar3 = zzecVar.zza;
                zzscVar = zzecVar.zze;
                if (zzscVar == null) {
                    zzscVar = null;
                }
                zzsp zzspVarZzi2 = zzdtVar3.zzi(recaptchaAction3, zzsiVar2, zzscVar);
                zzduVar.zze = zzecVar;
                zzduVar.zzf = str3;
                zzduVar.zzg = null;
                zzduVar.zzd = 3;
                String str7 = str3;
                objZzm2 = zzecVar.zza.zzm(zzspVarZzi2, str7, (long) d, zzduVar);
                str4 = str7;
                if (objZzm2 != yx1Var) {
                    zzecVar2 = zzecVar;
                    zzsr zzsrVar2 = (zzsr) objZzm2;
                    zzecVar2.zza.zzq(str4, zzsrVar2);
                    return zzsrVar2.zzj();
                }
            }
            return yx1Var;
        } catch (zzbd e) {
            throw e;
        } catch (Exception e2) {
            throw new zzbd(zzbb.zzb, zzba.zzay, e2.getMessage());
        }
    }

    @Override // com.google.android.recaptcha.internal.zzcn
    public final Object zzb(long j, jv1 jv1Var) {
        Object objZzn = zzn(j, jv1Var);
        return objZzn == yx1.a ? objZzn : be8.a;
    }
}
