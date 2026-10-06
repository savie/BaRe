package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import android.webkit.HttpAuthHandler;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class NtlmChallenge {
    private final HttpAuthHandler mHandler;

    public NtlmChallenge(HttpAuthHandler httpAuthHandler) {
        this.mHandler = httpAuthHandler;
    }

    public final HttpAuthHandler getHandler() {
        return this.mHandler;
    }
}
