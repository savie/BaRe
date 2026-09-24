package com.microsoft.identity.common.java.challengehandlers;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.java.util.UrlUtil;
import defpackage.f6;
import defpackage.q;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class PKeyAuthChallengeFactory {
    public static PKeyAuthChallenge getPKeyAuthChallengeFromTokenEndpointResponse(String str, String str2) throws UnsupportedEncodingException, ClientException {
        if (str == null) {
            f6.n("header is marked non-null but is null");
            return null;
        }
        if (str2 == null) {
            f6.n("authority is marked non-null but is null");
            return null;
        }
        if (StringUtil.isNullOrEmpty(str)) {
            q.i("Device certificate request is invalid", "header value is empty.", null);
            return null;
        }
        if (!str.startsWith("PKeyAuth") || str.length() <= 10 || !Character.isWhitespace(str.charAt(8))) {
            q.i("Device certificate request is invalid", "challenge response type is wrong.", null);
            return null;
        }
        String strSubstring = str.substring(8);
        ArrayList<String> arrayListSplitWithQuotes = StringUtil.splitWithQuotes(strSubstring, ',');
        HashMap map = new HashMap();
        Iterator<String> it = arrayListSplitWithQuotes.iterator();
        while (it.hasNext()) {
            ArrayList<String> arrayListSplitWithQuotes2 = StringUtil.splitWithQuotes(it.next(), '=');
            if (arrayListSplitWithQuotes2.size() == 2 && !StringUtil.isNullOrEmpty(arrayListSplitWithQuotes2.get(0)) && !StringUtil.isNullOrEmpty(arrayListSplitWithQuotes2.get(1))) {
                String str3 = arrayListSplitWithQuotes2.get(0);
                String str4 = arrayListSplitWithQuotes2.get(1);
                String strUrlFormDecode = StringUtil.urlFormDecode(str3);
                String strUrlFormDecode2 = StringUtil.urlFormDecode(str4);
                String strTrim = strUrlFormDecode.trim();
                String strTrim2 = strUrlFormDecode2.trim();
                map.put(strTrim, !StringUtil.isNullOrEmpty(strTrim2) ? strTrim2.replace("\"", "") : null);
            } else {
                if (arrayListSplitWithQuotes2.size() != 1 || StringUtil.isNullOrEmpty(arrayListSplitWithQuotes2.get(0))) {
                    q.i("Device certificate request is invalid", strSubstring, null);
                    return null;
                }
                map.put(StringUtil.urlFormDecode(arrayListSplitWithQuotes2.get(0)).trim(), StringUtil.urlFormDecode(""));
            }
        }
        if (!map.containsKey("Nonce") && !map.containsKey("Nonce".toLowerCase(Locale.US))) {
            q.i("Device certificate request is invalid", "Nonce is empty.", null);
            return null;
        }
        if (!map.containsKey("Context")) {
            q.i("Device certificate request is invalid", "Context is empty", null);
            return null;
        }
        if (!map.containsKey("Version")) {
            q.i("Device certificate request is invalid", "Version name is empty", null);
            return null;
        }
        PKeyAuthChallenge.PKeyAuthChallengeBuilder pKeyAuthChallengeBuilder = new PKeyAuthChallenge.PKeyAuthChallengeBuilder();
        pKeyAuthChallengeBuilder.submitUrl(str2);
        pKeyAuthChallengeBuilder.nonce((String) map.get("Nonce".toLowerCase(Locale.US)));
        pKeyAuthChallengeBuilder.context((String) map.get("Context"));
        pKeyAuthChallengeBuilder.version((String) map.get("Version"));
        pKeyAuthChallengeBuilder.tenantId((String) map.get("TenantId"));
        if (!StringUtil.isNullOrEmpty((String) map.get("CertThumbprint"))) {
            pKeyAuthChallengeBuilder.thumbprint((String) map.get("CertThumbprint"));
        } else if (map.containsKey("CertAuthorities")) {
            pKeyAuthChallengeBuilder.certAuthorities(StringUtil.getStringTokens((String) map.get("CertAuthorities")));
        }
        return pKeyAuthChallengeBuilder.build();
    }

    public static PKeyAuthChallenge getPKeyAuthChallengeFromWebViewRedirect(String str) throws ClientException {
        if (str == null) {
            f6.n("redirectUri is marked non-null but is null");
            return null;
        }
        Map<String, String> parameters = UrlUtil.getParameters(str);
        if (!parameters.containsKey("Nonce") && !parameters.containsKey("Nonce".toLowerCase(Locale.US))) {
            q.i("Device certificate request is invalid", "Nonce is empty.", null);
            return null;
        }
        if (!parameters.containsKey("Context")) {
            q.i("Device certificate request is invalid", "Context is empty", null);
            return null;
        }
        if (!parameters.containsKey("Version")) {
            q.i("Device certificate request is invalid", "Version name is empty", null);
            return null;
        }
        if (!parameters.containsKey("SubmitUrl")) {
            q.i("Device certificate request is invalid", "SubmitUrl is empty", null);
            return null;
        }
        PKeyAuthChallenge.PKeyAuthChallengeBuilder pKeyAuthChallengeBuilder = new PKeyAuthChallenge.PKeyAuthChallengeBuilder();
        pKeyAuthChallengeBuilder.nonce(parameters.get("Nonce".toLowerCase(Locale.US)));
        pKeyAuthChallengeBuilder.context(parameters.get("Context"));
        pKeyAuthChallengeBuilder.version(parameters.get("Version"));
        pKeyAuthChallengeBuilder.submitUrl(parameters.get("SubmitUrl"));
        pKeyAuthChallengeBuilder.tenantId(parameters.get("TenantId"));
        if (parameters.containsKey("CertAuthorities")) {
            pKeyAuthChallengeBuilder.certAuthorities(StringUtil.getStringTokens(parameters.get("CertAuthorities")));
        }
        return pKeyAuthChallengeBuilder.build();
    }
}
