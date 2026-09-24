.class public final Ljq8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-static {v0}, Ljq8;->c(Lbz;)Lokhttp3/OkHttpClient$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Lokhttp3/OkHttpClient$Builder;

    .line 10
    .line 11
    invoke-direct {p2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getValidUsername()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPassword()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    const-string p1, ""

    .line 25
    .line 26
    :cond_1
    invoke-static {p2, v1, p1}, Lmq8;->b(Lokhttp3/OkHttpClient$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p2, Lokhttp3/OkHttpClient$Builder;->f:Z

    .line 31
    .line 32
    sget-object v1, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    .line 33
    .line 34
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p2, v1}, Lokhttp3/OkHttpClient$Builder;->b(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lokhttp3/OkHttpClient;

    .line 42
    .line 43
    invoke-direct {v1, p2}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 44
    .line 45
    .line 46
    new-instance p2, Lokhttp3/Request$Builder;

    .line 47
    .line 48
    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p0}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string p0, "0"

    .line 55
    .line 56
    iget-object v2, p2, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 57
    .line 58
    const-string v3, "Depth"

    .line 59
    .line 60
    invoke-virtual {v2, v3, p0}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p0, "PROPFIND"

    .line 64
    .line 65
    invoke-virtual {p2, p0, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 66
    .line 67
    .line 68
    new-instance p0, Lokhttp3/Request;

    .line 69
    .line 70
    invoke-direct {p0, p2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 71
    .line 72
    .line 73
    :try_start_0
    new-instance p2, Lokhttp3/internal/connection/RealCall;

    .line 74
    .line 75
    invoke-direct {p2, v1, p0}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 79
    .line 80
    .line 81
    move-result-object p2
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    iget-boolean v0, p2, Lokhttp3/Response;->H:Z

    .line 83
    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    iget v0, p2, Lokhttp3/Response;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    const/16 v1, 0xcf

    .line 89
    .line 90
    if-ne v0, v1, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    const/4 p1, 0x0

    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Lokhttp3/Response;->close()V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    .line 99
    .line 100
    return p1

    .line 101
    :catch_0
    move-exception p1

    .line 102
    goto :goto_3

    .line 103
    :catch_1
    move-exception p1

    .line 104
    goto :goto_4

    .line 105
    :goto_2
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    :try_start_4
    invoke-static {p2, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw v0
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 111
    :goto_3
    new-instance p2, Lmf8;

    .line 112
    .line 113
    invoke-static {p0}, Ljq8;->b(Lokhttp3/Request;)Ljava/security/cert/X509Certificate;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-direct {p2, p1, p0}, Lmf8;-><init>(Ljava/lang/Exception;Ljava/security/cert/X509Certificate;)V

    .line 118
    .line 119
    .line 120
    throw p2

    .line 121
    :goto_4
    new-instance p2, Lmf8;

    .line 122
    .line 123
    invoke-static {p0}, Ljq8;->b(Lokhttp3/Request;)Ljava/security/cert/X509Certificate;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-direct {p2, p1, p0}, Lmf8;-><init>(Ljava/lang/Exception;Ljava/security/cert/X509Certificate;)V

    .line 128
    .line 129
    .line 130
    throw p2
.end method

.method public static b(Lokhttp3/Request;)Ljava/security/cert/X509Certificate;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Llh6;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lbz;

    .line 13
    .line 14
    const/16 v3, 0xa

    .line 15
    .line 16
    invoke-direct {v2, v3, v1, v0}, Lbz;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Ljq8;->c(Lbz;)Lokhttp3/OkHttpClient$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lokhttp3/OkHttpClient;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    new-instance v2, Lokhttp3/internal/connection/RealCall;

    .line 29
    .line 30
    invoke-direct {v2, v3, p0}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lokhttp3/Response;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :catchall_0
    const-wide/16 v2, 0xa

    .line 41
    .line 42
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 43
    .line 44
    invoke-virtual {v0, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_0

    .line 49
    .line 50
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 51
    .line 52
    const/4 v6, 0x4

    .line 53
    const/4 v7, 0x0

    .line 54
    const-string v3, "WebDavHttp"

    .line 55
    .line 56
    const-string v4, "Timed out while reading WebDAV certificate info"

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-static/range {v2 .. v7}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object p0, v1, Llh6;->a:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 65
    .line 66
    return-object p0
.end method

.method public static c(Lbz;)Lokhttp3/OkHttpClient$Builder;
    .locals 14

    .line 1
    new-instance v0, Liq8;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Liq8;-><init>(Lmt3;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "TLS"

    .line 7
    .line 8
    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    filled-new-array {v0}, [Liq8;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, [Ljavax/net/ssl/TrustManager;

    .line 17
    .line 18
    new-instance v2, Ljava/security/SecureRandom;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p0, v3, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    .line 28
    .line 29
    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    iput-boolean v2, v1, Lokhttp3/OkHttpClient$Builder;->f:Z

    .line 34
    .line 35
    new-instance v4, Lokhttp3/ConnectionPool;

    .line 36
    .line 37
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-object v10, Lokhttp3/internal/concurrent/TaskRunner;->t:Lokhttp3/internal/concurrent/TaskRunner;

    .line 43
    .line 44
    const/4 v11, 0x0

    .line 45
    const/16 v9, 0x1fe0

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v12, 0x0

    .line 52
    const/4 v13, 0x0

    .line 53
    invoke-direct/range {v4 .. v13}, Lokhttp3/ConnectionPool;-><init>(IIIIILokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RouteDatabase;ZZ)V

    .line 54
    .line 55
    .line 56
    iput-object v4, v1, Lokhttp3/OkHttpClient$Builder;->b:Lokhttp3/ConnectionPool;

    .line 57
    .line 58
    sget-object v2, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    .line 59
    .line 60
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->b(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p0, v0}, Lokhttp3/OkHttpClient$Builder;->d(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)V

    .line 75
    .line 76
    .line 77
    new-instance p0, Lhq8;

    .line 78
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v0, v1, Lokhttp3/OkHttpClient$Builder;->t:Ljavax/net/ssl/HostnameVerifier;

    .line 83
    .line 84
    if-eq p0, v0, :cond_0

    .line 85
    .line 86
    iput-object v3, v1, Lokhttp3/OkHttpClient$Builder;->B:Lokhttp3/internal/connection/RouteDatabase;

    .line 87
    .line 88
    :cond_0
    iput-object p0, v1, Lokhttp3/OkHttpClient$Builder;->t:Ljavax/net/ssl/HostnameVerifier;

    .line 89
    .line 90
    return-object v1
.end method
