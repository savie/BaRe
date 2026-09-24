package com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory;

import com.microsoft.identity.common.java.AuthenticationConstants;
import com.microsoft.identity.common.java.base64.Base64Flags;
import com.microsoft.identity.common.java.base64.Base64Util;
import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.c6;
import defpackage.f6;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ClientInfo implements Serializable {
    private final String mRawClientInfo;
    private final String mUid;
    private final String mUtid;

    public ClientInfo(String str) throws ServiceException {
        if (str == null) {
            f6.n("rawClientInfo is marked non-null but is null");
            throw null;
        }
        if (StringUtil.isNullOrEmpty(str)) {
            c6.f("ClientInfo cannot be null or blank.");
            throw null;
        }
        Base64Flags[] base64FlagsArr = {Base64Flags.URL_SAFE};
        int i = Base64Util.a;
        try {
            JSONObject jSONObject = new JSONObject(new String(LibraryInfoHelper.decode(str, base64FlagsArr), AuthenticationConstants.ENCODING_UTF8));
            Iterator<String> itKeys = jSONObject.keys();
            HashMap map = new HashMap();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                if (obj == null) {
                    map.put(next, null);
                } else {
                    map.put(next, obj.toString());
                }
            }
            this.mUid = (String) map.get("uid");
            String str2 = (String) map.get("utid");
            this.mUtid = str2;
            if (!StringUtil.isNullOrEmpty(str2)) {
                SpanExtension.current().getClass();
            }
            this.mRawClientInfo = str;
        } catch (JSONException e) {
            throw new ServiceException(e, "", "invalid_jwt");
        }
    }

    public final String getRawClientInfo() {
        return this.mRawClientInfo;
    }

    public final String getUid() {
        return this.mUid;
    }

    public final String getUtid() {
        return this.mUtid;
    }
}
