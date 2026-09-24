package com.microsoft.identity.common.java.telemetry;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.crypto.AndroidAuthSdkStorageEncryptionManager;
import com.microsoft.identity.common.internal.broker.BrokerRequest;
import com.microsoft.identity.common.internal.cache.SharedPreferencesFileManager;
import com.microsoft.identity.common.internal.commands.parameters.AndroidInteractiveTokenCommandParameters;
import com.microsoft.identity.common.internal.request.AuthenticationSchemeTypeAdapter;
import com.microsoft.identity.common.internal.util.AbstractSharedPrefNameValueStorage;
import com.microsoft.identity.common.internal.util.GzipUtil;
import com.microsoft.identity.common.internal.util.SharedPrefStringNameValueStorage;
import com.microsoft.identity.common.internal.util.SharedPreferenceLongStorage;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryAuthority;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.microsoft.identity.common.java.commands.parameters.CommandParameters;
import com.microsoft.identity.common.java.commands.parameters.InteractiveTokenCommandParameters;
import com.microsoft.identity.common.java.commands.parameters.SilentTokenCommandParameters;
import com.microsoft.identity.common.java.opentelemetry.SerializableSpanContext;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.java.telemetry.events.BaseEvent;
import com.microsoft.identity.common.java.util.FileUtil;
import com.microsoft.identity.common.java.util.QueryParamsAdapter;
import com.microsoft.identity.common.java.util.RequestHeaderSerializationUtil;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.logging.Logger;
import defpackage.eq3;
import defpackage.g84;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class Telemetry {
    private static volatile Telemetry sTelemetryInstance;
    private final boolean mIsTelemetryEnabled;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class Builder {
        public static final AbstractSharedPrefNameValueStorage access$getNameValueStore(Context context, String str, AndroidAuthSdkStorageEncryptionManager androidAuthSdkStorageEncryptionManager) {
            SharedPreferencesFileManager sharedPreferences = SharedPreferencesFileManager.getSharedPreferences(context, str, androidAuthSdkStorageEncryptionManager);
            sharedPreferences.getClass();
            if (Long.TYPE.isAssignableFrom(String.class) || Long.class.isAssignableFrom(String.class)) {
                return new SharedPreferenceLongStorage(sharedPreferences);
            }
            if (String.class.isAssignableFrom(String.class) || String.class.isAssignableFrom(String.class)) {
                return new SharedPrefStringNameValueStorage(sharedPreferences);
            }
            g84.j("Only Long and String are natively supported as types");
            return null;
        }

        public static Bundle getRequestBundleForAcquireTokenInteractive(InteractiveTokenCommandParameters interactiveTokenCommandParameters, String str) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("MsalBrokerRequestAdapter:brokerRequestFromAcquireTokenParameters", "Constructing result bundle from AcquireTokenOperationParameters.");
            String str_toJson = interactiveTokenCommandParameters.getExtraQueryStringParameters() != null ? QueryParamsAdapter._toJson(interactiveTokenCommandParameters.getExtraQueryStringParameters()) : null;
            String str_toJson2 = interactiveTokenCommandParameters.getExtraOptions() != null ? QueryParamsAdapter._toJson(interactiveTokenCommandParameters.getExtraOptions()) : null;
            String json = interactiveTokenCommandParameters.getRequestHeaders() != null ? RequestHeaderSerializationUtil.toJson(interactiveTokenCommandParameters.getRequestHeaders()) : null;
            BrokerRequest.BrokerRequestBuilder brokerRequestBuilder = new BrokerRequest.BrokerRequestBuilder();
            brokerRequestBuilder.authority(interactiveTokenCommandParameters.getAuthority().getAuthorityURL().toString());
            brokerRequestBuilder.scope(TextUtils.join(TokenAuthenticationScheme.SCHEME_DELIMITER, interactiveTokenCommandParameters.getScopes()));
            brokerRequestBuilder.redirect(interactiveTokenCommandParameters.getRedirectUri());
            brokerRequestBuilder.clientId(interactiveTokenCommandParameters.getClientId());
            brokerRequestBuilder.childRedirectUri(interactiveTokenCommandParameters.getChildRedirectUri());
            brokerRequestBuilder.childClientId(interactiveTokenCommandParameters.getChildClientId());
            brokerRequestBuilder.userName(interactiveTokenCommandParameters.getLoginHint());
            brokerRequestBuilder.extraQueryStringParameter(str_toJson);
            brokerRequestBuilder.extraOptions(str_toJson2);
            brokerRequestBuilder.requestHeaders(json);
            brokerRequestBuilder.prompt("UNSET".equals(interactiveTokenCommandParameters.getPrompt().name()) ? null : interactiveTokenCommandParameters.getPrompt().name());
            brokerRequestBuilder.claims(interactiveTokenCommandParameters.getClaimsRequestJson());
            brokerRequestBuilder.forceRefresh(interactiveTokenCommandParameters.isForceRefresh());
            brokerRequestBuilder.correlationId(interactiveTokenCommandParameters.getCorrelationId());
            brokerRequestBuilder.applicationName(interactiveTokenCommandParameters.getApplicationName());
            brokerRequestBuilder.applicationVersion(interactiveTokenCommandParameters.getApplicationVersion());
            brokerRequestBuilder.msalVersion(interactiveTokenCommandParameters.getSdkVersion());
            brokerRequestBuilder.sdkType(interactiveTokenCommandParameters.getSdkType());
            brokerRequestBuilder.environment(AzureActiveDirectory.getEnvironment().name());
            brokerRequestBuilder.multipleCloudsSupported(interactiveTokenCommandParameters.getAuthority() instanceof AzureActiveDirectoryAuthority ? ((AzureActiveDirectoryAuthority) interactiveTokenCommandParameters.getAuthority()).isMultipleCloudsSupported() : false);
            brokerRequestBuilder.authorizationAgent(interactiveTokenCommandParameters.isBrokerBrowserSupportEnabled() ? "BROWSER" : "WEBVIEW");
            brokerRequestBuilder.authenticationScheme(interactiveTokenCommandParameters.getAuthenticationScheme());
            brokerRequestBuilder.powerOptCheckEnabled(interactiveTokenCommandParameters.isPowerOptCheckEnabled());
            SerializableSpanContext.SerializableSpanContextBuilder serializableSpanContextBuilder = new SerializableSpanContext.SerializableSpanContextBuilder();
            serializableSpanContextBuilder.traceId(SpanExtension.current().getSpanContext().getTraceId());
            serializableSpanContextBuilder.spanId(SpanExtension.current().getSpanContext().getSpanId());
            serializableSpanContextBuilder.traceFlags(SpanExtension.current().getSpanContext().getTraceFlags().asByte());
            brokerRequestBuilder.spanContext(serializableSpanContextBuilder.build());
            brokerRequestBuilder.preferredBrowser(interactiveTokenCommandParameters.getPreferredBrowser());
            brokerRequestBuilder.preferredAuthMethod(interactiveTokenCommandParameters.getPreferredAuthMethod());
            brokerRequestBuilder.accountTransferToken(interactiveTokenCommandParameters.getAccountTransferToken());
            brokerRequestBuilder.suppressAccountPicker(interactiveTokenCommandParameters.isSuppressBrokerAccountPicker());
            if (interactiveTokenCommandParameters instanceof AndroidInteractiveTokenCommandParameters) {
                brokerRequestBuilder.signInWithGoogleCredential(((AndroidInteractiveTokenCommandParameters) interactiveTokenCommandParameters).getSignInWithGoogleCredential());
            }
            return getRequestBundleFromBrokerRequest(brokerRequestBuilder.build(), str, interactiveTokenCommandParameters.getRequiredBrokerProtocolVersion());
        }

        public static Bundle getRequestBundleForAcquireTokenSilent(Context context, SilentTokenCommandParameters silentTokenCommandParameters, String str) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("MsalBrokerRequestAdapter:brokerRequestFromSilentOperationParameters", "Constructing result bundle from AcquireTokenSilentOperationParameters.");
            String str_toJson = silentTokenCommandParameters.getExtraOptions() != null ? QueryParamsAdapter._toJson(silentTokenCommandParameters.getExtraOptions()) : null;
            BrokerRequest.BrokerRequestBuilder brokerRequestBuilder = new BrokerRequest.BrokerRequestBuilder();
            brokerRequestBuilder.authority(silentTokenCommandParameters.getAuthority().getAuthorityURL().toString());
            brokerRequestBuilder.scope(TextUtils.join(TokenAuthenticationScheme.SCHEME_DELIMITER, silentTokenCommandParameters.getScopes()));
            brokerRequestBuilder.redirect(silentTokenCommandParameters.getRedirectUri());
            brokerRequestBuilder.extraOptions(str_toJson);
            brokerRequestBuilder.clientId(silentTokenCommandParameters.getClientId());
            brokerRequestBuilder.childRedirectUri(silentTokenCommandParameters.getChildRedirectUri());
            brokerRequestBuilder.childClientId(silentTokenCommandParameters.getChildClientId());
            brokerRequestBuilder.homeAccountId(silentTokenCommandParameters.getAccount().getHomeAccountId());
            brokerRequestBuilder.localAccountId(silentTokenCommandParameters.getAccount().getLocalAccountId());
            brokerRequestBuilder.userName(silentTokenCommandParameters.getAccount().getUsername());
            brokerRequestBuilder.claims(silentTokenCommandParameters.getClaimsRequestJson());
            brokerRequestBuilder.forceRefresh(silentTokenCommandParameters.isForceRefresh());
            brokerRequestBuilder.correlationId(silentTokenCommandParameters.getCorrelationId());
            brokerRequestBuilder.applicationName(silentTokenCommandParameters.getApplicationName());
            brokerRequestBuilder.applicationVersion(silentTokenCommandParameters.getApplicationVersion());
            brokerRequestBuilder.msalVersion(silentTokenCommandParameters.getSdkVersion());
            brokerRequestBuilder.sdkType(silentTokenCommandParameters.getSdkType());
            brokerRequestBuilder.environment(AzureActiveDirectory.getEnvironment().name());
            brokerRequestBuilder.multipleCloudsSupported(silentTokenCommandParameters.getAuthority() instanceof AzureActiveDirectoryAuthority ? ((AzureActiveDirectoryAuthority) silentTokenCommandParameters.getAuthority()).isMultipleCloudsSupported() : false);
            brokerRequestBuilder.authenticationScheme(silentTokenCommandParameters.getAuthenticationScheme());
            brokerRequestBuilder.powerOptCheckEnabled(silentTokenCommandParameters.isPowerOptCheckEnabled());
            SerializableSpanContext.SerializableSpanContextBuilder serializableSpanContextBuilder = new SerializableSpanContext.SerializableSpanContextBuilder();
            serializableSpanContextBuilder.traceId(SpanExtension.current().getSpanContext().getTraceId());
            serializableSpanContextBuilder.spanId(SpanExtension.current().getSpanContext().getSpanId());
            serializableSpanContextBuilder.traceFlags(SpanExtension.current().getSpanContext().getTraceFlags().asByte());
            brokerRequestBuilder.spanContext(serializableSpanContextBuilder.build());
            Bundle requestBundleFromBrokerRequest = getRequestBundleFromBrokerRequest(brokerRequestBuilder.build(), str, silentTokenCommandParameters.getRequiredBrokerProtocolVersion());
            requestBundleFromBrokerRequest.putInt("caller.info.uid", context.getApplicationInfo().uid);
            return requestBundleFromBrokerRequest;
        }

        public static Bundle getRequestBundleForGetAccounts(CommandParameters commandParameters, String str) {
            Bundle bundle = new Bundle();
            bundle.putString("account.clientid.key", commandParameters.getClientId());
            bundle.putString("account.redirect", commandParameters.getRedirectUri());
            bundle.putString("common.broker.protocol.version.name", str);
            bundle.putBoolean("can.construct.accounts.from.prt.id.token", FileUtil.isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(commandParameters.getRequiredBrokerProtocolVersion(), "8.0"));
            String requiredBrokerProtocolVersion = commandParameters.getRequiredBrokerProtocolVersion();
            if (!StringUtil.isNullOrEmpty(requiredBrokerProtocolVersion)) {
                bundle.putString("required.broker.protocol.version.name", requiredBrokerProtocolVersion);
            }
            return bundle;
        }

        private static Bundle getRequestBundleFromBrokerRequest(BrokerRequest brokerRequest, String str, String str2) {
            Bundle bundle = new Bundle();
            if (FileUtil.isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(str, "5.0")) {
                try {
                    String strJ = AuthenticationSchemeTypeAdapter.getGsonInstance().j(brokerRequest, BrokerRequest.class);
                    byte[] bArrCompressString = GzipUtil.compressString(strJ);
                    String str3 = "Broker Result, raw payload size:" + strJ.getBytes(AuthenticationConstants.CHARSET_UTF8).length + " ,compressed bytes size: " + bArrCompressString.length;
                    int i = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("MsalBrokerRequestAdapter:getRequestBundleFromBrokerRequest", str3);
                    bundle.putByteArray("broker_request_v2_compressed", bArrCompressString);
                } catch (IOException e) {
                    int i2 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.error("MsalBrokerRequestAdapter:getRequestBundleFromBrokerRequest", "Compression to bytes failed, sending broker request as json String", e);
                    bundle.putString("broker_request_v2", AuthenticationSchemeTypeAdapter.getGsonInstance().j(brokerRequest, BrokerRequest.class));
                }
            } else {
                String strK = eq3.k("Broker protocol version: ", str, " lower than compression changes, sending as string");
                int i3 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("MsalBrokerRequestAdapter:getRequestBundleFromBrokerRequest", strK);
                bundle.putString("broker_request_v2", AuthenticationSchemeTypeAdapter.getGsonInstance().j(brokerRequest, BrokerRequest.class));
            }
            bundle.putString("common.broker.protocol.version.name", str);
            if (!StringUtil.isNullOrEmpty(str2)) {
                bundle.putString("required.broker.protocol.version.name", str2);
            }
            bundle.putBoolean("should.send.pkeyauth.header", FileUtil.isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(str2, "9.0"));
            return bundle;
        }
    }

    private Telemetry(Builder builder) {
        com.microsoft.identity.common.java.logging.Logger.warn("Telemetry", "Telemetry is disabled because the Telemetry context or configuration is null");
        this.mIsTelemetryEnabled = false;
    }

    public static Telemetry access$300(Builder builder) {
        Telemetry telemetry;
        synchronized (Telemetry.class) {
            try {
                if (sTelemetryInstance == null || !sTelemetryInstance.mIsTelemetryEnabled) {
                    sTelemetryInstance = new Telemetry(builder);
                }
                telemetry = sTelemetryInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return telemetry;
    }

    private Map<String, String> applyPiiOiiRule(Map<String, String> map) {
        throw null;
    }

    public static void emit(BaseEvent baseEvent) {
        Telemetry telemetry = getInstance();
        if (telemetry.mIsTelemetryEnabled) {
            synchronized (telemetry) {
            }
            throw null;
        }
    }

    public static synchronized Telemetry getInstance() {
        try {
            if (sTelemetryInstance == null) {
                access$300(new Builder());
            }
        } catch (Throwable th) {
            throw th;
        }
        return sTelemetryInstance;
    }

    public void flush(String str) {
        if (this.mIsTelemetryEnabled) {
            if (!StringUtil.isNullOrEmpty(str)) {
                throw null;
            }
            com.microsoft.identity.common.java.logging.Logger.warn("Telemetry", "No correlation id set.");
        }
    }

    public final List<Map<String, String>> getMap(String str) {
        if (!this.mIsTelemetryEnabled) {
            return Collections.EMPTY_LIST;
        }
        if (!StringUtil.isNullOrEmpty(str)) {
            throw null;
        }
        com.microsoft.identity.common.java.logging.Logger.warn("Telemetry", "No correlation id set.");
        return Collections.EMPTY_LIST;
    }

    public Telemetry() {
        this.mIsTelemetryEnabled = false;
    }
}
