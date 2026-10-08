package com.microsoft.identity.common.internal.result;

import android.os.Bundle;
import com.google.gson.a;
import com.google.gson.internal.Excluder;
import com.microsoft.identity.common.adal.internal.util.HashMapExtensions;
import com.microsoft.identity.common.adal.internal.util.JsonExtensions;
import com.microsoft.identity.common.internal.broker.BrokerResult;
import com.microsoft.identity.common.internal.util.GzipUtil;
import com.microsoft.identity.common.internal.util.ICacheRecordGsonAdapter;
import com.microsoft.identity.common.java.broker.BrokerPerformanceMetrics;
import com.microsoft.identity.common.java.cache.ICacheRecord;
import com.microsoft.identity.common.java.controllers.CommandDispatcher;
import com.microsoft.identity.common.java.exception.ArgumentException;
import com.microsoft.identity.common.java.exception.BaseException;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.exception.IntuneAppProtectionPolicyRequiredException;
import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.exception.UiRequiredException;
import com.microsoft.identity.common.java.exception.UnsupportedBrokerException;
import com.microsoft.identity.common.java.exception.UserCancelException;
import com.microsoft.identity.common.java.request.SdkType;
import com.microsoft.identity.common.java.result.AcquireTokenResult;
import com.microsoft.identity.common.java.result.LocalAuthenticationResult;
import com.microsoft.identity.common.java.util.HeaderSerializationUtil;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.logging.Logger;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.q;
import defpackage.t14;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MsalBrokerResultAdapter {
    private static final Long INVALID_TIMESTAMP;

    static {
        t14 t14Var = t14.s;
        new ThreadLocal();
        new ConcurrentHashMap();
        Excluder excluder = t14Var.a;
        new HashMap(t14Var.b);
        t14.b(t14Var.c);
        t14.b(t14Var.d);
        t14.b(t14Var.k);
        INVALID_TIMESTAMP = -1L;
    }

    public static BrokerResult brokerResultFromBundle(Bundle bundle) throws ClientException {
        String strDecompressBytesToString;
        byte[] byteArray = bundle.getByteArray("broker_result_v2_compressed");
        if (byteArray != null) {
            try {
                strDecompressBytesToString = GzipUtil.decompressBytesToString(byteArray);
            } catch (IOException e) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("MsalBrokerResultAdapter:brokerResultFromBundle", "Failed to decompress broker result :", e);
                q.i("invalid_broker_bundle", "Failed to decompress broker result", e);
                return null;
            }
        } else {
            strDecompressBytesToString = bundle.getString("broker_result_v2");
        }
        if (!StringUtil.isNullOrEmpty(strDecompressBytesToString)) {
            t14 t14Var = new t14();
            t14Var.c(new ICacheRecordGsonAdapter(), ICacheRecord.class);
            return (BrokerResult) new a(t14Var).c(strDecompressBytesToString, BrokerResult.class);
        }
        int i2 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.error("MsalBrokerResultAdapter:brokerResultFromBundle", "Broker Result not returned from Broker", null);
        q.i("invalid_broker_bundle", "Broker Result not returned from Broker", null);
        return null;
    }

    public static List getAccountsFromResultBundle(Bundle bundle) throws BaseException {
        String strDecompressBytesToString;
        byte[] byteArray = bundle.getByteArray("broker_accounts_compressed");
        if (byteArray != null) {
            try {
                strDecompressBytesToString = GzipUtil.decompressBytesToString(byteArray);
            } catch (IOException e) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("MsalBrokerResultAdapter:getAccountsFromResultBundle", " Failed to decompress account list to bytes", e);
                q.i("invalid_broker_bundle", " Failed to decompress account list to bytes.", null);
                return null;
            }
        } else {
            strDecompressBytesToString = bundle.getString("broker_accounts");
        }
        if (StringUtil.isNullOrEmpty(strDecompressBytesToString)) {
            throw getBaseExceptionFromBundle(bundle);
        }
        return JsonExtensions.getICacheRecordListFromJsonString(strDecompressBytesToString);
    }

    public static AcquireTokenResult getAcquireTokenResultFromResultBundle(Bundle bundle) throws BaseException {
        if (!bundle.getBoolean("broker_request_v2_success")) {
            throw getBaseExceptionFromBundle(bundle);
        }
        AcquireTokenResult acquireTokenResult = new AcquireTokenResult();
        BrokerResult brokerResultBrokerResultFromBundle = brokerResultFromBundle(bundle);
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("MsalBrokerResultAdapter:authenticationResultFromBundle", "Broker Result returned from Bundle, constructing authentication result");
        ArrayList tenantProfileData = brokerResultBrokerResultFromBundle.getTenantProfileData();
        if (tenantProfileData == null) {
            com.microsoft.identity.common.java.logging.Logger.error("MsalBrokerResultAdapter:authenticationResultFromBundle", "getTenantProfileData is null", null);
            q.i("invalid_broker_bundle", "getTenantProfileData is null.", null);
            return null;
        }
        acquireTokenResult.setLocalAuthenticationResult(new LocalAuthenticationResult((ICacheRecord) tenantProfileData.get(0), tenantProfileData, SdkType.MSAL, brokerResultBrokerResultFromBundle.isServicedFromCache()));
        getBrokerPerformanceMetricsFromBundle(bundle);
        if (bundle.containsKey("broker.version")) {
            bundle.getString("broker.version");
        }
        if (bundle.containsKey("broker.package.name")) {
            bundle.getString("broker.package.name");
        }
        return acquireTokenResult;
    }

    public static BaseException getBaseExceptionFromBundle(Bundle bundle) {
        BaseException uiRequiredException;
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("MsalBrokerResultAdapter:getBaseExceptionFromBundle", "Constructing exception from result bundle");
        try {
            BrokerResult brokerResultBrokerResultFromBundle = brokerResultFromBundle(bundle);
            String exceptionType = brokerResultBrokerResultFromBundle.getExceptionType();
            getBrokerPerformanceMetricsFromBundle(bundle);
            if (StringUtil.isNullOrEmpty(exceptionType)) {
                com.microsoft.identity.common.java.logging.Logger.info("MsalBrokerResultAdapter:getBaseExceptionFromBundle", "Exception type is not returned from the broker, using error codes to transform to the right exception");
                String errorCode = brokerResultBrokerResultFromBundle.getErrorCode();
                if ("interaction_required".equalsIgnoreCase(errorCode) || "invalid_grant".equalsIgnoreCase(errorCode) || "Broker refresh token is invalid".equalsIgnoreCase(errorCode) || "no_account_found".equalsIgnoreCase(errorCode) || "no_tokens_found".equalsIgnoreCase(errorCode)) {
                    com.microsoft.identity.common.java.logging.Logger.warn("MsalBrokerResultAdapter:getBaseExceptionFromErrorCodes", "Received a UIRequired exception from Broker : " + errorCode);
                    uiRequiredException = getUiRequiredException(brokerResultBrokerResultFromBundle);
                } else if ("unauthorized_client".equalsIgnoreCase(errorCode) && "protection_policy_required".equalsIgnoreCase(brokerResultBrokerResultFromBundle.getSubErrorCode())) {
                    com.microsoft.identity.common.java.logging.Logger.warn("MsalBrokerResultAdapter:getBaseExceptionFromErrorCodes", "Received a IntuneAppProtectionPolicyRequiredException exception from Broker : " + errorCode);
                    uiRequiredException = getIntuneProtectionRequiredException(brokerResultBrokerResultFromBundle);
                } else if ("User cancelled".equalsIgnoreCase(errorCode)) {
                    com.microsoft.identity.common.java.logging.Logger.warn("MsalBrokerResultAdapter:getBaseExceptionFromErrorCodes", "Received a User cancelled exception from Broker : " + errorCode);
                    uiRequiredException = new UserCancelException(null, null, null);
                } else if ("illegal_argument_exception".equalsIgnoreCase(errorCode)) {
                    com.microsoft.identity.common.java.logging.Logger.warn("MsalBrokerResultAdapter:getBaseExceptionFromErrorCodes", "Received a Argument exception from Broker : " + errorCode);
                    uiRequiredException = new ArgumentException("brokerTokenRequest", errorCode, brokerResultBrokerResultFromBundle.getErrorMessage());
                } else if (StringUtil.isNullOrEmpty(brokerResultBrokerResultFromBundle.getHttpResponseHeaders()) && StringUtil.isNullOrEmpty(brokerResultBrokerResultFromBundle.getHttpResponseBody())) {
                    com.microsoft.identity.common.java.logging.Logger.warn("MsalBrokerResultAdapter:getBaseExceptionFromErrorCodes", "Received a Client exception from Broker : " + errorCode);
                    uiRequiredException = new ClientException(brokerResultBrokerResultFromBundle.getErrorCode(), brokerResultBrokerResultFromBundle.getErrorMessage(), null);
                } else {
                    com.microsoft.identity.common.java.logging.Logger.warn("MsalBrokerResultAdapter:getBaseExceptionFromErrorCodes", "Received a Service exception from Broker : " + errorCode);
                    uiRequiredException = getServiceException(brokerResultBrokerResultFromBundle);
                }
                uiRequiredException.setSubErrorCode(brokerResultBrokerResultFromBundle.getSubErrorCode());
                uiRequiredException.setCliTelemErrorCode(brokerResultBrokerResultFromBundle.getCliTelemErrorCode());
                uiRequiredException.setCliTelemSubErrorCode(brokerResultBrokerResultFromBundle.getCliTelemSubErrorCode());
                uiRequiredException.setCorrelationId(brokerResultBrokerResultFromBundle.getCorrelationId());
                uiRequiredException.setSpeRing(brokerResultBrokerResultFromBundle.getSpeRing());
                uiRequiredException.setRefreshTokenAge(brokerResultBrokerResultFromBundle.getRefreshTokenAge());
            } else {
                StringBuilder sbU = dj7.u("Received a ", exceptionType, " from Broker : ");
                sbU.append(brokerResultBrokerResultFromBundle.getErrorCode());
                com.microsoft.identity.common.java.logging.Logger.warn("MsalBrokerResultAdapter:getBaseExceptionFromExceptionType", sbU.toString());
                if (exceptionType.equalsIgnoreCase("com.microsoft.identity.common.exception.UiRequiredException")) {
                    uiRequiredException = getUiRequiredException(brokerResultBrokerResultFromBundle);
                } else if (exceptionType.equalsIgnoreCase("com.microsoft.identity.common.exception.ServiceException")) {
                    uiRequiredException = getServiceException(brokerResultBrokerResultFromBundle);
                } else if (exceptionType.equalsIgnoreCase("com.microsoft.identity.common.exception.IntuneAppProtectionPolicyRequiredException")) {
                    uiRequiredException = getIntuneProtectionRequiredException(brokerResultBrokerResultFromBundle);
                } else if (exceptionType.equalsIgnoreCase("com.microsoft.identity.common.exception.UserCancelException")) {
                    uiRequiredException = new UserCancelException(null, null, null);
                } else if (exceptionType.equalsIgnoreCase("com.microsoft.identity.common.exception.ClientException")) {
                    uiRequiredException = new ClientException(brokerResultBrokerResultFromBundle.getErrorCode(), brokerResultBrokerResultFromBundle.getErrorMessage(), null);
                } else if (exceptionType.equalsIgnoreCase("com.microsoft.identity.common.exception.ArgumentException")) {
                    uiRequiredException = new ArgumentException("brokerTokenRequest", brokerResultBrokerResultFromBundle.getErrorCode(), brokerResultBrokerResultFromBundle.getErrorMessage());
                } else {
                    com.microsoft.identity.common.java.logging.Logger.warn("MsalBrokerResultAdapter:getBaseExceptionFromExceptionType", " Exception type is unknown : " + exceptionType + brokerResultBrokerResultFromBundle.getErrorCode() + ", defaulting to Client Exception ");
                    uiRequiredException = new ClientException(brokerResultBrokerResultFromBundle.getErrorCode(), brokerResultBrokerResultFromBundle.getErrorMessage(), null);
                }
                uiRequiredException.setSubErrorCode(brokerResultBrokerResultFromBundle.getSubErrorCode());
                uiRequiredException.setCliTelemErrorCode(brokerResultBrokerResultFromBundle.getCliTelemErrorCode());
                uiRequiredException.setCliTelemSubErrorCode(brokerResultBrokerResultFromBundle.getCliTelemSubErrorCode());
                uiRequiredException.setCorrelationId(brokerResultBrokerResultFromBundle.getCorrelationId());
                uiRequiredException.setSpeRing(brokerResultBrokerResultFromBundle.getSpeRing());
                uiRequiredException.setRefreshTokenAge(brokerResultBrokerResultFromBundle.getRefreshTokenAge());
            }
            if (bundle.containsKey("broker.version")) {
                bundle.getString("broker.version");
            }
            if (bundle.containsKey("broker.package.name")) {
                bundle.getString("broker.package.name");
            }
            return uiRequiredException;
        } catch (ClientException e) {
            return e;
        }
    }

    public static void getBrokerPerformanceMetricsFromBundle(Bundle bundle) {
        Long l = INVALID_TIMESTAMP;
        long j = bundle.getLong("broker_request_received_timestamp", l.longValue());
        long j2 = bundle.getLong("broker_response_generation_timestamp", l.longValue());
        int i = bundle.getInt("broker_silent_executor_pool_size", CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE);
        if (j != l.longValue() && j2 != l.longValue()) {
            new BrokerPerformanceMetrics(i, j, j2);
        } else {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("MsalBrokerResultAdapter", "Broker performance metrics not found in the result bundle.");
        }
    }

    public static ClientException getExceptionForEmptyResultBundle() {
        return new ClientException("invalid_broker_bundle", "Broker Result not returned from Broker.", null);
    }

    private static IntuneAppProtectionPolicyRequiredException getIntuneProtectionRequiredException(BrokerResult brokerResult) {
        IntuneAppProtectionPolicyRequiredException intuneAppProtectionPolicyRequiredException = new IntuneAppProtectionPolicyRequiredException(null, brokerResult.getErrorCode(), brokerResult.getErrorMessage());
        intuneAppProtectionPolicyRequiredException.setTenantId(brokerResult.getTenantId());
        intuneAppProtectionPolicyRequiredException.setAuthorityUrl(brokerResult.getAuthority());
        intuneAppProtectionPolicyRequiredException.setAccountUserId(brokerResult.getLocalAccountId());
        intuneAppProtectionPolicyRequiredException.setAccountUpn(brokerResult.getUserName());
        intuneAppProtectionPolicyRequiredException.setSubErrorCode(brokerResult.getSubErrorCode());
        try {
            intuneAppProtectionPolicyRequiredException.setHttpResponseBody(HashMapExtensions.jsonStringAsMap(brokerResult.getHttpResponseBody()));
            if (brokerResult.getHttpResponseHeaders() != null) {
                intuneAppProtectionPolicyRequiredException.setHttpResponseHeaders(HeaderSerializationUtil.fromJson(brokerResult.getHttpResponseHeaders()));
            }
            return intuneAppProtectionPolicyRequiredException;
        } catch (JSONException unused) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("MsalBrokerResultAdapter:getIntuneProtectionRequiredException", "Unable to parse json");
            return intuneAppProtectionPolicyRequiredException;
        }
    }

    private static ServiceException getServiceException(BrokerResult brokerResult) {
        ServiceException serviceException = new ServiceException((Exception) null, brokerResult.getErrorCode(), brokerResult.getErrorMessage());
        try {
            serviceException.setHttpResponseBody(brokerResult.getHttpResponseBody() != null ? HashMapExtensions.jsonStringAsMap(brokerResult.getHttpResponseBody()) : null);
            serviceException.setHttpResponseHeaders(brokerResult.getHttpResponseHeaders() != null ? HeaderSerializationUtil.fromJson(brokerResult.getHttpResponseHeaders()) : null);
            return serviceException;
        } catch (JSONException unused) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("MsalBrokerResultAdapter:getServiceException", "Unable to parse json");
            return serviceException;
        }
    }

    private static UiRequiredException getUiRequiredException(BrokerResult brokerResult) {
        String errorCode = brokerResult.getErrorCode();
        UiRequiredException uiRequiredException = new UiRequiredException(null, errorCode, brokerResult.getErrorMessage());
        if ("interaction_required".equalsIgnoreCase(errorCode) || "invalid_grant".equalsIgnoreCase(errorCode)) {
            uiRequiredException.setSubErrorCode(brokerResult.getSubErrorCode());
        }
        if (!StringUtil.isNullOrEmpty(brokerResult.getUserName())) {
            uiRequiredException.setUsername(brokerResult.getUserName());
        }
        return uiRequiredException;
    }

    public static String verifyHelloFromResultBundle(Bundle bundle, String str) throws BaseException {
        if (bundle == null) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("MsalBrokerResultAdapter:verifyHelloFromResultBundle", "The hello result bundle is null.");
            throw new UnsupportedBrokerException(str);
        }
        String string = bundle.getString("common.broker.protocol.version.name");
        if (!StringUtil.isNullOrEmpty(string)) {
            String strK = eq3.k("Able to establish the connect, the broker protocol version in common is [", string, "]");
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("MsalBrokerResultAdapter:verifyHelloFromResultBundle", strK);
            return string;
        }
        if (!StringUtil.isNullOrEmpty(bundle.getString("error"))) {
            throw new UnsupportedBrokerException(str, bundle.getString("error"), bundle.getString("error_description"));
        }
        Object obj = bundle.get("broker_result_v2");
        if (obj instanceof BrokerResult) {
            BrokerResult brokerResult = (BrokerResult) obj;
            throw new ClientException(brokerResult.getErrorCode(), brokerResult.getErrorMessage(), null);
        }
        int i3 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.warn("MsalBrokerResultAdapter:verifyHelloFromResultBundle", "The result bundle is not in a recognizable format.");
        throw new UnsupportedBrokerException(str);
    }

    public static void verifyRemoveAccountResultFromBundle(Bundle bundle) throws BaseException {
        if (bundle == null) {
            return;
        }
        String string = bundle.getString("broker_result_v2");
        if (StringUtil.isNullOrEmpty(string)) {
            throw getBaseExceptionFromBundle(bundle);
        }
        t14 t14Var = new t14();
        t14Var.c(new ICacheRecordGsonAdapter(), ICacheRecord.class);
        BrokerResult brokerResult = (BrokerResult) new a(t14Var).c(string, BrokerResult.class);
        if (brokerResult == null || !brokerResult.isSuccess()) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("MsalBrokerResultAdapter:verifyRemoveAccountResultFromBundle", "Failed to remove account.");
            throw getBaseExceptionFromBundle(bundle);
        }
    }
}
