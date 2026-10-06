package com.microsoft.identity.common.adal.internal.util;

import com.microsoft.identity.common.logging.Logger;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.StringTokenizer;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class HashMapExtensions {
    public static HashMap<String, String> jsonStringAsMap(String str) throws JSONException {
        HashMap<String, String> map = new HashMap<>();
        if (!StringExtensions.isNullOrBlank(str)) {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.getString(next));
            }
        }
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0069 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x0012 A[SYNTHETIC] */
    public static HashMap<String, String> urlFormDecode(String str) {
        String strDecode;
        String strDecode2;
        HashMap<String, String> map = new HashMap<>();
        if (!StringExtensions.isNullOrBlank(str)) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
            while (stringTokenizer.hasMoreTokens()) {
                String[] strArrSplit = stringTokenizer.nextToken().split("=");
                if (strArrSplit.length == 2) {
                    try {
                        strDecode = URLDecoder.decode(strArrSplit[0].trim(), "UTF-8");
                        strDecode2 = URLDecoder.decode(strArrSplit[1].trim(), "UTF-8");
                        if (!StringExtensions.isNullOrBlank(strDecode)) {
                            map.put(strDecode, strDecode2);
                        }
                    } catch (UnsupportedEncodingException e) {
                        int i = Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.errorPII(e, "HashMapExtensions:urlFormDecodeData", "Encoding format is not supported");
                    }
                } else {
                    if (strArrSplit.length == 1) {
                        try {
                            strDecode = URLDecoder.decode(strArrSplit[0].trim(), "UTF-8");
                            strDecode2 = "";
                        } catch (UnsupportedEncodingException e2) {
                            int i2 = Logger.a;
                            com.microsoft.identity.common.java.logging.Logger.errorPII(e2, "HashMapExtensions:urlFormDecodeData", "Encoding format is not supported");
                        }
                    } else {
                        strDecode = null;
                        strDecode2 = null;
                    }
                    if (!StringExtensions.isNullOrBlank(strDecode)) {
                        map.put(strDecode, strDecode2);
                    }
                }
            }
        }
        return map;
    }
}
