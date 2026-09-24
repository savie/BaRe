package com.microsoft.identity.common.java.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.internal.providers.oauth2.AndroidAuthorizationStrategy;
import com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.java.authscheme.PopAuthenticationSchemeInternal;
import com.microsoft.identity.common.java.authscheme.PopAuthenticationSchemeWithClientKeyInternal;
import com.microsoft.identity.common.java.authscheme.WebAppsPopAuthenticationSchemeInternal;
import com.microsoft.identity.common.java.challengehandlers.PKeyAuthChallengeFactory;
import com.microsoft.identity.common.java.crypto.IDevicePopManager;
import com.microsoft.identity.common.java.dto.IAccountRecord;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.logging.DiagnosticContext;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.net.HttpClient$HttpMethod;
import com.microsoft.identity.common.java.net.HttpResponse;
import com.microsoft.identity.common.java.net.UrlConnectionHttpClient;
import com.microsoft.identity.common.java.platform.AbstractDevicePopManager;
import com.microsoft.identity.common.java.platform.Device;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectoryCloud;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.ClientInfo;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationResponse;
import com.microsoft.identity.common.java.providers.oauth2.IDToken;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2StrategyParameters;
import com.microsoft.identity.common.java.providers.oauth2.OpenIdProviderConfiguration;
import com.microsoft.identity.common.java.providers.oauth2.OpenIdProviderConfigurationClient;
import com.microsoft.identity.common.java.providers.oauth2.TokenResult;
import com.microsoft.identity.common.java.util.CommonURIBuilder;
import com.microsoft.identity.common.java.util.ObjectMapper;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.f6;
import defpackage.g84;
import defpackage.q;
import defpackage.y5;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.AbstractMap;
import java.util.TreeMap;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MicrosoftStsOAuth2Strategy extends OAuth2Strategy<Object, MicrosoftStsAccount, MicrosoftStsAuthorizationRequest, MicrosoftStsAuthorizationRequest.Builder, AndroidAuthorizationStrategy, MicrosoftStsOAuth2Configuration, OAuth2StrategyParameters, MicrosoftStsAuthorizationResponse, MicrosoftStsRefreshToken, MicrosoftStsTokenRequest, MicrosoftStsTokenResponse, TokenResult, MicrosoftStsAuthorizationResult> {
    private final UrlConnectionHttpClient httpClient;
    private final OpenIdProviderConfiguration mOpenIdProviderConfiguration;

    public MicrosoftStsOAuth2Strategy(MicrosoftStsOAuth2Configuration microsoftStsOAuth2Configuration, OAuth2StrategyParameters oAuth2StrategyParameters) throws ClientException {
        super(microsoftStsOAuth2Configuration, oAuth2StrategyParameters);
        this.httpClient = UrlConnectionHttpClient.getDefaultInstance();
        if (microsoftStsOAuth2Configuration == null) {
            f6.n("config is marked non-null but is null");
            throw null;
        }
        if (!oAuth2StrategyParameters.isUsingOpenIdConfiguration()) {
            setTokenEndpoint(microsoftStsOAuth2Configuration.getTokenEndpoint().toString());
            return;
        }
        try {
            if (microsoftStsOAuth2Configuration.getSlice() == null || microsoftStsOAuth2Configuration.getSlice().getDataCenter() == null) {
                this.mOpenIdProviderConfiguration = new OpenIdProviderConfigurationClient().loadOpenIdProviderConfigurationFromAuthority(this.mConfig.getAuthorityUrl().toString());
            } else {
                this.mOpenIdProviderConfiguration = new OpenIdProviderConfigurationClient().loadOpenIdProviderConfigurationFromAuthorityWithExtraParams(this.mConfig.getAuthorityUrl().toString(), "?dc=" + microsoftStsOAuth2Configuration.getSlice().getDataCenter());
            }
            String tokenEndpoint = this.mOpenIdProviderConfiguration.getTokenEndpoint();
            if (StringUtil.isNullOrEmpty(tokenEndpoint)) {
                setTokenEndpoint(microsoftStsOAuth2Configuration.getTokenEndpoint().toString());
            } else {
                setTokenEndpoint(tokenEndpoint);
            }
        } catch (ServiceException e) {
            Logger.error("MicrosoftStsOAuth2Strategy", "There was a problem with loading the openIdConfiguration", e);
            setTokenEndpoint(microsoftStsOAuth2Configuration.getTokenEndpoint().toString());
        }
    }

    public final MicrosoftStsAccount createAccount(MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        if (microsoftStsTokenResponse == null) {
            f6.n("response is marked non-null but is null");
            return null;
        }
        Logger.verbose("MicrosoftStsOAuth2Strategy:createAccount", "Creating account from TokenResponse...");
        try {
            MicrosoftStsAccount microsoftStsAccount = new MicrosoftStsAccount(new IDToken(microsoftStsTokenResponse.getIdToken()), new ClientInfo(microsoftStsTokenResponse.getClientInfo()));
            Logger.verbose("MicrosoftStsAccount", "Init: MicrosoftStsAccount");
            microsoftStsAccount.setEnvironment(getIssuerCacheIdentifierFromTokenEndpoint());
            return microsoftStsAccount;
        } catch (ServiceException e) {
            Logger.error("MicrosoftStsOAuth2Strategy:createAccount", "Failed to construct IDToken or ClientInfo", null);
            Logger.errorPII(e, "MicrosoftStsOAuth2Strategy:createAccount", "Failed with Exception");
            throw new RuntimeException();
        }
    }

    public final MicrosoftStsAuthorizationRequest.Builder createAuthorizationRequestBuilder(IAccountRecord iAccountRecord) {
        Logger.info("MicrosoftStsOAuth2Strategy:createAuthorizationRequestBuilder", "Creating AuthorizationRequestBuilder");
        Logger.info("MicrosoftStsOAuth2Strategy:createAuthorizationRequestBuilder", "Creating AuthorizationRequestBuilder...");
        MicrosoftStsAuthorizationRequest.Builder builder = new MicrosoftStsAuthorizationRequest.Builder();
        GenericOAuth2Configuration genericoauth2configuration = this.mConfig;
        builder.setAuthority(genericoauth2configuration.getAuthorityUrl());
        if (genericoauth2configuration.getSlice() != null) {
            Logger.info("MicrosoftStsOAuth2Strategy:createAuthorizationRequestBuilder", "Setting slice params...");
            builder.setSlice(genericoauth2configuration.getSlice());
        }
        builder.setLibraryName(LibraryInfoHelper.getLibraryName());
        builder.setLibraryVersion(LibraryInfoHelper.getLibraryVersion());
        builder.setFlightParameters(genericoauth2configuration.getFlightParameters());
        builder.setMultipleCloudAware(genericoauth2configuration.getMultipleCloudsSupported());
        builder.setOpenIdProviderConfiguration(this.mOpenIdProviderConfiguration);
        if (iAccountRecord != null) {
            AbstractMap.SimpleEntry tenantInfo = StringUtil.getTenantInfo(iAccountRecord.getHomeAccountId());
            if (!StringUtil.isNullOrEmpty((String) tenantInfo.getKey()) && !StringUtil.isNullOrEmpty((String) tenantInfo.getValue())) {
                builder.setUid((String) tenantInfo.getKey());
                builder.setUtid((String) tenantInfo.getValue());
                Logger.infoPII("MicrosoftStsOAuth2Strategy:createAuthorizationRequestBuilder", "Builder w/ uid: [" + ((String) tenantInfo.getKey()) + "]");
                Logger.infoPII("MicrosoftStsOAuth2Strategy:createAuthorizationRequestBuilder", "Builder w/ utid: [" + ((String) tenantInfo.getValue()) + "]");
            }
        }
        return builder;
    }

    public final MicrosoftStsTokenRequest createRefreshTokenRequest(AbstractAuthenticationScheme abstractAuthenticationScheme) throws ClientException {
        if (abstractAuthenticationScheme == null) {
            f6.n("authScheme is marked non-null but is null");
            return null;
        }
        Logger.verbose("MicrosoftStsOAuth2Strategy:createRefreshTokenRequest", "Creating refresh token request");
        MicrosoftStsTokenRequest microsoftStsTokenRequest = new MicrosoftStsTokenRequest();
        microsoftStsTokenRequest.setGrantType("refresh_token");
        if (abstractAuthenticationScheme instanceof PopAuthenticationSchemeInternal) {
            microsoftStsTokenRequest.setTokenType();
            AbstractDevicePopManager abstractDevicePopManager = (AbstractDevicePopManager) this.mStrategyParameters.getPlatformComponents().getDefaultDevicePopManager();
            if (!abstractDevicePopManager.asymmetricKeyExists()) {
                abstractDevicePopManager.generateAsymmetricKey();
            }
            microsoftStsTokenRequest.setRequestConfirmation(abstractDevicePopManager.getRequestConfirmation());
            return microsoftStsTokenRequest;
        }
        if (abstractAuthenticationScheme instanceof PopAuthenticationSchemeWithClientKeyInternal) {
            microsoftStsTokenRequest.setTokenType();
            microsoftStsTokenRequest.setRequestConfirmation(((PopAuthenticationSchemeWithClientKeyInternal) abstractAuthenticationScheme).getRequestConfirmation());
            return microsoftStsTokenRequest;
        }
        if (abstractAuthenticationScheme instanceof WebAppsPopAuthenticationSchemeInternal) {
            microsoftStsTokenRequest.setTokenType();
            microsoftStsTokenRequest.setRequestConfirmation(((WebAppsPopAuthenticationSchemeInternal) abstractAuthenticationScheme).getRequestConfirmation());
        }
        return microsoftStsTokenRequest;
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.OAuth2Strategy
    public final MicrosoftStsTokenRequest createTokenRequest(MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest, AuthorizationResponse authorizationResponse, AbstractAuthenticationScheme abstractAuthenticationScheme) throws ClientException {
        String string;
        MicrosoftStsAuthorizationResponse microsoftStsAuthorizationResponse = (MicrosoftStsAuthorizationResponse) authorizationResponse;
        if (microsoftStsAuthorizationRequest == null) {
            f6.n("request is marked non-null but is null");
            return null;
        }
        if (abstractAuthenticationScheme == null) {
            f6.n("authScheme is marked non-null but is null");
            return null;
        }
        Logger.verbose("MicrosoftStsOAuth2Strategy:createTokenRequest", "Creating TokenRequest...");
        if (this.mConfig.getMultipleCloudsSupported() || microsoftStsAuthorizationRequest.getMultipleCloudAware().booleanValue()) {
            Logger.verbose("MicrosoftStsOAuth2Strategy", "get cloud specific authority based on authorization response.");
            if (StringUtil.isNullOrEmpty(microsoftStsAuthorizationResponse.getCloudInstanceHostName()) || StringUtil.isNullOrEmpty(microsoftStsAuthorizationResponse.getCloudInstanceHostName())) {
                string = this.mTokenEndpoint;
            } else {
                try {
                    CommonURIBuilder commonURIBuilder = new CommonURIBuilder(this.mTokenEndpoint);
                    commonURIBuilder.setHost(microsoftStsAuthorizationResponse.getCloudInstanceHostName());
                    string = commonURIBuilder.build().toString();
                } catch (URISyntaxException e) {
                    q.i("malformed_url", "Failed to construct token endpoint from getCloudInstanceHostName()", e);
                    return null;
                }
            }
            setTokenEndpoint(string);
        }
        MicrosoftStsTokenRequest microsoftStsTokenRequest = new MicrosoftStsTokenRequest();
        microsoftStsTokenRequest.setCodeVerifier(microsoftStsAuthorizationRequest.getPkceCodeVerifier());
        microsoftStsTokenRequest.setCode(microsoftStsAuthorizationResponse.getCode());
        microsoftStsTokenRequest.setRedirectUri(microsoftStsAuthorizationRequest.getRedirectUri());
        microsoftStsTokenRequest.setClientId(microsoftStsAuthorizationRequest.getClientId());
        microsoftStsTokenRequest.setScope(microsoftStsAuthorizationRequest.getTokenScope());
        microsoftStsTokenRequest.setClaims(microsoftStsAuthorizationRequest.getClaims());
        try {
            microsoftStsTokenRequest.setCorrelationId(UUID.fromString(DiagnosticContext.INSTANCE.getRequestContext().get("correlation_id")));
        } catch (IllegalArgumentException e2) {
            Logger.error("MicrosoftSTSOAuth2Strategy", "Correlation id on diagnostic context is not a UUID.", e2);
        }
        if (microsoftStsAuthorizationResponse.getDeviceCode() != null) {
            microsoftStsTokenRequest.setGrantType("urn:ietf:params:oauth:grant-type:device_code");
            microsoftStsTokenRequest.setDeviceCode(microsoftStsAuthorizationResponse.getDeviceCode());
        } else {
            microsoftStsTokenRequest.setGrantType("authorization_code");
        }
        if (abstractAuthenticationScheme instanceof PopAuthenticationSchemeInternal) {
            microsoftStsTokenRequest.setTokenType();
            AbstractDevicePopManager abstractDevicePopManager = (AbstractDevicePopManager) this.mStrategyParameters.getPlatformComponents().getDefaultDevicePopManager();
            if (!abstractDevicePopManager.asymmetricKeyExists()) {
                Logger.verbosePII("MicrosoftStsOAuth2Strategy", "Generated new PoP asymmetric key with thumbprint: " + abstractDevicePopManager.generateAsymmetricKey());
            }
            microsoftStsTokenRequest.setRequestConfirmation(abstractDevicePopManager.getRequestConfirmation());
        } else if (abstractAuthenticationScheme instanceof PopAuthenticationSchemeWithClientKeyInternal) {
            microsoftStsTokenRequest.setTokenType();
            microsoftStsTokenRequest.setRequestConfirmation(((PopAuthenticationSchemeWithClientKeyInternal) abstractAuthenticationScheme).getRequestConfirmation());
        } else if (abstractAuthenticationScheme instanceof WebAppsPopAuthenticationSchemeInternal) {
            microsoftStsTokenRequest.setTokenType();
            microsoftStsTokenRequest.setRequestConfirmation(((WebAppsPopAuthenticationSchemeInternal) abstractAuthenticationScheme).getRequestConfirmation());
        }
        return microsoftStsTokenRequest;
    }

    public final String getDeviceAtPopThumbprint() {
        IDevicePopManager defaultDevicePopManager;
        GenericOAuth2StrategyParameters genericoauth2strategyparameters = this.mStrategyParameters;
        if (genericoauth2strategyparameters.getAuthenticationScheme() instanceof PopAuthenticationSchemeWithClientKeyInternal) {
            return ((PopAuthenticationSchemeWithClientKeyInternal) genericoauth2strategyparameters.getAuthenticationScheme()).getKid();
        }
        try {
            defaultDevicePopManager = genericoauth2strategyparameters.getPlatformComponents().getDefaultDevicePopManager();
        } catch (ClientException e) {
            Logger.error("MicrosoftStsOAuth2Strategy", e.getMessage(), e);
            defaultDevicePopManager = null;
        }
        if (defaultDevicePopManager == null) {
            Logger.warn("MicrosoftStsOAuth2Strategy", "DevicePopManager does not exist.");
            return null;
        }
        AbstractDevicePopManager abstractDevicePopManager = (AbstractDevicePopManager) defaultDevicePopManager;
        if (!abstractDevicePopManager.asymmetricKeyExists()) {
            g84.h("Symmetric keys do not exist.");
            return null;
        }
        try {
            return abstractDevicePopManager.getAsymmetricKeyThumbprint();
        } catch (ClientException e2) {
            Logger.error("MicrosoftStsOAuth2Strategy", "Key exists. But failed to load thumbprint.", e2);
            y5.k(e2);
            return null;
        }
    }

    public String getIssuerCacheIdentifierFromTokenEndpoint() {
        URL url;
        String host;
        try {
            url = new URL(this.mTokenEndpoint);
        } catch (MalformedURLException e) {
            Logger.error("MicrosoftStsOAuth2Strategy:getIssuerCacheIdentifierFromTokenEndpoint", "Getting issuer cache identifier from token endpoint failed due to malformed URL (mTokenEndpoint)...", e);
            url = null;
        }
        if (url == null) {
            return null;
        }
        AzureActiveDirectoryCloud azureActiveDirectoryCloud = AzureActiveDirectory.getAzureActiveDirectoryCloud(url);
        if (azureActiveDirectoryCloud != null) {
            host = azureActiveDirectoryCloud.getPreferredCacheHostName();
            Logger.info("MicrosoftStsOAuth2Strategy:getIssuerCacheIdentifierFromAuthority", "Using preferred cache host name...");
            Logger.infoPII("MicrosoftStsOAuth2Strategy:getIssuerCacheIdentifierFromAuthority", "Preferred cache hostname: [" + host + "]");
        } else {
            host = url.getHost();
        }
        return host;
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.OAuth2Strategy
    public final HttpResponse performTokenRequest(MicrosoftStsTokenRequest microsoftStsTokenRequest) throws IOException, ClientException {
        HttpResponse httpResponsePerformTokenRequest = super.performTokenRequest(microsoftStsTokenRequest);
        if (httpResponsePerformTokenRequest.getStatusCode() != 401 || httpResponsePerformTokenRequest.getHeaders() == null || !httpResponsePerformTokenRequest.getHeaders().containsKey("WWW-Authenticate")) {
            return httpResponsePerformTokenRequest;
        }
        Logger.info("MicrosoftStsOAuth2Strategy:performTokenRequest", "Receiving device certificate challenge request. ");
        String strSerializeObjectToFormUrlEncoded = ObjectMapper.serializeObjectToFormUrlEncoded(microsoftStsTokenRequest);
        TreeMap treeMap = new TreeMap();
        treeMap.put("client-request-id", DiagnosticContext.INSTANCE.getRequestContext().get("correlation_id"));
        treeMap.putAll(Device.getPlatformIdParameters());
        treeMap.put("x-client-SKU", LibraryInfoHelper.getLibraryName());
        treeMap.put("x-client-Ver", LibraryInfoHelper.getLibraryVersion());
        treeMap.put("x-app-name", microsoftStsTokenRequest.getClientAppName());
        treeMap.put("x-app-ver", microsoftStsTokenRequest.getClientAppVersion());
        String str = httpResponsePerformTokenRequest.getHeaders().get("WWW-Authenticate").get(0);
        Logger.info("MicrosoftStsOAuth2Strategy#performPkeyAuthRequest", "Device certificate challenge request. ");
        Logger.infoPII("MicrosoftStsOAuth2Strategy#performPkeyAuthRequest", "Challenge header: " + str);
        try {
            URL url = new URL(this.mTokenEndpoint);
            treeMap.putAll(PKeyAuthChallengeFactory.getPKeyAuthChallengeFromTokenEndpointResponse(str, url.toString()).getChallengeHeader());
            treeMap.put("Content-Type", "application/x-www-form-urlencoded");
            UrlConnectionHttpClient urlConnectionHttpClient = this.httpClient;
            byte[] bytes = strSerializeObjectToFormUrlEncoded.getBytes("UTF-8");
            urlConnectionHttpClient.getClass();
            return urlConnectionHttpClient.method(HttpClient$HttpMethod.POST, url, treeMap, bytes);
        } catch (UnsupportedEncodingException e) {
            q.i("unsupported_encoding", "Unsupported encoding", e);
            return null;
        }
    }
}
