package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import android.webkit.WebView;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.logging.Logger;
import defpackage.r86;
import java.net.URL;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class NonceRedirectHandler implements IChallengeHandler<URL, Void> {
    private final HashMap<String, String> headers;
    private final WebView webView;

    public NonceRedirectHandler(WebView webView, HashMap map, r86 r86Var) {
        webView.getClass();
        map.getClass();
        this.webView = webView;
        this.headers = map;
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.challengehandlers.IChallengeHandler
    public final /* bridge */ /* synthetic */ Void processChallenge(URL url) {
        throw null;
    }

    /* JADX INFO: renamed from: processChallenge, reason: avoid collision after fix types in other method */
    public final void processChallenge2(URL url) {
        String str = StringExtensions.getUrlParameters(url.toString()).get("sso_nonce");
        HashMap<String, String> map = this.headers;
        if (str != null) {
            String string = url.toString();
            string.getClass();
            String str2 = map.get("x-ms-RefreshTokenCredential");
            if (str2 != null && str2.length() != 0) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("NonceRedirectHandler:getHeadersWithNewRefreshTokenCredential", "PRT credential header found in headers!");
                if (StringExtensions.getUrlParameters(string).get("login_hint") != null) {
                    com.microsoft.identity.common.java.logging.Logger.warn("CommonRefreshTokenCredentialProvider:getRefreshTokenCredentialUsingNewNonce", "mRefreshTokenCredentialHolder is not initialized!");
                }
            }
        }
        this.webView.loadUrl(url.toString(), map);
    }
}
