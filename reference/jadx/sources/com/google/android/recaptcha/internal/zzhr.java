package com.google.android.recaptcha.internal;

import defpackage.g84;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhr implements zzgx {
    public static final zzhr zza = new zzhr();

    private zzhr() {
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i, zzgd zzgdVar, zzue... zzueVarArr) throws zzce {
        if (zzueVarArr.length != 2) {
            g84.d(4, 3, null);
            return;
        }
        Object objZza = zzgdVar.zzc().zza(zzueVarArr[0]);
        if (true != (objZza instanceof int[])) {
            objZza = null;
        }
        int[] iArr = (int[]) objZza;
        if (iArr == null) {
            g84.d(4, 5, null);
            return;
        }
        Object objZza2 = zzgdVar.zzc().zza(zzueVarArr[1]);
        if (true != (objZza2 instanceof String)) {
            objZza2 = null;
        }
        String str = (String) objZza2;
        if (str == null) {
            g84.d(4, 5, null);
            return;
        }
        zzge zzgeVarZzc = zzgdVar.zzc();
        StringBuilder sb = new StringBuilder();
        try {
            for (int i2 : iArr) {
                sb.append(str.charAt(i2));
            }
            zzgeVarZzc.zze(i, sb.toString());
        } catch (Exception e) {
            g84.d(4, 22, e);
        }
    }
}
