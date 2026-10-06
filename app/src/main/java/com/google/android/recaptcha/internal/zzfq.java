package com.google.android.recaptcha.internal;

import defpackage.be8;
import defpackage.el1;
import defpackage.jv1;
import defpackage.l73;
import defpackage.lg7;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.x13;
import defpackage.xx1;
import defpackage.yx1;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfq extends ws7 implements qt3 {
    int zza;
    final /* synthetic */ zzgd zzb;
    final /* synthetic */ List zzc;
    final /* synthetic */ zzft zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfq(zzgd zzgdVar, List list, zzft zzftVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzb = zzgdVar;
        this.zzc = list;
        this.zzd = zzftVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        zzfq zzfqVar = new zzfq(this.zzb, this.zzc, this.zzd, jv1Var);
        zzfqVar.zze = obj;
        return zzfqVar;
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfq) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.zza;
        be8 be8Var = be8.a;
        lg7.H(obj);
        if (i != 0) {
            return be8Var;
        }
        xx1 xx1Var = (xx1) this.zze;
        while (true) {
            zzgd zzgdVar = this.zzb;
            if (zzgdVar.zza() < 0) {
                break;
            }
            if (zzgdVar.zza() >= this.zzc.size() || !l73.t(xx1Var)) {
                break;
            }
            zzuf zzufVar = (zzuf) this.zzc.get(this.zzb.zza());
            try {
                zzft.zzf(this.zzd, zzufVar, this.zzb);
            } catch (Exception e) {
                zzufVar.zzk();
                x13.d(zzufVar.zzg());
                el1.Y0(zzufVar.zzj(), null, null, null, new zzfp(this.zzd), 31);
                zzft zzftVar = this.zzd;
                zzgd zzgdVar2 = this.zzb;
                this.zza = 1;
                Object objZzh = zzftVar.zzh(e, zzgdVar2, this);
                yx1 yx1Var = yx1.a;
                if (objZzh == yx1Var) {
                    return yx1Var;
                }
            }
        }
        return be8Var;
    }
}
