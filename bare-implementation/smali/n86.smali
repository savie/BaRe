.class public final Ln86;
.super Lk;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lm86;


# virtual methods
.method public final cancel(Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 3

    .line 33
    :try_start_0
    iget-object p0, p0, Ln86;->a:Lm86;

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    .line 35
    invoke-virtual {p0, v1, v2, v0}, Lm86;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 36
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Ln86;->a:Lm86;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lm86;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object p0, p0, Lm86;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lnh4;

    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    .line 15
    .line 16
    const-string p2, "Timeout expired"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lnh4;->r(Ljava/lang/Exception;)Ljava/lang/Throwable;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public final isCancelled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isDone()Z
    .locals 2

    .line 1
    iget-object p0, p0, Ln86;->a:Lm86;

    .line 2
    .line 3
    iget-object v0, p0, Lm86;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lm86;->n:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/Throwable;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lm86;->k:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lrt6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    .line 29
    .line 30
    return p0

    .line 31
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 32
    .line 33
    .line 34
    throw p0
.end method
