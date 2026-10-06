package com.microsoft.identity.client;

import android.util.Base64;
import com.microsoft.identity.client.exception.MsalClientException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class ClientInfo {
    private final String mUniqueIdentifier;

    public ClientInfo(String str) throws MsalClientException {
        if (str == null || str.trim().length() == 0) {
            this.mUniqueIdentifier = "";
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(Base64.decode(str, 8), Charset.forName("UTF-8")));
            Iterator<String> itKeys = jSONObject.keys();
            HashMap map = new HashMap();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.getString(next));
            }
            Map mapUnmodifiableMap = Collections.unmodifiableMap(map);
            this.mUniqueIdentifier = (String) mapUnmodifiableMap.get("uid");
        } catch (JSONException unused) {
            throw new MsalClientException("json_parse_failure", "Failed to parse the returned raw client info.", null);
        }
    }

    public final String getUniqueIdentifier() {
        String str = this.mUniqueIdentifier;
        return (str == null || str.trim().length() == 0) ? "" : str;
    }
}
