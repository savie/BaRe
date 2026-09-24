package com.google.android.recaptcha.internal;

import defpackage.eq3;
import defpackage.ms8;
import defpackage.nq7;
import defpackage.u48;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbj implements Comparable {
    private int zza;
    private long zzb;
    private long zzc;

    public final String toString() {
        String strN0 = nq7.n0(10, String.valueOf(this.zzb / ((long) this.zza)));
        String strN1 = nq7.n0(10, String.valueOf(this.zzc));
        return eq3.n(u48.p("avgExecutionTime: ", strN0, " us| maxExecutionTime: ", strN1, " us| totalTime: "), nq7.n0(10, String.valueOf(this.zzb)), " us| #Usages: ", nq7.n0(5, String.valueOf(this.zza)));
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzbj zzbjVar) {
        return ms8.n(Long.valueOf(this.zzb), Long.valueOf(zzbjVar.zzb));
    }

    public final int zzb() {
        return this.zza;
    }

    public final long zzc() {
        return this.zzc;
    }

    public final long zzd() {
        return this.zzb;
    }

    public final void zze(long j) {
        this.zzc = j;
    }

    public final void zzf(long j) {
        this.zzb = j;
    }

    public final void zzg(int i) {
        this.zza = i;
    }
}
