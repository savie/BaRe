package com.microsoft.identity.client;

import com.microsoft.identity.client.exception.MsalClientException;
import com.microsoft.identity.common.internal.util.GzipUtil;
import com.microsoft.identity.common.java.providers.oauth2.IDToken;
import com.microsoft.identity.common.java.util.SchemaUtil;
import com.microsoft.identity.common.java.util.StringUtil;
import java.io.Serializable;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class Account implements Serializable {
    private final String mClientInfo;
    private String mEnvironment;
    private String mHomeAccountId;
    private String mHomeOid;
    private String mHomeTenantId;
    private final Map<String, ?> mIdTokenClaims;

    public Account(String str, IDToken iDToken) {
        this.mClientInfo = str;
        if (iDToken != null) {
            this.mIdTokenClaims = iDToken.getTokenClaims();
        } else {
            this.mIdTokenClaims = null;
        }
    }

    public final Map<String, ?> getClaims() {
        return this.mIdTokenClaims;
    }

    public final String getEnvironment() {
        return this.mEnvironment;
    }

    public final String getHomeAccountId() {
        return getId() + "." + this.mHomeTenantId;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0066  */
    public final String getId() {
        ClientInfo clientInfo;
        String uniqueIdentifier;
        String str = null;
        String str2 = this.mClientInfo;
        if (str2 != null) {
            try {
                clientInfo = new ClientInfo(str2);
            } catch (MsalClientException e) {
                int i = com.microsoft.identity.common.logging.Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("Account:getId", "Failed to parse ClientInfo", e);
                clientInfo = null;
            }
        } else {
            clientInfo = null;
        }
        if (clientInfo != null) {
            uniqueIdentifier = clientInfo.getUniqueIdentifier();
        } else {
            Map<String, ?> map = this.mIdTokenClaims;
            uniqueIdentifier = map != null ? (String) map.get("oid") : this.mHomeOid;
        }
        if (GzipUtil.isEmpty(uniqueIdentifier)) {
            int i2 = com.microsoft.identity.common.logging.Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("Account:getId", "Unable to get account id from either ClientInfo or IdToken. Attempting to obtain from home account id.");
            String str3 = this.mHomeAccountId;
            if (StringUtil.isNullOrEmpty(str3)) {
                com.microsoft.identity.common.java.logging.Logger.warn("StringUtil:getUIdFromHomeAccountId", "Home Account id doesn't have uid or tenant id information, returning null ");
            } else {
                String[] strArrSplit = str3.split(Pattern.quote("."));
                if (strArrSplit.length == 2) {
                    com.microsoft.identity.common.java.logging.Logger.info("StringUtil:getUIdFromHomeAccountId", "Home account id is tenanted, returning uid ");
                    str = strArrSplit[0];
                } else if (strArrSplit.length == 1) {
                    com.microsoft.identity.common.java.logging.Logger.info("StringUtil:getUIdFromHomeAccountId", "Home account id not tenanted, it's the uid added by v1 broker ");
                    str = strArrSplit[0];
                } else {
                    com.microsoft.identity.common.java.logging.Logger.warn("StringUtil:getUIdFromHomeAccountId", "Home Account id doesn't have uid or tenant id information, returning null ");
                }
            }
            uniqueIdentifier = str;
        }
        if (!GzipUtil.isEmpty(uniqueIdentifier)) {
            return uniqueIdentifier;
        }
        int i3 = com.microsoft.identity.common.logging.Logger.a;
        com.microsoft.identity.common.java.logging.Logger.warn("Account:getId", "Account ID is empty. Returning MISSING_FROM_THE_TOKEN_RESPONSE.");
        return "Missing from the token response";
    }

    public final String getTenantId() {
        return this.mHomeTenantId;
    }

    public final String getUsername() {
        Map<String, ?> map = this.mIdTokenClaims;
        return map != null ? SchemaUtil.getDisplayableId(map) : "Missing from the token response";
    }

    public final void setEnvironment(String str) {
        this.mEnvironment = str;
    }

    public final void setHomeAccountId(String str) {
        this.mHomeAccountId = str;
    }

    public final void setId(String str) {
        this.mHomeOid = str;
    }

    public final void setTenantId(String str) {
        this.mHomeTenantId = str;
    }
}
