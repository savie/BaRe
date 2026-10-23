.class public final Lmz2;
.super Llz2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqg2;


# instance fields
.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrx1;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmz2;->c:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    sget-object p0, Lcq1;->a:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    :try_start_0
    instance-of p0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    sget-object p0, Lcq1;->a:Ljava/lang/reflect/Method;

    .line 20
    .line 21
    if-nez p0, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :catchall_0
    :goto_1
    return-void
.end method


# virtual methods
.method public final b(JLh48;Lox1;)Lin2;
    .locals 3

    .line 1
    iget-object p0, p0, Lmz2;->c:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p0, v1

    .line 12
    :goto_0
    if-eqz p0, :cond_1

    .line 13
    .line 14
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    invoke-interface {p0, p3, p1, p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 23
    .line 24
    const-string v2, "The task was rejected"

    .line 25
    .line 26
    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 30
    .line 31
    .line 32
    sget-object p0, Lnh4;->b:Lnh4;

    .line 33
    .line 34
    invoke-interface {p4, p0}, Lox1;->get(Lnx1;)Lmx1;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Loh4;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    invoke-interface {p0, v0}, Loh4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 46
    .line 47
    new-instance p0, Lhn2;

    .line 48
    .line 49
    invoke-direct {p0, v1}, Lhn2;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_2
    sget-object p0, Lge2;->t:Lge2;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2, p3, p4}, Lge2;->b(JLh48;Lox1;)Lin2;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmz2;->c:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lmz2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lmz2;

    .line 6
    .line 7
    iget-object p1, p1, Lmz2;->c:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    iget-object p0, p0, Lmz2;->c:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    if-ne p1, p0, :cond_0

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

.method public final g(JLo21;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmz2;->c:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v1, Lue2;

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct {v1, p0, p3, v3, v4}, Lue2;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p3, Lo21;->e:Lox1;

    .line 22
    .line 23
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    invoke-interface {v0, v1, p1, p2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 26
    .line 27
    .line 28
    move-result-object v2
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    new-instance v1, Ljava/util/concurrent/CancellationException;

    .line 32
    .line 33
    const-string v3, "The task was rejected"

    .line 34
    .line 35
    invoke-direct {v1, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 39
    .line 40
    .line 41
    sget-object v0, Lnh4;->b:Lnh4;

    .line 42
    .line 43
    invoke-interface {p0, v0}, Lox1;->get(Lnx1;)Lmx1;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Loh4;

    .line 48
    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    invoke-interface {p0, v1}, Loh4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 55
    .line 56
    new-instance p0, Lh21;

    .line 57
    .line 58
    invoke-direct {p0, v2}, Lh21;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, p0}, Lo21;->x(Lho5;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    sget-object p0, Lge2;->t:Lge2;

    .line 66
    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lzy2;->g(JLo21;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmz2;->c:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final j(Lox1;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lmz2;->c:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 9
    .line 10
    const-string v1, "The task was rejected"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    sget-object p0, Lnh4;->b:Lnh4;

    .line 19
    .line 20
    invoke-interface {p1, p0}, Lox1;->get(Lnx1;)Lmx1;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Loh4;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-interface {p0, v0}, Loh4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object p0, Lcn2;->a:Lrf2;

    .line 32
    .line 33
    sget-object p0, Lse2;->c:Lse2;

    .line 34
    .line 35
    invoke-virtual {p0, p1, p2}, Lse2;->j(Lox1;Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmz2;->c:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
