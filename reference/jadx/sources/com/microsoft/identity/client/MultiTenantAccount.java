package com.microsoft.identity.client;

import com.microsoft.identity.common.java.providers.oauth2.IDToken;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MultiTenantAccount extends Account {
    private HashMap mTenantProfiles;

    public MultiTenantAccount(String str, IDToken iDToken) {
        super(str, iDToken);
        this.mTenantProfiles = new HashMap();
    }

    public final Map<String, TenantProfile> getTenantProfiles() {
        return Collections.unmodifiableMap(this.mTenantProfiles);
    }

    public final void setTenantProfiles(HashMap map) {
        this.mTenantProfiles = map;
    }
}
