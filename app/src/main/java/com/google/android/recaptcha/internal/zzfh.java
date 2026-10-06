package com.google.android.recaptcha.internal;

import defpackage.be8;
import defpackage.jv1;
import defpackage.lg7;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfh extends ws7 implements qt3 {
    final /* synthetic */ zzfj zza;
    final /* synthetic */ zzbr zzb;
    final /* synthetic */ zzsp zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfh(zzfj zzfjVar, zzbr zzbrVar, zzsp zzspVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.zza = zzfjVar;
        this.zzb = zzbrVar;
        this.zzc = zzspVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new zzfh(this.zza, this.zzb, this.zzc, jv1Var);
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfh) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        zzew zzewVarZza = null;
        try {
            try {
                try {
                    zzewVarZza = zzfj.zza(this.zza).zza(this.zzb.zzd());
                    zzewVarZza.zzc();
                    zzewVarZza.zze(this.zzc.zzd());
                    zzsr zzsrVar = (zzsr) zzewVarZza.zza(zzsr.zzi());
                    zzewVarZza.zzd();
                    return zzsrVar;
                } catch (zzbd e) {
                    throw e;
                }
            } catch (Exception e2) {
                throw new zzbd(zzbb.zzc, zzba.zzF, e2.getMessage());
            }
        } catch (Throwable th) {
            if (zzewVarZza != null) {
                zzewVarZza.zzd();
            }
            throw th;
        }
    }
}
