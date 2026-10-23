.class public final Ljy8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljh1;


# static fields
.field public static final e:Lokhttp3/OkHttpClient;


# instance fields
.field public a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

.field public final b:Ljava/lang/Object;

.field public final c:Liy8;

.field public final d:Ldd1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x1e

    .line 7
    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2, v3}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, v0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 18
    .line 19
    sget-object v1, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    .line 20
    .line 21
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->b(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lokhttp3/OkHttpClient;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Ljy8;->e:Lokhttp3/OkHttpClient;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v3, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 5
    .line 6
    const/16 v8, 0xf

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    invoke-direct/range {v3 .. v9}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    iput-object v3, p0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ljy8;->b:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v8, Liy8;

    .line 26
    .line 27
    new-instance v0, Luk;

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x3

    .line 31
    const/4 v1, 0x0

    .line 32
    const-class v3, Ljy8;

    .line 33
    .line 34
    const-string v4, "accessToken"

    .line 35
    .line 36
    const-string v5, "accessToken()Ljava/lang/String;"

    .line 37
    .line 38
    move-object v2, p0

    .line 39
    invoke-direct/range {v0 .. v7}, Luk;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    move-object v9, v0

    .line 43
    new-instance v0, Lhl0;

    .line 44
    .line 45
    const/4 v7, 0x6

    .line 46
    const/4 v1, 0x1

    .line 47
    const-class v3, Ljy8;

    .line 48
    .line 49
    const-string v4, "forceRefreshAccessToken"

    .line 50
    .line 51
    const-string v5, "forceRefreshAccessToken(Ljava/lang/String;)Ljava/lang/String;"

    .line 52
    .line 53
    invoke-direct/range {v0 .. v7}, Lhl0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v8, v9, v0}, Liy8;-><init>(Luk;Lhl0;)V

    .line 57
    .line 58
    .line 59
    iput-object v8, p0, Ljy8;->c:Liy8;

    .line 60
    .line 61
    sget-object v0, Ldd1;->YandexDisk:Ldd1;

    .line 62
    .line 63
    iput-object v0, p0, Ljy8;->d:Ldd1;

    .line 64
    .line 65
    return-void
.end method

.method public static C(JLc62;Lmt3;Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "uploadFile: "

    .line 2
    .line 3
    const-string v1, "uploadFile: put to url: "

    .line 4
    .line 5
    invoke-virtual {v1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "YandexService"

    .line 10
    .line 11
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    sget-object v1, Lmk6;->a:Ll15;

    .line 15
    .line 16
    new-instance v1, Llk6;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1, p2, p3}, Llk6;-><init>(JLc62;Lmt3;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lokhttp3/Request$Builder;

    .line 22
    .line 23
    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p4}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p1, "PUT"

    .line 30
    .line 31
    invoke-virtual {p0, p1, v1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lokhttp3/Request;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Ljy8;->e:Lokhttp3/OkHttpClient;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance p2, Lokhttp3/internal/connection/RealCall;

    .line 45
    .line 46
    invoke-direct {p2, p0, p1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iget p2, p0, Lokhttp3/Response;->d:I

    .line 54
    .line 55
    :try_start_0
    iget-object p3, p0, Lokhttp3/Response;->c:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p3, " for url "

    .line 66
    .line 67
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    const/16 p3, 0xc9

    .line 81
    .line 82
    if-eq p2, p3, :cond_1

    .line 83
    .line 84
    const/16 p3, 0xca

    .line 85
    .line 86
    if-ne p2, p3, :cond_0

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    new-instance p3, Ley8;

    .line 90
    .line 91
    iget-object p4, p1, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 92
    .line 93
    iget-object p1, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 94
    .line 95
    iget-object p1, p1, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v0, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 98
    .line 99
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {p3, p2, p4, p1, v0}, Ley8;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p3

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    :goto_0
    const-string p1, "uploadFile: file uploaded successfully"

    .line 110
    .line 111
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 115
    .line 116
    .line 117
    return p2

    .line 118
    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    :catchall_1
    move-exception p2

    .line 120
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw p2
.end method

.method public static x(Ljava/lang/Exception;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Ley8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ley8;

    .line 6
    .line 7
    iget p0, p0, Ley8;->a:I

    .line 8
    .line 9
    const/16 v0, 0x194

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;Lt15;)Ltc4;
    .locals 8

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Ljy8;->c:Liy8;

    .line 10
    .line 11
    iget-object p0, p0, Liy8;->a:Luk;

    .line 12
    .line 13
    invoke-virtual {p0}, Luk;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string p1, "OAuth "

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p1, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 29
    .line 30
    const-string v1, "Authorization"

    .line 31
    .line 32
    invoke-virtual {p1, v1, p0}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    iget-wide p0, p2, Lt15;->a:J

    .line 38
    .line 39
    iget-wide v1, p2, Lt15;->b:J

    .line 40
    .line 41
    const-string p2, "bytes="

    .line 42
    .line 43
    const-string v3, "-"

    .line 44
    .line 45
    invoke-static {p2, v3, p0, p1}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object p1, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 57
    .line 58
    const-string p2, "Range"

    .line 59
    .line 60
    invoke-virtual {p1, p2, p0}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    new-instance p0, Lokhttp3/Request;

    .line 64
    .line 65
    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Ljy8;->e:Lokhttp3/OkHttpClient;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance p2, Lokhttp3/internal/connection/RealCall;

    .line 74
    .line 75
    invoke-direct {p2, p1, p0}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-boolean p0, v2, Lokhttp3/Response;->H:Z

    .line 83
    .line 84
    if-eqz p0, :cond_1

    .line 85
    .line 86
    iget-object p0, v2, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 87
    .line 88
    new-instance p1, Ltc4;

    .line 89
    .line 90
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    new-instance v0, Li54;

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    const/4 v7, 0x2

    .line 98
    const/4 v1, 0x0

    .line 99
    const-class v3, Lokhttp3/Response;

    .line 100
    .line 101
    const-string v4, "close"

    .line 102
    .line 103
    const-string v5, "close()V"

    .line 104
    .line 105
    invoke-direct/range {v0 .. v7}, Li54;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    const/4 p2, 0x4

    .line 109
    invoke-direct {p1, p0, v0, p2}, Ltc4;-><init>(Ljava/io/InputStream;Lbt3;I)V

    .line 110
    .line 111
    .line 112
    return-object p1

    .line 113
    :cond_1
    iget p0, v2, Lokhttp3/Response;->d:I

    .line 114
    .line 115
    invoke-static {v2}, Lf13;->a(Ljava/io/Closeable;)V

    .line 116
    .line 117
    .line 118
    const-string p1, "Error while getting response from url. Response code: "

    .line 119
    .line 120
    invoke-static {p0, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const/4 p0, 0x0

    .line 128
    return-object p0
.end method

.method public final B(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    new-array p0, p0, [C

    .line 6
    .line 7
    const/16 v0, 0x2f

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-char v0, p0, v1

    .line 11
    .line 12
    invoke-static {p1, p0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "app:/"

    .line 17
    .line 18
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/String;Lt15;)Ltc4;
    .locals 6

    .line 1
    const-string v0, "get: resolvedPath="

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Ljy8;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v1, "YandexService"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Ljy8;->c:Liy8;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v1, "/resources/download"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Liy8;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "path"

    .line 35
    .line 36
    invoke-virtual {v1, v2, p1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Liy8;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->b()V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lokhttp3/Request;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Liy8;->e(Lokhttp3/Request;)Lfl4;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Liy8;->p(Lfl4;)Lgy8;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Lgy8;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    const/4 v1, 0x0

    .line 67
    :goto_0
    const/4 v2, 0x3

    .line 68
    if-ge v1, v2, :cond_1

    .line 69
    .line 70
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljy8;->A(Ljava/lang/String;Lt15;)Ltc4;

    .line 71
    .line 72
    .line 73
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    return-object p0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const/4 v2, 0x2

    .line 77
    if-ge v1, v2, :cond_0

    .line 78
    .line 79
    const-wide/16 v2, 0x3e8

    .line 80
    .line 81
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 82
    .line 83
    .line 84
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    if-nez v0, :cond_2

    .line 88
    .line 89
    const-string p0, "Download URL open failed without IOException."

    .line 90
    .line 91
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    :catch_1
    move-exception v0

    .line 99
    move-object p0, v0

    .line 100
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 101
    .line 102
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string p2, "get: "

    .line 107
    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const/4 v4, 0x4

    .line 113
    const/4 v5, 0x0

    .line 114
    const-string v1, "YandexService"

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    throw p0
.end method

.method public final d(Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
    .locals 7

    .line 1
    iget-object p1, p0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getToken()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;->INSTANCE:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    :try_start_0
    iget-object p0, p0, Ljy8;->c:Liy8;

    .line 17
    .line 18
    invoke-virtual {p0}, Liy8;->g()Lfy8;

    .line 19
    .line 20
    .line 21
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;

    .line 22
    .line 23
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;-><init>()V
    :try_end_0
    .catch Ley8; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    move-object p0, v0

    .line 29
    move-object v3, p0

    .line 30
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 31
    .line 32
    const/16 v5, 0x8

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    const-string v1, "YandexService"

    .line 36
    .line 37
    const-string v2, "login"

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 44
    .line 45
    invoke-direct {p0, v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;-><init>(Ljava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-exception v0

    .line 50
    move-object p0, v0

    .line 51
    move-object v3, p0

    .line 52
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 53
    .line 54
    const/16 v5, 0x8

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    const-string v1, "YandexService"

    .line 58
    .line 59
    const-string v2, "login"

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const/16 p0, 0x191

    .line 66
    .line 67
    iget p1, v3, Ley8;->a:I

    .line 68
    .line 69
    if-eq p1, p0, :cond_2

    .line 70
    .line 71
    const/16 p0, 0x193

    .line 72
    .line 73
    if-ne p1, p0, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 77
    .line 78
    invoke-direct {p0, v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;-><init>(Ljava/lang/Exception;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    :goto_0
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;->INSTANCE:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;

    .line 83
    .line 84
    :goto_1
    return-object p0
.end method

.method public final e(Lc62;Ljava/lang/String;JLcz;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    iget-object v5, v1, Ljy8;->c:Liy8;

    .line 8
    .line 9
    const-string v0, ".tmp"

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    const/4 v0, 0x1

    .line 16
    :try_start_0
    new-array v0, v0, [C

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    const/16 v8, 0x2f

    .line 20
    .line 21
    aput-char v8, v0, v7

    .line 22
    .line 23
    invoke-static {v6, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v7, ""

    .line 28
    .line 29
    invoke-static {v8, v0, v7}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-lez v7, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljy8;->t(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v1, v6}, Ljy8;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v5, v0}, Liy8;->i(Ljava/lang/String;)Lgy8;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v0, v0, Lgy8;->a:Ljava/lang/String;

    .line 51
    .line 52
    move-object/from16 v7, p1

    .line 53
    .line 54
    move-object/from16 v8, p5

    .line 55
    .line 56
    invoke-static {v3, v4, v7, v8, v0}, Ljy8;->C(JLc62;Lmt3;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/16 v7, 0xca

    .line 61
    .line 62
    if-ne v0, v7, :cond_6

    .line 63
    .line 64
    invoke-virtual {v1, v6}, Ljy8;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    const-wide/16 v8, 0x0

    .line 73
    .line 74
    cmp-long v3, v3, v8

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    if-ltz v3, :cond_1

    .line 78
    .line 79
    move-object v3, v0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    move-object v3, v4

    .line 82
    :goto_0
    move-wide v10, v8

    .line 83
    :goto_1
    const-wide/16 v12, 0x7530

    .line 84
    .line 85
    cmp-long v0, v10, v12

    .line 86
    .line 87
    if-gtz v0, :cond_5

    .line 88
    .line 89
    :try_start_1
    invoke-virtual {v5, v7, v4, v4}, Liy8;->h(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lhy8;

    .line 90
    .line 91
    .line 92
    move-result-object v0
    :try_end_1
    .catch Ley8; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    goto :goto_2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    :try_start_2
    iget v14, v0, Ley8;->a:I

    .line 96
    .line 97
    const/16 v15, 0x1a7

    .line 98
    .line 99
    if-ne v14, v15, :cond_4

    .line 100
    .line 101
    move-object v0, v4

    .line 102
    :goto_2
    if-eqz v0, :cond_2

    .line 103
    .line 104
    if-eqz v3, :cond_6

    .line 105
    .line 106
    iget-wide v14, v0, Lhy8;->d:J

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 109
    .line 110
    .line 111
    move-result-wide v16

    .line 112
    cmp-long v0, v14, v16

    .line 113
    .line 114
    if-nez v0, :cond_2

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_2
    sub-long/2addr v12, v10

    .line 118
    const-wide/16 v14, 0x3e8

    .line 119
    .line 120
    cmp-long v0, v14, v12

    .line 121
    .line 122
    if-lez v0, :cond_3

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_3
    move-wide v12, v14

    .line 126
    :goto_3
    cmp-long v0, v12, v8

    .line 127
    .line 128
    if-lez v0, :cond_5

    .line 129
    .line 130
    iget-object v0, v5, Liy8;->e:Lmt3;

    .line 131
    .line 132
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v14

    .line 136
    invoke-interface {v0, v14}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    add-long/2addr v10, v12

    .line 140
    goto :goto_1

    .line 141
    :cond_4
    throw v0

    .line 142
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 143
    .line 144
    const-string v2, "Yandex resource did not become available: "

    .line 145
    .line 146
    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :catch_1
    move-exception v0

    .line 155
    goto :goto_5

    .line 156
    :cond_6
    :goto_4
    invoke-virtual {v1, v6, v2}, Ljy8;->z(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :goto_5
    invoke-virtual {v1, v6}, Ljy8;->j(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 164
    .line 165
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const-string v3, "put: "

    .line 170
    .line 171
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    const/4 v3, 0x4

    .line 176
    const/4 v4, 0x0

    .line 177
    const-string v5, "YandexService"

    .line 178
    .line 179
    const/4 v6, 0x0

    .line 180
    move-object/from16 p0, v1

    .line 181
    .line 182
    move-object/from16 p2, v2

    .line 183
    .line 184
    move/from16 p4, v3

    .line 185
    .line 186
    move-object/from16 p5, v4

    .line 187
    .line 188
    move-object/from16 p1, v5

    .line 189
    .line 190
    move-object/from16 p3, v6

    .line 191
    .line 192
    invoke-static/range {p0 .. p5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    throw v0
.end method

.method public final f(Ljava/lang/String;)Lpg1;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-array v2, v0, [C

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/16 v4, 0x2f

    .line 10
    .line 11
    aput-char v4, v2, v3

    .line 12
    .line 13
    invoke-static {p1, v2}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v5, ""

    .line 18
    .line 19
    invoke-static {v4, v2, v5}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0, p1}, Ljy8;->v(Ljava/lang/String;)Lhy8;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    new-array v0, v0, [C

    .line 30
    .line 31
    aput-char v4, v0, v3

    .line 32
    .line 33
    invoke-static {v2, v0}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v2, p0, Lhy8;->a:Ljava/lang/String;

    .line 38
    .line 39
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "/"

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    const/16 v8, 0x3e

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    invoke-static/range {v3 .. v8}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v3, Lpg1;

    .line 59
    .line 60
    invoke-direct {v3, v2, v0}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-wide v4, p0, Lhy8;->d:J

    .line 64
    .line 65
    iput-wide v4, v3, Lpg1;->c:J

    .line 66
    .line 67
    iget-wide v4, p0, Lhy8;->e:J

    .line 68
    .line 69
    iput-wide v4, v3, Lpg1;->d:J

    .line 70
    .line 71
    iget-wide v4, p0, Lhy8;->f:J

    .line 72
    .line 73
    iput-wide v4, v3, Lpg1;->e:J

    .line 74
    .line 75
    iget-object v0, p0, Lhy8;->g:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v0, v3, Lpg1;->f:Ljava/lang/String;

    .line 78
    .line 79
    iget-object p0, p0, Lhy8;->c:Ljava/lang/String;

    .line 80
    .line 81
    const-string v0, "dir"

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    iput-boolean p0, v3, Lpg1;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    return-object v3

    .line 90
    :cond_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    move-object p0, v0

    .line 93
    const-string v0, "getFile: Error while getting file at path="

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v0, "YandexService"

    .line 100
    .line 101
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 105
    .line 106
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-string v0, ": "

    .line 111
    .line 112
    invoke-static {p1, v0, p0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const/4 v6, 0x4

    .line 117
    const/4 v7, 0x0

    .line 118
    const-string v3, "YandexService"

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-object v1
.end method

.method public final g()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Ljy8;->d:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final declared-synchronized h(Ljava/lang/String;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    const-string v2, "createDirectory"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {p0, p1}, Ljy8;->t(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    move-object p1, v0

    .line 13
    goto :goto_1

    .line 14
    :catch_0
    move-exception v0

    .line 15
    move-object v3, v0

    .line 16
    :try_start_2
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 17
    .line 18
    const-string v1, "YandexService"

    .line 19
    .line 20
    const/16 v5, 0x8

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    .line 27
    :goto_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    throw p1
.end method

.method public final i()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->Companion:Li58;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ljy8;->d:Ldd1;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Li58;->a(Ldd1;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    const-string p0, "prefs"

    .line 25
    .line 26
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "Deleting "

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Ljy8;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v1, "YandexService"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Ljy8;->c:Liy8;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Liy8;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    move-object p0, v0

    .line 27
    move-object v3, p0

    .line 28
    invoke-static {v3}, Ljy8;->x(Ljava/lang/Exception;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 36
    .line 37
    const/16 v5, 0x8

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    const-string v1, "YandexService"

    .line 41
    .line 42
    const-string v2, "delete"

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->Companion:Li58;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ljy8;->d:Ldd1;

    .line 7
    .line 8
    invoke-static {v0}, Li58;->b(Ldd1;)Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getToken()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-lez p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final l()Lni1;
    .locals 7

    .line 1
    :try_start_0
    iget-object p0, p0, Ljy8;->c:Liy8;

    .line 2
    .line 3
    invoke-virtual {p0}, Liy8;->g()Lfy8;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lni1;

    .line 8
    .line 9
    iget-object v1, p0, Lfy8;->a:Ljava/lang/Long;

    .line 10
    .line 11
    iget-object p0, p0, Lfy8;->b:Ljava/lang/Long;

    .line 12
    .line 13
    invoke-direct {v0, v1, p0}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    move-object p0, v0

    .line 19
    move-object v3, p0

    .line 20
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 21
    .line 22
    const/16 v5, 0x8

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const-string v1, "YandexService"

    .line 26
    .line 27
    const-string v2, "getQuota"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Lni1;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0, v0}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 37
    .line 38
    .line 39
    return-object p0
.end method

.method public final m()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "YandexService"

    .line 2
    .line 3
    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lih1;
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljy8;->v(Ljava/lang/String;)Lhy8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lih1;->Exists:Lih1;

    .line 8
    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    move-object p0, v0

    .line 12
    move-object v3, p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p0, Lih1;->Missing:Lih1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :goto_0
    invoke-static {v3}, Ljy8;->x(Ljava/lang/Exception;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    sget-object p0, Lih1;->Missing:Lih1;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 27
    .line 28
    const-string p0, "getMetadataPathExistence: Unable to check metadata path="

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const-string v1, "YandexService"

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object p0, Lih1;->Unknown:Lih1;

    .line 44
    .line 45
    :goto_1
    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getEmailAddressValue()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final q(Ljava/lang/String;)Lhh1;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lgh1;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljy8;->y(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v0, p0}, Lgh1;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    move-object p0, v0

    .line 16
    invoke-static {p0}, Ljy8;->x(Ljava/lang/Exception;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p0, Lgh1;

    .line 23
    .line 24
    sget-object p1, Lov2;->a:Lov2;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lgh1;-><init>(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p1, "YandexService"

    .line 31
    .line 32
    const-string v0, "listMetadataDirectory"

    .line 33
    .line 34
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 38
    .line 39
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "listMetadataDirectory: "

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v5, 0x4

    .line 50
    const/4 v6, 0x0

    .line 51
    const-string v2, "YandexService"

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lfh1;->a:Lfh1;

    .line 58
    .line 59
    :goto_0
    return-object p0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Ljy8;->v(Ljava/lang/String;)Lhy8;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    move-object v3, v0

    .line 14
    invoke-static {v3}, Ljy8;->x(Ljava/lang/Exception;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 21
    .line 22
    const/16 v5, 0x8

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const-string v1, "YandexService"

    .line 26
    .line 27
    const-string v2, "exists"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final s(Ljava/lang/String;)Ljava/util/List;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "list: path="

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "YandexService"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Ljy8;->y(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    move-object p0, v0

    .line 22
    invoke-static {p0}, Ljy8;->x(Ljava/lang/Exception;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const-string p1, "list"

    .line 29
    .line 30
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 34
    .line 35
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "list: "

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v6, 0x4

    .line 46
    const/4 v7, 0x0

    .line 47
    const-string v3, "YandexService"

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    sget-object p0, Lov2;->a:Lov2;

    .line 54
    .line 55
    return-object p0
.end method

.method public final declared-synchronized t(Ljava/lang/String;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Ljy8;->v(Ljava/lang/String;)Lhy8;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lhy8;->c:Ljava/lang/String;

    .line 11
    .line 12
    const-string v3, "dir"

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v2

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_1
    :try_start_1
    new-array v0, v1, [C

    .line 28
    .line 29
    const/16 v3, 0x2f

    .line 30
    .line 31
    aput-char v3, v0, v2

    .line 32
    .line 33
    invoke-static {p1, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-array v0, v1, [C

    .line 38
    .line 39
    aput-char v3, v0, v2

    .line 40
    .line 41
    const/4 v3, 0x6

    .line 42
    invoke-static {p1, v0, v3}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    move-object v4, v3

    .line 66
    check-cast v4, Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_4

    .line 80
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :cond_4
    :try_start_2
    const-string p1, ""

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_8

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/lang/String;

    .line 105
    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p1, "/"

    .line 115
    .line 116
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Ljy8;->v(Ljava/lang/String;)Lhy8;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    iget-object v3, v3, Lhy8;->c:Ljava/lang/String;

    .line 133
    .line 134
    const-string v4, "dir"

    .line 135
    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-ne v3, v1, :cond_5

    .line 141
    .line 142
    move v3, v1

    .line 143
    goto :goto_3

    .line 144
    :cond_5
    move v3, v2

    .line 145
    :goto_3
    if-eqz v3, :cond_6

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_6
    invoke-virtual {p0, p1}, Ljy8;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :try_start_3
    iget-object v4, p0, Ljy8;->c:Liy8;

    .line 153
    .line 154
    invoke-virtual {v4, v3}, Liy8;->k(Ljava/lang/String;)V
    :try_end_3
    .catch Ley8; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catch_0
    move-exception v3

    .line 159
    :try_start_4
    iget v4, v3, Ley8;->a:I

    .line 160
    .line 161
    const/16 v5, 0x199

    .line 162
    .line 163
    if-ne v4, v5, :cond_7

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_7
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 167
    :cond_8
    monitor-exit p0

    .line 168
    return-void

    .line 169
    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 170
    throw p1
.end method

.method public final u(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 1
    const-string v1, "Failed refreshing token: "

    .line 2
    .line 3
    iget-object v2, p0, Ljy8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getToken()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 21
    .line 22
    invoke-static {p1}, Lzm5;->b(Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getToken()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :catchall_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 41
    .line 42
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getRefreshToken()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const/4 v3, 0x0

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    :goto_0
    move-object p0, v3

    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_1
    :try_start_1
    const-string v7, "ec2ee695f64042bfa6285a6999ef11bf"

    .line 53
    .line 54
    new-instance v4, Luj;

    .line 55
    .line 56
    const-string v5, "https://oauth.yandex.com/authorize"

    .line 57
    .line 58
    const-string v6, "https://oauth.yandex.com/token"

    .line 59
    .line 60
    const-string v8, "org.swiftapps.swiftbackup.yandex://oauth"

    .line 61
    .line 62
    const-string v0, "force_confirm"

    .line 63
    .line 64
    const-string v9, "yes"

    .line 65
    .line 66
    invoke-static {v0, v9}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    const/4 v11, 0x0

    .line 74
    const/16 v12, 0xd0

    .line 75
    .line 76
    const/4 v9, 0x0

    .line 77
    invoke-direct/range {v4 .. v12}, Luj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxj;Ljava/util/Map;Ljava/util/List;I)V

    .line 78
    .line 79
    .line 80
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 81
    .line 82
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v4, v0, p1}, Luj;->c(Landroid/content/Context;Ljava/lang/String;)Lvj;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v4, p0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 91
    .line 92
    iget-object v5, v0, Lvj;->a:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v6, v0, Lvj;->c:Ljava/lang/String;

    .line 95
    .line 96
    if-nez v6, :cond_2

    .line 97
    .line 98
    move-object v7, p1

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    move-object v7, v6

    .line 101
    :goto_1
    iget-object v8, v0, Lvj;->b:Ljava/lang/Long;

    .line 102
    .line 103
    const/4 v9, 0x2

    .line 104
    const/4 v10, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    invoke-static/range {v4 .. v10}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, p0, Ljy8;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;

    .line 111
    .line 112
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getCloudServiceId()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    sget-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->Companion:Li58;

    .line 123
    .line 124
    iget-object p0, p0, Ljy8;->d:Ldd1;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {p0, p1}, Li58;->c(Ldd1;Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    move-object p0, v0

    .line 135
    goto :goto_3

    .line 136
    :cond_3
    :goto_2
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 137
    .line 138
    const-string v5, "YandexService"

    .line 139
    .line 140
    const-string v6, "Token refresh successful"

    .line 141
    .line 142
    const/4 v8, 0x4

    .line 143
    const/4 v9, 0x0

    .line 144
    const/4 v7, 0x0

    .line 145
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/TokenCredentials;->getToken()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    goto :goto_4

    .line 153
    :goto_3
    :try_start_2
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 154
    .line 155
    const-string v5, "YandexService"

    .line 156
    .line 157
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    const/4 v8, 0x4

    .line 166
    const/4 v9, 0x0

    .line 167
    const/4 v7, 0x0

    .line 168
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :goto_4
    monitor-exit v2

    .line 173
    return-object p0

    .line 174
    :goto_5
    monitor-exit v2

    .line 175
    throw p0
.end method

.method public final v(Ljava/lang/String;)Lhy8;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljy8;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Liy8;->f:Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iget-object p0, p0, Ljy8;->c:Liy8;

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0, v0}, Liy8;->h(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lhy8;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final w(Ljava/lang/String;)Lqk1;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Ljy8;->v(Ljava/lang/String;)Lhy8;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Lhy8;->g:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance p1, Lokhttp3/Request$Builder;

    .line 16
    .line 17
    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Ljy8;->c:Liy8;

    .line 24
    .line 25
    iget-object p0, p0, Liy8;->a:Luk;

    .line 26
    .line 27
    invoke-virtual {p0}, Luk;->invoke()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string v0, "OAuth "

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object v0, p1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 43
    .line 44
    const-string v2, "Authorization"

    .line 45
    .line 46
    invoke-static {v0, v2, p0, p1}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    sget-object p1, Ljy8;->e:Lokhttp3/OkHttpClient;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v0, Lokhttp3/internal/connection/RealCall;

    .line 56
    .line 57
    invoke-direct {v0, p1, p0}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    iget-boolean p1, p0, Lokhttp3/Response;->H:Z

    .line 65
    .line 66
    if-eqz p1, :cond_0

    .line 67
    .line 68
    iget-object p1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 69
    .line 70
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v0, Lqk1;

    .line 75
    .line 76
    invoke-direct {v0, p0, p1}, Lqk1;-><init>(Lokhttp3/Response;Ljava/io/InputStream;)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_0
    iget p1, p0, Lokhttp3/Response;->d:I

    .line 81
    .line 82
    invoke-static {p0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 83
    .line 84
    .line 85
    const-string p0, "Error while getting Yandex thumbnail. Response code: "

    .line 86
    .line 87
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object v1

    .line 95
    :cond_1
    const-string p0, "Yandex preview URL is unavailable for path="

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object v1
.end method

.method public final y(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljy8;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const-string v4, "YandexService"

    .line 13
    .line 14
    const-string v5, "listStrict: resolvedPath="

    .line 15
    .line 16
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const/16 v4, 0x64

    .line 24
    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    move-object/from16 v7, p0

    .line 34
    .line 35
    iget-object v8, v7, Ljy8;->c:Liy8;

    .line 36
    .line 37
    invoke-virtual {v8, v3, v5, v6}, Liy8;->h(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lhy8;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget-object v3, v3, Lhy8;->h:Ljava/util/List;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v3, 0x0

    .line 47
    :goto_0
    if-nez v3, :cond_2

    .line 48
    .line 49
    sget-object v3, Lov2;->a:Lov2;

    .line 50
    .line 51
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 52
    .line 53
    const/16 v6, 0xa

    .line 54
    .line 55
    invoke-static {v3, v6}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eqz v8, :cond_3

    .line 71
    .line 72
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Lhy8;

    .line 77
    .line 78
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    const/4 v9, 0x1

    .line 82
    new-array v9, v9, [C

    .line 83
    .line 84
    const/16 v10, 0x2f

    .line 85
    .line 86
    aput-char v10, v9, v1

    .line 87
    .line 88
    move-object/from16 v10, p1

    .line 89
    .line 90
    invoke-static {v10, v9}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    iget-object v11, v8, Lhy8;->a:Ljava/lang/String;

    .line 95
    .line 96
    filled-new-array {v9, v11}, [Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-static {v9}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    const/16 v17, 0x3e

    .line 107
    .line 108
    const-string v13, "/"

    .line 109
    .line 110
    const/4 v14, 0x0

    .line 111
    const/4 v15, 0x0

    .line 112
    invoke-static/range {v12 .. v17}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    new-instance v12, Lpg1;

    .line 117
    .line 118
    invoke-direct {v12, v11, v9}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-wide v13, v8, Lhy8;->d:J

    .line 122
    .line 123
    iput-wide v13, v12, Lpg1;->c:J

    .line 124
    .line 125
    iget-wide v13, v8, Lhy8;->e:J

    .line 126
    .line 127
    iput-wide v13, v12, Lpg1;->d:J

    .line 128
    .line 129
    iget-wide v13, v8, Lhy8;->f:J

    .line 130
    .line 131
    iput-wide v13, v12, Lpg1;->e:J

    .line 132
    .line 133
    iget-object v9, v8, Lhy8;->g:Ljava/lang/String;

    .line 134
    .line 135
    iput-object v9, v12, Lpg1;->f:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v8, v8, Lhy8;->c:Ljava/lang/String;

    .line 138
    .line 139
    const-string v9, "dir"

    .line 140
    .line 141
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    iput-boolean v8, v12, Lpg1;->g:Z

    .line 146
    .line 147
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    move-object/from16 v10, p1

    .line 152
    .line 153
    invoke-static {v5, v0}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 154
    .line 155
    .line 156
    add-int/lit8 v2, v2, 0x64

    .line 157
    .line 158
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-ge v3, v4, :cond_0

    .line 163
    .line 164
    return-object v0
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Ljy8;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p2}, Ljy8;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    :try_start_0
    new-array v2, v2, [C

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/16 v4, 0x2f

    .line 14
    .line 15
    aput-char v4, v2, v3

    .line 16
    .line 17
    invoke-static {p2, v2}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, ""

    .line 22
    .line 23
    invoke-static {v4, v2, v3}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-lez v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ljy8;->t(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Ljy8;->c:Liy8;

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Liy8;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    move-object p0, v0

    .line 44
    move-object v3, p0

    .line 45
    const-string p0, "move: Error while moving file from path="

    .line 46
    .line 47
    const-string v0, " to newPath="

    .line 48
    .line 49
    invoke-static {p0, p1, v0, p2}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 54
    .line 55
    const/16 v5, 0x8

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    const-string v1, "YandexService"

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    throw v3
.end method
