package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import android.webkit.WebView;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.logging.Logger;
import defpackage.r86;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ReAttachPrtHeaderHandler implements IChallengeHandler<String, Void> {
    private final HashMap<String, String> headers;
    private final WebView webView;

    public ReAttachPrtHeaderHandler(WebView webView, HashMap map, r86 r86Var) {
        webView.getClass();
        map.getClass();
        this.webView = webView;
        this.headers = map;
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.challengehandlers.IChallengeHandler
    public final /* bridge */ /* synthetic */ Void processChallenge(String str) {
        throw null;
    }

    /* JADX INFO: renamed from: processChallenge, reason: avoid collision after fix types in other method */
    public final void processChallenge2(String str) {
        str.getClass();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("ReAttachPrtHeaderHandler", "Processing challenge to attach prt header.");
        String str2 = StringExtensions.getUrlParameters(str).get("login_hint");
        if (str2 != null && str2.length() != 0) {
            com.microsoft.identity.common.java.logging.Logger.warn("CommonRefreshTokenCredentialProvider:getRefreshTokenCredential", "mRefreshTokenCredentialHolder is not initialized!");
        }
        this.webView.loadUrl(str, this.headers);
    }
}
