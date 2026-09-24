package com.google.android.recaptcha.internal;

import defpackage.g84;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzho implements zzgx {
    public static final zzho zza = new zzho();

    private zzho() {
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i, zzgd zzgdVar, zzue... zzueVarArr) throws zzce {
        if (zzueVarArr.length != 2) {
            g84.d(4, 3, null);
            return;
        }
        Object objZza = zzgdVar.zzc().zza(zzueVarArr[0]);
        if (true != (objZza instanceof Field)) {
            objZza = null;
        }
        Field field = (Field) objZza;
        if (field == null) {
            g84.d(4, 5, null);
            return;
        }
        try {
            field.set(null, zzgdVar.zzc().zza(zzueVarArr[1]));
        } catch (Exception e) {
            g84.d(6, 11, e);
        }
    }
}
