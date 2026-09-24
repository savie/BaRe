package com.google.android.recaptcha.internal;

import com.jcraft.jsch.SftpATTRS;
import defpackage.en6;
import defpackage.jv1;
import defpackage.kv1;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzc extends kv1 {
    Object zza;
    /* synthetic */ Object zzb;
    final /* synthetic */ zze zzc;
    int zzd;
    zzen zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzc(zze zzeVar, jv1 jv1Var) {
        super(jv1Var);
        this.zzc = zzeVar;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws zzbd {
        this.zzb = obj;
        this.zzd |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        Object objZze = this.zzc.zze(0L, null, this);
        return objZze == yx1.a ? objZze : new en6(objZze);
    }
}
