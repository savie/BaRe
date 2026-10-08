package com.google.android.recaptcha.internal;

import defpackage.an1;
import defpackage.be8;
import defpackage.bn1;
import defpackage.jv1;
import defpackage.lg7;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzdx extends ws7 implements qt3 {
    int zza;
    final /* synthetic */ zzec zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdx(zzec zzecVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzb = zzecVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new zzdx(this.zzb, jv1Var);
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdx) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i = this.zza;
        lg7.H(obj);
        if (i == 0) {
            an1 an1Var = this.zzb.zzc;
            this.zza = 1;
            Object objK = ((bn1) an1Var).k(this);
            yx1 yx1Var = yx1.a;
            if (objK == yx1Var) {
                return yx1Var;
            }
        }
        return be8.a;
    }
}
