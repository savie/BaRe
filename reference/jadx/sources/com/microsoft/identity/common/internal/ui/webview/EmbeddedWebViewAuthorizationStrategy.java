package com.microsoft.identity.common.internal.ui.webview;

import android.content.Context;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.internal.providers.oauth2.AndroidAuthorizationStrategy;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivityParameters;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.providers.RawAuthorizationResult;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationResult;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationResultFactory;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.java.ui.AuthorizationAgent;
import com.microsoft.identity.common.java.util.ResultFuture;
import com.microsoft.identity.common.logging.Logger;
import defpackage.dj7;
import defpackage.fz5;
import java.net.URI;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class EmbeddedWebViewAuthorizationStrategy<GenericOAuth2Strategy extends OAuth2Strategy, GenericAuthorizationRequest extends AuthorizationRequest> extends AndroidAuthorizationStrategy<GenericOAuth2Strategy, GenericAuthorizationRequest> {
    private MicrosoftStsAuthorizationRequest mAuthorizationRequest;
    private ResultFuture<MicrosoftStsAuthorizationResult> mAuthorizationResultFuture;
    private GenericOAuth2Strategy mOAuth2Strategy;

    @Override // com.microsoft.identity.common.internal.providers.oauth2.AndroidAuthorizationStrategy
    public final void completeAuthorization(int i, RawAuthorizationResult rawAuthorizationResult) {
        if (i != 1001) {
            String strJ = fz5.j(i, "Unknown request code ");
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warnPII("EmbeddedWebViewAuthorizationStrategy:completeAuthorization", strJ);
        } else {
            if (this.mOAuth2Strategy != null && this.mAuthorizationResultFuture != null) {
                this.mAuthorizationResultFuture.setResult(new MicrosoftStsAuthorizationResultFactory().createAuthorizationResult(rawAuthorizationResult, this.mAuthorizationRequest));
                return;
            }
            StringBuilder sb = new StringBuilder("SDK Cancel triggering before request is sent out. Potentially due to an stale activity state, oAuth2Strategy null ? [");
            sb.append(this.mOAuth2Strategy == null);
            sb.append("]mAuthorizationResultFuture ? [");
            String strP = dj7.p(sb, this.mAuthorizationResultFuture == null, "]");
            int i3 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("EmbeddedWebViewAuthorizationStrategy:completeAuthorization", strP);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.microsoft.identity.common.internal.providers.oauth2.AndroidAuthorizationStrategy
    public final ResultFuture requestAuthorization(MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest, OAuth2Strategy oAuth2Strategy) throws ClientException {
        String libraryName;
        String libraryVersion;
        this.mAuthorizationResultFuture = new ResultFuture<>();
        this.mOAuth2Strategy = oAuth2Strategy;
        this.mAuthorizationRequest = microsoftStsAuthorizationRequest;
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("EmbeddedWebViewAuthorizationStrategy:requestAuthorization", "Perform the authorization request with embedded webView.");
        URI authorizationRequestAsHttpRequest = microsoftStsAuthorizationRequest.getAuthorizationRequestAsHttpRequest();
        MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest2 = this.mAuthorizationRequest;
        if (microsoftStsAuthorizationRequest2 != null) {
            libraryName = microsoftStsAuthorizationRequest2.getLibraryName();
            libraryVersion = this.mAuthorizationRequest.getLibraryVersion();
        } else {
            libraryName = null;
            libraryVersion = null;
        }
        MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest3 = this.mAuthorizationRequest;
        String utid = microsoftStsAuthorizationRequest3 != null ? microsoftStsAuthorizationRequest3.getUtid() : null;
        String brkRedirectUri = this.mAuthorizationRequest.getBrkRedirectUri();
        MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest4 = this.mAuthorizationRequest;
        String brkRedirectUri2 = brkRedirectUri != null ? microsoftStsAuthorizationRequest4.getBrkRedirectUri() : microsoftStsAuthorizationRequest4.getRedirectUri();
        Context applicationContext = getApplicationContext();
        String string = authorizationRequestAsHttpRequest.toString();
        HashMap<String, String> requestHeaders = this.mAuthorizationRequest.getRequestHeaders();
        boolean zIsWebViewZoomEnabled = this.mAuthorizationRequest.isWebViewZoomEnabled();
        boolean zIsWebViewZoomControlsEnabled = this.mAuthorizationRequest.isWebViewZoomControlsEnabled();
        applicationContext.getClass();
        string.getClass();
        brkRedirectUri2.getClass();
        launchIntent(PropertyBagUtil.getAuthorizationActivityIntent(new AuthorizationActivityParameters(applicationContext, null, string, brkRedirectUri2, requestHeaders, AuthorizationAgent.WEBVIEW, zIsWebViewZoomEnabled, zIsWebViewZoomControlsEnabled, libraryName, libraryVersion, utid, 6144)));
        return this.mAuthorizationResultFuture;
    }
}
