package com.microsoft.identity.common.internal.ui.browser;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.fragment.app.o;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.internal.providers.oauth2.AndroidAuthorizationStrategy;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivityParameters;
import com.microsoft.identity.common.java.browser.Browser;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.providers.RawAuthorizationResult;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationResult;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationResultFactory;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.java.ui.AuthorizationAgent;
import com.microsoft.identity.common.java.util.ResultFuture;
import com.microsoft.identity.common.logging.Logger;
import defpackage.fz5;
import defpackage.l0;
import java.net.URI;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class BrowserAuthorizationStrategy<GenericOAuth2Strategy extends OAuth2Strategy, GenericAuthorizationRequest extends AuthorizationRequest> extends AndroidAuthorizationStrategy<GenericOAuth2Strategy, GenericAuthorizationRequest> {
    private MicrosoftStsAuthorizationRequest mAuthorizationRequest;
    private ResultFuture<MicrosoftStsAuthorizationResult> mAuthorizationResultFuture;
    private final Browser mBrowser;
    private CustomTabsManager mCustomTabManager;
    private boolean mDisposed;
    private GenericOAuth2Strategy mOAuth2Strategy;

    public BrowserAuthorizationStrategy(Context context, Activity activity, o oVar, Browser browser) {
        super(context, activity, oVar);
        this.mBrowser = browser;
    }

    @Override // com.microsoft.identity.common.internal.providers.oauth2.AndroidAuthorizationStrategy
    public final void completeAuthorization(int i, RawAuthorizationResult rawAuthorizationResult) {
        if (i != 1001) {
            String strJ = fz5.j(i, "Unknown request code ");
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warnPII("BrowserAuthorizationStrategy:completeAuthorization", strJ);
            return;
        }
        if (!this.mDisposed) {
            CustomTabsManager customTabsManager = this.mCustomTabManager;
            if (customTabsManager != null) {
                customTabsManager.unbind();
            }
            this.mDisposed = true;
        }
        ((MicrosoftStsOAuth2Strategy) this.mOAuth2Strategy).getClass();
        this.mAuthorizationResultFuture.setResult(new MicrosoftStsAuthorizationResultFactory().createAuthorizationResult(rawAuthorizationResult, this.mAuthorizationRequest));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.microsoft.identity.common.internal.providers.oauth2.AndroidAuthorizationStrategy
    public final ResultFuture requestAuthorization(MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest, OAuth2Strategy oAuth2Strategy) throws ClientException {
        Intent intent;
        if (this.mDisposed) {
            l0.e("Service has been disposed and rendered inoperable");
            return null;
        }
        Context applicationContext = getApplicationContext();
        this.mOAuth2Strategy = oAuth2Strategy;
        this.mAuthorizationRequest = microsoftStsAuthorizationRequest;
        this.mAuthorizationResultFuture = new ResultFuture<>();
        Browser browser = this.mBrowser;
        if (browser.isCustomTabsServiceSupported()) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("BrowserAuthorizationStrategy:requestAuthorization", "CustomTabsService is supported.");
            CustomTabsManager customTabsManager = new CustomTabsManager(applicationContext);
            this.mCustomTabManager = customTabsManager;
            if (customTabsManager.bind(applicationContext, browser.getPackageName())) {
                intent = (Intent) this.mCustomTabManager.getCustomTabsIntent().b;
            } else {
                intent = new Intent("android.intent.action.VIEW");
                intent.setPackage(browser.getPackageName());
            }
        } else {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("BrowserAuthorizationStrategy:requestAuthorization", "CustomTabsService is NOT supported");
            intent = new Intent("android.intent.action.VIEW");
            intent.setPackage(browser.getPackageName());
        }
        Intent intent2 = intent;
        URI authorizationRequestAsHttpRequest = microsoftStsAuthorizationRequest.getAuthorizationRequestAsHttpRequest();
        intent2.setData(Uri.parse(authorizationRequestAsHttpRequest.toString()));
        String brkRedirectUri = this.mAuthorizationRequest.getBrkRedirectUri();
        MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest2 = this.mAuthorizationRequest;
        String brkRedirectUri2 = brkRedirectUri != null ? microsoftStsAuthorizationRequest2.getBrkRedirectUri() : microsoftStsAuthorizationRequest2.getRedirectUri();
        Context applicationContext2 = getApplicationContext();
        String string = authorizationRequestAsHttpRequest.toString();
        HashMap<String, String> requestHeaders = this.mAuthorizationRequest.getRequestHeaders();
        applicationContext2.getClass();
        string.getClass();
        brkRedirectUri2.getClass();
        Intent authorizationActivityIntent = PropertyBagUtil.getAuthorizationActivityIntent(new AuthorizationActivityParameters(applicationContext2, intent2, string, brkRedirectUri2, requestHeaders, AuthorizationAgent.BROWSER, false, false, null, null, null, 8128));
        setIntentFlag(authorizationActivityIntent);
        launchIntent(authorizationActivityIntent);
        return this.mAuthorizationResultFuture;
    }

    public abstract void setIntentFlag(Intent intent);
}
