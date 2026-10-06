package com.microsoft.identity.common.java.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.providers.microsoft.MicrosoftAuthorizationRequest;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectorySlice;
import com.microsoft.identity.common.java.providers.oauth2.OpenIdProviderConfiguration;
import com.microsoft.identity.common.java.ui.PreferredAuthMethod;
import com.microsoft.identity.common.java.util.CommonURIBuilder;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.java.util.UrlUtil;
import defpackage.l0;
import defpackage.q03;
import defpackage.y77;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MicrosoftStsAuthorizationRequest extends MicrosoftAuthorizationRequest<MicrosoftStsAuthorizationRequest> {
    private final transient String mApplicationIdentifier;

    @q03
    @y77("cpVersion")
    private final String mCompanyPortalVersion;
    protected final transient Map<String, String> mFlightParameters;
    private final transient OpenIdProviderConfiguration mOpenIdProviderConfiguration;

    @q03
    @y77("prompt")
    private final String mPrompt;
    protected final transient AzureActiveDirectorySlice mSlice;

    @y77("switch_browser")
    private final String mSwitchBrowser;
    private final transient String mTokenScope;

    @y77("login_req")
    private final String mUid;

    @y77("domain_req")
    private final String mUtid;

    public MicrosoftStsAuthorizationRequest(Builder builder) {
        super(builder);
        this.mPrompt = builder.mPrompt;
        this.mUid = builder.mUid;
        this.mUtid = builder.mUtid;
        this.mCompanyPortalVersion = builder.mCompanyPortalVersion;
        this.mTokenScope = builder.mTokenScope;
        this.mSlice = builder.mSlice;
        this.mFlightParameters = builder.mFlightParameters;
        this.mApplicationIdentifier = builder.mApplicationIdentifier;
        this.mOpenIdProviderConfiguration = builder.mOpenIdProviderConfiguration;
        this.mSwitchBrowser = null;
    }

    public final String getApplicationIdentifier() {
        return this.mApplicationIdentifier;
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.AuthorizationRequest
    public final String getAuthorizationEndpoint() throws ClientException {
        OpenIdProviderConfiguration openIdProviderConfiguration = this.mOpenIdProviderConfiguration;
        if (openIdProviderConfiguration != null) {
            return openIdProviderConfiguration.getAuthorizationEndpoint();
        }
        if (getAuthority() == null) {
            Logger.error("MicrosoftStsAuthorizationRequest:getAuthorizationEndpoint", "Authority is null. cannot construct authorization endpoint URL.", null);
            l0.e("Authority is null.");
            return null;
        }
        try {
            URL authority = getAuthority();
            try {
                if (authority != null) {
                    return UrlUtil.appendPathAndQueryToURL(authority, "oAuth2/v2.0/authorize").toString();
                }
                throw new NullPointerException("urlToAppend is marked non-null but is null");
            } catch (MalformedURLException e) {
                e = e;
                throw new ClientException("malformed_url", e.getMessage(), e);
            }
        } catch (MalformedURLException | URISyntaxException e2) {
            e = e2;
        }
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.AuthorizationRequest
    public final URI getAuthorizationRequestAsHttpRequest() throws ClientException {
        CommonURIBuilder commonURIBuilder = new CommonURIBuilder(super.getAuthorizationRequestAsHttpRequest());
        commonURIBuilder.addParametersIfAbsent(this.mFlightParameters);
        AzureActiveDirectorySlice azureActiveDirectorySlice = this.mSlice;
        if (azureActiveDirectorySlice != null) {
            if (!StringUtil.isNullOrEmpty(azureActiveDirectorySlice.getSlice())) {
                commonURIBuilder.addParameterIfAbsent("slice", azureActiveDirectorySlice.getSlice());
            }
            if (!StringUtil.isNullOrEmpty(azureActiveDirectorySlice.getDataCenter())) {
                commonURIBuilder.addParameterIfAbsent("dc", azureActiveDirectorySlice.getDataCenter());
            }
        }
        if (!StringUtil.isNullOrEmpty(getLoginHint())) {
            commonURIBuilder.addParameterIfAbsent("hsu", "1");
        }
        if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_SERVER_CLIENT_DATA_TELEMETRY)) {
            commonURIBuilder.addParameterIfAbsent("clidata", "1");
        }
        try {
            return commonURIBuilder.build();
        } catch (URISyntaxException e) {
            throw new ClientException("malformed_url", e.getMessage(), e);
        }
    }

    public final String getTokenScope() {
        return this.mTokenScope;
    }

    public final String getUtid() {
        return this.mUtid;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class Builder {
        private String mApplicationIdentifier;
        private URL mAuthority;
        private String mBrkClientId;
        private String mBrkRedirectUri;
        private String mClaims;
        private String mClientId;
        private String mCompanyPortalVersion;
        private UUID mCorrelationId;
        private String mDomainHint;
        public ArrayList mExtraQueryParams;
        private Map<String, String> mFlightParameters;
        private String mLibraryName;
        private String mLibraryVersion;
        private String mLoginHint;
        private Boolean mMultipleCloudAware;
        private OpenIdProviderConfiguration mOpenIdProviderConfiguration;
        private PreferredAuthMethod mPreferredAuthMethod;
        private String mPrompt;
        private String mRedirectUri;
        private HashMap<String, String> mRequestHeaders;
        private String mScope;
        private AzureActiveDirectorySlice mSlice;
        private String mState;
        private String mTokenScope;
        private String mUid;
        private String mUtid;
        private boolean mWebViewZoomControlsEnabled = false;
        private boolean mWebViewZoomEnabled = false;

        public Builder() {
            setState(UUID.randomUUID().toString() + "-" + UUID.randomUUID().toString());
            this.mFlightParameters = new HashMap();
        }

        public final void setApplicationIdentifier(String str) {
            this.mApplicationIdentifier = str;
        }

        public final void setAuthority(URL url) {
            this.mAuthority = url;
        }

        public final Builder setBrkClientId(String str) {
            this.mBrkClientId = str;
            return this;
        }

        public final Builder setBrkRedirectUri(String str) {
            this.mBrkRedirectUri = str;
            return this;
        }

        public final Builder setClaims(String str) {
            this.mClaims = str;
            return this;
        }

        public final Builder setClientId(String str) {
            this.mClientId = str;
            return this;
        }

        public final void setCorrelationId(UUID uuid) {
            this.mCorrelationId = uuid;
        }

        public final void setDomainHint(String str) {
            this.mDomainHint = str;
        }

        public final void setFlightParameters(HashMap map) {
            this.mFlightParameters = map;
        }

        public final void setInstalledCompanyPortalVersion(String str) {
            this.mCompanyPortalVersion = str;
        }

        public final void setLibraryName(String str) {
            this.mLibraryName = str;
        }

        public final void setLibraryVersion(String str) {
            this.mLibraryVersion = str;
        }

        public final void setLoginHint(String str) {
            this.mLoginHint = str;
        }

        public final void setMultipleCloudAware(boolean z) {
            this.mMultipleCloudAware = Boolean.valueOf(z);
        }

        public final void setOpenIdProviderConfiguration(OpenIdProviderConfiguration openIdProviderConfiguration) {
            this.mOpenIdProviderConfiguration = openIdProviderConfiguration;
        }

        public final void setPreferredAuthMethod(PreferredAuthMethod preferredAuthMethod) {
            this.mPreferredAuthMethod = preferredAuthMethod;
        }

        public final void setPrompt(String str) {
            this.mPrompt = str;
        }

        public final Builder setRedirectUri(String str) {
            this.mRedirectUri = str;
            return this;
        }

        public final Builder setRequestHeaders(HashMap map) {
            this.mRequestHeaders = map;
            return this;
        }

        public final Builder setScope(String str) {
            this.mScope = str;
            return this;
        }

        public final void setSlice(AzureActiveDirectorySlice azureActiveDirectorySlice) {
            this.mSlice = azureActiveDirectorySlice;
        }

        public final Builder setState(String str) {
            this.mState = str;
            return this;
        }

        public final void setTokenScope(String str) {
            this.mTokenScope = str;
        }

        public final void setUid(String str) {
            this.mUid = str;
        }

        public final void setUtid(String str) {
            this.mUtid = str;
        }

        public final void setWebViewZoomControlsEnabled(boolean z) {
            this.mWebViewZoomControlsEnabled = z;
        }

        public final Builder setWebViewZoomEnabled(boolean z) {
            this.mWebViewZoomEnabled = z;
            return this;
        }
    }
}
