package com.google.android.recaptcha.internal;

import defpackage.cn2;
import defpackage.dv1;
import defpackage.fs7;
import defpackage.i55;
import defpackage.l73;
import defpackage.mz2;
import defpackage.od2;
import defpackage.rf2;
import defpackage.se2;
import defpackage.xx1;
import defpackage.zm5;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbi {
    private final xx1 zza;
    private final xx1 zzb;
    private final xx1 zzc;
    private final xx1 zzd;

    public zzbi() {
        fs7 fs7VarA = zm5.a();
        rf2 rf2Var = cn2.a;
        this.zza = new dv1(od2.u(fs7VarA, i55.a));
        dv1 dv1VarC = l73.c(new mz2(Executors.newSingleThreadExecutor()));
        l73.v(dv1VarC, null, new zzbh(null), 3);
        this.zzb = dv1VarC;
        this.zzc = l73.c(se2.c);
        dv1 dv1VarC2 = l73.c(new mz2(Executors.newSingleThreadExecutor()));
        l73.v(dv1VarC2, null, new zzbg(null), 3);
        this.zzd = dv1VarC2;
    }

    public final xx1 zza() {
        return this.zzc;
    }

    public final xx1 zzb() {
        return this.zza;
    }

    public final xx1 zzc() {
        return this.zzd;
    }

    public final xx1 zzd() {
        return this.zzb;
    }
}
