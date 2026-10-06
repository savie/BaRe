package com.microsoft.identity.common.internal.telemetry.events;

import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.java.exception.BaseException;
import com.microsoft.identity.common.java.exception.UserCancelException;
import com.microsoft.identity.common.java.result.AcquireTokenResult;
import com.microsoft.identity.common.java.telemetry.events.BaseEvent;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.f6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class ApiEndEvent extends BaseEvent {
    public ApiEndEvent() {
        names("api_end_event");
        super.put("Microsoft.MSAL.event_type", "Microsoft.MSAL.api_event");
    }

    public final void isApiCallSuccessful() {
        super.put("_is_successful", "true");
    }

    public final void put$1(String str, String str2) {
        super.put(str, str2);
    }

    public final void putApiId(String str) {
        if (str != null) {
            super.put("Microsoft.MSAL.api_id", str);
        } else {
            f6.n("apiId is marked non-null but is null");
        }
    }

    public final void putException(Exception exc) {
        if (exc == null) {
            return;
        }
        BaseException baseExceptionBaseExceptionFromException = PropertyBagUtil.baseExceptionFromException(exc);
        if (baseExceptionBaseExceptionFromException instanceof UserCancelException) {
            super.put("Microsoft.MSAL.user_cancel", "true");
        }
        super.put("Microsoft.MSAL.server_error_code", baseExceptionBaseExceptionFromException.getCliTelemErrorCode());
        super.put("Microsoft.MSAL.server_sub_error_code", baseExceptionBaseExceptionFromException.getCliTelemSubErrorCode());
        super.put("Microsoft.MSAL.error_code", baseExceptionBaseExceptionFromException.getErrorCode());
        super.put("Microsoft.MSAL.spe_ring", baseExceptionBaseExceptionFromException.getSpeRing());
        super.put("Microsoft.MSAL.error_description", baseExceptionBaseExceptionFromException.getMessage());
        super.put("Microsoft.MSAL.rt_age", baseExceptionBaseExceptionFromException.getRefreshTokenAge());
        super.put("_is_successful", "false");
    }

    public final void putResult(AcquireTokenResult acquireTokenResult) {
        if (acquireTokenResult == null) {
            return;
        }
        super.put("_is_successful", acquireTokenResult.getSucceeded().booleanValue() ? "true" : "false");
        if (acquireTokenResult.getLocalAuthenticationResult() != null) {
            super.put("Microsoft.MSAL.user_id", acquireTokenResult.getLocalAuthenticationResult().getUniqueId());
            super.put("Microsoft.MSAL.tenant_id", acquireTokenResult.getLocalAuthenticationResult().getTenantId());
            super.put("Microsoft.MSAL.spe_ring", acquireTokenResult.getLocalAuthenticationResult().getSpeRing());
            super.put("Microsoft.MSAL.rt_age", acquireTokenResult.getLocalAuthenticationResult().getRefreshTokenAge());
            String correlationId = acquireTokenResult.getLocalAuthenticationResult().getCorrelationId();
            if (StringUtil.isNullOrEmpty(correlationId)) {
                return;
            }
            put("Microsoft.MSAL.correlation_id", correlationId);
        }
    }
}
