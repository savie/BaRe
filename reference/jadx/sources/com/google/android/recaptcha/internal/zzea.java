package com.google.android.recaptcha.internal;

import defpackage.an1;
import defpackage.be8;
import defpackage.bn1;
import defpackage.jv1;
import defpackage.lg7;
import defpackage.mt3;
import defpackage.ws7;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzea extends ws7 implements mt3 {
    Object zza;
    int zzb;
    final /* synthetic */ zzec zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ an1 zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzea(zzec zzecVar, long j, an1 an1Var, jv1 jv1Var) {
        super(1, jv1Var);
        this.zzc = zzecVar;
        this.zzd = j;
        this.zze = an1Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(jv1 jv1Var) {
        return new zzea(this.zzc, this.zzd, this.zze, jv1Var);
    }

    @Override // defpackage.mt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return ((zzea) create((jv1) obj)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws zzbd {
        zzen zzenVarZzf;
        int i = this.zzb;
        yx1 yx1Var = yx1.a;
        try {
            if (i == 0) {
                lg7.H(obj);
                zzenVarZzf = this.zzc.zzb.zzf(41);
                zzdt zzdtVar = this.zzc.zza;
                long j = this.zzd;
                this.zza = zzenVarZzf;
                this.zzb = 1;
                obj = zzdtVar.zzo(j, this);
                if (obj != yx1Var) {
                }
                return yx1Var;
            }
            zzenVarZzf = (zzen) this.zza;
            if (i != 1) {
                lg7.H(obj);
            } else {
                lg7.H(obj);
            }
            zzenVarZzf.zza();
            this.zzc.zzf = zzcm.zzb;
            return Boolean.valueOf(((bn1) this.zze).G(be8.a));
            zzsc zzscVar = (zzsc) obj;
            this.zzc.zze = zzscVar;
            zzdt zzdtVar2 = this.zzc.zza;
            long j2 = this.zzd;
            this.zza = zzenVarZzf;
            this.zzb = 2;
            if (zzdtVar2.zzn(zzscVar, j2, this) == yx1Var) {
                return yx1Var;
            }
            zzenVarZzf.zza();
            this.zzc.zzf = zzcm.zzb;
            return Boolean.valueOf(((bn1) this.zze).G(be8.a));
        } catch (zzbd e) {
            this.zzc.zzd = e;
            zzenVarZzf.zzb(e);
            throw e;
        }
    }
}
