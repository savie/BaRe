package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import android.webkit.WebView;
import com.microsoft.identity.common.java.challengehandlers.PKeyAuthChallenge;
import com.microsoft.identity.common.java.providers.RawAuthorizationResult;
import com.microsoft.identity.common.java.ui.webview.authorization.IAuthorizationCompletionCallback;
import com.microsoft.identity.common.logging.Logger;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PKeyAuthChallengeHandler implements IChallengeHandler<PKeyAuthChallenge, Void> {
    private final IAuthorizationCompletionCallback mChallengeCallback;
    private final WebView mWebView;

    public PKeyAuthChallengeHandler(WebView webView, IAuthorizationCompletionCallback iAuthorizationCompletionCallback) {
        this.mWebView = webView;
        this.mChallengeCallback = iAuthorizationCompletionCallback;
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.challengehandlers.IChallengeHandler
    public final /* bridge */ /* synthetic */ Void processChallenge(PKeyAuthChallenge pKeyAuthChallenge) {
        throw null;
    }

    /* JADX INFO: renamed from: processChallenge, reason: avoid collision after fix types in other method */
    public final void processChallenge2(final PKeyAuthChallenge pKeyAuthChallenge) {
        WebView webView = this.mWebView;
        webView.stopLoading();
        IAuthorizationCompletionCallback iAuthorizationCompletionCallback = this.mChallengeCallback;
        iAuthorizationCompletionCallback.setPKeyAuthStatus();
        try {
            final HashMap challengeHeader = pKeyAuthChallenge.getChallengeHeader();
            webView.post(new Runnable() { // from class: com.microsoft.identity.common.internal.ui.webview.challengehandlers.PKeyAuthChallengeHandler.1
                @Override // java.lang.Runnable
                public final void run() {
                    PKeyAuthChallenge pKeyAuthChallenge2 = pKeyAuthChallenge;
                    String submitUrl = pKeyAuthChallenge2.getSubmitUrl();
                    int i = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("PKeyAuthChallengeHandler:processChallenge", "Respond to pkeyAuth challenge");
                    com.microsoft.identity.common.java.logging.Logger.infoPII("PKeyAuthChallengeHandler:processChallenge", "Challenge submit url:" + pKeyAuthChallenge2.getSubmitUrl());
                    PKeyAuthChallengeHandler.this.mWebView.loadUrl(submitUrl, challengeHeader);
                }
            });
        } catch (Throwable th) {
            iAuthorizationCompletionCallback.onChallengeResponseReceived(RawAuthorizationResult.fromThrowable(th));
            if (th instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            if (th instanceof Error) {
                throw th;
            }
        }
    }
}
