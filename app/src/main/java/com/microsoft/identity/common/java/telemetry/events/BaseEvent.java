package com.microsoft.identity.common.java.telemetry.events;

import com.microsoft.identity.common.java.logging.DiagnosticContext;
import com.microsoft.identity.common.java.telemetry.Properties;
import com.microsoft.identity.common.java.util.StringUtil;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BaseEvent extends Properties {
    public BaseEvent() {
        put("Microsoft.MSAL.occur_time", Long.valueOf(System.currentTimeMillis()).toString());
        String str = DiagnosticContext.INSTANCE.getRequestContext().get("correlation_id");
        if (StringUtil.isNullOrEmpty(str)) {
            return;
        }
        put("Microsoft.MSAL.correlation_id", str);
    }

    public final void names(String str) {
        put("Microsoft.MSAL.event_name", str);
    }

    @Override // com.microsoft.identity.common.java.telemetry.Properties
    public void put(String str, String str2) {
        if (StringUtil.isNullOrEmpty(str2)) {
            return;
        }
        super.put(str, str2);
    }
}
