package com.microsoft.identity.common.internal.providers.oauth2;

import com.microsoft.identity.common.logging.Logger;
import defpackage.nq7;
import defpackage.sz8;
import defpackage.uq7;
import defpackage.x50;
import java.net.URI;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class PasskeyOriginRulesManager {
    private static final Set<String> PRODUCTION_ORIGINS = x50.A0(new String[]{"https://login.microsoft.com", "https://account.live.com", "https://mysignins.microsoft.com", "https://mysignins.azure.us", "https://mysignins.microsoft.scloud", "https://mysignins.eaglex.ic.gov"});
    private static final Set<String> SOVEREIGN_CLOUD_ORIGINS = x50.A0(new String[]{"https://login.microsoftonline.us", "https://login.microsoftonline.microsoft.scloud", "https://login.microsoftonline.eaglex.ic.gov", "https://login.sovcloud-identity.fr", "https://login.sovcloud-identity.de", "https://login.sovcloud-identity.sg"});

    static {
        x50.A0(new String[]{"https://account.live-int.com", "https://login.windows-ppe.net", "https://mysignins-ppe.microsoft.com"});
    }

    public static LinkedHashSet getAllowedOriginRules() {
        return sz8.R(PRODUCTION_ORIGINS, SOVEREIGN_CLOUD_ORIGINS);
    }

    public static final boolean isAllowedOrigin(String str) {
        String host;
        String path;
        str.getClass();
        try {
            URI uri = new URI(str);
            String scheme = uri.getScheme();
            scheme.getClass();
            Locale locale = Locale.ROOT;
            String lowerCase = scheme.toLowerCase(locale);
            lowerCase.getClass();
            if (lowerCase.equals("https") && (host = uri.getHost()) != null) {
                String lowerCase2 = "https://".concat(host).toLowerCase(locale);
                lowerCase2.getClass();
                if (!PRODUCTION_ORIGINS.contains(lowerCase2)) {
                    if (SOVEREIGN_CLOUD_ORIGINS.contains(lowerCase2) && (path = uri.getPath()) != null && path.length() != 0) {
                        List listX0 = nq7.x0(path, new String[]{"/"}, 6);
                        if (!listX0.isEmpty()) {
                            Iterator it = listX0.iterator();
                            while (it.hasNext()) {
                                if (uq7.P((String) it.next(), "fido", true)) {
                                }
                            }
                        }
                    }
                }
                return true;
            }
            return false;
        } catch (Throwable th) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("PasskeyOriginRulesManager", "Error validating origin for URL.", th);
            return false;
        }
    }
}
