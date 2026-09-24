package com.microsoft.identity.common.java.util;

import com.microsoft.identity.common.java.dto.CredentialType;
import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.ClientInfo;
import com.microsoft.identity.common.java.providers.oauth2.IDToken;
import defpackage.dj7;
import defpackage.f6;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class SchemaUtil {
    public static String getAlternativeAccountId(IDToken iDToken) {
        if (iDToken == null) {
            Logger.warn("SchemaUtil:getAlternativeAccountId", "IDToken was null.");
            return null;
        }
        String str = (String) iDToken.getTokenClaims().get("altsecid");
        Logger.verbosePII("SchemaUtil:getAlternativeAccountId", "alternative_account_id: " + str);
        if (str == null) {
            Logger.warn("SchemaUtil:getAlternativeAccountId", "alternative_account_id was null.");
        }
        return str;
    }

    public static String getAvatarUrl(IDToken iDToken) {
        if (iDToken == null) {
            Logger.warn("SchemaUtil:getAvatarUrl", "IDToken was null.");
            return null;
        }
        String str = (String) iDToken.getTokenClaims().get("picture");
        Logger.verbosePII("SchemaUtil:getAvatarUrl", "Avatar URL: " + str);
        if (str == null) {
            Logger.warn("SchemaUtil:getAvatarUrl", "Avatar URL was null.");
        }
        return str;
    }

    public static String getCredentialTypeFromVersion(String str) {
        CredentialType credentialType = CredentialType.RefreshToken;
        if (StringUtil.isNullOrEmpty(str)) {
            return "IdToken";
        }
        try {
            if (!"1.0".equalsIgnoreCase((String) new IDToken(str).getTokenClaims().get("ver"))) {
                return "IdToken";
            }
            CredentialType credentialType2 = CredentialType.RefreshToken;
            return "V1IdToken";
        } catch (ServiceException e) {
            Logger.warn("SchemaUtil:getCredentialTypeFromVersion", "Exception constructing IDToken. " + e.getMessage());
            return "IdToken";
        }
    }

    public static String getDisplayableId(Map<String, ?> map) {
        if (map == null) {
            f6.n("claims is marked non-null but is null");
            return null;
        }
        if (!StringUtil.isNullOrEmpty((String) map.get("preferred_username"))) {
            return (String) map.get("preferred_username");
        }
        if (!StringUtil.isNullOrEmpty((String) map.get("email"))) {
            return (String) map.get("email");
        }
        if (!StringUtil.isNullOrEmpty((String) map.get("upn"))) {
            return (String) map.get("upn");
        }
        Logger.warn("SchemaUtil", "The preferred username is not returned from the IdToken.");
        return "Missing from the token response";
    }

    public static String getHomeAccountId(ClientInfo clientInfo) {
        String strK = null;
        if (clientInfo == null) {
            Logger.warn("SchemaUtil::getHomeAccountId", "ClientInfo was null.");
            return null;
        }
        String uid = clientInfo.getUid();
        String utid = clientInfo.getUtid();
        if (StringUtil.isNullOrEmpty(uid)) {
            Logger.warn("SchemaUtil::getHomeAccountId", "uid was null/blank");
        }
        if (StringUtil.isNullOrEmpty(utid)) {
            Logger.warn("SchemaUtil::getHomeAccountId", "utid was null/blank");
        }
        if (!StringUtil.isNullOrEmpty(uid) && !StringUtil.isNullOrEmpty(utid)) {
            strK = dj7.k(uid, ".", utid);
        }
        Logger.verbosePII("SchemaUtil::getHomeAccountId", "home_account_id: " + strK);
        return strK;
    }
}
