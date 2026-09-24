package com.microsoft.identity.common.java.cache;

import com.microsoft.identity.common.internal.util.AbstractSharedPrefNameValueStorage;
import com.microsoft.identity.common.java.dto.AccessTokenRecord;
import com.microsoft.identity.common.java.dto.AccountRecord;
import com.microsoft.identity.common.java.dto.Credential;
import com.microsoft.identity.common.java.dto.CredentialType;
import com.microsoft.identity.common.java.dto.IdTokenRecord;
import com.microsoft.identity.common.java.dto.RefreshTokenRecord;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.java.util.ported.Predicate;
import defpackage.c6;
import defpackage.f6;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SharedPreferencesAccountCredentialCache extends AbstractAccountCredentialCache {
    private final CacheKeyValueDelegate mCacheValueDelegate;
    public static final AccountRecord EMPTY_ACCOUNT = new AccountRecord();
    public static final AccessTokenRecord EMPTY_AT = new AccessTokenRecord();
    public static final RefreshTokenRecord EMPTY_RT = new RefreshTokenRecord();
    public static final IdTokenRecord EMPTY_ID = new IdTokenRecord();
    public static final String ACCOUNT_RECORD_DESERIALIZATION_FAILED = "Deserialization failed. Skipping AccountRecord";
    public static final String CREDENTIAL_DESERIALIZATION_FAILED = "Deserialization failed. Skipping Credential";

    /* JADX INFO: renamed from: com.microsoft.identity.common.java.cache.SharedPreferencesAccountCredentialCache$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements Predicate<String> {
        @Override // com.microsoft.identity.common.java.util.ported.Predicate
        public final boolean test(String str) {
            if (str == null) {
                f6.n("cacheKey is marked non-null but is null");
                return false;
            }
            Logger.verbosePII("SharedPreferencesAccountCredentialCache:isAccount", "Evaluating cache key: [" + str + "]");
            boolean z = SharedPreferencesAccountCredentialCache.getCredentialTypeForCredentialCacheKey(str) == null;
            Logger.verbose("SharedPreferencesAccountCredentialCache:isAccount", "isAccount? [" + z + "]");
            return z;
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.java.cache.SharedPreferencesAccountCredentialCache$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass2 implements Predicate<String> {
        @Override // com.microsoft.identity.common.java.util.ported.Predicate
        public final boolean test(String str) {
            if (str == null) {
                f6.n("cacheKey is marked non-null but is null");
                return false;
            }
            Logger.verbosePII("SharedPreferencesAccountCredentialCache:isCredential", "Evaluating cache key: [" + str + "]");
            boolean z = SharedPreferencesAccountCredentialCache.getCredentialTypeForCredentialCacheKey(str) != null;
            Logger.verbose("SharedPreferencesAccountCredentialCache:isCredential", "isCredential? [" + z + "]");
            return z;
        }
    }

    public SharedPreferencesAccountCredentialCache(CacheKeyValueDelegate cacheKeyValueDelegate, AbstractSharedPrefNameValueStorage abstractSharedPrefNameValueStorage) {
        super(abstractSharedPrefNameValueStorage);
        Logger.verbose("SharedPreferencesAccountCredentialCache", "Init: SharedPreferencesAccountCredentialCache");
        this.mCacheValueDelegate = cacheKeyValueDelegate;
    }

    public static CredentialType getCredentialTypeForCredentialCacheKey(String str) {
        if (str == null) {
            f6.n("cacheKey is marked non-null but is null");
            return null;
        }
        if (StringUtil.isNullOrEmpty(str)) {
            c6.f("Param [cacheKey] cannot be null.");
            return null;
        }
        HashSet<String> hashSet = new HashSet();
        Iterator<String> it = CredentialType.valueSet().iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().toLowerCase(Locale.US));
        }
        for (String str2 : hashSet) {
            if (str.contains("-" + str2 + "-")) {
                CredentialType credentialType = CredentialType.AccessToken;
                if ("AccessToken".equalsIgnoreCase(str2)) {
                    return credentialType;
                }
                CredentialType credentialType2 = CredentialType.AccessToken_With_AuthScheme;
                if ("AccessToken_With_AuthScheme".equalsIgnoreCase(str2)) {
                    return credentialType2;
                }
                CredentialType credentialType3 = CredentialType.RefreshToken;
                if ("RefreshToken".equalsIgnoreCase(str2)) {
                    return credentialType3;
                }
                CredentialType credentialType4 = CredentialType.IdToken;
                if ("IdToken".equalsIgnoreCase(str2)) {
                    return credentialType4;
                }
                CredentialType credentialType5 = CredentialType.V1IdToken;
                if ("V1IdToken".equalsIgnoreCase(str2)) {
                    return credentialType5;
                }
                CredentialType credentialType6 = CredentialType.PrimaryRefreshToken;
                if ("PrimaryRefreshToken".equalsIgnoreCase(str2)) {
                    return credentialType6;
                }
                Logger.warn("SharedPreferencesAccountCredentialCache:getCredentialTypeForCredentialCacheKey", "Unexpected credential type.");
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AccountRecord getAccount(String str) {
        if (str == null) {
            f6.n("cacheKey is marked non-null but is null");
            return null;
        }
        Logger.verbose("SharedPreferencesAccountCredentialCache", "Loading Account by key...");
        AbstractSharedPrefNameValueStorage abstractSharedPrefNameValueStorage = this.mSharedPreferencesFileManager;
        AccountRecord accountRecord = (AccountRecord) this.mCacheValueDelegate.fromCacheValue(AccountRecord.class, (String) abstractSharedPrefNameValueStorage.get(str));
        if (accountRecord == null) {
            Logger.warn("SharedPreferencesAccountCredentialCache", ACCOUNT_RECORD_DESERIALIZATION_FAILED);
            return accountRecord;
        }
        if (!EMPTY_ACCOUNT.equals(accountRecord)) {
            return accountRecord;
        }
        Logger.warn("SharedPreferencesAccountCredentialCache", "The returned Account was uninitialized. Removing...");
        abstractSharedPrefNameValueStorage.remove(str);
        return null;
    }

    @Override // com.microsoft.identity.common.java.cache.AbstractAccountCredentialCache
    public final ArrayList getAccounts() {
        Logger.verbose("SharedPreferencesAccountCredentialCache:getAccounts", "Loading Accounts...(no arg)");
        Logger.verbose("SharedPreferencesAccountCredentialCache", "Loading Accounts + keys...");
        Iterator<Map.Entry<String, T>> allFilteredByKey = this.mSharedPreferencesFileManager.getAllFilteredByKey(new AnonymousClass1());
        HashMap map = new HashMap();
        if (allFilteredByKey != 0) {
            while (allFilteredByKey.hasNext()) {
                Map.Entry entry = (Map.Entry) allFilteredByKey.next();
                String str = (String) entry.getKey();
                AccountRecord accountRecord = (AccountRecord) this.mCacheValueDelegate.fromCacheValue(AccountRecord.class, entry.getValue().toString());
                if (accountRecord == null) {
                    Logger.warn("SharedPreferencesAccountCredentialCache", ACCOUNT_RECORD_DESERIALIZATION_FAILED);
                } else {
                    map.put(str, accountRecord);
                }
            }
        }
        Logger.verbose("SharedPreferencesAccountCredentialCache", "Returning [" + map.size() + "] Accounts w/ keys...");
        ArrayList arrayList = new ArrayList(map.values());
        Logger.info("SharedPreferencesAccountCredentialCache:getAccounts", "Found [" + arrayList.size() + "] Accounts...");
        return arrayList;
    }

    @Override // com.microsoft.identity.common.java.cache.AbstractAccountCredentialCache
    public final ArrayList getAccountsFilteredBy(String str, String str2) {
        Logger.verbose("SharedPreferencesAccountCredentialCache:getAccountsFilteredBy", "Loading Accounts...");
        ArrayList<AccountRecord> accounts = getAccounts();
        boolean zIsNullOrEmpty = StringUtil.isNullOrEmpty(str);
        boolean zIsNullOrEmpty2 = StringUtil.isNullOrEmpty(str2);
        StringBuilder sb = new StringBuilder("Account lookup filtered by home_account_id? [");
        sb.append(!zIsNullOrEmpty);
        sb.append("]\nAccount lookup filtered by realm? [");
        sb.append(!true);
        sb.append("]");
        Logger.verbose("AbstractAccountCredentialCache", sb.toString());
        ArrayList arrayList = new ArrayList();
        for (AccountRecord accountRecord : accounts) {
            if (zIsNullOrEmpty || StringUtil.equalsIgnoreCaseTrimBoth(str, accountRecord.getHomeAccountId())) {
                if (zIsNullOrEmpty2 || StringUtil.equalsIgnoreCaseTrimBoth(str2, accountRecord.getEnvironment())) {
                    arrayList.add(accountRecord);
                }
            }
        }
        Logger.verbose("AbstractAccountCredentialCache", "Found [" + arrayList.size() + "] matching accounts");
        Logger.verbose("SharedPreferencesAccountCredentialCache:getAccountsFilteredBy", "Found [" + arrayList.size() + "] matching Accounts...");
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Credential getCredential(String str) {
        Credential credential;
        if (str == null) {
            f6.n("cacheKey is marked non-null but is null");
            return null;
        }
        Logger.verbose("SharedPreferencesAccountCredentialCache", "getCredential()");
        Logger.verbosePII("SharedPreferencesAccountCredentialCache", "Using cache key: [" + str + "]");
        CredentialType credentialTypeForCredentialCacheKey = getCredentialTypeForCredentialCacheKey(str);
        Class targetClassForCredentialType = credentialTypeForCredentialCacheKey != null ? AbstractAccountCredentialCache.getTargetClassForCredentialType(str, credentialTypeForCredentialCacheKey) : null;
        AbstractSharedPrefNameValueStorage abstractSharedPrefNameValueStorage = this.mSharedPreferencesFileManager;
        if (targetClassForCredentialType != null) {
            credential = (Credential) this.mCacheValueDelegate.fromCacheValue(targetClassForCredentialType, (String) abstractSharedPrefNameValueStorage.get(str));
        } else {
            credential = null;
        }
        if (credential == null) {
            Logger.warn("SharedPreferencesAccountCredentialCache", CREDENTIAL_DESERIALIZATION_FAILED);
            return credential;
        }
        if ((AccessTokenRecord.class != targetClassForCredentialType || !EMPTY_AT.equals(credential)) && ((RefreshTokenRecord.class != targetClassForCredentialType || !EMPTY_RT.equals(credential)) && (IdTokenRecord.class != targetClassForCredentialType || !EMPTY_ID.equals(credential)))) {
            return credential;
        }
        Logger.warn("SharedPreferencesAccountCredentialCache", "The returned Credential was uninitialized. Removing...");
        abstractSharedPrefNameValueStorage.remove(str);
        return null;
    }

    @Override // com.microsoft.identity.common.java.cache.AbstractAccountCredentialCache
    public final ArrayList getCredentials() {
        Logger.verbose("SharedPreferencesAccountCredentialCache:getCredentials", "Loading Credentials...");
        Logger.verbose("SharedPreferencesAccountCredentialCache:getCredentialsWithKeys", "Loading Credentials with keys...");
        HashMap map = new HashMap();
        Iterator<Map.Entry<String, T>> allFilteredByKey = this.mSharedPreferencesFileManager.getAllFilteredByKey(new AnonymousClass2());
        while (allFilteredByKey.hasNext()) {
            Map.Entry entry = (Map.Entry) allFilteredByKey.next();
            String str = (String) entry.getKey();
            String string = entry.getValue().toString();
            Class targetClassForCredentialType = null;
            if (str == null) {
                f6.n("cacheKey is marked non-null but is null");
                return null;
            }
            Logger.verbose("SharedPreferencesAccountCredentialCache:credentialClassForType", "Resolving class for key/CredentialType...");
            Logger.verbosePII("SharedPreferencesAccountCredentialCache:credentialClassForType", "Supplied key: [" + str + "]");
            CredentialType credentialTypeForCredentialCacheKey = getCredentialTypeForCredentialCacheKey(str);
            if (credentialTypeForCredentialCacheKey != null) {
                Logger.verbose("SharedPreferencesAccountCredentialCache:credentialClassForType", "CredentialType matched: [" + credentialTypeForCredentialCacheKey + "]");
                targetClassForCredentialType = AbstractAccountCredentialCache.getTargetClassForCredentialType(str, credentialTypeForCredentialCacheKey);
            }
            Credential credential = (Credential) this.mCacheValueDelegate.fromCacheValue(targetClassForCredentialType, string);
            if (credential == null) {
                Logger.warn("SharedPreferencesAccountCredentialCache:getCredentialsWithKeys", CREDENTIAL_DESERIALIZATION_FAILED);
            } else {
                map.put(str, credential);
            }
        }
        Logger.verbose("SharedPreferencesAccountCredentialCache:getCredentialsWithKeys", "Loaded [" + map.size() + "] Credentials...");
        return new ArrayList(map.values());
    }

    @Override // com.microsoft.identity.common.java.cache.AbstractAccountCredentialCache
    public final ArrayList getCredentialsFilteredBy(String str, String str2, CredentialType credentialType, String str3, String str4, String str5, String str6, String str7, String str8, List list) {
        if (list == null) {
            f6.n("inputCredentials is marked non-null but is null");
            return null;
        }
        Logger.verbose("SharedPreferencesAccountCredentialCache:getCredentialsFilteredBy", "getCredentialsFilteredBy()");
        ArrayList credentialsFilteredByInternal = AbstractAccountCredentialCache.getCredentialsFilteredByInternal(list, str, str2, credentialType, str3, str4, str5, str6, null, str7, str8, null);
        Logger.verbose("SharedPreferencesAccountCredentialCache:getCredentialsFilteredBy", "Found [" + credentialsFilteredByInternal.size() + "] matching Credentials...");
        return credentialsFilteredByInternal;
    }

    @Override // com.microsoft.identity.common.java.cache.AbstractAccountCredentialCache
    public final boolean removeAccount(AccountRecord accountRecord) {
        boolean z = false;
        if (accountRecord == null) {
            f6.n("accountToRemove is marked non-null but is null");
            return false;
        }
        Logger.info("SharedPreferencesAccountCredentialCache:removeAccount", "Removing Account...");
        this.mCacheValueDelegate.getClass();
        String strGenerateCacheKey = CacheKeyValueDelegate.generateCacheKey(accountRecord);
        AbstractSharedPrefNameValueStorage abstractSharedPrefNameValueStorage = this.mSharedPreferencesFileManager;
        if (abstractSharedPrefNameValueStorage.keySet().contains(strGenerateCacheKey)) {
            abstractSharedPrefNameValueStorage.remove(strGenerateCacheKey);
            z = true;
        }
        Logger.info("SharedPreferencesAccountCredentialCache:removeAccount", "Account was removed? [" + z + "]");
        return z;
    }

    @Override // com.microsoft.identity.common.java.cache.AbstractAccountCredentialCache
    public final boolean removeCredential(Credential credential) {
        boolean z = false;
        if (credential == null) {
            f6.n("credentialToRemove is marked non-null but is null");
            return false;
        }
        Logger.info("SharedPreferencesAccountCredentialCache:removeCredential", "Removing Credential...");
        this.mCacheValueDelegate.getClass();
        String strGenerateCacheKey = CacheKeyValueDelegate.generateCacheKey(credential);
        AbstractSharedPrefNameValueStorage abstractSharedPrefNameValueStorage = this.mSharedPreferencesFileManager;
        if (abstractSharedPrefNameValueStorage.keySet().contains(strGenerateCacheKey)) {
            abstractSharedPrefNameValueStorage.remove(strGenerateCacheKey);
            z = true;
        }
        Logger.info("SharedPreferencesAccountCredentialCache:removeCredential", "Credential was removed? [" + z + "]");
        return z;
    }

    @Override // com.microsoft.identity.common.java.cache.AbstractAccountCredentialCache
    public final synchronized void saveAccount(AccountRecord accountRecord) {
        try {
            if (accountRecord == null) {
                throw new NullPointerException("accountToSave is marked non-null but is null");
            }
            Logger.verbose("SharedPreferencesAccountCredentialCache", "Saving Account...");
            Logger.verbose("SharedPreferencesAccountCredentialCache", "Account type: [" + accountRecord.getClass().getSimpleName() + "]");
            this.mCacheValueDelegate.getClass();
            String strGenerateCacheKey = CacheKeyValueDelegate.generateCacheKey(accountRecord);
            Logger.verbosePII("SharedPreferencesAccountCredentialCache", "Generated cache key: [" + strGenerateCacheKey + "]");
            AccountRecord account = getAccount(strGenerateCacheKey);
            if (account != null) {
                accountRecord.mergeAdditionalFields(account);
            }
            this.mSharedPreferencesFileManager.put(this.mCacheValueDelegate.generateCacheValue(accountRecord), strGenerateCacheKey);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.microsoft.identity.common.java.cache.AbstractAccountCredentialCache
    public final synchronized void saveCredential(Credential credential) {
        try {
            Logger.verbose("SharedPreferencesAccountCredentialCache", "Saving credential...");
            this.mCacheValueDelegate.getClass();
            String strGenerateCacheKey = CacheKeyValueDelegate.generateCacheKey(credential);
            Logger.verbosePII("SharedPreferencesAccountCredentialCache", "Generated cache key: [" + strGenerateCacheKey + "]");
            Credential credential2 = getCredential(strGenerateCacheKey);
            if (credential2 != null) {
                credential.mergeAdditionalFields(credential2);
            }
            this.mSharedPreferencesFileManager.put(this.mCacheValueDelegate.generateCacheValue(credential), strGenerateCacheKey);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.microsoft.identity.common.java.cache.AbstractAccountCredentialCache
    public final ArrayList getCredentialsFilteredBy(String str, String str2, CredentialType credentialType, String str3, String str4, String str5, List list) {
        if (list != null) {
            Logger.verbose("SharedPreferencesAccountCredentialCache:getCredentialsFilteredBy", "getCredentialsFilteredBy() -- with input list");
            ArrayList credentialsFilteredByInternal = AbstractAccountCredentialCache.getCredentialsFilteredByInternal(list, str, str2, credentialType, str3, null, null, str4, str5, null, null, null);
            Logger.verbose("SharedPreferencesAccountCredentialCache:getCredentialsFilteredBy", "Found [" + credentialsFilteredByInternal.size() + "] matching Credentials...");
            return credentialsFilteredByInternal;
        }
        f6.n("inputCredentials is marked non-null but is null");
        return null;
    }

    @Override // com.microsoft.identity.common.java.cache.AbstractAccountCredentialCache
    public final ArrayList getCredentialsFilteredBy(String str, String str2, CredentialType credentialType, String str3, String str4) {
        Logger.verbose("SharedPreferencesAccountCredentialCache:getCredentialsFilteredBy", "getCredentialsFilteredBy()");
        ArrayList credentialsFilteredByInternal = AbstractAccountCredentialCache.getCredentialsFilteredByInternal(getCredentials(), str, str2, credentialType, str3, null, null, str4, null, null, null, null);
        Logger.verbose("SharedPreferencesAccountCredentialCache:getCredentialsFilteredBy", "Found [" + credentialsFilteredByInternal.size() + "] matching Credentials...");
        return credentialsFilteredByInternal;
    }

    @Override // com.microsoft.identity.common.java.cache.AbstractAccountCredentialCache
    public final ArrayList getCredentialsFilteredBy(String str, HashSet hashSet, String str2) {
        ArrayList credentials = getCredentials();
        ArrayList arrayList = new ArrayList();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            String str3 = str;
            arrayList.addAll(AbstractAccountCredentialCache.getCredentialsFilteredByInternal(credentials, null, str3, (CredentialType) it.next(), str2, null, null, null, null, null, null, null));
            str = str3;
        }
        return arrayList;
    }

    @Override // com.microsoft.identity.common.java.cache.AbstractAccountCredentialCache
    public final ArrayList getCredentialsFilteredBy(List list, String str, String str2, CredentialType credentialType, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(AbstractAccountCredentialCache.getCredentialsFilteredByInternal(list, str, str2, credentialType, str3, str4, str5, str6, str7, str8, null, str9));
            return arrayList;
        }
        f6.n("inputCredentials is marked non-null but is null");
        return null;
    }
}
