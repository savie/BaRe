package com.microsoft.identity.common.java.cache;

import com.microsoft.identity.common.java.AuthenticationConstants;
import com.microsoft.identity.common.java.dto.AccessTokenRecord;
import com.microsoft.identity.common.java.dto.CredentialType;
import com.microsoft.identity.common.java.dto.IdTokenRecord;
import com.microsoft.identity.common.java.dto.RefreshTokenRecord;
import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.ClientInfo;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsTokenResponse;
import com.microsoft.identity.common.java.util.SchemaUtil;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.y5;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MicrosoftStsAccountCredentialAdapter {
    public static AccessTokenRecord createAccessToken(MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy, MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest, MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            long jLongValue = microsoftStsTokenResponse.getExpiresIn().longValue() + (System.currentTimeMillis() / 1000);
            long jLongValue2 = (microsoftStsTokenResponse.getRefreshIn() == null ? microsoftStsTokenResponse.getExpiresIn() : microsoftStsTokenResponse.getRefreshIn()).longValue() + (System.currentTimeMillis() / 1000);
            ClientInfo clientInfo = new ClientInfo(microsoftStsTokenResponse.getClientInfo());
            AccessTokenRecord accessTokenRecord = new AccessTokenRecord();
            String tokenType = microsoftStsTokenResponse.getTokenType();
            if (tokenType == null) {
                tokenType = "";
            }
            CredentialType credentialType = CredentialType.RefreshToken;
            accessTokenRecord.setCredentialType("pop".equalsIgnoreCase(tokenType) ? "AccessToken_With_AuthScheme" : "AccessToken");
            accessTokenRecord.setHomeAccountId(SchemaUtil.getHomeAccountId(clientInfo));
            accessTokenRecord.setRealm(microsoftStsOAuth2Strategy.createAccount(microsoftStsTokenResponse).getRealm());
            accessTokenRecord.setEnvironment(microsoftStsOAuth2Strategy.getIssuerCacheIdentifierFromTokenEndpoint());
            accessTokenRecord.setClientId(microsoftStsAuthorizationRequest.getClientId());
            accessTokenRecord.setTarget(getTarget(microsoftStsAuthorizationRequest.getScope(), microsoftStsTokenResponse.getScope()));
            accessTokenRecord.setCachedAt(String.valueOf(jCurrentTimeMillis));
            accessTokenRecord.setExpiresOn(String.valueOf(jLongValue));
            accessTokenRecord.setRefreshOn(String.valueOf(jLongValue2));
            accessTokenRecord.setSecret(microsoftStsTokenResponse.getAccessToken());
            accessTokenRecord.setExtendedExpiresOn(String.valueOf((System.currentTimeMillis() / 1000) + (microsoftStsTokenResponse.getExtExpiresIn() == null ? 0L : microsoftStsTokenResponse.getExtExpiresIn().longValue())));
            accessTokenRecord.setAuthority(microsoftStsOAuth2Strategy.getAuthorityFromTokenEndpoint());
            accessTokenRecord.setAccessTokenType(microsoftStsTokenResponse.getTokenType());
            accessTokenRecord.setApplicationIdentifier(microsoftStsAuthorizationRequest.getApplicationIdentifier());
            accessTokenRecord.setMamEnrollmentIdentifier();
            if ("pop".equalsIgnoreCase(microsoftStsTokenResponse.getTokenType())) {
                accessTokenRecord.setKid(microsoftStsOAuth2Strategy.getDeviceAtPopThumbprint());
            }
            return accessTokenRecord;
        } catch (ServiceException e) {
            y5.k(e);
            return null;
        }
    }

    public static IdTokenRecord createIdToken(MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy, MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest, MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        try {
            ClientInfo clientInfo = new ClientInfo(microsoftStsTokenResponse.getClientInfo());
            IdTokenRecord idTokenRecord = new IdTokenRecord();
            idTokenRecord.setHomeAccountId(SchemaUtil.getHomeAccountId(clientInfo));
            idTokenRecord.setEnvironment(microsoftStsOAuth2Strategy.getIssuerCacheIdentifierFromTokenEndpoint());
            idTokenRecord.setRealm(microsoftStsOAuth2Strategy.createAccount(microsoftStsTokenResponse).getRealm());
            idTokenRecord.setCredentialType(SchemaUtil.getCredentialTypeFromVersion(microsoftStsTokenResponse.getIdToken()));
            idTokenRecord.setClientId(microsoftStsAuthorizationRequest.getClientId());
            idTokenRecord.setSecret(microsoftStsTokenResponse.getIdToken());
            idTokenRecord.setAuthority(microsoftStsOAuth2Strategy.getAuthorityFromTokenEndpoint());
            return idTokenRecord;
        } catch (ServiceException e) {
            y5.k(e);
            return null;
        }
    }

    public static RefreshTokenRecord createRefreshToken(MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy, MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest, MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            ClientInfo clientInfo = new ClientInfo(microsoftStsTokenResponse.getClientInfo());
            RefreshTokenRecord refreshTokenRecord = new RefreshTokenRecord();
            CredentialType credentialType = CredentialType.RefreshToken;
            refreshTokenRecord.setCredentialType("RefreshToken");
            refreshTokenRecord.setEnvironment(microsoftStsOAuth2Strategy.getIssuerCacheIdentifierFromTokenEndpoint());
            refreshTokenRecord.setHomeAccountId(SchemaUtil.getHomeAccountId(clientInfo));
            refreshTokenRecord.setClientId(microsoftStsAuthorizationRequest.getClientId());
            refreshTokenRecord.setSecret(microsoftStsTokenResponse.getRefreshToken());
            refreshTokenRecord.setFamilyId(microsoftStsTokenResponse.getFamilyId());
            refreshTokenRecord.setTarget(getTarget(microsoftStsAuthorizationRequest.getScope(), microsoftStsTokenResponse.getScope()));
            refreshTokenRecord.setCachedAt(String.valueOf(jCurrentTimeMillis));
            return refreshTokenRecord;
        } catch (ServiceException e) {
            y5.k(e);
            return null;
        }
    }

    private static String getTarget(String str, String str2) {
        if (!StringUtil.isNullOrEmpty(str2)) {
            return str2;
        }
        StringBuilder sb = new StringBuilder();
        HashSet hashSet = new HashSet(Arrays.asList(str.split("\\s+")));
        hashSet.removeAll(AuthenticationConstants.DEFAULT_SCOPES);
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
            sb.append(' ');
        }
        return sb.toString().trim();
    }
}
