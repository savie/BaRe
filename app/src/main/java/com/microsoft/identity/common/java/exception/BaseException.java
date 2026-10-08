package com.microsoft.identity.common.java.exception;

import com.microsoft.identity.common.exception.BrokerCommunicationException;
import com.microsoft.identity.common.java.telemetry.Telemetry;
import com.microsoft.identity.common.java.telemetry.events.ErrorEvent;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.dj7;
import defpackage.f6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class BaseException extends Exception implements IErrorInformation {
    private String mCliTelemErrorCode;
    private String mCliTelemSubErrorCode;
    private String mCorrelationId;
    private final String mErrorCode;
    private String mRefreshTokenAge;
    private String mSpeRing;
    private String mSubErrorCode;
    private final ArrayList mSuppressedException;
    private final ArrayList mTelemetry;
    private String mUsername;

    static {
        new TreeSet(Arrays.asList("device_network_not_available", "operation_interrupted", "invalid_broker_bundle", "io_error"));
    }

    public BaseException(String str, String str2, Throwable th) {
        super(str2, th);
        this.mTelemetry = new ArrayList();
        this.mSuppressedException = new ArrayList();
        this.mErrorCode = str;
        ErrorEvent errorEvent = new ErrorEvent();
        errorEvent.put("Microsoft.MSAL.event_type", "Microsoft.MSAL.error_event");
        StackTraceElement[] stackTrace = getStackTrace();
        if (stackTrace != null && stackTrace.length > 0) {
            StackTraceElement stackTraceElement = stackTrace[0];
            StringBuilder sbS = dj7.s(getClass().getSimpleName() + getMessage() + stackTraceElement.getClassName() + stackTraceElement.getMethodName());
            sbS.append(getErrorCode());
            String string = sbS.toString();
            StringBuilder sb = new StringBuilder("tag_");
            sb.append(((long) string.hashCode()) + 2147483647L);
            errorEvent.put("Microsoft.MSAL.error_tag", sb.toString());
            errorEvent.put("Microsoft.MSAL.error_location_class_name", stackTraceElement.getClassName());
            errorEvent.put("Microsoft.MSAL.error_location_line_number", String.valueOf(stackTraceElement.getLineNumber()));
            errorEvent.put("Microsoft.MSAL.error_location_method_name", stackTraceElement.getMethodName());
        }
        errorEvent.put("Microsoft.MSAL.error_class_name", getClass().getSimpleName());
        errorEvent.put("Microsoft.MSAL.error_description", getMessage());
        if (getCause() != null) {
            errorEvent.put("Microsoft.MSAL.error_class_name", getCause().getClass().getSimpleName());
        }
        errorEvent.put("Microsoft.MSAL.error_code", getErrorCode());
        errorEvent.put("Microsoft.MSAL.server_error_code", this.mCliTelemErrorCode);
        errorEvent.put("Microsoft.MSAL.server_sub_error_code", this.mCliTelemSubErrorCode);
        Telemetry.emit(errorEvent);
    }

    public final void addSuppressedException(BrokerCommunicationException brokerCommunicationException) {
        this.mSuppressedException.add(brokerCommunicationException);
    }

    public final String getCliTelemErrorCode() {
        return this.mCliTelemErrorCode;
    }

    public final String getCliTelemSubErrorCode() {
        return this.mCliTelemSubErrorCode;
    }

    public final String getCorrelationId() {
        return this.mCorrelationId;
    }

    @Override // com.microsoft.identity.common.java.exception.IErrorInformation
    public String getErrorCode() {
        return this.mErrorCode;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (StringUtil.isNullOrEmpty(super.getMessage())) {
            return null;
        }
        return super.getMessage();
    }

    public final String getRefreshTokenAge() {
        return this.mRefreshTokenAge;
    }

    public final String getSpeRing() {
        return this.mSpeRing;
    }

    public final String getSubErrorCode() {
        return this.mSubErrorCode;
    }

    public final ArrayList getSuppressedException() {
        return this.mSuppressedException;
    }

    public final String getUsername() {
        return this.mUsername;
    }

    public final void setCliTelemErrorCode(String str) {
        this.mCliTelemErrorCode = str;
    }

    public final void setCliTelemSubErrorCode(String str) {
        this.mCliTelemSubErrorCode = str;
    }

    public final void setCorrelationId(String str) {
        this.mCorrelationId = str;
    }

    public final void setRefreshTokenAge(String str) {
        this.mRefreshTokenAge = str;
    }

    public final void setSpeRing(String str) {
        this.mSpeRing = str;
    }

    public final void setSubErrorCode(String str) {
        this.mSubErrorCode = str;
    }

    public final void setTelemetry(List<Map<String, String>> list) {
        if (list != null) {
            this.mTelemetry.addAll(list);
        } else {
            f6.n("telemetry is marked non-null but is null");
        }
    }

    public final void setUsername(String str) {
        this.mUsername = str;
    }
}
