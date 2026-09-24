package com.microsoft.identity.common.internal.controllers;

import android.text.TextUtils;
import com.microsoft.identity.common.internal.commands.parameters.AndroidInteractiveTokenCommandParameters;
import com.microsoft.identity.common.internal.platform.AndroidPlatformUtil;
import com.microsoft.identity.common.internal.providers.oauth2.AndroidAuthorizationStrategy;
import com.microsoft.identity.common.internal.telemetry.events.ApiEndEvent;
import com.microsoft.identity.common.internal.telemetry.events.ApiStartEvent;
import com.microsoft.identity.common.java.authorities.Authority;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryAudience;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryAuthority;
import com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.java.authscheme.PopAuthenticationSchemeInternal;
import com.microsoft.identity.common.java.authscheme.PopAuthenticationSchemeWithClientKeyInternal;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.microsoft.identity.common.java.cache.ICacheRecord;
import com.microsoft.identity.common.java.cache.MsalOAuth2TokenCache;
import com.microsoft.identity.common.java.commands.parameters.CommandParameters;
import com.microsoft.identity.common.java.commands.parameters.IHasExtraParameters;
import com.microsoft.identity.common.java.commands.parameters.InteractiveTokenCommandParameters;
import com.microsoft.identity.common.java.commands.parameters.RemoveAccountCommandParameters;
import com.microsoft.identity.common.java.commands.parameters.SilentTokenCommandParameters;
import com.microsoft.identity.common.java.configuration.LibraryConfiguration;
import com.microsoft.identity.common.java.controllers.BaseController;
import com.microsoft.identity.common.java.dto.AccessTokenRecord;
import com.microsoft.identity.common.java.dto.AccountRecord;
import com.microsoft.identity.common.java.dto.RefreshTokenRecord;
import com.microsoft.identity.common.java.exception.ArgumentException;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.exception.UiRequiredException;
import com.microsoft.identity.common.java.foci.FociQueryUtilities;
import com.microsoft.identity.common.java.providers.RawAuthorizationResult;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationResult;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsTokenRequest;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationResponse;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationStatus;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2StrategyParameters;
import com.microsoft.identity.common.java.providers.oauth2.TokenResponse;
import com.microsoft.identity.common.java.providers.oauth2.TokenResult;
import com.microsoft.identity.common.java.request.SdkType;
import com.microsoft.identity.common.java.result.AcquireTokenResult;
import com.microsoft.identity.common.java.result.LocalAuthenticationResult;
import com.microsoft.identity.common.java.telemetry.Telemetry;
import com.microsoft.identity.common.java.telemetry.events.UiShownEvent;
import com.microsoft.identity.common.java.util.FileUtil;
import com.microsoft.identity.common.java.util.ResultFuture;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.java.util.ported.PropertyBag;
import com.microsoft.identity.common.logging.Logger;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.f6;
import defpackage.q;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LocalMSALController extends BaseController {
    private AndroidAuthorizationStrategy mAuthorizationStrategy = null;
    private Future<MicrosoftStsAuthorizationResult> mAuthorizationFuture = null;
    private MicrosoftStsAuthorizationRequest mAuthorizationRequest = null;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final AcquireTokenResult acquireToken(InteractiveTokenCommandParameters interactiveTokenCommandParameters) throws ExecutionException, InterruptedException, ArgumentException, IOException, ClientException {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireToken", "Acquiring token...");
        ApiStartEvent apiStartEvent = new ApiStartEvent();
        apiStartEvent.putProperties(interactiveTokenCommandParameters);
        apiStartEvent.putApiId$1("101");
        Telemetry.emit(apiStartEvent);
        AcquireTokenResult acquireTokenResult = new AcquireTokenResult();
        interactiveTokenCommandParameters.validate();
        AndroidInteractiveTokenCommandParameters androidInteractiveTokenCommandParametersBuild$1 = ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) interactiveTokenCommandParameters.toBuilder().scopes(BaseController.addDefaultScopes(interactiveTokenCommandParameters))).build$1();
        BaseController.logParameters("LocalMSALController", androidInteractiveTokenCommandParametersBuild$1);
        ((AndroidPlatformUtil) androidInteractiveTokenCommandParametersBuild$1.getPlatformComponents().getPlatformUtil()).throwIfNetworkNotAvailable(androidInteractiveTokenCommandParametersBuild$1.isPowerOptCheckEnabled());
        Authority.KnownAuthorityResult knownAuthorityResult = Authority.getKnownAuthorityResult(androidInteractiveTokenCommandParametersBuild$1.getAuthority());
        if (!knownAuthorityResult.getKnown()) {
            ApiEndEvent apiEndEvent = new ApiEndEvent();
            apiEndEvent.putException(knownAuthorityResult.getClientException());
            apiEndEvent.putApiId("101");
            Telemetry.emit(apiEndEvent);
            throw knownAuthorityResult.getClientException();
        }
        OAuth2StrategyParameters.OAuth2StrategyParametersBuilder oAuth2StrategyParametersBuilder = new OAuth2StrategyParameters.OAuth2StrategyParametersBuilder();
        oAuth2StrategyParametersBuilder.platformComponents(interactiveTokenCommandParameters.getPlatformComponents());
        oAuth2StrategyParametersBuilder.authenticationScheme(interactiveTokenCommandParameters.getAuthenticationScheme());
        OAuth2Strategy oAuth2StrategyCreateOAuth2Strategy = androidInteractiveTokenCommandParametersBuild$1.getAuthority().createOAuth2Strategy(oAuth2StrategyParametersBuilder.build());
        ((AndroidPlatformUtil) androidInteractiveTokenCommandParametersBuild$1.getPlatformComponents().getPlatformUtil()).throwIfNetworkNotAvailable(androidInteractiveTokenCommandParametersBuild$1.isPowerOptCheckEnabled());
        this.mAuthorizationStrategy = androidInteractiveTokenCommandParametersBuild$1.getPlatformComponents().getAuthorizationStrategyFactory().getAuthorizationStrategy(androidInteractiveTokenCommandParametersBuild$1.getAuthorizationAgent(), androidInteractiveTokenCommandParametersBuild$1.getBrowserSafeList(), androidInteractiveTokenCommandParametersBuild$1.getPreferredBrowser());
        MicrosoftStsAuthorizationRequest authorizationRequest = BaseController.getAuthorizationRequest(oAuth2StrategyCreateOAuth2Strategy, androidInteractiveTokenCommandParametersBuild$1);
        this.mAuthorizationRequest = authorizationRequest;
        ResultFuture resultFutureRequestAuthorization = this.mAuthorizationStrategy.requestAuthorization(authorizationRequest, oAuth2StrategyCreateOAuth2Strategy);
        UiShownEvent uiShownEvent = new UiShownEvent();
        uiShownEvent.names("ui_shown_event");
        uiShownEvent.put("Microsoft.MSAL.event_type", "Microsoft.MSAL.ui_event");
        uiShownEvent.put("Microsoft.MSAL.ui_visible", "true");
        Telemetry.emit(uiShownEvent);
        this.mAuthorizationFuture = resultFutureRequestAuthorization;
        MicrosoftStsAuthorizationResult microsoftStsAuthorizationResult = (MicrosoftStsAuthorizationResult) resultFutureRequestAuthorization.get();
        this.mAuthorizationFuture = null;
        acquireTokenResult.setAuthorizationResult(microsoftStsAuthorizationResult);
        FileUtil.logResult("LocalMSALController", microsoftStsAuthorizationResult);
        if (microsoftStsAuthorizationResult.getAuthorizationStatus().equals(AuthorizationStatus.SUCCESS)) {
            MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest = this.mAuthorizationRequest;
            AuthorizationResponse authorizationResponse = microsoftStsAuthorizationResult.getAuthorizationResponse();
            if (microsoftStsAuthorizationRequest == null) {
                f6.n("request is marked non-null but is null");
                return null;
            }
            if (authorizationResponse == null) {
                f6.n("response is marked non-null but is null");
                return null;
            }
            ((AndroidPlatformUtil) androidInteractiveTokenCommandParametersBuild$1.getPlatformComponents().getPlatformUtil()).throwIfNetworkNotAvailable(androidInteractiveTokenCommandParametersBuild$1.isPowerOptCheckEnabled());
            MicrosoftStsTokenRequest microsoftStsTokenRequestCreateTokenRequest = oAuth2StrategyCreateOAuth2Strategy.createTokenRequest(microsoftStsAuthorizationRequest, authorizationResponse, androidInteractiveTokenCommandParametersBuild$1.getAuthenticationScheme());
            microsoftStsTokenRequestCreateTokenRequest.setClientAppName(androidInteractiveTokenCommandParametersBuild$1.getApplicationName());
            microsoftStsTokenRequestCreateTokenRequest.setClientAppVersion(androidInteractiveTokenCommandParametersBuild$1.getApplicationVersion());
            if (androidInteractiveTokenCommandParametersBuild$1 instanceof IHasExtraParameters) {
                microsoftStsTokenRequestCreateTokenRequest.setExtraParameters(((IHasExtraParameters) androidInteractiveTokenCommandParametersBuild$1).getExtraParameters());
            }
            FileUtil.logExposedFieldsOfObject(microsoftStsTokenRequestCreateTokenRequest, "BaseController:performTokenRequest");
            TokenResult tokenResultRequestToken = oAuth2StrategyCreateOAuth2Strategy.requestToken(microsoftStsTokenRequestCreateTokenRequest);
            FileUtil.logResult("BaseController", tokenResultRequestToken);
            acquireTokenResult.setTokenResult(tokenResultRequestToken);
            if (tokenResultRequestToken.getSuccess()) {
                MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest2 = this.mAuthorizationRequest;
                TokenResponse tokenResponse = tokenResultRequestToken.getTokenResponse();
                MsalOAuth2TokenCache oAuth2TokenCache = androidInteractiveTokenCommandParametersBuild$1.getOAuth2TokenCache();
                if (microsoftStsAuthorizationRequest2 == null) {
                    f6.n("request is marked non-null but is null");
                    return null;
                }
                if (tokenResponse == null) {
                    f6.n("tokenResponse is marked non-null but is null");
                    return null;
                }
                if (oAuth2TokenCache == null) {
                    f6.n("tokenCache is marked non-null but is null");
                    return null;
                }
                com.microsoft.identity.common.java.logging.Logger.info("BaseController:saveTokens", "Saving tokens...");
                ArrayList arrayListSaveAndLoadAggregatedAccountData = oAuth2TokenCache.saveAndLoadAggregatedAccountData(oAuth2StrategyCreateOAuth2Strategy, microsoftStsAuthorizationRequest2, tokenResponse);
                ICacheRecord iCacheRecord = (ICacheRecord) arrayListSaveAndLoadAggregatedAccountData.get(0);
                BaseController.finalizeCacheRecordForResult(iCacheRecord, androidInteractiveTokenCommandParametersBuild$1.getAuthenticationScheme());
                acquireTokenResult.setLocalAuthenticationResult(new LocalAuthenticationResult(iCacheRecord, arrayListSaveAndLoadAggregatedAccountData, SdkType.MSAL, false));
            }
        }
        ApiEndEvent apiEndEvent2 = new ApiEndEvent();
        apiEndEvent2.putResult(acquireTokenResult);
        apiEndEvent2.putApiId("101");
        Telemetry.emit(apiEndEvent2);
        return acquireTokenResult;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x029b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:102:0x029d  */
    /* JADX WARN: Code duplicated, block: B:104:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:106:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:107:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:108:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:110:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:112:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:114:0x0304  */
    /* JADX WARN: Code duplicated, block: B:115:0x0306  */
    /* JADX WARN: Code duplicated, block: B:116:0x030b  */
    /* JADX WARN: Code duplicated, block: B:118:0x030f  */
    /* JADX WARN: Code duplicated, block: B:119:0x0322  */
    /* JADX WARN: Code duplicated, block: B:122:0x0326  */
    /* JADX WARN: Code duplicated, block: B:124:0x0330  */
    /* JADX WARN: Code duplicated, block: B:125:0x0341  */
    /* JADX WARN: Code duplicated, block: B:126:0x035e  */
    /* JADX WARN: Code duplicated, block: B:128:0x0365  */
    /* JADX WARN: Code duplicated, block: B:130:0x036c  */
    /* JADX WARN: Code duplicated, block: B:132:0x0372  */
    /* JADX WARN: Code duplicated, block: B:135:0x0389  */
    /* JADX WARN: Code duplicated, block: B:137:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:139:0x0215 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:0x0247 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x0231 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x017e  */
    /* JADX WARN: Code duplicated, block: B:57:0x0190  */
    /* JADX WARN: Code duplicated, block: B:58:0x019b  */
    /* JADX WARN: Code duplicated, block: B:61:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:62:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:65:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:70:0x0210 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x0212 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x0214  */
    /* JADX WARN: Code duplicated, block: B:76:0x0237 A[Catch: all -> 0x024b, TryCatch #4 {all -> 0x024b, blocks: (B:73:0x0215, B:74:0x0231, B:76:0x0237, B:78:0x0247, B:81:0x024d), top: B:139:0x0215 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0251  */
    /* JADX WARN: Code duplicated, block: B:87:0x0258  */
    /* JADX WARN: Code duplicated, block: B:88:0x025e  */
    /* JADX WARN: Code duplicated, block: B:91:0x027b  */
    /* JADX WARN: Code duplicated, block: B:94:0x0283  */
    /* JADX WARN: Instruction removed from duplicated block: B:58:0x019b, please report this as an issue */
    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final AcquireTokenResult acquireTokenSilent(SilentTokenCommandParameters silentTokenCommandParameters) throws ServiceException, ArgumentException, IOException, ClientException {
        AccountRecord accountRecord;
        AbstractAuthenticationScheme authenticationScheme;
        OAuth2Strategy oAuth2StrategyCreateOAuth2Strategy;
        String clientId;
        String applicationIdentifier;
        String mamEnrollmentId;
        String strJoin;
        ArrayList arrayList;
        ICacheRecord iCacheRecord;
        Authority authority;
        AccessTokenRecord accessToken;
        boolean zEqualsIgnoreCase;
        MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy;
        boolean zEqualsIgnoreCase2;
        String kid;
        String deviceAtPopThumbprint;
        AzureActiveDirectoryAuthority azureActiveDirectoryAuthority;
        AccountRecord accountByLocalAccountId;
        boolean z;
        AccountRecord accountByLocalAccountId2;
        String clientId2;
        String homeAccountId;
        Throwable th;
        String str;
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Acquiring token silently...");
        ApiStartEvent apiStartEvent = new ApiStartEvent();
        apiStartEvent.putProperties(silentTokenCommandParameters);
        String str2 = "103";
        apiStartEvent.putApiId$1("103");
        Telemetry.emit(apiStartEvent);
        AcquireTokenResult acquireTokenResult = new AcquireTokenResult();
        silentTokenCommandParameters.validate();
        SilentTokenCommandParameters silentTokenCommandParametersBuild = ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) silentTokenCommandParameters.toBuilder().scopes(BaseController.addDefaultScopes(silentTokenCommandParameters))).build();
        MsalOAuth2TokenCache oAuth2TokenCache = silentTokenCommandParametersBuild.getOAuth2TokenCache();
        if (silentTokenCommandParametersBuild == null) {
            f6.n("parameters is marked non-null but is null");
        } else {
            if (silentTokenCommandParametersBuild.getAccount() != null) {
                boolean zEqualsIgnoreCase3 = Authority.B2C.equalsIgnoreCase(silentTokenCommandParametersBuild.getAuthority().getAuthorityTypeString());
                boolean zEqualsIgnoreCase4 = Authority.B2C.equalsIgnoreCase(silentTokenCommandParametersBuild.getAuthority().getAuthorityTypeString());
                String clientId3 = silentTokenCommandParametersBuild.getClientId();
                String homeAccountId2 = silentTokenCommandParametersBuild.getAccount().getHomeAccountId();
                String localAccountId = silentTokenCommandParametersBuild.getAccount().getLocalAccountId();
                String environment = silentTokenCommandParametersBuild.getAccount().getEnvironment();
                if (zEqualsIgnoreCase4) {
                    MsalOAuth2TokenCache oAuth2TokenCache2 = silentTokenCommandParametersBuild.getOAuth2TokenCache();
                    oAuth2TokenCache2.getClass();
                    if (clientId3 == null) {
                        f6.n("clientId is marked non-null but is null");
                    } else if (homeAccountId2 != null) {
                        List<AccountRecord> accounts = oAuth2TokenCache2.getAccounts(null, clientId3);
                        com.microsoft.identity.common.java.logging.Logger.verbosePII("MsalOAuth2TokenCache:getAccountByHomeAccountId", "homeAccountId: [" + homeAccountId2 + "]");
                        Iterator<AccountRecord> it = accounts.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                accountByLocalAccountId = null;
                                break;
                            }
                            AccountRecord next = it.next();
                            if (homeAccountId2.equals(next.getHomeAccountId())) {
                                accountByLocalAccountId = next;
                                break;
                            }
                        }
                    } else {
                        f6.n("homeAccountId is marked non-null but is null");
                    }
                } else {
                    accountByLocalAccountId = silentTokenCommandParametersBuild.getOAuth2TokenCache().getAccountByLocalAccountId(environment, clientId3, localAccountId);
                }
                if (accountByLocalAccountId != null) {
                    accountRecord = accountByLocalAccountId;
                    str2 = "103";
                } else {
                    com.microsoft.identity.common.java.logging.Logger.info("BaseController:getCachedAccountRecord", "Account not found in app cache..");
                    if (silentTokenCommandParametersBuild.getOAuth2TokenCache() != null) {
                        MsalOAuth2TokenCache oAuth2TokenCache3 = silentTokenCommandParametersBuild.getOAuth2TokenCache();
                        if (oAuth2TokenCache3 != null) {
                            String homeAccountId3 = silentTokenCommandParametersBuild.getAccount().getHomeAccountId();
                            String clientId4 = silentTokenCommandParametersBuild.getClientId();
                            RefreshTokenRecord familyRefreshTokenForHomeAccountId = oAuth2TokenCache3.getFamilyRefreshTokenForHomeAccountId(homeAccountId3);
                            if (familyRefreshTokenForHomeAccountId != null) {
                                try {
                                    z = zEqualsIgnoreCase3;
                                    try {
                                        str2 = "103";
                                        try {
                                            FociQueryUtilities.tryFociTokenWithGivenClientId(silentTokenCommandParametersBuild.getOAuth2TokenCache(), clientId4, silentTokenCommandParametersBuild.getRedirectUri(), familyRefreshTokenForHomeAccountId, silentTokenCommandParametersBuild.getAccount());
                                            accountByLocalAccountId2 = silentTokenCommandParametersBuild.getOAuth2TokenCache().getAccountByLocalAccountId(null, clientId4, silentTokenCommandParametersBuild.getAccount().getLocalAccountId());
                                        } catch (ClientException e) {
                                            e = e;
                                            StringBuilder sbU = dj7.u("Error while attempting to validate client: ", clientId4, " is part of family ");
                                            sbU.append(e.getMessage());
                                            com.microsoft.identity.common.java.logging.Logger.warn("BaseController:getAccountWithFRTIfAvailable", sbU.toString());
                                            accountByLocalAccountId2 = null;
                                        } catch (IOException e2) {
                                            e = e2;
                                            StringBuilder sbU2 = dj7.u("Error while attempting to validate client: ", clientId4, " is part of family ");
                                            sbU2.append(e.getMessage());
                                            com.microsoft.identity.common.java.logging.Logger.warn("BaseController:getAccountWithFRTIfAvailable", sbU2.toString());
                                            accountByLocalAccountId2 = null;
                                        }
                                    } catch (ClientException | IOException e3) {
                                        e = e3;
                                        str2 = "103";
                                    }
                                } catch (ClientException | IOException e4) {
                                    e = e4;
                                    str2 = "103";
                                    z = zEqualsIgnoreCase3;
                                }
                                if (accountByLocalAccountId2 == null) {
                                    clientId2 = silentTokenCommandParametersBuild.getClientId();
                                    homeAccountId = silentTokenCommandParametersBuild.getAccount().getHomeAccountId();
                                    if (com.microsoft.identity.common.java.logging.Logger.isAllowPii()) {
                                        th = null;
                                        com.microsoft.identity.common.java.logging.Logger.errorPII(null, "BaseController:getCachedAccountRecord", eq3.l("No accounts found for clientId [", clientId2, "], homeAccountId [", homeAccountId, "]"));
                                    } else {
                                        th = null;
                                        com.microsoft.identity.common.java.logging.Logger.error("BaseController:getCachedAccountRecord", "No accounts found for clientId [" + clientId2 + "]", null);
                                    }
                                    if (z) {
                                        str = "homeAccountId";
                                    } else {
                                        str = "localAccountId";
                                    }
                                    throw new ClientException("no_account_found", "No cached accounts found for the supplied ".concat(str), th);
                                }
                                accountRecord = accountByLocalAccountId2;
                            } else {
                                str2 = "103";
                                z = zEqualsIgnoreCase3;
                                com.microsoft.identity.common.java.logging.Logger.info("BaseController:getAccountWithFRTIfAvailable", "No Foci tokens found for homeAccountId ".concat(homeAccountId3));
                            }
                        } else {
                            f6.n("msalOAuth2TokenCache is marked non-null but is null");
                        }
                    } else {
                        str2 = "103";
                        z = zEqualsIgnoreCase3;
                    }
                    accountByLocalAccountId2 = null;
                    if (accountByLocalAccountId2 == null) {
                        clientId2 = silentTokenCommandParametersBuild.getClientId();
                        homeAccountId = silentTokenCommandParametersBuild.getAccount().getHomeAccountId();
                        if (com.microsoft.identity.common.java.logging.Logger.isAllowPii()) {
                            th = null;
                            com.microsoft.identity.common.java.logging.Logger.errorPII(null, "BaseController:getCachedAccountRecord", eq3.l("No accounts found for clientId [", clientId2, "], homeAccountId [", homeAccountId, "]"));
                        } else {
                            th = null;
                            com.microsoft.identity.common.java.logging.Logger.error("BaseController:getCachedAccountRecord", "No accounts found for clientId [" + clientId2 + "]", null);
                        }
                        if (z) {
                            str = "homeAccountId";
                        } else {
                            str = "localAccountId";
                        }
                        throw new ClientException("no_account_found", "No cached accounts found for the supplied ".concat(str), th);
                    }
                    accountRecord = accountByLocalAccountId2;
                }
                authenticationScheme = silentTokenCommandParametersBuild.getAuthenticationScheme();
                OAuth2StrategyParameters.OAuth2StrategyParametersBuilder oAuth2StrategyParametersBuilder = new OAuth2StrategyParameters.OAuth2StrategyParametersBuilder();
                oAuth2StrategyParametersBuilder.platformComponents(silentTokenCommandParameters.getPlatformComponents());
                oAuth2StrategyParametersBuilder.authenticationScheme(authenticationScheme);
                oAuth2StrategyCreateOAuth2Strategy = silentTokenCommandParametersBuild.getAuthority().createOAuth2Strategy(oAuth2StrategyParametersBuilder.build());
                clientId = silentTokenCommandParametersBuild.getClientId();
                applicationIdentifier = silentTokenCommandParameters.getApplicationIdentifier();
                mamEnrollmentId = silentTokenCommandParameters.getMamEnrollmentId();
                strJoin = TextUtils.join(TokenAuthenticationScheme.SCHEME_DELIMITER, silentTokenCommandParametersBuild.getScopes());
                oAuth2TokenCache.getClass();
                if (clientId != null) {
                    f6.n("clientId is marked non-null but is null");
                } else {
                    if (accountRecord != null) {
                        if (authenticationScheme != null) {
                            synchronized (oAuth2TokenCache) {
                                try {
                                    arrayList = new ArrayList();
                                    arrayList.add(oAuth2TokenCache.load(clientId, applicationIdentifier, mamEnrollmentId, strJoin, accountRecord, authenticationScheme));
                                    for (ICacheRecord iCacheRecord2 : oAuth2TokenCache.getAccountsWithAggregatedAccountData(accountRecord.getEnvironment(), clientId, accountRecord.getHomeAccountId())) {
                                        if (!accountRecord.equals(iCacheRecord2.getAccount())) {
                                            arrayList.add(iCacheRecord2);
                                        }
                                    }
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                        } else {
                            f6.n("authScheme is marked non-null but is null");
                        }
                        iCacheRecord = (ICacheRecord) arrayList.get(0);
                        LibraryConfiguration.getInstance().getClass();
                        LibraryConfiguration.getInstance().getClass();
                        if (iCacheRecord != null) {
                            f6.n("cacheRecord is marked non-null but is null");
                            return null;
                        }
                        if (iCacheRecord.getAccessToken() == null || iCacheRecord.getRefreshToken() == null || silentTokenCommandParametersBuild.isForceRefresh()) {
                            if (iCacheRecord.getRefreshToken() != null) {
                                UiRequiredException uiRequiredException = new UiRequiredException(null, "no_tokens_found", "No refresh token was found. ");
                                ApiEndEvent apiEndEvent = new ApiEndEvent();
                                apiEndEvent.putException(uiRequiredException);
                                apiEndEvent.putApiId(str2);
                                Telemetry.emit(apiEndEvent);
                                throw uiRequiredException;
                            }
                            com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                            BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
                        } else {
                            authority = silentTokenCommandParametersBuild.getAuthority();
                            accessToken = iCacheRecord.getAccessToken();
                            if (authority != null) {
                                f6.n("requestAuthority is marked non-null but is null");
                                return null;
                            }
                            if (accessToken != null) {
                                f6.n("accessTokenRecord is marked non-null but is null");
                                return null;
                            }
                            if (authority instanceof AzureActiveDirectoryAuthority) {
                                azureActiveDirectoryAuthority = (AzureActiveDirectoryAuthority) authority;
                                if (AzureActiveDirectoryAudience.isHomeTenantAlias(azureActiveDirectoryAuthority.getAudience().getTenantId())) {
                                    zEqualsIgnoreCase = accessToken.getHomeAccountId().split(Pattern.quote("."))[1].equalsIgnoreCase(accessToken.getRealm());
                                } else {
                                    zEqualsIgnoreCase = azureActiveDirectoryAuthority.getAudience().getTenantUuidForAlias(authority.getAuthorityURL().toString()).equalsIgnoreCase(accessToken.getRealm());
                                }
                            } else {
                                zEqualsIgnoreCase = true;
                            }
                            if (zEqualsIgnoreCase) {
                                microsoftStsOAuth2Strategy = (MicrosoftStsOAuth2Strategy) oAuth2StrategyCreateOAuth2Strategy;
                                microsoftStsOAuth2Strategy.getClass();
                                if (authenticationScheme instanceof PopAuthenticationSchemeInternal) {
                                    kid = iCacheRecord.getAccessToken().getKid();
                                    deviceAtPopThumbprint = microsoftStsOAuth2Strategy.getDeviceAtPopThumbprint();
                                    if (StringUtil.isNullOrEmpty(deviceAtPopThumbprint)) {
                                        zEqualsIgnoreCase2 = false;
                                    } else {
                                        zEqualsIgnoreCase2 = deviceAtPopThumbprint.equals(kid);
                                    }
                                } else if (authenticationScheme instanceof PopAuthenticationSchemeWithClientKeyInternal) {
                                    zEqualsIgnoreCase2 = ((PopAuthenticationSchemeWithClientKeyInternal) authenticationScheme).getKid().equalsIgnoreCase(iCacheRecord.getAccessToken().getKid());
                                } else {
                                    zEqualsIgnoreCase2 = true;
                                }
                                if (!zEqualsIgnoreCase2) {
                                    if (iCacheRecord.getRefreshToken() != null) {
                                        UiRequiredException uiRequiredException2 = new UiRequiredException(null, "no_tokens_found", "No refresh token was found. ");
                                        ApiEndEvent apiEndEvent2 = new ApiEndEvent();
                                        apiEndEvent2.putException(uiRequiredException2);
                                        apiEndEvent2.putApiId(str2);
                                        Telemetry.emit(apiEndEvent2);
                                        throw uiRequiredException2;
                                    }
                                    com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                                    BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
                                } else if (iCacheRecord.getAccessToken().isExpired()) {
                                    com.microsoft.identity.common.java.logging.Logger.warn("LocalMSALController:acquireTokenSilent", "Access token is expired. Removing from cache...");
                                    oAuth2TokenCache.removeCredential(iCacheRecord.getAccessToken());
                                    com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                                    BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
                                } else {
                                    com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Returning silent result");
                                    ICacheRecord iCacheRecord3 = (ICacheRecord) arrayList.get(0);
                                    BaseController.finalizeCacheRecordForResult(iCacheRecord3, silentTokenCommandParametersBuild.getAuthenticationScheme());
                                    acquireTokenResult.setLocalAuthenticationResult(new LocalAuthenticationResult(iCacheRecord3, arrayList, SdkType.MSAL, true));
                                }
                            } else {
                                if (iCacheRecord.getRefreshToken() != null) {
                                    UiRequiredException uiRequiredException3 = new UiRequiredException(null, "no_tokens_found", "No refresh token was found. ");
                                    ApiEndEvent apiEndEvent3 = new ApiEndEvent();
                                    apiEndEvent3.putException(uiRequiredException3);
                                    apiEndEvent3.putApiId(str2);
                                    Telemetry.emit(apiEndEvent3);
                                    throw uiRequiredException3;
                                }
                                com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                                BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
                            }
                        }
                        ApiEndEvent apiEndEvent4 = new ApiEndEvent();
                        apiEndEvent4.putResult(acquireTokenResult);
                        apiEndEvent4.putApiId(str2);
                        Telemetry.emit(apiEndEvent4);
                        return acquireTokenResult;
                    }
                    f6.n("account is marked non-null but is null");
                }
                arrayList = null;
                iCacheRecord = (ICacheRecord) arrayList.get(0);
                LibraryConfiguration.getInstance().getClass();
                LibraryConfiguration.getInstance().getClass();
                if (iCacheRecord != null) {
                    f6.n("cacheRecord is marked non-null but is null");
                    return null;
                }
                if (iCacheRecord.getAccessToken() == null) {
                    authority = silentTokenCommandParametersBuild.getAuthority();
                    accessToken = iCacheRecord.getAccessToken();
                    if (authority != null) {
                        f6.n("requestAuthority is marked non-null but is null");
                        return null;
                    }
                    if (accessToken != null) {
                        f6.n("accessTokenRecord is marked non-null but is null");
                        return null;
                    }
                    if (authority instanceof AzureActiveDirectoryAuthority) {
                        azureActiveDirectoryAuthority = (AzureActiveDirectoryAuthority) authority;
                        if (AzureActiveDirectoryAudience.isHomeTenantAlias(azureActiveDirectoryAuthority.getAudience().getTenantId())) {
                            zEqualsIgnoreCase = accessToken.getHomeAccountId().split(Pattern.quote("."))[1].equalsIgnoreCase(accessToken.getRealm());
                        } else {
                            zEqualsIgnoreCase = azureActiveDirectoryAuthority.getAudience().getTenantUuidForAlias(authority.getAuthorityURL().toString()).equalsIgnoreCase(accessToken.getRealm());
                        }
                    } else {
                        zEqualsIgnoreCase = true;
                    }
                    if (zEqualsIgnoreCase) {
                        microsoftStsOAuth2Strategy = (MicrosoftStsOAuth2Strategy) oAuth2StrategyCreateOAuth2Strategy;
                        microsoftStsOAuth2Strategy.getClass();
                        if (authenticationScheme instanceof PopAuthenticationSchemeInternal) {
                            kid = iCacheRecord.getAccessToken().getKid();
                            deviceAtPopThumbprint = microsoftStsOAuth2Strategy.getDeviceAtPopThumbprint();
                            if (StringUtil.isNullOrEmpty(deviceAtPopThumbprint)) {
                                zEqualsIgnoreCase2 = false;
                            } else {
                                zEqualsIgnoreCase2 = deviceAtPopThumbprint.equals(kid);
                            }
                        } else if (authenticationScheme instanceof PopAuthenticationSchemeWithClientKeyInternal) {
                            zEqualsIgnoreCase2 = ((PopAuthenticationSchemeWithClientKeyInternal) authenticationScheme).getKid().equalsIgnoreCase(iCacheRecord.getAccessToken().getKid());
                        } else {
                            zEqualsIgnoreCase2 = true;
                        }
                        if (!zEqualsIgnoreCase2) {
                            if (iCacheRecord.getRefreshToken() != null) {
                                UiRequiredException uiRequiredException4 = new UiRequiredException(null, "no_tokens_found", "No refresh token was found. ");
                                ApiEndEvent apiEndEvent5 = new ApiEndEvent();
                                apiEndEvent5.putException(uiRequiredException4);
                                apiEndEvent5.putApiId(str2);
                                Telemetry.emit(apiEndEvent5);
                                throw uiRequiredException4;
                            }
                            com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                            BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
                        } else if (iCacheRecord.getAccessToken().isExpired()) {
                            com.microsoft.identity.common.java.logging.Logger.warn("LocalMSALController:acquireTokenSilent", "Access token is expired. Removing from cache...");
                            oAuth2TokenCache.removeCredential(iCacheRecord.getAccessToken());
                            com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                            BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
                        } else {
                            com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Returning silent result");
                            ICacheRecord iCacheRecord4 = (ICacheRecord) arrayList.get(0);
                            BaseController.finalizeCacheRecordForResult(iCacheRecord4, silentTokenCommandParametersBuild.getAuthenticationScheme());
                            acquireTokenResult.setLocalAuthenticationResult(new LocalAuthenticationResult(iCacheRecord4, arrayList, SdkType.MSAL, true));
                        }
                    } else {
                        if (iCacheRecord.getRefreshToken() != null) {
                            UiRequiredException uiRequiredException5 = new UiRequiredException(null, "no_tokens_found", "No refresh token was found. ");
                            ApiEndEvent apiEndEvent6 = new ApiEndEvent();
                            apiEndEvent6.putException(uiRequiredException5);
                            apiEndEvent6.putApiId(str2);
                            Telemetry.emit(apiEndEvent6);
                            throw uiRequiredException5;
                        }
                        com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                        BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
                    }
                } else {
                    if (iCacheRecord.getRefreshToken() != null) {
                        UiRequiredException uiRequiredException6 = new UiRequiredException(null, "no_tokens_found", "No refresh token was found. ");
                        ApiEndEvent apiEndEvent7 = new ApiEndEvent();
                        apiEndEvent7.putException(uiRequiredException6);
                        apiEndEvent7.putApiId(str2);
                        Telemetry.emit(apiEndEvent7);
                        throw uiRequiredException6;
                    }
                    com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                    BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
                }
                ApiEndEvent apiEndEvent8 = new ApiEndEvent();
                apiEndEvent8.putResult(acquireTokenResult);
                apiEndEvent8.putApiId(str2);
                Telemetry.emit(apiEndEvent8);
                return acquireTokenResult;
            }
            q.i("no_account_found", "No cached accounts found for the supplied homeAccountId and clientId", null);
        }
        accountRecord = null;
        authenticationScheme = silentTokenCommandParametersBuild.getAuthenticationScheme();
        OAuth2StrategyParameters.OAuth2StrategyParametersBuilder oAuth2StrategyParametersBuilder2 = new OAuth2StrategyParameters.OAuth2StrategyParametersBuilder();
        oAuth2StrategyParametersBuilder2.platformComponents(silentTokenCommandParameters.getPlatformComponents());
        oAuth2StrategyParametersBuilder2.authenticationScheme(authenticationScheme);
        oAuth2StrategyCreateOAuth2Strategy = silentTokenCommandParametersBuild.getAuthority().createOAuth2Strategy(oAuth2StrategyParametersBuilder2.build());
        clientId = silentTokenCommandParametersBuild.getClientId();
        applicationIdentifier = silentTokenCommandParameters.getApplicationIdentifier();
        mamEnrollmentId = silentTokenCommandParameters.getMamEnrollmentId();
        strJoin = TextUtils.join(TokenAuthenticationScheme.SCHEME_DELIMITER, silentTokenCommandParametersBuild.getScopes());
        oAuth2TokenCache.getClass();
        if (clientId != null) {
            f6.n("clientId is marked non-null but is null");
        } else {
            if (accountRecord != null) {
                if (authenticationScheme != null) {
                    synchronized (oAuth2TokenCache) {
                        arrayList = new ArrayList();
                        arrayList.add(oAuth2TokenCache.load(clientId, applicationIdentifier, mamEnrollmentId, strJoin, accountRecord, authenticationScheme));
                        while (r5.hasNext()) {
                            if (!accountRecord.equals(iCacheRecord2.getAccount())) {
                                arrayList.add(iCacheRecord2);
                            }
                        }
                    }
                } else {
                    f6.n("authScheme is marked non-null but is null");
                }
                iCacheRecord = (ICacheRecord) arrayList.get(0);
                LibraryConfiguration.getInstance().getClass();
                LibraryConfiguration.getInstance().getClass();
                if (iCacheRecord != null) {
                    f6.n("cacheRecord is marked non-null but is null");
                    return null;
                }
                if (iCacheRecord.getAccessToken() == null) {
                    authority = silentTokenCommandParametersBuild.getAuthority();
                    accessToken = iCacheRecord.getAccessToken();
                    if (authority != null) {
                        f6.n("requestAuthority is marked non-null but is null");
                        return null;
                    }
                    if (accessToken != null) {
                        f6.n("accessTokenRecord is marked non-null but is null");
                        return null;
                    }
                    if (authority instanceof AzureActiveDirectoryAuthority) {
                        azureActiveDirectoryAuthority = (AzureActiveDirectoryAuthority) authority;
                        if (AzureActiveDirectoryAudience.isHomeTenantAlias(azureActiveDirectoryAuthority.getAudience().getTenantId())) {
                            zEqualsIgnoreCase = accessToken.getHomeAccountId().split(Pattern.quote("."))[1].equalsIgnoreCase(accessToken.getRealm());
                        } else {
                            zEqualsIgnoreCase = azureActiveDirectoryAuthority.getAudience().getTenantUuidForAlias(authority.getAuthorityURL().toString()).equalsIgnoreCase(accessToken.getRealm());
                        }
                    } else {
                        zEqualsIgnoreCase = true;
                    }
                    if (zEqualsIgnoreCase) {
                        microsoftStsOAuth2Strategy = (MicrosoftStsOAuth2Strategy) oAuth2StrategyCreateOAuth2Strategy;
                        microsoftStsOAuth2Strategy.getClass();
                        if (authenticationScheme instanceof PopAuthenticationSchemeInternal) {
                            kid = iCacheRecord.getAccessToken().getKid();
                            deviceAtPopThumbprint = microsoftStsOAuth2Strategy.getDeviceAtPopThumbprint();
                            if (StringUtil.isNullOrEmpty(deviceAtPopThumbprint)) {
                                zEqualsIgnoreCase2 = false;
                            } else {
                                zEqualsIgnoreCase2 = deviceAtPopThumbprint.equals(kid);
                            }
                        } else if (authenticationScheme instanceof PopAuthenticationSchemeWithClientKeyInternal) {
                            zEqualsIgnoreCase2 = ((PopAuthenticationSchemeWithClientKeyInternal) authenticationScheme).getKid().equalsIgnoreCase(iCacheRecord.getAccessToken().getKid());
                        } else {
                            zEqualsIgnoreCase2 = true;
                        }
                        if (!zEqualsIgnoreCase2) {
                            if (iCacheRecord.getRefreshToken() != null) {
                                UiRequiredException uiRequiredException7 = new UiRequiredException(null, "no_tokens_found", "No refresh token was found. ");
                                ApiEndEvent apiEndEvent9 = new ApiEndEvent();
                                apiEndEvent9.putException(uiRequiredException7);
                                apiEndEvent9.putApiId(str2);
                                Telemetry.emit(apiEndEvent9);
                                throw uiRequiredException7;
                            }
                            com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                            BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
                        } else if (iCacheRecord.getAccessToken().isExpired()) {
                            com.microsoft.identity.common.java.logging.Logger.warn("LocalMSALController:acquireTokenSilent", "Access token is expired. Removing from cache...");
                            oAuth2TokenCache.removeCredential(iCacheRecord.getAccessToken());
                            com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                            BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
                        } else {
                            com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Returning silent result");
                            ICacheRecord iCacheRecord5 = (ICacheRecord) arrayList.get(0);
                            BaseController.finalizeCacheRecordForResult(iCacheRecord5, silentTokenCommandParametersBuild.getAuthenticationScheme());
                            acquireTokenResult.setLocalAuthenticationResult(new LocalAuthenticationResult(iCacheRecord5, arrayList, SdkType.MSAL, true));
                        }
                    } else {
                        if (iCacheRecord.getRefreshToken() != null) {
                            UiRequiredException uiRequiredException8 = new UiRequiredException(null, "no_tokens_found", "No refresh token was found. ");
                            ApiEndEvent apiEndEvent10 = new ApiEndEvent();
                            apiEndEvent10.putException(uiRequiredException8);
                            apiEndEvent10.putApiId(str2);
                            Telemetry.emit(apiEndEvent10);
                            throw uiRequiredException8;
                        }
                        com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                        BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
                    }
                } else {
                    if (iCacheRecord.getRefreshToken() != null) {
                        UiRequiredException uiRequiredException9 = new UiRequiredException(null, "no_tokens_found", "No refresh token was found. ");
                        ApiEndEvent apiEndEvent11 = new ApiEndEvent();
                        apiEndEvent11.putException(uiRequiredException9);
                        apiEndEvent11.putApiId(str2);
                        Telemetry.emit(apiEndEvent11);
                        throw uiRequiredException9;
                    }
                    com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                    BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
                }
                ApiEndEvent apiEndEvent12 = new ApiEndEvent();
                apiEndEvent12.putResult(acquireTokenResult);
                apiEndEvent12.putApiId(str2);
                Telemetry.emit(apiEndEvent12);
                return acquireTokenResult;
            }
            f6.n("account is marked non-null but is null");
        }
        arrayList = null;
        iCacheRecord = (ICacheRecord) arrayList.get(0);
        LibraryConfiguration.getInstance().getClass();
        LibraryConfiguration.getInstance().getClass();
        if (iCacheRecord != null) {
            f6.n("cacheRecord is marked non-null but is null");
            return null;
        }
        if (iCacheRecord.getAccessToken() == null) {
            authority = silentTokenCommandParametersBuild.getAuthority();
            accessToken = iCacheRecord.getAccessToken();
            if (authority != null) {
                f6.n("requestAuthority is marked non-null but is null");
                return null;
            }
            if (accessToken != null) {
                f6.n("accessTokenRecord is marked non-null but is null");
                return null;
            }
            if (authority instanceof AzureActiveDirectoryAuthority) {
                azureActiveDirectoryAuthority = (AzureActiveDirectoryAuthority) authority;
                if (AzureActiveDirectoryAudience.isHomeTenantAlias(azureActiveDirectoryAuthority.getAudience().getTenantId())) {
                    zEqualsIgnoreCase = accessToken.getHomeAccountId().split(Pattern.quote("."))[1].equalsIgnoreCase(accessToken.getRealm());
                } else {
                    zEqualsIgnoreCase = azureActiveDirectoryAuthority.getAudience().getTenantUuidForAlias(authority.getAuthorityURL().toString()).equalsIgnoreCase(accessToken.getRealm());
                }
            } else {
                zEqualsIgnoreCase = true;
            }
            if (zEqualsIgnoreCase) {
                microsoftStsOAuth2Strategy = (MicrosoftStsOAuth2Strategy) oAuth2StrategyCreateOAuth2Strategy;
                microsoftStsOAuth2Strategy.getClass();
                if (authenticationScheme instanceof PopAuthenticationSchemeInternal) {
                    kid = iCacheRecord.getAccessToken().getKid();
                    deviceAtPopThumbprint = microsoftStsOAuth2Strategy.getDeviceAtPopThumbprint();
                    if (StringUtil.isNullOrEmpty(deviceAtPopThumbprint)) {
                        zEqualsIgnoreCase2 = false;
                    } else {
                        zEqualsIgnoreCase2 = deviceAtPopThumbprint.equals(kid);
                    }
                } else if (authenticationScheme instanceof PopAuthenticationSchemeWithClientKeyInternal) {
                    zEqualsIgnoreCase2 = ((PopAuthenticationSchemeWithClientKeyInternal) authenticationScheme).getKid().equalsIgnoreCase(iCacheRecord.getAccessToken().getKid());
                } else {
                    zEqualsIgnoreCase2 = true;
                }
                if (!zEqualsIgnoreCase2) {
                    if (iCacheRecord.getRefreshToken() != null) {
                        UiRequiredException uiRequiredException10 = new UiRequiredException(null, "no_tokens_found", "No refresh token was found. ");
                        ApiEndEvent apiEndEvent13 = new ApiEndEvent();
                        apiEndEvent13.putException(uiRequiredException10);
                        apiEndEvent13.putApiId(str2);
                        Telemetry.emit(apiEndEvent13);
                        throw uiRequiredException10;
                    }
                    com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                    BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
                } else if (iCacheRecord.getAccessToken().isExpired()) {
                    com.microsoft.identity.common.java.logging.Logger.warn("LocalMSALController:acquireTokenSilent", "Access token is expired. Removing from cache...");
                    oAuth2TokenCache.removeCredential(iCacheRecord.getAccessToken());
                    com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                    BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
                } else {
                    com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Returning silent result");
                    ICacheRecord iCacheRecord6 = (ICacheRecord) arrayList.get(0);
                    BaseController.finalizeCacheRecordForResult(iCacheRecord6, silentTokenCommandParametersBuild.getAuthenticationScheme());
                    acquireTokenResult.setLocalAuthenticationResult(new LocalAuthenticationResult(iCacheRecord6, arrayList, SdkType.MSAL, true));
                }
            } else {
                if (iCacheRecord.getRefreshToken() != null) {
                    UiRequiredException uiRequiredException11 = new UiRequiredException(null, "no_tokens_found", "No refresh token was found. ");
                    ApiEndEvent apiEndEvent14 = new ApiEndEvent();
                    apiEndEvent14.putException(uiRequiredException11);
                    apiEndEvent14.putApiId(str2);
                    Telemetry.emit(apiEndEvent14);
                    throw uiRequiredException11;
                }
                com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
                BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
            }
        } else {
            if (iCacheRecord.getRefreshToken() != null) {
                UiRequiredException uiRequiredException12 = new UiRequiredException(null, "no_tokens_found", "No refresh token was found. ");
                ApiEndEvent apiEndEvent15 = new ApiEndEvent();
                apiEndEvent15.putException(uiRequiredException12);
                apiEndEvent15.putApiId(str2);
                Telemetry.emit(apiEndEvent15);
                throw uiRequiredException12;
            }
            com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:acquireTokenSilent", "Renewing access token...");
            BaseController.renewAccessToken(silentTokenCommandParametersBuild, acquireTokenResult, oAuth2TokenCache, oAuth2StrategyCreateOAuth2Strategy, iCacheRecord);
        }
        ApiEndEvent apiEndEvent16 = new ApiEndEvent();
        apiEndEvent16.putResult(acquireTokenResult);
        apiEndEvent16.putApiId(str2);
        Telemetry.emit(apiEndEvent16);
        return acquireTokenResult;
    }

    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final boolean canEqual(BaseController baseController) {
        return baseController instanceof LocalMSALController;
    }

    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof LocalMSALController) && super.equals(obj);
    }

    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final List<ICacheRecord> getCurrentAccount(CommandParameters commandParameters) throws Exception {
        ApiStartEvent apiStartEvent = new ApiStartEvent();
        apiStartEvent.putProperties(commandParameters);
        apiStartEvent.putApiId$1("106");
        Telemetry.emit(apiStartEvent);
        List<ICacheRecord> accountsWithAggregatedAccountData = commandParameters.getOAuth2TokenCache().getAccountsWithAggregatedAccountData(commandParameters.getClientId());
        ApiEndEvent apiEndEvent = new ApiEndEvent();
        apiEndEvent.putApiId("106");
        apiEndEvent.put$1("Microsoft.MSAL.accounts_number", Integer.toString(accountsWithAggregatedAccountData.size()));
        apiEndEvent.put$1("_is_successful", "true");
        Telemetry.emit(apiEndEvent);
        return accountsWithAggregatedAccountData;
    }

    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final boolean getDeviceMode(CommandParameters commandParameters) throws Exception {
        com.microsoft.identity.common.internal.logging.Logger.warn("LocalMSALController:getDeviceMode", "LocalMSALController is not eligible to use the broker. Do not check sharedDevice mode and return false immediately.");
        return false;
    }

    public final int hashCode() {
        return 1;
    }

    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final void onFinishAuthorizationSession(int i, int i2, PropertyBag propertyBag) throws Exception {
        int i3 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("LocalMSALController:onFinishAuthorizationSession", "Completing authorization...");
        ApiStartEvent apiStartEvent = new ApiStartEvent();
        apiStartEvent.putApiId$1("1032");
        apiStartEvent.put$2("Microsoft.MSAL.result_code", String.valueOf(i2));
        apiStartEvent.put$2("Microsoft.MSAL.request_code", String.valueOf(i));
        Telemetry.emit(apiStartEvent);
        try {
            this.mAuthorizationStrategy.completeAuthorization(i, RawAuthorizationResult.fromPropertyBag(propertyBag));
        } catch (Exception e) {
            Future<MicrosoftStsAuthorizationResult> future = this.mAuthorizationFuture;
            if (future == null || !(future instanceof ResultFuture) || future.isDone()) {
                throw e;
            }
            ((ResultFuture) this.mAuthorizationFuture).setException(e);
        }
        ApiEndEvent apiEndEvent = new ApiEndEvent();
        apiEndEvent.putApiId("1032");
        Telemetry.emit(apiEndEvent);
    }

    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final boolean removeCurrentAccount(RemoveAccountCommandParameters removeAccountCommandParameters) throws Exception {
        ApiStartEvent apiStartEvent = new ApiStartEvent();
        apiStartEvent.putProperties(removeAccountCommandParameters);
        apiStartEvent.putApiId$1("107");
        Telemetry.emit(apiStartEvent);
        boolean z = !removeAccountCommandParameters.getOAuth2TokenCache().removeAccount(removeAccountCommandParameters.getClientId(), removeAccountCommandParameters.getAccount() != null ? removeAccountCommandParameters.getAccount().getHomeAccountId() : null, removeAccountCommandParameters.getAccount() != null ? removeAccountCommandParameters.getAccount().getRealm() : null).isEmpty();
        ApiEndEvent apiEndEvent = new ApiEndEvent();
        apiEndEvent.put$1("_is_successful", String.valueOf(z));
        apiEndEvent.putApiId("107");
        Telemetry.emit(apiEndEvent);
        return z;
    }
}
