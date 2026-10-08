package com.microsoft.identity.client;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a;
import com.microsoft.identity.client.internal.configuration.LogLevelDeserializer;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAudienceDeserializer;
import com.microsoft.identity.common.java.authorities.Authority;
import com.microsoft.identity.common.java.authorities.AuthorityDeserializer;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryAudience;
import com.microsoft.identity.common.java.cache.ICacheRecord;
import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.providers.oauth2.IDToken;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.l0;
import defpackage.t14;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AccountAdapter {
    private static final AnonymousClass1 guestAccountsWithNoHomeTenantAccountFilter = new AnonymousClass1();

    /* JADX INFO: renamed from: com.microsoft.identity.client.AccountAdapter$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class GuestAccountFilter {
        public final ArrayList filter(List list) {
            boolean z;
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ICacheRecord iCacheRecord = (ICacheRecord) it.next();
                String homeAccountId = iCacheRecord.getAccount().getHomeAccountId();
                String localAccountId = iCacheRecord.getAccount().getLocalAccountId();
                boolean z2 = false;
                if (homeAccountId == null) {
                    int i = com.microsoft.identity.common.logging.Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.warn("AccountAdapter:GuestAccountFilter", "Home account ID is null for entry.");
                    z = false;
                } else {
                    z = true;
                }
                if (localAccountId == null) {
                    int i2 = com.microsoft.identity.common.logging.Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.warn("AccountAdapter:GuestAccountFilter", "Local account ID is null for entry.");
                } else {
                    z2 = z;
                }
                if (z2 && !homeAccountId.contains(localAccountId)) {
                    arrayList.add(iCacheRecord);
                }
            }
            return arrayList;
        }
    }

    public static Object access$000(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() != 0) {
            return creator.createFromParcel(parcel);
        }
        return null;
    }

    public static void access$100(Parcel parcel, Bundle bundle) {
        if (bundle == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
        }
    }

    public static ArrayList adapt(List list) {
        ArrayList<ICacheRecord> arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ICacheRecord iCacheRecord = (ICacheRecord) it.next();
            String homeAccountId = iCacheRecord.getAccount().getHomeAccountId();
            String localAccountId = iCacheRecord.getAccount().getLocalAccountId();
            if (localAccountId != null && homeAccountId.contains(localAccountId)) {
                arrayList.add(iCacheRecord);
            }
        }
        ArrayList<ICacheRecord> arrayListFilter = new GuestAccountFilter().filter(list);
        ArrayList<ICacheRecord> arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ICacheRecord iCacheRecord2 = (ICacheRecord) it2.next();
            String homeAccountId2 = iCacheRecord2.getAccount().getHomeAccountId();
            String localAccountId2 = iCacheRecord2.getAccount().getLocalAccountId();
            if (localAccountId2 != null && homeAccountId2.contains(localAccountId2)) {
                arrayList3.add(iCacheRecord2);
            }
        }
        for (ICacheRecord iCacheRecord3 : new GuestAccountFilter().filter(list)) {
            if (!new ArrayList<String>(arrayList3) { // from class: com.microsoft.identity.client.AccountAdapter.1.1
                final /* synthetic */ List val$homeRecords;

                {
                    this.val$homeRecords = arrayList3;
                    Iterator it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        add(((ICacheRecord) it3.next()).getAccount().getHomeAccountId());
                    }
                }
            }.contains(iCacheRecord3.getAccount().getHomeAccountId())) {
                arrayList2.add(iCacheRecord3);
            }
        }
        arrayListFilter.removeAll(arrayList2);
        ArrayList<Account> arrayList4 = new ArrayList();
        for (ICacheRecord iCacheRecord4 : arrayList) {
            MultiTenantAccount multiTenantAccount = new MultiTenantAccount(iCacheRecord4.getAccount().getClientInfo(), getIdToken(iCacheRecord4));
            multiTenantAccount.setHomeAccountId(iCacheRecord4.getAccount().getHomeAccountId());
            multiTenantAccount.setTenantId((String) StringUtil.getTenantInfo(iCacheRecord4.getAccount().getHomeAccountId()).getValue());
            multiTenantAccount.setEnvironment(iCacheRecord4.getAccount().getEnvironment());
            arrayList4.add(multiTenantAccount);
        }
        for (Account account : arrayList4) {
            HashMap map = new HashMap();
            for (ICacheRecord iCacheRecord5 : arrayListFilter) {
                if (iCacheRecord5.getAccount().getHomeAccountId().contains(account.getId())) {
                    TenantProfile tenantProfile = new TenantProfile(null, getIdToken(iCacheRecord5));
                    tenantProfile.setEnvironment(iCacheRecord5.getAccount().getEnvironment());
                    map.put(iCacheRecord5.getAccount().getRealm(), tenantProfile);
                }
            }
            ((MultiTenantAccount) account).setTenantProfiles(map);
        }
        HashMap map2 = new HashMap();
        for (ICacheRecord iCacheRecord6 : arrayList2) {
            String homeAccountId3 = iCacheRecord6.getAccount().getHomeAccountId();
            if (map2.get(homeAccountId3) == null) {
                map2.put(homeAccountId3, new ArrayList());
            }
            ((List) map2.get(homeAccountId3)).add(iCacheRecord6);
        }
        ArrayList arrayList5 = new ArrayList();
        for (Map.Entry entry : map2.entrySet()) {
            MultiTenantAccount multiTenantAccount2 = new MultiTenantAccount(null, null);
            multiTenantAccount2.setId((String) StringUtil.getTenantInfo((String) entry.getKey()).getKey());
            multiTenantAccount2.setTenantId((String) StringUtil.getTenantInfo((String) entry.getKey()).getValue());
            multiTenantAccount2.setEnvironment(((ICacheRecord) ((List) entry.getValue()).get(0)).getAccount().getEnvironment());
            HashMap map3 = new HashMap();
            for (ICacheRecord iCacheRecord7 : (List) entry.getValue()) {
                map3.put(iCacheRecord7.getAccount().getRealm(), new TenantProfile(null, getIdToken(iCacheRecord7)));
            }
            multiTenantAccount2.setTenantProfiles(map3);
            arrayList5.add(multiTenantAccount2);
        }
        arrayList4.addAll(arrayList5);
        return arrayList4;
    }

    private static IDToken getIdToken(ICacheRecord iCacheRecord) {
        String secret;
        if (iCacheRecord.getIdToken() == null) {
            if (iCacheRecord.getV1IdToken() != null) {
                secret = iCacheRecord.getV1IdToken().getSecret();
            }
            return null;
        }
        secret = iCacheRecord.getIdToken().getSecret();
        try {
            return new IDToken(secret);
        } catch (ServiceException unused) {
            l0.e("Failed to restore IdToken");
        }
    }

    public static PublicClientApplicationConfiguration loadConfiguration(Context context, int i) {
        InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i);
        boolean z = i == R.raw.msal_default_config;
        try {
            try {
                byte[] bArr = new byte[inputStreamOpenRawResource.available()];
                inputStreamOpenRawResource.read(bArr);
                try {
                    inputStreamOpenRawResource.close();
                } catch (IOException unused) {
                    if (z) {
                        int i2 = com.microsoft.identity.common.logging.Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.warn("PublicClientApplicationConfigurationFactory:loadConfiguration", "Unable to close default configuration file. This can cause memory leak.");
                    } else {
                        int i3 = com.microsoft.identity.common.logging.Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.warn("PublicClientApplicationConfigurationFactory:loadConfiguration", "Unable to close provided configuration file. This can cause memory leak.");
                    }
                }
                String str = new String(bArr);
                t14 t14Var = new t14();
                t14Var.c(new AuthorityDeserializer(), Authority.class);
                t14Var.c(new AzureActiveDirectoryAudienceDeserializer(), AzureActiveDirectoryAudience.class);
                t14Var.c(new LogLevelDeserializer(), Logger.LogLevel.class);
                try {
                    return (PublicClientApplicationConfiguration) new a(t14Var).c(str, PublicClientApplicationConfiguration.class);
                } catch (Exception e) {
                    if (e instanceof InterruptedException) {
                        Thread.currentThread().interrupt();
                    }
                    throw new IllegalArgumentException("Error while processing configuration", e);
                }
            } catch (IOException e2) {
                if (z) {
                    throw new IllegalStateException("Unable to open default configuration file.", e2);
                }
                throw new IllegalArgumentException("Unable to open provided configuration file.", e2);
            }
        } catch (Throwable th) {
            try {
                inputStreamOpenRawResource.close();
            } catch (IOException unused2) {
                if (z) {
                    int i4 = com.microsoft.identity.common.logging.Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.warn("PublicClientApplicationConfigurationFactory:loadConfiguration", "Unable to close default configuration file. This can cause memory leak.");
                } else {
                    int i5 = com.microsoft.identity.common.logging.Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.warn("PublicClientApplicationConfigurationFactory:loadConfiguration", "Unable to close provided configuration file. This can cause memory leak.");
                }
            }
            throw th;
        }
    }
}
