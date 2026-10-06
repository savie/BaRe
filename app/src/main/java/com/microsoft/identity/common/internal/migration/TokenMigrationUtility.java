package com.microsoft.identity.common.internal.migration;

import com.microsoft.identity.common.java.cache.MsalOAuth2TokenCache;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.providers.microsoft.MicrosoftRefreshToken;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAccount;
import com.microsoft.identity.common.logging.Logger;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class TokenMigrationUtility<T extends MicrosoftStsAccount, U extends MicrosoftRefreshToken> {
    private static final ExecutorService sBackgroundExecutor = Executors.newCachedThreadPool();

    public static void _import(final AdalMigrationAdapter adalMigrationAdapter, final Map map, final MsalOAuth2TokenCache msalOAuth2TokenCache, final TokenMigrationCallback tokenMigrationCallback) {
        sBackgroundExecutor.execute(new Runnable() { // from class: com.microsoft.identity.common.internal.migration.TokenMigrationUtility.1
            @Override // java.lang.Runnable
            public final void run() {
                for (Map.Entry entry : adalMigrationAdapter.adapt(map)) {
                    try {
                        msalOAuth2TokenCache.setSingleSignOnState((MicrosoftStsAccount) entry.getKey(), (MicrosoftRefreshToken) entry.getValue());
                    } catch (ClientException unused) {
                        int i = Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.warn("TokenMigrationUtility:_import", "Failed to save account/refresh token . Skipping ");
                    }
                }
                tokenMigrationCallback.onMigrationFinished();
            }
        });
    }
}
