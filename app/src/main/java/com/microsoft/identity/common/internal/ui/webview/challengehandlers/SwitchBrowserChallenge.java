package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import android.net.Uri;
import defpackage.pe4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SwitchBrowserChallenge {
    private final String authorizationUrl;
    private final Uri processUri;

    public SwitchBrowserChallenge(Uri uri, String str) {
        str.getClass();
        this.processUri = uri;
        this.authorizationUrl = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SwitchBrowserChallenge)) {
            return false;
        }
        SwitchBrowserChallenge switchBrowserChallenge = (SwitchBrowserChallenge) obj;
        return this.processUri.equals(switchBrowserChallenge.processUri) && pe4.d(this.authorizationUrl, switchBrowserChallenge.authorizationUrl);
    }

    public final String getAuthorizationUrl() {
        return this.authorizationUrl;
    }

    public final Uri getProcessUri() {
        return this.processUri;
    }

    public final int hashCode() {
        return this.authorizationUrl.hashCode() + (this.processUri.hashCode() * 31);
    }

    public final String toString() {
        return "SwitchBrowserChallenge(processUri=" + this.processUri + ", authorizationUrl=" + this.authorizationUrl + ')';
    }
}
