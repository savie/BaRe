package com.google.android.recaptcha.internal;

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
final class zzg extends ws7 implements qt3 {
    int zza;
    final /* synthetic */ zze zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ long zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzg(zze zzeVar, String str, long j, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzb = zzeVar;
        this.zzc = str;
        this.zzd = j;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new zzg(this.zzb, this.zzc, this.zzd, jv1Var);
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzg) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws zzbd {
        Object objZzc;
        int i = this.zza;
        lg7.H(obj);
        if (i != 0) {
            objZzc = ((en6) obj).a;
        } else {
            zze zzeVar = this.zzb;
            String str = this.zzc;
            long j = this.zzd;
            this.zza = 1;
            objZzc = zzeVar.zzc(str, j, this);
            yx1 yx1Var = yx1.a;
            if (objZzc == yx1Var) {
                return yx1Var;
            }
        }
        return new en6(objZzc);
    }
}
