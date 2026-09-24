package com.google.android.recaptcha.internal;

import defpackage.be8;
import defpackage.jv1;
import defpackage.l73;
import defpackage.lg7;
import defpackage.ph6;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfr extends ws7 implements qt3 {
    final /* synthetic */ Exception zza;
    final /* synthetic */ zzgd zzb;
    final /* synthetic */ zzft zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfr(Exception exc, zzgd zzgdVar, zzft zzftVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.zza = exc;
        this.zzb = zzgdVar;
        this.zzc = zzftVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        zzfr zzfrVar = new zzfr(this.zza, this.zzb, this.zzc, jv1Var);
        zzfrVar.zzd = obj;
        return zzfrVar;
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfr) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        zztd zztdVarZza;
        lg7.H(obj);
        xx1 xx1Var = (xx1) this.zzd;
        Exception exc = this.zza;
        if (exc instanceof zzce) {
            zztdVarZza = ((zzce) exc).zza();
            zztdVarZza.zze(this.zzb.zza());
        } else {
            zzgd zzgdVar = this.zzb;
            zztd zztdVarZzf = zzte.zzf();
            zztdVarZzf.zze(zzgdVar.zza());
            zztdVarZzf.zzr(2);
            zztdVarZzf.zzq(2);
            zztdVarZza = zztdVarZzf;
        }
        zzte zzteVar = (zzte) zztdVarZza.zzk();
        zzteVar.zzl();
        zzteVar.zzk();
        ph6.a(this.zza.getClass()).c();
        this.zza.getMessage();
        zzgd zzgdVar2 = this.zzb;
        zzbn zzbnVarZzb = zzgdVar2.zzb();
        zzbn zzbnVar = zzgdVar2.zza;
        if (zzbnVar == null) {
            zzbnVar = null;
        }
        zzrl zzrlVarZza = zzev.zza(zzbnVarZzb, zzbnVar);
        String strZzd = this.zzb.zzd();
        if (strZzd.length() == 0) {
            strZzd = "recaptcha.m.Main.rge";
        }
        if (l73.t(xx1Var)) {
            zzft zzftVar = this.zzc;
            zzkh zzkhVarZzh = zzkh.zzh();
            byte[] bArrZzd = zzteVar.zzd();
            String strZzi = zzkhVarZzh.zzi(bArrZzd, 0, bArrZzd.length);
            zzkh zzkhVarZzh2 = zzkh.zzh();
            byte[] bArrZzd2 = zzrlVarZza.zzd();
            zzftVar.zzb.zzd().zzb(strZzd, (String[]) Arrays.copyOf(new String[]{strZzi, zzkhVarZzh2.zzi(bArrZzd2, 0, bArrZzd2.length)}, 2));
        }
        return be8.a;
    }
}
