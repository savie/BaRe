package com.google.android.recaptcha.internal;

import defpackage.g84;
import java.lang.reflect.Array;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgi implements zzgx {
    public static final zzgi zza = new zzgi();

    private zzgi() {
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i, zzgd zzgdVar, zzue... zzueVarArr) throws zzce {
        if (zzueVarArr.length != 3) {
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
        Object objZza3 = zzgdVar.zzc().zza(zzueVarArr[2]);
        if (true != Objects.nonNull(objZza3)) {
            objZza3 = null;
        }
        if (objZza3 == null) {
            g84.d(4, 5, null);
            return;
        }
        try {
            Array.set(objZza, iIntValue, objZza3);
        } catch (Exception e) {
            if (e instanceof ArrayIndexOutOfBoundsException) {
                g84.d(4, 22, e);
            } else {
                g84.d(4, 25, e);
            }
        }
    }
}
