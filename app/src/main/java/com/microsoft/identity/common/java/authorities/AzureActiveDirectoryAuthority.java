package com.microsoft.identity.common.java.authorities;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectoryCloud;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectorySlice;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Configuration;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2StrategyParameters;
import com.microsoft.identity.common.java.util.CommonURIBuilder;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.f6;
import defpackage.q;
import defpackage.y77;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AzureActiveDirectoryAuthority extends Authority {
    private static final transient String TAG = "AzureActiveDirectoryAuthority";

    @y77("audience")
    public AzureActiveDirectoryAudience mAudience;

    @y77("flight_parameters")
    public Map<String, String> mFlightParameters;
    private boolean mMultipleCloudsSupported;

    public AzureActiveDirectoryAuthority() {
        this.mMultipleCloudsSupported = false;
        this.mAudience = new AllAccounts();
        this.mAuthorityTypeString = "AAD";
        this.mMultipleCloudsSupported = false;
    }

    public static String convertToDefaultAuthority(String str) throws ClientException {
        if (str == null) {
            f6.n("authorityUrl is marked non-null but is null");
            return null;
        }
        try {
            CommonURIBuilder commonURIBuilder = new CommonURIBuilder(str);
            commonURIBuilder.setPath("common");
            return commonURIBuilder.b();
        } catch (URISyntaxException e) {
            q.i("malformed_url", "Cannot construct common authority URL", e);
            return null;
        }
    }

    private static AzureActiveDirectoryCloud getAzureActiveDirectoryCloud(AzureActiveDirectoryAudience azureActiveDirectoryAudience) {
        if (azureActiveDirectoryAudience == null) {
            f6.n("audience is marked non-null but is null");
            return null;
        }
        try {
            return AzureActiveDirectory.getAzureActiveDirectoryCloud(new URL(azureActiveDirectoryAudience.getCloudUrl()));
        } catch (MalformedURLException e) {
            Logger.errorPII(e, TAG + ":getAzureActiveDirectoryCloud", "AAD cloud URL was malformed.");
            return null;
        }
    }

    public MicrosoftStsOAuth2Configuration createOAuth2Configuration() {
        StringBuilder sb = new StringBuilder();
        String str = TAG;
        sb.append(str);
        sb.append(":createOAuth2Configuration");
        Logger.verbose(sb.toString(), "Creating OAuth2Configuration");
        MicrosoftStsOAuth2Configuration microsoftStsOAuth2Configuration = new MicrosoftStsOAuth2Configuration();
        microsoftStsOAuth2Configuration.setAuthorityUrl(getAuthorityURL());
        if (this.mSlice != null) {
            Logger.info(str + ":createOAuth2Configuration", "Setting slice parameters...");
            AzureActiveDirectorySlice azureActiveDirectorySlice = new AzureActiveDirectorySlice();
            azureActiveDirectorySlice.setSlice(this.mSlice.getSlice());
            azureActiveDirectorySlice.setDataCenter(this.mSlice.getDataCenter());
            microsoftStsOAuth2Configuration.setSlice(azureActiveDirectorySlice);
        }
        if (this.mFlightParameters != null) {
            Logger.info(str + ":createOAuth2Configuration", "Setting flight parameters...");
            for (Map.Entry<String, String> entry : this.mFlightParameters.entrySet()) {
                microsoftStsOAuth2Configuration.getFlightParameters().put(entry.getKey(), entry.getValue());
            }
        }
        microsoftStsOAuth2Configuration.setMultipleCloudsSupported(this.mMultipleCloudsSupported);
        return microsoftStsOAuth2Configuration;
    }

    @Override // com.microsoft.identity.common.java.authorities.Authority
    public OAuth2Strategy createOAuth2Strategy(OAuth2StrategyParameters oAuth2StrategyParameters) throws ClientException {
        if (oAuth2StrategyParameters != null) {
            return new MicrosoftStsOAuth2Strategy(createOAuth2Configuration(), oAuth2StrategyParameters);
        }
        f6.n("parameters is marked non-null but is null");
        return null;
    }

    public AzureActiveDirectoryAudience getAudience() {
        return this.mAudience;
    }

    @Override // com.microsoft.identity.common.java.authorities.Authority
    public URI getAuthorityUri() {
        CommonURIBuilder commonURIBuilder;
        try {
            AzureActiveDirectoryCloud azureActiveDirectoryCloud = getAzureActiveDirectoryCloud(this.mAudience);
            if (azureActiveDirectoryCloud == null) {
                commonURIBuilder = new CommonURIBuilder(this.mAudience.getCloudUrl());
            } else {
                commonURIBuilder = new CommonURIBuilder("https://" + azureActiveDirectoryCloud.getPreferredNetworkHostName());
            }
            if (!StringUtil.isNullOrEmpty(this.mAudience.getTenantId())) {
                ArrayList arrayList = new ArrayList(commonURIBuilder.getPathSegments());
                arrayList.add(this.mAudience.getTenantId());
                commonURIBuilder.setPathSegments(arrayList);
            }
            return commonURIBuilder.build();
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Authority URI is invalid.", e);
        }
    }

    public boolean isMSAAuthority() {
        return "consumers".equalsIgnoreCase(getAudience().getTenantId()) || AzureActiveDirectoryAudience.MSA_MEGA_TENANT_ID.equalsIgnoreCase(getAudience().getTenantId());
    }

    public boolean isMultipleCloudsSupported() {
        return this.mMultipleCloudsSupported;
    }

    public boolean isSameCloudAsAuthority(AzureActiveDirectoryAuthority azureActiveDirectoryAuthority) throws ClientException {
        if (azureActiveDirectoryAuthority == null) {
            f6.n("authorityToCheck is marked non-null but is null");
            return false;
        }
        int i = AzureActiveDirectory.a;
        AzureActiveDirectory.ensureCloudDiscoveryForAuthority(getAuthorityURL());
        AzureActiveDirectoryCloud azureActiveDirectoryCloud = getAzureActiveDirectoryCloud(this.mAudience);
        AzureActiveDirectoryCloud azureActiveDirectoryCloud2 = getAzureActiveDirectoryCloud(azureActiveDirectoryAuthority.getAudience());
        if (azureActiveDirectoryCloud == null && azureActiveDirectoryCloud2 == null) {
            return false;
        }
        if (azureActiveDirectoryCloud != null && azureActiveDirectoryCloud2 != null) {
            SpanExtension.current().getClass();
            SpanExtension.current().getClass();
        }
        return Objects.equals(azureActiveDirectoryCloud, azureActiveDirectoryCloud2);
    }

    public void setMultipleCloudsSupported(boolean z) {
        this.mMultipleCloudsSupported = z;
    }

    public AzureActiveDirectoryAuthority(AzureActiveDirectoryAudience azureActiveDirectoryAudience) {
        this.mMultipleCloudsSupported = false;
        this.mAudience = azureActiveDirectoryAudience;
        this.mAuthorityTypeString = "AAD";
    }
}
