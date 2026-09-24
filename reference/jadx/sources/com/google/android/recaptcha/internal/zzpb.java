package com.google.android.recaptcha.internal;

import defpackage.l0;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzpb implements Iterator {
    final /* synthetic */ zzpe zza;
    private int zzb = -1;
    private boolean zzc;
    private Iterator zzd;

    private final Iterator zza() {
        if (this.zzd == null) {
            this.zzd = this.zza.zzc.entrySet().iterator();
        }
        return this.zzd;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.zzb + 1;
        zzpe zzpeVar = this.zza;
        if (i >= zzpeVar.zzb) {
            return !zzpeVar.zzc.isEmpty() && zza().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.zzc = true;
        int i = this.zzb + 1;
        this.zzb = i;
        zzpe zzpeVar = this.zza;
        return i < zzpeVar.zzb ? (zzpa) zzpeVar.zza[i] : (Map.Entry) zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.zzc) {
            l0.e("remove() was called before next()");
            return;
        }
        this.zzc = false;
        this.zza.zzo();
        int i = this.zzb;
        zzpe zzpeVar = this.zza;
        if (i >= zzpeVar.zzb) {
            zza().remove();
        } else {
            this.zzb = i - 1;
            zzpeVar.zzm(i);
        }
    }
}
