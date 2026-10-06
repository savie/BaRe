package com.microsoft.identity.common.java.authorities;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectorySlice;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Configuration;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2StrategyParameters;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.f6;
import defpackage.xs1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CIAMAuthority extends Authority {
    public static final String CIAM_LOGIN_URL_SEGMENT = "ciamlogin.com";
    private static final transient String TAG = "CIAMAuthority";
    private final boolean CIAM_USE_OPENID_CONFIGURATION = true;

    public CIAMAuthority(String str) {
        if (str == null) {
            f6.n("authorityUrl is marked non-null but is null");
            throw null;
        }
        this.mAuthorityTypeString = Authority.CIAM;
        this.mAuthorityUrlString = str;
    }

    private MicrosoftStsOAuth2Configuration createOAuth2Configuration() {
        StringBuilder sb = new StringBuilder();
        String str = TAG;
        sb.append(str);
        sb.append(":createOAuth2Configuration");
        Logger.verbose(sb.toString(), "Creating OAuth2Configuration");
        MicrosoftStsOAuth2Configuration microsoftStsOAuth2Configuration = new MicrosoftStsOAuth2Configuration();
        microsoftStsOAuth2Configuration.setAuthorityUrl(getAuthorityURL());
        microsoftStsOAuth2Configuration.setMultipleCloudsSupported(false);
        if (this.mSlice != null) {
            Logger.info(str + ":createOAuth2Configuration", "Setting slice parameters...");
            AzureActiveDirectorySlice azureActiveDirectorySlice = new AzureActiveDirectorySlice();
            azureActiveDirectorySlice.setSlice(this.mSlice.getSlice());
            azureActiveDirectorySlice.setDataCenter(this.mSlice.getDataCenter());
            microsoftStsOAuth2Configuration.setSlice(azureActiveDirectorySlice);
        }
        return microsoftStsOAuth2Configuration;
    }

    public static String getTenantIdVariantUrlFromAuthorityWithoutPath(String str, String str2) {
        String str3;
        if (str == null) {
            str3 = "authorityNoPath is marked non-null but is null";
        } else {
            if (str2 != null) {
                if (str.startsWith("https://")) {
                    str = str.substring(8);
                }
                if (str.endsWith("/")) {
                    str = xs1.g(1, 0, str);
                }
                return dj7.l("https://", str, "/", str2);
            }
            str3 = "tenantId is marked non-null but is null";
        }
        f6.n(str3);
        return null;
    }

    public static String getTenantNameVariantUrlFromAuthorityWithoutPath(String str) {
        if (str == null) {
            f6.n("authorityNoPath is marked non-null but is null");
            return null;
        }
        if (str.startsWith("https://")) {
            str = str.substring(8);
        }
        if (str.endsWith("/")) {
            str = xs1.g(1, 0, str);
        }
        return eq3.l("https://", str, "/", str.split("\\.")[0], ".onmicrosoft.com");
    }

    @Override // com.microsoft.identity.common.java.authorities.Authority
    public OAuth2Strategy createOAuth2Strategy(OAuth2StrategyParameters oAuth2StrategyParameters) throws ClientException {
        MicrosoftStsOAuth2Configuration microsoftStsOAuth2ConfigurationCreateOAuth2Configuration = createOAuth2Configuration();
        oAuth2StrategyParameters.setUsingOpenIdConfiguration(true);
        return new MicrosoftStsOAuth2Strategy(microsoftStsOAuth2ConfigurationCreateOAuth2Configuration, oAuth2StrategyParameters);
    }
}
