package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.io.StringWriter;
import java.net.URL;
import java.nio.channels.Channels;
import java.nio.charset.StandardCharsets;
import java.nio.file.FileVisitOption;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.time.ZonedDateTime;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.internal._HeadersCommonKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class v64 {
    public static final MediaType a;
    public static final MediaType b;
    public static final long c;
    public static final b d;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum d {
        GET,
        HEAD,
        POST,
        PUT,
        DELETE
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class f {
        public final Request a;
        public final String b;

        public f(Request request, String str) {
            this.a = request;
            this.b = str;
        }
    }

    static {
        MediaType mediaTypeA;
        ai6 ai6Var = MediaType.d;
        MediaType mediaTypeA2 = null;
        try {
            mediaTypeA = MediaType.Companion.a("application/octet-stream");
        } catch (IllegalArgumentException unused) {
            mediaTypeA = null;
        }
        a = mediaTypeA;
        try {
            mediaTypeA2 = MediaType.Companion.a("application/xml");
        } catch (IllegalArgumentException unused2) {
        }
        b = mediaTypeA2;
        try {
            MediaType.Companion.a("application/json");
        } catch (IllegalArgumentException unused3) {
        }
        c = 300000L;
        d = new b(ki8.h, 0, mediaTypeA, "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855", "1B2M2Y8AsgTpgAmY7PhCfg==");
    }

    public static X509TrustManager a(KeyStore keyStore) throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init(keyStore);
        for (TrustManager trustManager : trustManagerFactory.getTrustManagers()) {
            if (trustManager instanceof X509TrustManager) {
                return (X509TrustManager) trustManager;
            }
        }
        return null;
    }

    public static OkHttpClient b(OkHttpClient okHttpClient) throws rg5 {
        try {
            u64 u64VarC = c(System.getenv("SSL_CERT_FILE"), System.getenv("SSL_CERT_DIR"));
            if (u64VarC == null) {
                return okHttpClient;
            }
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            try {
                sSLContext.init(null, new TrustManager[]{u64VarC}, new SecureRandom());
                OkHttpClient.Builder builderB = okHttpClient.b();
                builderB.d(sSLContext.getSocketFactory(), u64VarC);
                return new OkHttpClient(builderB);
            } catch (IOException e2) {
                e = e2;
            } catch (KeyManagementException e3) {
                e = e3;
            } catch (KeyStoreException e4) {
                e = e4;
            } catch (NoSuchAlgorithmException e5) {
                e = e5;
            }
        } catch (IOException | KeyManagementException | KeyStoreException | NoSuchAlgorithmException | CertificateException e6) {
            e = e6;
        }
        throw new rg5(e);
    }

    public static u64 c(String str, String str2) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        X509TrustManager x509TrustManager;
        ArrayList arrayList = new ArrayList();
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        int length = trustManagers.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                x509TrustManager = null;
                break;
            }
            TrustManager trustManager = trustManagers[i2];
            if (trustManager instanceof X509TrustManager) {
                x509TrustManager = (X509TrustManager) trustManager;
                break;
            }
            i2++;
        }
        if (x509TrustManager != null) {
            arrayList.add(x509TrustManager);
        }
        if (str2 != null && !str2.isEmpty()) {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null);
            Stream<Path> streamWalk = Files.walk(Paths.get(str2, new String[0]), new FileVisitOption[0]);
            try {
                Stream<Path> streamFilter = streamWalk.filter(new r64(i));
                streamFilter.getClass();
                Iterator<Path> it = streamFilter.iterator();
                int i3 = 1;
                int iD = 0;
                while (it.hasNext()) {
                    try {
                        iD += d(certificateFactory, keyStore, it.next(), "cert-dir-file-" + i3 + "-");
                        i3++;
                    } catch (IOException | KeyStoreException | CertificateException unused) {
                    }
                }
                streamWalk.close();
                X509TrustManager x509TrustManagerA = iD == 0 ? null : a(keyStore);
                if (x509TrustManagerA != null) {
                    arrayList.add(x509TrustManagerA);
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (streamWalk != null) {
                        try {
                            streamWalk.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
        if (str != null && !str.isEmpty()) {
            CertificateFactory certificateFactory2 = CertificateFactory.getInstance("X.509");
            KeyStore keyStore2 = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore2.load(null);
            X509TrustManager x509TrustManagerA2 = d(certificateFactory2, keyStore2, Paths.get(str, new String[0]), "cert-file-") == 0 ? null : a(keyStore2);
            if (x509TrustManagerA2 != null) {
                arrayList.add(x509TrustManagerA2);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new u64(arrayList);
    }

    public static int d(CertificateFactory certificateFactory, KeyStore keyStore, Path path, String str) throws IOException {
        int i = 0;
        InputStream inputStreamNewInputStream = Files.newInputStream(path, new OpenOption[0]);
        while (inputStreamNewInputStream.available() > 0) {
            try {
                X509Certificate x509Certificate = (X509Certificate) certificateFactory.generateCertificate(inputStreamNewInputStream);
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                int i2 = i + 1;
                sb.append(i);
                keyStore.setCertificateEntry(sb.toString(), x509Certificate);
                i = i2;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (inputStreamNewInputStream != null) {
                        try {
                            inputStreamNewInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
        inputStreamNewInputStream.close();
        return i;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class a {
        public HttpUrl a;
        public String b;
        public String c;
        public boolean d;
        public String e;
        public boolean f;

        public a(String str, int i, boolean z) {
            HttpUrl httpUrlA = a(str);
            if (i < 1 || i > 65535) {
                c6.f("port must be in range of 1 to 65535");
                throw null;
            }
            HttpUrl.Builder builderG = httpUrlA.g();
            builderG.i(i);
            builderG.l(z ? "https" : "http");
            b(builderG.e());
        }

        public static HttpUrl a(String str) {
            HttpUrl httpUrlB;
            ki8.h(str, "endpoint");
            try {
                httpUrlB = HttpUrl.Companion.b(str);
            } catch (IllegalArgumentException unused) {
                httpUrlB = null;
            }
            if (httpUrlB != null) {
                ki8.k(httpUrlB);
                return httpUrlB;
            }
            ki8.a aVar = ki8.a.b;
            if (!aVar.a(str) && !aVar.b(str) && !ki8.b.matcher(str).find()) {
                c6.f("invalid hostname ".concat(str));
                return null;
            }
            HttpUrl.Builder builder = new HttpUrl.Builder();
            builder.l("https");
            builder.g(str);
            return builder.e();
        }

        public final void b(HttpUrl httpUrl) {
            this.a = httpUrl;
            String str = httpUrl.d;
            boolean zF = httpUrl.f();
            String str2 = null;
            this.b = null;
            this.c = null;
            this.d = false;
            if (ki8.b.matcher(str).find()) {
                if (ki8.e.matcher(str).find()) {
                    String[] strArrSplit = str.split("\\.elb\\.amazonaws\\.com", 1)[0].split("\\.");
                    this.e = strArrSplit[strArrSplit.length - 1];
                } else if (ki8.c.matcher(str).find()) {
                    if (!ki8.d.matcher(str).find()) {
                        c6.f(xs1.j("invalid Amazon AWS host ", str));
                        return;
                    }
                    Matcher matcher = ki8.f.matcher(str);
                    matcher.lookingAt();
                    int iEnd = matcher.end();
                    String strSubstring = str.substring(0, iEnd);
                    this.b = strSubstring;
                    if (strSubstring.contains("s3-accesspoint") && !zF) {
                        c6.f("use HTTPS scheme for host ".concat(str));
                        return;
                    }
                    String[] strArrSplit2 = str.substring(iEnd).split("\\.");
                    boolean zEquals = "dualstack".equals(strArrSplit2[0]);
                    this.d = zEquals;
                    if (zEquals) {
                        strArrSplit2 = (String[]) Arrays.copyOfRange(strArrSplit2, 1, strArrSplit2.length);
                    }
                    if (!strArrSplit2[0].equals("vpce") && !strArrSplit2[0].equals("amazonaws")) {
                        str2 = strArrSplit2[0];
                        strArrSplit2 = (String[]) Arrays.copyOfRange(strArrSplit2, 1, strArrSplit2.length);
                    }
                    this.c = String.join(".", strArrSplit2);
                    if (str.equals("s3-external-1.amazonaws.com")) {
                        str2 = "us-east-1";
                    }
                    if (str.equals("s3-us-gov-west-1.amazonaws.com") || str.equals("s3-fips-us-gov-west-1.amazonaws.com")) {
                        str2 = "us-gov-west-1";
                    }
                    if (str2 != null) {
                        this.e = str2;
                    }
                }
            }
            this.f = this.c != null || httpUrl.d.endsWith("aliyuncs.com");
        }

        public final String toString() {
            return this.a.h;
        }

        public a(String str) {
            b(a(str));
        }

        public a(HttpUrl httpUrl) {
            ki8.i(httpUrl, "url");
            ki8.k(httpUrl);
            b(httpUrl);
        }

        public a(URL url) {
            HttpUrl httpUrlB;
            ki8.i(url, "url");
            String string = url.toString();
            string.getClass();
            try {
                httpUrlB = HttpUrl.Companion.b(string);
            } catch (IllegalArgumentException unused) {
                httpUrlB = null;
            }
            b(httpUrlB);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class g extends RequestBody {
        public final RequestBody b;
        public final ox0 c;
        public final RandomAccessFile d;
        public final long e;
        public final byte[] f;
        public final long g;
        public final MediaType h;

        public g(RequestBody requestBody) throws rg5 {
            try {
                ki8.i(requestBody, "body");
                this.b = requestBody;
                if (requestBody.a() < 0) {
                    throw new IllegalArgumentException("length must not be negative value");
                }
                this.g = requestBody.a();
                MediaType mediaTypeB = requestBody.b();
                ki8.i(mediaTypeB, "content type");
                this.h = mediaTypeB;
            } catch (IOException e) {
                throw new rg5(e);
            }
        }

        @Override // okhttp3.RequestBody
        public final long a() {
            return this.g;
        }

        @Override // okhttp3.RequestBody
        public final MediaType b() {
            return this.h;
        }

        @Override // okhttp3.RequestBody
        public final void d(yw0 yw0Var) throws IOException {
            RequestBody requestBody = this.b;
            if (requestBody != null) {
                requestBody.d(yw0Var);
                return;
            }
            long j = this.g;
            ox0 ox0Var = this.c;
            if (ox0Var != null) {
                yw0Var.V(y13.G(ox0Var.q0()), j);
                return;
            }
            RandomAccessFile randomAccessFile = this.d;
            if (randomAccessFile != null) {
                randomAccessFile.seek(this.e);
                yw0Var.V(y13.G(Channels.newInputStream(randomAccessFile.getChannel())), j);
            } else {
                yw0Var.write(this.f, 0, (int) j);
            }
        }

        public g(RandomAccessFile randomAccessFile, long j, MediaType mediaType) throws rg5 {
            ki8.i(randomAccessFile, "randome access file");
            this.d = randomAccessFile;
            if (j >= 0) {
                this.g = j;
                ki8.i(mediaType, "content type");
                this.h = mediaType;
                try {
                    this.e = randomAccessFile.getFilePointer();
                    return;
                } catch (IOException e) {
                    throw new rg5(e);
                }
            }
            c6.f("length must not be negative value");
            throw null;
        }

        public g(ox0 ox0Var, MediaType mediaType) {
            ki8.i(ox0Var, "buffer");
            this.c = ox0Var;
            this.g = ox0Var.d;
            ki8.i(mediaType, "content type");
            this.h = mediaType;
        }

        public g(byte[] bArr, int i, MediaType mediaType) {
            ki8.i(bArr, "data bytes");
            this.f = bArr;
            if (i >= 0) {
                this.g = i;
                ki8.i(mediaType, "content type");
                this.h = mediaType;
                return;
            }
            c6.f("length must not be negative value");
            throw null;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class c implements Iterable {
        public static final na4 b = na4.B("Accept-Encoding", "Authorization", "Content-Encoding", "Content-Length", "Content-Md5", "Content-Type", "Host", "User-Agent", "X-Amz-Checksum-Sha256", "X-Amz-Content-Sha256", "X-Amz-Date", "X-Amz-Sdk-Checksum-Algorithm", "X-Amz-Security-Token");
        public final HashMap a = new HashMap();

        public c(String... strArr) {
            if (strArr.length % 2 != 0) {
                c6.f("Expected alternating keys and values");
                throw null;
            }
            for (int i = 0; i < strArr.length; i += 2) {
                String str = strArr[i];
                String str2 = strArr[i + 1];
                String strL = l(str);
                o(strL, str2);
                this.a.put(strL, new HashSet(Collections.singletonList(str2)));
            }
        }

        public static c f(c... cVarArr) {
            c cVar = new c();
            for (c cVar2 : cVarArr) {
                cVar.k(cVar2);
            }
            return cVar;
        }

        public static String g(String str) {
            String[] strArrSplit = str.toLowerCase(Locale.US).split("-", -1);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < strArrSplit.length; i++) {
                String str2 = strArrSplit[i];
                if (!str2.isEmpty()) {
                    sb.append(Character.toUpperCase(str2.charAt(0)));
                    if (str2.length() > 1) {
                        sb.append(str2.substring(1));
                    }
                }
                if (i < strArrSplit.length - 1) {
                    sb.append("-");
                }
            }
            return sb.toString();
        }

        public static String l(String str) {
            ki8.i(str, "name");
            if (!str.trim().equals(str)) {
                c6.f("leading/trailing spaces are not allowed in name");
                return null;
            }
            if (!str.isEmpty()) {
                return g(str);
            }
            c6.f("name must not be empty");
            return null;
        }

        public static void o(String str, String str2) {
            MediaType mediaTypeA;
            ki8.i(str2, "value");
            if (b.contains(str) && str2.isEmpty()) {
                c6.f("value must not be empty for name ".concat(str));
                return;
            }
            if ("Content-Type".equals(str)) {
                ai6 ai6Var = MediaType.d;
                try {
                    mediaTypeA = MediaType.Companion.a(str2);
                } catch (IllegalArgumentException unused) {
                    mediaTypeA = null;
                }
                if (mediaTypeA == null) {
                    c6.f(eq3.k("invalid content type '", str2, "' as per RFC 2045"));
                    return;
                }
            }
            int iIndexOf = str2.indexOf(13);
            if (iIndexOf >= 0) {
                c6.f(xs1.h(iIndexOf, "Unexpected char 0x0d at ", " in header value"));
                return;
            }
            int iIndexOf2 = str2.indexOf(10);
            if (iIndexOf2 < 0) {
                return;
            }
            c6.f(xs1.h(iIndexOf2, "Unexpected char 0x0a at ", " in header value"));
        }

        public final LinkedHashSet c() {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Map.Entry entry : this.a.entrySet()) {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    linkedHashSet.add(new AbstractMap.SimpleImmutableEntry(entry.getKey(), (String) it.next()));
                }
            }
            return linkedHashSet;
        }

        public final Set d(String str) {
            return (Set) this.a.getOrDefault(g(str), Collections.EMPTY_SET);
        }

        public final String e(String str) {
            Set setD = d(str);
            if (setD.isEmpty()) {
                return null;
            }
            return (String) setD.iterator().next();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                return Objects.equals(this.a, ((c) obj).a);
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.a);
        }

        public final void i(String str, String str2) {
            String strL = l(str);
            o(strL, str2);
            ((Set) this.a.computeIfAbsent(strL, new q40(1))).add(str2);
        }

        @Override // java.lang.Iterable
        public final Iterator iterator() {
            return c().iterator();
        }

        public final void k(c cVar) {
            if (cVar == null) {
                return;
            }
            for (Map.Entry entry : cVar.c()) {
                i((String) entry.getKey(), (String) entry.getValue());
            }
        }

        public final String toString() {
            return this.a.toString();
        }

        public c(c cVar) {
            if (cVar != null) {
                k(cVar);
            }
        }

        public c(Map<String, String> map) {
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    i(entry.getKey(), entry.getValue());
                }
            }
        }

        public c(ti5 ti5Var) {
            if (ti5Var != null) {
                for (Map.Entry entry : ti5Var.a()) {
                    i((String) entry.getKey(), (String) entry.getValue());
                }
            }
        }

        public c() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class e implements Iterable {
        public final HashMap a = new HashMap();

        public e(String... strArr) {
            if (strArr.length % 2 != 0) {
                c6.f("Expected alternating keys and values");
                throw null;
            }
            for (int i = 0; i < strArr.length; i += 2) {
                String str = strArr[i];
                String str2 = strArr[i + 1];
                ki8.h(str, "key");
                if (str2 == null) {
                    str2 = "";
                }
                this.a.put(str, new ArrayList(Collections.singletonList(str2)));
            }
        }

        public final LinkedHashSet c() {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Map.Entry entry : this.a.entrySet()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    linkedHashSet.add(new AbstractMap.SimpleImmutableEntry(entry.getKey(), (String) it.next()));
                }
            }
            return linkedHashSet;
        }

        public final void d(String str, String str2) {
            ki8.h(str, "key");
            if (str2 == null) {
                str2 = "";
            }
            ((List) this.a.computeIfAbsent(str, new y64(0))).add(str2);
        }

        public final void e(e eVar) {
            if (eVar == null) {
                return;
            }
            for (Map.Entry entry : eVar.c()) {
                d((String) entry.getKey(), (String) entry.getValue());
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof e) {
                return Objects.equals(this.a, ((e) obj).a);
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.a);
        }

        @Override // java.lang.Iterable
        public final Iterator iterator() {
            return c().iterator();
        }

        public final String toString() {
            return this.a.toString();
        }

        public e(e eVar) {
            if (eVar != null) {
                e(eVar);
            }
        }

        public e(Map<String, String> map) {
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    d(entry.getKey(), entry.getValue());
                }
            }
        }

        public e(ti5 ti5Var) {
            if (ti5Var != null) {
                for (Map.Entry entry : ti5Var.a()) {
                    d((String) entry.getKey(), (String) entry.getValue());
                }
            }
        }

        public e() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class h {
        public final String a;
        public final d b;
        public final ll0 c;
        public final c d;
        public final e e;
        public final b f;
        public final String g;
        public final String h;
        public final String i;

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static class a {
            public String a;
            public d b;
            public ll0 c;
            public c d;
            public e e;
            public b f;

            public final h a() {
                if (this.a == null) {
                    c6.f("user agent must be provided");
                    return null;
                }
                if (this.b != null) {
                    return new h(this, 0);
                }
                c6.f("method must be provided");
                return null;
            }

            public final void b(d dVar) {
                ki8.i(dVar, "HTTP method");
                this.b = dVar;
            }

            public final void c(String str) {
                ki8.i(str, "user agent");
                this.a = str;
            }
        }

        private h(a aVar) {
            this.a = aVar.a;
            this.b = aVar.b;
            ll0 ll0Var = aVar.c;
            this.c = ll0Var;
            this.d = aVar.d;
            this.e = aVar.e;
            this.f = aVar.f;
            if (ll0Var != null) {
                this.d = c.f(ll0Var.b(), aVar.d);
                e[] eVarArr = {ll0Var.c(), aVar.e};
                e eVar = new e();
                for (int i = 0; i < 2; i++) {
                    eVar.e(eVarArr[i]);
                }
                this.e = eVar;
                ll0 ll0Var2 = this.c;
                if (ll0Var2 instanceof fw0) {
                    this.g = ((fw0) ll0Var2).f();
                    this.h = ((fw0) this.c).g();
                }
                ll0 ll0Var3 = this.c;
                if (ll0Var3 instanceof yq5) {
                    this.i = ((yq5) ll0Var3).h();
                }
            }
        }

        public final f a(a aVar, String str, w32 w32Var) throws rg5 {
            d dVar;
            HttpUrl httpUrlE;
            String str2;
            g gVar;
            String str3 = str == null ? this.h : str;
            if (str3 == null) {
                str3 = "us-east-1";
            }
            aVar.getClass();
            String str4 = this.g;
            String str5 = this.i;
            if (str4 == null && str5 != null) {
                c6.f(eq3.k("null bucket name for object '", str5, "'"));
                return null;
            }
            HttpUrl.Builder builderG = aVar.a.g();
            e eVar = this.e;
            if (eVar != null) {
                for (Map.Entry entry : eVar.c()) {
                    builderG.b(ki8.a((String) entry.getKey()), ki8.a((String) entry.getValue()));
                }
            }
            d dVar2 = this.b;
            if (str4 == null) {
                if (aVar.c != null) {
                    String str6 = aVar.b + aVar.c;
                    if (str6.equals("s3-external-1.amazonaws.com") || str6.equals("s3-us-gov-west-1.amazonaws.com") || str6.equals("s3-fips-us-gov-west-1.amazonaws.com")) {
                        builderG.g(str6);
                    } else {
                        String str7 = aVar.b;
                        String strConcat = aVar.c;
                        if (str7.startsWith("s3.") || aVar.b.startsWith("s3-")) {
                            strConcat = "amazonaws.com".concat(strConcat.endsWith(".cn") ? ".cn" : "");
                            str7 = "s3.";
                        }
                        builderG.g(str7 + str3 + "." + strConcat);
                    }
                }
                httpUrlE = builderG.e();
                dVar = dVar2;
            } else {
                boolean z = (dVar2 == d.PUT && str5 == null && eVar == null) || (eVar != null && eVar.a.containsKey("location")) || (str4.contains(".") && aVar.a.f());
                String str8 = aVar.a.d;
                if (aVar.c != null) {
                    String str9 = aVar.b + aVar.c;
                    if (str9.equals("s3-external-1.amazonaws.com") || str9.equals("s3-us-gov-west-1.amazonaws.com") || str9.equals("s3-fips-us-gov-west-1.amazonaws.com")) {
                        builderG.g(str9);
                        str8 = str9;
                    } else {
                        String strK = aVar.b;
                        if (strK.contains("s3-accelerate")) {
                            if (str4.contains(".")) {
                                c6.f(eq3.k("bucket name '", str4, "' with '.' is not allowed for accelerate endpoint"));
                                return null;
                            }
                            if (z) {
                                strK = strK.replaceFirst("-accelerate", "");
                            }
                        }
                        if (aVar.d) {
                            strK = eq3.j(strK, "dualstack.");
                        }
                        if (!aVar.b.contains("s3-accelerate")) {
                            strK = dj7.k(strK, str3, ".");
                        }
                        StringBuilder sbS = dj7.s(strK);
                        sbS.append(aVar.c);
                        String string = sbS.toString();
                        builderG.g(string);
                        str8 = string;
                    }
                }
                if (z || !aVar.f) {
                    String strA = ki8.a(str4);
                    int length = strA.length();
                    dVar = dVar2;
                    builderG.j(strA, 0, length, false, true);
                } else {
                    builderG.g(str4 + "." + str8);
                    dVar = dVar2;
                }
                if (str5 != null) {
                    builderG.a(ki8.b(str5));
                }
                httpUrlE = builderG.e();
            }
            c cVar = this.d;
            b bVar = this.f;
            if (bVar == null) {
                if (cVar.a.containsKey(c.g("Content-Type"))) {
                    byte[] bArr = ki8.h;
                    String strE = cVar.e("Content-Type");
                    ai6 ai6Var = MediaType.d;
                    bVar = new b(bArr, 0, MediaType.Companion.b(strE), "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855", "1B2M2Y8AsgTpgAmY7PhCfg==");
                } else {
                    bVar = v64.d;
                }
            }
            RequestBody requestBody = bVar.a;
            RequestBody requestBody2 = bVar.a;
            if (requestBody == null) {
                if (w32Var != null) {
                    boolean zF = httpUrlE.f();
                    String str10 = bVar.g;
                    if (zF) {
                        str2 = str10 == null ? "UNSIGNED-PAYLOAD" : null;
                    } else if (str10 == null) {
                        c6.f("SHA256 hash must be provided to request body");
                        return null;
                    }
                } else if (bVar.h == null) {
                    c6.f("MD5 hash must be provided to request body");
                    return null;
                }
            }
            ox0 ox0Var = bVar.c;
            RandomAccessFile randomAccessFile = bVar.b;
            if (requestBody2 != null) {
                gVar = new g(requestBody2);
            } else if (randomAccessFile != null) {
                gVar = new g(randomAccessFile, bVar.e.longValue(), bVar.f);
            } else {
                gVar = ox0Var != null ? new g(ox0Var, bVar.f) : new g(bVar.d, bVar.e.intValue(), bVar.f);
            }
            c cVar2 = new c("Content-Type", bVar.f.a);
            String str11 = bVar.g;
            if (str11 != null) {
                cVar2.i("X-Amz-Content-Sha256", str11);
            }
            String str12 = bVar.h;
            if (str12 != null) {
                cVar2.i("Content-Md5", str12);
            }
            c cVarF = c.f(cVar, cVar2);
            HashMap map = cVarF.a;
            if (str2 != null) {
                cVarF.i("X-Amz-Content-Sha256", str2);
            }
            if (w32Var != null) {
                String strE2 = w32Var.e();
                if (strE2 != null) {
                    cVarF.i("X-Amz-Security-Token", strE2);
                }
                cVarF.i("X-Amz-Date", ZonedDateTime.now().format(h38.b));
            }
            cVarF.i("Accept-Encoding", "identity");
            cVarF.i("User-Agent", this.a);
            String strK2 = httpUrlE.d;
            String str13 = httpUrlE.a;
            int i = httpUrlE.e;
            if (ki8.a.b.b(strK2)) {
                strK2 = eq3.k("[", strK2, "]");
            }
            if ((!str13.equals("http") || i != 80) && (!str13.equals("https") || i != 443)) {
                strK2 = strK2 + ":" + i;
            }
            cVarF.i("Host", strK2);
            if (dVar == d.PUT || dVar == d.POST) {
                cVarF.i("Content-Type", bVar.f.a);
                try {
                    cVarF.i("Content-Length", String.valueOf(gVar.g));
                } catch (IOException e) {
                    throw new rg5(e);
                }
            }
            Request.Builder builder = new Request.Builder();
            builder.a = httpUrlE;
            Headers.Builder builder2 = new Headers.Builder();
            if (map.containsKey(c.g("Content-Encoding"))) {
                builder2.a("Content-Encoding", (String) cVarF.d("Content-Encoding").stream().distinct().filter(new w64(0)).collect(Collectors.joining(",")));
            }
            for (Map.Entry entry2 : cVarF.c()) {
                if (!((String) entry2.getKey()).equals("Content-Encoding")) {
                    String str14 = (String) entry2.getKey();
                    String str15 = (String) entry2.getValue();
                    str14.getClass();
                    str15.getClass();
                    _HeadersCommonKt.b(str14);
                    _HeadersCommonKt.a(builder2, str14, str15);
                }
            }
            builder.c = builder2.b().f();
            String string2 = dVar.toString();
            d dVar3 = d.PUT;
            if (dVar != dVar3 && dVar != d.POST) {
                gVar = null;
            }
            builder.c(string2, gVar);
            Request request = new Request(builder);
            if (requestBody2 == null && w32Var != null) {
                String strA2 = w32Var.a();
                String strD = w32Var.d();
                if (str2 == null) {
                    str2 = bVar.g;
                }
                request = zf7.a(request, str3, strA2, strD, str2);
            }
            HttpUrl httpUrl = request.a;
            StringBuilder sbS2 = dj7.s("---------START-HTTP---------\n");
            String strB = httpUrl.b();
            String strD2 = httpUrl.d();
            if (strD2 != null) {
                strB = dj7.k(strB, "?", strD2);
            }
            xs1.t(sbS2, request.b, TokenAuthenticationScheme.SCHEME_DELIMITER, strB, " HTTP/1.1\n");
            sbS2.append(request.c.toString().replaceAll("Signature=([0-9a-f]+)", "Signature=*REDACTED*").replaceAll("Credential=([^/]+)", "Credential=*REDACTED*"));
            String strSubstring = sbS2.substring(sbS2.length() - 2);
            if (strSubstring.charAt(1) != '\n') {
                sbS2.append("\n\n");
            } else if (strSubstring.charAt(0) != '\n') {
                sbS2.append("\n");
            }
            String string3 = bVar.toString();
            if (dVar == dVar3 || dVar == d.POST) {
                sbS2.append(string3);
                if (!string3.endsWith("\n")) {
                    sbS2.append("\n");
                }
            }
            return new f(request, sbS2.toString());
        }

        public /* synthetic */ h(a aVar, int i) {
            this(aVar);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class b {
        public final RequestBody a;
        public final RandomAccessFile b;
        public final ox0 c;
        public final byte[] d;
        public Long e;
        public MediaType f;
        public String g;
        public String h;
        public final boolean i;

        public b(Object obj, MediaType mediaType, String str, String str2) throws rg5 {
            byte[] bytes;
            if (obj instanceof ox0) {
                this.c = (ox0) obj;
                a(null, mediaType, str, str2);
                return;
            }
            if (obj instanceof CharSequence) {
                bytes = ((CharSequence) obj).toString().getBytes(StandardCharsets.UTF_8);
            } else {
                try {
                    wc9 wc9Var = new wc9(2);
                    vq3 vq3Var = new vq3(0);
                    cz4 cz4Var = new cz4(11);
                    x91 x91Var = new x91();
                    x91Var.c = new x44(cz4Var, vq3Var);
                    nh nhVar = new nh(15);
                    nhVar.b = new ThreadLocal();
                    x91Var.a = nhVar;
                    x91Var.b = wc9Var;
                    x91Var.d = vq3Var;
                    StringWriter stringWriter = new StringWriter();
                    x91Var.i(obj, stringWriter);
                    bytes = stringWriter.toString().getBytes(StandardCharsets.UTF_8);
                    mediaType = v64.b;
                } catch (Exception e) {
                    throw new cy8(e);
                }
            }
            int length = bytes.length;
            MessageDigest messageDigest = new y51.g().a;
            messageDigest.update(bytes, 0, length);
            String strB = y51.b(messageDigest.digest());
            int length2 = bytes.length;
            MessageDigest messageDigest2 = new y51.e().a;
            messageDigest2.update(bytes, 0, length2);
            String strA = y51.a(messageDigest2.digest());
            this.i = true;
            this.d = bytes;
            a(Long.valueOf(bytes.length), mediaType, strB, strA);
        }

        public final void a(Long l, MediaType mediaType, String str, String str2) {
            this.e = l;
            if (mediaType == null) {
                mediaType = v64.a;
            }
            this.f = mediaType;
            this.g = str;
            this.h = str2;
        }

        public final String toString() {
            return this.i ? new String(this.d, StandardCharsets.UTF_8) : "<<<BYTE>>>";
        }

        public b(RandomAccessFile randomAccessFile, long j, MediaType mediaType, String str, String str2) {
            if (j >= 0) {
                this.b = randomAccessFile;
                a(Long.valueOf(j), mediaType, str, str2);
            } else {
                c6.f("valid length must be provided");
                throw null;
            }
        }

        public b(byte[] bArr, int i, MediaType mediaType, String str, String str2) {
            if (i >= 0) {
                this.d = bArr;
                a(Long.valueOf(i), mediaType, str, str2);
            } else {
                c6.f("valid length must be provided");
                throw null;
            }
        }

        public b(RequestBody requestBody) {
            this.a = requestBody;
            this.f = requestBody.b();
        }
    }
}
