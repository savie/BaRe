package com.microsoft.identity.common.internal.migration;

import com.microsoft.identity.common.adal.internal.cache.ADALTokenCacheItem;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.microsoft.identity.common.java.controllers.BaseController;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.foci.FociQueryUtilities;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAccount;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Configuration;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsRefreshToken;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsTokenResponse;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2StrategyParameters;
import com.microsoft.identity.common.java.providers.oauth2.TokenErrorResponse;
import com.microsoft.identity.common.java.providers.oauth2.TokenResult;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.f6;
import java.net.URL;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class TokenCacheItemMigrationAdapter {
    public static final ExecutorService sBackgroundExecutor = Executors.newCachedThreadPool();

    public static void logTokenResultError(UUID uuid, TokenResult tokenResult) {
        TokenErrorResponse errorResponse = tokenResult.getErrorResponse();
        Logger.warn("TokenCacheItemMigrationAdapter", uuid.toString(), "Status code: [" + errorResponse.getStatusCode() + "]");
        Logger.warn("TokenCacheItemMigrationAdapter", uuid.toString(), "Error description: [" + errorResponse.getErrorDescription() + "]");
    }

    public static ArrayList migrateTokens(HashMap map, Collection collection) {
        ADALTokenCacheItem aDALTokenCacheItem;
        if (map == null) {
            f6.n("redirects is marked non-null but is null");
            return null;
        }
        if (collection == null) {
            f6.n("cacheItems is marked non-null but is null");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            AzureActiveDirectory.ensureCloudDiscoveryForAuthority(null);
            ArrayList<ADALTokenCacheItem> arrayList2 = new ArrayList();
            HashMap map2 = new HashMap();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                ADALTokenCacheItem aDALTokenCacheItem2 = (ADALTokenCacheItem) it.next();
                if (aDALTokenCacheItem2.getResource() == null) {
                    Logger.warn("TokenCacheItemMigrationAdapter", "Skipping resourceless token.");
                } else {
                    if (map2.get(aDALTokenCacheItem2.getRefreshToken()) == null) {
                        map2.put(aDALTokenCacheItem2.getRefreshToken(), aDALTokenCacheItem2);
                    }
                    if (map2.get(aDALTokenCacheItem2.getRefreshToken()) != null && aDALTokenCacheItem2.getAuthority().contains("/common")) {
                        map2.put(aDALTokenCacheItem2.getRefreshToken(), aDALTokenCacheItem2);
                    }
                }
            }
            arrayList2.addAll(map2.values());
            Logger.verbose("TokenCacheItemMigrationAdapter:splitTokensByClientId", "Splitting [" + arrayList2.size() + "] cache items.");
            HashMap map3 = new HashMap();
            for (ADALTokenCacheItem aDALTokenCacheItem3 : arrayList2) {
                if (map3.get(aDALTokenCacheItem3.getClientId()) == null) {
                    map3.put(aDALTokenCacheItem3.getClientId(), new ArrayList());
                }
                ((List) map3.get(aDALTokenCacheItem3.getClientId())).add(aDALTokenCacheItem3);
            }
            HashMap map4 = new HashMap();
            for (Map.Entry entry : map3.entrySet()) {
                String str = (String) entry.getKey();
                List list = (List) entry.getValue();
                if (list == null) {
                    f6.n("cacheItems is marked non-null but is null");
                    return null;
                }
                Iterator it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        aDALTokenCacheItem = null;
                        break;
                    }
                    aDALTokenCacheItem = (ADALTokenCacheItem) it2.next();
                    if (!StringUtil.isNullOrEmpty(aDALTokenCacheItem.getRefreshToken()) && !StringUtil.isNullOrEmpty(aDALTokenCacheItem.getFamilyClientId())) {
                        Logger.verbose("TokenCacheItemMigrationAdapter:findFrt", "Frt found.");
                        break;
                    }
                }
                if (aDALTokenCacheItem == null) {
                    Logger.verbose("TokenCacheItemMigrationAdapter:preferentiallySelectTokens", "FRT was null. Try MRRT.");
                    Iterator it3 = list.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            aDALTokenCacheItem = null;
                            break;
                        }
                        ADALTokenCacheItem aDALTokenCacheItem4 = (ADALTokenCacheItem) it3.next();
                        if (!StringUtil.isNullOrEmpty(aDALTokenCacheItem4.getRefreshToken()) && aDALTokenCacheItem4.getIsMultiResourceRefreshToken()) {
                            Logger.verbose("TokenCacheItemMigrationAdapter:findMrrt", "Mrrt found.");
                            aDALTokenCacheItem = aDALTokenCacheItem4;
                            break;
                        }
                    }
                }
                if (aDALTokenCacheItem == null) {
                    Logger.verbose("TokenCacheItemMigrationAdapter:preferentiallySelectTokens", "MRRT was null. Try RT.");
                    Iterator it4 = list.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            aDALTokenCacheItem = null;
                            break;
                        }
                        aDALTokenCacheItem = (ADALTokenCacheItem) it4.next();
                        if (!StringUtil.isNullOrEmpty(aDALTokenCacheItem.getRefreshToken())) {
                            Logger.verbose("TokenCacheItemMigrationAdapter:findRt", "RT found.");
                            break;
                        }
                    }
                }
                if (aDALTokenCacheItem != null) {
                    if (map4.get(str) == null) {
                        map4.put(str, new ArrayList());
                    }
                    ((List) map4.get(str)).add(aDALTokenCacheItem);
                } else {
                    Logger.warn("TokenCacheItemMigrationAdapter:preferentiallySelectTokens", "Refresh token could not be located.");
                }
            }
            final ArrayList arrayList3 = new ArrayList();
            Iterator it5 = map4.values().iterator();
            while (it5.hasNext()) {
                arrayList3.addAll((List) it5.next());
            }
            final ArrayList arrayList4 = new ArrayList();
            int size = arrayList3.size();
            final CountDownLatch countDownLatch = new CountDownLatch(size);
            final int i = 0;
            while (i < size) {
                final HashMap map5 = map;
                sBackgroundExecutor.submit(new Runnable() { // from class: com.microsoft.identity.common.internal.migration.TokenCacheItemMigrationAdapter.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        String delimitedDefaultScopeString;
                        ADALTokenCacheItem aDALTokenCacheItem5 = (ADALTokenCacheItem) arrayList3.get(i);
                        String str2 = (String) map5.get(aDALTokenCacheItem5.getClientId());
                        AbstractMap.SimpleEntry simpleEntry = null;
                        if (!StringUtil.isNullOrEmpty(str2)) {
                            try {
                                String authority = aDALTokenCacheItem5.getAuthority();
                                String clientId = aDALTokenCacheItem5.getClientId();
                                String refreshToken = aDALTokenCacheItem5.getRefreshToken();
                                MicrosoftStsOAuth2Configuration microsoftStsOAuth2Configuration = new MicrosoftStsOAuth2Configuration();
                                microsoftStsOAuth2Configuration.setAuthorityUrl(new URL(authority));
                                UUID uuidRandomUUID = UUID.randomUUID();
                                if (StringUtil.isNullOrEmpty(aDALTokenCacheItem5.getResource())) {
                                    delimitedDefaultScopeString = BaseController.getDelimitedDefaultScopeString();
                                } else {
                                    String resource = aDALTokenCacheItem5.getResource();
                                    if (resource == null) {
                                        throw new NullPointerException("v1Resource is marked non-null but is null");
                                    }
                                    delimitedDefaultScopeString = resource.concat("/.default") + TokenAuthenticationScheme.SCHEME_DELIMITER + BaseController.getDelimitedDefaultScopeString();
                                }
                                MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy = new MicrosoftStsOAuth2Strategy(microsoftStsOAuth2Configuration, new OAuth2StrategyParameters.OAuth2StrategyParametersBuilder().build());
                                TokenResult tokenResultRequestToken = microsoftStsOAuth2Strategy.requestToken(FociQueryUtilities.createTokenRequest(clientId, delimitedDefaultScopeString, refreshToken, str2, microsoftStsOAuth2Strategy, uuidRandomUUID));
                                if (tokenResultRequestToken.getSuccess()) {
                                    MicrosoftStsTokenResponse microsoftStsTokenResponse = (MicrosoftStsTokenResponse) tokenResultRequestToken.getTokenResponse();
                                    microsoftStsTokenResponse.setClientId(clientId);
                                    MicrosoftStsAccount microsoftStsAccountCreateAccount = microsoftStsOAuth2Strategy.createAccount(microsoftStsTokenResponse);
                                    MicrosoftStsRefreshToken microsoftStsRefreshToken = new MicrosoftStsRefreshToken(microsoftStsTokenResponse);
                                    microsoftStsRefreshToken.setEnvironment(AzureActiveDirectory.getAzureActiveDirectoryCloud(new URL(authority)).getPreferredCacheHostName());
                                    simpleEntry = new AbstractMap.SimpleEntry(microsoftStsAccountCreateAccount, microsoftStsRefreshToken);
                                } else {
                                    Logger.warn("TokenCacheItemMigrationAdapter", uuidRandomUUID.toString(), "TokenRequest was unsuccessful.");
                                    if (tokenResultRequestToken.getErrorResponse() != null) {
                                        TokenCacheItemMigrationAdapter.logTokenResultError(uuidRandomUUID, tokenResultRequestToken);
                                    }
                                }
                            } catch (Exception e) {
                                Logger.errorPII(e, "TokenCacheItemMigrationAdapter", "Failed to request new refresh token...");
                            }
                        }
                        if (simpleEntry != null) {
                            arrayList4.add(simpleEntry);
                        }
                        countDownLatch.countDown();
                    }
                });
                i++;
                map = map5;
            }
            try {
                countDownLatch.await();
            } catch (InterruptedException e) {
                Logger.error("TokenCacheItemMigrationAdapter", "Interrupted while requesting tokens...", e);
                Thread.currentThread().interrupt();
            }
            arrayList.addAll(arrayList4);
            return arrayList;
        } catch (ClientException e2) {
            int i2 = com.microsoft.identity.common.logging.Logger.a;
            Logger.error("AdalMigrationAdapter:loadCloudDiscoveryMetadata", "Failed to load instance discovery metadata", e2);
            return arrayList;
        }
    }
}
