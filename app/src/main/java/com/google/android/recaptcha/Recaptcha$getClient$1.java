package com.google.android.recaptcha;

import com.jcraft.jsch.SftpATTRS;
import defpackage.en6;
import defpackage.jv1;
import defpackage.kv1;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Recaptcha$getClient$1 extends kv1 {
    /* synthetic */ Object zza;
    final /* synthetic */ Recaptcha zzb;
    int zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recaptcha$getClient$1(Recaptcha recaptcha, jv1 jv1Var) {
        super(jv1Var);
        this.zzb = recaptcha;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        Object objM60getClientBWLJW6A = this.zzb.m60getClientBWLJW6A(null, null, 0L, this);
        return objM60getClientBWLJW6A == yx1.a ? objM60getClientBWLJW6A : new en6(objM60getClientBWLJW6A);
    }
}
