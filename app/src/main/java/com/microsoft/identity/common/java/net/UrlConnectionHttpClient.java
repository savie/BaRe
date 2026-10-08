package com.microsoft.identity.common.java.net;

import com.microsoft.identity.common.components.AndroidClockSkewManager;
import com.microsoft.identity.common.java.AuthenticationConstants;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.telemetry.Telemetry;
import com.microsoft.identity.common.java.telemetry.events.HttpStartEvent;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.java.util.ported.Function;
import defpackage.dj7;
import defpackage.f6;
import defpackage.l0;
import defpackage.mr3;
import defpackage.mu7;
import defpackage.q;
import defpackage.qj7;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.AbstractMap;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiFunction;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import net.jcip.annotations.ThreadSafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public final class UrlConnectionHttpClient {
    private static final AtomicReference<UrlConnectionHttpClient> defaultReference = new AtomicReference<>(null);
    private final int connectTimeoutMs;
    private final int readTimeoutMs;
    private final IRetryPolicy<HttpResponse> retryPolicy;
    private final SSLSocketFactoryWrapper sslSocketFactory;
    private final int streamBufferSize;

    /* JADX INFO: renamed from: com.microsoft.identity.common.java.net.UrlConnectionHttpClient$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements Function<Exception, Boolean> {
        @Override // com.microsoft.identity.common.java.util.ported.Function
        public final Boolean apply(Object obj) {
            Exception exc = (Exception) obj;
            exc.getClass();
            return Boolean.valueOf(!(exc instanceof ClientException) ? false : dj7.c(4).equals(((ClientException) exc).getSubErrorCode()));
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.java.net.UrlConnectionHttpClient$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass2 implements BiFunction<HttpResponse, Integer, Boolean> {
        @Override // java.util.function.BiFunction
        public final Boolean apply(HttpResponse httpResponse, Integer num) {
            int statusCode;
            HttpResponse httpResponse2 = httpResponse;
            return Boolean.valueOf(httpResponse2 != null && ((statusCode = httpResponse2.getStatusCode()) == 500 || statusCode == 504 || statusCode == 503));
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.java.net.UrlConnectionHttpClient$3, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass3 implements Function<HttpResponse, Boolean> {
        @Override // com.microsoft.identity.common.java.util.ported.Function
        public final Boolean apply(Object obj) {
            HttpResponse httpResponse = (HttpResponse) obj;
            return Boolean.valueOf(httpResponse != null && httpResponse.getStatusCode() < 400);
        }
    }

    public UrlConnectionHttpClient(StatusCodeAndExceptionRetry statusCodeAndExceptionRetry) {
        this.retryPolicy = statusCodeAndExceptionRetry == null ? new NoRetryPolicy() : statusCodeAndExceptionRetry;
        this.streamBufferSize = 1024;
        this.connectTimeoutMs = CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.getIntValue(CommonFlight.URL_CONNECTION_CONNECT_TIME_OUT);
        this.readTimeoutMs = CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.getIntValue(CommonFlight.URL_CONNECTION_READ_TIME_OUT);
        this.sslSocketFactory = new SSLSocketFactoryWrapper((SSLSocketFactory) SSLSocketFactory.getDefault(), SSLSocketFactoryWrapper.SUPPORTED_SSL_PROTOCOLS);
    }

    public static HttpResponse a(UrlConnectionHttpClient urlConnectionHttpClient, HttpRequest httpRequest) throws ClientException {
        try {
            HttpURLConnection httpURLConnection = urlConnectionHttpClient.setupConnection(httpRequest);
            CancellationSignal cancellationSignal = (CancellationSignal) CancellationSignal.sThreadLocalSignal.get();
            mr3 mr3Var = cancellationSignal != null ? new mr3(httpURLConnection, 6) : null;
            if (cancellationSignal != null && !cancellationSignal.registerOnCancel(mr3Var)) {
                a.accept(null);
                q.i("timed_out", "Request cancelled before HTTP execution due to command-level timeout", null);
                return null;
            }
            try {
                try {
                    sendRequest(httpURLConnection, httpRequest.getRequestContent(), httpRequest.getRequestHeaders().get("Content-Type"));
                    HttpResponse httpResponse = urlConnectionHttpClient.getHttpResponse(httpURLConnection);
                    if (cancellationSignal != null) {
                        cancellationSignal.unregisterOnCancel(mr3Var);
                    }
                    return httpResponse;
                } catch (Throwable th) {
                    if (cancellationSignal != null) {
                        cancellationSignal.unregisterOnCancel(mr3Var);
                    }
                    throw th;
                }
            } catch (IOException e) {
                if (cancellationSignal == null || !cancellationSignal.isCancelled()) {
                    throw dj7._getClientException(e);
                }
                a.accept(null);
                throw new ClientException("timed_out", "Request cancelled due to command-level timeout", e);
            }
        } catch (IOException e2) {
            Logger.warn("UrlConnectionHttpClient", "IOException occurred during setupConnection");
            throw dj7._getClientException(e2);
        }
    }

    private String convertStreamToString(InputStream inputStream) throws IOException {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, AuthenticationConstants.CHARSET_UTF8));
            char[] cArr = new char[this.streamBufferSize];
            StringBuilder sb = new StringBuilder();
            while (true) {
                int i = bufferedReader.read(cArr);
                if (i <= -1) {
                    return sb.toString();
                }
                sb.append(cArr, 0, i);
            }
        } finally {
            safeCloseStream(inputStream);
        }
    }

    public static synchronized UrlConnectionHttpClient getDefaultInstance() {
        UrlConnectionHttpClient urlConnectionHttpClient;
        AtomicReference<UrlConnectionHttpClient> atomicReference = defaultReference;
        urlConnectionHttpClient = atomicReference.get();
        if (urlConnectionHttpClient == null) {
            AndroidClockSkewManager androidClockSkewManager = new AndroidClockSkewManager();
            StatusCodeAndExceptionRetry.StatusCodeAndExceptionRetryBuilder statusCodeAndExceptionRetryBuilder = new StatusCodeAndExceptionRetry.StatusCodeAndExceptionRetryBuilder();
            statusCodeAndExceptionRetryBuilder.number();
            statusCodeAndExceptionRetryBuilder.extensionFactor();
            statusCodeAndExceptionRetryBuilder.isAcceptable(new AnonymousClass3());
            statusCodeAndExceptionRetryBuilder.initialDelay();
            statusCodeAndExceptionRetryBuilder.isRetryable(new AnonymousClass2());
            statusCodeAndExceptionRetryBuilder.isRetryableException(new AnonymousClass1());
            androidClockSkewManager.retryPolicy(statusCodeAndExceptionRetryBuilder.build());
            UrlConnectionHttpClient urlConnectionHttpClientBuild = androidClockSkewManager.build();
            while (!atomicReference.compareAndSet(null, urlConnectionHttpClientBuild) && atomicReference.get() == null) {
            }
            urlConnectionHttpClient = defaultReference.get();
        }
        return urlConnectionHttpClient;
    }

    private HttpResponse getHttpResponse(HttpURLConnection httpURLConnection) throws Throwable {
        InputStream errorStream;
        HttpResponse httpResponse = null;
        try {
            try {
                errorStream = httpURLConnection.getInputStream();
            } catch (Throwable th) {
                th = th;
                errorStream = null;
                a.accept(httpResponse);
                safeCloseStream(errorStream);
                throw th;
            }
        } catch (SocketTimeoutException e) {
            throw e;
        } catch (IOException unused) {
            errorStream = httpURLConnection.getErrorStream();
        }
        try {
            HttpResponse httpResponse2 = new HttpResponse(new Date(httpURLConnection.getDate()), httpURLConnection.getResponseCode(), errorStream == null ? "" : convertStreamToString(errorStream), httpURLConnection.getHeaderFields());
            try {
                qj7 qj7VarCurrent = SpanExtension.current();
                if (httpResponse2.getHeaders() != null && httpResponse2.getHeaders().size() > 0) {
                    httpResponse2.getHeaderValue("Content-Type");
                    qj7VarCurrent.getClass();
                    httpResponse2.getHeaderValue("xms-ccs-requestid");
                    httpResponse2.getHeaderValue("x-ms-srs");
                }
                qj7VarCurrent.getClass();
                a.accept(httpResponse2);
                safeCloseStream(errorStream);
                return httpResponse2;
            } catch (Throwable th2) {
                th = th2;
                httpResponse = httpResponse2;
                a.accept(httpResponse);
                safeCloseStream(errorStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static void safeCloseStream(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e) {
            Logger.error("UrlConnectionHttpClient:safeCloseStream", "Encountered IO exception when trying to close the stream", e);
        }
    }

    private static void sendRequest(HttpURLConnection httpURLConnection, byte[] bArr, String str) throws Throwable {
        OutputStream outputStream;
        if (bArr == null) {
            return;
        }
        httpURLConnection.setDoOutput(true);
        if (!StringUtil.isNullOrEmpty(str)) {
            httpURLConnection.setRequestProperty("Content-Type", str);
        }
        httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bArr.length));
        try {
            outputStream = httpURLConnection.getOutputStream();
            try {
                outputStream.write(bArr);
                safeCloseStream(outputStream);
            } catch (Throwable th) {
                th = th;
                safeCloseStream(outputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
        }
    }

    private HttpURLConnection setupConnection(HttpRequest httpRequest) throws IOException {
        HttpURLConnection httpURLConnectionCreateHttpURLConnection = HttpUrlConnectionFactory.createHttpURLConnection(httpRequest.getRequestUrl());
        for (Map.Entry<String, String> entry : httpRequest.getRequestHeaders().entrySet()) {
            httpURLConnectionCreateHttpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        if (httpURLConnectionCreateHttpURLConnection instanceof HttpsURLConnection) {
            ((HttpsURLConnection) httpURLConnectionCreateHttpURLConnection).setSSLSocketFactory(this.sslSocketFactory);
        } else {
            if ("https".equalsIgnoreCase(httpRequest.getRequestUrl().getProtocol())) {
                l0.e("Trying to initiate a HTTPS request, but didn't get back HttpsURLConnection");
                return null;
            }
            if ("http".equalsIgnoreCase(httpRequest.getRequestUrl().getProtocol())) {
                Logger.warn("UrlConnectionHttpClient:setupConnection", "Making a request for non-https URL.");
            } else {
                Logger.warn("UrlConnectionHttpClient:setupConnection", "gets a request from an unexpected protocol: " + httpRequest.getRequestUrl().getProtocol());
            }
        }
        httpURLConnectionCreateHttpURLConnection.setRequestMethod(httpRequest.getRequestMethod());
        httpURLConnectionCreateHttpURLConnection.setConnectTimeout(this.connectTimeoutMs);
        httpURLConnectionCreateHttpURLConnection.setReadTimeout(this.readTimeoutMs);
        httpURLConnectionCreateHttpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnectionCreateHttpURLConnection.setUseCaches(true);
        httpURLConnectionCreateHttpURLConnection.setDoInput(true);
        return httpURLConnectionCreateHttpURLConnection;
    }

    public final HttpResponse method(HttpClient$HttpMethod httpClient$HttpMethod, URL url, AbstractMap abstractMap, byte[] bArr) throws ClientException {
        if (url == null) {
            f6.n("requestUrl is marked non-null but is null");
            return null;
        }
        String strName = httpClient$HttpMethod.name();
        String str = (String) abstractMap.get("client-request-id");
        if (strName == null) {
            f6.n("requestMethod is marked non-null but is null");
            return null;
        }
        HttpStartEvent httpStartEvent = new HttpStartEvent();
        httpStartEvent.names("http_start_event");
        httpStartEvent.put("Microsoft.MSAL.event_type", "Microsoft.MSAL.http_event");
        httpStartEvent.put("Microsoft.MSAL.method", strName);
        httpStartEvent.put("Microsoft.MSAL.http_path", url.toExternalForm());
        httpStartEvent.put("Microsoft.MSAL.x_ms_request_id", str);
        Telemetry.emit(httpStartEvent);
        if (HttpClient$HttpMethod.PATCH == httpClient$HttpMethod) {
            httpClient$HttpMethod = HttpClient$HttpMethod.POST;
            HashMap map = new HashMap(abstractMap);
            map.put("X-HTTP-Method-Override", "PATCH");
            abstractMap = map;
        }
        return this.retryPolicy.attempt(new mu7(1, this, new HttpRequest(url, abstractMap, httpClient$HttpMethod.name(), bArr)));
    }
}
