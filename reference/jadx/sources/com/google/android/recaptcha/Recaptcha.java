package com.google.android.recaptcha;

import android.app.Application;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.internal.zzcq;
import com.google.android.recaptcha.internal.zzdc;
import com.jcraft.jsch.SftpATTRS;
import defpackage.bn6;
import defpackage.jv1;
import defpackage.l0;
import defpackage.lg7;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Recaptcha {
    public static final Recaptcha INSTANCE = new Recaptcha();

    private Recaptcha() {
    }

    public static final Task<RecaptchaTasksClient> fetchTaskClient(Application application, String str) {
        return zzcq.zze(application, str);
    }

    /* JADX INFO: renamed from: getClient-BWLJW6A$default, reason: not valid java name */
    public static /* synthetic */ Object m59getClientBWLJW6A$default(Recaptcha recaptcha, Application application, String str, long j, jv1 jv1Var, int i, Object obj) {
        if ((i & 4) != 0) {
            j = 10000;
        }
        return recaptcha.m60getClientBWLJW6A(application, str, j, jv1Var);
    }

    public static final Task<RecaptchaTasksClient> getTasksClient(Application application, String str) {
        return zzcq.zzc(application, str, 10000L);
    }

    public final Object fetchClient(Application application, String str, jv1 jv1Var) {
        return zzcq.zzd(application, str, jv1Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX INFO: renamed from: getClient-BWLJW6A, reason: not valid java name */
    public final Object m60getClientBWLJW6A(Application application, String str, long j, jv1 jv1Var) {
        Recaptcha$getClient$1 recaptcha$getClient$1;
        if (jv1Var instanceof Recaptcha$getClient$1) {
            recaptcha$getClient$1 = (Recaptcha$getClient$1) jv1Var;
            int i = recaptcha$getClient$1.zzc;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                recaptcha$getClient$1.zzc = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                recaptcha$getClient$1 = new Recaptcha$getClient$1(this, jv1Var);
            }
        } else {
            recaptcha$getClient$1 = new Recaptcha$getClient$1(this, jv1Var);
        }
        Object objZzb = recaptcha$getClient$1.zza;
        int i2 = recaptcha$getClient$1.zzc;
        try {
            if (i2 == 0) {
                lg7.H(objZzb);
                recaptcha$getClient$1.zzc = 1;
                objZzb = zzcq.zzb(application, str, j, recaptcha$getClient$1);
                yx1 yx1Var = yx1.a;
                if (objZzb == yx1Var) {
                    return yx1Var;
                }
            } else {
                if (i2 != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(objZzb);
            }
            return (zzdc) objZzb;
        } catch (Throwable th) {
            return new bn6(th);
        }
    }

    public static final Task<RecaptchaTasksClient> getTasksClient(Application application, String str, long j) {
        return zzcq.zzc(application, str, j);
    }
}
