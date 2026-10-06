package com.google.android.recaptcha.internal;

import com.jcraft.jsch.SftpATTRS;
import defpackage.en6;
import defpackage.jv1;
import defpackage.kv1;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzip extends kv1 {
    /* synthetic */ Object zza;
    final /* synthetic */ zzja zzb;
    int zzc;
    zzja zzd;
    String zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzip(zzja zzjaVar, jv1 jv1Var) {
        super(jv1Var);
        this.zzb = zzjaVar;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.zza = obj;
        this.zzc |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        Object objZzf = this.zzb.zzf(null, this);
        return objZzf == yx1.a ? objZzf : new en6(objZzf);
    }
}
