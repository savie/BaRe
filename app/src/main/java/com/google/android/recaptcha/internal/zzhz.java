package com.google.android.recaptcha.internal;

import defpackage.el1;
import defpackage.g84;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhz implements zzhx {
    private final zzhy zza;

    public zzhz(zzhy zzhyVar, zzhw zzhwVar) {
        this.zza = zzhyVar;
    }

    private final zztz zzb(String str, List list) throws zzce {
        if (str.length() == 0) {
            g84.d(3, 17, null);
            return null;
        }
        try {
            zzhv zzhvVar = new zzhv(this.zza.zza(el1.w1(list)), 255L, zzhv.zza);
            StringBuilder sb = new StringBuilder(str.length());
            for (int i = 0; i < str.length(); i++) {
                sb.append((char) (str.charAt(i) ^ ((int) zzhvVar.zza())));
            }
            return zztz.zzg(zzkh.zzh().zzj(sb.toString()));
        } catch (Exception e) {
            g84.d(3, 18, e);
            return null;
        }
    }

    @Override // com.google.android.recaptcha.internal.zzhx
    public final zztz zza(zzub zzubVar) throws zzce {
        zzjh zzjhVarZzb = zzjh.zzb();
        zztz zztzVarZzb = zzb(zzubVar.zzj(), zzubVar.zzk());
        zzjhVarZzb.zzf();
        long jZza = zzjhVarZzb.zza(TimeUnit.MICROSECONDS);
        int i = zzbk.zza;
        zzbk.zza(zzbl.zzh.zza(), jZza);
        return zztzVarZzb;
    }
}
