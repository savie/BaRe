package com.google.android.recaptcha.internal;

import defpackage.g84;
import defpackage.x50;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhf implements zzgx {
    public static final zzhf zza = new zzhf();

    private zzhf() {
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i, zzgd zzgdVar, zzue... zzueVarArr) throws zzce {
        int length = zzueVarArr.length;
        if (length < 2) {
            g84.d(4, 3, null);
            return;
        }
        Object objZza = zzgdVar.zzc().zza(zzueVarArr[0]);
        if (true != (objZza instanceof Method)) {
            objZza = null;
        }
        Method method = (Method) objZza;
        if (method == null) {
            g84.d(4, 5, null);
            return;
        }
        Object objZza2 = zzgdVar.zzc().zza(zzueVarArr[1]);
        Object[] objArrZzg = zzgdVar.zzc().zzg(x50.z0(zzueVarArr).subList(2, length));
        try {
            zzgdVar.zzc().zze(i, method.invoke(objZza2, Arrays.copyOf(objArrZzg, objArrZzg.length)));
        } catch (Exception e) {
            g84.d(6, 15, e);
        }
    }
}
