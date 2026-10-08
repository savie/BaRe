package com.microsoft.identity.common.java.authorities;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AccountsInOneOrganization extends AzureActiveDirectoryAudience {
    public AccountsInOneOrganization(String str, String str2) {
        setCloudUrl(str);
        setTenantId(str2);
    }

    public AccountsInOneOrganization(String str) {
        setTenantId(str);
    }

    public AccountsInOneOrganization() {
    }
}
