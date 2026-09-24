package com.google.android.recaptcha.internal;

import defpackage.dj7;
import defpackage.fz5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzkz extends zzlc {
    private final int zzc;

    public zzkz(byte[] bArr, int i, int i2) {
        super(bArr);
        zzle.zzi(0, i2, bArr.length);
        this.zzc = i2;
    }

    @Override // com.google.android.recaptcha.internal.zzlc, com.google.android.recaptcha.internal.zzle
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) >= 0) {
            return ((zzlc) this).zza[i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(fz5.j(i, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(dj7.i("Index > length: ", i, i2, ", "));
    }

    @Override // com.google.android.recaptcha.internal.zzlc, com.google.android.recaptcha.internal.zzle
    public final byte zzb(int i) {
        return ((zzlc) this).zza[i];
    }

    @Override // com.google.android.recaptcha.internal.zzlc
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.recaptcha.internal.zzlc, com.google.android.recaptcha.internal.zzle
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.recaptcha.internal.zzlc, com.google.android.recaptcha.internal.zzle
    public final void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(((zzlc) this).zza, 0, bArr, 0, i3);
    }
}
