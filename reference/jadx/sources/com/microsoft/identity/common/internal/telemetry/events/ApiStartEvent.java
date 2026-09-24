package com.microsoft.identity.common.internal.telemetry.events;

import com.microsoft.identity.common.java.authorities.Authority;
import com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.java.commands.parameters.CommandParameters;
import com.microsoft.identity.common.java.commands.parameters.InteractiveTokenCommandParameters;
import com.microsoft.identity.common.java.commands.parameters.SilentTokenCommandParameters;
import com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters;
import com.microsoft.identity.common.java.telemetry.events.BaseEvent;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.f6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class ApiStartEvent extends BaseEvent {
    public ApiStartEvent() {
        names("api_start_event");
        put("Microsoft.MSAL.event_type", "Microsoft.MSAL.api_event");
    }

    public final void put$2(String str, String str2) {
        super.put(str, str2);
    }

    public final void putApiId$1(String str) {
        if (str != null) {
            super.put("Microsoft.MSAL.api_id", str);
        } else {
            f6.n("apiId is marked non-null but is null");
        }
    }

    public final void putProperties(CommandParameters commandParameters) {
        if (commandParameters == null) {
            return;
        }
        if (commandParameters.getSdkType() != null) {
            super.put("Microsoft.MSAL.sdk_name", commandParameters.getSdkType().name());
        }
        super.put("Microsoft.MSAL.sdk_version", commandParameters.getSdkVersion());
        super.put("Microsoft.MSAL.redirect_uri", commandParameters.getRedirectUri());
        super.put("Microsoft.MSAL.client_id", commandParameters.getClientId());
        super.put("Microsoft.MSAL.broker_protocol_version", String.valueOf(commandParameters.getRequiredBrokerProtocolVersion()));
        if (commandParameters instanceof TokenCommandParameters) {
            TokenCommandParameters tokenCommandParameters = (TokenCommandParameters) commandParameters;
            Authority authority = tokenCommandParameters.getAuthority();
            if (authority != null) {
                if (authority.getAuthorityURL() != null) {
                    super.put("Microsoft.MSAL.authority", authority.getAuthorityURL().getAuthority());
                }
                super.put("Microsoft.MSAL.authority_type", authority.getAuthorityTypeString());
            }
            super.put("Microsoft.MSAL.claim_request", StringUtil.isNullOrEmpty(tokenCommandParameters.getClaimsRequestJson()) ? "false" : "true");
            if (tokenCommandParameters.getScopes() != null) {
                super.put("Microsoft.MSAL.scope_size", String.valueOf(tokenCommandParameters.getScopes().size()));
                super.put("Microsoft.MSAL.scope_value", tokenCommandParameters.getScopes().toString());
            }
            AbstractAuthenticationScheme authenticationScheme = tokenCommandParameters.getAuthenticationScheme();
            if (authenticationScheme != null) {
                super.put("Microsoft.MSAL.authentication_scheme", authenticationScheme.getName());
            }
        }
        if (commandParameters instanceof InteractiveTokenCommandParameters) {
            InteractiveTokenCommandParameters interactiveTokenCommandParameters = (InteractiveTokenCommandParameters) commandParameters;
            if (interactiveTokenCommandParameters.getAuthorizationAgent() != null) {
                super.put("Microsoft.MSAL.user_agent", interactiveTokenCommandParameters.getAuthorizationAgent().name());
            }
            super.put("Microsoft.MSAL.login_hint", interactiveTokenCommandParameters.getLoginHint());
            if (interactiveTokenCommandParameters.getExtraQueryStringParameters() != null) {
                super.put("Microsoft.MSAL.query_params", String.valueOf(interactiveTokenCommandParameters.getExtraQueryStringParameters().size()));
            }
            if (interactiveTokenCommandParameters.getPrompt() != null) {
                super.put("Microsoft.MSAL.prompt_behavior", interactiveTokenCommandParameters.getPrompt().toString());
            }
        }
        if (commandParameters instanceof SilentTokenCommandParameters) {
            SilentTokenCommandParameters silentTokenCommandParameters = (SilentTokenCommandParameters) commandParameters;
            if (silentTokenCommandParameters.getAccount() != null) {
                super.put("Microsoft.MSAL.user_id", silentTokenCommandParameters.getAccount().getHomeAccountId());
            }
            super.put("Microsoft.MSAL.force_refresh", String.valueOf(silentTokenCommandParameters.isForceRefresh()));
        }
    }
}
