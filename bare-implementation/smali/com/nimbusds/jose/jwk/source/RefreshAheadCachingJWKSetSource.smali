.class public Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;
.super Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$RefreshScheduledEvent;,
        Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$RefreshNotScheduledEvent;,
        Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$UnableToRefreshAheadOfExpirationEvent;,
        Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$ScheduledRefreshCompletedEvent;,
        Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$ScheduledRefreshInitiatedEvent;,
        Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$ScheduledRefreshFailed;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private volatile cacheExpiration:J

.field private final eventListener:Lcom/nimbusds/jose/util/events/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource<",
            "TC;>;TC;>;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final lazyLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final refreshAheadTime:J

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private scheduledRefreshFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final shutdownExecutorOnClose:Z


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;JJJZLcom/nimbusds/jose/util/events/EventListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;JJJZ",
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource<",
            "TC;>;TC;>;)V"
        }
    .end annotation

    .line 93
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v11, p9

    .line 94
    invoke-direct/range {v0 .. v11}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;JJJZLjava/util/concurrent/ExecutorService;ZLcom/nimbusds/jose/util/events/EventListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;JJJZLjava/util/concurrent/ExecutorService;ZLcom/nimbusds/jose/util/events/EventListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetSource<",
            "TC;>;JJJZ",
            "Ljava/util/concurrent/ExecutorService;",
            "Z",
            "Lcom/nimbusds/jose/util/events/EventListener<",
            "Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource<",
            "TC;>;TC;>;)V"
        }
    .end annotation

    .line 1
    move-wide/from16 v7, p6

    .line 2
    .line 3
    move-object/from16 v9, p9

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-wide v2, p2

    .line 8
    move-wide/from16 v4, p4

    .line 9
    .line 10
    move-object/from16 v6, p11

    .line 11
    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;JJLcom/nimbusds/jose/util/events/EventListener;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->lazyLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 21
    .line 22
    add-long v10, v7, v4

    .line 23
    .line 24
    cmp-long p1, v10, p2

    .line 25
    .line 26
    if-gtz p1, :cond_1

    .line 27
    .line 28
    iput-wide v7, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->refreshAheadTime:J

    .line 29
    .line 30
    const-string p1, "The executor service must not be null"

    .line 31
    .line 32
    invoke-static {v9, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iput-object v9, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    move/from16 p1, p10

    .line 38
    .line 39
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->shutdownExecutorOnClose:Z

    .line 40
    .line 41
    if-eqz p8, :cond_0

    .line 42
    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 48
    .line 49
    :goto_0
    move-object/from16 v6, p11

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_1
    iput-object v6, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string p1, "The sum of the refresh-ahead time ("

    .line 62
    .line 63
    const-string v0, "ms) and the cache refresh timeout ("

    .line 64
    .line 65
    invoke-static {p1, v0, v7, v8}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, "ms) must not exceed the time-to-lived time ("

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p2, "ms)"

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method public static synthetic access$000(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;)Lcom/nimbusds/jose/util/events/EventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$302(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->cacheExpiration:J

    .line 2
    .line 3
    return-wide p1
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->scheduledRefreshFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0}, Lcom/nimbusds/jose/jwk/source/JWKSetSourceWrapper;->close()V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->shutdownExecutorOnClose:Z

    .line 13
    .line 14
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->getCacheRefreshTimeout()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->getCacheRefreshTimeout()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    return-void
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJWKSet(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;",
            "JTC;)",
            "Lcom/nimbusds/jose/jwk/JWKSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/AbstractCachingJWKSetSource;->getCachedJWKSet()Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;->noRefresh()Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->loadJWKSetBlocking(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/cache/CachedObject;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;->requiresRefresh(Lcom/nimbusds/jose/jwk/JWKSet;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->loadJWKSetBlocking(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-virtual {v1, p2, p3}, Lcom/nimbusds/jose/util/cache/CachedObject;->isExpired(J)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;->referenceComparison(Lcom/nimbusds/jose/jwk/JWKSet;)Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->loadJWKSetBlocking(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/jwk/JWKSet;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2
    const/4 v2, 0x0

    .line 49
    move-object v0, p0

    .line 50
    move-wide v3, p2

    .line 51
    move-object v5, p4

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->refreshAheadOfExpiration(Lcom/nimbusds/jose/util/cache/CachedObject;ZJLcom/nimbusds/jose/proc/SecurityContext;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/cache/CachedObject;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 60
    .line 61
    return-object p0
.end method

.method public getLazyLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->lazyLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object p0
.end method

.method public getScheduledRefreshFuture()Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->scheduledRefreshFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    return-object p0
.end method

.method public loadJWKSetNotThreadSafe(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/util/cache/CachedObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;",
            "JTC;)",
            "Lcom/nimbusds/jose/util/cache/CachedObject<",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->loadJWKSetNotThreadSafe(Lcom/nimbusds/jose/jwk/source/JWKSetCacheRefreshEvaluator;JLcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jose/util/cache/CachedObject;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->scheduleRefreshAheadOfExpiration(Lcom/nimbusds/jose/util/cache/CachedObject;JLcom/nimbusds/jose/proc/SecurityContext;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p1
.end method

.method public lockedRefresh(Lcom/nimbusds/jose/util/cache/CachedObject;JLcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/cache/CachedObject<",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            ">;JTC;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->cacheExpiration:J

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/nimbusds/jose/util/cache/CachedObject;->getExpirationTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/nimbusds/jose/util/cache/CachedObject;->getExpirationTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->cacheExpiration:J

    .line 16
    .line 17
    new-instance v2, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;

    .line 18
    .line 19
    move-object v4, p0

    .line 20
    move-object v3, p0

    .line 21
    move-wide v6, p2

    .line 22
    move-object v5, p4

    .line 23
    invoke-direct/range {v2 .. v7}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$2;-><init>(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;Lcom/nimbusds/jose/proc/SecurityContext;J)V

    .line 24
    .line 25
    .line 26
    iget-object p0, v3, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public refreshAheadOfExpiration(Lcom/nimbusds/jose/util/cache/CachedObject;ZJLcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/cache/CachedObject<",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            ">;ZJTC;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->refreshAheadTime:J

    .line 2
    .line 3
    add-long/2addr v0, p3

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/nimbusds/jose/util/cache/CachedObject;->isExpired(J)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->cacheExpiration:J

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/nimbusds/jose/util/cache/CachedObject;->getExpirationTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    cmp-long p2, v0, v2

    .line 19
    .line 20
    if-gez p2, :cond_1

    .line 21
    .line 22
    iget-object p2, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->lazyLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->lockedRefresh(Lcom/nimbusds/jose/util/cache/CachedObject;JLcom/nimbusds/jose/proc/SecurityContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->lazyLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->lazyLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    return-void
.end method

.method public scheduleRefreshAheadOfExpiration(Lcom/nimbusds/jose/util/cache/CachedObject;JLcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/cache/CachedObject<",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            ">;JTC;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->scheduledRefreshFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/util/cache/CachedObject;->getExpirationTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sub-long/2addr v0, p2

    .line 14
    iget-wide p2, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->refreshAheadTime:J

    .line 15
    .line 16
    sub-long/2addr v0, p2

    .line 17
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;->getCacheRefreshTimeout()J

    .line 18
    .line 19
    .line 20
    move-result-wide p2

    .line 21
    sub-long/2addr v0, p2

    .line 22
    const-wide/16 p2, 0x0

    .line 23
    .line 24
    cmp-long p2, v0, p2

    .line 25
    .line 26
    if-lez p2, :cond_1

    .line 27
    .line 28
    new-instance p2, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;

    .line 29
    .line 30
    invoke-direct {p2, p0, p1, p4, p0}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$1;-><init>(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;Lcom/nimbusds/jose/util/cache/CachedObject;Lcom/nimbusds/jose/proc/SecurityContext;Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    .line 35
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    .line 37
    invoke-interface {p1, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->scheduledRefreshFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    new-instance p2, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$RefreshScheduledEvent;

    .line 48
    .line 49
    invoke-direct {p2, p0, p4}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$RefreshScheduledEvent;-><init>(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, p2}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;->eventListener:Lcom/nimbusds/jose/util/events/EventListener;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    new-instance p2, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$RefreshNotScheduledEvent;

    .line 61
    .line 62
    invoke-direct {p2, p0, p4}, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$RefreshNotScheduledEvent;-><init>(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, p2}, Lcom/nimbusds/jose/util/events/EventListener;->notify(Lcom/nimbusds/jose/util/events/Event;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method
