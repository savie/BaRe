package com.microsoft.identity.common.java.authorities;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.java.providers.oauth2.OpenIdProviderConfiguration;
import com.microsoft.identity.common.java.providers.oauth2.OpenIdProviderConfigurationClient;
import com.microsoft.identity.common.java.util.CommonURIBuilder;
import defpackage.f6;
import defpackage.q;
import defpackage.y77;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AzureActiveDirectoryAudience {
    public static final String ALL = "common";
    public static final String CONSUMERS = "consumers";
    public static final String MSA_MEGA_TENANT_ID = "9188040d-6c67-4c5b-b112-36a304b66dad";
    public static final String ORGANIZATIONS = "organizations";
    private static final String TAG = "AzureActiveDirectoryAudience";
    private String mCloudUrl;

    @y77("tenant_id")
    private String mTenantId;

    public static AzureActiveDirectoryAudience getAzureActiveDirectoryAudience(String str, String str2) {
        String lowerCase = str2.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        switch (lowerCase) {
            case "organizations":
                Logger.verbose(TAG + ":getAzureActiveDirectoryAudience", "Audience: AnyOrganizationalAccount");
                return new AnyOrganizationalAccount(str);
            case "common":
                Logger.verbose(TAG + ":getAzureActiveDirectoryAudience", "Audience: AllAccounts");
                return new AllAccounts(str);
            case "consumers":
                Logger.verbose(TAG + ":getAzureActiveDirectoryAudience", "Audience: AnyPersonalAccount");
                return new AnyPersonalAccount(str);
            default:
                Logger.verbose(TAG + ":getAzureActiveDirectoryAudience", "Audience: AccountsInOneOrganization");
                return new AccountsInOneOrganization(str, str2);
        }
    }

    public static String getTenantIdFromOpenIdProviderConfiguration(OpenIdProviderConfiguration openIdProviderConfiguration) throws ClientException {
        if (openIdProviderConfiguration == null) {
            f6.n("configuration is marked non-null but is null");
            return null;
        }
        try {
            ArrayList pathSegments = new CommonURIBuilder(openIdProviderConfiguration.getIssuer()).getPathSegments();
            if (pathSegments.isEmpty()) {
                Logger.error(TAG, "OpenId Metadata did not contain a path to the tenant", null);
                throw new ClientException("OpenId Metadata did not contain a path to the tenant", null, null);
            }
            String str = (String) pathSegments.get(0);
            if (str == null) {
                f6.n("inputString is marked non-null but is null");
                return null;
            }
            try {
                UUID.fromString(str);
                return str;
            } catch (IllegalArgumentException unused) {
                Logger.error(TAG, "OpenId Metadata did not contain UUID in the path ", null);
                throw new ClientException("OpenId Metadata did not contain UUID in the path ", null, null);
            }
        } catch (URISyntaxException e) {
            q.i("malformed_url", "Failed to construct issuerUri", e);
            return null;
        }
    }

    public static boolean isHomeTenantAlias(String str) {
        if (str != null) {
            return str.equalsIgnoreCase("common") || str.equalsIgnoreCase("consumers") || str.equalsIgnoreCase(ORGANIZATIONS);
        }
        f6.n("tenantId is marked non-null but is null");
        return false;
    }

    public String getCloudUrl() {
        String str = this.mCloudUrl;
        return str == null ? AzureActiveDirectory.getDefaultCloudUrl() : str;
    }

    public String getTenantId() {
        return this.mTenantId;
    }

    public String getTenantUuidForAlias(String str) throws ServiceException, ClientException {
        if (str == null) {
            f6.n("authority is marked non-null but is null");
            return null;
        }
        String str2 = this.mTenantId;
        if (str2 == null) {
            f6.n("inputString is marked non-null but is null");
            return null;
        }
        try {
            UUID.fromString(str2);
            return this.mTenantId;
        } catch (IllegalArgumentException unused) {
            Logger.info(TAG + ":loadOpenIdProviderConfigurationMetadata", "Loading OpenId Provider Metadata...");
            return getTenantIdFromOpenIdProviderConfiguration(new OpenIdProviderConfigurationClient().loadOpenIdProviderConfigurationFromAuthority(str));
        }
    }

    public void setCloudUrl(String str) {
        this.mCloudUrl = str;
    }

    public void setTenantId(String str) {
        this.mTenantId = str;
    }
}
