package com.microsoft.identity.common.java.util;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.Logger;
import defpackage.f6;
import defpackage.q;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class UrlUtil {
    public static URL appendPathAndQueryToURL(URL url, String str) throws MalformedURLException, URISyntaxException {
        if (url == null) {
            f6.n("urlToAppend is marked non-null but is null");
            return null;
        }
        if (StringUtil.isNullOrEmpty(str)) {
            return url;
        }
        CommonURIBuilder commonURIBuilder = new CommonURIBuilder();
        commonURIBuilder.setPath(str);
        ArrayList<String> pathSegments = commonURIBuilder.getPathSegments();
        CommonURIBuilder commonURIBuilder2 = new CommonURIBuilder(url.toString());
        ArrayList arrayList = new ArrayList(commonURIBuilder2.getPathSegments());
        if (arrayList.size() > 0) {
            int size = arrayList.size() - 1;
            if (((String) arrayList.get(size)).equals("") && !commonURIBuilder.isPathEmpty()) {
                arrayList.remove(size);
            }
        }
        for (String str2 : pathSegments) {
            if (!StringUtil.isNullOrEmpty(str2)) {
                arrayList.add(str2);
            }
        }
        commonURIBuilder2.setPathSegments(arrayList);
        return commonURIBuilder2.build().toURL();
    }

    public static Map<String, String> getParameters(URI uri) {
        if (uri == null) {
            Logger.warn("UrlUtil", "uri is null.");
            return Collections.EMPTY_MAP;
        }
        if (uri.isOpaque()) {
            try {
                return getParameters(new URI("scheme://" + uri.toString()));
            } catch (URISyntaxException unused) {
                Logger.warn("UrlUtil", "Cannot convert opaque URI.");
                return Collections.EMPTY_MAP;
            }
        }
        String fragment = uri.getFragment();
        if (!StringUtil.isNullOrEmpty(fragment) && !urlFormDecode(fragment).isEmpty()) {
            Logger.warn("UrlUtil", "Received url contains unexpected fragment parameters.");
            Logger.warnPII("UrlUtil", "Unexpected fragment: " + uri.getFragment());
        }
        if (!StringUtil.isNullOrEmpty(uri.getQuery())) {
            return urlFormDecode(uri.getRawQuery());
        }
        Logger.info("UrlUtil:getUrlParameters", "URL does not contain query parameter");
        return Collections.EMPTY_MAP;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0066 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x0015 A[SYNTHETIC] */
    public static HashMap urlFormDecode(String str) {
        String strUrlFormDecode;
        String strUrlFormDecode2;
        if (str == null) {
            f6.n("urlParameter is marked non-null but is null");
            return null;
        }
        HashMap map = new HashMap();
        if (!StringUtil.isNullOrEmpty(str)) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
            while (stringTokenizer.hasMoreTokens()) {
                String[] strArrSplit = stringTokenizer.nextToken().split("=", 2);
                if (strArrSplit.length == 2) {
                    try {
                        strUrlFormDecode2 = StringUtil.urlFormDecode(strArrSplit[0].trim());
                        strUrlFormDecode = StringUtil.urlFormDecode(strArrSplit[1].trim());
                        if (!StringUtil.isNullOrEmpty(strUrlFormDecode2)) {
                            map.put(strUrlFormDecode2, strUrlFormDecode);
                        }
                    } catch (UnsupportedEncodingException e) {
                        Logger.errorPII(e, "UrlUtil:urlFormDecodeData", "Encoding format is not supported");
                    }
                } else {
                    if (strArrSplit.length == 1) {
                        try {
                            strUrlFormDecode2 = StringUtil.urlFormDecode(strArrSplit[0].trim());
                            strUrlFormDecode = "";
                        } catch (UnsupportedEncodingException e2) {
                            Logger.errorPII(e2, "UrlUtil:urlFormDecodeData", "Encoding format is not supported");
                        }
                    } else {
                        strUrlFormDecode = null;
                        strUrlFormDecode2 = null;
                    }
                    if (!StringUtil.isNullOrEmpty(strUrlFormDecode2)) {
                        map.put(strUrlFormDecode2, strUrlFormDecode);
                    }
                }
            }
        }
        return map;
    }

    public static Map<String, String> getParameters(String str) throws ClientException {
        if (StringUtil.isNullOrEmpty(str)) {
            Logger.warn("UrlUtil", "url string is null.");
            return Collections.EMPTY_MAP;
        }
        try {
            return getParameters(new URI(str));
        } catch (URISyntaxException e) {
            q.i("malformed_url", "Cannot extract parameter from a malformed URL string.", e);
            return null;
        }
    }
}
