package com.microsoft.identity.common.java.util;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.microsoft.identity.common.java.logging.Logger;
import defpackage.f6;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.StringTokenizer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class StringUtil {
    public static boolean equalsIgnoreCase(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str == null || !str.equals(str2)) {
            return str != null && str.equalsIgnoreCase(str2);
        }
        return true;
    }

    public static boolean equalsIgnoreCaseTrimBoth(String str, String str2) {
        String strTrim = str != null ? str.trim() : null;
        if (strTrim != str2) {
            return str2 != null && equalsIgnoreCase(strTrim, str2.trim());
        }
        return true;
    }

    public static ArrayList getStringTokens(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ";");
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (!isNullOrEmpty(strNextToken)) {
                arrayList.add(strNextToken);
            }
        }
        return arrayList;
    }

    public static AbstractMap.SimpleEntry getTenantInfo(String str) {
        String str2;
        String str3 = null;
        if (str == null) {
            f6.n("homeAccountId is marked non-null but is null");
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        if (2 != strArrSplit.length || isNullOrEmpty(strArrSplit[0]) || isNullOrEmpty(strArrSplit[1])) {
            Logger.warn("StringUtil", "We had a home account id that could not be split correctly, We expected it to split into 2 parts but instead we had " + strArrSplit.length + " when splitting the string on dot ('.')");
            Logger.warnPII("StringUtil", "We had a home account id that could not be split correctly, Its value was: '" + str + "', and we expected it to split into 2 parts but instead we had " + strArrSplit.length + " when splitting the string on dot ('.')");
            str2 = null;
        } else {
            str3 = strArrSplit[0];
            str2 = strArrSplit[1];
        }
        return new AbstractMap.SimpleEntry(str3, str2);
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.trim().isEmpty();
    }

    public static String join(HashSet hashSet) {
        if (hashSet == null) {
            f6.n("segments is marked non-null but is null");
            return null;
        }
        Iterator it = hashSet.iterator();
        if (!it.hasNext()) {
            return "";
        }
        CharSequence charSequence = (CharSequence) it.next();
        if (!it.hasNext()) {
            return charSequence instanceof String ? (String) charSequence : charSequence.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence);
        while (it.hasNext()) {
            sb.append((CharSequence) TokenAuthenticationScheme.SCHEME_DELIMITER);
            sb.append((CharSequence) it.next());
        }
        return sb.toString();
    }

    public static String sanitizeNullAndLowercaseAndTrim(String str) {
        return str == null ? "" : str.toLowerCase(Locale.US).trim();
    }

    public static ArrayList<String> splitWithQuotes(String str, char c) {
        ArrayList<String> arrayList = new ArrayList<>();
        int i = 0;
        boolean z = false;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == c && !z) {
                String strSubstring = str.substring(i, i2);
                if (!isNullOrEmpty(strSubstring.trim())) {
                    arrayList.add(strSubstring);
                }
                i = i2 + 1;
            } else if (str.charAt(i2) == '\"') {
                z = !z;
            }
        }
        String strSubstring2 = str.substring(i);
        if (!isNullOrEmpty(strSubstring2.trim())) {
            arrayList.add(strSubstring2);
        }
        return arrayList;
    }

    public static String urlFormDecode(String str) throws UnsupportedEncodingException {
        return isNullOrEmpty(str) ? "" : URLDecoder.decode(str, "UTF-8");
    }
}
