package com.google.android.recaptcha.internal;

import android.content.Context;
import defpackage.mz3;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbs {
    private final mz3 zza;

    public zzbs() {
        this.zza = mz3.b;
    }

    public final int zza(Context context) {
        int iB = this.zza.b(context);
        return (iB == 1 || iB == 3 || iB == 9) ? 4 : 3;
    }

    public zzbs(mz3 mz3Var) {
        this.zza = mz3Var;
    }
}
