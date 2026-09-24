package com.google.android.recaptcha.internal;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzpq extends zzpr {
    public zzpq(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.recaptcha.internal.zzpr
    public final double zza(Object obj, long j) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j));
    }

    @Override // com.google.android.recaptcha.internal.zzpr
    public final float zzb(Object obj, long j) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j));
    }

    /* JADX WARN: Failed to inline method: com.google.android.recaptcha.internal.zzps.zzi(java.lang.Object, long, boolean):void */
    /* JADX WARN: Failed to inline method: com.google.android.recaptcha.internal.zzps.zzj(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r4v0 'z' boolean)' in method call: com.google.android.recaptcha.internal.zzps.zzi(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r4v0 'z' boolean)' in method call: com.google.android.recaptcha.internal.zzps.zzj(java.lang.Object, long, boolean):void */
    @Override // com.google.android.recaptcha.internal.zzpr
    public final void zzc(Object obj, long j, boolean z) {
        if (zzps.zzb) {
            zzps.zzi(obj, j, z);
        } else {
            zzps.zzj(obj, j, z);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzpr
    public final void zzd(Object obj, long j, byte b) {
        if (zzps.zzb) {
            zzps.zzD(obj, j, b);
        } else {
            zzps.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzpr
    public final void zze(Object obj, long j, double d) {
        this.zza.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.recaptcha.internal.zzpr
    public final void zzf(Object obj, long j, float f) {
        this.zza.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.recaptcha.internal.zzpr
    public final boolean zzg(Object obj, long j) {
        return zzps.zzb ? zzps.zzt(obj, j) : zzps.zzu(obj, j);
    }
}
