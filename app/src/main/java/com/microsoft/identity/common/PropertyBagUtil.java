package com.microsoft.identity.common;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import com.microsoft.identity.common.crypto.wrappedsecretkey.IWrappedSecretKeySerializer;
import com.microsoft.identity.common.crypto.wrappedsecretkey.WrappedSecretKey;
import com.microsoft.identity.common.crypto.wrappedsecretkey.WrappedSecretKeyLegacySerializer;
import com.microsoft.identity.common.internal.broker.MicrosoftAuthClient;
import com.microsoft.identity.common.internal.broker.ipc.AccountManagerAddAccountStrategy;
import com.microsoft.identity.common.internal.broker.ipc.BoundServiceStrategy;
import com.microsoft.identity.common.internal.broker.ipc.ContentProviderStrategy;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivityParameters;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationFragment;
import com.microsoft.identity.common.internal.providers.oauth2.BrokerAuthorizationActivity;
import com.microsoft.identity.common.internal.providers.oauth2.BrowserAuthorizationFragment;
import com.microsoft.identity.common.internal.providers.oauth2.CurrentTaskAuthorizationActivity;
import com.microsoft.identity.common.internal.providers.oauth2.CurrentTaskBrowserAuthorizationFragment;
import com.microsoft.identity.common.internal.providers.oauth2.SilentWebViewAuthorizationFragment;
import com.microsoft.identity.common.internal.providers.oauth2.WebViewAuthorizationFragment;
import com.microsoft.identity.common.internal.util.CommonMoshiJsonAdapter;
import com.microsoft.identity.common.internal.util.GzipUtil;
import com.microsoft.identity.common.java.configuration.LibraryConfiguration;
import com.microsoft.identity.common.java.exception.BaseException;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.exception.DeviceRegistrationRequiredException;
import com.microsoft.identity.common.java.exception.InsufficientDeviceRegistrationException;
import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.exception.StrongDeviceRegistrationRequiredException;
import com.microsoft.identity.common.java.exception.TerminalException;
import com.microsoft.identity.common.java.exception.UiRequiredException;
import com.microsoft.identity.common.java.exception.UserCancelException;
import com.microsoft.identity.common.java.interfaces.PlatformComponents;
import com.microsoft.identity.common.java.logging.DiagnosticContext;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.net.HttpResponse;
import com.microsoft.identity.common.java.opentelemetry.NoopBaggage;
import com.microsoft.identity.common.java.opentelemetry.NoopTraceState;
import com.microsoft.identity.common.java.opentelemetry.SerializableSpanContext;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.opentelemetry.TextMapPropagatorExtension;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationErrorResponse;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationResult;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationErrorResponse;
import com.microsoft.identity.common.java.providers.oauth2.TokenErrorResponse;
import com.microsoft.identity.common.java.providers.oauth2.TokenResult;
import com.microsoft.identity.common.java.result.AcquireTokenResult;
import com.microsoft.identity.common.java.telemetry.CliTelemInfo;
import com.microsoft.identity.common.java.ui.AuthorizationAgent;
import com.microsoft.identity.common.java.util.HeaderSerializationUtil;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.java.util.ported.PropertyBag;
import defpackage.c6;
import defpackage.eq3;
import defpackage.f6;
import defpackage.fa4;
import defpackage.fz5;
import defpackage.km4;
import defpackage.qj7;
import defpackage.r86;
import defpackage.rj7;
import defpackage.t40;
import defpackage.vi8;
import defpackage.x13;
import defpackage.zk0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableEntryException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class PropertyBagUtil {
    public static BaseException baseExceptionFromException(Throwable th) {
        if ((th instanceof ExecutionException) && th.getCause() != null) {
            th = th.getCause();
        }
        return th instanceof BaseException ? (BaseException) th : clientExceptionFromException(th);
    }

    public static ClientException clientExceptionFromException(Throwable th) {
        if (th == null) {
            f6.n("exception is marked non-null but is null");
            return null;
        }
        if (th instanceof ClientException) {
            return (ClientException) th;
        }
        Throwable cause = (!(th instanceof ExecutionException) || th.getCause() == null) ? th : th.getCause();
        if (cause instanceof TerminalException) {
            String errorCode = ((TerminalException) cause).getErrorCode();
            Throwable cause2 = th.getCause();
            if (cause2 != null) {
                cause = cause2;
            }
            return new ClientException(errorCode, "An unhandled exception occurred with message: " + cause.getMessage(), cause);
        }
        if (cause instanceof IOException) {
            return new ClientException("io_error", "An IO error occurred with message: " + cause.getMessage(), cause);
        }
        if (cause instanceof InterruptedException) {
            return new ClientException("operation_interrupted", "SDK cancelled operation, the thread execution was interrupted", cause);
        }
        if (cause instanceof TimeoutException) {
            return new ClientException("timed_out", "A blocking operation has timed out: " + cause.getMessage(), cause);
        }
        if (cause instanceof NullPointerException) {
            return new ClientException("null_pointer_error", cause.getMessage(), cause);
        }
        if (!(cause instanceof OutOfMemoryError)) {
            if (cause instanceof GeneralSecurityException) {
                if (cause instanceof CertificateException) {
                    return new ClientException("certificate_load_failure", cause.getMessage(), cause);
                }
                if (cause instanceof KeyStoreException) {
                    return new ClientException("keystore_not_initialized", cause.getMessage(), cause);
                }
                if (cause instanceof NoSuchAlgorithmException) {
                    return new ClientException("no_such_algorithm", cause.getMessage(), cause);
                }
                if (cause instanceof InvalidAlgorithmParameterException) {
                    return new ClientException("invalid_algorithm_parameter", cause.getMessage(), cause);
                }
                if (cause instanceof UnrecoverableEntryException) {
                    return new ClientException("protection_params_invalid", cause.getMessage(), cause);
                }
                if (cause instanceof InvalidKeyException) {
                    return new ClientException("invalid_key", cause.getMessage(), cause);
                }
            }
            return new ClientException("unknown_error", cause.getMessage(), cause);
        }
        Logger.warn("ExceptionAdapter", "Received an out of memory error, attempting to attach stacktrace...");
        try {
            qj7 qj7VarCurrent = SpanExtension.current();
            StackTraceElement[] stackTrace = cause.getStackTrace();
            if (stackTrace == null) {
                throw new NullPointerException("elements is marked non-null but is null");
            }
            Objects.toString(stackTrace[0]);
            for (int i = 1; i < stackTrace.length; i++) {
                Objects.toString(stackTrace[i]);
            }
            qj7VarCurrent.getClass();
            Logger.warn("ExceptionAdapter", "Received an out of memory error, stacktrace attached to span with id: " + qj7VarCurrent.getSpanContext().getSpanId());
            return new ClientException("out_of_memory", cause.getMessage(), cause);
        } catch (Throwable unused) {
            Logger.warn("ExceptionAdapter", "Failed to emit telemetry for out of memory exception.");
        }
    }

    public static final void createLongCounter(String str, String str2) {
        if (!vi8.b.matcher(str).matches()) {
            vi8.a(eq3.k("Instrument name \"", str, "\" is invalid, returning noop instrument. Instrument names must consist of 63 or fewer characters including alphanumeric, _, ., -, and start with a letter."), Level.WARNING);
        }
        if (StandardCharsets.US_ASCII.newEncoder().canEncode("count")) {
            return;
        }
        vi8.a("Unit \"count\" is invalid. Instrument unit must be 63 or fewer ASCII characters.", Level.WARNING);
    }

    public static final r86 createSpanFromParent(String str, rj7 rj7Var) {
        if (rj7Var == null) {
            Logger.verbose("DefaultOTelSpanFactory:createSpanFromParent", "parentSpanContext is NULL. Creating span without parent.");
            return LibraryInfoHelper.createSpan(str);
        }
        if (!rj7Var.isValid()) {
            Logger.warn("DefaultOTelSpanFactory:createSpanFromParent", "parentSpanContext is INVALID. Creating span without parent.");
            return LibraryInfoHelper.createSpan(str);
        }
        rj7 spanContext = qj7.c(qj7.b(rj7Var).a(t40.a())).getSpanContext();
        if (spanContext == null) {
            spanContext = qj7.current().getSpanContext();
        }
        r86 r86VarB = qj7.b(spanContext);
        r86VarB.getClass();
        return r86VarB;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0044  */
    /* JADX WARN: Code duplicated, block: B:14:0x0067  */
    /* JADX WARN: Code duplicated, block: B:16:0x006a  */
    /* JADX WARN: Code duplicated, block: B:17:0x0070  */
    /* JADX WARN: Code duplicated, block: B:19:0x007a  */
    public static WrappedSecretKey deserialize(byte[] bArr) {
        Integer numValueOf;
        int iIntValue;
        IWrappedSecretKeySerializer wrappedSecretKeyLegacySerializer;
        if (bArr.length >= 12) {
            if (ByteBuffer.wrap(bArr, 0, 4).getInt() == 16727211) {
                numValueOf = Integer.valueOf(ByteBuffer.wrap(bArr, 4, 4).getInt());
            }
            int i = com.microsoft.identity.common.logging.Logger.a;
            Logger.info("WrappedSecretKeySerializerManager:identifySerializer", "Detected serializer ID: " + numValueOf);
            iIntValue = numValueOf != null ? numValueOf.intValue() : 0;
            SpanExtension.current().getClass();
            System.nanoTime();
            Logger.info("WrappedSecretKeySerializerManager:getSerializer", "Getting serializer for ID: " + iIntValue);
            if (iIntValue != 0) {
                wrappedSecretKeyLegacySerializer = new WrappedSecretKeyLegacySerializer();
            } else {
                if (iIntValue == 1) {
                    c6.f(fz5.j(iIntValue, "Unsupported serializer ID: "));
                    return null;
                }
                wrappedSecretKeyLegacySerializer = new NoopTraceState();
            }
            WrappedSecretKey wrappedSecretKeyDeserialize = wrappedSecretKeyLegacySerializer.deserialize(bArr);
            System.nanoTime();
            SpanExtension.current().getClass();
            return wrappedSecretKeyDeserialize;
        }
        int i2 = com.microsoft.identity.common.logging.Logger.a;
        Logger.warn("AbstractWrappedSecretKeySerializer:isNewFormat", "Data too small to contain header, assuming legacy format");
        numValueOf = null;
        int i3 = com.microsoft.identity.common.logging.Logger.a;
        Logger.info("WrappedSecretKeySerializerManager:identifySerializer", "Detected serializer ID: " + numValueOf);
        if (numValueOf != null) {
        }
        SpanExtension.current().getClass();
        System.nanoTime();
        Logger.info("WrappedSecretKeySerializerManager:getSerializer", "Getting serializer for ID: " + iIntValue);
        if (iIntValue != 0) {
            wrappedSecretKeyLegacySerializer = new WrappedSecretKeyLegacySerializer();
        } else {
            if (iIntValue == 1) {
                c6.f(fz5.j(iIntValue, "Unsupported serializer ID: "));
                return null;
            }
            wrappedSecretKeyLegacySerializer = new NoopTraceState();
        }
        WrappedSecretKey wrappedSecretKeyDeserialize2 = wrappedSecretKeyLegacySerializer.deserialize(bArr);
        System.nanoTime();
        SpanExtension.current().getClass();
        return wrappedSecretKeyDeserialize2;
    }

    public static BaseException exceptionFromAcquireTokenResult(AcquireTokenResult acquireTokenResult) {
        ServiceException exceptionFromTokenErrorResponse$1;
        MicrosoftStsAuthorizationResult authorizationResult = acquireTokenResult.getAuthorizationResult();
        if (authorizationResult == null) {
            Logger.warn("ExceptionAdapter:exceptionFromAcquireTokenResult", "AuthorizationResult was null -- expected for ATS cases.");
        } else if (!authorizationResult.getSuccess()) {
            AuthorizationErrorResponse authorizationErrorResponse = authorizationResult.getAuthorizationErrorResponse();
            if (authorizationErrorResponse == null) {
                Logger.warn("ExceptionAdapter:exceptionFromAuthorizationResult", "AuthorizationErrorResponse is not set");
                return new ClientException("authorization_result_null_error_response", "Authorization error response is null. Authorization Status: " + authorizationResult.getAuthorizationStatus(), null);
            }
            int iOrdinal = authorizationResult.getAuthorizationStatus().ordinal();
            if (iOrdinal == 1) {
                return new UserCancelException(null, null, null);
            }
            if (iOrdinal == 2) {
                return new ClientException(authorizationErrorResponse.getError(), authorizationErrorResponse.getErrorDescription(), null);
            }
            if (iOrdinal != 3) {
                Logger.warn("ExceptionAdapter:exceptionFromAuthorizationResult", "No AuthorizationResult status set");
                return new ClientException(authorizationErrorResponse.getError(), authorizationErrorResponse.getErrorDescription(), null);
            }
            if (authorizationErrorResponse instanceof MicrosoftStsAuthorizationErrorResponse) {
                MicrosoftStsAuthorizationErrorResponse microsoftStsAuthorizationErrorResponse = (MicrosoftStsAuthorizationErrorResponse) authorizationErrorResponse;
                if ("device_registration_needed".equals(microsoftStsAuthorizationErrorResponse.getError())) {
                    if (microsoftStsAuthorizationErrorResponse.isTokenProtectionRequired()) {
                        String error = microsoftStsAuthorizationErrorResponse.getError();
                        String errorDescription = microsoftStsAuthorizationErrorResponse.getErrorDescription();
                        String upnToWpj = microsoftStsAuthorizationErrorResponse.getUpnToWpj();
                        StrongDeviceRegistrationRequiredException strongDeviceRegistrationRequiredException = new StrongDeviceRegistrationRequiredException(error, errorDescription, null);
                        if (error == null) {
                            f6.n("errorCode is marked non-null but is null");
                            return null;
                        }
                        if (errorDescription == null) {
                            f6.n("errorDescription is marked non-null but is null");
                            return null;
                        }
                        if (upnToWpj != null) {
                            strongDeviceRegistrationRequiredException.setUsername(upnToWpj);
                            return strongDeviceRegistrationRequiredException;
                        }
                        f6.n("userName is marked non-null but is null");
                        return null;
                    }
                    String error2 = microsoftStsAuthorizationErrorResponse.getError();
                    String errorDescription2 = microsoftStsAuthorizationErrorResponse.getErrorDescription();
                    String upnToWpj2 = microsoftStsAuthorizationErrorResponse.getUpnToWpj();
                    DeviceRegistrationRequiredException deviceRegistrationRequiredException = new DeviceRegistrationRequiredException(error2, errorDescription2, null);
                    if (error2 == null) {
                        f6.n("errorCode is marked non-null but is null");
                        return null;
                    }
                    if (errorDescription2 == null) {
                        f6.n("errorDescription is marked non-null but is null");
                        return null;
                    }
                    if (upnToWpj2 != null) {
                        deviceRegistrationRequiredException.setUsername(upnToWpj2);
                        return deviceRegistrationRequiredException;
                    }
                    f6.n("userName is marked non-null but is null");
                    return null;
                }
                if ("insufficient_device_registration".equals(microsoftStsAuthorizationErrorResponse.getError())) {
                    String error3 = microsoftStsAuthorizationErrorResponse.getError();
                    String errorDescription3 = microsoftStsAuthorizationErrorResponse.getErrorDescription();
                    String upnToWpj3 = microsoftStsAuthorizationErrorResponse.getUpnToWpj();
                    InsufficientDeviceRegistrationException insufficientDeviceRegistrationException = new InsufficientDeviceRegistrationException(error3, errorDescription3, null);
                    if (error3 == null) {
                        f6.n("errorCode is marked non-null but is null");
                        return null;
                    }
                    if (errorDescription3 == null) {
                        f6.n("errorDescription is marked non-null but is null");
                        return null;
                    }
                    if (upnToWpj3 != null) {
                        insufficientDeviceRegistrationException.setUsername(upnToWpj3);
                        return insufficientDeviceRegistrationException;
                    }
                    f6.n("userName is marked non-null but is null");
                    return null;
                }
            }
            return new ServiceException(authorizationErrorResponse.getError(), authorizationErrorResponse.getErrorDescription(), 0);
        }
        TokenResult tokenResult = acquireTokenResult.getTokenResult();
        if (tokenResult == null || tokenResult.getSuccess() || tokenResult.getErrorResponse() == null || StringUtil.isNullOrEmpty(tokenResult.getErrorResponse().getError())) {
            StringBuilder sb = new StringBuilder("Unknown error, Token result is null [");
            sb.append(tokenResult == null);
            sb.append("]");
            Logger.warn("ExceptionAdapter:exceptionFromTokenResult", sb.toString());
            return new ServiceException((Exception) null, "unknown_error", "Request failed, but no error returned back from service.");
        }
        TokenErrorResponse errorResponse = tokenResult.getErrorResponse();
        if (errorResponse == null) {
            f6.n("errorResponse is marked non-null but is null");
            return null;
        }
        if (StringUtil.isNullOrEmpty(errorResponse.getError()) || StringUtil.isNullOrEmpty(errorResponse.getSubError()) || !errorResponse.getError().equalsIgnoreCase("unauthorized_client") || !errorResponse.getSubError().equalsIgnoreCase("protection_policy_required")) {
            exceptionFromTokenErrorResponse$1 = getExceptionFromTokenErrorResponse$1(errorResponse);
        } else {
            Logger.warn("ExceptionAdapter", "In order to properly construct the IntuneAppProtectionPolicyRequiredException we need the command parameters to be supplied.  Returning as service exception instead.");
            exceptionFromTokenErrorResponse$1 = getExceptionFromTokenErrorResponse$1(errorResponse);
        }
        CliTelemInfo cliTelemInfo = tokenResult.getCliTelemInfo();
        if (cliTelemInfo != null) {
            exceptionFromTokenErrorResponse$1.setSpeRing(cliTelemInfo.getSpeRing());
            exceptionFromTokenErrorResponse$1.setRefreshTokenAge(cliTelemInfo.getRefreshTokenAge());
            exceptionFromTokenErrorResponse$1.setCliTelemErrorCode(cliTelemInfo.getServerErrorCode());
            exceptionFromTokenErrorResponse$1.setCliTelemSubErrorCode(cliTelemInfo.getServerSubErrorCode());
        }
        return exceptionFromTokenErrorResponse$1;
    }

    public static PropertyBag fromBundle(Bundle bundle) {
        if (bundle == null) {
            f6.n("bundle is marked non-null but is null");
            return null;
        }
        PropertyBag propertyBag = new PropertyBag();
        for (String str : bundle.keySet()) {
            propertyBag.put(str, bundle.getSerializable(str));
        }
        return propertyBag;
    }

    public static zk0 fromContext(t40 t40Var) {
        try {
            zk0 zk0Var = (zk0) t40Var.b(x13.a);
            return zk0Var != null ? zk0Var : fa4.b;
        } catch (Exception | NoSuchMethodError e) {
            Logger.error("BaggageExtension:fromContext", "Failed to get baggage from context", e);
            return new NoopBaggage();
        }
    }

    public static final Intent getAuthorizationActivityIntent(AuthorizationActivityParameters authorizationActivityParameters) {
        Intent intent;
        t40 t40VarA;
        LibraryConfiguration libraryConfiguration = LibraryConfiguration.getInstance();
        if (GzipUtil.isBrokerProcess(authorizationActivityParameters.getContext())) {
            intent = new Intent(authorizationActivityParameters.getContext(), (Class<?>) BrokerAuthorizationActivity.class);
        } else {
            intent = (!libraryConfiguration.isAuthorizationInCurrentTask() || authorizationActivityParameters.getAuthorizationAgent() == AuthorizationAgent.WEBVIEW) ? new Intent(authorizationActivityParameters.getContext(), (Class<?>) AuthorizationActivity.class) : new Intent(authorizationActivityParameters.getContext(), (Class<?>) CurrentTaskAuthorizationActivity.class);
        }
        intent.putExtra("com.microsoft.identity.auth.intent", authorizationActivityParameters.getAuthIntent());
        intent.putExtra("com.microsoft.identity.request.url", authorizationActivityParameters.getRequestUrl());
        intent.putExtra("com.microsoft.identity.request.redirect.uri", authorizationActivityParameters.getRedirectUri());
        intent.putExtra("com.microsoft.identity.request.headers", authorizationActivityParameters.getRequestHeader());
        intent.putExtra("com.microsoft.identity.client.authorization.agent", authorizationActivityParameters.getAuthorizationAgent());
        intent.putExtra("com.microsoft.identity.web.view.zoom.controls.enabled", authorizationActivityParameters.getWebViewZoomControlsEnabled());
        intent.putExtra("com.microsoft.identity.web.view.zoom.enabled", authorizationActivityParameters.getWebViewZoomEnabled());
        intent.putExtra("com.microsoft.identity.web.view.web.cp.enabled", false);
        intent.putExtra("correlation_id", DiagnosticContext.INSTANCE.getRequestContext().get("correlation_id"));
        CommonMoshiJsonAdapter commonMoshiJsonAdapter = new CommonMoshiJsonAdapter();
        SerializableSpanContext.SerializableSpanContextBuilder serializableSpanContextBuilder = new SerializableSpanContext.SerializableSpanContextBuilder();
        serializableSpanContextBuilder.traceId(SpanExtension.current().getSpanContext().getTraceId());
        serializableSpanContextBuilder.spanId(SpanExtension.current().getSpanContext().getSpanId());
        serializableSpanContextBuilder.traceFlags(SpanExtension.current().getSpanContext().getTraceFlags().asByte());
        intent.putExtra("serializable_span_context", commonMoshiJsonAdapter.toJson(serializableSpanContextBuilder.build()));
        try {
            t40VarA = t40.a();
        } catch (NoSuchMethodError e) {
            Logger.error("OtelContextExtension:current", e.getMessage(), e);
            t40VarA = null;
        }
        intent.putExtra("otel_context_carrier", TextMapPropagatorExtension.inject(t40VarA));
        if (authorizationActivityParameters.getSourceLibraryName() != null) {
            intent.putExtra("x-client-SKU", authorizationActivityParameters.getSourceLibraryName());
        }
        if (authorizationActivityParameters.getSourceLibraryVersion() != null) {
            intent.putExtra("x-client-Ver", authorizationActivityParameters.getSourceLibraryVersion());
        }
        if (authorizationActivityParameters.getUtid() != null) {
            intent.putExtra("utid", authorizationActivityParameters.getUtid());
        }
        return intent;
    }

    public static final AuthorizationFragment getAuthorizationFragmentFromStartIntent(Intent intent) {
        intent.getClass();
        AuthorizationAgent authorizationAgent = (AuthorizationAgent) intent.getSerializableExtra("com.microsoft.identity.client.authorization.agent");
        LibraryConfiguration libraryConfiguration = LibraryConfiguration.getInstance();
        if (authorizationAgent == AuthorizationAgent.WEBVIEW) {
            return intent.hasExtra("com.microsoft.identity.web.view.silent.authorization.flow.timeout") ? new SilentWebViewAuthorizationFragment() : new WebViewAuthorizationFragment();
        }
        return libraryConfiguration.isAuthorizationInCurrentTask() ? new CurrentTaskBrowserAuthorizationFragment() : new BrowserAuthorizationFragment();
    }

    public static ServiceException getExceptionFromTokenErrorResponse$1(TokenErrorResponse tokenErrorResponse) {
        String error = tokenErrorResponse.getError();
        HttpResponse httpResponse = null;
        ServiceException uiRequiredException = ("invalid_grant".equalsIgnoreCase(error) || "interaction_required".equalsIgnoreCase(error)) ? new UiRequiredException(null, tokenErrorResponse.getError(), tokenErrorResponse.getErrorDescription()) : new ServiceException((Exception) null, tokenErrorResponse.getError(), tokenErrorResponse.getErrorDescription());
        uiRequiredException.setSubErrorCode(tokenErrorResponse.getSubError());
        try {
            int statusCode = tokenErrorResponse.getStatusCode();
            String responseHeadersJson = tokenErrorResponse.getResponseHeadersJson();
            String responseBody = tokenErrorResponse.getResponseBody();
            if (responseHeadersJson != null && responseBody != null) {
                try {
                    httpResponse = new HttpResponse(new Date(), statusCode, responseBody, HeaderSerializationUtil.fromJson(responseHeadersJson));
                } catch (km4 unused) {
                    Logger.warn("ExceptionAdapter:applyHttpErrorResponseData", "Failed to deserialize error data: status, headers, response body.");
                }
            }
            uiRequiredException.setHttpResponse(httpResponse);
        } catch (JSONException unused2) {
            Logger.warn("ExceptionAdapter", "Failed to deserialize error data: status, headers, response body.");
        }
        return uiRequiredException;
    }

    public static final ArrayList getIpcStrategies(Context context, String str) {
        context.getClass();
        str.getClass();
        PlatformComponents platformComponentsCreateFromContext = LibraryInfoHelper.createFromContext(context);
        String str2 = PropertyBagUtil.class + ":getIpcStrategies";
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder(100);
        sb.append("Broker Strategies added : ");
        ContentProviderStrategy contentProviderStrategy = new ContentProviderStrategy(context, platformComponentsCreateFromContext);
        if (contentProviderStrategy.isSupportedByTargetedBroker(str)) {
            sb.append("ContentProviderStrategy, ");
            arrayList.add(contentProviderStrategy);
        }
        BoundServiceStrategy boundServiceStrategy = new BoundServiceStrategy(new MicrosoftAuthClient(context));
        if (boundServiceStrategy.isSupportedByTargetedBroker(str)) {
            sb.append("BoundServiceStrategy, ");
            arrayList.add(boundServiceStrategy);
        }
        AccountManagerAddAccountStrategy accountManagerAddAccountStrategy = new AccountManagerAddAccountStrategy(context);
        if (accountManagerAddAccountStrategy.isSupportedByTargetedBroker(str)) {
            sb.append("AccountManagerStrategy.");
            arrayList.add(accountManagerAddAccountStrategy);
        }
        String string = sb.toString();
        int i = com.microsoft.identity.common.logging.Logger.a;
        Logger.info(str2, string);
        return arrayList;
    }

    public static boolean isRunningOnAuthService(Context context) {
        String str = context.getPackageName() + ":auth";
        int iMyPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || activityManager.getRunningAppProcesses() == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid == iMyPid && runningAppProcessInfo.processName.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
