package com.google.android.recaptcha.internal;

import defpackage.be8;
import defpackage.bn6;
import defpackage.en6;
import defpackage.jv1;
import defpackage.lg7;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;
import defpackage.yx1;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzu extends ws7 implements qt3 {
    Object zza;
    Object zzb;
    int zzc;
    final /* synthetic */ zzsc zzd;
    final /* synthetic */ zzv zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzu(zzsc zzscVar, zzv zzvVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.zzd = zzscVar;
        this.zze = zzvVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new zzu(this.zzd, this.zze, jv1Var);
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzu) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        zzse zzseVarZzj;
        Iterator it;
        if (this.zzc != 0) {
            it = (Iterator) this.zzb;
            zzseVarZzj = (zzse) this.zza;
            lg7.H(obj);
        } else {
            lg7.H(obj);
            if (!this.zzd.zzS()) {
                return new en6(new bn6(new zzbd(zzbb.zzb, zzba.zzab, null)));
            }
            zzseVarZzj = this.zzd.zzj();
            if (zzseVarZzj.zzi().zzd() == 0) {
                return new en6(new bn6(new zzbd(zzbb.zzb, zzba.zzab, null)));
            }
            this.zze.zzc = zzseVarZzj.zzi();
            it = this.zze.zzb.iterator();
        }
        while (it.hasNext()) {
            zzy zzyVar = (zzy) it.next();
            this.zza = zzseVarZzj;
            this.zzb = it;
            this.zzc = 1;
            Object objZzd = zzyVar.zzd(zzseVarZzj, this);
            yx1 yx1Var = yx1.a;
            if (objZzd == yx1Var) {
                return yx1Var;
            }
        }
        return new en6(be8.a);
    }
}
