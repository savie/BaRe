package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaAction;
import defpackage.be8;
import defpackage.en6;
import defpackage.jv1;
import defpackage.lg7;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzda extends ws7 implements qt3 {
    int zza;
    final /* synthetic */ zzdc zzb;
    final /* synthetic */ RecaptchaAction zzc;
    final /* synthetic */ long zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzda(zzdc zzdcVar, RecaptchaAction recaptchaAction, long j, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzb = zzdcVar;
        this.zzc = recaptchaAction;
        this.zzd = j;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new zzda(this.zzb, this.zzc, this.zzd, jv1Var);
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzda) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        Object objZzf;
        int i = this.zza;
        lg7.H(obj);
        if (i != 0) {
            objZzf = ((en6) obj).a;
        } else {
            zzdc zzdcVar = this.zzb;
            RecaptchaAction recaptchaAction = this.zzc;
            long j = this.zzd;
            this.zza = 1;
            objZzf = zzdcVar.zzf(recaptchaAction, j, this);
            yx1 yx1Var = yx1.a;
            if (objZzf == yx1Var) {
                return yx1Var;
            }
        }
        lg7.H(objZzf);
        return objZzf;
    }
}
