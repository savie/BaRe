package com.microsoft.identity.common.java.commands.parameters;

import com.microsoft.identity.common.internal.commands.parameters.AndroidInteractiveTokenCommandParameters;
import com.microsoft.identity.common.java.providers.oauth2.OpenIdConnectPromptParameter;
import com.microsoft.identity.common.java.ui.AuthorizationAgent;
import com.microsoft.identity.common.java.ui.BrowserDescriptor;
import com.microsoft.identity.common.java.ui.PreferredAuthMethod;
import defpackage.q03;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class InteractiveTokenCommandParameters extends TokenCommandParameters {
    private final String accountTransferToken;

    @q03
    private final AuthorizationAgent authorizationAgent;
    private final boolean brokerBrowserSupportEnabled;
    private final transient List<BrowserDescriptor> browserSafeList;
    private final List<Map.Entry<String, String>> extraQueryStringParameters;
    private final List<Map.Entry<String, String>> extraQueryStringParametersForWebApps;

    @q03
    private final List<String> extraScopesToConsent;

    @q03
    private final boolean handleNullTaskAffinity;

    @q03
    private final boolean isWebViewZoomControlsEnabled;

    @q03
    private final boolean isWebViewZoomEnabled;
    private final PreferredAuthMethod preferredAuthMethod;
    private final transient BrowserDescriptor preferredBrowser;

    @q03
    private final OpenIdConnectPromptParameter prompt;
    private final transient HashMap<String, String> requestHeaders;
    private final boolean suppressBrokerAccountPicker;

    public InteractiveTokenCommandParameters(AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder androidInteractiveTokenCommandParametersBuilder) {
        super(androidInteractiveTokenCommandParametersBuilder);
        this.browserSafeList = androidInteractiveTokenCommandParametersBuilder.browserSafeList;
        this.preferredBrowser = androidInteractiveTokenCommandParametersBuilder.preferredBrowser;
        this.preferredAuthMethod = androidInteractiveTokenCommandParametersBuilder.preferredAuthMethod;
        this.requestHeaders = androidInteractiveTokenCommandParametersBuilder.requestHeaders;
        this.brokerBrowserSupportEnabled = androidInteractiveTokenCommandParametersBuilder.brokerBrowserSupportEnabled;
        this.prompt = androidInteractiveTokenCommandParametersBuilder.prompt;
        this.authorizationAgent = androidInteractiveTokenCommandParametersBuilder.authorizationAgent;
        this.isWebViewZoomEnabled = androidInteractiveTokenCommandParametersBuilder.isWebViewZoomEnabled;
        this.isWebViewZoomControlsEnabled = androidInteractiveTokenCommandParametersBuilder.isWebViewZoomControlsEnabled;
        this.handleNullTaskAffinity = androidInteractiveTokenCommandParametersBuilder.handleNullTaskAffinity;
        this.extraQueryStringParameters = androidInteractiveTokenCommandParametersBuilder.extraQueryStringParameters;
        this.extraQueryStringParametersForWebApps = androidInteractiveTokenCommandParametersBuilder.extraQueryStringParametersForWebApps;
        this.extraScopesToConsent = androidInteractiveTokenCommandParametersBuilder.extraScopesToConsent;
        this.accountTransferToken = androidInteractiveTokenCommandParametersBuilder.accountTransferToken;
        this.suppressBrokerAccountPicker = androidInteractiveTokenCommandParametersBuilder.suppressBrokerAccountPicker;
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters, com.microsoft.identity.common.java.commands.parameters.CommandParameters
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InteractiveTokenCommandParameters)) {
            return false;
        }
        InteractiveTokenCommandParameters interactiveTokenCommandParameters = (InteractiveTokenCommandParameters) obj;
        if (!(this instanceof AndroidInteractiveTokenCommandParameters) || !super.equals(obj) || this.brokerBrowserSupportEnabled != interactiveTokenCommandParameters.brokerBrowserSupportEnabled || this.isWebViewZoomEnabled != interactiveTokenCommandParameters.isWebViewZoomEnabled || this.isWebViewZoomControlsEnabled != interactiveTokenCommandParameters.isWebViewZoomControlsEnabled || this.handleNullTaskAffinity != interactiveTokenCommandParameters.handleNullTaskAffinity || this.suppressBrokerAccountPicker != interactiveTokenCommandParameters.suppressBrokerAccountPicker) {
            return false;
        }
        PreferredAuthMethod preferredAuthMethod = interactiveTokenCommandParameters.preferredAuthMethod;
        PreferredAuthMethod preferredAuthMethod2 = this.preferredAuthMethod;
        if (preferredAuthMethod2 == null) {
            if (preferredAuthMethod != null) {
                return false;
            }
        } else if (!preferredAuthMethod2.equals(preferredAuthMethod)) {
            return false;
        }
        OpenIdConnectPromptParameter openIdConnectPromptParameter = this.prompt;
        OpenIdConnectPromptParameter openIdConnectPromptParameter2 = interactiveTokenCommandParameters.prompt;
        if (openIdConnectPromptParameter == null) {
            if (openIdConnectPromptParameter2 != null) {
                return false;
            }
        } else if (!openIdConnectPromptParameter.equals(openIdConnectPromptParameter2)) {
            return false;
        }
        AuthorizationAgent authorizationAgent = this.authorizationAgent;
        AuthorizationAgent authorizationAgent2 = interactiveTokenCommandParameters.authorizationAgent;
        if (authorizationAgent == null) {
            if (authorizationAgent2 != null) {
                return false;
            }
        } else if (!authorizationAgent.equals(authorizationAgent2)) {
            return false;
        }
        ArrayList extraQueryStringParameters = getExtraQueryStringParameters();
        ArrayList extraQueryStringParameters2 = interactiveTokenCommandParameters.getExtraQueryStringParameters();
        if (extraQueryStringParameters == null) {
            if (extraQueryStringParameters2 != null) {
                return false;
            }
        } else if (!extraQueryStringParameters.equals(extraQueryStringParameters2)) {
            return false;
        }
        List<Map.Entry<String, String>> list = this.extraQueryStringParametersForWebApps;
        ArrayList arrayList = list == null ? null : new ArrayList(list);
        List<Map.Entry<String, String>> list2 = interactiveTokenCommandParameters.extraQueryStringParametersForWebApps;
        ArrayList arrayList2 = list2 != null ? new ArrayList(list2) : null;
        if (arrayList == null) {
            if (arrayList2 != null) {
                return false;
            }
        } else if (!arrayList.equals(arrayList2)) {
            return false;
        }
        ArrayList extraScopesToConsent = getExtraScopesToConsent();
        ArrayList extraScopesToConsent2 = interactiveTokenCommandParameters.getExtraScopesToConsent();
        if (extraScopesToConsent == null) {
            if (extraScopesToConsent2 != null) {
                return false;
            }
        } else if (!extraScopesToConsent.equals(extraScopesToConsent2)) {
            return false;
        }
        String str = interactiveTokenCommandParameters.accountTransferToken;
        String str2 = this.accountTransferToken;
        if (str2 == null) {
            return str == null;
        }
        return str2.equals(str);
    }

    public final String getAccountTransferToken() {
        return this.accountTransferToken;
    }

    public final AuthorizationAgent getAuthorizationAgent() {
        return this.authorizationAgent;
    }

    public final List<BrowserDescriptor> getBrowserSafeList() {
        List<BrowserDescriptor> list = this.browserSafeList;
        return list == null ? Collections.EMPTY_LIST : new ArrayList(list);
    }

    public final ArrayList getExtraQueryStringParameters() {
        List<Map.Entry<String, String>> list = this.extraQueryStringParameters;
        if (list == null) {
            return null;
        }
        return new ArrayList(list);
    }

    public final ArrayList getExtraScopesToConsent() {
        if (this.extraScopesToConsent == null) {
            return null;
        }
        return new ArrayList(this.extraScopesToConsent);
    }

    public final boolean getHandleNullTaskAffinity() {
        return this.handleNullTaskAffinity;
    }

    public final PreferredAuthMethod getPreferredAuthMethod() {
        return this.preferredAuthMethod;
    }

    public final BrowserDescriptor getPreferredBrowser() {
        return this.preferredBrowser;
    }

    public final OpenIdConnectPromptParameter getPrompt() {
        return this.prompt;
    }

    public final HashMap<String, String> getRequestHeaders() {
        return this.requestHeaders;
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters, com.microsoft.identity.common.java.commands.parameters.CommandParameters
    public int hashCode() {
        int iHashCode = ((((((((((super.hashCode() * 59) + (this.brokerBrowserSupportEnabled ? 79 : 97)) * 59) + (this.isWebViewZoomEnabled ? 79 : 97)) * 59) + (this.isWebViewZoomControlsEnabled ? 79 : 97)) * 59) + (this.handleNullTaskAffinity ? 79 : 97)) * 59) + (this.suppressBrokerAccountPicker ? 79 : 97)) * 59;
        PreferredAuthMethod preferredAuthMethod = this.preferredAuthMethod;
        int iHashCode2 = iHashCode + (preferredAuthMethod == null ? 43 : preferredAuthMethod.hashCode());
        OpenIdConnectPromptParameter openIdConnectPromptParameter = this.prompt;
        int iHashCode3 = (iHashCode2 * 59) + (openIdConnectPromptParameter == null ? 43 : openIdConnectPromptParameter.hashCode());
        AuthorizationAgent authorizationAgent = this.authorizationAgent;
        int iHashCode4 = (iHashCode3 * 59) + (authorizationAgent == null ? 43 : authorizationAgent.hashCode());
        ArrayList extraQueryStringParameters = getExtraQueryStringParameters();
        int iHashCode5 = (iHashCode4 * 59) + (extraQueryStringParameters == null ? 43 : extraQueryStringParameters.hashCode());
        List<Map.Entry<String, String>> list = this.extraQueryStringParametersForWebApps;
        ArrayList arrayList = list == null ? null : new ArrayList(list);
        int iHashCode6 = (iHashCode5 * 59) + (arrayList == null ? 43 : arrayList.hashCode());
        ArrayList extraScopesToConsent = getExtraScopesToConsent();
        int iHashCode7 = ((iHashCode6 * 59) + (extraScopesToConsent == null ? 43 : extraScopesToConsent.hashCode())) * 59;
        String str = this.accountTransferToken;
        return iHashCode7 + (str != null ? str.hashCode() : 43);
    }

    public final boolean isBrokerBrowserSupportEnabled() {
        return this.brokerBrowserSupportEnabled;
    }

    public final boolean isSuppressBrokerAccountPicker() {
        return this.suppressBrokerAccountPicker;
    }

    public final boolean isWebViewZoomControlsEnabled() {
        return this.isWebViewZoomControlsEnabled;
    }

    public final boolean isWebViewZoomEnabled() {
        return this.isWebViewZoomEnabled;
    }

    public abstract AndroidInteractiveTokenCommandParameters.AndroidInteractiveTokenCommandParametersBuilder toBuilder();
}
