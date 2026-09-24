package com.google.android.recaptcha.internal;

import defpackage.g84;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgm implements zzgx {
    public static final zzgm zza = new zzgm();

    private zzgm() {
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i, zzgd zzgdVar, zzue... zzueVarArr) throws zzce {
        boolean z = true;
        if (zzueVarArr.length != 1) {
            g84.d(4, 3, null);
            return;
        }
        Object objZza = zzgdVar.zzc().zza(zzueVarArr[0]);
        if (true != Objects.nonNull(objZza)) {
            objZza = null;
        }
        if (objZza == null) {
            g84.d(4, 5, null);
            return;
        }
        try {
            try {
                if (objZza instanceof String) {
                    objZza = zzgdVar.zzh().zza((String) objZza);
                }
                zzge zzgeVarZzc = zzgdVar.zzc();
                try {
                    zzgc.zza(objZza);
                } catch (zzce e) {
                    if (e.zzb() == 8 || e.zzb() == 6) {
                        z = false;
                    } else if (e.zzb() != 47) {
                        throw e;
                    }
                }
                zzgeVarZzc.zze(i, Boolean.valueOf(z));
            } catch (Exception e2) {
                g84.d(6, 8, e2);
            }
        } catch (zzce e3) {
            throw e3;
        }
    }
}
