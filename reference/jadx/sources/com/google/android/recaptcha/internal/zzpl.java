package com.google.android.recaptcha.internal;

import defpackage.c6;
import defpackage.m0;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzpl {
    private static volatile int zza = 100;

    public abstract Object zza(Object obj);

    public abstract Object zzb();

    public abstract Object zzc(Object obj);

    public abstract void zzd(Object obj, int i, int i2);

    public abstract void zze(Object obj, int i, long j);

    public abstract void zzf(Object obj, int i, Object obj2);

    public abstract void zzg(Object obj, int i, zzle zzleVar);

    public abstract void zzh(Object obj, int i, long j);

    public abstract void zzi(Object obj);

    public abstract void zzj(Object obj, Object obj2);

    public final boolean zzk(Object obj, zzov zzovVar, int i) throws IOException {
        int iZzd = zzovVar.zzd();
        int i2 = iZzd >>> 3;
        int i3 = iZzd & 7;
        if (i3 == 0) {
            zzh(obj, i2, zzovVar.zzl());
            return true;
        }
        if (i3 == 1) {
            zze(obj, i2, zzovVar.zzk());
            return true;
        }
        if (i3 == 2) {
            zzg(obj, i2, zzovVar.zzp());
            return true;
        }
        if (i3 != 3) {
            if (i3 != 4) {
                if (i3 == 5) {
                    zzd(obj, i2, zzovVar.zzf());
                    return true;
                }
                c6.i();
            }
            return false;
        }
        Object objZzb = zzb();
        int i4 = i2 << 3;
        int i5 = i + 1;
        if (i5 >= zza) {
            m0.k("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return false;
        }
        while (zzovVar.zzc() != Integer.MAX_VALUE && zzk(objZzb, zzovVar, i5)) {
        }
        if ((i4 | 4) == zzovVar.zzd()) {
            zzf(obj, i2, zzc(objZzb));
            return true;
        }
        m0.k("Protocol message end-group tag did not match expected tag.");
        return false;
    }
}
