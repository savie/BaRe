.class public final Li35;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final e:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final a:Ljava/util/LinkedHashSet;

.field public final b:Ljava/util/LinkedHashSet;

.field public final c:Landroid/os/Handler;

.field public volatile d:Lg35;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Li35;->e:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Li35;->a:Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Li35;->b:Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    new-instance v0, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Li35;->c:Landroid/os/Handler;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Li35;->d:Lg35;

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lg35;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Li35;->c(Lg35;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    new-instance p2, Lg35;

    .line 47
    .line 48
    invoke-direct {p2, p1}, Lg35;-><init>(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p2}, Li35;->c(Lg35;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    sget-object p2, Li35;->e:Ljava/util/concurrent/ExecutorService;

    .line 56
    .line 57
    new-instance v0, Lh35;

    .line 58
    .line 59
    invoke-direct {v0, p0, p1}, Lh35;-><init>(Li35;Ljava/util/concurrent/Callable;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Le35;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li35;->d:Lg35;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Li35;->d:Lg35;

    .line 7
    .line 8
    iget-object v0, v0, Lg35;->b:Ljava/lang/Throwable;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Li35;->d:Lg35;

    .line 13
    .line 14
    iget-object v0, v0, Lg35;->b:Ljava/lang/Throwable;

    .line 15
    .line 16
    invoke-interface {p1, v0}, Le35;->onResult(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Li35;->b:Ljava/util/LinkedHashSet;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method

.method public final declared-synchronized b(Le35;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li35;->d:Lg35;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Li35;->d:Lg35;

    .line 7
    .line 8
    iget-object v0, v0, Lg35;->a:Ljava/lang/Object;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Li35;->d:Lg35;

    .line 13
    .line 14
    iget-object v0, v0, Lg35;->a:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {p1, v0}, Le35;->onResult(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Li35;->a:Ljava/util/LinkedHashSet;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method

.method public final c(Lg35;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li35;->d:Lg35;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Li35;->d:Lg35;

    .line 6
    .line 7
    iget-object p1, p0, Li35;->c:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v0, Lib0;

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    invoke-direct {v0, p0, v1}, Lib0;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p0, "A task may only be set once."

    .line 20
    .line 21
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
