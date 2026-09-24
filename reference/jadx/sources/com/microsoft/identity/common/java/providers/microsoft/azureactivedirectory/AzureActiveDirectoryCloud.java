package com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory;

import defpackage.y77;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AzureActiveDirectoryCloud {
    public static final AzureActiveDirectoryCloud BLEU = new AzureActiveDirectoryCloud("login.sovcloud-identity.fr", "login.sovcloud-identity.fr", Collections.singletonList("login.sovcloud-identity.fr"));
    public static final AzureActiveDirectoryCloud DELOS = new AzureActiveDirectoryCloud("login.sovcloud-identity.de", "login.sovcloud-identity.de", Collections.singletonList("login.sovcloud-identity.de"));
    public static final AzureActiveDirectoryCloud GOVSG = new AzureActiveDirectoryCloud("login.sovcloud-identity.sg", "login.sovcloud-identity.sg", Collections.singletonList("login.sovcloud-identity.sg"));

    @y77("aliases")
    private List<String> mCloudHostAliases;
    private boolean mIsValidated;

    @y77("preferred_cache")
    private final String mPreferredCacheHostName;

    @y77("preferred_network")
    private final String mPreferredNetworkHostName;

    public AzureActiveDirectoryCloud(String str, String str2, List<String> list) {
        this.mPreferredNetworkHostName = str;
        this.mPreferredCacheHostName = str2;
        ArrayList arrayList = new ArrayList();
        this.mCloudHostAliases = arrayList;
        arrayList.addAll(list);
        this.mIsValidated = true;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AzureActiveDirectoryCloud)) {
            return false;
        }
        AzureActiveDirectoryCloud azureActiveDirectoryCloud = (AzureActiveDirectoryCloud) obj;
        String str = this.mPreferredNetworkHostName;
        String str2 = azureActiveDirectoryCloud.mPreferredNetworkHostName;
        if (str != null ? !str.equals(str2) : str2 != null) {
            return false;
        }
        String str3 = this.mPreferredCacheHostName;
        String str4 = azureActiveDirectoryCloud.mPreferredCacheHostName;
        return str3 != null ? str3.equals(str4) : str4 == null;
    }

    public final List<String> getHostAliases() {
        return this.mCloudHostAliases;
    }

    public final String getPreferredCacheHostName() {
        return this.mPreferredCacheHostName;
    }

    public final String getPreferredNetworkHostName() {
        return this.mPreferredNetworkHostName;
    }

    public final int hashCode() {
        String str = this.mPreferredNetworkHostName;
        int iHashCode = str == null ? 43 : str.hashCode();
        String str2 = this.mPreferredCacheHostName;
        return ((iHashCode + 59) * 59) + (str2 != null ? str2.hashCode() : 43);
    }

    public final boolean isValidated() {
        return this.mIsValidated;
    }

    public final void setIsValidated() {
        this.mIsValidated = true;
    }
}
