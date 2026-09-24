package com.google.android.recaptcha.internal;

import com.jcraft.jsch.SftpATTRS;
import defpackage.jv1;
import defpackage.kv1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzby extends kv1 {
    Object zza;
    /* synthetic */ Object zzb;
    final /* synthetic */ zzcb zzc;
    int zzd;
    zzcb zze;
    zzje zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzby(zzcb zzcbVar, jv1 jv1Var) {
        super(jv1Var);
        this.zzc = zzcbVar;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.zzb = obj;
        this.zzd |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.zzc.zza(null, this);
    }
}
