package com.google.android.gms.tasks;

import defpackage.ly8;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzk implements Runnable {
    final /* synthetic */ Task zza;
    final /* synthetic */ zzl zzb;

    public zzk(zzl zzlVar, Task task) {
        this.zza = task;
        Objects.requireNonNull(zzlVar);
        this.zzb = zzlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzl zzlVar = this.zzb;
        synchronized (zzlVar.zzc()) {
            try {
                if (zzlVar.zzd() != null) {
                    OnFailureListener onFailureListenerZzd = zzlVar.zzd();
                    Exception exception = this.zza.getException();
                    ly8.h(exception);
                    onFailureListenerZzd.onFailure(exception);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
