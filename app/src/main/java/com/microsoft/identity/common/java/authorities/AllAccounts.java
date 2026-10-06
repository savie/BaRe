package com.microsoft.identity.common.java.authorities;

import defpackage.f6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AllAccounts extends AzureActiveDirectoryAudience {
    public static final String ALL_ACCOUNTS_TENANT_ID = "common";

    public AllAccounts(String str) {
        if (str == null) {
            f6.n("cloudUrl is marked non-null but is null");
            throw null;
        }
        setCloudUrl(str);
        setTenantId("common");
    }

    public AllAccounts() {
        setTenantId("common");
    }
}
