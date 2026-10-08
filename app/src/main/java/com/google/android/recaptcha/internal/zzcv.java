package com.google.android.recaptcha.internal;

import android.app.Application;
import com.google.android.recaptcha.RecaptchaException;
import com.jcraft.jsch.SftpATTRS;
import defpackage.g48;
import defpackage.jd4;
import defpackage.jv1;
import defpackage.kj5;
import defpackage.l0;
import defpackage.lg7;
import defpackage.mj5;
import defpackage.pe4;
import defpackage.qt3;
import defpackage.re;
import defpackage.yx1;
import defpackage.zh8;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzcv {
    private final Application zza;
    private zzdc zzc;
    private final zzl zze;
    private final kj5 zzb = new mj5();
    private final String zzd = UUID.randomUUID().toString();
    private zzbi zzf = new zzbi();

    /* JADX WARN: Multi-variable type inference failed */
    public zzcv(Application application) {
        this.zza = application;
        int i = 1;
        this.zze = new zzl(null, i, 0 == true ? 1 : 0);
        int i2 = zzav.zza;
        zzaw[] zzawVarArr = {new zzaw(915034652, new zzaz(null, 1, null)), new zzaw(915034802, new zzfu()), new zzaw(915034662, new zzbe()), new zzaw(915034909, new zzjd()), new zzaw(915034675, new zzbr("https://www.recaptcha.net/recaptcha/api3")), new zzaw(915034774, new zzex(0 == true ? 1 : 0, i, 0 == true ? 1 : 0)), new zzaw(915034792, new zzfk(true)), new zzaw(735120228, application), new zzaw(915034663, new zzbf(application)), new zzaw(915034791, new zzfj()), new zzaw(915034643, new zzbm(application)), new zzaw(915034775, new zzfa()), new zzaw(915034787, new zzff())};
        for (int i3 = 0; i3 < 13; i3++) {
            zzaw zzawVar = zzawVarArr[i3];
            if (!zzav.zzc.containsKey(Integer.valueOf(zzawVar.zza()))) {
                zzav.zzc.put(Integer.valueOf(zzawVar.zza()), zzawVar);
            }
        }
    }

    public static final /* synthetic */ zzdc zza(zzcv zzcvVar, String str) throws zzbd {
        zzdc zzdcVar = zzcvVar.zzc;
        if (zzdcVar == null) {
            return null;
        }
        if (pe4.d(zzdcVar.zzd(), str)) {
            return zzdcVar;
        }
        throw new zzbd(zzbb.zzd, zzba.zzam, null);
    }

    public static final /* synthetic */ void zzc(zzcv zzcvVar, long j) throws zzbd {
        if (j < 5000) {
            throw new zzbd(zzbb.zzj, zzba.zzI, null);
        }
        if (zh8.e(zzcvVar.zza, "android.permission.INTERNET") != 0) {
            throw new zzbd(zzbb.zzc, zzba.zzao, null);
        }
    }

    public static final /* synthetic */ zzcn zze(zzcv zzcvVar, String str, zzbi zzbiVar, zzch zzchVar, zzek zzekVar) {
        zzdt zzdtVar = new zzdt(str, zzbiVar, zzekVar, zzcvVar.zze);
        return pe4.d(zzchVar, zzch.zza) ? new zzef(zzdtVar) : new zzec(zzdtVar, zzbiVar, zzekVar, new zzbo());
    }

    public static /* synthetic */ Object zzh(zzcv zzcvVar, String str, long j, zzcn zzcnVar, zzbi zzbiVar, zzch zzchVar, jv1 jv1Var, int i, Object obj) throws re, RecaptchaException, g48 {
        if ((i & 8) != 0) {
            zzbiVar = zzcvVar.zzf;
        }
        zzbi zzbiVar2 = zzbiVar;
        if ((i & 16) != 0) {
            zzchVar = zzch.zza;
        }
        zzch zzchVar2 = zzchVar;
        if ((i & 2) != 0) {
            j = 10000;
        }
        return zzcvVar.zzg(str, j, null, zzbiVar2, zzchVar2, jv1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzj(String str, int i, qt3 qt3Var, jv1 jv1Var) throws RecaptchaException {
        zzcu zzcuVar;
        Exception e;
        zzen zzenVar;
        zzbd e2;
        if (jv1Var instanceof zzcu) {
            zzcuVar = (zzcu) jv1Var;
            int i2 = zzcuVar.zzc;
            if ((i2 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzcuVar.zzc = i2 - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzcuVar = new zzcu(this, jv1Var);
            }
        } else {
            zzcuVar = new zzcu(this, jv1Var);
        }
        Object objInvoke = zzcuVar.zza;
        int i3 = zzcuVar.zzc;
        if (i3 == 0) {
            lg7.H(objInvoke);
            zzek zzekVarZzk = zzk(str, this.zzf, i);
            zzen zzenVarZzf = zzekVarZzk.zzf(6);
            try {
                zzcuVar.zzd = zzenVarZzf;
                zzcuVar.zzc = 1;
                objInvoke = qt3Var.invoke(zzekVarZzk, zzcuVar);
                Object obj = yx1.a;
                if (objInvoke == obj) {
                    return obj;
                }
                zzenVar = zzenVarZzf;
            } catch (zzbd e3) {
                e2 = e3;
                zzenVar = zzenVarZzf;
                zzenVar.zzb(e2);
                throw e2.zzc();
            } catch (Exception e4) {
                e = e4;
                zzenVar = zzenVarZzf;
                zzbd zzbdVar = new zzbd(zzbb.zzb, zzba.zza, e.getMessage());
                zzenVar.zzb(zzbdVar);
                throw zzbdVar.zzc();
            }
        } else {
            if (i3 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            zzenVar = zzcuVar.zzd;
            try {
                lg7.H(objInvoke);
            } catch (zzbd e5) {
                e2 = e5;
                zzenVar.zzb(e2);
                throw e2.zzc();
            } catch (Exception e6) {
                e = e6;
                zzbd zzbdVar2 = new zzbd(zzbb.zzb, zzba.zza, e.getMessage());
                zzenVar.zzb(zzbdVar2);
                throw zzbdVar2.zzc();
            }
        }
        zzenVar.zza();
        return objInvoke;
    }

    private final zzek zzk(String str, zzbi zzbiVar, int i) {
        String string = UUID.randomUUID().toString();
        int i2 = zzav.zza;
        zzes zzesVar = new zzes(this.zza, new zzeu(((zzbr) jd4.y(zzcr.zza).getValue()).zzc()), zzbiVar.zza());
        zzek zzekVar = new zzek(str, this.zzd, string, i, this.zza, zzesVar, null);
        zzekVar.zzc(string);
        return zzekVar;
    }

    public final zzbi zzd() {
        return this.zzf;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object zzg(String str, long j, zzcn zzcnVar, zzbi zzbiVar, zzch zzchVar, jv1 jv1Var) throws Throwable {
        zzcs zzcsVar;
        kj5 kj5Var;
        zzbi zzbiVar2;
        zzch zzchVar2;
        long j2;
        zzcv zzcvVar;
        String str2;
        kj5 kj5Var2;
        int i;
        if (jv1Var instanceof zzcs) {
            zzcsVar = (zzcs) jv1Var;
            int i2 = zzcsVar.zzg;
            if ((i2 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzcsVar.zzg = i2 - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzcsVar = new zzcs(this, jv1Var);
            }
        } else {
            zzcsVar = new zzcs(this, jv1Var);
        }
        Object obj = zzcsVar.zze;
        int i3 = zzcsVar.zzg;
        yx1 yx1Var = yx1.a;
        try {
            if (i3 == 0) {
                lg7.H(obj);
                kj5Var = this.zzb;
                zzcsVar.zza = this;
                zzcsVar.zzh = str;
                zzcsVar.zzb = null;
                zzcsVar.zzj = zzbiVar;
                zzcsVar.zzi = zzchVar;
                zzcsVar.zzc = kj5Var;
                zzcsVar.zzd = j;
                zzcsVar.zzg = 1;
                if (kj5Var.a(zzcsVar) != yx1Var) {
                    zzbiVar2 = zzbiVar;
                    zzchVar2 = zzchVar;
                    j2 = j;
                    zzcvVar = this;
                    str2 = str;
                }
                return yx1Var;
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                kj5Var2 = (kj5) zzcsVar.zza;
                try {
                    lg7.H(obj);
                    zzdc zzdcVar = (zzdc) obj;
                    kj5Var2.b(null);
                    return zzdcVar;
                } catch (Throwable th) {
                    th = th;
                    kj5Var2.b(null);
                    throw th;
                }
            }
            long j3 = zzcsVar.zzd;
            kj5 kj5Var3 = (kj5) zzcsVar.zzc;
            zzch zzchVar3 = zzcsVar.zzi;
            zzbi zzbiVar3 = zzcsVar.zzj;
            str2 = zzcsVar.zzh;
            zzcv zzcvVar2 = (zzcv) zzcsVar.zza;
            lg7.H(obj);
            kj5Var = kj5Var3;
            zzchVar2 = zzchVar3;
            zzbiVar2 = zzbiVar3;
            zzcvVar = zzcvVar2;
            j2 = j3;
            if (pe4.d(zzchVar2, zzch.zza)) {
                i = 3;
            } else {
                i = pe4.d(zzchVar2, zzch.zzb) ? 4 : 2;
            }
            zzct zzctVar = new zzct(zzcvVar, str2, j2, null, zzbiVar2, zzchVar2, null);
            zzcsVar.zza = kj5Var;
            zzcsVar.zzh = null;
            zzcsVar.zzb = null;
            zzcsVar.zzj = null;
            zzcsVar.zzi = null;
            zzcsVar.zzc = null;
            zzcsVar.zzg = 2;
            Object objZzj = zzcvVar.zzj(str2, i, zzctVar, zzcsVar);
            if (objZzj != yx1Var) {
                kj5Var2 = kj5Var;
                obj = objZzj;
                zzdc zzdcVar2 = (zzdc) obj;
                kj5Var2.b(null);
                return zzdcVar2;
            }
            return yx1Var;
        } catch (Throwable th2) {
            th = th2;
            kj5Var2 = kj5Var;
            kj5Var2.b(null);
            throw th;
        }
    }
}
