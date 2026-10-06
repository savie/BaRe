package com.google.android.recaptcha.internal;

import com.jcraft.jsch.SftpATTRS;
import defpackage.jv1;
import defpackage.kv1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzcs extends kv1 {
    Object zza;
    Object zzb;
    Object zzc;
    long zzd;
    /* synthetic */ Object zze;
    final /* synthetic */ zzcv zzf;
    int zzg;
    String zzh;
    zzch zzi;
    zzbi zzj;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcs(zzcv zzcvVar, jv1 jv1Var) {
        super(jv1Var);
        this.zzf = zzcvVar;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.zze = obj;
        this.zzg |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.zzf.zzg(null, 0L, null, null, null, this);
    }
}
