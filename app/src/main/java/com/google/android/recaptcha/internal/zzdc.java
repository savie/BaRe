package com.google.android.recaptcha.internal;

import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.android.recaptcha.RecaptchaClient;
import com.google.android.recaptcha.RecaptchaTasksClient;
import com.jcraft.jsch.SftpATTRS;
import defpackage.ai6;
import defpackage.en6;
import defpackage.jv1;
import defpackage.l0;
import defpackage.l73;
import defpackage.lg7;
import defpackage.qt3;
import defpackage.yx1;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdc implements RecaptchaClient, RecaptchaTasksClient {
    private static final ai6 zza = new ai6("^[a-zA-Z0-9/_]{0,100}$");
    private final zzcn zzb;
    private final String zzc;
    private final zzek zzd;
    private final zzbi zze;

    public zzdc(zzcn zzcnVar, String str, zzbi zzbiVar, zzek zzekVar) {
        this.zzb = zzcnVar;
        this.zzc = str;
        this.zze = zzbiVar;
        this.zzd = zzekVar;
    }

    public static final /* synthetic */ void zze(zzdc zzdcVar, long j, RecaptchaAction recaptchaAction) throws zzbd {
        zzbd zzbdVar = !zza.b(recaptchaAction.getAction()) ? new zzbd(zzbb.zzg, zzba.zzh, null) : null;
        if (j < 5000) {
            zzbdVar = new zzbd(zzbb.zzb, zzba.zzI, null);
        }
        if (zzbdVar != null) {
            throw zzbdVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzf(RecaptchaAction recaptchaAction, long j, jv1 jv1Var) {
        zzcy zzcyVar;
        if (jv1Var instanceof zzcy) {
            zzcyVar = (zzcy) jv1Var;
            int i = zzcyVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzcyVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzcyVar = new zzcy(this, jv1Var);
            }
        } else {
            zzcyVar = new zzcy(this, jv1Var);
        }
        Object objZzg = zzcyVar.zza;
        int i2 = zzcyVar.zzc;
        try {
            if (i2 == 0) {
                lg7.H(objZzg);
                String string = UUID.randomUUID().toString();
                qt3 zzczVar = new zzcz(this, j, recaptchaAction, string, null);
                zzcyVar.zzc = 1;
                objZzg = zzg(string, zzczVar, zzcyVar);
                Object obj = yx1.a;
                if (objZzg == obj) {
                    return obj;
                }
            } else {
                if (i2 != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(objZzg);
            }
            return ((en6) objZzg).a;
        } catch (zzbd e) {
            return lg7.e(e.zzc());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zzg(String str, qt3 qt3Var, jv1 jv1Var) throws zzbd {
        zzdb zzdbVar;
        Exception e;
        zzen zzenVar;
        zzbd e2;
        if (jv1Var instanceof zzdb) {
            zzdbVar = (zzdb) jv1Var;
            int i = zzdbVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzdbVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzdbVar = new zzdb(this, jv1Var);
            }
        } else {
            zzdbVar = new zzdb(this, jv1Var);
        }
        Object objInvoke = zzdbVar.zza;
        int i2 = zzdbVar.zzc;
        if (i2 == 0) {
            lg7.H(objInvoke);
            zzek zzekVarZza = this.zzd.zza();
            zzekVarZza.zzc(str);
            zzen zzenVarZzf = zzekVarZza.zzf(9);
            try {
                zzdbVar.zzd = zzenVarZzf;
                zzdbVar.zzc = 1;
                objInvoke = qt3Var.invoke(zzekVarZza, zzdbVar);
                Object obj = yx1.a;
                if (objInvoke == obj) {
                    return obj;
                }
                zzenVar = zzenVarZzf;
            } catch (zzbd e3) {
                e2 = e3;
                zzenVar = zzenVarZzf;
                zzenVar.zzb(e2);
                throw e2;
            } catch (Exception e4) {
                e = e4;
                zzenVar = zzenVarZzf;
                zzbd zzbdVar = new zzbd(zzbb.zzb, zzba.zzX, e.getMessage());
                zzenVar.zzb(zzbdVar);
                throw zzbdVar;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            zzenVar = zzdbVar.zzd;
            try {
                lg7.H(objInvoke);
            } catch (zzbd e5) {
                e2 = e5;
                zzenVar.zzb(e2);
                throw e2;
            } catch (Exception e6) {
                e = e6;
                zzbd zzbdVar2 = new zzbd(zzbb.zzb, zzba.zzX, e.getMessage());
                zzenVar.zzb(zzbdVar2);
                throw zzbdVar2;
            }
        }
        zzenVar.zza();
        return objInvoke;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.RecaptchaClient
    /* JADX INFO: renamed from: execute-0E7RQCE */
    public final Object mo61execute0E7RQCE(RecaptchaAction recaptchaAction, long j, jv1 jv1Var) {
        zzcw zzcwVar;
        if (jv1Var instanceof zzcw) {
            zzcwVar = (zzcw) jv1Var;
            int i = zzcwVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzcwVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzcwVar = new zzcw(this, jv1Var);
            }
        } else {
            zzcwVar = new zzcw(this, jv1Var);
        }
        Object obj = zzcwVar.zza;
        int i2 = zzcwVar.zzc;
        if (i2 != 0) {
            if (i2 == 1) {
                lg7.H(obj);
                return ((en6) obj).a;
            }
            l0.e("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        lg7.H(obj);
        zzcwVar.zzc = 1;
        Object objZzf = zzf(recaptchaAction, j, zzcwVar);
        Object obj2 = yx1.a;
        return objZzf == obj2 ? obj2 : objZzf;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.RecaptchaClient
    /* JADX INFO: renamed from: execute-gIAlu-s */
    public final Object mo62executegIAlus(RecaptchaAction recaptchaAction, jv1 jv1Var) {
        zzcx zzcxVar;
        if (jv1Var instanceof zzcx) {
            zzcxVar = (zzcx) jv1Var;
            int i = zzcxVar.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zzcxVar.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zzcxVar = new zzcx(this, jv1Var);
            }
        } else {
            zzcxVar = new zzcx(this, jv1Var);
        }
        Object obj = zzcxVar.zza;
        int i2 = zzcxVar.zzc;
        if (i2 != 0) {
            if (i2 == 1) {
                lg7.H(obj);
                return ((en6) obj).a;
            }
            l0.e("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        lg7.H(obj);
        zzcxVar.zzc = 1;
        Object objMo61execute0E7RQCE = mo61execute0E7RQCE(recaptchaAction, 10000L, zzcxVar);
        Object obj2 = yx1.a;
        return objMo61execute0E7RQCE == obj2 ? obj2 : objMo61execute0E7RQCE;
    }

    @Override // com.google.android.recaptcha.RecaptchaTasksClient
    public final Task<String> executeTask(RecaptchaAction recaptchaAction) {
        return zzas.zza(l73.e(this.zze.zzb(), null, new zzda(this, recaptchaAction, 10000L, null), 3));
    }

    public final String zzd() {
        return this.zzc;
    }

    @Override // com.google.android.recaptcha.RecaptchaTasksClient
    public final Task<String> executeTask(RecaptchaAction recaptchaAction, long j) {
        return zzas.zza(l73.e(this.zze.zzb(), null, new zzda(this, recaptchaAction, j, null), 3));
    }
}
