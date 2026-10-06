package com.microsoft.identity.common.java.providers.oauth2;

import com.google.gson.a;
import com.microsoft.identity.client.claims.ClaimsRequest;
import com.microsoft.identity.common.components.AndroidClockSkewManager;
import com.microsoft.identity.common.internal.providers.oauth2.AndroidAuthorizationStrategy;
import com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.logging.DiagnosticContext;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.net.HttpClient$HttpMethod;
import com.microsoft.identity.common.java.net.HttpResponse;
import com.microsoft.identity.common.java.net.UrlConnectionHttpClient;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.platform.Device;
import com.microsoft.identity.common.java.providers.microsoft.MicrosoftRefreshToken;
import com.microsoft.identity.common.java.providers.microsoft.MicrosoftTokenErrorResponse;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectorySlice;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAccount;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest.Builder;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationResult;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Configuration;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsTokenRequest;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsTokenResponse;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationResponse;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2StrategyParameters;
import com.microsoft.identity.common.java.providers.oauth2.TokenRequest;
import com.microsoft.identity.common.java.providers.oauth2.TokenResponse;
import com.microsoft.identity.common.java.providers.oauth2.TokenResult;
import com.microsoft.identity.common.java.telemetry.CliTelemInfo;
import com.microsoft.identity.common.java.telemetry.ClientDataInfo;
import com.microsoft.identity.common.java.util.CommonURIBuilder;
import com.microsoft.identity.common.java.util.FileUtil;
import com.microsoft.identity.common.java.util.IClockSkewManager;
import com.microsoft.identity.common.java.util.ObjectMapper;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.eq3;
import defpackage.f6;
import defpackage.gl4;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class OAuth2Strategy<GenericAccessToken, GenericAccount extends MicrosoftStsAccount, GenericAuthorizationRequest extends AuthorizationRequest, GenericAuthorizationRequestBuilder extends MicrosoftStsAuthorizationRequest.Builder, GenericAuthorizationStrategy extends AndroidAuthorizationStrategy, GenericOAuth2Configuration extends MicrosoftStsOAuth2Configuration, GenericOAuth2StrategyParameters extends OAuth2StrategyParameters, GenericAuthorizationResponse extends AuthorizationResponse, GenericRefreshToken extends MicrosoftRefreshToken, GenericTokenRequest extends TokenRequest, GenericTokenResponse extends TokenResponse, GenericTokenResult extends TokenResult, GenericAuthorizationResult extends MicrosoftStsAuthorizationResult> {
    protected final UrlConnectionHttpClient httpClient = UrlConnectionHttpClient.getDefaultInstance();
    protected final IClockSkewManager mClockSkewManager;
    protected final GenericOAuth2Configuration mConfig;
    protected final GenericOAuth2StrategyParameters mStrategyParameters;
    protected String mTokenEndpoint;

    /* JADX WARN: Multi-variable type inference failed */
    public OAuth2Strategy(MicrosoftStsOAuth2Configuration microsoftStsOAuth2Configuration, OAuth2StrategyParameters oAuth2StrategyParameters) {
        this.mConfig = microsoftStsOAuth2Configuration;
        this.mStrategyParameters = oAuth2StrategyParameters;
        if (oAuth2StrategyParameters.getPlatformComponents() != null) {
            this.mClockSkewManager = oAuth2StrategyParameters.getPlatformComponents().getClockSkewManager();
        } else {
            Logger.info("OAuth2Strategy", "No valid platform component to initialize ClockSkewManager with!");
            this.mClockSkewManager = null;
        }
    }

    public abstract MicrosoftStsTokenRequest createTokenRequest(MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest, AuthorizationResponse authorizationResponse, AbstractAuthenticationScheme abstractAuthenticationScheme) throws ClientException;

    public final String getAuthorityFromTokenEndpoint() {
        return this.mTokenEndpoint.toLowerCase(Locale.ROOT).replace("oauth2/v2.0/token", "");
    }

    public HttpResponse performTokenRequest(MicrosoftStsTokenRequest microsoftStsTokenRequest) throws IOException, ClientException {
        Logger.verbose("OAuth2Strategy:performTokenRequest", "Performing token request...");
        String strSerializeObjectToFormUrlEncoded = ObjectMapper.serializeObjectToFormUrlEncoded(microsoftStsTokenRequest);
        TreeMap treeMap = new TreeMap();
        treeMap.put("client-request-id", DiagnosticContext.INSTANCE.getRequestContext().get("correlation_id"));
        String libraryName = LibraryInfoHelper.getLibraryName();
        String libraryVersion = LibraryInfoHelper.getLibraryVersion();
        treeMap.putAll(Device.getPlatformIdParameters());
        treeMap.put("x-client-SKU", libraryName);
        treeMap.put("x-client-Ver", libraryVersion);
        treeMap.put("Content-Type", "application/x-www-form-urlencoded");
        treeMap.put("x-app-name", microsoftStsTokenRequest.getClientAppName());
        treeMap.put("x-app-ver", microsoftStsTokenRequest.getClientAppVersion());
        URL url = new URL(this.mTokenEndpoint);
        System.nanoTime();
        byte[] bytes = strSerializeObjectToFormUrlEncoded.getBytes("UTF-8");
        UrlConnectionHttpClient urlConnectionHttpClient = this.httpClient;
        urlConnectionHttpClient.getClass();
        HttpResponse httpResponseMethod = urlConnectionHttpClient.method(HttpClient$HttpMethod.POST, url, treeMap, bytes);
        System.nanoTime();
        SpanExtension.current().getClass();
        httpResponseMethod.getDate();
        long time = httpResponseMethod.getDate().getTime();
        IClockSkewManager iClockSkewManager = this.mClockSkewManager;
        if (iClockSkewManager != null) {
            ((AndroidClockSkewManager) iClockSkewManager).onTimestampReceived(time);
        }
        return httpResponseMethod;
    }

    public final TokenResult requestToken(MicrosoftStsTokenRequest microsoftStsTokenRequest) throws IOException, ClientException {
        MicrosoftTokenErrorResponse microsoftTokenErrorResponse;
        MicrosoftTokenErrorResponse microsoftTokenErrorResponse2;
        MicrosoftStsTokenResponse microsoftStsTokenResponse;
        String str;
        ClientDataInfo clientDataInfoFromPipeDelimited;
        Logger.verbose("OAuth2Strategy:requestToken", "Requesting token...");
        HttpResponse httpResponsePerformTokenRequest = performTokenRequest(microsoftStsTokenRequest);
        if (httpResponsePerformTokenRequest == null) {
            f6.n("response is marked non-null but is null");
            return null;
        }
        if (httpResponsePerformTokenRequest.getStatusCode() >= 400) {
            try {
                String body = httpResponsePerformTokenRequest.getBody();
                if (body == null) {
                    throw new NullPointerException("responseBody is marked non-null but is null");
                }
                if (body.isEmpty()) {
                    body = "{}";
                }
                microsoftTokenErrorResponse = (MicrosoftTokenErrorResponse) ObjectMapper.GSON.c(body, MicrosoftTokenErrorResponse.class);
                microsoftTokenErrorResponse.setStatusCode(httpResponsePerformTokenRequest.getStatusCode());
                if (httpResponsePerformTokenRequest.getHeaders() != null) {
                    Map<String, List<String>> headers = httpResponsePerformTokenRequest.getHeaders();
                    if (headers == null) {
                        f6.n("headersIn is marked non-null but is null");
                        return null;
                    }
                    microsoftTokenErrorResponse.setResponseHeadersJson(new a().i(headers));
                }
                microsoftTokenErrorResponse.setResponseBody(httpResponsePerformTokenRequest.getBody());
                microsoftTokenErrorResponse2 = microsoftTokenErrorResponse;
                microsoftStsTokenResponse = null;
            } catch (gl4 unused) {
                microsoftTokenErrorResponse = new MicrosoftTokenErrorResponse();
                String strValueOf = String.valueOf(httpResponsePerformTokenRequest.getStatusCode());
                microsoftTokenErrorResponse.setError(strValueOf);
                microsoftTokenErrorResponse.setErrorDescription("Received " + strValueOf + " status code from Server ");
            }
        } else {
            microsoftStsTokenResponse = (MicrosoftStsTokenResponse) ObjectMapper.GSON.c(httpResponsePerformTokenRequest.getBody(), MicrosoftStsTokenResponse.class);
            microsoftTokenErrorResponse2 = null;
        }
        TokenResult tokenResult = new TokenResult(microsoftStsTokenResponse, microsoftTokenErrorResponse2);
        FileUtil.logResult("MicrosoftStsTokenResponseHandler:handleTokenResponse", tokenResult);
        if (httpResponsePerformTokenRequest.getHeaders() != null) {
            List<String> list = httpResponsePerformTokenRequest.getHeaders().get("x-ms-clitelem");
            if (list != null && !list.isEmpty()) {
                CliTelemInfo cliTelemInfoFromXMsCliTelemHeader = CliTelemInfo.fromXMsCliTelemHeader(list.get(0));
                tokenResult.setCliTelemInfo(cliTelemInfoFromXMsCliTelemHeader);
                if (microsoftStsTokenResponse != null && cliTelemInfoFromXMsCliTelemHeader != null) {
                    microsoftStsTokenResponse.setSpeRing(cliTelemInfoFromXMsCliTelemHeader.getSpeRing());
                    microsoftStsTokenResponse.setRefreshTokenAge(cliTelemInfoFromXMsCliTelemHeader.getRefreshTokenAge());
                }
            }
            String headerValue = httpResponsePerformTokenRequest.getHeaderValue("x-ms-clientdata");
            if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_SERVER_CLIENT_DATA_TELEMETRY) && (clientDataInfoFromPipeDelimited = ClientDataInfo.fromPipeDelimited(headerValue)) != null) {
                clientDataInfoFromPipeDelimited.emitToSpan();
            }
            HashMap map = new HashMap();
            String headerValue2 = httpResponsePerformTokenRequest.getHeaderValue("xms-ccs-requestid");
            if (headerValue2 != null) {
                SpanExtension.current().getClass();
                if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.EXPOSE_CCS_REQUEST_ID_IN_TOKENRESPONSE)) {
                    map.put("xms-ccs-requestid", headerValue2);
                }
            }
            String headerValue3 = httpResponsePerformTokenRequest.getHeaderValue("x-ms-srs");
            if (headerValue3 != null) {
                SpanExtension.current().getClass();
                if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.EXPOSE_CCS_REQUEST_SEQUENCE_IN_TOKENRESPONSE)) {
                    map.put("x-ms-srs", headerValue3);
                }
            }
            if (microsoftStsTokenResponse != null) {
                if (microsoftStsTokenResponse.getExtraParameters() != null) {
                    for (Map.Entry<String, String> entry : microsoftStsTokenResponse.getExtraParameters()) {
                        map.put(entry.getKey(), entry.getValue());
                    }
                }
                microsoftStsTokenResponse.setExtraParameters(map.entrySet());
            }
        }
        if (tokenResult.getTokenResponse() != null) {
            tokenResult.getTokenResponse().getClass();
        }
        if (tokenResult.getSuccess()) {
            MicrosoftStsTokenResponse microsoftStsTokenResponse2 = (MicrosoftStsTokenResponse) tokenResult.getSuccessResponse();
            if (microsoftStsTokenResponse2 == null) {
                f6.n("response is marked non-null but is null");
                return null;
            }
            String tokenType = microsoftStsTokenRequest.getTokenType();
            String tokenType2 = microsoftStsTokenResponse2.getTokenType();
            if (tokenType != null && !tokenType.equalsIgnoreCase(tokenType2)) {
                throw new ClientException("auth_scheme_mismatch", eq3.l("Expected: [", tokenType, "]\nActual: [", tokenType2, "]"), null);
            }
            String scope = microsoftStsTokenRequest.getScope();
            boolean zContains = StringUtil.isNullOrEmpty(scope) ? false : scope.contains("urn:aad:tb:update:prt/.default");
            String str2 = "tokens_missing";
            String strConcat = "";
            if (zContains || !StringUtil.isNullOrEmpty(microsoftStsTokenResponse2.getAccessToken())) {
                str = null;
            } else {
                strConcat = "".concat(ClaimsRequest.ACCESS_TOKEN);
                str = "tokens_missing";
            }
            if (!"client_credentials".equalsIgnoreCase(microsoftStsTokenRequest.getGrantType()) && StringUtil.isNullOrEmpty(microsoftStsTokenResponse2.getIdToken())) {
                strConcat = strConcat.concat(" id_token");
                str = "tokens_missing";
            }
            if ("client_credentials".equalsIgnoreCase(microsoftStsTokenRequest.getGrantType()) || !StringUtil.isNullOrEmpty(microsoftStsTokenResponse2.getRefreshToken())) {
                str2 = str;
            } else {
                strConcat = strConcat.concat(" refresh_token");
            }
            if (str2 != null) {
                throw new ClientException(str2, "Missing required tokens of type: ".concat(strConcat), null);
            }
        }
        return tokenResult;
    }

    public final void setTokenEndpoint(String str) throws ClientException {
        AzureActiveDirectorySlice slice;
        this.mTokenEndpoint = str;
        GenericOAuth2Configuration genericoauth2configuration = this.mConfig;
        if (genericoauth2configuration == null || !(genericoauth2configuration instanceof MicrosoftStsOAuth2Configuration) || (slice = genericoauth2configuration.getSlice()) == null) {
            return;
        }
        try {
            CommonURIBuilder commonURIBuilder = new CommonURIBuilder(this.mTokenEndpoint);
            if (!StringUtil.isNullOrEmpty(slice.getSlice())) {
                commonURIBuilder.c("slice", slice.getSlice());
            }
            if (!StringUtil.isNullOrEmpty(slice.getDataCenter())) {
                commonURIBuilder.c("dc", slice.getDataCenter());
            }
            this.mTokenEndpoint = commonURIBuilder.build().toString();
        } catch (URISyntaxException e) {
            throw new ClientException("malformed_url", e.getMessage(), e);
        }
    }
}
