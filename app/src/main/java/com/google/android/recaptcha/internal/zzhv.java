package com.google.android.recaptcha.internal;

import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhv {
    private static final zzhu zza;
    private final zzhu zzb;
    private long zzc;

    static {
        long jPow = (long) Math.pow(2.0d, 32.0d);
        zza = new zzhu(11L, 20919936621L ^ jPow, (long) Math.pow(2.0d, 48.0d));
    }

    public zzhv(long j, long j2, zzhu zzhuVar) {
        this.zzb = zzhuVar;
        this.zzc = Math.abs(j);
    }

    public final long zza() {
        zzhu zzhuVar = this.zzb;
        long jLongValue = (BigInteger.valueOf(zzhuVar.zzb()).multiply(BigInteger.valueOf(this.zzc)).mod(BigInteger.valueOf(zzhuVar.zza())).longValue() + 11) % this.zzb.zza();
        this.zzc = jLongValue;
        return jLongValue % 255;
    }
}
