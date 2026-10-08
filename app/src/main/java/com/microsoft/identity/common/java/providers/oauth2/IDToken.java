package com.microsoft.identity.common.java.providers.oauth2;

import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.util.StringUtil;
import com.nimbusds.jwt.JWTParser;
import defpackage.c6;
import defpackage.f6;
import java.text.ParseException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class IDToken {
    private final String mRawIdToken;
    private final HashMap mTokenClaims;

    public IDToken(String str) throws ServiceException {
        if (StringUtil.isNullOrEmpty(str)) {
            c6.f("null or empty raw idtoken");
            throw null;
        }
        this.mRawIdToken = str;
        if (str == null) {
            f6.n("rawIdToken is marked non-null but is null");
            throw null;
        }
        HashMap map = new HashMap();
        try {
            map.putAll(JWTParser.parse(str).getJWTClaimsSet().getClaims());
            this.mTokenClaims = map;
        } catch (ParseException e) {
            Logger.error("IDToken:getClaims(String)", "Failed to parse IdToken", e);
            throw new ServiceException(e, "Failed to parse JWT", "invalid_jwt");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof IDToken)) {
            return false;
        }
        IDToken iDToken = (IDToken) obj;
        HashMap map = iDToken.mTokenClaims;
        HashMap map2 = this.mTokenClaims;
        if (map2 == null) {
            if (map != null) {
                return false;
            }
        } else if (!map2.equals(map)) {
            return false;
        }
        String str = iDToken.mRawIdToken;
        String str2 = this.mRawIdToken;
        if (str2 == null) {
            return str == null;
        }
        return str2.equals(str);
    }

    public final String getRawIDToken() {
        return this.mRawIdToken;
    }

    public final Map<String, ?> getTokenClaims() {
        HashMap map = this.mTokenClaims;
        return map == null ? Collections.EMPTY_MAP : Collections.unmodifiableMap(map);
    }

    public final int hashCode() {
        HashMap map = this.mTokenClaims;
        int iHashCode = ((map == null ? 43 : map.hashCode()) + 59) * 59;
        String str = this.mRawIdToken;
        return iHashCode + (str != null ? str.hashCode() : 43);
    }
}
