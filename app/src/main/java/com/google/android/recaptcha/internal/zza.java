package com.google.android.recaptcha.internal;

import com.jcraft.jsch.SftpATTRS;
import defpackage.en6;
import defpackage.jv1;
import defpackage.kv1;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zza extends kv1 {
    Object zza;
    long zzb;
    /* synthetic */ Object zzc;
    final /* synthetic */ zze zzd;
    int zze;
    String zzf;
    zzen zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zza(zze zzeVar, jv1 jv1Var) {
        super(jv1Var);
        this.zzd = zzeVar;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws zzbd {
        this.zzc = obj;
        this.zze |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        Object objZzc = this.zzd.zzc(null, 0L, this);
        return objZzc == yx1.a ? objZzc : new en6(objZzc);
    }
}
