package com.microsoft.identity.common.java.authorities;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.nativeauth.authorities.NativeAuthCIAMAuthority;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectorySlice;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2StrategyParameters;
import com.microsoft.identity.common.java.util.CommonURIBuilder;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.c6;
import defpackage.dj7;
import defpackage.f6;
import defpackage.y77;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class Authority {
    public static final String AAD_NA = "AAD_NA";
    private static final String ADFS_PATH_SEGMENT = "adfs";
    public static final String B2C = "B2C";
    private static final String B2C_PATH_SEGMENT = "tfp";
    public static final String CIAM = "CIAM";
    private static final String TAG = "Authority";
    private static final List<Authority> knownAuthorities = new ArrayList();
    private static final Object sLock = new Object();

    @y77("type")
    protected String mAuthorityTypeString;

    @y77("authority_url")
    protected String mAuthorityUrlString;

    @y77("default")
    protected boolean mIsDefault = false;

    @y77("slice")
    public AzureActiveDirectorySlice mSlice;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class KnownAuthorityResult {
        private final ClientException mClientException;
        private final boolean mKnown;

        public KnownAuthorityResult(boolean z, ClientException clientException) {
            this.mKnown = z;
            this.mClientException = clientException;
        }

        public final ClientException getClientException() {
            return this.mClientException;
        }

        public final boolean getKnown() {
            return this.mKnown;
        }
    }

    public Authority() {
        if (StringUtil.isNullOrEmpty("") && StringUtil.isNullOrEmpty("")) {
            return;
        }
        AzureActiveDirectorySlice azureActiveDirectorySlice = new AzureActiveDirectorySlice();
        azureActiveDirectorySlice.setSlice("");
        azureActiveDirectorySlice.setDataCenter("");
        this.mSlice = azureActiveDirectorySlice;
    }

    public static void addKnownAuthorities(List<Authority> list) {
        synchronized (sLock) {
            knownAuthorities.addAll(list);
        }
    }

    public static void clearKnownAuthorities() {
        synchronized (sLock) {
            knownAuthorities.clear();
        }
    }

    private static AzureActiveDirectoryAuthority createAadAuthority(CommonURIBuilder commonURIBuilder, ArrayList arrayList) {
        String str;
        if (commonURIBuilder.getPort() != -1) {
            str = commonURIBuilder.getScheme() + "://" + commonURIBuilder.getHost() + ":" + commonURIBuilder.getPort();
        } else {
            str = commonURIBuilder.getScheme() + "://" + commonURIBuilder.getHost();
        }
        return new AzureActiveDirectoryAuthority(AzureActiveDirectoryAudience.getAzureActiveDirectoryAudience(str, (String) arrayList.get(0)));
    }

    public static Authority getAuthorityFromAuthorityUrl(String str, String str2) {
        try {
            CommonURIBuilder commonURIBuilder = new CommonURIBuilder(str);
            ArrayList pathSegments = commonURIBuilder.getPathSegments();
            if (pathSegments.size() == 0 || (pathSegments.size() == 1 && ((String) pathSegments.get(0)).equals(""))) {
                return str.contains(CIAMAuthority.CIAM_LOGIN_URL_SEGMENT) ? new CIAMAuthority(CIAMAuthority.getTenantNameVariantUrlFromAuthorityWithoutPath(str)) : new UnknownAuthority();
            }
            if (str == null) {
                f6.n("authorityStr is marked non-null but is null");
                return null;
            }
            if (getEquivalentConfiguredAuthority(str) != null) {
                Authority equivalentConfiguredAuthority = getEquivalentConfiguredAuthority(str);
                String str3 = equivalentConfiguredAuthority.mAuthorityTypeString;
                if (B2C.equalsIgnoreCase(str3)) {
                    return new AzureActiveDirectoryB2CAuthority(str);
                }
                if (CIAM.equalsIgnoreCase(str3)) {
                    return new CIAMAuthority(str);
                }
                if (AAD_NA.equalsIgnoreCase(str3) && (equivalentConfiguredAuthority instanceof NativeAuthCIAMAuthority)) {
                    return str2 == null ? new CIAMAuthority(str) : new NativeAuthCIAMAuthority(str, str2);
                }
                return createAadAuthority(commonURIBuilder, pathSegments);
            }
            String lowerCase = ((String) pathSegments.get(0)).toLowerCase(Locale.ROOT);
            if (lowerCase.equals(ADFS_PATH_SEGMENT)) {
                Logger.verbose(TAG + ":getAuthorityFromAuthorityUrl", "Authority type is ADFS");
                return new ActiveDirectoryFederationServicesAuthority(str);
            }
            if (lowerCase.equals(B2C_PATH_SEGMENT)) {
                Logger.verbose(TAG + ":getAuthorityFromAuthorityUrl", "Authority type is B2C");
                return new AzureActiveDirectoryB2CAuthority(str);
            }
            if (str.contains(CIAMAuthority.CIAM_LOGIN_URL_SEGMENT)) {
                Logger.verbose(TAG + ":getAuthorityFromAuthorityUrl", "Authority type is CIAM");
                return new CIAMAuthority(str);
            }
            Logger.verbose(TAG + ":getAuthorityFromAuthorityUrl", "Authority type default: AAD");
            return createAadAuthority(commonURIBuilder, pathSegments);
        } catch (URISyntaxException unused) {
            c6.f("Invalid authority URL");
            return null;
        }
    }

    private static Authority getEquivalentConfiguredAuthority(String str) {
        Authority authority = null;
        try {
            String authority2 = new URL(str).getAuthority();
            synchronized (sLock) {
                try {
                    for (Authority authority3 : knownAuthorities) {
                        if (!StringUtil.isNullOrEmpty(authority3.mAuthorityUrlString) && authority2.equalsIgnoreCase(new URL(authority3.mAuthorityUrlString).getAuthority())) {
                            authority = authority3;
                            break;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return authority;
        } catch (MalformedURLException e) {
            Logger.errorPII(e, TAG, "Error parsing authority");
            return authority;
        }
    }

    public static KnownAuthorityResult getKnownAuthorityResult(Authority authority) {
        URL authorityURL;
        String str = TAG + ":getKnownAuthorityResult";
        Logger.verbose(str, "Getting known authority result...");
        if (authority != null) {
            try {
                int i = AzureActiveDirectory.a;
                authorityURL = authority.getAuthorityURL();
            } catch (ClientException e) {
                e = e;
                Logger.warn(str, "Cloud discovery failed, will check hardcoded/configured authorities. Error: " + e.getErrorCode());
            }
        } else {
            authorityURL = null;
        }
        AzureActiveDirectory.ensureCloudDiscoveryForAuthority(authorityURL);
        Logger.info(str, "Cloud discovery complete.");
        e = null;
        if (!isKnownAuthority(authority)) {
            return e != null ? new KnownAuthorityResult(false, e) : new KnownAuthorityResult(false, new ClientException("unknown_authority", "Provided authority is not known.  MSAL will only make requests to known authorities", null));
        }
        Logger.info(str, "Authority is known.");
        return new KnownAuthorityResult(true, null);
    }

    public static boolean isKnownAuthority(Authority authority) {
        boolean z;
        String strN = dj7.n(new StringBuilder(), TAG, ":isKnownAuthority");
        if (authority == null) {
            Logger.warn(strN, "Authority is null");
            return false;
        }
        URL authorityURL = authority.getAuthorityURL();
        if (authorityURL == null) {
            Logger.warn(strN, "Authority URL is null");
            return false;
        }
        synchronized (sLock) {
            try {
                Iterator<Authority> it = knownAuthorities.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    Authority next = it.next();
                    if (next.mAuthorityUrlString != null && authorityURL.getAuthority() != null) {
                        String str = next.mAuthorityUrlString;
                        Locale locale = Locale.ROOT;
                        if (str.toLowerCase(locale).contains(authorityURL.getAuthority().toLowerCase(locale))) {
                            z = true;
                            break;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        boolean zHasCloudHost = AzureActiveDirectory.hasCloudHost(authorityURL);
        boolean z2 = z || zHasCloudHost;
        Logger.verbose(strN, "Authority is known to developer? [" + z + "]");
        Logger.verbose(strN, "Authority is known to Microsoft? [" + zHasCloudHost + "]");
        return z2;
    }

    public abstract OAuth2Strategy createOAuth2Strategy(OAuth2StrategyParameters oAuth2StrategyParameters) throws ClientException;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Authority)) {
            return false;
        }
        Authority authority = (Authority) obj;
        if (this.mAuthorityTypeString.equals(authority.mAuthorityTypeString)) {
            return getAuthorityUri().equals(authority.getAuthorityUri());
        }
        return false;
    }

    public String getAuthorityTypeString() {
        return this.mAuthorityTypeString;
    }

    public URL getAuthorityURL() {
        try {
            return getAuthorityUri().toURL();
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Authority URI is not a URL.", e);
        }
    }

    public URI getAuthorityUri() {
        try {
            return new URI(this.mAuthorityUrlString);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Authority URL is not a URI.", e);
        }
    }

    public boolean getDefault() {
        return this.mIsDefault;
    }

    public AzureActiveDirectorySlice getSlice() {
        return this.mSlice;
    }

    public int hashCode() {
        return getAuthorityUri().hashCode() + (this.mAuthorityTypeString.hashCode() * 31);
    }

    public void setDefault(Boolean bool) {
        this.mIsDefault = bool.booleanValue();
    }

    public void setSlice(AzureActiveDirectorySlice azureActiveDirectorySlice) {
        this.mSlice = azureActiveDirectorySlice;
    }

    public static Authority getAuthorityFromAuthorityUrl(String str) {
        return getAuthorityFromAuthorityUrl(str, null);
    }
}
