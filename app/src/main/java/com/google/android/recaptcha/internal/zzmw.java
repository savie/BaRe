package com.google.android.recaptcha.internal;

import defpackage.c6;
import defpackage.e6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzmw implements zzog {
    private static final zzmw zza = new zzmw();

    private zzmw() {
    }

    public static zzmw zza() {
        return zza;
    }

    @Override // com.google.android.recaptcha.internal.zzog
    public final zzof zzb(Class cls) {
        if (!zznd.class.isAssignableFrom(cls)) {
            c6.f("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (zzof) zznd.zzu(cls.asSubclass(zznd.class)).zzh(3, null, null);
        } catch (Exception e) {
            e6.i("Unable to get message info for ".concat(cls.getName()), e);
            return null;
        }
    }

    @Override // com.google.android.recaptcha.internal.zzog
    public final boolean zzc(Class cls) {
        return zznd.class.isAssignableFrom(cls);
    }
}
