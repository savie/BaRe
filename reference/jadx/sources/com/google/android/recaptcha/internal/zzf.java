package com.google.android.recaptcha.internal;

import defpackage.g48;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzf {
    public static final zzbd zza(Exception exc, zzbd zzbdVar) {
        if (exc instanceof g48) {
            return new zzbd(zzbb.zzb, zzba.zzb, exc.getMessage());
        }
        return exc instanceof zzbd ? (zzbd) exc : zzbdVar;
    }
}
