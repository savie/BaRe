package com.microsoft.identity.common.java.providers.microsoft;

import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.ClientInfo;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsTokenResponse;
import com.microsoft.identity.common.java.util.SchemaUtil;
import defpackage.y5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MicrosoftRefreshToken {
    private final String mClientId;
    private final ClientInfo mClientInfo;
    private String mEnvironment;
    private final String mFamilyId;
    private final String mRawRefreshToken;
    private final String mScope;

    public MicrosoftRefreshToken(MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        this.mRawRefreshToken = microsoftStsTokenResponse.getRefreshToken();
        try {
            this.mClientInfo = new ClientInfo(microsoftStsTokenResponse.getClientInfo());
            this.mFamilyId = microsoftStsTokenResponse.getFamilyId();
            this.mScope = microsoftStsTokenResponse.getScope();
            this.mClientId = microsoftStsTokenResponse.getClientId();
        } catch (ServiceException e) {
            y5.k(e);
            throw null;
        }
    }

    public final String getClientId() {
        return this.mClientId;
    }

    public final String getEnvironment() {
        return this.mEnvironment;
    }

    public final String getFamilyId() {
        return this.mFamilyId;
    }

    public final String getHomeAccountId() {
        return SchemaUtil.getHomeAccountId(this.mClientInfo);
    }

    public final String getSecret() {
        return this.mRawRefreshToken;
    }

    public final String getTarget() {
        return this.mScope;
    }

    public final void setEnvironment(String str) {
        this.mEnvironment = str;
    }

    public MicrosoftRefreshToken(String str, ClientInfo clientInfo, String str2, String str3, String str4, String str5) {
        this.mRawRefreshToken = str;
        this.mClientInfo = clientInfo;
        this.mScope = str2;
        this.mClientId = str3;
        this.mEnvironment = str4;
        this.mFamilyId = str5;
    }
}
