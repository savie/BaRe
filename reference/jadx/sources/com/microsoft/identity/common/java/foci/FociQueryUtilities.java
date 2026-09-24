package com.microsoft.identity.common.java.foci;

import com.microsoft.identity.common.java.authscheme.BearerAuthenticationSchemeInternal;
import com.microsoft.identity.common.java.cache.MsalOAuth2TokenCache;
import com.microsoft.identity.common.java.controllers.BaseController;
import com.microsoft.identity.common.java.dto.IAccountRecord;
import com.microsoft.identity.common.java.dto.RefreshTokenRecord;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.providers.microsoft.MicrosoftTokenResponse;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Configuration;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsTokenRequest;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2StrategyParameters;
import com.microsoft.identity.common.java.providers.oauth2.TokenResult;
import com.microsoft.identity.common.java.util.CommonURIBuilder;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.f6;
import defpackage.v57;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class FociQueryUtilities {
    public static MicrosoftStsTokenRequest createTokenRequest(String str, String str2, String str3, String str4, MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy, UUID uuid) throws ClientException {
        if (str == null) {
            f6.n("clientId is marked non-null but is null");
            return null;
        }
        if (str2 == null) {
            f6.n("scopes is marked non-null but is null");
            return null;
        }
        if (str3 == null) {
            f6.n("refreshToken is marked non-null but is null");
            return null;
        }
        if (str4 == null) {
            f6.n("redirectUri is marked non-null but is null");
            return null;
        }
        MicrosoftStsTokenRequest microsoftStsTokenRequestCreateRefreshTokenRequest = microsoftStsOAuth2Strategy.createRefreshTokenRequest(new BearerAuthenticationSchemeInternal());
        microsoftStsTokenRequestCreateRefreshTokenRequest.setClientId(str);
        microsoftStsTokenRequestCreateRefreshTokenRequest.setScope(str2);
        microsoftStsTokenRequestCreateRefreshTokenRequest.setCorrelationId(uuid);
        microsoftStsTokenRequestCreateRefreshTokenRequest.setRefreshToken(str3);
        microsoftStsTokenRequestCreateRefreshTokenRequest.setRedirectUri(str4);
        microsoftStsTokenRequestCreateRefreshTokenRequest.setIdTokenVersion("2");
        return microsoftStsTokenRequestCreateRefreshTokenRequest;
    }

    public static void tryFociTokenWithGivenClientId(MsalOAuth2TokenCache msalOAuth2TokenCache, String str, String str2, RefreshTokenRecord refreshTokenRecord, IAccountRecord iAccountRecord) throws IOException, ClientException {
        String delimitedDefaultScopeString;
        if (msalOAuth2TokenCache == null) {
            f6.n("brokerOAuth2TokenCache is marked non-null but is null");
            return;
        }
        if (str == null) {
            f6.n("clientId is marked non-null but is null");
            return;
        }
        if (str2 == null) {
            f6.n("redirectUri is marked non-null but is null");
            return;
        }
        if (iAccountRecord == null) {
            f6.n("accountRecord is marked non-null but is null");
            return;
        }
        MicrosoftStsOAuth2Configuration microsoftStsOAuth2Configuration = new MicrosoftStsOAuth2Configuration();
        CommonURIBuilder commonURIBuilder = new CommonURIBuilder();
        commonURIBuilder.setScheme();
        commonURIBuilder.setHost(refreshTokenRecord.getEnvironment());
        commonURIBuilder.setPath(StringUtil.isNullOrEmpty(iAccountRecord.getRealm()) ? "common" : iAccountRecord.getRealm());
        try {
            microsoftStsOAuth2Configuration.setAuthorityUrl(new URL(commonURIBuilder.build().toString()));
            MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy = new MicrosoftStsOAuth2Strategy(microsoftStsOAuth2Configuration, new OAuth2StrategyParameters.OAuth2StrategyParametersBuilder().build());
            String secret = refreshTokenRecord.getSecret();
            if (str == "87749df4-7ccf-48f8-aa87-704bad0e0e16" || str.equals("87749df4-7ccf-48f8-aa87-704bad0e0e16")) {
                v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(LibraryInfoHelper.createSpan("SetScopeForDMAgentForFoci"));
                try {
                    delimitedDefaultScopeString = "https://devicemgmt.teams.microsoft.com/.default " + BaseController.getDelimitedDefaultScopeString();
                    Logger.info("FociQueryUtilities:tryFociTokenWithGivenClientId", "Teams agent client ID - making a test request with teams agent resource.");
                    v57VarMakeCurrentSpan.close();
                } catch (Throwable th) {
                    try {
                        v57VarMakeCurrentSpan.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            } else {
                delimitedDefaultScopeString = BaseController.getDelimitedDefaultScopeString();
            }
            String str3 = delimitedDefaultScopeString;
            UUID uuidRandomUUID = UUID.randomUUID();
            Logger.verbose("FociQueryUtilities:tryFociTokenWithGivenClientId", "Create the token request with correlationId [" + uuidRandomUUID + "]");
            MicrosoftStsTokenRequest microsoftStsTokenRequestCreateTokenRequest = createTokenRequest(str, str3, secret, str2, microsoftStsOAuth2Strategy, uuidRandomUUID);
            Logger.verbose("FociQueryUtilities:tryFociTokenWithGivenClientId", "Start refreshing token (to verify foci) with correlationId [" + uuidRandomUUID + "]");
            TokenResult tokenResultRequestToken = microsoftStsOAuth2Strategy.requestToken(microsoftStsTokenRequestCreateTokenRequest);
            Logger.verbose("FociQueryUtilities:tryFociTokenWithGivenClientId", "Is the client ID able to use the foci? [" + tokenResultRequestToken.getSuccess() + "] with correlationId [" + uuidRandomUUID + "]");
            if (tokenResultRequestToken.getSuccess()) {
                MicrosoftStsAuthorizationRequest.Builder redirectUri = microsoftStsOAuth2Strategy.createAuthorizationRequestBuilder(iAccountRecord).setClientId(str).setRedirectUri(str2);
                redirectUri.setCorrelationId(uuidRandomUUID);
                AuthorizationRequest microsoftStsAuthorizationRequest = new MicrosoftStsAuthorizationRequest(redirectUri.setScope(str3));
                Logger.verbose("FociQueryUtilities:tryFociTokenWithGivenClientId", "Saving records to cache with client id".concat(str));
                msalOAuth2TokenCache.save(microsoftStsOAuth2Strategy, microsoftStsAuthorizationRequest, (MicrosoftTokenResponse) tokenResultRequestToken.getTokenResponse());
            }
        } catch (URISyntaxException e) {
            throw new ClientException("malformed_url", e.getMessage(), e);
        }
    }
}
