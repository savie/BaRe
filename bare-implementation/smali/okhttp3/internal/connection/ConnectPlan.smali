.class public final Lokhttp3/internal/connection/ConnectPlan;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/connection/RoutePlanner$Plan;
.implements Lokhttp3/internal/http/ExchangeCodec$Carrier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/ConnectPlan$Companion;,
        Lokhttp3/internal/connection/ConnectPlan$WhenMappings;
    }
.end annotation


# instance fields
.field public final G:I

.field public final H:Z

.field public volatile I:Z

.field public J:Ljava/net/Socket;

.field public K:Ljava/net/Socket;

.field public L:Lokhttp3/Handshake;

.field public M:Lokhttp3/Protocol;

.field public N:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

.field public O:Lokhttp3/internal/connection/RealConnection;

.field public final a:Lokhttp3/internal/concurrent/TaskRunner;

.field public final b:Lokhttp3/internal/connection/RealConnectionPool;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final k:I

.field public final n:Z

.field public final p:Lokhttp3/internal/connection/ConnectionUser;

.field public final q:Lokhttp3/internal/connection/RealRoutePlanner;

.field public final r:Lokhttp3/Route;

.field public final t:Ljava/util/List;

.field public final x:I

.field public final y:Lokhttp3/Request;


# direct methods
.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZLokhttp3/internal/connection/ConnectionUser;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZ)V
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
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lokhttp3/internal/connection/ConnectPlan;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 17
    .line 18
    iput-object p2, p0, Lokhttp3/internal/connection/ConnectPlan;->b:Lokhttp3/internal/connection/RealConnectionPool;

    .line 19
    .line 20
    iput p3, p0, Lokhttp3/internal/connection/ConnectPlan;->c:I

    .line 21
    .line 22
    iput p4, p0, Lokhttp3/internal/connection/ConnectPlan;->d:I

    .line 23
    .line 24
    iput p5, p0, Lokhttp3/internal/connection/ConnectPlan;->e:I

    .line 25
    .line 26
    iput p6, p0, Lokhttp3/internal/connection/ConnectPlan;->f:I

    .line 27
    .line 28
    iput p7, p0, Lokhttp3/internal/connection/ConnectPlan;->k:I

    .line 29
    .line 30
    iput-boolean p8, p0, Lokhttp3/internal/connection/ConnectPlan;->n:Z

    .line 31
    .line 32
    iput-object p9, p0, Lokhttp3/internal/connection/ConnectPlan;->p:Lokhttp3/internal/connection/ConnectionUser;

    .line 33
    .line 34
    iput-object p10, p0, Lokhttp3/internal/connection/ConnectPlan;->q:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 35
    .line 36
    iput-object p11, p0, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 37
    .line 38
    iput-object p12, p0, Lokhttp3/internal/connection/ConnectPlan;->t:Ljava/util/List;

    .line 39
    .line 40
    iput p13, p0, Lokhttp3/internal/connection/ConnectPlan;->x:I

    .line 41
    .line 42
    iput-object p14, p0, Lokhttp3/internal/connection/ConnectPlan;->y:Lokhttp3/Request;

    .line 43
    .line 44
    iput p15, p0, Lokhttp3/internal/connection/ConnectPlan;->G:I

    .line 45
    .line 46
    move/from16 p1, p16

    .line 47
    .line 48
    iput-boolean p1, p0, Lokhttp3/internal/connection/ConnectPlan;->H:Z

    .line 49
    .line 50
    return-void
.end method

.method public static l(Lokhttp3/internal/connection/ConnectPlan;ILokhttp3/Request;IZI)Lokhttp3/internal/connection/ConnectPlan;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    and-int/lit8 v1, p5, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lokhttp3/internal/connection/ConnectPlan;->x:I

    .line 8
    .line 9
    move v15, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move/from16 v15, p1

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, p5, 0x2

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lokhttp3/internal/connection/ConnectPlan;->y:Lokhttp3/Request;

    .line 18
    .line 19
    move-object/from16 v16, v1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object/from16 v16, p2

    .line 23
    .line 24
    :goto_1
    and-int/lit8 v1, p5, 0x4

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget v1, v0, Lokhttp3/internal/connection/ConnectPlan;->G:I

    .line 29
    .line 30
    move/from16 v17, v1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move/from16 v17, p3

    .line 34
    .line 35
    :goto_2
    and-int/lit8 v1, p5, 0x8

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget-boolean v1, v0, Lokhttp3/internal/connection/ConnectPlan;->H:Z

    .line 40
    .line 41
    move/from16 v18, v1

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    move/from16 v18, p4

    .line 45
    .line 46
    :goto_3
    new-instance v2, Lokhttp3/internal/connection/ConnectPlan;

    .line 47
    .line 48
    iget-object v3, v0, Lokhttp3/internal/connection/ConnectPlan;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 49
    .line 50
    iget-object v4, v0, Lokhttp3/internal/connection/ConnectPlan;->b:Lokhttp3/internal/connection/RealConnectionPool;

    .line 51
    .line 52
    iget v5, v0, Lokhttp3/internal/connection/ConnectPlan;->c:I

    .line 53
    .line 54
    iget v6, v0, Lokhttp3/internal/connection/ConnectPlan;->d:I

    .line 55
    .line 56
    iget v7, v0, Lokhttp3/internal/connection/ConnectPlan;->e:I

    .line 57
    .line 58
    iget v8, v0, Lokhttp3/internal/connection/ConnectPlan;->f:I

    .line 59
    .line 60
    iget v9, v0, Lokhttp3/internal/connection/ConnectPlan;->k:I

    .line 61
    .line 62
    iget-boolean v10, v0, Lokhttp3/internal/connection/ConnectPlan;->n:Z

    .line 63
    .line 64
    iget-object v11, v0, Lokhttp3/internal/connection/ConnectPlan;->p:Lokhttp3/internal/connection/ConnectionUser;

    .line 65
    .line 66
    iget-object v12, v0, Lokhttp3/internal/connection/ConnectPlan;->q:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 67
    .line 68
    iget-object v13, v0, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 69
    .line 70
    iget-object v14, v0, Lokhttp3/internal/connection/ConnectPlan;->t:Ljava/util/List;

    .line 71
    .line 72
    invoke-direct/range {v2 .. v18}, Lokhttp3/internal/connection/ConnectPlan;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZLokhttp3/internal/connection/ConnectionUser;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZ)V

    .line 73
    .line 74
    .line 75
    return-object v2
.end method


# virtual methods
.method public final a()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lokhttp3/internal/connection/ConnectPlan;

    .line 4
    .line 5
    iget v15, v0, Lokhttp3/internal/connection/ConnectPlan;->G:I

    .line 6
    .line 7
    iget-boolean v2, v0, Lokhttp3/internal/connection/ConnectPlan;->H:Z

    .line 8
    .line 9
    move-object v3, v1

    .line 10
    iget-object v1, v0, Lokhttp3/internal/connection/ConnectPlan;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 11
    .line 12
    move/from16 v16, v2

    .line 13
    .line 14
    iget-object v2, v0, Lokhttp3/internal/connection/ConnectPlan;->b:Lokhttp3/internal/connection/RealConnectionPool;

    .line 15
    .line 16
    move-object v4, v3

    .line 17
    iget v3, v0, Lokhttp3/internal/connection/ConnectPlan;->c:I

    .line 18
    .line 19
    move-object v5, v4

    .line 20
    iget v4, v0, Lokhttp3/internal/connection/ConnectPlan;->d:I

    .line 21
    .line 22
    move-object v6, v5

    .line 23
    iget v5, v0, Lokhttp3/internal/connection/ConnectPlan;->e:I

    .line 24
    .line 25
    move-object v7, v6

    .line 26
    iget v6, v0, Lokhttp3/internal/connection/ConnectPlan;->f:I

    .line 27
    .line 28
    move-object v8, v7

    .line 29
    iget v7, v0, Lokhttp3/internal/connection/ConnectPlan;->k:I

    .line 30
    .line 31
    move-object v9, v8

    .line 32
    iget-boolean v8, v0, Lokhttp3/internal/connection/ConnectPlan;->n:Z

    .line 33
    .line 34
    move-object v10, v9

    .line 35
    iget-object v9, v0, Lokhttp3/internal/connection/ConnectPlan;->p:Lokhttp3/internal/connection/ConnectionUser;

    .line 36
    .line 37
    move-object v11, v10

    .line 38
    iget-object v10, v0, Lokhttp3/internal/connection/ConnectPlan;->q:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 39
    .line 40
    move-object v12, v11

    .line 41
    iget-object v11, v0, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 42
    .line 43
    move-object v13, v12

    .line 44
    iget-object v12, v0, Lokhttp3/internal/connection/ConnectPlan;->t:Ljava/util/List;

    .line 45
    .line 46
    move-object v14, v13

    .line 47
    iget v13, v0, Lokhttp3/internal/connection/ConnectPlan;->x:I

    .line 48
    .line 49
    iget-object v0, v0, Lokhttp3/internal/connection/ConnectPlan;->y:Lokhttp3/Request;

    .line 50
    .line 51
    move-object/from16 v17, v14

    .line 52
    .line 53
    move-object v14, v0

    .line 54
    move-object/from16 v0, v17

    .line 55
    .line 56
    invoke-direct/range {v0 .. v16}, Lokhttp3/internal/connection/ConnectPlan;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZLokhttp3/internal/connection/ConnectionUser;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZ)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method public final b(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()Lokhttp3/internal/connection/RealConnection;
    .locals 5

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->p:Lokhttp3/internal/connection/ConnectionUser;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lokhttp3/internal/connection/ConnectionUser;->u(Lokhttp3/Route;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->O:Lokhttp3/internal/connection/RealConnection;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->p:Lokhttp3/internal/connection/ConnectionUser;

    .line 14
    .line 15
    iget-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 16
    .line 17
    invoke-interface {v1, v0, v2}, Lokhttp3/internal/connection/ConnectionUser;->t(Lokhttp3/Connection;Lokhttp3/Route;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->q:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 21
    .line 22
    iget-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->t:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {v1, p0, v2}, Lokhttp3/internal/connection/RealRoutePlanner;->i(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object p0, v1, Lokhttp3/internal/connection/ReusePlan;->a:Lokhttp3/internal/connection/RealConnection;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->b:Lokhttp3/internal/connection/RealConnectionPool;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v2, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 40
    .line 41
    iget-object v2, v1, Lokhttp3/internal/connection/RealConnectionPool;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object v2, v1, Lokhttp3/internal/connection/RealConnectionPool;->e:Lokhttp3/internal/concurrent/TaskQueue;

    .line 47
    .line 48
    iget-object v1, v1, Lokhttp3/internal/connection/RealConnectionPool;->f:Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;

    .line 49
    .line 50
    const-wide/16 v3, 0x0

    .line 51
    .line 52
    invoke-virtual {v2, v1, v3, v4}, Lokhttp3/internal/concurrent/TaskQueue;->d(Lokhttp3/internal/concurrent/Task;J)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->p:Lokhttp3/internal/connection/ConnectionUser;

    .line 56
    .line 57
    invoke-interface {v1, v0}, Lokhttp3/internal/connection/ConnectionUser;->b(Lokhttp3/internal/connection/RealConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->p:Lokhttp3/internal/connection/ConnectionUser;

    .line 62
    .line 63
    invoke-interface {v1, v0}, Lokhttp3/internal/connection/ConnectionUser;->v(Lokhttp3/Connection;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lokhttp3/internal/connection/ConnectPlan;->p:Lokhttp3/internal/connection/ConnectionUser;

    .line 67
    .line 68
    invoke-interface {p0, v0}, Lokhttp3/internal/connection/ConnectionUser;->e(Lokhttp3/internal/connection/RealConnection;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0

    .line 74
    throw p0
.end method

.method public final cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokhttp3/internal/connection/ConnectPlan;->I:Z

    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/internal/connection/ConnectPlan;->J:Ljava/net/Socket;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/ConnectPlan;->M:Lokhttp3/Protocol;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final e()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 8

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->J:Ljava/net/Socket;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->p:Lokhttp3/internal/connection/ConnectionUser;

    .line 9
    .line 10
    invoke-interface {v1, p0}, Lokhttp3/internal/connection/ConnectionUser;->x(Lokhttp3/internal/connection/ConnectPlan;)V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    :try_start_0
    invoke-interface {v1, v0}, Lokhttp3/internal/connection/ConnectionUser;->w(Lokhttp3/Route;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lokhttp3/internal/connection/ConnectPlan;->i()V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    new-instance v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 22
    .line 23
    const/4 v5, 0x6

    .line 24
    invoke-direct {v4, p0, v2, v2, v5}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/ConnectPlan;Ljava/lang/Throwable;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, p0}, Lokhttp3/internal/connection/ConnectionUser;->i(Lokhttp3/internal/connection/ConnectPlan;)V

    .line 28
    .line 29
    .line 30
    return-object v4

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v4

    .line 34
    :try_start_1
    iget-object v5, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v5, v0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 46
    .line 47
    if-eq v5, v6, :cond_0

    .line 48
    .line 49
    iget-object v5, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 50
    .line 51
    iget-object v6, v5, Lokhttp3/Address;->g:Ljava/net/ProxySelector;

    .line 52
    .line 53
    iget-object v5, v5, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 54
    .line 55
    invoke-virtual {v5}, Lokhttp3/HttpUrl;->i()Ljava/net/URI;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget-object v7, v0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v6, v5, v7, v4}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-interface {v1, v0, v4}, Lokhttp3/internal/connection/ConnectionUser;->j(Lokhttp3/Route;Ljava/io/IOException;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 72
    .line 73
    const/4 v5, 0x2

    .line 74
    invoke-direct {v0, p0, v2, v4, v5}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/ConnectPlan;Ljava/lang/Throwable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, p0}, Lokhttp3/internal/connection/ConnectionUser;->i(Lokhttp3/internal/connection/ConnectPlan;)V

    .line 78
    .line 79
    .line 80
    if-nez v3, :cond_1

    .line 81
    .line 82
    iget-object p0, p0, Lokhttp3/internal/connection/ConnectPlan;->J:Ljava/net/Socket;

    .line 83
    .line 84
    if-eqz p0, :cond_1

    .line 85
    .line 86
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    return-object v0

    .line 90
    :goto_0
    invoke-interface {v1, p0}, Lokhttp3/internal/connection/ConnectionUser;->i(Lokhttp3/internal/connection/ConnectPlan;)V

    .line 91
    .line 92
    .line 93
    if-nez v3, :cond_2

    .line 94
    .line 95
    iget-object p0, p0, Lokhttp3/internal/connection/ConnectPlan;->J:Ljava/net/Socket;

    .line 96
    .line 97
    if-eqz p0, :cond_2

    .line 98
    .line 99
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    throw v0

    .line 103
    :cond_3
    const-string p0, "TCP already connected"

    .line 104
    .line 105
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-object v2
.end method

.method public final f()V
    .locals 0

    .line 1
    return-void
.end method

.method public final g()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v6, v1, Lokhttp3/internal/connection/ConnectPlan;->J:Ljava/net/Socket;

    .line 4
    .line 5
    const/4 v13, 0x0

    .line 6
    if-eqz v6, :cond_13

    .line 7
    .line 8
    invoke-virtual {v1}, Lokhttp3/internal/connection/ConnectPlan;->d()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_12

    .line 13
    .line 14
    iget-object v14, v1, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 15
    .line 16
    iget-object v0, v14, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 17
    .line 18
    iget-object v2, v14, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 19
    .line 20
    iget-object v0, v0, Lokhttp3/Address;->j:Ljava/util/List;

    .line 21
    .line 22
    iget-object v15, v1, Lokhttp3/internal/connection/ConnectPlan;->p:Lokhttp3/internal/connection/ConnectionUser;

    .line 23
    .line 24
    invoke-interface {v15, v1}, Lokhttp3/internal/connection/ConnectionUser;->x(Lokhttp3/internal/connection/ConnectPlan;)V

    .line 25
    .line 26
    .line 27
    const/16 v16, 0x0

    .line 28
    .line 29
    :try_start_0
    iget-object v3, v1, Lokhttp3/internal/connection/ConnectPlan;->y:Lokhttp3/Request;

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Lokhttp3/internal/connection/ConnectPlan;->k()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, v3, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->b:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 38
    .line 39
    if-nez v4, :cond_0

    .line 40
    .line 41
    iget-object v4, v3, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->c:Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :catch_0
    move-exception v0

    .line 50
    move-object v8, v13

    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_0
    :goto_0
    invoke-interface {v15, v1}, Lokhttp3/internal/connection/ConnectionUser;->i(Lokhttp3/internal/connection/ConnectPlan;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->K:Ljava/net/Socket;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 64
    .line 65
    .line 66
    return-object v3

    .line 67
    :cond_2
    :try_start_1
    iget-object v3, v2, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    const-string v5, "socket"

    .line 71
    .line 72
    if-eqz v3, :cond_6

    .line 73
    .line 74
    :try_start_2
    iget-object v3, v1, Lokhttp3/internal/connection/ConnectPlan;->N:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 75
    .line 76
    if-eqz v3, :cond_5

    .line 77
    .line 78
    iget-object v3, v3, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->b:Ltf6;

    .line 79
    .line 80
    iget-object v3, v3, Ltf6;->b:Lnw0;

    .line 81
    .line 82
    invoke-virtual {v3}, Lnw0;->x()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    iget-object v3, v1, Lokhttp3/internal/connection/ConnectPlan;->N:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 89
    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    iget-object v3, v3, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->c:Lrf6;

    .line 93
    .line 94
    iget-object v3, v3, Lrf6;->b:Lnw0;

    .line 95
    .line 96
    invoke-virtual {v3}, Lnw0;->x()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    invoke-interface {v15}, Lokhttp3/internal/connection/ConnectionUser;->m()V

    .line 103
    .line 104
    .line 105
    iget-object v3, v2, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 106
    .line 107
    iget-object v2, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 108
    .line 109
    iget-object v7, v2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 110
    .line 111
    iget v2, v2, Lokhttp3/HttpUrl;->e:I

    .line 112
    .line 113
    invoke-virtual {v3, v6, v7, v2, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 121
    .line 122
    invoke-virtual {v1, v0, v2}, Lokhttp3/internal/connection/ConnectPlan;->n(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    iget v7, v3, Lokhttp3/internal/connection/ConnectPlan;->G:I

    .line 127
    .line 128
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    check-cast v7, Lokhttp3/ConnectionSpec;

    .line 133
    .line 134
    invoke-virtual {v3, v0, v2}, Lokhttp3/internal/connection/ConnectPlan;->m(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;

    .line 135
    .line 136
    .line 137
    move-result-object v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :try_start_3
    iget-boolean v0, v3, Lokhttp3/internal/connection/ConnectPlan;->H:Z

    .line 139
    .line 140
    invoke-virtual {v7, v2, v0}, Lokhttp3/ConnectionSpec;->a(Ljavax/net/ssl/SSLSocket;Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2, v7}, Lokhttp3/internal/connection/ConnectPlan;->j(Ljavax/net/ssl/SSLSocket;Lokhttp3/ConnectionSpec;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v15}, Lokhttp3/internal/connection/ConnectionUser;->q()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    .line 148
    .line 149
    move-object/from16 v17, v8

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :catch_1
    move-exception v0

    .line 153
    goto/16 :goto_3

    .line 154
    .line 155
    :cond_3
    :try_start_4
    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v13

    .line 159
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 160
    .line 161
    const-string v2, "TLS tunnel buffered too many bytes!"

    .line 162
    .line 163
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_5
    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v13

    .line 171
    :cond_6
    iput-object v6, v1, Lokhttp3/internal/connection/ConnectPlan;->K:Ljava/net/Socket;

    .line 172
    .line 173
    iget-object v0, v2, Lokhttp3/Address;->i:Ljava/util/List;

    .line 174
    .line 175
    sget-object v2, Lokhttp3/Protocol;->k:Lokhttp3/Protocol;

    .line 176
    .line 177
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_7

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_7
    sget-object v2, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    .line 185
    .line 186
    :goto_1
    iput-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->M:Lokhttp3/Protocol;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    .line 188
    move-object/from16 v17, v13

    .line 189
    .line 190
    :goto_2
    :try_start_5
    new-instance v2, Lokhttp3/internal/connection/RealConnection;

    .line 191
    .line 192
    iget-object v3, v1, Lokhttp3/internal/connection/ConnectPlan;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 193
    .line 194
    move v7, v4

    .line 195
    iget-object v4, v1, Lokhttp3/internal/connection/ConnectPlan;->b:Lokhttp3/internal/connection/RealConnectionPool;

    .line 196
    .line 197
    move-object v0, v5

    .line 198
    iget-object v5, v1, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 199
    .line 200
    move v8, v7

    .line 201
    iget-object v7, v1, Lokhttp3/internal/connection/ConnectPlan;->K:Ljava/net/Socket;

    .line 202
    .line 203
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    move v9, v8

    .line 207
    iget-object v8, v1, Lokhttp3/internal/connection/ConnectPlan;->L:Lokhttp3/Handshake;

    .line 208
    .line 209
    move v10, v9

    .line 210
    iget-object v9, v1, Lokhttp3/internal/connection/ConnectPlan;->M:Lokhttp3/Protocol;

    .line 211
    .line 212
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    move v11, v10

    .line 216
    iget-object v10, v1, Lokhttp3/internal/connection/ConnectPlan;->N:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 217
    .line 218
    if-eqz v10, :cond_8

    .line 219
    .line 220
    move v12, v11

    .line 221
    iget v11, v1, Lokhttp3/internal/connection/ConnectPlan;->k:I

    .line 222
    .line 223
    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->b:Lokhttp3/internal/connection/RealConnectionPool;

    .line 224
    .line 225
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->b:Lokhttp3/internal/connection/ConnectionListener;

    .line 226
    .line 227
    move/from16 v18, v12

    .line 228
    .line 229
    move-object v12, v0

    .line 230
    invoke-direct/range {v2 .. v12}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;Ljava/net/Socket;Ljava/net/Socket;Lokhttp3/Handshake;Lokhttp3/Protocol;Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;ILokhttp3/internal/connection/ConnectionListener;)V

    .line 231
    .line 232
    .line 233
    iput-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->O:Lokhttp3/internal/connection/RealConnection;

    .line 234
    .line 235
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->i()V

    .line 236
    .line 237
    .line 238
    invoke-interface {v15, v14}, Lokhttp3/internal/connection/ConnectionUser;->o(Lokhttp3/Route;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 239
    .line 240
    .line 241
    :try_start_6
    new-instance v0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 242
    .line 243
    const/4 v2, 0x6

    .line 244
    invoke-direct {v0, v1, v13, v13, v2}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/ConnectPlan;Ljava/lang/Throwable;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 245
    .line 246
    .line 247
    invoke-interface {v15, v1}, Lokhttp3/internal/connection/ConnectionUser;->i(Lokhttp3/internal/connection/ConnectPlan;)V

    .line 248
    .line 249
    .line 250
    return-object v0

    .line 251
    :catchall_1
    move-exception v0

    .line 252
    move/from16 v16, v18

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :catch_2
    move-exception v0

    .line 256
    move-object/from16 v8, v17

    .line 257
    .line 258
    move/from16 v16, v18

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :catch_3
    move-exception v0

    .line 262
    move-object/from16 v8, v17

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_8
    :try_start_7
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v13
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 269
    :goto_3
    :try_start_8
    invoke-interface {v15, v14, v0}, Lokhttp3/internal/connection/ConnectionUser;->j(Lokhttp3/Route;Ljava/io/IOException;)V

    .line 270
    .line 271
    .line 272
    iget-boolean v2, v1, Lokhttp3/internal/connection/ConnectPlan;->n:Z

    .line 273
    .line 274
    if-eqz v2, :cond_d

    .line 275
    .line 276
    instance-of v2, v0, Ljava/net/ProtocolException;

    .line 277
    .line 278
    if-eqz v2, :cond_9

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_9
    instance-of v2, v0, Ljava/io/InterruptedIOException;

    .line 282
    .line 283
    if-eqz v2, :cond_a

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_a
    instance-of v2, v0, Ljavax/net/ssl/SSLHandshakeException;

    .line 287
    .line 288
    if-eqz v2, :cond_b

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    instance-of v2, v2, Ljava/security/cert/CertificateException;

    .line 295
    .line 296
    if-eqz v2, :cond_b

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_b
    instance-of v2, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 300
    .line 301
    if-eqz v2, :cond_c

    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_c
    instance-of v2, v0, Ljavax/net/ssl/SSLException;

    .line 305
    .line 306
    if-eqz v2, :cond_d

    .line 307
    .line 308
    move-object v13, v8

    .line 309
    :cond_d
    :goto_4
    new-instance v2, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 310
    .line 311
    invoke-direct {v2, v1, v13, v0}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/RoutePlanner$Plan;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 312
    .line 313
    .line 314
    invoke-interface {v15, v1}, Lokhttp3/internal/connection/ConnectionUser;->i(Lokhttp3/internal/connection/ConnectPlan;)V

    .line 315
    .line 316
    .line 317
    if-nez v16, :cond_f

    .line 318
    .line 319
    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->K:Ljava/net/Socket;

    .line 320
    .line 321
    if-eqz v0, :cond_e

    .line 322
    .line 323
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 324
    .line 325
    .line 326
    :cond_e
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 327
    .line 328
    .line 329
    :cond_f
    return-object v2

    .line 330
    :goto_5
    invoke-interface {v15, v1}, Lokhttp3/internal/connection/ConnectionUser;->i(Lokhttp3/internal/connection/ConnectPlan;)V

    .line 331
    .line 332
    .line 333
    if-nez v16, :cond_11

    .line 334
    .line 335
    iget-object v1, v1, Lokhttp3/internal/connection/ConnectPlan;->K:Ljava/net/Socket;

    .line 336
    .line 337
    if-eqz v1, :cond_10

    .line 338
    .line 339
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 340
    .line 341
    .line 342
    :cond_10
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 343
    .line 344
    .line 345
    :cond_11
    throw v0

    .line 346
    :cond_12
    const-string v0, "already connected"

    .line 347
    .line 348
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    return-object v13

    .line 352
    :cond_13
    const-string v0, "TCP not connected"

    .line 353
    .line 354
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    return-object v13
.end method

.method public final h()Lokhttp3/Route;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 2
    .line 3
    iget-object v0, v0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lokhttp3/internal/connection/ConnectPlan$WhenMappings;->a:[I

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    aget v0, v1, v0

    .line 20
    .line 21
    :goto_0
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/net/Socket;

    .line 28
    .line 29
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 30
    .line 31
    iget-object v1, v1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 38
    .line 39
    iget-object v0, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 40
    .line 41
    iget-object v0, v0, Lokhttp3/Address;->b:Ljavax/net/SocketFactory;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    :goto_1
    iput-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->J:Ljava/net/Socket;

    .line 51
    .line 52
    iget-boolean v1, p0, Lokhttp3/internal/connection/ConnectPlan;->I:Z

    .line 53
    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    iget v1, p0, Lokhttp3/internal/connection/ConnectPlan;->f:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 62
    .line 63
    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 64
    .line 65
    iget-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 66
    .line 67
    iget-object v2, v2, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 68
    .line 69
    iget v3, p0, Lokhttp3/internal/connection/ConnectPlan;->e:I

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2, v3}, Lokhttp3/internal/platform/Platform;->f(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .line 73
    .line 74
    :try_start_1
    new-instance v1, Ll40;

    .line 75
    .line 76
    invoke-direct {v1, v0}, Ll40;-><init>(Ljava/net/Socket;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 80
    .line 81
    invoke-direct {v0, v1}, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;-><init>(Ll40;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->N:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    .line 86
    return-void

    .line 87
    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "throw with null exception"

    .line 93
    .line 94
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    return-void

    .line 101
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 102
    .line 103
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :catch_1
    move-exception v0

    .line 108
    new-instance v1, Ljava/net/ConnectException;

    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v3, "Failed to connect to "

    .line 113
    .line 114
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 118
    .line 119
    iget-object p0, p0, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 120
    .line 121
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-direct {v1, p0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 132
    .line 133
    .line 134
    throw v1

    .line 135
    :cond_3
    const-string p0, "canceled"

    .line 136
    .line 137
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final j(Ljavax/net/ssl/SSLSocket;Lokhttp3/ConnectionSpec;)V
    .locals 10

    .line 1
    const-string v0, "Hostname "

    .line 2
    .line 3
    const-string v1, "\n            |Hostname "

    .line 4
    .line 5
    iget-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 6
    .line 7
    iget-object v2, v2, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 8
    .line 9
    :try_start_0
    iget-boolean v3, p2, Lokhttp3/ConnectionSpec;->b:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    sget-object v3, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 14
    .line 15
    sget-object v3, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 16
    .line 17
    iget-object v4, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 18
    .line 19
    iget-object v4, v4, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v5, v2, Lokhttp3/Address;->i:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v3, p1, v4, v5}, Lokhttp3/internal/platform/Platform;->e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lokhttp3/Handshake$Companion;->a(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v5, v2, Lokhttp3/Address;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v6, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 50
    .line 51
    iget-object v6, v6, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {v5, v6, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v5, 0x2

    .line 58
    const/4 v6, 0x0

    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {v4}, Lokhttp3/Handshake;->a()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_1

    .line 70
    .line 71
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 79
    .line 80
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 88
    .line 89
    iget-object v1, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, " not verified:\n            |    certificate: "

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    sget-object v1, Lokhttp3/CertificatePinner;->c:Lokhttp3/CertificatePinner;

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v2, "sha256/"

    .line 104
    .line 105
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object v2, Lhy0;->d:Lhy0;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-static {v2}, Lge;->w([B)Lhy0;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-string v3, "SHA-256"

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Lhy0;->c(Ljava/lang/String;)Lhy0;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2}, Lhy0;->a()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, "\n            |    DN: "

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v1, "\n            |    subjectAltNames: "

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const/4 v1, 0x7

    .line 167
    invoke-static {p0, v1}, Lokhttp3/internal/tls/OkHostnameVerifier;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {p0, v5}, Lokhttp3/internal/tls/OkHostnameVerifier;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {v1, p0}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p0, "\n            "

    .line 183
    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-static {p0}, Loq7;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-direct {p2, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p2

    .line 199
    :cond_1
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 200
    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 207
    .line 208
    iget-object v0, v0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v0, " not verified (no certificates)"

    .line 214
    .line 215
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-direct {p0, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p0

    .line 226
    :cond_2
    iget-object v0, v2, Lokhttp3/Address;->e:Lokhttp3/CertificatePinner;

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    new-instance v1, Lokhttp3/Handshake;

    .line 232
    .line 233
    iget-object v3, v4, Lokhttp3/Handshake;->a:Lokhttp3/TlsVersion;

    .line 234
    .line 235
    iget-object v7, v4, Lokhttp3/Handshake;->b:Lokhttp3/CipherSuite;

    .line 236
    .line 237
    iget-object v8, v4, Lokhttp3/Handshake;->c:Ljava/util/List;

    .line 238
    .line 239
    new-instance v9, Lv20;

    .line 240
    .line 241
    invoke-direct {v9, v5, v0, v4, v2}, Lv20;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-direct {v1, v3, v7, v8, v9}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lbt3;)V

    .line 245
    .line 246
    .line 247
    iput-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->L:Lokhttp3/Handshake;

    .line 248
    .line 249
    iget-object v1, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 250
    .line 251
    iget-object v1, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    iget-object v0, v0, Lokhttp3/CertificatePinner;->a:Ljava/util/Set;

    .line 257
    .line 258
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    const/4 v2, 0x0

    .line 267
    if-nez v1, :cond_5

    .line 268
    .line 269
    iget-boolean p2, p2, Lokhttp3/ConnectionSpec;->b:Z

    .line 270
    .line 271
    if-eqz p2, :cond_3

    .line 272
    .line 273
    sget-object p2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 274
    .line 275
    sget-object p2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 276
    .line 277
    invoke-virtual {p2, p1}, Lokhttp3/internal/platform/Platform;->g(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    :cond_3
    iput-object p1, p0, Lokhttp3/internal/connection/ConnectPlan;->K:Ljava/net/Socket;

    .line 282
    .line 283
    new-instance p2, Ll40;

    .line 284
    .line 285
    invoke-direct {p2, p1}, Ll40;-><init>(Ljava/net/Socket;)V

    .line 286
    .line 287
    .line 288
    new-instance v0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 289
    .line 290
    invoke-direct {v0, p2}, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;-><init>(Ll40;)V

    .line 291
    .line 292
    .line 293
    iput-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->N:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 294
    .line 295
    if-eqz v2, :cond_4

    .line 296
    .line 297
    sget-object p2, Lokhttp3/Protocol;->b:Lokhttp3/Protocol$Companion;

    .line 298
    .line 299
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    invoke-static {v2}, Lokhttp3/Protocol$Companion;->a(Ljava/lang/String;)Lokhttp3/Protocol;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    goto :goto_1

    .line 307
    :cond_4
    sget-object p2, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    .line 308
    .line 309
    :goto_1
    iput-object p2, p0, Lokhttp3/internal/connection/ConnectPlan;->M:Lokhttp3/Protocol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .line 311
    sget-object p0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 312
    .line 313
    sget-object p0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 314
    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :cond_5
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    check-cast p0, Lokhttp3/CertificatePinner$Pin;

    .line 324
    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    const-string p0, "**."

    .line 329
    .line 330
    invoke-static {v2, p0, v6}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 331
    .line 332
    .line 333
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :goto_2
    sget-object p2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 335
    .line 336
    sget-object p2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 337
    .line 338
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 342
    .line 343
    .line 344
    throw p0
.end method

.method public final k()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 11

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->y:Lokhttp3/Request;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 7
    .line 8
    iget-object v2, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 9
    .line 10
    iget-object v2, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "CONNECT "

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-static {v2, v4}, Lokhttp3/internal/_UtilJvmKt;->i(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " HTTP/1.1"

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_0
    new-instance v3, Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 37
    .line 38
    iget-object v5, p0, Lokhttp3/internal/connection/ConnectPlan;->N:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 39
    .line 40
    const-string v6, "socket"

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    if-eqz v5, :cond_9

    .line 44
    .line 45
    invoke-direct {v3, v7, p0, v5}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/ExchangeCodec$Carrier;Lokhttp3/internal/connection/BufferedSocket;)V

    .line 46
    .line 47
    .line 48
    iget-object v5, p0, Lokhttp3/internal/connection/ConnectPlan;->N:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 49
    .line 50
    if-eqz v5, :cond_8

    .line 51
    .line 52
    iget-object v5, v5, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->b:Ltf6;

    .line 53
    .line 54
    iget-object v5, v5, Ltf6;->a:Lij7;

    .line 55
    .line 56
    invoke-interface {v5}, Lij7;->d()Lf48;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget v8, p0, Lokhttp3/internal/connection/ConnectPlan;->c:I

    .line 61
    .line 62
    int-to-long v8, v8

    .line 63
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    .line 65
    invoke-virtual {v5, v8, v9, v10}, Lf48;->g(JLjava/util/concurrent/TimeUnit;)Lf48;

    .line 66
    .line 67
    .line 68
    iget-object v5, p0, Lokhttp3/internal/connection/ConnectPlan;->N:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 69
    .line 70
    if-eqz v5, :cond_7

    .line 71
    .line 72
    iget-object v5, v5, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->c:Lrf6;

    .line 73
    .line 74
    iget-object v5, v5, Lrf6;->a:Lnh7;

    .line 75
    .line 76
    invoke-interface {v5}, Lnh7;->d()Lf48;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iget v6, p0, Lokhttp3/internal/connection/ConnectPlan;->d:I

    .line 81
    .line 82
    int-to-long v8, v6

    .line 83
    invoke-virtual {v5, v8, v9, v10}, Lf48;->g(JLjava/util/concurrent/TimeUnit;)Lf48;

    .line 84
    .line 85
    .line 86
    iget-object v5, v0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 87
    .line 88
    invoke-virtual {v3, v5, v2}, Lokhttp3/internal/http1/Http1ExchangeCodec;->l(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lokhttp3/internal/http1/Http1ExchangeCodec;->a()V

    .line 92
    .line 93
    .line 94
    const/4 v5, 0x0

    .line 95
    invoke-virtual {v3, v5}, Lokhttp3/internal/http1/Http1ExchangeCodec;->e(Z)Lokhttp3/Response$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iput-object v0, v5, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 103
    .line 104
    invoke-virtual {v5}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget v5, v0, Lokhttp3/Response;->d:I

    .line 109
    .line 110
    invoke-virtual {v3, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->k(Lokhttp3/Response;)V

    .line 111
    .line 112
    .line 113
    const/16 v3, 0xc8

    .line 114
    .line 115
    if-eq v5, v3, :cond_3

    .line 116
    .line 117
    const/16 v3, 0x197

    .line 118
    .line 119
    if-ne v5, v3, :cond_2

    .line 120
    .line 121
    iget-object v3, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 122
    .line 123
    iget-object v3, v3, Lokhttp3/Address;->f:Lokhttp3/Authenticator;

    .line 124
    .line 125
    invoke-interface {v3, v1, v0}, Lokhttp3/Authenticator;->b(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-eqz v3, :cond_1

    .line 130
    .line 131
    const-string v5, "Connection"

    .line 132
    .line 133
    invoke-static {v5, v0}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v5, "close"

    .line 138
    .line 139
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    .line 145
    move-object v2, v3

    .line 146
    goto :goto_1

    .line 147
    :cond_0
    move-object v0, v3

    .line 148
    goto :goto_0

    .line 149
    :cond_1
    const-string p0, "Failed to authenticate with proxy"

    .line 150
    .line 151
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-object v7

    .line 155
    :cond_2
    const-string p0, "Unexpected response code for CONNECT: "

    .line 156
    .line 157
    invoke-static {v5, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-object v7

    .line 165
    :cond_3
    move-object v2, v7

    .line 166
    :goto_1
    if-nez v2, :cond_4

    .line 167
    .line 168
    new-instance v0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 169
    .line 170
    const/4 v1, 0x6

    .line 171
    invoke-direct {v0, p0, v7, v7, v1}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/ConnectPlan;Ljava/lang/Throwable;I)V

    .line 172
    .line 173
    .line 174
    return-object v0

    .line 175
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->J:Ljava/net/Socket;

    .line 176
    .line 177
    if-eqz v0, :cond_5

    .line 178
    .line 179
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    iget v0, p0, Lokhttp3/internal/connection/ConnectPlan;->x:I

    .line 183
    .line 184
    add-int/2addr v0, v4

    .line 185
    const/16 v3, 0x15

    .line 186
    .line 187
    iget-object v4, p0, Lokhttp3/internal/connection/ConnectPlan;->p:Lokhttp3/internal/connection/ConnectionUser;

    .line 188
    .line 189
    if-ge v0, v3, :cond_6

    .line 190
    .line 191
    invoke-interface {v4, v1}, Lokhttp3/internal/connection/ConnectionUser;->o(Lokhttp3/Route;)V

    .line 192
    .line 193
    .line 194
    new-instance v6, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 195
    .line 196
    const/4 v4, 0x0

    .line 197
    const/16 v5, 0xc

    .line 198
    .line 199
    const/4 v3, 0x0

    .line 200
    move v1, v0

    .line 201
    move-object v0, p0

    .line 202
    invoke-static/range {v0 .. v5}, Lokhttp3/internal/connection/ConnectPlan;->l(Lokhttp3/internal/connection/ConnectPlan;ILokhttp3/Request;IZI)Lokhttp3/internal/connection/ConnectPlan;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    const/4 v1, 0x4

    .line 207
    invoke-direct {v6, v0, p0, v7, v1}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/ConnectPlan;Ljava/lang/Throwable;I)V

    .line 208
    .line 209
    .line 210
    return-object v6

    .line 211
    :cond_6
    move-object v0, p0

    .line 212
    new-instance p0, Ljava/net/ProtocolException;

    .line 213
    .line 214
    const-string v2, "Too many tunnel connections attempted: 21"

    .line 215
    .line 216
    invoke-direct {p0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-interface {v4, v1, p0}, Lokhttp3/internal/connection/ConnectionUser;->j(Lokhttp3/Route;Ljava/io/IOException;)V

    .line 220
    .line 221
    .line 222
    new-instance v1, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 223
    .line 224
    const/4 v2, 0x2

    .line 225
    invoke-direct {v1, v0, v7, p0, v2}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/ConnectPlan;Ljava/lang/Throwable;I)V

    .line 226
    .line 227
    .line 228
    return-object v1

    .line 229
    :cond_7
    invoke-static {v6}, Lpe4;->F(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v7

    .line 233
    :cond_8
    invoke-static {v6}, Lpe4;->F(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v7

    .line 237
    :cond_9
    invoke-static {v6}, Lpe4;->F(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v7
.end method

.method public final m(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lokhttp3/internal/connection/ConnectPlan;->G:I

    .line 5
    .line 6
    add-int/lit8 v1, v0, 0x1

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    move v6, v1

    .line 13
    :goto_0
    if-ge v6, v2, :cond_4

    .line 14
    .line 15
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lokhttp3/ConnectionSpec;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-boolean v3, v1, Lokhttp3/ConnectionSpec;->a:Z

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v3, v1, Lokhttp3/ConnectionSpec;->d:[Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    sget-object v5, Luk5;->a:Luk5;

    .line 38
    .line 39
    invoke-static {v3, v4, v5}, Lokhttp3/internal/_UtilCommonKt;->f([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v1, v1, Lokhttp3/ConnectionSpec;->c:[Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    sget-object v4, Lokhttp3/CipherSuite;->c:Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;

    .line 55
    .line 56
    invoke-static {v1, v3, v4}, Lokhttp3/internal/_UtilCommonKt;->f([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 p1, -0x1

    .line 66
    if-eq v0, p1, :cond_3

    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    :goto_2
    move v7, p1

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/4 p1, 0x0

    .line 72
    goto :goto_2

    .line 73
    :goto_3
    const/4 v8, 0x3

    .line 74
    const/4 v4, 0x0

    .line 75
    const/4 v5, 0x0

    .line 76
    move-object v3, p0

    .line 77
    invoke-static/range {v3 .. v8}, Lokhttp3/internal/connection/ConnectPlan;->l(Lokhttp3/internal/connection/ConnectPlan;ILokhttp3/Request;IZI)Lokhttp3/internal/connection/ConnectPlan;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_4
    const/4 p0, 0x0

    .line 83
    return-object p0
.end method

.method public final n(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lokhttp3/internal/connection/ConnectPlan;->G:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/connection/ConnectPlan;->m(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    new-instance v0, Ljava/net/UnknownServiceException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Unable to find acceptable protocols. isFallback="

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-boolean p0, p0, Lokhttp3/internal/connection/ConnectPlan;->H:Z

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, ", modes="

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string p1, ", supported protocols="

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v0, p0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method
