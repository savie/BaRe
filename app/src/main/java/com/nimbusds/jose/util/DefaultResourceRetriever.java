package com.nimbusds.jose.util;

import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class DefaultResourceRetriever extends AbstractRestrictedResourceRetriever implements RestrictedResourceRetriever {
    private boolean disconnectAfterUse;
    private Proxy proxy;
    private final SSLSocketFactory sslSocketFactory;

    public DefaultResourceRetriever(int i, int i2, int i3, boolean z) {
        this(i, i2, i3, z, null);
    }

    private InputStream getInputStream(URLConnection uRLConnection, int i) throws IOException {
        InputStream inputStream = uRLConnection.getInputStream();
        return i > 0 ? new BoundedInputStream(inputStream, getSizeLimit()) : inputStream;
    }

    public boolean disconnectsAfterUse() {
        return this.disconnectAfterUse;
    }

    public Proxy getProxy() {
        return this.proxy;
    }

    @Deprecated
    public HttpURLConnection openConnection(URL url) throws IOException {
        return openHTTPConnection(url);
    }

    public URLConnection openFileConnection(URL url) throws IOException {
        return url.openConnection();
    }

    public HttpURLConnection openHTTPConnection(URL url) throws IOException {
        Proxy proxy = this.proxy;
        return proxy != null ? (HttpURLConnection) url.openConnection(proxy) : (HttpURLConnection) url.openConnection();
    }

    @Override // com.nimbusds.jose.util.ResourceRetriever
    public Resource retrieveResource(URL url) throws Throwable {
        SSLSocketFactory sSLSocketFactory;
        URLConnection uRLConnection = null;
        try {
            try {
                URLConnection uRLConnectionOpenFileConnection = "file".equals(url.getProtocol()) ? openFileConnection(url) : openConnection(url);
                try {
                    uRLConnectionOpenFileConnection.setConnectTimeout(getConnectTimeout());
                    uRLConnectionOpenFileConnection.setReadTimeout(getReadTimeout());
                    if ((uRLConnectionOpenFileConnection instanceof HttpsURLConnection) && (sSLSocketFactory = this.sslSocketFactory) != null) {
                        ((HttpsURLConnection) uRLConnectionOpenFileConnection).setSSLSocketFactory(sSLSocketFactory);
                    }
                    if ((uRLConnectionOpenFileConnection instanceof HttpURLConnection) && getHeaders() != null && !getHeaders().isEmpty()) {
                        for (Map.Entry<String, List<String>> entry : getHeaders().entrySet()) {
                            Iterator<String> it = entry.getValue().iterator();
                            while (it.hasNext()) {
                                uRLConnectionOpenFileConnection.addRequestProperty(entry.getKey(), it.next());
                            }
                        }
                    }
                    InputStream inputStream = getInputStream(uRLConnectionOpenFileConnection, getSizeLimit());
                    try {
                        String inputStreamToString = IOUtils.readInputStreamToString(inputStream, StandardCharset.UTF_8);
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (uRLConnectionOpenFileConnection instanceof HttpURLConnection) {
                            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenFileConnection;
                            int responseCode = httpURLConnection.getResponseCode();
                            String responseMessage = httpURLConnection.getResponseMessage();
                            if (responseCode > 299 || responseCode < 200) {
                                throw new IOException("HTTP " + responseCode + ": " + responseMessage);
                            }
                        }
                        Resource resource = new Resource(inputStreamToString, uRLConnectionOpenFileConnection instanceof HttpURLConnection ? uRLConnectionOpenFileConnection.getContentType() : null);
                        if (this.disconnectAfterUse && (uRLConnectionOpenFileConnection instanceof HttpURLConnection)) {
                            ((HttpURLConnection) uRLConnectionOpenFileConnection).disconnect();
                        }
                        return resource;
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (Exception e) {
                    e = e;
                    if (e instanceof IOException) {
                        throw e;
                    }
                    throw new IOException("Couldn't open URL connection: " + e.getMessage(), e);
                } catch (Throwable th3) {
                    uRLConnection = uRLConnectionOpenFileConnection;
                    th = th3;
                    if (this.disconnectAfterUse && (uRLConnection instanceof HttpURLConnection)) {
                        ((HttpURLConnection) uRLConnection).disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public void setDisconnectsAfterUse(boolean z) {
        this.disconnectAfterUse = z;
    }

    public void setProxy(Proxy proxy) {
        this.proxy = proxy;
    }

    public DefaultResourceRetriever(int i, int i2) {
        this(i, i2, 0);
    }

    public DefaultResourceRetriever(int i, int i2, int i3) {
        this(i, i2, i3, true);
    }

    public DefaultResourceRetriever() {
        this(0, 0);
    }

    public DefaultResourceRetriever(int i, int i2, int i3, boolean z, SSLSocketFactory sSLSocketFactory) {
        super(i, i2, i3);
        this.disconnectAfterUse = z;
        this.sslSocketFactory = sSLSocketFactory;
    }
}
