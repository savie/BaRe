package com.microsoft.identity.common.internal.broker;

import com.microsoft.identity.common.internal.msafederation.google.SignInWithGoogleCredential;
import com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.java.opentelemetry.SerializableSpanContext;
import com.microsoft.identity.common.java.request.SdkType;
import com.microsoft.identity.common.java.ui.BrowserDescriptor;
import com.microsoft.identity.common.java.ui.PreferredAuthMethod;
import defpackage.f6;
import defpackage.y77;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class BrokerRequest implements Serializable {

    @y77("account_transfer_token")
    private String mAccountTransferToken;

    @y77("client_app_name")
    private String mApplicationName;

    @y77("client_app_version")
    private String mApplicationVersion;

    @y77("authentication_scheme")
    private AbstractAuthenticationScheme mAuthenticationScheme;

    @y77("authority")
    private String mAuthority;

    @y77("authorization_agent")
    private String mAuthorizationAgent;

    @y77("child_client_id")
    private String mChildClientId;

    @y77("child_redirect_uri")
    private String mChildRedirectUri;

    @y77("claims")
    private String mClaims;

    @y77("client_id")
    private String mClientId;

    @y77("correlation_id")
    private String mCorrelationId;

    @y77("environment")
    private String mEnvironment;

    @y77("extra_options")
    private String mExtraOptions;

    @y77("extra_query_param")
    private String mExtraQueryStringParameter;

    @y77("force_refresh")
    private boolean mForceRefresh;

    @y77("home_account_id")
    private String mHomeAccountId;

    @y77("local_account_id")
    private String mLocalAccountId;

    @y77("client_version")
    private String mMsalVersion;

    @y77("multiple_clouds_supported")
    private boolean mMultipleCloudsSupported;

    @y77("power_opt_check_enabled")
    private boolean mPowerOptCheckEnabled;

    @y77("preferred_auth_method")
    private PreferredAuthMethod mPreferredAuthMethod;

    @y77("preferred_browser")
    private BrowserDescriptor mPreferredBrowser;

    @y77("prompt")
    private String mPrompt;

    @y77("redirect_uri")
    private String mRedirect;

    @y77("request_headers")
    private String mRequestHeaders;

    @y77("request_type")
    private String mRequestType;

    @y77("scopes")
    private String mScope;

    @y77("client_sdk_type")
    private SdkType mSdkType;

    @y77("sign_in_with_google_credential")
    private SignInWithGoogleCredential mSignInWithGoogleCredential;

    @y77("span_context")
    private SerializableSpanContext mSpanContext;

    @y77("suppress_account_picker")
    private boolean mSuppressAccountPicker;

    @y77("tenant_id")
    private String mTenantId;

    @y77("username")
    private String mUserName;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class BrokerRequestBuilder {
        private String accountTransferToken;
        private String applicationName;
        private String applicationVersion;
        private AbstractAuthenticationScheme authenticationScheme;
        private String authority;
        private String authorizationAgent;
        private String childClientId;
        private String childRedirectUri;
        private String claims;
        private String clientId;
        private String correlationId;
        private String environment;
        private String extraOptions;
        private String extraQueryStringParameter;
        private boolean forceRefresh;
        private String homeAccountId;
        private String localAccountId;
        private String msalVersion;
        private boolean multipleCloudsSupported;
        private boolean powerOptCheckEnabled;
        private PreferredAuthMethod preferredAuthMethod;
        private BrowserDescriptor preferredBrowser;
        private String prompt;
        private String redirect;
        private String requestHeaders;
        private String scope;
        private SdkType sdkType;
        private SignInWithGoogleCredential signInWithGoogleCredential;
        private SerializableSpanContext spanContext;
        private boolean suppressAccountPicker;
        private String userName;

        public final void accountTransferToken(String str) {
            this.accountTransferToken = str;
        }

        public final void applicationName(String str) {
            if (str != null) {
                this.applicationName = str;
            } else {
                f6.n("applicationName is marked non-null but is null");
            }
        }

        public final void applicationVersion(String str) {
            if (str != null) {
                this.applicationVersion = str;
            } else {
                f6.n("applicationVersion is marked non-null but is null");
            }
        }

        public final void authenticationScheme(AbstractAuthenticationScheme abstractAuthenticationScheme) {
            this.authenticationScheme = abstractAuthenticationScheme;
        }

        public final void authority(String str) {
            this.authority = str;
        }

        public final void authorizationAgent(String str) {
            this.authorizationAgent = str;
        }

        public final BrokerRequest build() {
            return new BrokerRequest(this.authority, this.scope, this.redirect, this.clientId, this.userName, this.homeAccountId, this.localAccountId, this.extraQueryStringParameter, this.requestHeaders, this.extraOptions, this.correlationId, this.prompt, this.childRedirectUri, this.childClientId, this.claims, this.forceRefresh, this.applicationName, this.applicationVersion, this.msalVersion, this.sdkType, this.environment, this.multipleCloudsSupported, this.authorizationAgent, this.authenticationScheme, this.powerOptCheckEnabled, this.spanContext, this.preferredBrowser, this.preferredAuthMethod, this.accountTransferToken, this.suppressAccountPicker, this.signInWithGoogleCredential);
        }

        public final void childClientId(String str) {
            this.childClientId = str;
        }

        public final void childRedirectUri(String str) {
            this.childRedirectUri = str;
        }

        public final void claims(String str) {
            this.claims = str;
        }

        public final void clientId(String str) {
            if (str != null) {
                this.clientId = str;
            } else {
                f6.n("clientId is marked non-null but is null");
            }
        }

        public final void correlationId(String str) {
            if (str != null) {
                this.correlationId = str;
            } else {
                f6.n("correlationId is marked non-null but is null");
            }
        }

        public final void environment(String str) {
            if (str != null) {
                this.environment = str;
            } else {
                f6.n("environment is marked non-null but is null");
            }
        }

        public final void extraOptions(String str) {
            this.extraOptions = str;
        }

        public final void extraQueryStringParameter(String str) {
            this.extraQueryStringParameter = str;
        }

        public final void forceRefresh(boolean z) {
            this.forceRefresh = z;
        }

        public final void homeAccountId(String str) {
            this.homeAccountId = str;
        }

        public final void localAccountId(String str) {
            this.localAccountId = str;
        }

        public final void msalVersion(String str) {
            if (str != null) {
                this.msalVersion = str;
            } else {
                f6.n("msalVersion is marked non-null but is null");
            }
        }

        public final void multipleCloudsSupported(boolean z) {
            this.multipleCloudsSupported = z;
        }

        public final void powerOptCheckEnabled(boolean z) {
            this.powerOptCheckEnabled = z;
        }

        public final void preferredAuthMethod(PreferredAuthMethod preferredAuthMethod) {
            this.preferredAuthMethod = preferredAuthMethod;
        }

        public final void preferredBrowser(BrowserDescriptor browserDescriptor) {
            this.preferredBrowser = browserDescriptor;
        }

        public final void prompt(String str) {
            this.prompt = str;
        }

        public final void redirect(String str) {
            if (str != null) {
                this.redirect = str;
            } else {
                f6.n("redirect is marked non-null but is null");
            }
        }

        public final void requestHeaders(String str) {
            this.requestHeaders = str;
        }

        public final void scope(String str) {
            this.scope = str;
        }

        public final void sdkType(SdkType sdkType) {
            if (sdkType != null) {
                this.sdkType = sdkType;
            } else {
                f6.n("sdkType is marked non-null but is null");
            }
        }

        public final void signInWithGoogleCredential(SignInWithGoogleCredential signInWithGoogleCredential) {
            this.signInWithGoogleCredential = signInWithGoogleCredential;
        }

        public final void spanContext(SerializableSpanContext serializableSpanContext) {
            this.spanContext = serializableSpanContext;
        }

        public final void suppressAccountPicker(boolean z) {
            this.suppressAccountPicker = z;
        }

        public final String toString() {
            return "BrokerRequest.BrokerRequestBuilder(authority=" + this.authority + ", scope=" + this.scope + ", redirect=" + this.redirect + ", clientId=" + this.clientId + ", userName=" + this.userName + ", homeAccountId=" + this.homeAccountId + ", localAccountId=" + this.localAccountId + ", extraQueryStringParameter=" + this.extraQueryStringParameter + ", requestHeaders=" + this.requestHeaders + ", extraOptions=" + this.extraOptions + ", correlationId=" + this.correlationId + ", prompt=" + this.prompt + ", childRedirectUri=" + this.childRedirectUri + ", childClientId=" + this.childClientId + ", claims=" + this.claims + ", forceRefresh=" + this.forceRefresh + ", applicationName=" + this.applicationName + ", applicationVersion=" + this.applicationVersion + ", msalVersion=" + this.msalVersion + ", sdkType=" + this.sdkType + ", environment=" + this.environment + ", multipleCloudsSupported=" + this.multipleCloudsSupported + ", authorizationAgent=" + this.authorizationAgent + ", authenticationScheme=" + this.authenticationScheme + ", powerOptCheckEnabled=" + this.powerOptCheckEnabled + ", spanContext=" + this.spanContext + ", preferredBrowser=" + this.preferredBrowser + ", preferredAuthMethod=" + this.preferredAuthMethod + ", accountTransferToken=" + this.accountTransferToken + ", suppressAccountPicker=" + this.suppressAccountPicker + ", signInWithGoogleCredential=" + this.signInWithGoogleCredential + ", tenantId=null, requestType=null)";
        }

        public final void userName(String str) {
            this.userName = str;
        }
    }

    public BrokerRequest(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, boolean z, String str16, String str17, String str18, SdkType sdkType, String str19, boolean z2, String str20, AbstractAuthenticationScheme abstractAuthenticationScheme, boolean z3, SerializableSpanContext serializableSpanContext, BrowserDescriptor browserDescriptor, PreferredAuthMethod preferredAuthMethod, String str21, boolean z4, SignInWithGoogleCredential signInWithGoogleCredential) {
        if (str3 == null) {
            f6.n("redirect is marked non-null but is null");
            throw null;
        }
        if (str4 == null) {
            f6.n("clientId is marked non-null but is null");
            throw null;
        }
        if (str11 == null) {
            f6.n("correlationId is marked non-null but is null");
            throw null;
        }
        if (str16 == null) {
            f6.n("applicationName is marked non-null but is null");
            throw null;
        }
        if (str17 == null) {
            f6.n("applicationVersion is marked non-null but is null");
            throw null;
        }
        if (str18 == null) {
            f6.n("msalVersion is marked non-null but is null");
            throw null;
        }
        if (sdkType == null) {
            f6.n("sdkType is marked non-null but is null");
            throw null;
        }
        if (str19 == null) {
            f6.n("environment is marked non-null but is null");
            throw null;
        }
        this.mAuthority = str;
        this.mScope = str2;
        this.mRedirect = str3;
        this.mClientId = str4;
        this.mUserName = str5;
        this.mHomeAccountId = str6;
        this.mLocalAccountId = str7;
        this.mExtraQueryStringParameter = str8;
        this.mRequestHeaders = str9;
        this.mExtraOptions = str10;
        this.mCorrelationId = str11;
        this.mPrompt = str12;
        this.mChildRedirectUri = str13;
        this.mChildClientId = str14;
        this.mClaims = str15;
        this.mForceRefresh = z;
        this.mApplicationName = str16;
        this.mApplicationVersion = str17;
        this.mMsalVersion = str18;
        this.mSdkType = sdkType;
        this.mEnvironment = str19;
        this.mMultipleCloudsSupported = z2;
        this.mAuthorizationAgent = str20;
        this.mAuthenticationScheme = abstractAuthenticationScheme;
        this.mPowerOptCheckEnabled = z3;
        this.mSpanContext = serializableSpanContext;
        this.mPreferredBrowser = browserDescriptor;
        this.mPreferredAuthMethod = preferredAuthMethod;
        this.mAccountTransferToken = str21;
        this.mSuppressAccountPicker = z4;
        this.mSignInWithGoogleCredential = signInWithGoogleCredential;
        this.mTenantId = null;
        this.mRequestType = null;
    }
}
