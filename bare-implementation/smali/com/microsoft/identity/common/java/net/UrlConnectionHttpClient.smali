.class public final Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field private static final defaultReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final connectTimeoutMs:I

.field private final readTimeoutMs:I

.field private final retryPolicy:Lcom/microsoft/identity/common/java/net/IRetryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/net/IRetryPolicy<",
            "Lcom/microsoft/identity/common/java/net/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final sslSocketFactory:Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;

.field private final streamBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->defaultReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/microsoft/identity/common/java/net/NoRetryPolicy;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    :goto_0
    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->retryPolicy:Lcom/microsoft/identity/common/java/net/IRetryPolicy;

    .line 13
    .line 14
    const/16 p1, 0x400

    .line 15
    .line 16
    iput p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->streamBufferSize:I

    .line 17
    .line 18
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->URL_CONNECTION_CONNECT_TIME_OUT:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 23
    .line 24
    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->getIntValue(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->connectTimeoutMs:I

    .line 29
    .line 30
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v0, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->URL_CONNECTION_READ_TIME_OUT:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 35
    .line 36
    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->getIntValue(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->readTimeoutMs:I

    .line 41
    .line 42
    sget-object p1, Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;->SUPPORTED_SSL_PROTOCOLS:Ljava/util/List;

    .line 43
    .line 44
    new-instance v0, Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;

    .line 45
    .line 46
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    .line 51
    .line 52
    invoke-direct {v0, v1, p1}, Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->sslSocketFactory:Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;

    .line 56
    .line 57
    return-void
.end method

.method public static a(Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;Lcom/microsoft/identity/common/java/net/HttpRequest;)Lcom/microsoft/identity/common/java/net/HttpResponse;
    .locals 7

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->setupConnection(Lcom/microsoft/identity/common/java/net/HttpRequest;)Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    invoke-static {}, Lcom/microsoft/identity/common/java/net/CancellationSignal;->access$getSThreadLocalSignal$cp()Ljava/lang/ThreadLocal;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/microsoft/identity/common/java/net/CancellationSignal;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance v3, Lmr3;

    .line 19
    .line 20
    const/4 v4, 0x6

    .line 21
    invoke-direct {v3, v0, v4}, Lmr3;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v3, v2

    .line 26
    :goto_0
    const-string v4, "timed_out"

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Lcom/microsoft/identity/common/java/net/CancellationSignal;->registerOnCancel(Lmr3;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {v2}, Lcom/microsoft/identity/common/java/net/a;->accept(Lcom/microsoft/identity/common/java/net/HttpResponse;)V

    .line 38
    .line 39
    .line 40
    const-string p0, "Request cancelled before HTTP execution due to command-level timeout"

    .line 41
    .line 42
    invoke-static {v4, p0, v2}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    return-object v2

    .line 46
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestContent()[B

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v6, "Content-Type"

    .line 55
    .line 56
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v0, v5, p1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->sendRequest(Ljava/net/HttpURLConnection;[BLjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->getHttpResponse(Ljava/net/HttpURLConnection;)Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 66
    .line 67
    .line 68
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Lcom/microsoft/identity/common/java/net/CancellationSignal;->unregisterOnCancel(Lmr3;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-object p0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_2

    .line 77
    :catch_0
    move-exception p0

    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    :try_start_2
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/net/CancellationSignal;->isCancelled()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-static {v2}, Lcom/microsoft/identity/common/java/net/a;->accept(Lcom/microsoft/identity/common/java/net/HttpResponse;)V

    .line 87
    .line 88
    .line 89
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 90
    .line 91
    const-string v0, "Request cancelled due to command-level timeout"

    .line 92
    .line 93
    invoke-direct {p1, v4, v0, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_4
    invoke-static {p0}, Ldj7;->_getClientException(Ljava/io/IOException;)Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :goto_2
    if-eqz v1, :cond_5

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Lcom/microsoft/identity/common/java/net/CancellationSignal;->unregisterOnCancel(Lmr3;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    throw p0

    .line 108
    :catch_1
    move-exception p0

    .line 109
    const-string p1, "UrlConnectionHttpClient"

    .line 110
    .line 111
    const-string v0, "IOException occurred during setupConnection"

    .line 112
    .line 113
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p0}, Ldj7;->_getClientException(Ljava/io/IOException;)Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    throw p0
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    sget-object v2, Lcom/microsoft/identity/common/java/AuthenticationConstants;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 11
    .line 12
    .line 13
    iget p0, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->streamBufferSize:I

    .line 14
    .line 15
    new-array p0, p0, [C

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/Reader;->read([C)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, -0x1

    .line 27
    if-le v2, v3, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, p0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {p1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->safeCloseStream(Ljava/io/Closeable;)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :goto_1
    invoke-static {p1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->safeCloseStream(Ljava/io/Closeable;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public static declared-synchronized getDefaultInstance()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;
    .locals 5

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->defaultReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 11
    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    new-instance v2, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->number()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->extensionFactor()V

    .line 28
    .line 29
    .line 30
    new-instance v4, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$3;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isAcceptable(Lcom/microsoft/identity/common/java/util/ported/Function;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->initialDelay()V

    .line 39
    .line 40
    .line 41
    new-instance v4, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$2;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isRetryable(Ljava/util/function/BiFunction;)V

    .line 47
    .line 48
    .line 49
    new-instance v4, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$1;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isRetryableException(Lcom/microsoft/identity/common/java/util/ported/Function;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->build()Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;->retryPolicy(Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;->build()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    :cond_0
    const/4 v3, 0x0

    .line 69
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_0

    .line 81
    .line 82
    :goto_0
    sget-object v1, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->defaultReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    move-object v2, v1

    .line 89
    check-cast v2, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v1

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    :goto_1
    monitor-exit v0

    .line 95
    return-object v2

    .line 96
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw v1
.end method

.method private getHttpResponse(Ljava/net/HttpURLConnection;)Lcom/microsoft/identity/common/java/net/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p0

    .line 8
    move-object v1, v0

    .line 9
    goto :goto_3

    .line 10
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    new-instance v3, Ljava/util/Date;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/net/URLConnection;->getDate()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 25
    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const-string p0, ""

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_1
    move-exception p0

    .line 33
    goto :goto_3

    .line 34
    :cond_0
    invoke-direct {p0, v1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_1
    new-instance v4, Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v4, v3, v2, p0, p1}, Lcom/microsoft/identity/common/java/net/HttpResponse;-><init>(Ljava/util/Date;ILjava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    .line 46
    .line 47
    :try_start_3
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaders()Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaders()Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-lez p1, :cond_1

    .line 66
    .line 67
    const-string p1, "Content-Type"

    .line 68
    .line 69
    invoke-virtual {v4, p1}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const-string p1, "xms-ccs-requestid"

    .line 76
    .line 77
    invoke-virtual {v4, p1}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    const-string p1, "x-ms-srs"

    .line 81
    .line 82
    invoke-virtual {v4, p1}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catchall_2
    move-exception p0

    .line 87
    move-object v0, v4

    .line 88
    goto :goto_3

    .line 89
    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 90
    .line 91
    .line 92
    invoke-static {v4}, Lcom/microsoft/identity/common/java/net/a;->accept(Lcom/microsoft/identity/common/java/net/HttpResponse;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->safeCloseStream(Ljava/io/Closeable;)V

    .line 96
    .line 97
    .line 98
    return-object v4

    .line 99
    :catch_1
    move-exception p0

    .line 100
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    :goto_3
    invoke-static {v0}, Lcom/microsoft/identity/common/java/net/a;->accept(Lcom/microsoft/identity/common/java/net/HttpResponse;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->safeCloseStream(Ljava/io/Closeable;)V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method private static safeCloseStream(Ljava/io/Closeable;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string v0, "UrlConnectionHttpClient:safeCloseStream"

    .line 10
    .line 11
    const-string v1, "Encountered IO exception when trying to close the stream"

    .line 12
    .line 13
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static sendRequest(Ljava/net/HttpURLConnection;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string v0, "Content-Type"

    .line 15
    .line 16
    invoke-virtual {p0, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    array-length p2, p1

    .line 20
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "Content-Length"

    .line 25
    .line 26
    invoke-virtual {p0, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->safeCloseStream(Ljava/io/Closeable;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    const/4 p0, 0x0

    .line 44
    :goto_0
    invoke-static {p0}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->safeCloseStream(Ljava/io/Closeable;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method private setupConnection(Lcom/microsoft/identity/common/java/net/HttpRequest;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestUrl()Ljava/net/URL;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/java/net/HttpUrlConnectionFactory;->createHttpURLConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    move-object v1, v0

    .line 54
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->sslSocketFactory:Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestUrl()Ljava/net/URL;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "https"

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestUrl()Ljava/net/URL;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v2, "http"

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const-string v2, "UrlConnectionHttpClient:setupConnection"

    .line 93
    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    const-string v1, "Making a request for non-https URL."

    .line 97
    .line 98
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v3, "gets a request from an unexpected protocol: "

    .line 105
    .line 106
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestUrl()Ljava/net/URL;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestMethod()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->connectTimeoutMs:I

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 137
    .line 138
    .line 139
    iget p0, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->readTimeoutMs:I

    .line 140
    .line 141
    invoke-virtual {v0, p0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 142
    .line 143
    .line 144
    const/4 p0, 0x1

    .line 145
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 152
    .line 153
    .line 154
    return-object v0

    .line 155
    :cond_3
    const-string p0, "Trying to initiate a HTTPS request, but didn\'t get back HttpsURLConnection"

    .line 156
    .line 157
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const/4 p0, 0x0

    .line 161
    return-object p0
.end method


# virtual methods
.method public final method(Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;Ljava/net/URL;Ljava/util/AbstractMap;[B)Lcom/microsoft/identity/common/java/net/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "client-request-id"

    .line 9
    .line 10
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance v0, Lcom/microsoft/identity/common/java/telemetry/events/HttpStartEvent;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "http_start_event"

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->names(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v3, "Microsoft.MSAL.http_event"

    .line 29
    .line 30
    const-string v4, "Microsoft.MSAL.event_type"

    .line 31
    .line 32
    invoke-virtual {v0, v4, v3}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v3, "Microsoft.MSAL.method"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "Microsoft.MSAL.http_path"

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v1, v3}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "Microsoft.MSAL.x_ms_request_id"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->PATCH:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 58
    .line 59
    if-ne v0, p1, :cond_0

    .line 60
    .line 61
    sget-object p1, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->POST:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 62
    .line 63
    new-instance v0, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 66
    .line 67
    .line 68
    const-string p3, "X-HTTP-Method-Override"

    .line 69
    .line 70
    const-string v1, "PATCH"

    .line 71
    .line 72
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-object p3, v0

    .line 76
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/java/net/HttpRequest;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {v0, p2, p3, p1, p4}, Lcom/microsoft/identity/common/java/net/HttpRequest;-><init>(Ljava/net/URL;Ljava/util/Map;Ljava/lang/String;[B)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Lmu7;

    .line 86
    .line 87
    const/4 p2, 0x1

    .line 88
    invoke-direct {p1, p2, p0, v0}, Lmu7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->retryPolicy:Lcom/microsoft/identity/common/java/net/IRetryPolicy;

    .line 92
    .line 93
    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/java/net/IRetryPolicy;->attempt(Lmu7;)Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :cond_1
    const-string p0, "requestMethod is marked non-null but is null"

    .line 99
    .line 100
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_2
    const-string p0, "requestUrl is marked non-null but is null"

    .line 105
    .line 106
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object v0
.end method
