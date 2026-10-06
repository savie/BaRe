package com.google.android.recaptcha.internal;

import defpackage.ov2;
import defpackage.pe4;
import defpackage.qt3;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfy extends zzfx {
    private final qt3 zza;
    private final String zzb;

    public zzfy(qt3 qt3Var, String str, Object obj) {
        super(obj);
        this.zza = qt3Var;
        this.zzb = str;
    }

    @Override // com.google.android.recaptcha.internal.zzfx
    public final boolean zza(Object obj, Method method, Object[] objArr) {
        List arrayList;
        if (!pe4.d(method.getName(), this.zzb)) {
            return false;
        }
        zztf zztfVarZzf = zzti.zzf();
        if (objArr != null) {
            arrayList = new ArrayList(objArr.length);
            for (Object obj2 : objArr) {
                zztg zztgVarZzf = zzth.zzf();
                zztgVarZzf.zzw(obj2.toString());
                arrayList.add((zzth) zztgVarZzf.zzk());
            }
        } else {
            arrayList = ov2.a;
        }
        zztfVarZzf.zze(arrayList);
        zzti zztiVar = (zzti) zztfVarZzf.zzk();
        qt3 qt3Var = this.zza;
        byte[] bArrZzd = zztiVar.zzd();
        qt3Var.invoke(objArr, zzkh.zzh().zzi(bArrZzd, 0, bArrZzd.length));
        return true;
    }
}
