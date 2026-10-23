.class public final Lokhttp3/internal/connection/CallConnectionUser;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/connection/ConnectionUser;


# instance fields
.field public final a:Lokhttp3/internal/connection/RealCall;

.field public final b:Lokhttp3/internal/http/RealInterceptorChain;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/ConnectionListener;Lokhttp3/internal/http/RealInterceptorChain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 5
    .line 6
    iput-object p3, p0, Lokhttp3/internal/connection/CallConnectionUser;->b:Lokhttp3/internal/http/RealInterceptorChain;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    iget-boolean p0, p0, Lokhttp3/internal/connection/RealCall;->G:Z

    .line 4
    .line 5
    return p0
.end method

.method public final b(Lokhttp3/internal/connection/RealConnection;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 5
    .line 6
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 7
    .line 8
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->p:Lokhttp3/internal/connection/RealConnection;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Lokhttp3/internal/connection/RealCall;->p:Lokhttp3/internal/connection/RealConnection;

    .line 13
    .line 14
    iget-object p1, p1, Lokhttp3/internal/connection/RealConnection;->K:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Lokhttp3/internal/connection/RealCall$CallReference;

    .line 17
    .line 18
    iget-object v1, p0, Lokhttp3/internal/connection/RealCall;->k:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lokhttp3/internal/connection/RealCall$CallReference;-><init>(Lokhttp3/internal/connection/RealCall;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p0, "Check failed."

    .line 28
    .line 29
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final c(Lokhttp3/internal/connection/RealConnection;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->b:Lokhttp3/internal/http/RealInterceptorChain;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 4
    .line 5
    iget-object p0, p0, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "GET"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    xor-int/lit8 p0, p0, 0x1

    .line 14
    .line 15
    return p0
.end method

.method public final e(Lokhttp3/internal/connection/RealConnection;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g(Lokhttp3/internal/connection/RealConnection;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final i(Lokhttp3/internal/connection/ConnectPlan;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j(Lokhttp3/Route;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 5
    .line 6
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 7
    .line 8
    iget-object p1, p1, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final k(Lokhttp3/HttpUrl;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 5
    .line 6
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final l(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 5
    .line 6
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final m()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final n()Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->h()Ljava/net/Socket;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final o(Lokhttp3/Route;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 5
    .line 6
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 7
    .line 8
    iget-object p1, p1, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final p(Lokhttp3/internal/connection/RealConnection;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final q()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final r()Lokhttp3/internal/connection/RealConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->p:Lokhttp3/internal/connection/RealConnection;

    .line 4
    .line 5
    return-object p0
.end method

.method public final s(Lokhttp3/internal/connection/RealConnection;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final t(Lokhttp3/Connection;Lokhttp3/Route;)V
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
    return-void
.end method

.method public final u(Lokhttp3/Route;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 5
    .line 6
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->a:Lokhttp3/OkHttpClient;

    .line 7
    .line 8
    iget-object p0, p0, Lokhttp3/OkHttpClient;->A:Lokhttp3/internal/connection/RouteDatabase;

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/RouteDatabase;->a:Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method

.method public final v(Lokhttp3/Connection;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 5
    .line 6
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final w(Lokhttp3/Route;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 5
    .line 6
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->d:Lokhttp3/EventListener;

    .line 7
    .line 8
    iget-object p1, p1, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final x(Lokhttp3/internal/connection/ConnectPlan;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/CallConnectionUser;->a:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
