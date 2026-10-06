package com.google.android.recaptcha.internal;

import defpackage.g84;
import java.lang.reflect.Array;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgu implements zzgx {
    public static final zzgu zza = new zzgu();

    private zzgu() {
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i, zzgd zzgdVar, zzue... zzueVarArr) throws zzce {
        if (zzueVarArr.length != 2) {
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
        Object objZza2 = zzgdVar.zzc().zza(zzueVarArr[1]);
        if (true != (objZza2 instanceof Integer)) {
            objZza2 = null;
        }
        Integer num = (Integer) objZza2;
        if (num == null) {
            g84.d(4, 5, null);
            return;
        }
        int iIntValue = num.intValue();
        try {
            if (objZza instanceof String) {
                objZza = zzgdVar.zzh().zza((String) objZza);
            }
            zzgdVar.zzc().zze(i, Array.newInstance((Class<?>) zzgc.zza(objZza), iIntValue));
        } catch (Exception e) {
            g84.d(6, 21, e);
        }
    }
}
