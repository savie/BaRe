package com.google.android.recaptcha.internal;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import defpackage.d6;
import defpackage.dj7;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzjh {
    private boolean zza;
    private long zzb;
    private long zzc;

    public static zzjh zzb() {
        zzjh zzjhVar = new zzjh();
        zzjhVar.zze();
        return zzjhVar;
    }

    public static zzjh zzc() {
        return new zzjh();
    }

    private final long zzg() {
        return this.zza ? (System.nanoTime() - this.zzc) + this.zzb : this.zzb;
    }

    public final String toString() {
        TimeUnit timeUnit;
        String str;
        long jZzg = zzg();
        long j = jZzg / 86400000000000L;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (j > 0) {
            timeUnit = TimeUnit.DAYS;
        } else if (jZzg / 3600000000000L > 0) {
            timeUnit = TimeUnit.HOURS;
        } else if (jZzg / 60000000000L > 0) {
            timeUnit = TimeUnit.MINUTES;
        } else if (jZzg / 1000000000 > 0) {
            timeUnit = TimeUnit.SECONDS;
        } else if (jZzg / 1000000 > 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        } else {
            timeUnit = jZzg / 1000 > 0 ? TimeUnit.MICROSECONDS : timeUnit2;
        }
        String str2 = String.format(Locale.ROOT, "%.4g", Double.valueOf(jZzg / timeUnit2.convert(1L, timeUnit)));
        switch (zzjg.zza[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = "h";
                break;
            case 7:
                str = "d";
                break;
            default:
                d6.n();
                return null;
        }
        return dj7.k(str2, TokenAuthenticationScheme.SCHEME_DELIMITER, str);
    }

    public final long zza(TimeUnit timeUnit) {
        return timeUnit.convert(zzg(), TimeUnit.NANOSECONDS);
    }

    public final zzjh zzd() {
        this.zzb = 0L;
        this.zza = false;
        return this;
    }

    public final zzjh zze() {
        zzjf.zze(!this.zza, "This stopwatch is already running.");
        this.zza = true;
        this.zzc = System.nanoTime();
        return this;
    }

    public final zzjh zzf() {
        long jNanoTime = System.nanoTime();
        zzjf.zze(this.zza, "This stopwatch is already stopped.");
        this.zza = false;
        this.zzb = (jNanoTime - this.zzc) + this.zzb;
        return this;
    }
}
