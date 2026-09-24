package com.google.android.recaptcha.internal;

import android.net.Uri;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import defpackage.bn1;
import java.io.ByteArrayInputStream;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzik extends WebViewClient {
    final /* synthetic */ zzja zza;

    public zzik(zzja zzjaVar) {
        this.zza = zzjaVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        System.currentTimeMillis();
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        long jZza = this.zza.zzh.zza(TimeUnit.MICROSECONDS);
        int i = zzbk.zza;
        zzbk.zza(zzbl.zzg.zza(), jZza);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        zzbb zzbbVar = zzbb.zzc;
        zzba zzbaVar = (zzba) this.zza.zzd.get(Integer.valueOf(i));
        if (zzbaVar == null) {
            zzbaVar = zzba.zzM;
        }
        zzbd zzbdVar = new zzbd(zzbbVar, zzbaVar, null);
        this.zza.zzA().hashCode();
        zzbdVar.getMessage();
        ((bn1) this.zza.zzA()).Y(zzbdVar);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        zzja zzjaVar = this.zza;
        Uri uri = Uri.parse(str);
        zzja.zzp(zzjaVar);
        uri.getClass();
        if (!zzfk.zzc(uri) || zzja.zzp(this.zza).zza(uri)) {
            return super.shouldInterceptRequest(webView, str);
        }
        zzbd zzbdVar = new zzbd(zzbb.zzb, zzba.zzQ, null);
        this.zza.zzA().hashCode();
        uri.toString();
        ((bn1) this.zza.zzA()).Y(zzbdVar);
        return new WebResourceResponse("text/plain", "UTF-8", new ByteArrayInputStream(new byte[0]));
    }
}
