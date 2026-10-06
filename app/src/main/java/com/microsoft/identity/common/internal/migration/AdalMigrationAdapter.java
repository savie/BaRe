package com.microsoft.identity.common.internal.migration;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.a;
import com.microsoft.identity.common.adal.internal.cache.ADALTokenCacheItem;
import com.microsoft.identity.common.java.authorities.Authority;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.logging.Logger;
import defpackage.km4;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AdalMigrationAdapter {
    private static final Object sLock = new Object();
    private final Authority mAuthorityForInstanceDiscovery;
    private final HashMap mRedirectsMap;
    private final SharedPreferences mSharedPrefs;

    public AdalMigrationAdapter(Context context, HashMap map, Authority authority) {
        this.mSharedPrefs = context.getSharedPreferences("com.microsoft.identity.client.migration_status", 0);
        this.mRedirectsMap = map;
        this.mAuthorityForInstanceDiscovery = authority;
    }

    public static HashMap deserialize(Map map) {
        HashMap map2 = new HashMap();
        a aVar = new a();
        for (Map.Entry entry : map.entrySet()) {
            try {
                map2.put((String) entry.getKey(), (ADALTokenCacheItem) aVar.c((String) entry.getValue(), ADALTokenCacheItem.class));
            } catch (km4 unused) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("AdalMigrationAdapter:deserialize", "Failed to deserialize ADAL cache entry. Skipping.");
            }
        }
        return map2;
    }

    public final ArrayList adapt(Map map) {
        URL authorityURL;
        boolean z;
        ArrayList arrayList = new ArrayList();
        synchronized (sLock) {
            try {
                if (!getMigrationStatus()) {
                    Authority authority = this.mAuthorityForInstanceDiscovery;
                    if (authority != null) {
                        try {
                            int i = AzureActiveDirectory.a;
                            authorityURL = authority.getAuthorityURL();
                        } catch (ClientException e) {
                            int i2 = Logger.a;
                            com.microsoft.identity.common.java.logging.Logger.error("AdalMigrationAdapter:loadCloudDiscoveryMetadata", "Failed to load instance discovery metadata", e);
                            z = false;
                        }
                    } else {
                        authorityURL = null;
                    }
                    AzureActiveDirectory.ensureCloudDiscoveryForAuthority(authorityURL);
                    z = true;
                    if (z) {
                        arrayList.addAll(TokenCacheItemMigrationAdapter.migrateTokens(this.mRedirectsMap, deserialize(map).values()));
                        this.mSharedPrefs.edit().putBoolean("adal-migration-complete", true).commit();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    public final boolean getMigrationStatus() {
        return this.mSharedPrefs.getBoolean("adal-migration-complete", false);
    }
}
