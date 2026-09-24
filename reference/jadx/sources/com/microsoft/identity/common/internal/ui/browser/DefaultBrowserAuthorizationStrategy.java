package com.microsoft.identity.common.internal.ui.browser;

import android.content.Intent;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2Strategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class DefaultBrowserAuthorizationStrategy<GenericOAuth2Strategy extends OAuth2Strategy, GenericAuthorizationRequest extends AuthorizationRequest> extends BrowserAuthorizationStrategy<GenericOAuth2Strategy, GenericAuthorizationRequest> {
    @Override // com.microsoft.identity.common.internal.ui.browser.BrowserAuthorizationStrategy
    public final void setIntentFlag(Intent intent) {
        intent.setFlags(268435456);
    }
}
