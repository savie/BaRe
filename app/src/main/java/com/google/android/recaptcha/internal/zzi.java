package com.google.android.recaptcha.internal;

import com.jcraft.jsch.SftpATTRS;
import defpackage.en6;
import defpackage.jv1;
import defpackage.kv1;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzi extends kv1 {
    /* synthetic */ Object zza;
    final /* synthetic */ zzl zzb;
    int zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzi(zzl zzlVar, jv1 jv1Var) {
        super(jv1Var);
        this.zzb = zzlVar;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        Object objZzc = this.zzb.zzc(0L, null, null, this);
        return objZzc == yx1.a ? objZzc : new en6(objZzc);
    }
}
