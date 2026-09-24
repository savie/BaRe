package com.microsoft.identity.client.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.microsoft.identity.client.Account;
import com.microsoft.identity.client.AcquireTokenParameters;
import com.microsoft.identity.client.AcquireTokenSilentParameters;
import com.microsoft.identity.client.MultiTenantAccount;
import com.microsoft.identity.client.Prompt;
import com.microsoft.identity.client.PublicClientApplication;
import com.microsoft.identity.client.PublicClientApplicationConfiguration;
import com.microsoft.identity.client.TenantProfile;
import com.microsoft.identity.client.claims.ClaimsRequest;
import com.microsoft.identity.client.claims.RequestedClaimAdditionalInformation;
import com.microsoft.identity.client.exception.MsalArgumentException;
import com.microsoft.identity.common.internal.commands.parameters.AndroidInteractiveTokenCommandParameters;
import com.microsoft.identity.common.internal.util.GzipUtil;
import com.microsoft.identity.common.java.authorities.Authority;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryAuthority;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryB2CAuthority;
import com.microsoft.identity.common.java.authscheme.BearerAuthenticationSchemeInternal;
import com.microsoft.identity.common.java.cache.MsalOAuth2TokenCache;
import com.microsoft.identity.common.java.commands.parameters.CommandParameters;
import com.microsoft.identity.common.java.commands.parameters.RemoveAccountCommandParameters;
import com.microsoft.identity.common.java.commands.parameters.SilentTokenCommandParameters;
import com.microsoft.identity.common.java.dto.AccountRecord;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.providers.oauth2.OpenIdConnectPromptParameter;
import com.microsoft.identity.common.java.request.SdkType;
import com.microsoft.identity.common.java.ui.AuthorizationAgent;
import com.microsoft.identity.common.java.util.SchemaUtil;
import defpackage.c6;
import defpackage.eq3;
import defpackage.l0;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class MsalUtils {
    public static CommandParameters createCommandParameters(PublicClientApplicationConfiguration publicClientApplicationConfiguration, MsalOAuth2TokenCache msalOAuth2TokenCache) {
        CommandParameters.CommandParametersBuilder commandParametersBuilderSdkType = CommandParameters.builder().platformComponents(LibraryInfoHelper.createFromContext(publicClientApplicationConfiguration.getAppContext())).applicationName(publicClientApplicationConfiguration.getAppContext().getPackageName()).applicationVersion(getPackageVersion(publicClientApplicationConfiguration.getAppContext())).clientId(publicClientApplicationConfiguration.getClientId()).isSharedDevice(publicClientApplicationConfiguration.getIsSharedDevice()).oAuth2TokenCache(msalOAuth2TokenCache).redirectUri(publicClientApplicationConfiguration.getRedirectUri()).requiredBrokerProtocolVersion(publicClientApplicationConfiguration.getRequiredBrokerProtocolVersion()).sdkType(SdkType.MSAL);
        int i = PublicClientApplication.a;
        return commandParametersBuilderSdkType.sdkVersion("8.3.2").powerOptCheckEnabled(publicClientApplicationConfiguration.isPowerOptCheckForEnabled().booleanValue()).build();
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:102:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:103:0x0305  */
    /* JADX WARN: Code duplicated, block: B:97:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:99:0x02d8  */
    /* JADX WARN: Instruction removed from duplicated block: B:101:0x02e0, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    public static AndroidInteractiveTokenCommandParameters createInteractiveTokenCommandParameters(PublicClientApplicationConfiguration publicClientApplicationConfiguration, MsalOAuth2TokenCache msalOAuth2TokenCache, AcquireTokenParameters acquireTokenParameters) throws ClientException {
        Authority authorityFromAuthorityUrl;
        ArrayList arrayList;
        String loginHint;
        String webauthnVersion;
        LibraryInfoHelper.createFromContext(acquireTokenParameters.getActivity());
        BearerAuthenticationSchemeInternal bearerAuthenticationSchemeInternal = new BearerAuthenticationSchemeInternal();
        if (!GzipUtil.isEmpty(acquireTokenParameters.getAuthority())) {
            authorityFromAuthorityUrl = Authority.getAuthorityFromAuthorityUrl(acquireTokenParameters.getAuthority());
        } else if (acquireTokenParameters.getAccount() != null) {
            String string = publicClientApplicationConfiguration.getDefaultAuthority() instanceof AzureActiveDirectoryB2CAuthority ? publicClientApplicationConfiguration.getDefaultAuthority().getAuthorityURL().toString() : null;
            authorityFromAuthorityUrl = string == null ? publicClientApplicationConfiguration.getDefaultAuthority() : Authority.getAuthorityFromAuthorityUrl(string);
        } else {
            authorityFromAuthorityUrl = publicClientApplicationConfiguration.getDefaultAuthority();
        }
        if (authorityFromAuthorityUrl instanceof AzureActiveDirectoryAuthority) {
            ((AzureActiveDirectoryAuthority) authorityFromAuthorityUrl).setMultipleCloudsSupported(publicClientApplicationConfiguration.getMultipleCloudsSupported().booleanValue());
        }
        String jsonStringFromClaimsRequest = ClaimsRequest.getJsonStringFromClaimsRequest(getClaimsRequest(acquireTokenParameters.getClaimsRequest(), publicClientApplicationConfiguration, authorityFromAuthorityUrl));
        AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder androidInteractiveTokenCommandParametersBuilder = (AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) AndroidInteractiveTokenCommandParameters.builder().activity(acquireTokenParameters.getActivity()).platformComponents(LibraryInfoHelper.createFromActivity(acquireTokenParameters.getActivity(), acquireTokenParameters.getFragment()))).applicationName(publicClientApplicationConfiguration.getAppContext().getPackageName())).applicationVersion(getPackageVersion(publicClientApplicationConfiguration.getAppContext()))).clientId(publicClientApplicationConfiguration.getClientId())).isSharedDevice(publicClientApplicationConfiguration.getIsSharedDevice())).oAuth2TokenCache(msalOAuth2TokenCache)).redirectUri(publicClientApplicationConfiguration.getRedirectUri())).requiredBrokerProtocolVersion(publicClientApplicationConfiguration.getRequiredBrokerProtocolVersion())).sdkType(SdkType.MSAL);
        int i = PublicClientApplication.a;
        AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder androidInteractiveTokenCommandParametersBuilderExtraScopesToConsent = ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) androidInteractiveTokenCommandParametersBuilder.sdkVersion("8.3.2")).preferredBrowser(publicClientApplicationConfiguration.getPreferredBrowser()).browserSafeList(publicClientApplicationConfiguration.getBrowserSafeList()).authority(authorityFromAuthorityUrl)).claimsRequestJson(jsonStringFromClaimsRequest)).forceRefresh(acquireTokenParameters.getClaimsRequest() != null)).scopes(new HashSet(acquireTokenParameters.getScopes()))).extraScopesToConsent(acquireTokenParameters.getExtraScopesToConsent());
        List<Map.Entry<String, String>> extraQueryStringParameters = acquireTokenParameters.getExtraQueryStringParameters();
        if (extraQueryStringParameters != null || publicClientApplicationConfiguration.isWebauthnCapable().booleanValue()) {
            ArrayList arrayList2 = extraQueryStringParameters != null ? new ArrayList(extraQueryStringParameters) : new ArrayList();
            boolean zBooleanValue = publicClientApplicationConfiguration.isWebauthnCapable().booleanValue();
            AbstractMap.SimpleEntry simpleEntry = new AbstractMap.SimpleEntry("webauthn", "1");
            arrayList = new ArrayList(arrayList2);
            if (Build.VERSION.SDK_INT < 28) {
                Logger.info("AndroidPlatformUtil:UpdateWithOrDeleteWebAuthnParam", "Device is running on an Android version less than 9 (API 28), which is the minimum level for passkeys.");
                arrayList.remove(simpleEntry);
            } else if (zBooleanValue && !arrayList2.contains(simpleEntry)) {
                arrayList.add(simpleEntry);
            }
        } else {
            arrayList = null;
        }
        AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder androidInteractiveTokenCommandParametersBuilderExtraQueryStringParameters = androidInteractiveTokenCommandParametersBuilderExtraScopesToConsent.extraQueryStringParameters(arrayList);
        if (acquireTokenParameters.getAccount() != null) {
            Account account = acquireTokenParameters.getAccount();
            if (account.getClaims() == null) {
                Iterator<Map.Entry<String, TenantProfile>> it = ((MultiTenantAccount) account).getTenantProfiles().entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        loginHint = null;
                        break;
                    }
                    Map.Entry<String, TenantProfile> next = it.next();
                    if (next.getValue().getClaims() != null) {
                        String displayableId = SchemaUtil.getDisplayableId(next.getValue().getClaims());
                        if (!"Missing from the token response".equalsIgnoreCase(displayableId)) {
                            loginHint = displayableId;
                            break;
                        }
                    }
                }
            } else {
                loginHint = SchemaUtil.getDisplayableId(account.getClaims());
            }
        } else {
            loginHint = acquireTokenParameters.getLoginHint();
        }
        AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder androidInteractiveTokenCommandParametersBuilderBrokerBrowserSupportEnabled = ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) androidInteractiveTokenCommandParametersBuilderExtraQueryStringParameters.loginHint(loginHint)).domainHint(null)).account(acquireTokenParameters.getAccountRecord())).authenticationScheme(bearerAuthenticationSchemeInternal)).authorizationAgent(publicClientApplicationConfiguration.getAuthorizationAgent() != null ? publicClientApplicationConfiguration.getAuthorizationAgent() : AuthorizationAgent.DEFAULT).brokerBrowserSupportEnabled();
        Prompt prompt = acquireTokenParameters.getPrompt();
        OpenIdConnectPromptParameter openIdConnectPromptParameter = OpenIdConnectPromptParameter.SELECT_ACCOUNT;
        if (prompt != null) {
            int iOrdinal = acquireTokenParameters.getPrompt().ordinal();
            if (iOrdinal == 1) {
                openIdConnectPromptParameter = OpenIdConnectPromptParameter.LOGIN;
            } else if (iOrdinal == 2) {
                openIdConnectPromptParameter = OpenIdConnectPromptParameter.CONSENT;
            } else if (iOrdinal == 3) {
                openIdConnectPromptParameter = OpenIdConnectPromptParameter.CREATE;
            } else if (iOrdinal == 4) {
                openIdConnectPromptParameter = OpenIdConnectPromptParameter.UNSET;
            }
        }
        AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder androidInteractiveTokenCommandParametersBuilderPreferredAuthMethod = ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) ((AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder) androidInteractiveTokenCommandParametersBuilderBrokerBrowserSupportEnabled.prompt(openIdConnectPromptParameter).isWebViewZoomControlsEnabled(publicClientApplicationConfiguration.isWebViewZoomControlsEnabled()).isWebViewZoomEnabled(publicClientApplicationConfiguration.isWebViewZoomEnabled()).handleNullTaskAffinity(publicClientApplicationConfiguration.isHandleNullTaskAffinityEnabled().booleanValue()).powerOptCheckEnabled(publicClientApplicationConfiguration.isPowerOptCheckForEnabled().booleanValue())).correlationId(null)).preferredAuthMethod();
        List<Map.Entry<String, String>> extraQueryStringParameters2 = acquireTokenParameters.getExtraQueryStringParameters();
        HashMap<String, String> map = new HashMap<>();
        if (Build.VERSION.SDK_INT >= 28 && AuthorizationAgent.WEBVIEW.equals(publicClientApplicationConfiguration.getAuthorizationAgent())) {
            if (extraQueryStringParameters2 != null && !extraQueryStringParameters2.isEmpty()) {
                Iterator<Map.Entry<String, String>> it2 = extraQueryStringParameters2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        Map.Entry<String, String> next2 = it2.next();
                        if (!"webauthn".equals(next2.getKey()) || !"1".equals(next2.getValue())) {
                        }
                    } else if (publicClientApplicationConfiguration.isWebauthnCapable().booleanValue()) {
                    }
                    if (publicClientApplicationConfiguration.getWebauthnVersion() != null) {
                        webauthnVersion = publicClientApplicationConfiguration.getWebauthnVersion();
                        webauthnVersion.getClass();
                        if (!webauthnVersion.equals("1.0")) {
                            map.put("x-ms-PassKeyAuth", "1.0/passkey");
                            int i2 = com.microsoft.identity.common.logging.Logger.a;
                            Logger.verbose("CommandParametersAdapter:addPasskeyHeader", "Passkey header added for WebAuthn version 1.0");
                        } else if (webauthnVersion.equals("1.1")) {
                            map.put("x-ms-PassKeyAuth", "1.1/passkey");
                            int i3 = com.microsoft.identity.common.logging.Logger.a;
                            Logger.verbose("CommandParametersAdapter:addPasskeyHeader", "Passkey header added for WebAuthn version 1.1");
                        } else {
                            String str = "Unsupported WebAuthn version: " + publicClientApplicationConfiguration.getWebauthnVersion();
                            int i4 = com.microsoft.identity.common.logging.Logger.a;
                            Logger.verbose("CommandParametersAdapter:addPasskeyHeader", str);
                        }
                    }
                }
            } else if (publicClientApplicationConfiguration.isWebauthnCapable().booleanValue()) {
                if (publicClientApplicationConfiguration.getWebauthnVersion() != null) {
                    webauthnVersion = publicClientApplicationConfiguration.getWebauthnVersion();
                    webauthnVersion.getClass();
                    if (!webauthnVersion.equals("1.0")) {
                        map.put("x-ms-PassKeyAuth", "1.0/passkey");
                        int i5 = com.microsoft.identity.common.logging.Logger.a;
                        Logger.verbose("CommandParametersAdapter:addPasskeyHeader", "Passkey header added for WebAuthn version 1.0");
                    } else if (webauthnVersion.equals("1.1")) {
                        String str2 = "Unsupported WebAuthn version: " + publicClientApplicationConfiguration.getWebauthnVersion();
                        int i6 = com.microsoft.identity.common.logging.Logger.a;
                        Logger.verbose("CommandParametersAdapter:addPasskeyHeader", str2);
                    } else {
                        map.put("x-ms-PassKeyAuth", "1.1/passkey");
                        int i7 = com.microsoft.identity.common.logging.Logger.a;
                        Logger.verbose("CommandParametersAdapter:addPasskeyHeader", "Passkey header added for WebAuthn version 1.1");
                    }
                }
            }
        }
        return androidInteractiveTokenCommandParametersBuilderPreferredAuthMethod.requestHeaders(map).build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static RemoveAccountCommandParameters createRemoveAccountCommandParameters(PublicClientApplicationConfiguration publicClientApplicationConfiguration, MsalOAuth2TokenCache msalOAuth2TokenCache, AccountRecord accountRecord) {
        RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder removeAccountCommandParametersBuilder = (RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder) ((RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder) ((RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder) ((RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder) ((RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder) ((RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder) ((RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder) ((RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder) ((RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder) RemoveAccountCommandParameters.builder().platformComponents(LibraryInfoHelper.createFromContext(publicClientApplicationConfiguration.getAppContext()))).applicationName(publicClientApplicationConfiguration.getAppContext().getPackageName())).applicationVersion(getPackageVersion(publicClientApplicationConfiguration.getAppContext()))).clientId(publicClientApplicationConfiguration.getClientId())).isSharedDevice(publicClientApplicationConfiguration.getIsSharedDevice())).oAuth2TokenCache(msalOAuth2TokenCache)).redirectUri(publicClientApplicationConfiguration.getRedirectUri())).requiredBrokerProtocolVersion(publicClientApplicationConfiguration.getRequiredBrokerProtocolVersion())).sdkType(SdkType.MSAL);
        int i = PublicClientApplication.a;
        return ((RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder) ((RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder) removeAccountCommandParametersBuilder.sdkVersion("8.3.2")).account(accountRecord).browserSafeList(publicClientApplicationConfiguration.getBrowserSafeList()).powerOptCheckEnabled(publicClientApplicationConfiguration.isPowerOptCheckForEnabled().booleanValue())).build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SilentTokenCommandParameters createSilentTokenCommandParameters(PublicClientApplicationConfiguration publicClientApplicationConfiguration, MsalOAuth2TokenCache msalOAuth2TokenCache, AcquireTokenSilentParameters acquireTokenSilentParameters) throws ClientException {
        Authority authorityFromAuthorityUrl = Authority.getAuthorityFromAuthorityUrl(acquireTokenSilentParameters.getAuthority());
        if (authorityFromAuthorityUrl instanceof AzureActiveDirectoryAuthority) {
            ((AzureActiveDirectoryAuthority) authorityFromAuthorityUrl).setMultipleCloudsSupported(publicClientApplicationConfiguration.getMultipleCloudsSupported().booleanValue());
        }
        ClaimsRequest claimsRequest = acquireTokenSilentParameters.getClaimsRequest();
        String jsonStringFromClaimsRequest = ClaimsRequest.getJsonStringFromClaimsRequest(getClaimsRequest(acquireTokenSilentParameters.getClaimsRequest(), publicClientApplicationConfiguration, authorityFromAuthorityUrl));
        boolean z = claimsRequest != null || acquireTokenSilentParameters.getForceRefresh();
        LibraryInfoHelper.createFromContext(publicClientApplicationConfiguration.getAppContext());
        BearerAuthenticationSchemeInternal bearerAuthenticationSchemeInternal = new BearerAuthenticationSchemeInternal();
        SilentTokenCommandParameters.SilentTokenCommandParametersBuilder silentTokenCommandParametersBuilder = (SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) SilentTokenCommandParameters.builder().platformComponents(LibraryInfoHelper.createFromContext(publicClientApplicationConfiguration.getAppContext()))).applicationName(publicClientApplicationConfiguration.getAppContext().getPackageName())).applicationVersion(getPackageVersion(publicClientApplicationConfiguration.getAppContext()))).clientId(publicClientApplicationConfiguration.getClientId())).isSharedDevice(publicClientApplicationConfiguration.getIsSharedDevice())).oAuth2TokenCache(msalOAuth2TokenCache)).redirectUri(publicClientApplicationConfiguration.getRedirectUri())).requiredBrokerProtocolVersion(publicClientApplicationConfiguration.getRequiredBrokerProtocolVersion())).sdkType(SdkType.MSAL);
        int i = PublicClientApplication.a;
        return ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) ((SilentTokenCommandParameters.SilentTokenCommandParametersBuilder) silentTokenCommandParametersBuilder.sdkVersion("8.3.2")).authority(authorityFromAuthorityUrl)).claimsRequestJson(jsonStringFromClaimsRequest)).forceRefresh(z)).account(acquireTokenSilentParameters.getAccountRecord())).authenticationScheme(bearerAuthenticationSchemeInternal)).powerOptCheckEnabled(publicClientApplicationConfiguration.isPowerOptCheckForEnabled().booleanValue())).correlationId(null)).scopes(new HashSet(acquireTokenSilentParameters.getScopes()))).build();
    }

    private static ClaimsRequest getClaimsRequest(ClaimsRequest claimsRequest, PublicClientApplicationConfiguration publicClientApplicationConfiguration, Authority authority) {
        if (authority instanceof AzureActiveDirectoryAuthority) {
            String clientCapabilities = publicClientApplicationConfiguration.getClientCapabilities();
            if (claimsRequest == null) {
                claimsRequest = new ClaimsRequest();
            }
            if (clientCapabilities != null) {
                RequestedClaimAdditionalInformation requestedClaimAdditionalInformation = new RequestedClaimAdditionalInformation();
                requestedClaimAdditionalInformation.setValues(new ArrayList(Arrays.asList(clientCapabilities.split(","))));
                claimsRequest.requestClaimInAccessToken("xms_cc", requestedClaimAdditionalInformation);
            }
        }
        return claimsRequest;
    }

    private static String getPackageVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void throwOnMainThread(String str) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return;
        }
        l0.e(eq3.k("method: ", str, " may not be called from main thread."));
    }

    public static void validateNonNullArg(Object obj, String str) throws MsalArgumentException {
        if (obj == null || (((obj instanceof CharSequence) && TextUtils.isEmpty((CharSequence) obj)) || (((obj instanceof List) && ((List) obj).isEmpty()) || ((obj instanceof Map) && ((Map) obj).isEmpty())))) {
            throw new MsalArgumentException("illegal_argument_exception", str.concat(" cannot be null or empty"), null);
        }
    }

    public static void validateNonNullArgument(Object obj, String str) {
        if (obj == null || ((obj instanceof CharSequence) && TextUtils.isEmpty((CharSequence) obj))) {
            c6.f(str.concat(" cannot be null or empty"));
        }
    }
}
