package com.microsoft.identity.common.adal.internal.util;

import android.net.Uri;
import com.microsoft.identity.common.logging.Logger;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class StringExtensions {
    public static HashMap<String, String> getUrlParameters(String str) {
        Uri uri = Uri.parse(str);
        if (!HashMapExtensions.urlFormDecode(uri.getFragment()).isEmpty()) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("StringExtensions:getUrlParameters", "Received url contains unexpected fragment parameters.");
            com.microsoft.identity.common.java.logging.Logger.warnPII("StringExtensions:getUrlParameters", "Unexpected fragment: " + uri.getFragment());
        }
        return HashMapExtensions.urlFormDecode(uri.getEncodedQuery());
    }

    public static boolean isNullOrBlank(String str) {
        return str == null || str.trim().length() == 0;
    }
}
