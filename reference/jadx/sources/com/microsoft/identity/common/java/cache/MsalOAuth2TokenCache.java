package com.microsoft.identity.common.java.cache;

import com.microsoft.identity.common.java.AuthenticationConstants;
import com.microsoft.identity.common.java.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.java.authscheme.BearerAuthenticationSchemeInternal;
import com.microsoft.identity.common.java.authscheme.PopAuthenticationSchemeWithClientKeyInternal;
import com.microsoft.identity.common.java.dto.AccessTokenRecord;
import com.microsoft.identity.common.java.dto.AccountRecord;
import com.microsoft.identity.common.java.dto.Credential;
import com.microsoft.identity.common.java.dto.CredentialType;
import com.microsoft.identity.common.java.dto.IdTokenRecord;
import com.microsoft.identity.common.java.dto.RefreshTokenRecord;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.interfaces.PlatformComponents;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.providers.microsoft.MicrosoftRefreshToken;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAccount;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsTokenResponse;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.java.providers.oauth2.IDToken;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.java.providers.oauth2.TokenResponse;
import com.microsoft.identity.common.java.telemetry.Telemetry;
import com.microsoft.identity.common.java.telemetry.events.CacheEndEvent;
import com.microsoft.identity.common.java.telemetry.events.CacheStartEvent;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.eq3;
import defpackage.f6;
import defpackage.q;
import defpackage.u48;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MsalOAuth2TokenCache<GenericOAuth2Strategy extends OAuth2Strategy, GenericAuthorizationRequest extends AuthorizationRequest, GenericTokenResponse extends TokenResponse, GenericAccount extends MicrosoftStsAccount, GenericRefreshToken extends MicrosoftRefreshToken> {
    private static final Object sCacheLock = new Object();
    private final MicrosoftStsAccountCredentialAdapter mAccountCredentialAdapter;
    private final AbstractAccountCredentialCache mAccountCredentialCache;

    public MsalOAuth2TokenCache(PlatformComponents platformComponents, AbstractAccountCredentialCache abstractAccountCredentialCache, MicrosoftStsAccountCredentialAdapter microsoftStsAccountCredentialAdapter) {
        Logger.verbose("MsalOAuth2TokenCache", "Init: MsalOAuth2TokenCache");
        this.mAccountCredentialCache = abstractAccountCredentialCache;
        this.mAccountCredentialAdapter = microsoftStsAccountCredentialAdapter;
    }

    private static boolean accountHasCredential(AccountRecord accountRecord, List list) {
        if (accountRecord == null) {
            f6.n("account is marked non-null but is null");
            return false;
        }
        if (list == null) {
            f6.n("appCredentials is marked non-null but is null");
            return false;
        }
        String homeAccountId = accountRecord.getHomeAccountId();
        String environment = accountRecord.getEnvironment();
        Logger.verbosePII("MsalOAuth2TokenCache:accountHasCredential", eq3.l("HomeAccountId: [", homeAccountId, "]\nEnvironment: [", environment, "]"));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Credential credential = (Credential) it.next();
            if (homeAccountId.equals(credential.getHomeAccountId()) && environment.equals(credential.getEnvironment())) {
                Logger.verbose("MsalOAuth2TokenCache:accountHasCredential", "Credentials located for account.");
                return true;
            }
        }
        return false;
    }

    private RefreshTokenRecord getFamilyRefreshTokenForAccount(AccountRecord accountRecord) {
        if (accountRecord == null) {
            f6.n("account is marked non-null but is null");
            return null;
        }
        ArrayList<Credential> credentialsFilteredBy = this.mAccountCredentialCache.getCredentialsFilteredBy(accountRecord.getHomeAccountId(), accountRecord.getEnvironment(), CredentialType.RefreshToken, null, null);
        if (!credentialsFilteredBy.isEmpty()) {
            Logger.verbose("MsalOAuth2TokenCache:getFamilyRefreshTokensForAccount", "Inspecting fallback RTs for a FoCI match.");
            for (Credential credential : credentialsFilteredBy) {
                if (credential instanceof RefreshTokenRecord) {
                    RefreshTokenRecord refreshTokenRecord = (RefreshTokenRecord) credential;
                    if (!StringUtil.isNullOrEmpty(refreshTokenRecord.getFamilyId())) {
                        Logger.verbose("MsalOAuth2TokenCache:getFamilyRefreshTokensForAccount", "Fallback RT found.");
                        return refreshTokenRecord;
                    }
                }
            }
        }
        return null;
    }

    private static boolean isSchemaCompliant(Class<?> cls, String[][] strArr) {
        boolean z = true;
        for (String[] strArr2 : strArr) {
            z = z && !StringUtil.isNullOrEmpty(strArr2[1]);
        }
        if (!z) {
            Logger.warn("MsalOAuth2TokenCache:isSchemaCompliant", cls.getSimpleName().concat(" does not contain all required fields."));
            for (String[] strArr3 : strArr) {
                Logger.warn("MsalOAuth2TokenCache:isSchemaCompliant", strArr3[0] + " is null? [" + StringUtil.isNullOrEmpty(strArr3[1]) + "]");
            }
        }
        return z;
    }

    private ArrayList mergeCacheRecordWithOtherTenantCacheRecords(CacheRecord cacheRecord) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(cacheRecord);
        ArrayList arrayList2 = new ArrayList(getAllTenantAccountsForAccountByClientId(cacheRecord.getRefreshToken().getClientId(), cacheRecord.getAccount()));
        if (!arrayList2.isEmpty()) {
            arrayList2.remove(0);
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList.add(getSparseCacheRecordForAccount(cacheRecord.getRefreshToken().getClientId(), (AccountRecord) it.next()));
            }
        }
        return arrayList;
    }

    private void removeAllRefreshTokensExcept(AccountRecord accountRecord, RefreshTokenRecord refreshTokenRecord) {
        boolean zIsNullOrEmpty = StringUtil.isNullOrEmpty(refreshTokenRecord.getFamilyId());
        StringBuilder sb = new StringBuilder("isFamilyRefreshToken? [");
        sb.append(!zIsNullOrEmpty);
        sb.append("]");
        Logger.info("MsalOAuth2TokenCache:removeAllRefreshTokensExcept", sb.toString());
        boolean zEquals = "MSSTS".equals(accountRecord.getAuthorityType());
        Logger.info("MsalOAuth2TokenCache:removeAllRefreshTokensExcept", "isMultiResourceCapable? [" + zEquals + "]");
        if (!zIsNullOrEmpty || zEquals) {
            String environment = accountRecord.getEnvironment();
            String clientId = refreshTokenRecord.getClientId();
            if (!zIsNullOrEmpty) {
                clientId = null;
            }
            String str = clientId;
            CredentialType credentialType = CredentialType.RefreshToken;
            if (environment == null) {
                f6.n("environment is marked non-null but is null");
                return;
            }
            int i = 0;
            for (Credential credential : this.mAccountCredentialCache.getCredentialsFilteredBy(accountRecord.getHomeAccountId(), environment, credentialType, str, null)) {
                if (!refreshTokenRecord.equals(credential) && this.mAccountCredentialCache.removeCredential(credential)) {
                    i++;
                }
            }
            Logger.info("MsalOAuth2TokenCache:removeAllRefreshTokensExcept", "Refresh tokens removed: [" + i + "]");
            if (i > 1) {
                Logger.warn("MsalOAuth2TokenCache:removeAllRefreshTokensExcept", "Multiple refresh tokens found for Account.");
            }
        }
    }

    private static HashSet scopesAsSet(AccessTokenRecord accessTokenRecord) {
        String target = accessTokenRecord.getTarget();
        if (StringUtil.isNullOrEmpty(target)) {
            return new HashSet();
        }
        String[] strArrSplit = target.split("\\s+");
        HashSet hashSet = new HashSet();
        for (String str : strArrSplit) {
            hashSet.add(str.toLowerCase(Locale.US));
        }
        return hashSet;
    }

    private static void setToCacheRecord(CacheRecord.CacheRecordBuilder cacheRecordBuilder, IdTokenRecord idTokenRecord) {
        CredentialType credentialType;
        if (idTokenRecord == null) {
            f6.n("idTokenRecord is marked non-null but is null");
            return;
        }
        String credentialType2 = idTokenRecord.getCredentialType();
        CredentialType[] credentialTypeArrValues = CredentialType.values();
        int length = credentialTypeArrValues.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                credentialType = null;
                break;
            }
            credentialType = credentialTypeArrValues[i];
            if (credentialType.name().equalsIgnoreCase(credentialType2)) {
                break;
            } else {
                i++;
            }
        }
        if (credentialType != null) {
            if (CredentialType.V1IdToken == credentialType) {
                cacheRecordBuilder.v1IdToken(idTokenRecord);
            } else {
                if (CredentialType.IdToken == credentialType) {
                    cacheRecordBuilder.idToken(idTokenRecord);
                    return;
                }
                Logger.warn("MsalOAuth2TokenCache:setToCacheRecord", "Unrecognized IdToken type: " + idTokenRecord.getCredentialType());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x00a4  */
    public static void validateCacheArtifacts(AccountRecord accountRecord, AccessTokenRecord accessTokenRecord, RefreshTokenRecord refreshTokenRecord, IdTokenRecord idTokenRecord) throws ClientException {
        boolean z;
        Logger.verbose("MsalOAuth2TokenCache:validateCacheArtifacts", "Validating cache artifacts...");
        boolean zIsSchemaCompliant = isSchemaCompliant(accountRecord.getClass(), new String[][]{new String[]{"home_account_id", accountRecord.getHomeAccountId()}, new String[]{"environment", accountRecord.getEnvironment()}, new String[]{"local_account_id", accountRecord.getLocalAccountId()}, new String[]{"username", accountRecord.getUsername()}, new String[]{"authority_type", accountRecord.getAuthorityType()}});
        if (accessTokenRecord != null) {
            if (isSchemaCompliant(accessTokenRecord.getClass(), new String[][]{new String[]{"credential_type", accessTokenRecord.getCredentialType()}, new String[]{"home_account_id", accessTokenRecord.getHomeAccountId()}, new String[]{"environment", accessTokenRecord.getEnvironment()}, new String[]{"client_id", accessTokenRecord.getClientId()}, new String[]{"target", accessTokenRecord.getTarget()}, new String[]{"cached_at", accessTokenRecord.getCachedAt()}, new String[]{"expires_on", accessTokenRecord.getExpiresOn()}, new String[]{"secret", accessTokenRecord.getSecret()}})) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        boolean zIsSchemaCompliant2 = isSchemaCompliant(refreshTokenRecord.getClass(), new String[][]{new String[]{"credential_type", refreshTokenRecord.getCredentialType()}, new String[]{"environment", refreshTokenRecord.getEnvironment()}, new String[]{"home_account_id", refreshTokenRecord.getHomeAccountId()}, new String[]{"client_id", refreshTokenRecord.getClientId()}, new String[]{"secret", refreshTokenRecord.getSecret()}});
        boolean zIsSchemaCompliant3 = isSchemaCompliant(idTokenRecord.getClass(), new String[][]{new String[]{"home_account_id", idTokenRecord.getHomeAccountId()}, new String[]{"environment", idTokenRecord.getEnvironment()}, new String[]{"credential_type", idTokenRecord.getCredentialType()}, new String[]{"client_id", idTokenRecord.getClientId()}, new String[]{"secret", idTokenRecord.getSecret()}});
        if (!zIsSchemaCompliant) {
            throw new ClientException("Account is missing schema-required fields.", null, null);
        }
        if (z && zIsSchemaCompliant2 && zIsSchemaCompliant3) {
            return;
        }
        String strConcat = !z ? "[(AT)" : "[";
        if (!zIsSchemaCompliant2) {
            strConcat = strConcat.concat("(RT)");
        }
        if (!zIsSchemaCompliant3) {
            strConcat = strConcat.concat("(ID)");
        }
        q.i("Credential is missing schema-required fields.", strConcat.concat("]"), null);
    }

    public final AccountRecord getAccount(String str, String str2, String str3, String str4) {
        if (str2 == null) {
            f6.n("clientId is marked non-null but is null");
            return null;
        }
        if (str3 == null) {
            f6.n("homeAccountId is marked non-null but is null");
            return null;
        }
        Logger.verbosePII("MsalOAuth2TokenCache:getAccount", eq3.o(u48.p("Environment: [", str, "]\nClientId: [", str2, "]\nHomeAccountId: ["), str3, "]\nRealm: [", str4, "]"));
        List<AccountRecord> accounts = getAccounts(str, str2);
        Logger.info("MsalOAuth2TokenCache:getAccount", "Found " + accounts.size() + " accounts");
        for (AccountRecord accountRecord : accounts) {
            if (str3.equals(accountRecord.getHomeAccountId()) && (str4 == null || str4.equals(accountRecord.getRealm()))) {
                return accountRecord;
            }
        }
        Logger.warn("MsalOAuth2TokenCache:getAccount", "No matching account found.");
        return null;
    }

    public final AccountRecord getAccountByLocalAccountId(String str, String str2, String str3) {
        if (str2 == null) {
            f6.n("clientId is marked non-null but is null");
            return null;
        }
        if (str3 == null) {
            f6.n("localAccountId is marked non-null but is null");
            return null;
        }
        Logger.verbosePII("MsalOAuth2TokenCache:getAccountByLocalAccountId", "LocalAccountId: [" + str3 + "]");
        AbstractAccountCredentialCache abstractAccountCredentialCache = this.mAccountCredentialCache;
        ArrayList<AccountRecord> accounts = abstractAccountCredentialCache.getAccounts();
        if (accounts.isEmpty()) {
            Logger.warn("MsalOAuth2TokenCache:getAccountByLocalAccountId", "No accounts found in the cache.");
            return null;
        }
        ArrayList credentialsFilteredBy = abstractAccountCredentialCache.getCredentialsFilteredBy(str, new HashSet(Arrays.asList(CredentialType.IdToken, CredentialType.V1IdToken, CredentialType.RefreshToken)), str2);
        for (AccountRecord accountRecord : accounts) {
            if (accountRecord.getLocalAccountId().equals(str3) && accountHasCredential(accountRecord, credentialsFilteredBy)) {
                return accountRecord;
            }
        }
        return null;
    }

    public final List<AccountRecord> getAccounts(String str, String str2) {
        if (str2 == null) {
            f6.n("clientId is marked non-null but is null");
            return null;
        }
        Logger.verbosePII("MsalOAuth2TokenCache:getAccounts", eq3.l("Environment: [", str, "]\nClientId: [", str2, "]"));
        ArrayList arrayList = new ArrayList();
        AbstractAccountCredentialCache abstractAccountCredentialCache = this.mAccountCredentialCache;
        ArrayList<AccountRecord> accountsFilteredBy = abstractAccountCredentialCache.getAccountsFilteredBy(null, str);
        Logger.verbose("MsalOAuth2TokenCache:getAccounts", "Found " + accountsFilteredBy.size() + " accounts for this environment");
        if (accountsFilteredBy.isEmpty()) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList credentialsFilteredBy = abstractAccountCredentialCache.getCredentialsFilteredBy(str, new HashSet(Arrays.asList(CredentialType.IdToken, CredentialType.V1IdToken, CredentialType.RefreshToken)), str2);
        for (AccountRecord accountRecord : accountsFilteredBy) {
            if (accountHasCredential(accountRecord, credentialsFilteredBy)) {
                arrayList.add(accountRecord);
            }
        }
        Logger.verbose("MsalOAuth2TokenCache:getAccounts", "Found " + arrayList.size() + " accounts for this clientId");
        return Collections.unmodifiableList(arrayList);
    }

    public final List getAccountsWithAggregatedAccountData(String str) {
        if (str == null) {
            f6.n("clientId is marked non-null but is null");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (AccountRecord accountRecord : getAccounts(null, str)) {
            List<IdTokenRecord> idTokensForAccountRecord = getIdTokensForAccountRecord(str, accountRecord);
            if (idTokensForAccountRecord != null && idTokensForAccountRecord.size() != 0) {
                CacheRecord.CacheRecordBuilder cacheRecordBuilderBuilder = CacheRecord.builder();
                cacheRecordBuilderBuilder.account(accountRecord);
                Iterator<IdTokenRecord> it = idTokensForAccountRecord.iterator();
                while (it.hasNext()) {
                    setToCacheRecord(cacheRecordBuilderBuilder, it.next());
                }
                arrayList.add(cacheRecordBuilderBuilder.build());
            }
        }
        Logger.verbose("MsalOAuth2TokenCache:getAccountsWithAggregatedAccountData", "Found " + arrayList.size() + " accounts with IdTokens");
        return Collections.unmodifiableList(arrayList);
    }

    public final List<AccountRecord> getAllTenantAccountsForAccountByClientId(String str, AccountRecord accountRecord) {
        if (str == null) {
            f6.n("clientId is marked non-null but is null");
            return null;
        }
        if (accountRecord == null) {
            f6.n("accountRecord is marked non-null but is null");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(accountRecord);
        ArrayList accountsFilteredBy = this.mAccountCredentialCache.getAccountsFilteredBy(accountRecord.getHomeAccountId(), accountRecord.getEnvironment());
        for (AccountRecord accountRecord2 : getAccounts(accountRecord.getEnvironment(), str)) {
            if (accountsFilteredBy.contains(accountRecord2) && !accountRecord.equals(accountRecord2)) {
                arrayList.add(accountRecord2);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final RefreshTokenRecord getFamilyRefreshTokenForHomeAccountId(String str) {
        if (str == null) {
            f6.n("homeAccountId is marked non-null but is null");
            return null;
        }
        for (AccountRecord accountRecord : this.mAccountCredentialCache.getAccounts()) {
            if (accountRecord.getHomeAccountId().equals(str)) {
                return getFamilyRefreshTokenForAccount(accountRecord);
            }
        }
        return null;
    }

    public final List<IdTokenRecord> getIdTokensForAccountRecord(String str, AccountRecord accountRecord) {
        if (accountRecord == null) {
            f6.n("accountRecord is marked non-null but is null");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList credentials = this.mAccountCredentialCache.getCredentials();
        ArrayList<Credential> credentialsFilteredBy = this.mAccountCredentialCache.getCredentialsFilteredBy(accountRecord.getHomeAccountId(), accountRecord.getEnvironment(), CredentialType.IdToken, str, accountRecord.getRealm(), null, credentials);
        credentialsFilteredBy.addAll(this.mAccountCredentialCache.getCredentialsFilteredBy(accountRecord.getHomeAccountId(), accountRecord.getEnvironment(), CredentialType.V1IdToken, str, accountRecord.getRealm(), null, credentials));
        for (Credential credential : credentialsFilteredBy) {
            if (credential instanceof IdTokenRecord) {
                arrayList.add((IdTokenRecord) credential);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final CacheRecord getSparseCacheRecordForAccount(String str, AccountRecord accountRecord) {
        if (str == null) {
            f6.n("clientId is marked non-null but is null");
            return null;
        }
        if (accountRecord == null) {
            f6.n("acct is marked non-null but is null");
            return null;
        }
        List<IdTokenRecord> idTokensForAccountRecord = getIdTokensForAccountRecord(str, accountRecord);
        if (idTokensForAccountRecord.size() > CredentialType.ID_TOKEN_TYPES.size()) {
            Logger.warn("MsalOAuth2TokenCache:getSparseCacheRecordForAccount", "Found more IdTokens than expected.\nFound: [" + idTokensForAccountRecord.size() + "]");
        }
        CacheRecord.CacheRecordBuilder cacheRecordBuilderBuilder = CacheRecord.builder();
        cacheRecordBuilderBuilder.account(accountRecord);
        Iterator<IdTokenRecord> it = idTokensForAccountRecord.iterator();
        while (it.hasNext()) {
            setToCacheRecord(cacheRecordBuilderBuilder, it.next());
        }
        return cacheRecordBuilderBuilder.build();
    }

    public final CacheRecord load(String str, String str2, String str3, String str4, AccountRecord accountRecord, AbstractAuthenticationScheme abstractAuthenticationScheme) {
        RefreshTokenRecord familyRefreshTokenForAccount;
        if (str == null) {
            f6.n("clientId is marked non-null but is null");
            return null;
        }
        if (accountRecord == null) {
            f6.n("account is marked non-null but is null");
            return null;
        }
        if (abstractAuthenticationScheme == null) {
            f6.n("authScheme is marked non-null but is null");
            return null;
        }
        CacheStartEvent cacheStartEvent = new CacheStartEvent();
        cacheStartEvent.names("cache_start_event");
        cacheStartEvent.put("Microsoft.MSAL.event_type", "Microsoft.MSAL.cache_event");
        Telemetry.emit(cacheStartEvent);
        boolean zEquals = "MSSTS".equals(accountRecord.getAuthorityType());
        ArrayList credentials = this.mAccountCredentialCache.getCredentials();
        ArrayList credentialsFilteredBy = this.mAccountCredentialCache.getCredentialsFilteredBy(credentials, accountRecord.getHomeAccountId(), accountRecord.getEnvironment(), BearerAuthenticationSchemeInternal.SCHEME_BEARER.equalsIgnoreCase(abstractAuthenticationScheme.getName()) ? CredentialType.AccessToken : CredentialType.AccessToken_With_AuthScheme, str, str2, str3, accountRecord.getRealm(), str4, abstractAuthenticationScheme.getName(), abstractAuthenticationScheme instanceof PopAuthenticationSchemeWithClientKeyInternal ? ((PopAuthenticationSchemeWithClientKeyInternal) abstractAuthenticationScheme).getKid() : null);
        ArrayList credentialsFilteredBy2 = this.mAccountCredentialCache.getCredentialsFilteredBy(accountRecord.getHomeAccountId(), accountRecord.getEnvironment(), CredentialType.RefreshToken, str, zEquals ? null : accountRecord.getRealm(), zEquals ? null : str4, credentials);
        if (credentialsFilteredBy2.isEmpty() && (familyRefreshTokenForAccount = getFamilyRefreshTokenForAccount(accountRecord)) != null) {
            credentialsFilteredBy2 = new ArrayList();
            credentialsFilteredBy2.add(familyRefreshTokenForAccount);
        }
        ArrayList credentialsFilteredBy3 = this.mAccountCredentialCache.getCredentialsFilteredBy(accountRecord.getHomeAccountId(), accountRecord.getEnvironment(), CredentialType.IdToken, str, accountRecord.getRealm(), null, credentials);
        ArrayList credentialsFilteredBy4 = this.mAccountCredentialCache.getCredentialsFilteredBy(accountRecord.getHomeAccountId(), accountRecord.getEnvironment(), CredentialType.V1IdToken, str, accountRecord.getRealm(), null, credentials);
        CacheRecord.CacheRecordBuilder cacheRecordBuilderBuilder = CacheRecord.builder();
        cacheRecordBuilderBuilder.account(accountRecord);
        cacheRecordBuilderBuilder.accessToken(credentialsFilteredBy.isEmpty() ? null : (AccessTokenRecord) credentialsFilteredBy.get(0));
        cacheRecordBuilderBuilder.refreshToken(credentialsFilteredBy2.isEmpty() ? null : (RefreshTokenRecord) credentialsFilteredBy2.get(0));
        cacheRecordBuilderBuilder.idToken(credentialsFilteredBy3.isEmpty() ? null : (IdTokenRecord) credentialsFilteredBy3.get(0));
        cacheRecordBuilderBuilder.v1IdToken(credentialsFilteredBy4.isEmpty() ? null : (IdTokenRecord) credentialsFilteredBy4.get(0));
        CacheEndEvent cacheEndEvent = new CacheEndEvent();
        CacheRecord cacheRecordBuild = cacheRecordBuilderBuilder.build();
        cacheEndEvent.put("Microsoft.MSAL.at_status", cacheRecordBuild.getAccessToken() == null ? "false" : "true");
        if (cacheRecordBuild.getRefreshToken() != null) {
            cacheEndEvent.put("Microsoft.MSAL.mrrt_status", "true");
            cacheEndEvent.put("Microsoft.MSAL.rt_status", "true");
            cacheEndEvent.put("Microsoft.MSAL.frt_status", StringUtil.isNullOrEmpty(cacheRecordBuild.getRefreshToken().getFamilyId()) ? "false" : "true");
        } else {
            cacheEndEvent.put("Microsoft.MSAL.rt_status", "false");
        }
        cacheEndEvent.put("Microsoft.MSAL.id_token_status", cacheRecordBuild.getIdToken() == null ? "false" : "true");
        cacheEndEvent.put("Microsoft.MSAL.v1_id_token_status", cacheRecordBuild.getV1IdToken() == null ? "false" : "true");
        cacheEndEvent.put("Microsoft.MSAL.account_status", cacheRecordBuild.getAccount() != null ? "true" : "false");
        Telemetry.emit(cacheEndEvent);
        return cacheRecordBuilderBuilder.build();
    }

    public final AccountDeletionRecord removeAccount(String str, String str2, String str3) {
        AccountRecord account;
        String str4 = str;
        CredentialType[] credentialTypeArr = {CredentialType.AccessToken, CredentialType.AccessToken_With_AuthScheme, CredentialType.RefreshToken, CredentialType.IdToken, CredentialType.V1IdToken};
        StringBuilder sbP = u48.p("Environment: [null]\nClientId: [", str4, "]\nHomeAccountId: [", str2, "]\nRealm: [");
        sbP.append(str3);
        sbP.append("]\nCredentialTypes to delete: [");
        sbP.append(Arrays.toString(credentialTypeArr));
        sbP.append("]");
        Logger.verbosePII("MsalOAuth2TokenCache:removeAccount", sbP.toString());
        if (str4 == null || str2 == null || (account = getAccount(null, str4, str2, str3)) == null) {
            Logger.warn("MsalOAuth2TokenCache:removeAccount", "Insufficient filtering provided for account removal - preserving Account.");
            return new AccountDeletionRecord(null);
        }
        boolean z = str3 == null;
        Logger.verbose("MsalOAuth2TokenCache:removeAccount", "IsRealmAgnostic? " + z);
        int i = 0;
        while (true) {
            AbstractAccountCredentialCache abstractAccountCredentialCache = this.mAccountCredentialCache;
            if (i >= 5) {
                ArrayList arrayList = new ArrayList();
                if (z) {
                    for (AccountRecord accountRecord : abstractAccountCredentialCache.getAccountsFilteredBy(str2, null)) {
                        if (abstractAccountCredentialCache.removeAccount(accountRecord)) {
                            arrayList.add(accountRecord);
                        }
                    }
                } else if (abstractAccountCredentialCache.removeAccount(account)) {
                    arrayList.add(account);
                }
                return new AccountDeletionRecord(arrayList);
            }
            CredentialType credentialType = credentialTypeArr[i];
            if (credentialType == null) {
                f6.n("credentialType is marked non-null but is null");
                return null;
            }
            Iterator it = this.mAccountCredentialCache.getCredentialsFilteredBy(account.getHomeAccountId(), null, credentialType, str4, z ? null : account.getRealm()).iterator();
            int i2 = 0;
            while (it.hasNext()) {
                if (abstractAccountCredentialCache.removeCredential((Credential) it.next())) {
                    i2++;
                }
            }
            Logger.info("MsalOAuth2TokenCache:removeAccount", "Removed " + i2 + " credentials of type: " + credentialType);
            i++;
            str4 = str;
        }
    }

    public final boolean removeCredential(Credential credential) {
        Logger.info("MsalOAuth2TokenCache:removeCredential", "Removing credential...");
        Logger.verbosePII("MsalOAuth2TokenCache:removeCredential", "ClientId: [" + credential.getClientId() + "]\nCredentialType: [" + credential.getCredentialType() + "]\nCachedAt: [" + credential.getCachedAt() + "]\nEnvironment: [" + credential.getEnvironment() + "]\nHomeAccountId: [" + credential.getHomeAccountId() + "]\nIsExpired?: [" + credential.isExpired() + "]");
        return this.mAccountCredentialCache.removeCredential(credential);
    }

    public final CacheRecord save(OAuth2Strategy oAuth2Strategy, AuthorizationRequest authorizationRequest, TokenResponse tokenResponse) throws ClientException {
        if (oAuth2Strategy == null) {
            f6.n("oAuth2Strategy is marked non-null but is null");
            return null;
        }
        if (authorizationRequest == null) {
            f6.n("request is marked non-null but is null");
            return null;
        }
        if (tokenResponse == null) {
            f6.n("response is marked non-null but is null");
            return null;
        }
        this.mAccountCredentialAdapter.getClass();
        MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy = (MicrosoftStsOAuth2Strategy) oAuth2Strategy;
        MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest = (MicrosoftStsAuthorizationRequest) authorizationRequest;
        MicrosoftStsTokenResponse microsoftStsTokenResponse = (MicrosoftStsTokenResponse) tokenResponse;
        Logger.verbose("MicrosoftStsAccountCredentialAdapter", "Creating Account");
        AccountRecord accountRecord = new AccountRecord(microsoftStsOAuth2Strategy.createAccount(microsoftStsTokenResponse));
        this.mAccountCredentialAdapter.getClass();
        AccessTokenRecord accessTokenRecordCreateAccessToken = MicrosoftStsAccountCredentialAdapter.createAccessToken(microsoftStsOAuth2Strategy, microsoftStsAuthorizationRequest, microsoftStsTokenResponse);
        this.mAccountCredentialAdapter.getClass();
        RefreshTokenRecord refreshTokenRecordCreateRefreshToken = MicrosoftStsAccountCredentialAdapter.createRefreshToken(microsoftStsOAuth2Strategy, microsoftStsAuthorizationRequest, microsoftStsTokenResponse);
        this.mAccountCredentialAdapter.getClass();
        IdTokenRecord idTokenRecordCreateIdToken = MicrosoftStsAccountCredentialAdapter.createIdToken(microsoftStsOAuth2Strategy, microsoftStsAuthorizationRequest, microsoftStsTokenResponse);
        validateCacheArtifacts(accountRecord, accessTokenRecordCreateAccessToken, refreshTokenRecordCreateRefreshToken, idTokenRecordCreateIdToken);
        this.mAccountCredentialCache.saveAccount(new AccountRecord[]{accountRecord}[0]);
        synchronized (sCacheLock) {
            saveCredentialsInternal(accessTokenRecordCreateAccessToken, refreshTokenRecordCreateRefreshToken, idTokenRecordCreateIdToken);
            removeAllRefreshTokensExcept(accountRecord, refreshTokenRecordCreateRefreshToken);
        }
        CacheRecord.CacheRecordBuilder cacheRecordBuilderBuilder = CacheRecord.builder();
        cacheRecordBuilderBuilder.account(accountRecord);
        cacheRecordBuilderBuilder.accessToken(accessTokenRecordCreateAccessToken);
        cacheRecordBuilderBuilder.refreshToken(refreshTokenRecordCreateRefreshToken);
        setToCacheRecord(cacheRecordBuilderBuilder, idTokenRecordCreateIdToken);
        return cacheRecordBuilderBuilder.build();
    }

    public final ArrayList saveAndLoadAggregatedAccountData(OAuth2Strategy oAuth2Strategy, MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest, TokenResponse tokenResponse) throws ClientException {
        ArrayList arrayListMergeCacheRecordWithOtherTenantCacheRecords;
        if (oAuth2Strategy == null) {
            f6.n("oAuth2Strategy is marked non-null but is null");
            return null;
        }
        if (microsoftStsAuthorizationRequest == null) {
            f6.n("request is marked non-null but is null");
            return null;
        }
        if (tokenResponse == null) {
            f6.n("response is marked non-null but is null");
            return null;
        }
        synchronized (this) {
            arrayListMergeCacheRecordWithOtherTenantCacheRecords = mergeCacheRecordWithOtherTenantCacheRecords(save(oAuth2Strategy, microsoftStsAuthorizationRequest, tokenResponse));
        }
        return arrayListMergeCacheRecordWithOtherTenantCacheRecords;
    }

    public final void saveCredentialsInternal(Credential... credentialArr) {
        CredentialType credentialType;
        for (Credential credential : credentialArr) {
            if (credential != null) {
                boolean z = credential instanceof AccessTokenRecord;
                AbstractAccountCredentialCache abstractAccountCredentialCache = this.mAccountCredentialCache;
                if (z) {
                    AccessTokenRecord accessTokenRecord = (AccessTokenRecord) credential;
                    System.nanoTime();
                    String homeAccountId = accessTokenRecord.getHomeAccountId();
                    String environment = accessTokenRecord.getEnvironment();
                    String credentialType2 = accessTokenRecord.getCredentialType();
                    CredentialType[] credentialTypeArrValues = CredentialType.values();
                    int length = credentialTypeArrValues.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            credentialType = null;
                            break;
                        }
                        credentialType = credentialTypeArrValues[i];
                        if (credentialType.name().equalsIgnoreCase(credentialType2)) {
                            break;
                        } else {
                            i++;
                        }
                    }
                    ArrayList<Credential> credentialsFilteredBy = this.mAccountCredentialCache.getCredentialsFilteredBy(homeAccountId, environment, credentialType, accessTokenRecord.getClientId(), accessTokenRecord.getApplicationIdentifier(), accessTokenRecord.getMamEnrollmentIdentifier(), accessTokenRecord.getRealm(), accessTokenRecord.getAccessTokenType(), accessTokenRecord.getRequestedClaims(), abstractAccountCredentialCache.getCredentials());
                    Logger.verbose("MsalOAuth2TokenCache:deleteAccessTokensWithIntersectingScopes", "Inspecting " + credentialsFilteredBy.size() + " accessToken[s].");
                    for (Credential credential2 : credentialsFilteredBy) {
                        HashSet hashSetScopesAsSet = scopesAsSet(accessTokenRecord);
                        HashSet<String> hashSetScopesAsSet2 = scopesAsSet((AccessTokenRecord) credential2);
                        Set<String> set = AuthenticationConstants.DEFAULT_SCOPES;
                        hashSetScopesAsSet.removeAll(set);
                        hashSetScopesAsSet2.removeAll(set);
                        for (String str : hashSetScopesAsSet2) {
                            if (hashSetScopesAsSet.contains(str)) {
                                Logger.info("MsalOAuth2TokenCache:scopesIntersect", "Scopes intersect.");
                                Logger.infoPII("MsalOAuth2TokenCache:scopesIntersect", hashSetScopesAsSet.toString() + " contains [" + str + "]");
                                StringBuilder sb = new StringBuilder("Removing credential: ");
                                sb.append(credential2);
                                Logger.infoPII("MsalOAuth2TokenCache:deleteAccessTokensWithIntersectingScopes", sb.toString());
                                abstractAccountCredentialCache.removeCredential(credential2);
                                break;
                            }
                        }
                    }
                    System.nanoTime();
                    SpanExtension.current().getClass();
                }
                abstractAccountCredentialCache.saveCredential(credential);
            }
        }
    }

    public final void setSingleSignOnState(GenericAccount genericaccount, GenericRefreshToken genericrefreshtoken) throws ClientException {
        Logger.info("MsalOAuth2TokenCache:setSingleSignOnState", "Set SSO state called.");
        this.mAccountCredentialAdapter.getClass();
        AccountRecord accountRecord = new AccountRecord(genericaccount);
        this.mAccountCredentialAdapter.getClass();
        if (genericrefreshtoken == null) {
            f6.n("refreshTokenIn is marked non-null but is null");
            return;
        }
        RefreshTokenRecord refreshTokenRecord = new RefreshTokenRecord();
        refreshTokenRecord.setHomeAccountId(genericrefreshtoken.getHomeAccountId());
        refreshTokenRecord.setEnvironment(genericrefreshtoken.getEnvironment());
        CredentialType credentialType = CredentialType.RefreshToken;
        refreshTokenRecord.setCredentialType("RefreshToken");
        refreshTokenRecord.setClientId(genericrefreshtoken.getClientId());
        refreshTokenRecord.setSecret(genericrefreshtoken.getSecret());
        refreshTokenRecord.setTarget(genericrefreshtoken.getTarget());
        refreshTokenRecord.setCachedAt(String.valueOf(System.currentTimeMillis() / 1000));
        refreshTokenRecord.setFamilyId(genericrefreshtoken.getFamilyId());
        this.mAccountCredentialAdapter.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        IDToken iDToken = genericaccount.getIDToken();
        IdTokenRecord idTokenRecord = new IdTokenRecord();
        idTokenRecord.setHomeAccountId(genericrefreshtoken.getHomeAccountId());
        idTokenRecord.setEnvironment(genericrefreshtoken.getEnvironment());
        idTokenRecord.setRealm(genericaccount.getRealm());
        idTokenRecord.setCredentialType("IdToken");
        idTokenRecord.setClientId(genericrefreshtoken.getClientId());
        idTokenRecord.setSecret(iDToken.getRawIDToken());
        idTokenRecord.setCachedAt(String.valueOf(jCurrentTimeMillis));
        String str = (String) iDToken.getTokenClaims().get("iss");
        Logger.verbosePII("SchemaUtil:getAuthority", "Issuer: " + str);
        if (str == null) {
            Logger.warn("SchemaUtil:getAuthority", "Environment was null or could not be parsed.");
        }
        idTokenRecord.setAuthority(str);
        validateCacheArtifacts(accountRecord, null, refreshTokenRecord, idTokenRecord);
        this.mAccountCredentialCache.saveAccount(new AccountRecord[]{accountRecord}[0]);
        synchronized (sCacheLock) {
            saveCredentialsInternal(idTokenRecord, refreshTokenRecord);
            removeAllRefreshTokensExcept(accountRecord, refreshTokenRecord);
        }
    }

    public final List<ICacheRecord> getAccountsWithAggregatedAccountData(String str, String str2, String str3) {
        if (str2 == null) {
            f6.n("clientId is marked non-null but is null");
            return null;
        }
        if (str3 != null) {
            ArrayList arrayList = new ArrayList();
            AccountRecord account = getAccount(str, str2, str3, null);
            if (account != null) {
                Iterator<AccountRecord> it = getAllTenantAccountsForAccountByClientId(str2, account).iterator();
                while (it.hasNext()) {
                    arrayList.add(getSparseCacheRecordForAccount(str2, it.next()));
                }
            }
            return Collections.unmodifiableList(arrayList);
        }
        f6.n("homeAccountId is marked non-null but is null");
        return null;
    }
}
