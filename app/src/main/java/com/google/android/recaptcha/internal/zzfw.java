package com.google.android.recaptcha.internal;

import android.webkit.WebView;
import defpackage.l73;
import defpackage.xx1;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfw {
    private final WebView zza;
    private final xx1 zzb;

    public zzfw(WebView webView, xx1 xx1Var) {
        this.zza = webView;
        this.zzb = xx1Var;
    }

    public final void zzb(String str, String... strArr) {
        l73.v(this.zzb, null, new zzfv((String[]) Arrays.copyOf(strArr, strArr.length), this, str, null), 3);
    }
}
