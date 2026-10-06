package com.google.android.recaptcha.internal;

import defpackage.be8;
import defpackage.jv1;
import defpackage.lg7;
import defpackage.mt3;
import defpackage.tu0;
import defpackage.ws7;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzdy extends ws7 implements mt3 {
    int zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zzec zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdy(long j, zzec zzecVar, jv1 jv1Var) {
        super(1, jv1Var);
        this.zzb = j;
        this.zzc = zzecVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(jv1 jv1Var) {
        return new zzdy(this.zzb, this.zzc, jv1Var);
    }

    @Override // defpackage.mt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return ((zzdy) create((jv1) obj)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.zza;
        lg7.H(obj);
        if (i == 0) {
            long j = this.zzb;
            zzdx zzdxVar = new zzdx(this.zzc, null);
            this.zza = 1;
            Object objD = tu0.D(j, zzdxVar, this);
            yx1 yx1Var = yx1.a;
            if (objD == yx1Var) {
                return yx1Var;
            }
        }
        return be8.a;
    }
}
