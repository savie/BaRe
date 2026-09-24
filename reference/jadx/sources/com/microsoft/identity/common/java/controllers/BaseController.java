package com.microsoft.identity.common.java.controllers;

import com.microsoft.identity.common.internal.platform.AndroidPlatformUtil;
import com.microsoft.identity.common.java.AuthenticationConstants;
import com.microsoft.identity.common.java.authorities.Authority;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryAuthority;
import com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.microsoft.identity.common.java.cache.CacheRecord;
import com.microsoft.identity.common.java.cache.ICacheRecord;
import com.microsoft.identity.common.java.cache.MicrosoftStsAccountCredentialAdapter;
import com.microsoft.identity.common.java.cache.MsalOAuth2TokenCache;
import com.microsoft.identity.common.java.commands.parameters.CommandParameters;
import com.microsoft.identity.common.java.commands.parameters.InteractiveTokenCommandParameters;
import com.microsoft.identity.common.java.commands.parameters.RemoveAccountCommandParameters;
import com.microsoft.identity.common.java.commands.parameters.SilentTokenCommandParameters;
import com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters;
import com.microsoft.identity.common.java.dto.AccessTokenRecord;
import com.microsoft.identity.common.java.dto.AccountRecord;
import com.microsoft.identity.common.java.dto.IdTokenRecord;
import com.microsoft.identity.common.java.dto.RefreshTokenRecord;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.logging.DiagnosticContext;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsTokenRequest;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsTokenResponse;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.java.providers.oauth2.OpenIdConnectPromptParameter;
import com.microsoft.identity.common.java.providers.oauth2.TokenResult;
import com.microsoft.identity.common.java.request.SdkType;
import com.microsoft.identity.common.java.result.AcquireTokenResult;
import com.microsoft.identity.common.java.result.LocalAuthenticationResult;
import com.microsoft.identity.common.java.telemetry.CliTelemInfo;
import com.microsoft.identity.common.java.telemetry.Telemetry;
import com.microsoft.identity.common.java.telemetry.events.CacheEndEvent;
import com.microsoft.identity.common.java.util.FileUtil;
import com.microsoft.identity.common.java.util.ObjectMapper;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.java.util.ported.PropertyBag;
import defpackage.f6;
import defpackage.fz5;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class BaseController {
    public static HashSet addDefaultScopes(TokenCommandParameters tokenCommandParameters) {
        if (tokenCommandParameters == null) {
            f6.n("commandParameters is marked non-null but is null");
            return null;
        }
        HashSet scopes = tokenCommandParameters.getScopes();
        scopes.addAll(AuthenticationConstants.DEFAULT_SCOPES);
        scopes.removeAll(Arrays.asList("", null));
        return scopes;
    }

    public static void finalizeCacheRecordForResult(ICacheRecord iCacheRecord, AbstractAuthenticationScheme abstractAuthenticationScheme) throws ClientException {
        if (iCacheRecord == null) {
            f6.n("cacheRecord is marked non-null but is null");
            return;
        }
        if (abstractAuthenticationScheme == null) {
            f6.n("scheme is marked non-null but is null");
        } else {
            if (!(abstractAuthenticationScheme instanceof TokenAuthenticationScheme) || StringUtil.isNullOrEmpty(iCacheRecord.getAccessToken().getSecret())) {
                return;
            }
            iCacheRecord.getAccessToken().setSecret(((TokenAuthenticationScheme) abstractAuthenticationScheme).getAccessTokenForScheme(iCacheRecord.getAccessToken().getSecret()));
        }
    }

    public static MicrosoftStsAuthorizationRequest getAuthorizationRequest(OAuth2Strategy oAuth2Strategy, TokenCommandParameters tokenCommandParameters) {
        UUID uuidFromString;
        if (oAuth2Strategy == null) {
            f6.n("strategy is marked non-null but is null");
            return null;
        }
        if (tokenCommandParameters == null) {
            f6.n("parameters is marked non-null but is null");
            return null;
        }
        MicrosoftStsAuthorizationRequest.Builder builderCreateAuthorizationRequestBuilder = ((MicrosoftStsOAuth2Strategy) oAuth2Strategy).createAuthorizationRequestBuilder(tokenCommandParameters.getAccount());
        try {
            uuidFromString = UUID.fromString(DiagnosticContext.INSTANCE.getRequestContext().get("correlation_id"));
        } catch (IllegalArgumentException e) {
            Logger.error("BaseController", "correlation id from diagnostic context is not a UUID", e);
            uuidFromString = null;
        }
        if (tokenCommandParameters.hasNestedAppParameters()) {
            builderCreateAuthorizationRequestBuilder.setBrkRedirectUri(tokenCommandParameters.getRedirectUri()).setBrkClientId(tokenCommandParameters.getClientId()).setClientId(tokenCommandParameters.getChildClientId()).setRedirectUri(tokenCommandParameters.getChildRedirectUri());
        } else {
            builderCreateAuthorizationRequestBuilder.setClientId(tokenCommandParameters.getClientId()).setRedirectUri(tokenCommandParameters.getRedirectUri());
        }
        builderCreateAuthorizationRequestBuilder.setCorrelationId(uuidFromString);
        builderCreateAuthorizationRequestBuilder.setApplicationIdentifier(tokenCommandParameters.getApplicationIdentifier());
        HashSet scopes = tokenCommandParameters.getScopes();
        if (tokenCommandParameters instanceof InteractiveTokenCommandParameters) {
            InteractiveTokenCommandParameters interactiveTokenCommandParameters = (InteractiveTokenCommandParameters) tokenCommandParameters;
            builderCreateAuthorizationRequestBuilder.setTokenScope(StringUtil.join(tokenCommandParameters.getScopes()));
            if (interactiveTokenCommandParameters.getAuthority() instanceof AzureActiveDirectoryAuthority) {
                AzureActiveDirectoryAuthority azureActiveDirectoryAuthority = (AzureActiveDirectoryAuthority) interactiveTokenCommandParameters.getAuthority();
                builderCreateAuthorizationRequestBuilder.setAuthority(azureActiveDirectoryAuthority.getAuthorityURL());
                builderCreateAuthorizationRequestBuilder.setMultipleCloudAware(azureActiveDirectoryAuthority.isMultipleCloudsSupported());
                MicrosoftStsAuthorizationRequest.Builder state = builderCreateAuthorizationRequestBuilder.setState(interactiveTokenCommandParameters.getPlatformComponents().getStateGenerator().generate());
                state.setSlice(azureActiveDirectoryAuthority.mSlice);
                state.setApplicationIdentifier(tokenCommandParameters.getApplicationIdentifier());
            }
            if (interactiveTokenCommandParameters.getExtraScopesToConsent() != null) {
                scopes.addAll(interactiveTokenCommandParameters.getExtraScopesToConsent());
            }
            HashMap map = new HashMap();
            if (interactiveTokenCommandParameters.getRequestHeaders() != null) {
                map.putAll(interactiveTokenCommandParameters.getRequestHeaders());
            }
            map.put("x-app-name", tokenCommandParameters.getApplicationName());
            map.put("x-app-ver", tokenCommandParameters.getApplicationVersion());
            map.put("x-ms-PKeyAuth", "1.0");
            builderCreateAuthorizationRequestBuilder.mExtraQueryParams = interactiveTokenCommandParameters.getExtraQueryStringParameters();
            builderCreateAuthorizationRequestBuilder.setClaims(tokenCommandParameters.getClaimsRequestJson()).setRequestHeaders(map).setWebViewZoomEnabled(interactiveTokenCommandParameters.isWebViewZoomEnabled()).setWebViewZoomControlsEnabled(interactiveTokenCommandParameters.isWebViewZoomControlsEnabled());
            builderCreateAuthorizationRequestBuilder.setLoginHint(interactiveTokenCommandParameters.getLoginHint());
            builderCreateAuthorizationRequestBuilder.setDomainHint(interactiveTokenCommandParameters.getDomainHint());
            builderCreateAuthorizationRequestBuilder.setPrompt(interactiveTokenCommandParameters.getPrompt().toString());
            builderCreateAuthorizationRequestBuilder.setPreferredAuthMethod(interactiveTokenCommandParameters.getPreferredAuthMethod());
            String installedCompanyPortalVersion = ((AndroidPlatformUtil) tokenCommandParameters.getPlatformComponents().getPlatformUtil()).getInstalledCompanyPortalVersion();
            if (!StringUtil.isNullOrEmpty(installedCompanyPortalVersion)) {
                builderCreateAuthorizationRequestBuilder.setInstalledCompanyPortalVersion(installedCompanyPortalVersion);
            }
            if (!StringUtil.isNullOrEmpty(interactiveTokenCommandParameters.getLoginHint()) && interactiveTokenCommandParameters.getPrompt() == OpenIdConnectPromptParameter.SELECT_ACCOUNT) {
                builderCreateAuthorizationRequestBuilder.setPrompt(null);
            }
        }
        builderCreateAuthorizationRequestBuilder.setScope(StringUtil.join(scopes));
        return new MicrosoftStsAuthorizationRequest(builderCreateAuthorizationRequestBuilder);
    }

    public static String getDelimitedDefaultScopeString() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = AuthenticationConstants.DEFAULT_SCOPES.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(' ');
        }
        return sb.toString().trim();
    }

    public static void logParameters(String str, TokenCommandParameters tokenCommandParameters) {
        StringBuilder sbN = fz5.n(str, ":");
        sbN.append(tokenCommandParameters.getClass().getSimpleName());
        String string = sbN.toString();
        if (Logger.isAllowPii()) {
            Logger.infoPII(string, ObjectMapper.GSON.i(tokenCommandParameters));
        } else {
            Logger.info(string, ObjectMapper.serializeExposedFieldsOfObjectToJsonString(tokenCommandParameters));
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:31:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:33:0x010d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x010f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0148  */
    /* JADX WARN: Code duplicated, block: B:36:0x014e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0154  */
    /* JADX WARN: Code duplicated, block: B:40:0x017d  */
    /* JADX WARN: Code duplicated, block: B:41:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:44:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:46:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:53:0x0211 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:0x0212  */
    /* JADX WARN: Code duplicated, block: B:56:0x0222  */
    /* JADX WARN: Instruction removed from duplicated block: B:46:0x01b7, please report this as an issue */
    public static void renewAccessToken(SilentTokenCommandParameters silentTokenCommandParameters, AcquireTokenResult acquireTokenResult, MsalOAuth2TokenCache msalOAuth2TokenCache, OAuth2Strategy oAuth2Strategy, ICacheRecord iCacheRecord) throws ServiceException, IOException, ClientException {
        TokenResult tokenResultRequestToken;
        String error;
        LocalAuthenticationResult localAuthenticationResult;
        MicrosoftStsTokenResponse microsoftStsTokenResponse;
        MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy;
        MicrosoftStsAuthorizationRequest authorizationRequest;
        if (oAuth2Strategy == null) {
            f6.n("strategy is marked non-null but is null");
            return;
        }
        Logger.info("BaseController:renewAccessToken", "Renewing access token...");
        RefreshTokenRecord refreshToken = iCacheRecord.getRefreshToken();
        logParameters("BaseController:renewAccessToken", silentTokenCommandParameters);
        ArrayList arrayListSaveAndLoadAggregatedAccountData = null;
        if (oAuth2Strategy == null) {
            f6.n("strategy is marked non-null but is null");
        } else {
            if (refreshToken != null) {
                if (silentTokenCommandParameters != null) {
                    Logger.info("BaseController:performSilentTokenRequest", "Requesting tokens...");
                    ((AndroidPlatformUtil) silentTokenCommandParameters.getPlatformComponents().getPlatformUtil()).throwIfNetworkNotAvailable(silentTokenCommandParameters.isPowerOptCheckEnabled());
                    Authority.KnownAuthorityResult knownAuthorityResult = Authority.getKnownAuthorityResult(silentTokenCommandParameters.getAuthority());
                    if (!knownAuthorityResult.getKnown()) {
                        throw knownAuthorityResult.getClientException();
                    }
                    MicrosoftStsTokenRequest microsoftStsTokenRequestCreateRefreshTokenRequest = ((MicrosoftStsOAuth2Strategy) oAuth2Strategy).createRefreshTokenRequest(silentTokenCommandParameters.getAuthenticationScheme());
                    if (silentTokenCommandParameters.hasNestedAppParameters()) {
                        microsoftStsTokenRequestCreateRefreshTokenRequest.setClientId(silentTokenCommandParameters.getChildClientId());
                        microsoftStsTokenRequestCreateRefreshTokenRequest.setBrkClientId(silentTokenCommandParameters.getClientId());
                        microsoftStsTokenRequestCreateRefreshTokenRequest.setRedirectUri(silentTokenCommandParameters.getChildRedirectUri());
                        microsoftStsTokenRequestCreateRefreshTokenRequest.setBrkRedirectUri(silentTokenCommandParameters.getRedirectUri());
                    } else {
                        microsoftStsTokenRequestCreateRefreshTokenRequest.setClientId(silentTokenCommandParameters.getClientId());
                    }
                    microsoftStsTokenRequestCreateRefreshTokenRequest.setScope(StringUtil.join(silentTokenCommandParameters.getScopes()));
                    microsoftStsTokenRequestCreateRefreshTokenRequest.setRefreshToken(refreshToken.getSecret());
                    microsoftStsTokenRequestCreateRefreshTokenRequest.setClaims(silentTokenCommandParameters.getClaimsRequestJson());
                    microsoftStsTokenRequestCreateRefreshTokenRequest.setClientAppName(silentTokenCommandParameters.getApplicationName());
                    microsoftStsTokenRequestCreateRefreshTokenRequest.setClientAppVersion(silentTokenCommandParameters.getApplicationVersion());
                    if (silentTokenCommandParameters.getSdkType() == SdkType.ADAL) {
                        microsoftStsTokenRequestCreateRefreshTokenRequest.setIdTokenVersion("1");
                    }
                    if (!StringUtil.isNullOrEmpty(microsoftStsTokenRequestCreateRefreshTokenRequest.getScope())) {
                        Logger.infoPII("BaseController:performSilentTokenRequest", "Scopes: [" + microsoftStsTokenRequestCreateRefreshTokenRequest.getScope() + "]");
                    }
                    tokenResultRequestToken = oAuth2Strategy.requestToken(microsoftStsTokenRequestCreateRefreshTokenRequest);
                } else {
                    f6.n("parameters is marked non-null but is null");
                }
                acquireTokenResult.setTokenResult(tokenResultRequestToken);
                FileUtil.logResult("BaseController:renewAccessToken", tokenResultRequestToken);
                if (tokenResultRequestToken.getSuccess()) {
                    if (tokenResultRequestToken.getErrorResponse() != null) {
                        Logger.warn("BaseController:renewAccessToken", "Invalid state, No token success or error response on the token result");
                        return;
                    }
                    error = tokenResultRequestToken.getErrorResponse().getError();
                    String subError = tokenResultRequestToken.getErrorResponse().getSubError();
                    Logger.info("BaseController:renewAccessToken", "Error: " + error + " Suberror: " + subError);
                    if ("invalid_grant".equals(error) && "bad_token".equals(subError)) {
                        Logger.info("BaseController:renewAccessToken", "Refresh token is invalid, attempting to delete the RT from cache, result:" + msalOAuth2TokenCache.removeCredential(iCacheRecord.getRefreshToken()));
                    }
                    if (!"service_not_available".equals(error)) {
                        throw new ServiceException("service_not_available", "AAD is not available.", tokenResultRequestToken.getErrorResponse().getStatusCode());
                    }
                    return;
                }
                Logger.info("BaseController:renewAccessToken", "Token request was successful");
                if (silentTokenCommandParameters.hasNestedAppParameters()) {
                    microsoftStsTokenResponse = (MicrosoftStsTokenResponse) tokenResultRequestToken.getTokenResponse();
                    microsoftStsOAuth2Strategy = (MicrosoftStsOAuth2Strategy) oAuth2Strategy;
                    authorizationRequest = getAuthorizationRequest(oAuth2Strategy, silentTokenCommandParameters);
                    if (microsoftStsTokenResponse != null) {
                        f6.n("microsoftStsTokenResponse is marked non-null but is null");
                    } else if (microsoftStsOAuth2Strategy != null) {
                        Logger.verbose("MicrosoftStsAccountCredentialAdapter", "Creating Account");
                        AccountRecord accountRecord = new AccountRecord(microsoftStsOAuth2Strategy.createAccount(microsoftStsTokenResponse));
                        AccessTokenRecord accessTokenRecordCreateAccessToken = MicrosoftStsAccountCredentialAdapter.createAccessToken(microsoftStsOAuth2Strategy, authorizationRequest, microsoftStsTokenResponse);
                        IdTokenRecord idTokenRecordCreateIdToken = MicrosoftStsAccountCredentialAdapter.createIdToken(microsoftStsOAuth2Strategy, authorizationRequest, microsoftStsTokenResponse);
                        CacheRecord.CacheRecordBuilder cacheRecordBuilderBuilder = CacheRecord.builder();
                        cacheRecordBuilderBuilder.idToken(idTokenRecordCreateIdToken);
                        cacheRecordBuilderBuilder.accessToken(accessTokenRecordCreateAccessToken);
                        cacheRecordBuilderBuilder.account(accountRecord);
                        cacheRecordBuilderBuilder.refreshToken(MicrosoftStsAccountCredentialAdapter.createRefreshToken(microsoftStsOAuth2Strategy, authorizationRequest, microsoftStsTokenResponse));
                        CacheRecord cacheRecordBuild = cacheRecordBuilderBuilder.build();
                        arrayListSaveAndLoadAggregatedAccountData = new ArrayList();
                        arrayListSaveAndLoadAggregatedAccountData.add(cacheRecordBuild);
                    } else {
                        f6.n("oAuth2Strategy is marked non-null but is null");
                    }
                } else {
                    arrayListSaveAndLoadAggregatedAccountData = msalOAuth2TokenCache.saveAndLoadAggregatedAccountData(oAuth2Strategy, getAuthorizationRequest(oAuth2Strategy, silentTokenCommandParameters), tokenResultRequestToken.getTokenResponse());
                }
                ICacheRecord iCacheRecord2 = (ICacheRecord) arrayListSaveAndLoadAggregatedAccountData.get(0);
                finalizeCacheRecordForResult(iCacheRecord2, silentTokenCommandParameters.getAuthenticationScheme());
                localAuthenticationResult = new LocalAuthenticationResult(iCacheRecord2, arrayListSaveAndLoadAggregatedAccountData, silentTokenCommandParameters.getSdkType(), false);
                if (tokenResultRequestToken.getCliTelemInfo() != null) {
                    CliTelemInfo cliTelemInfo = tokenResultRequestToken.getCliTelemInfo();
                    localAuthenticationResult.setSpeRing(cliTelemInfo.getSpeRing());
                    localAuthenticationResult.setRefreshTokenAge(cliTelemInfo.getRefreshTokenAge());
                    CacheEndEvent cacheEndEvent = new CacheEndEvent();
                    cacheEndEvent.put("Microsoft.MSAL.spe_info", tokenResultRequestToken.getCliTelemInfo().getSpeRing());
                    Telemetry.emit(cacheEndEvent);
                } else {
                    Telemetry.emit(new CacheEndEvent());
                }
                acquireTokenResult.setLocalAuthenticationResult(localAuthenticationResult);
            }
            f6.n("refreshToken is marked non-null but is null");
        }
        tokenResultRequestToken = null;
        acquireTokenResult.setTokenResult(tokenResultRequestToken);
        FileUtil.logResult("BaseController:renewAccessToken", tokenResultRequestToken);
        if (tokenResultRequestToken.getSuccess()) {
            if (tokenResultRequestToken.getErrorResponse() != null) {
                Logger.warn("BaseController:renewAccessToken", "Invalid state, No token success or error response on the token result");
                return;
            }
            error = tokenResultRequestToken.getErrorResponse().getError();
            String subError2 = tokenResultRequestToken.getErrorResponse().getSubError();
            Logger.info("BaseController:renewAccessToken", "Error: " + error + " Suberror: " + subError2);
            if ("invalid_grant".equals(error)) {
                Logger.info("BaseController:renewAccessToken", "Refresh token is invalid, attempting to delete the RT from cache, result:" + msalOAuth2TokenCache.removeCredential(iCacheRecord.getRefreshToken()));
            }
            if (!"service_not_available".equals(error)) {
                throw new ServiceException("service_not_available", "AAD is not available.", tokenResultRequestToken.getErrorResponse().getStatusCode());
            }
            return;
        }
        Logger.info("BaseController:renewAccessToken", "Token request was successful");
        if (silentTokenCommandParameters.hasNestedAppParameters()) {
            microsoftStsTokenResponse = (MicrosoftStsTokenResponse) tokenResultRequestToken.getTokenResponse();
            microsoftStsOAuth2Strategy = (MicrosoftStsOAuth2Strategy) oAuth2Strategy;
            authorizationRequest = getAuthorizationRequest(oAuth2Strategy, silentTokenCommandParameters);
            if (microsoftStsTokenResponse != null) {
                f6.n("microsoftStsTokenResponse is marked non-null but is null");
            } else if (microsoftStsOAuth2Strategy != null) {
                Logger.verbose("MicrosoftStsAccountCredentialAdapter", "Creating Account");
                AccountRecord accountRecord2 = new AccountRecord(microsoftStsOAuth2Strategy.createAccount(microsoftStsTokenResponse));
                AccessTokenRecord accessTokenRecordCreateAccessToken2 = MicrosoftStsAccountCredentialAdapter.createAccessToken(microsoftStsOAuth2Strategy, authorizationRequest, microsoftStsTokenResponse);
                IdTokenRecord idTokenRecordCreateIdToken2 = MicrosoftStsAccountCredentialAdapter.createIdToken(microsoftStsOAuth2Strategy, authorizationRequest, microsoftStsTokenResponse);
                CacheRecord.CacheRecordBuilder cacheRecordBuilderBuilder2 = CacheRecord.builder();
                cacheRecordBuilderBuilder2.idToken(idTokenRecordCreateIdToken2);
                cacheRecordBuilderBuilder2.accessToken(accessTokenRecordCreateAccessToken2);
                cacheRecordBuilderBuilder2.account(accountRecord2);
                cacheRecordBuilderBuilder2.refreshToken(MicrosoftStsAccountCredentialAdapter.createRefreshToken(microsoftStsOAuth2Strategy, authorizationRequest, microsoftStsTokenResponse));
                CacheRecord cacheRecordBuild2 = cacheRecordBuilderBuilder2.build();
                arrayListSaveAndLoadAggregatedAccountData = new ArrayList();
                arrayListSaveAndLoadAggregatedAccountData.add(cacheRecordBuild2);
            } else {
                f6.n("oAuth2Strategy is marked non-null but is null");
            }
        } else {
            arrayListSaveAndLoadAggregatedAccountData = msalOAuth2TokenCache.saveAndLoadAggregatedAccountData(oAuth2Strategy, getAuthorizationRequest(oAuth2Strategy, silentTokenCommandParameters), tokenResultRequestToken.getTokenResponse());
        }
        ICacheRecord iCacheRecord3 = (ICacheRecord) arrayListSaveAndLoadAggregatedAccountData.get(0);
        finalizeCacheRecordForResult(iCacheRecord3, silentTokenCommandParameters.getAuthenticationScheme());
        localAuthenticationResult = new LocalAuthenticationResult(iCacheRecord3, arrayListSaveAndLoadAggregatedAccountData, silentTokenCommandParameters.getSdkType(), false);
        if (tokenResultRequestToken.getCliTelemInfo() != null) {
            CliTelemInfo cliTelemInfo2 = tokenResultRequestToken.getCliTelemInfo();
            localAuthenticationResult.setSpeRing(cliTelemInfo2.getSpeRing());
            localAuthenticationResult.setRefreshTokenAge(cliTelemInfo2.getRefreshTokenAge());
            CacheEndEvent cacheEndEvent2 = new CacheEndEvent();
            cacheEndEvent2.put("Microsoft.MSAL.spe_info", tokenResultRequestToken.getCliTelemInfo().getSpeRing());
            Telemetry.emit(cacheEndEvent2);
        } else {
            Telemetry.emit(new CacheEndEvent());
        }
        acquireTokenResult.setLocalAuthenticationResult(localAuthenticationResult);
    }

    public abstract AcquireTokenResult acquireToken(InteractiveTokenCommandParameters interactiveTokenCommandParameters) throws Exception;

    public abstract AcquireTokenResult acquireTokenSilent(SilentTokenCommandParameters silentTokenCommandParameters) throws Exception;

    public abstract boolean canEqual(BaseController baseController);

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof BaseController) && ((BaseController) obj).canEqual(this);
    }

    public abstract List<ICacheRecord> getCurrentAccount(CommandParameters commandParameters) throws Exception;

    public abstract boolean getDeviceMode(CommandParameters commandParameters) throws Exception;

    public abstract void onFinishAuthorizationSession(int i, int i2, PropertyBag propertyBag);

    public abstract boolean removeCurrentAccount(RemoveAccountCommandParameters removeAccountCommandParameters) throws Exception;
}
