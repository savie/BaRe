package com.microsoft.identity.common.java.authorities;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AnyPersonalAccount extends AzureActiveDirectoryAudience {
    public static final String ANY_PERSONAL_ACCOUNT_TENANT_ID = "consumers";

    public AnyPersonalAccount(String str) {
        setTenantId("consumers");
        setCloudUrl(str);
    }

    public AnyPersonalAccount() {
        setTenantId("consumers");
    }
}
