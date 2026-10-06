package com.google.android.recaptcha.internal;

import defpackage.g84;
import defpackage.x50;
import java.lang.reflect.Constructor;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhj implements zzgx {
    public static final zzhj zza = new zzhj();

    private zzhj() {
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i, zzgd zzgdVar, zzue... zzueVarArr) throws zzce {
        int length = zzueVarArr.length;
        if (length == 0) {
            g84.d(4, 3, null);
            return;
        }
        Constructor<?> constructorZza = zzgdVar.zzc().zza(zzueVarArr[0]);
        if (true != Objects.nonNull(constructorZza)) {
            constructorZza = null;
        }
        if (constructorZza == null) {
            g84.d(4, 5, null);
            return;
        }
        Constructor<?> constructor = constructorZza instanceof Constructor ? constructorZza : constructorZza.getClass().getConstructor(null);
        Object[] objArrZzg = zzgdVar.zzc().zzg(x50.z0(zzueVarArr).subList(1, length));
        try {
            zzgdVar.zzc().zze(i, constructor.newInstance(Arrays.copyOf(objArrZzg, objArrZzg.length)));
        } catch (Exception e) {
            g84.d(6, 14, e);
        }
    }
}
