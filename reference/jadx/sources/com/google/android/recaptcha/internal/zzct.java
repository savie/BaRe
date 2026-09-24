package com.google.android.recaptcha.internal;

import defpackage.be8;
import defpackage.jv1;
import defpackage.lg7;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzct extends ws7 implements qt3 {
    Object zza;
    int zzb;
    /* synthetic */ Object zzc;
    final /* synthetic */ zzcv zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ long zzf;
    final /* synthetic */ zzcn zzg;
    final /* synthetic */ zzch zzh;
    final /* synthetic */ zzbi zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzct(zzcv zzcvVar, String str, long j, zzcn zzcnVar, zzbi zzbiVar, zzch zzchVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzd = zzcvVar;
        this.zze = str;
        this.zzf = j;
        this.zzg = zzcnVar;
        this.zzi = zzbiVar;
        this.zzh = zzchVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        zzct zzctVar = new zzct(this.zzd, this.zze, this.zzf, this.zzg, this.zzi, this.zzh, jv1Var);
        zzctVar.zzc = obj;
        return zzctVar;
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzct) create((zzek) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws zzbd {
        zzek zzekVar;
        zzcn zzcnVar;
        if (this.zzb != 0) {
            zzcnVar = (zzcn) this.zza;
            zzekVar = (zzek) this.zzc;
            lg7.H(obj);
        } else {
            lg7.H(obj);
            zzekVar = (zzek) this.zzc;
            zzdc zzdcVarZza = zzcv.zza(this.zzd, this.zze);
            if (zzdcVarZza != null) {
                return zzdcVarZza;
            }
            zzcv.zzc(this.zzd, this.zzf);
            zzcn zzcnVarZze = this.zzg;
            if (zzcnVarZze == null) {
                zzcnVarZze = zzcv.zze(this.zzd, this.zze, this.zzi, this.zzh, zzekVar);
            }
            zzcnVar = zzcnVarZze;
            long j = this.zzf;
            this.zzc = zzekVar;
            this.zza = zzcnVar;
            this.zzb = 1;
            Object objZzb = zzcnVar.zzb(j, this);
            yx1 yx1Var = yx1.a;
            if (objZzb == yx1Var) {
                return yx1Var;
            }
        }
        zzdc zzdcVar = new zzdc(zzcnVar, this.zze, this.zzi, zzekVar);
        this.zzd.zzc = zzdcVar;
        return zzdcVar;
    }
}
