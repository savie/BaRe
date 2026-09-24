package com.microsoft.identity.common.java.telemetry.rules;

import com.microsoft.identity.common.java.util.StringUtil;
import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class TelemetryPiiOiiRules {
    private static TelemetryPiiOiiRules sInstance;
    private final HashSet piiPropertiesSet = new HashSet(Arrays.asList("Microsoft.MSAL.user_id", "Microsoft.MSAL.device_guid", "Microsoft.MSAL.login_hint", "Microsoft.MSAL.error_description", "Microsoft.MSAL.query_params", "Microsoft.MSAL.redirect_uri", "Microsoft.MSAL.scope_value", "Microsoft.MSAL.claim_request"));
    private final HashSet oiiPropertiesSet = new HashSet(Arrays.asList("Microsoft.MSAL.tenant_id", "Microsoft.MSAL.client_id", "Microsoft.MSAL.redirect_uri", "Microsoft.MSAL.http_path", "Microsoft.MSAL.authority", "Microsoft.MSAL.idp", "Microsoft.MSAL.caller_app_package_name", "Microsoft.MSAL.caller_app_uuid", "Microsoft.MSAL.caller_app_version"));

    private TelemetryPiiOiiRules() {
    }

    public static synchronized TelemetryPiiOiiRules getInstance() {
        try {
            if (sInstance == null) {
                sInstance = new TelemetryPiiOiiRules();
            }
        } catch (Throwable th) {
            throw th;
        }
        return sInstance;
    }

    public final boolean isPiiOrOii(String str) {
        if (StringUtil.isNullOrEmpty(str) ? false : this.piiPropertiesSet.contains(str)) {
            return true;
        }
        return StringUtil.isNullOrEmpty(str) ? false : this.oiiPropertiesSet.contains(str);
    }
}
