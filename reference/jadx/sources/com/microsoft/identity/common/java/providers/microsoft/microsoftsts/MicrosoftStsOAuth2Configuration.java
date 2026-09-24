package com.microsoft.identity.common.java.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectorySlice;
import com.microsoft.identity.common.java.util.UrlUtil;
import defpackage.f6;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MicrosoftStsOAuth2Configuration {
    private URL mAuthorityUrl;
    private final HashMap mFlightParameters = new HashMap();
    private boolean mMultipleCloudsSupported;
    private AzureActiveDirectorySlice mSlice;

    public URL getAuthorityUrl() {
        return this.mAuthorityUrl;
    }

    public final HashMap getFlightParameters() {
        return this.mFlightParameters;
    }

    public final boolean getMultipleCloudsSupported() {
        return this.mMultipleCloudsSupported;
    }

    public final AzureActiveDirectorySlice getSlice() {
        return this.mSlice;
    }

    public final URL getTokenEndpoint() {
        URL authorityUrl = getAuthorityUrl();
        if (authorityUrl == null) {
            f6.n("root is marked non-null but is null");
            return null;
        }
        try {
            return UrlUtil.appendPathAndQueryToURL(authorityUrl, "/oAuth2/v2.0/token");
        } catch (MalformedURLException | URISyntaxException e) {
            Logger.error("MicrosoftStsOAuth2Configuration:getEndpointUrlFromRootAndSuffix", "Unable to create URL from provided root and suffix.", null);
            Logger.errorPII(e, "MicrosoftStsOAuth2Configuration:getEndpointUrlFromRootAndSuffix", e.getMessage() + " Unable to create URL from provided root and suffix. root = " + authorityUrl.toString() + " suffix = /oAuth2/v2.0/token");
            return null;
        }
    }

    public final void setAuthorityUrl(URL url) {
        this.mAuthorityUrl = url;
    }

    public final void setMultipleCloudsSupported(boolean z) {
        this.mMultipleCloudsSupported = z;
    }

    public final void setSlice(AzureActiveDirectorySlice azureActiveDirectorySlice) {
        this.mSlice = azureActiveDirectorySlice;
    }
}
