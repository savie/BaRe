package defpackage;

import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Configuration;
import com.microsoft.identity.common.java.util.UrlUtil;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nk5 extends MicrosoftStsOAuth2Configuration {
    public final URL a;
    public final String b;

    public nk5(URL url, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = url;
        this.b = nk5.class.getSimpleName();
    }

    public final URL a(URL url, String str) throws MalformedURLException, URISyntaxException {
        String str2 = this.b;
        try {
            if (url == null) {
                throw new NullPointerException("urlToAppend is marked non-null but is null");
            }
            URL urlAppendPathAndQueryToURL = UrlUtil.appendPathAndQueryToURL(url, str);
            urlAppendPathAndQueryToURL.getClass();
            return urlAppendPathAndQueryToURL;
        } catch (MalformedURLException e) {
            Logger.error(str2, "appendPathToURL failed", e);
            throw e;
        } catch (URISyntaxException e2) {
            Logger.error(str2, "appendPathToURL failed", e2);
            throw e2;
        }
    }

    @Override // com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Configuration
    public final URL getAuthorityUrl() {
        return this.a;
    }
}
