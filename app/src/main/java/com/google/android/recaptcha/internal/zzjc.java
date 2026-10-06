package com.google.android.recaptcha.internal;

import android.content.Context;
import android.webkit.WebView;
import defpackage.be8;
import defpackage.jv1;
import defpackage.lg7;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class zzjc extends ws7 implements qt3 {
    final /* synthetic */ zzjd zza;
    final /* synthetic */ Context zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzjc(zzjd zzjdVar, Context context, jv1 jv1Var) {
        super(2, jv1Var);
        this.zza = zzjdVar;
        this.zzb = context;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new zzjc(this.zza, this.zzb, jv1Var);
    }

    @Override // defpackage.qt3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzjc) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        WebView webView = this.zza.zza;
        if (webView == null) {
            webView = new WebView(this.zzb);
        }
        this.zza.zza = webView;
        return webView;
    }
}
