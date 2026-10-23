.class public Lcom/microsoft/identity/common/java/util/ResultFuture;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mConsumers:Ljava/util/ArrayList;

.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mException:Ljava/lang/Exception;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mResult:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mException:Ljava/lang/Exception;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mConsumers:Ljava/util/ArrayList;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 59
    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 60
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mResult:Ljava/lang/Object;

    return-object p0

    .line 61
    :cond_0
    new-instance p0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p0, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mException:Ljava/lang/Exception;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mResult:Ljava/lang/Object;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/util/concurrent/ExecutionException;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "Timed out waiting for: "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_2
    const-string p0, "timeUnit is marked non-null but is null"

    .line 52
    .line 53
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return-object p0
.end method

.method public final isCancelled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isDone()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p0, v0, v2

    .line 10
    .line 11
    if-nez p0, :cond_0

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

.method public final declared-synchronized setException(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mException:Ljava/lang/Exception;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mConsumers:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/microsoft/identity/common/java/util/BiConsumer;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mResult:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-interface {v1, v2, p1}, Lcom/microsoft/identity/common/java/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p1
.end method

.method public final declared-synchronized setResult(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mResult:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mConsumers:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/microsoft/identity/common/java/util/BiConsumer;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mException:Ljava/lang/Exception;

    .line 28
    .line 29
    invoke-interface {v1, p1, v2}, Lcom/microsoft/identity/common/java/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mConsumers:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p1
.end method

.method public final declared-synchronized whenComplete(Lcom/microsoft/identity/common/java/util/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/util/BiConsumer<",
            "TT;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->isDone()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mResult:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mException:Ljava/lang/Exception;

    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lcom/microsoft/identity/common/java/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ResultFuture;->mConsumers:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    throw p1
.end method
