.class public final Lokhttp3/internal/connection/RealConnection;
.super Lokhttp3/internal/http2/Http2Connection$Listener;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/Connection;
.implements Lokhttp3/internal/http/ExchangeCodec$Carrier;
.implements Lokhttp3/internal/concurrent/Lockable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/RealConnection$Companion;
    }
.end annotation


# instance fields
.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public final K:Ljava/util/ArrayList;

.field public L:J

.field public final b:Lokhttp3/internal/concurrent/TaskRunner;

.field public final c:Lokhttp3/internal/connection/RealConnectionPool;

.field public final d:Lokhttp3/Route;

.field public final e:Ljava/net/Socket;

.field public final f:Ljava/net/Socket;

.field public final k:Lokhttp3/Handshake;

.field public final n:Lokhttp3/Protocol;

.field public final p:Lokhttp3/internal/connection/BufferedSocket;

.field public final q:I

.field public final r:Lokhttp3/internal/connection/ConnectionListener;

.field public t:Lokhttp3/internal/http2/Http2Connection;

.field public x:Z

.field public y:Z


# direct methods
.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;Ljava/net/Socket;Ljava/net/Socket;Lokhttp3/Handshake;Lokhttp3/Protocol;Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;ILokhttp3/internal/connection/ConnectionListener;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/internal/concurrent/TaskRunner;

    .line 26
    .line 27
    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->c:Lokhttp3/internal/connection/RealConnectionPool;

    .line 28
    .line 29
    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    .line 30
    .line 31
    iput-object p4, p0, Lokhttp3/internal/connection/RealConnection;->e:Ljava/net/Socket;

    .line 32
    .line 33
    iput-object p5, p0, Lokhttp3/internal/connection/RealConnection;->f:Ljava/net/Socket;

    .line 34
    .line 35
    iput-object p6, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Handshake;

    .line 36
    .line 37
    iput-object p7, p0, Lokhttp3/internal/connection/RealConnection;->n:Lokhttp3/Protocol;

    .line 38
    .line 39
    iput-object p8, p0, Lokhttp3/internal/connection/RealConnection;->p:Lokhttp3/internal/connection/BufferedSocket;

    .line 40
    .line 41
    iput p9, p0, Lokhttp3/internal/connection/RealConnection;->q:I

    .line 42
    .line 43
    iput-object p10, p0, Lokhttp3/internal/connection/RealConnection;->r:Lokhttp3/internal/connection/ConnectionListener;

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->J:I

    .line 47
    .line 48
    new-instance p1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->K:Ljava/util/ArrayList;

    .line 54
    .line 55
    const-wide p1, 0x7fffffffffffffffL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    iput-wide p1, p0, Lokhttp3/internal/connection/RealConnection;->L:J

    .line 61
    .line 62
    return-void
.end method

.method public static d(Lokhttp3/OkHttpClient;Lokhttp3/Route;Ljava/io/IOException;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 21
    .line 22
    iget-object v1, v0, Lokhttp3/Address;->g:Ljava/net/ProxySelector;

    .line 23
    .line 24
    iget-object v0, v0, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 25
    .line 26
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->i()Ljava/net/URI;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v2, p1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p0, p0, Lokhttp3/OkHttpClient;->A:Lokhttp3/internal/connection/RouteDatabase;

    .line 40
    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    iget-object p2, p0, Lokhttp3/internal/connection/RouteDatabase;->a:Ljava/util/LinkedHashSet;

    .line 43
    .line 44
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p1
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget p1, p0, Lokhttp3/internal/connection/RealConnection;->J:I

    .line 6
    .line 7
    iget v0, p2, Lokhttp3/internal/http2/Settings;->a:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p2, p2, Lokhttp3/internal/http2/Settings;->b:[I

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    aget p2, p2, v0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const p2, 0x7fffffff

    .line 20
    .line 21
    .line 22
    :goto_0
    iput p2, p0, Lokhttp3/internal/connection/RealConnection;->J:I

    .line 23
    .line 24
    if-ge p2, p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->c:Lokhttp3/internal/connection/RealConnectionPool;

    .line 27
    .line 28
    iget-object p2, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    .line 29
    .line 30
    iget-object p2, p2, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnectionPool;->d:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lokhttp3/internal/connection/RealConnectionPool$AddressState;

    .line 45
    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p1, p2}, Lokhttp3/internal/connection/RealConnectionPool;->b(Lokhttp3/internal/connection/RealConnectionPool$AddressState;)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    throw p1

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    if-le p2, p1, :cond_3

    .line 57
    .line 58
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->c:Lokhttp3/internal/connection/RealConnectionPool;

    .line 59
    .line 60
    iget-object p2, p1, Lokhttp3/internal/connection/RealConnectionPool;->e:Lokhttp3/internal/concurrent/TaskQueue;

    .line 61
    .line 62
    iget-object p1, p1, Lokhttp3/internal/connection/RealConnectionPool;->f:Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;

    .line 63
    .line 64
    const-wide/16 v0, 0x0

    .line 65
    .line 66
    invoke-virtual {p2, p1, v0, v1}, Lokhttp3/internal/concurrent/TaskQueue;->d(Lokhttp3/internal/concurrent/Task;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :goto_2
    monitor-exit p0

    .line 72
    throw p1
.end method

.method public final b(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    instance-of v0, p2, Lokhttp3/internal/http2/StreamResetException;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    move-object v0, p2

    .line 8
    check-cast v0, Lokhttp3/internal/http2/StreamResetException;

    .line 9
    .line 10
    iget-object v0, v0, Lokhttp3/internal/http2/StreamResetException;->a:Lokhttp3/internal/http2/ErrorCode;

    .line 11
    .line 12
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->k:Lokhttp3/internal/http2/ErrorCode;

    .line 13
    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    iget p1, p0, Lokhttp3/internal/connection/RealConnection;->I:I

    .line 17
    .line 18
    add-int/2addr p1, v1

    .line 19
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->I:I

    .line 20
    .line 21
    if-le p1, v1, :cond_6

    .line 22
    .line 23
    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->x:Z

    .line 24
    .line 25
    iget p1, p0, Lokhttp3/internal/connection/RealConnection;->G:I

    .line 26
    .line 27
    add-int/2addr p1, v1

    .line 28
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->G:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    check-cast p2, Lokhttp3/internal/http2/StreamResetException;

    .line 34
    .line 35
    iget-object p2, p2, Lokhttp3/internal/http2/StreamResetException;->a:Lokhttp3/internal/http2/ErrorCode;

    .line 36
    .line 37
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->n:Lokhttp3/internal/http2/ErrorCode;

    .line 38
    .line 39
    if-ne p2, v0, :cond_1

    .line 40
    .line 41
    iget-boolean p1, p1, Lokhttp3/internal/connection/RealCall;->G:Z

    .line 42
    .line 43
    if-nez p1, :cond_6

    .line 44
    .line 45
    :cond_1
    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->x:Z

    .line 46
    .line 47
    iget p1, p0, Lokhttp3/internal/connection/RealConnection;->G:I

    .line 48
    .line 49
    add-int/2addr p1, v1

    .line 50
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->G:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->t:Lokhttp3/internal/http2/Http2Connection;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    move v0, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v0, 0x0

    .line 60
    :goto_0
    if-eqz v0, :cond_4

    .line 61
    .line 62
    instance-of v0, p2, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 63
    .line 64
    if-eqz v0, :cond_6

    .line 65
    .line 66
    :cond_4
    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->x:Z

    .line 67
    .line 68
    iget v0, p0, Lokhttp3/internal/connection/RealConnection;->H:I

    .line 69
    .line 70
    if-nez v0, :cond_6

    .line 71
    .line 72
    if-eqz p2, :cond_5

    .line 73
    .line 74
    iget-object p1, p1, Lokhttp3/internal/connection/RealCall;->a:Lokhttp3/OkHttpClient;

    .line 75
    .line 76
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    .line 77
    .line 78
    invoke-static {p1, v0, p2}, Lokhttp3/internal/connection/RealConnection;->d(Lokhttp3/OkHttpClient;Lokhttp3/Route;Ljava/io/IOException;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget p1, p0, Lokhttp3/internal/connection/RealConnection;->G:I

    .line 82
    .line 83
    add-int/2addr p1, v1

    .line 84
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->G:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    :cond_6
    :goto_1
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :goto_2
    monitor-exit p0

    .line 89
    throw p1
.end method

.method public final c(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 1

    .line 1
    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->k:Lokhttp3/internal/http2/ErrorCode;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p0, v0}, Lokhttp3/internal/http2/Http2Stream;->d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection;->e:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Lokhttp3/Address;Ljava/util/List;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 5
    .line 6
    sget-object v1, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 7
    .line 8
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->K:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget v2, p0, Lokhttp3/internal/connection/RealConnection;->J:I

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-ge v1, v2, :cond_a

    .line 18
    .line 19
    iget-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->x:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    .line 26
    .line 27
    iget-object v2, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 28
    .line 29
    iget-object v4, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Lokhttp3/Address;->a(Lokhttp3/Address;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    iget-object v2, v0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v5, v0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v6, v4, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 44
    .line 45
    iget-object v6, v6, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v2, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->t:Lokhttp3/internal/http2/Http2Connection;

    .line 56
    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_3
    if-eqz p2, :cond_a

    .line 62
    .line 63
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_a

    .line 80
    .line 81
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lokhttp3/Route;

    .line 86
    .line 87
    iget-object v6, v2, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 94
    .line 95
    if-ne v6, v7, :cond_5

    .line 96
    .line 97
    iget-object v6, v1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    if-ne v6, v7, :cond_5

    .line 104
    .line 105
    iget-object v6, v1, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 106
    .line 107
    iget-object v2, v2, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 108
    .line 109
    invoke-static {v6, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    iget-object p2, p1, Lokhttp3/Address;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 116
    .line 117
    sget-object v1, Lokhttp3/internal/tls/OkHostnameVerifier;->a:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 118
    .line 119
    if-eq p2, v1, :cond_6

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_6
    sget-object p2, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 123
    .line 124
    iget-object p2, v4, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 125
    .line 126
    iget v0, v0, Lokhttp3/HttpUrl;->e:I

    .line 127
    .line 128
    iget v1, p2, Lokhttp3/HttpUrl;->e:I

    .line 129
    .line 130
    if-eq v0, v1, :cond_7

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    iget-object p2, p2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v5, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Handshake;

    .line 140
    .line 141
    if-eqz p2, :cond_8

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_8
    iget-boolean p0, p0, Lokhttp3/internal/connection/RealConnection;->y:Z

    .line 145
    .line 146
    if-nez p0, :cond_a

    .line 147
    .line 148
    if-eqz v0, :cond_a

    .line 149
    .line 150
    invoke-virtual {v0}, Lokhttp3/Handshake;->a()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-nez p2, :cond_a

    .line 159
    .line 160
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 168
    .line 169
    invoke-static {v5, p0}, Lokhttp3/internal/tls/OkHostnameVerifier;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    if-eqz p0, :cond_a

    .line 174
    .line 175
    :goto_0
    :try_start_0
    iget-object p0, p1, Lokhttp3/Address;->e:Lokhttp3/CertificatePinner;

    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Lokhttp3/Handshake;->a()Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    iget-object p0, p0, Lokhttp3/CertificatePinner;->a:Ljava/util/Set;

    .line 194
    .line 195
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-nez p1, :cond_9

    .line 204
    .line 205
    :goto_1
    const/4 p0, 0x1

    .line 206
    return p0

    .line 207
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    check-cast p0, Lokhttp3/CertificatePinner$Pin;

    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    const-string p0, "**."

    .line 217
    .line 218
    const/4 p1, 0x0

    .line 219
    invoke-static {p1, p0, v3}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 220
    .line 221
    .line 222
    throw p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :catch_0
    :cond_a
    :goto_2
    return v3
.end method

.method public final f()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public final g(Z)Z
    .locals 7

    .line 1
    sget-object v0, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->e:Ljava/net/Socket;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_5

    .line 15
    .line 16
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->f:Ljava/net/Socket;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_5

    .line 23
    .line 24
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->f:Ljava/net/Socket;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_5

    .line 31
    .line 32
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->f:Ljava/net/Socket;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->t:Lokhttp3/internal/http2/Http2Connection;

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    monitor-enter v2

    .line 47
    :try_start_0
    iget-boolean p0, v2, Lokhttp3/internal/http2/Http2Connection;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    monitor-exit v2

    .line 52
    return v3

    .line 53
    :cond_1
    :try_start_1
    iget-wide p0, v2, Lokhttp3/internal/http2/Http2Connection;->G:J

    .line 54
    .line 55
    iget-wide v5, v2, Lokhttp3/internal/http2/Http2Connection;->y:J

    .line 56
    .line 57
    cmp-long p0, p0, v5

    .line 58
    .line 59
    if-gez p0, :cond_2

    .line 60
    .line 61
    iget-wide p0, v2, Lokhttp3/internal/http2/Http2Connection;->H:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    cmp-long p0, v0, p0

    .line 64
    .line 65
    if-ltz p0, :cond_2

    .line 66
    .line 67
    monitor-exit v2

    .line 68
    return v3

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    monitor-exit v2

    .line 72
    return v4

    .line 73
    :goto_0
    monitor-exit v2

    .line 74
    throw p0

    .line 75
    :cond_3
    monitor-enter p0

    .line 76
    :try_start_2
    iget-wide v5, p0, Lokhttp3/internal/connection/RealConnection;->L:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    .line 78
    sub-long/2addr v0, v5

    .line 79
    monitor-exit p0

    .line 80
    const-wide v5, 0x2540be400L

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    cmp-long v0, v0, v5

    .line 86
    .line 87
    if-ltz v0, :cond_4

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->f:Ljava/net/Socket;

    .line 92
    .line 93
    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection;->p:Lokhttp3/internal/connection/BufferedSocket;

    .line 94
    .line 95
    invoke-interface {p0}, Lokhttp3/internal/connection/BufferedSocket;->getSource()Lzw0;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    :try_start_3
    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    .line 106
    .line 107
    .line 108
    move-result v0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 109
    :try_start_4
    invoke-virtual {p1, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p0}, Lzw0;->x()Z

    .line 113
    .line 114
    .line 115
    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 116
    xor-int/2addr p0, v4

    .line 117
    :try_start_5
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 118
    .line 119
    .line 120
    return p0

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 123
    .line 124
    .line 125
    throw p0
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 126
    :catch_0
    move v3, v4

    .line 127
    :catch_1
    return v3

    .line 128
    :cond_4
    return v4

    .line 129
    :catchall_2
    move-exception p1

    .line 130
    monitor-exit p0

    .line 131
    throw p1

    .line 132
    :cond_5
    :goto_1
    return v3
.end method

.method public final h()Lokhttp3/Route;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lokhttp3/internal/connection/RealConnection;->L:J

    .line 6
    .line 7
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->n:Lokhttp3/Protocol;

    .line 8
    .line 9
    sget-object v1, Lokhttp3/Protocol;->f:Lokhttp3/Protocol;

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    sget-object v1, Lokhttp3/Protocol;->k:Lokhttp3/Protocol;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->f:Ljava/net/Socket;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->r:Lokhttp3/internal/connection/ConnectionListener;

    .line 26
    .line 27
    instance-of v2, v0, Lokhttp3/internal/http2/FlowControlListener;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    check-cast v0, Lokhttp3/internal/http2/FlowControlListener;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_1
    if-nez v0, :cond_3

    .line 36
    .line 37
    sget-object v0, Lokhttp3/internal/http2/FlowControlListener$None;->a:Lokhttp3/internal/http2/FlowControlListener$None;

    .line 38
    .line 39
    :cond_3
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$Builder;

    .line 40
    .line 41
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/internal/concurrent/TaskRunner;

    .line 42
    .line 43
    invoke-direct {v2, v3}, Lokhttp3/internal/http2/Http2Connection$Builder;-><init>(Lokhttp3/internal/concurrent/TaskRunner;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->p:Lokhttp3/internal/connection/BufferedSocket;

    .line 47
    .line 48
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    .line 49
    .line 50
    iget-object v4, v4, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 51
    .line 52
    iget-object v4, v4, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 53
    .line 54
    iget-object v4, v4, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iput-object v3, v2, Lokhttp3/internal/http2/Http2Connection$Builder;->b:Lokhttp3/internal/connection/BufferedSocket;

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    sget-object v5, Lokhttp3/internal/_UtilJvmKt;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const/16 v5, 0x20

    .line 75
    .line 76
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iput-object v3, v2, Lokhttp3/internal/http2/Http2Connection$Builder;->c:Ljava/lang/String;

    .line 87
    .line 88
    iput-object p0, v2, Lokhttp3/internal/http2/Http2Connection$Builder;->d:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 89
    .line 90
    iget v3, p0, Lokhttp3/internal/connection/RealConnection;->q:I

    .line 91
    .line 92
    iput v3, v2, Lokhttp3/internal/http2/Http2Connection$Builder;->f:I

    .line 93
    .line 94
    iput-object v0, v2, Lokhttp3/internal/http2/Http2Connection$Builder;->g:Lokhttp3/internal/http2/FlowControlListener;

    .line 95
    .line 96
    new-instance v0, Lokhttp3/internal/http2/Http2Connection;

    .line 97
    .line 98
    invoke-direct {v0, v2}, Lokhttp3/internal/http2/Http2Connection;-><init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->t:Lokhttp3/internal/http2/Http2Connection;

    .line 102
    .line 103
    sget-object v2, Lokhttp3/internal/http2/Http2Connection;->S:Lokhttp3/internal/http2/Settings;

    .line 104
    .line 105
    iget v3, v2, Lokhttp3/internal/http2/Settings;->a:I

    .line 106
    .line 107
    and-int/lit8 v3, v3, 0x8

    .line 108
    .line 109
    if-eqz v3, :cond_4

    .line 110
    .line 111
    iget-object v2, v2, Lokhttp3/internal/http2/Settings;->b:[I

    .line 112
    .line 113
    const/4 v3, 0x3

    .line 114
    aget v2, v2, v3

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const v2, 0x7fffffff

    .line 118
    .line 119
    .line 120
    :goto_2
    iput v2, p0, Lokhttp3/internal/connection/RealConnection;->J:I

    .line 121
    .line 122
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 123
    .line 124
    const-string v2, ">> CONNECTION "

    .line 125
    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Writer;->d:Z

    .line 128
    .line 129
    if-nez v3, :cond_b

    .line 130
    .line 131
    sget-object v3, Lokhttp3/internal/http2/Http2Writer;->f:Ljava/util/logging/Logger;

    .line 132
    .line 133
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_5

    .line 140
    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    sget-object v2, Lokhttp3/internal/http2/Http2;->a:Lhy0;

    .line 147
    .line 148
    invoke-virtual {v2}, Lhy0;->e()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    new-array v4, v1, [Ljava/lang/Object;

    .line 160
    .line 161
    invoke-static {v2, v4}, Lokhttp3/internal/_UtilJvmKt;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    goto/16 :goto_8

    .line 171
    .line 172
    :cond_5
    :goto_3
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Writer;->a:Lyw0;

    .line 173
    .line 174
    sget-object v3, Lokhttp3/internal/http2/Http2;->a:Lhy0;

    .line 175
    .line 176
    invoke-interface {v2, v3}, Lyw0;->P(Lhy0;)Lyw0;

    .line 177
    .line 178
    .line 179
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Writer;->a:Lyw0;

    .line 180
    .line 181
    invoke-interface {v2}, Lyw0;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .line 183
    .line 184
    monitor-exit p0

    .line 185
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 186
    .line 187
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->J:Lokhttp3/internal/http2/Settings;

    .line 188
    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    monitor-enter p0

    .line 196
    :try_start_1
    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Writer;->d:Z

    .line 197
    .line 198
    if-nez v3, :cond_a

    .line 199
    .line 200
    iget v3, v2, Lokhttp3/internal/http2/Settings;->a:I

    .line 201
    .line 202
    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    const/4 v4, 0x6

    .line 207
    mul-int/2addr v3, v4

    .line 208
    const/4 v5, 0x4

    .line 209
    invoke-virtual {p0, v1, v3, v5, v1}, Lokhttp3/internal/http2/Http2Writer;->g(IIII)V

    .line 210
    .line 211
    .line 212
    move v3, v1

    .line 213
    :goto_4
    const/16 v5, 0xa

    .line 214
    .line 215
    if-ge v3, v5, :cond_8

    .line 216
    .line 217
    const/4 v5, 0x1

    .line 218
    shl-int v6, v5, v3

    .line 219
    .line 220
    iget v7, v2, Lokhttp3/internal/http2/Settings;->a:I

    .line 221
    .line 222
    and-int/2addr v6, v7

    .line 223
    if-eqz v6, :cond_6

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_6
    move v5, v1

    .line 227
    :goto_5
    if-eqz v5, :cond_7

    .line 228
    .line 229
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Writer;->a:Lyw0;

    .line 230
    .line 231
    invoke-interface {v5, v3}, Lyw0;->writeShort(I)Lyw0;

    .line 232
    .line 233
    .line 234
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Writer;->a:Lyw0;

    .line 235
    .line 236
    iget-object v6, v2, Lokhttp3/internal/http2/Settings;->b:[I

    .line 237
    .line 238
    aget v6, v6, v3

    .line 239
    .line 240
    invoke-interface {v5, v6}, Lyw0;->writeInt(I)Lyw0;

    .line 241
    .line 242
    .line 243
    goto :goto_6

    .line 244
    :catchall_1
    move-exception v0

    .line 245
    goto :goto_7

    .line 246
    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_8
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Writer;->a:Lyw0;

    .line 250
    .line 251
    invoke-interface {v2}, Lyw0;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    .line 253
    .line 254
    monitor-exit p0

    .line 255
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->J:Lokhttp3/internal/http2/Settings;

    .line 256
    .line 257
    invoke-virtual {p0}, Lokhttp3/internal/http2/Settings;->a()I

    .line 258
    .line 259
    .line 260
    move-result p0

    .line 261
    const v2, 0xffff

    .line 262
    .line 263
    .line 264
    if-eq p0, v2, :cond_9

    .line 265
    .line 266
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 267
    .line 268
    sub-int/2addr p0, v2

    .line 269
    int-to-long v5, p0

    .line 270
    invoke-virtual {v3, v1, v5, v6}, Lokhttp3/internal/http2/Http2Writer;->q(IJ)V

    .line 271
    .line 272
    .line 273
    :cond_9
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->k:Lokhttp3/internal/concurrent/TaskRunner;

    .line 274
    .line 275
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskRunner;->d()Lokhttp3/internal/concurrent/TaskQueue;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/lang/String;

    .line 280
    .line 281
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->Q:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 282
    .line 283
    invoke-static {p0, v1, v0, v4}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lbt3;I)V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :cond_a
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    .line 288
    .line 289
    const-string v1, "closed"

    .line 290
    .line 291
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 295
    :goto_7
    monitor-exit p0

    .line 296
    throw v0

    .line 297
    :cond_b
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 298
    .line 299
    const-string v1, "closed"

    .line 300
    .line 301
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 305
    :goto_8
    monitor-exit p0

    .line 306
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Connection{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    .line 9
    .line 10
    iget-object v2, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 11
    .line 12
    iget-object v2, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 13
    .line 14
    iget-object v2, v2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v2, 0x3a

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 25
    .line 26
    iget-object v2, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 27
    .line 28
    iget v2, v2, Lokhttp3/HttpUrl;->e:I

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", proxy="

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, v1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " hostAddress="

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, v1, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " cipherSuite="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Handshake;

    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    iget-object v1, v1, Lokhttp3/Handshake;->b:Lokhttp3/CipherSuite;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const-string v1, "none"

    .line 66
    .line 67
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, " protocol="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection;->n:Lokhttp3/Protocol;

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/16 p0, 0x7d

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method
