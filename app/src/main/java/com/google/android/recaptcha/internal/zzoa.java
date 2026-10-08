package com.google.android.recaptcha.internal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzoa implements zzox {
    private static final zzog zza = new zzny();
    private final zzog zzb;

    public zzoa() {
        zzmw zzmwVarZza = zzmw.zza();
        int i = zzos.zza;
        zznz zznzVar = new zznz(zzmwVarZza, zza);
        byte[] bArr = zznl.zzb;
        this.zzb = zznzVar;
    }

    @Override // com.google.android.recaptcha.internal.zzox
    public final zzow zza(Class cls) {
        int i = zzoy.zza;
        if (!zznd.class.isAssignableFrom(cls)) {
            int i2 = zzos.zza;
        }
        zzof zzofVarZzb = this.zzb.zzb(cls);
        if (zzofVarZzb.zzb()) {
            int i3 = zzos.zza;
            return zzom.zzc(zzoy.zzm(), zzmr.zza(), zzofVarZzb.zza());
        }
        int i4 = zzos.zza;
        return zzol.zzm(cls, zzofVarZzb, zzop.zza(), zznw.zza(), zzoy.zzm(), zzofVarZzb.zzc() + (-1) != 1 ? zzmr.zza() : null, zzoe.zza());
    }
}
