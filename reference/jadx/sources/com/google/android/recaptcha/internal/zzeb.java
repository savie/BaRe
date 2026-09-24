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
final class zzeb extends ws7 implements qt3 {
    int zza;
    final /* synthetic */ zzec zzb;
    final /* synthetic */ an1 zzc;
    final /* synthetic */ long zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzeb(zzec zzecVar, an1 an1Var, long j, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzb = zzecVar;
        this.zzc = an1Var;
        this.zzd = j;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new zzeb(this.zzb, this.zzc, this.zzd, jv1Var);
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzeb) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Exception {
        zzbd zzbdVar;
        zzeb zzebVar;
        zzbd e;
        if (this.zza != 0) {
            try {
                lg7.H(obj);
                zzebVar = this;
            } catch (zzbd e2) {
                zzbdVar = e2;
                zzebVar = this;
                zzebVar.zzb.zzf = zzcm.zzd;
                ((bn1) zzebVar.zzc).Y(zzbdVar);
            }
        } else {
            lg7.H(obj);
            try {
                zzbq zzbqVar = zzbq.zza;
                zzdz zzdzVar = new zzdz(this.zzb);
                zzea zzeaVar = new zzea(this.zzb, this.zzd, this.zzc, null);
                this.zza = 1;
                zzebVar = this;
                try {
                    obj = zzbqVar.zza(zzdzVar, 100L, 1000L, 2.0d, zzeaVar, zzebVar);
                    yx1 yx1Var = yx1.a;
                    if (obj == yx1Var) {
                        return yx1Var;
                    }
                } catch (zzbd e3) {
                    e = e3;
                    zzbdVar = e;
                    zzebVar.zzb.zzf = zzcm.zzd;
                    ((bn1) zzebVar.zzc).Y(zzbdVar);
                }
            } catch (zzbd e4) {
                e = e4;
                zzebVar = this;
                zzbdVar = e;
                zzebVar.zzb.zzf = zzcm.zzd;
                ((bn1) zzebVar.zzc).Y(zzbdVar);
            }
        }
        ((Boolean) obj).getClass();
        return be8.a;
    }
}
