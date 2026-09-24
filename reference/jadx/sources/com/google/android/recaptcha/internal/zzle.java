package com.google.android.recaptcha.internal;

import defpackage.a6;
import defpackage.dj7;
import defpackage.xs1;
import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzle implements Iterable, Serializable {
    public static final zzle zzb = new zzlc(zznl.zzb);
    private int zza = 0;

    static {
        int i = zzks.zza;
    }

    public static int zzi(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            a6.d(xs1.h(i, "Beginning index: ", " < 0"));
            return 0;
        }
        if (i2 < i) {
            a6.d(dj7.i("Beginning index larger than ending index: ", i, i2, ", "));
            return 0;
        }
        a6.d(dj7.i("End index: ", i2, i3, " >= "));
        return 0;
    }

    public static zzle zzk(byte[] bArr, int i, int i2) {
        zzi(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzlc(bArr2);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int iZzf = this.zza;
        if (iZzf == 0) {
            int iZzd = zzd();
            iZzf = zzf(iZzd, 0, iZzd);
            if (iZzf == 0) {
                iZzf = 1;
            }
            this.zza = iZzf;
        }
        return iZzf;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzkx(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        return dj7.n(dj7.v("<ByteString@", Integer.toHexString(System.identityHashCode(this)), " size=", zzd(), " contents=\""), zzd() <= 50 ? zzpg.zza(this) : zzpg.zza(zzg(0, 47)).concat("..."), "\">");
    }

    public abstract byte zza(int i);

    public abstract byte zzb(int i);

    public abstract int zzd();

    public abstract void zze(byte[] bArr, int i, int i2, int i3);

    public abstract int zzf(int i, int i2, int i3);

    public abstract zzle zzg(int i, int i2);

    public abstract void zzh(zzkw zzkwVar) throws IOException;

    public final int zzj() {
        return this.zza;
    }

    public final byte[] zzl() {
        int iZzd = zzd();
        if (iZzd == 0) {
            return zznl.zzb;
        }
        byte[] bArr = new byte[iZzd];
        zze(bArr, 0, 0, iZzd);
        return bArr;
    }
}
