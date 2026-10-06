package com.google.android.recaptcha.internal;

import defpackage.g84;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhs implements zzgx {
    public static final zzhs zza = new zzhs();

    private zzhs() {
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i, zzgd zzgdVar, zzue... zzueVarArr) throws zzce {
        int length = zzueVarArr.length;
        if (length != 2) {
            if (length == 0) {
                zzgdVar.zzc().zze(i, new zzbn());
                return;
            } else {
                g84.d(4, 3, null);
                return;
            }
        }
        Object objZza = zzgdVar.zzc().zza(zzueVarArr[0]);
        if (true != (objZza instanceof String)) {
            objZza = null;
        }
        String str = (String) objZza;
        if (str == null) {
            g84.d(4, 5, null);
            return;
        }
        Object objZza2 = zzgdVar.zzc().zza(zzueVarArr[1]);
        if (true != (objZza2 instanceof zzbn)) {
            objZza2 = null;
        }
        zzbn zzbnVar = (zzbn) objZza2;
        if (zzbnVar == null) {
            g84.d(4, 5, null);
            return;
        }
        byte[] bArrZzd = zzev.zza(zzgdVar.zzb(), zzbnVar).zzd();
        zzgdVar.zzi().zzb(str, zzkh.zzh().zzi(bArrZzd, 0, bArrZzd.length));
    }
}
