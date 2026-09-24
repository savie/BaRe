package com.google.android.recaptcha.internal;

import com.jcraft.jsch.SftpATTRS;
import defpackage.en6;
import defpackage.jv1;
import defpackage.kv1;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzcx extends kv1 {
    /* synthetic */ Object zza;
    final /* synthetic */ zzdc zzb;
    int zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcx(zzdc zzdcVar, jv1 jv1Var) {
        super(jv1Var);
        this.zzb = zzdcVar;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.zza = obj;
        this.zzc |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        Object objMo62executegIAlus = this.zzb.mo62executegIAlus(null, this);
        return objMo62executegIAlus == yx1.a ? objMo62executegIAlus : new en6(objMo62executegIAlus);
    }
}
