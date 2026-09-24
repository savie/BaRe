package com.google.android.recaptcha.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzmo {
    static final zzmo zza = new zzmo(true);
    public static final /* synthetic */ int zzb = 0;
    private static volatile boolean zzc = false;
    private final Map zzd;

    public zzmo() {
        this.zzd = new HashMap();
    }

    public final zznc zza(zzoi zzoiVar, int i) {
        return (zznc) this.zzd.get(new zzmn(zzoiVar, i));
    }

    public zzmo(boolean z) {
        this.zzd = Collections.EMPTY_MAP;
    }
}
