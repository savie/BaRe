.class public abstract Lcom/microsoft/identity/common/internal/net/cache/HttpCache;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static declared-synchronized initialize(Ljava/io/File;)Z
    .locals 7

    .line 1
    const-string v0, "com.microsoft.identity.http-cache"

    .line 2
    .line 3
    const-class v1, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string v2, "HttpCache:initialize"

    .line 7
    .line 8
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    .line 9
    .line 10
    .line 11
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    monitor-exit v1

    .line 16
    return v4

    .line 17
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {v3, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-wide/32 v5, 0xa00000

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v5, v6}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception p0

    .line 32
    :try_start_2
    const-string v0, "HTTP Response cache installation failed."

    .line 33
    .line 34
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 35
    .line 36
    invoke-static {v2, v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_0
    new-instance p0, Lcom/microsoft/identity/common/internal/net/cache/HttpCache$1;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Lcom/microsoft/identity/common/java/cache/HttpCache;->setHttpCache(Lcom/microsoft/identity/common/java/cache/HttpCache$IHttpCacheCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit v1

    .line 49
    return v4

    .line 50
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    throw p0
.end method

.method public static declared-synchronized initialize$1(Ljava/io/File;)Z
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;->initialize(Ljava/io/File;)Z

    .line 5
    .line 6
    .line 7
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p0
.end method
