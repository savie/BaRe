package com.google.android.recaptcha.internal;

import defpackage.be8;
import defpackage.c6;
import defpackage.g84;
import defpackage.jv1;
import defpackage.l73;
import defpackage.xx1;
import defpackage.yx1;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzft implements zzfo {
    private final xx1 zza;
    private final zzgf zzb;
    private final zzhx zzc;
    private final Map zzd;

    public zzft(xx1 xx1Var, zzgf zzgfVar, zzhx zzhxVar, Map map) {
        this.zza = xx1Var;
        this.zzb = zzgfVar;
        this.zzc = zzhxVar;
        this.zzd = map;
    }

    public static final /* synthetic */ void zzf(zzft zzftVar, zzuf zzufVar, zzgd zzgdVar) throws zzce {
        zzjh zzjhVarZzb = zzjh.zzb();
        int iZza = zzgdVar.zza();
        zzgx zzgxVar = (zzgx) zzftVar.zzd.get(Integer.valueOf(zzufVar.zzf()));
        if (zzgxVar == null) {
            g84.d(5, 2, null);
            return;
        }
        int iZzg = zzufVar.zzg();
        zzue[] zzueVarArr = (zzue[]) zzufVar.zzj().toArray(new zzue[0]);
        zzgxVar.zza(iZzg, zzgdVar, (zzue[]) Arrays.copyOf(zzueVarArr, zzueVarArr.length));
        if (iZza == zzgdVar.zza()) {
            zzgdVar.zzg(zzgdVar.zza() + 1);
        }
        zzjhVarZzb.zzf();
        long jZza = zzjhVarZzb.zza(TimeUnit.MICROSECONDS);
        int i = zzbk.zza;
        int iZzk = zzufVar.zzk();
        if (iZzk != 1) {
            zzbk.zza(iZzk - 2, jZza);
        } else {
            c6.f("Can't get the number of an unknown enum value.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object zzg(List list, zzgd zzgdVar, jv1 jv1Var) {
        Object objK = l73.k(new zzfq(zzgdVar, list, this, null), jv1Var);
        return objK == yx1.a ? objK : be8.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object zzh(Exception exc, zzgd zzgdVar, jv1 jv1Var) {
        Object objK = l73.k(new zzfr(exc, zzgdVar, this, null), jv1Var);
        return objK == yx1.a ? objK : be8.a;
    }

    @Override // com.google.android.recaptcha.internal.zzfo
    public final void zza(String str) {
        l73.v(this.zza, null, new zzfs(new zzgd(this.zzb), this, str, null), 3);
    }
}
