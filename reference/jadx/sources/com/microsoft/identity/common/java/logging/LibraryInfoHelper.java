package com.microsoft.identity.common.java.logging;

import android.app.Activity;
import android.content.Context;
import androidx.fragment.app.o;
import com.microsoft.identity.client.exception.MsalArgumentException;
import com.microsoft.identity.client.exception.MsalClientException;
import com.microsoft.identity.client.exception.MsalException;
import com.microsoft.identity.client.exception.MsalIntuneAppProtectionPolicyRequiredException;
import com.microsoft.identity.client.exception.MsalServiceException;
import com.microsoft.identity.client.exception.MsalUiRequiredException;
import com.microsoft.identity.client.exception.MsalUnsupportedBrokerException;
import com.microsoft.identity.client.exception.MsalUserCancelException;
import com.microsoft.identity.common.adal.internal.PowerManagerWrapper;
import com.microsoft.identity.common.base64.AndroidBase64;
import com.microsoft.identity.common.components.AndroidClockSkewManager;
import com.microsoft.identity.common.components.AndroidPopManagerSupplier;
import com.microsoft.identity.common.components.AndroidStorageSupplier;
import com.microsoft.identity.common.crypto.AndroidAuthSdkStorageEncryptionManager;
import com.microsoft.identity.common.crypto.IKeyGenSpec;
import com.microsoft.identity.common.internal.net.cache.HttpCache;
import com.microsoft.identity.common.internal.numberMatch.NumberMatchHelper;
import com.microsoft.identity.common.internal.platform.AndroidBroadcaster;
import com.microsoft.identity.common.internal.platform.AndroidPlatformUtil;
import com.microsoft.identity.common.internal.providers.oauth2.AndroidTaskStateGenerator;
import com.microsoft.identity.common.internal.ui.AndroidAuthorizationStrategyFactory;
import com.microsoft.identity.common.internal.ui.browser.AndroidBrowserSelector;
import com.microsoft.identity.common.internal.util.WorkProfileUtil;
import com.microsoft.identity.common.java.base64.Base64Flags;
import com.microsoft.identity.common.java.base64.Base64Util;
import com.microsoft.identity.common.java.exception.ArgumentException;
import com.microsoft.identity.common.java.exception.BaseException;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.exception.IntuneAppProtectionPolicyRequiredException;
import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.exception.UiRequiredException;
import com.microsoft.identity.common.java.exception.UnsupportedBrokerException;
import com.microsoft.identity.common.java.exception.UserCancelException;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.interfaces.PlatformComponents;
import com.microsoft.identity.common.java.net.DefaultHttpClientWrapper;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.platform.Device;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.f51;
import defpackage.f6;
import defpackage.qj7;
import defpackage.r86;
import defpackage.t40;
import defpackage.xs1;
import defpackage.xu1;
import java.io.File;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class LibraryInfoHelper {
    private static boolean sGlobalStateInitalized = false;
    public final /* synthetic */ int a = 5;

    private static PlatformComponents create(Context context, Activity activity, o oVar) {
        if (context == null) {
            f6.n("context is marked non-null but is null");
            return null;
        }
        synchronized (LibraryInfoHelper.class) {
            try {
                if (!sGlobalStateInitalized) {
                    synchronized (HttpCache.class) {
                        File cacheDir = context.getCacheDir();
                        if (cacheDir != null) {
                            HttpCache.initialize$1(cacheDir);
                        } else {
                            int i = com.microsoft.identity.common.logging.Logger.a;
                            Logger.warn("HttpCache:initialize", "Http caching is not enabled because the cache dir is null");
                        }
                    }
                    Device.setDeviceMetadata(new PowerManagerWrapper());
                    if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_AM_API_WORKPROFILE_EXTRA_QUERY_PARAMETERS)) {
                        Device.setIsInPersonalProfileButClouddpcWorkProfileAvailable(Boolean.valueOf(WorkProfileUtil.checkIfIsInPersonalProfileButClouddpcWorkProfileAvailable(context)));
                    }
                    com.microsoft.identity.common.logging.Logger.setAndroidLogger();
                    File cacheDir2 = context.getCacheDir();
                    if (cacheDir2 != null) {
                        HttpCache.initialize$1(cacheDir2);
                    } else {
                        Logger.warn("AndroidPlatformComponentsFactory:initializeGlobalStates", "Http caching is not enabled because the cache dir is null");
                    }
                    sGlobalStateInitalized = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        PlatformComponents.PlatformComponentsBuilder<?, ?> platformComponentsBuilderBuilder = PlatformComponents.builder();
        platformComponentsBuilderBuilder.clockSkewManager(new AndroidClockSkewManager(context)).broadcaster(new AndroidBroadcaster()).popManagerLoader(new AndroidPopManagerSupplier(context)).storageSupplier(new AndroidStorageSupplier(context, new AndroidAuthSdkStorageEncryptionManager(context))).platformUtil(new AndroidPlatformUtil(context, activity)).httpClientWrapper(new DefaultHttpClientWrapper()).browserSelector(new AndroidBrowserSelector(context));
        if (activity != null) {
            AndroidAuthorizationStrategyFactory.AndroidAuthorizationStrategyFactoryBuilder androidAuthorizationStrategyFactoryBuilder = new AndroidAuthorizationStrategyFactory.AndroidAuthorizationStrategyFactoryBuilder();
            androidAuthorizationStrategyFactoryBuilder.context(activity.getApplicationContext());
            androidAuthorizationStrategyFactoryBuilder.activity(activity);
            androidAuthorizationStrategyFactoryBuilder.fragment(oVar);
            androidAuthorizationStrategyFactoryBuilder.browserSelector(new AndroidBrowserSelector(context));
            platformComponentsBuilderBuilder.authorizationStrategyFactory(androidAuthorizationStrategyFactoryBuilder.build()).stateGenerator(new AndroidTaskStateGenerator(activity.getTaskId()));
        }
        return platformComponentsBuilderBuilder.build();
    }

    public static PlatformComponents createFromActivity(Activity activity, o oVar) {
        if (activity != null) {
            return create(activity.getApplicationContext(), activity, oVar);
        }
        f6.n("activity is marked non-null but is null");
        return null;
    }

    public static PlatformComponents createFromContext(Context context) {
        if (context != null) {
            return create(context, null, null);
        }
        f6.n("context is marked non-null but is null");
        return null;
    }

    public static r86 createSpan(String str) {
        r86 r86VarB = qj7.b(qj7.current().getSpanContext());
        r86VarB.getClass();
        return r86VarB;
    }

    public static byte[] decode(String str, Base64Flags... base64FlagsArr) {
        str.getClass();
        AndroidBase64 androidBase64 = Base64Util.base64;
        byte[] bytes = str.getBytes(f51.a);
        bytes.getClass();
        return androidBase64.decode(bytes, (Base64Flags[]) Arrays.copyOf(base64FlagsArr, base64FlagsArr.length));
    }

    public static String encodeToString(byte[] bArr, Base64Flags... base64FlagsArr) {
        bArr.getClass();
        Base64Flags[] base64FlagsArr2 = (Base64Flags[]) Arrays.copyOf(base64FlagsArr, base64FlagsArr.length);
        byte[] bArrEncode = Base64Util.base64.encode(bArr, (Base64Flags[]) Arrays.copyOf(base64FlagsArr2, base64FlagsArr2.length));
        Charset charset = StandardCharsets.US_ASCII;
        charset.getClass();
        return new String(bArrEncode, charset);
    }

    public static String encodeUrlSafeString(byte[] bArr) {
        bArr.getClass();
        return encodeToString(bArr, Base64Flags.NO_WRAP, Base64Flags.NO_PADDING, Base64Flags.URL_SAFE);
    }

    public static String getLibraryName() {
        String str = DiagnosticContext.INSTANCE.getRequestContext().get("x-client-SKU");
        if (!StringUtil.isNullOrEmpty(str)) {
            return str;
        }
        Logger.warn("LibraryInfoHelper:getLibraryName", "Product is not set.", null);
        return "NOT_SET";
    }

    public static String getLibraryVersion() {
        String str = DiagnosticContext.INSTANCE.getRequestContext().get("x-client-Ver");
        if (!StringUtil.isNullOrEmpty(str)) {
            return str;
        }
        Logger.warn("LibraryInfoHelper:getLibraryVersion", "Product version is not set.", null);
        return "1.5.9-default";
    }

    public static MsalException msalExceptionFromBaseException(BaseException baseException) {
        MsalException msalUserCancelException;
        MsalException msalServiceException;
        if (baseException instanceof MsalException) {
            msalUserCancelException = (MsalException) baseException;
        } else {
            if (baseException instanceof ClientException) {
                ClientException clientException = (ClientException) baseException;
                msalServiceException = new MsalClientException(clientException.getErrorCode(), clientException.getMessage(), clientException);
            } else if (baseException instanceof ArgumentException) {
                ArgumentException argumentException = (ArgumentException) baseException;
                msalServiceException = new MsalArgumentException("illegal_argument_exception", argumentException.getMessage(), argumentException);
            } else if (baseException instanceof UiRequiredException) {
                UiRequiredException uiRequiredException = (UiRequiredException) baseException;
                msalServiceException = new MsalUiRequiredException(uiRequiredException.getErrorCode(), uiRequiredException.getMessage(), uiRequiredException);
                if (!StringUtil.isNullOrEmpty(uiRequiredException.getUsername())) {
                    msalServiceException.setUsername(uiRequiredException.getUsername());
                }
            } else if (baseException instanceof IntuneAppProtectionPolicyRequiredException) {
                IntuneAppProtectionPolicyRequiredException intuneAppProtectionPolicyRequiredException = (IntuneAppProtectionPolicyRequiredException) baseException;
                msalUserCancelException = new MsalIntuneAppProtectionPolicyRequiredException(intuneAppProtectionPolicyRequiredException.getErrorCode(), intuneAppProtectionPolicyRequiredException.getMessage(), intuneAppProtectionPolicyRequiredException);
            } else if (baseException instanceof UnsupportedBrokerException) {
                UnsupportedBrokerException unsupportedBrokerException = (UnsupportedBrokerException) baseException;
                msalUserCancelException = new MsalUnsupportedBrokerException(unsupportedBrokerException.getErrorCode(), unsupportedBrokerException.getMessage(), null);
            } else if (baseException instanceof ServiceException) {
                ServiceException serviceException = (ServiceException) baseException;
                msalServiceException = new MsalServiceException(serviceException.getErrorCode(), serviceException.getMessage(), serviceException);
            } else {
                msalUserCancelException = baseException instanceof UserCancelException ? new MsalUserCancelException(null, null, null) : new MsalClientException("unknown_error", baseException.getMessage(), baseException);
            }
            msalUserCancelException = msalServiceException;
        }
        msalUserCancelException.setSubErrorCode(baseException.getSubErrorCode());
        return msalUserCancelException;
    }

    public static String print(IKeyGenSpec iKeyGenSpec) {
        return "KeyGenSpec(description='" + iKeyGenSpec.getDescription() + "', algorithm='" + iKeyGenSpec.getAlgorithm() + "', encryptionPaddings='" + iKeyGenSpec.getEncryptionPaddings() + "')";
    }

    public static void storeNumberMatch(String str, String str2) {
        int i = NumberMatchHelper.a;
        String strJ = xs1.j("Adding entry in NumberMatch hashmap for session ID: ", str);
        int i2 = com.microsoft.identity.common.logging.Logger.a;
        Logger.info("NumberMatchHelper:storeNumberMatch", strJ);
        qj7 qj7VarCurrent = SpanExtension.current();
        if (str == null || str.length() == 0) {
            Logger.warn("NumberMatchHelper", "Session ID is null or empty.");
        } else if (!NumberMatchHelper.guidRegex.b(str) && !NumberMatchHelper.alphaNum8Regex.b(str)) {
            Logger.warn("NumberMatchHelper", "Session ID is not a valid GUID or 8-character alphanumeric string. Value: ".concat(str));
        } else if (str2 == null || str2.length() == 0) {
            Logger.warn("NumberMatchHelper", "Number match is null or empty.");
        } else {
            if (NumberMatchHelper.twoDigitRegex.b(str2)) {
                NumberMatchHelper.numberMatchMap.put(str, str2);
                qj7VarCurrent.getClass();
                return;
            }
            Logger.warn("NumberMatchHelper", "Number match is not a valid 2-digit numerical string. Value: ".concat(str2));
        }
        qj7VarCurrent.getClass();
    }

    public static Runnable wrap(Runnable runnable) {
        try {
            return new xu1(0, t40.a(), runnable);
        } catch (NoSuchMethodError e) {
            Logger.error("OtelContextExtension:wrapRunnableWithCurrentTelemetryContext", e.getMessage(), e);
            return runnable;
        }
    }

    public abstract JSONObject getData();

    public abstract String getStatus();

    public abstract String getType();

    public String toString() throws JSONException {
        switch (this.a) {
            case 5:
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("status", getStatus());
                jSONObject.put("data", getData());
                jSONObject.put("type", getType());
                String string = jSONObject.toString();
                string.getClass();
                return string;
            default:
                return super.toString();
        }
    }
}
