package com.google.android.recaptcha.internal;

import android.app.Application;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaException;
import defpackage.g48;
import defpackage.jv1;
import defpackage.l73;
import defpackage.re;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzcq {
    private static zzcv zza;

    public static final zzcv zza(Application application) {
        zzcv zzcvVar = zza;
        if (zzcvVar == null) {
            zzcvVar = new zzcv(application);
        }
        if (zza == null) {
            zza = zzcvVar;
        }
        return zzcvVar;
    }

    public static final Object zzb(Application application, String str, long j, jv1 jv1Var) throws re, RecaptchaException, g48 {
        return zzcv.zzh(zza(application), str, j, null, null, null, jv1Var, 28, null);
    }

    public static final Task zzc(Application application, String str, long j) throws re, RecaptchaException, g48 {
        return zzas.zza(l73.e(zza(application).zzd().zza(), null, new zzco(application, str, j, null), 3));
    }

    public static final Object zzd(Application application, String str, jv1 jv1Var) throws re, RecaptchaException {
        zzcv zzcvVarZza = zza(application);
        return zzcv.zzh(zzcvVarZza, str, 0L, null, zzcvVarZza.zzf, zzch.zzb, jv1Var, 2, null);
    }

    public static final Task zze(Application application, String str) throws re, RecaptchaException {
        return zzas.zza(l73.e(zza(application).zzd().zza(), null, new zzcp(application, str, null), 3));
    }
}
