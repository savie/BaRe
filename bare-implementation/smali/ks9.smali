.class public Lks9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lke9;


# static fields
.field public static final d:Z

.field public static final e:Ljava/util/logging/Logger;

.field public static final f:Lzh8;

.field public static final k:Ljava/lang/Object;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Lhl9;

.field public volatile c:Ljr9;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v0, "b"

    .line 2
    .line 3
    const-string v1, "a"

    .line 4
    .line 5
    const-class v2, Ljr9;

    .line 6
    .line 7
    const-string v3, "guava.concurrent.generate_cancellation_cause"

    .line 8
    .line 9
    const-string v4, "false"

    .line 10
    .line 11
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    sput-boolean v3, Lks9;->d:Z

    .line 20
    .line 21
    const-class v3, Lks9;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    sput-object v4, Lks9;->e:Ljava/util/logging/Logger;

    .line 32
    .line 33
    :try_start_0
    new-instance v5, Lko9;

    .line 34
    .line 35
    const-class v4, Ljava/lang/Thread;

    .line 36
    .line 37
    invoke-static {v2, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {v2, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const-string v4, "c"

    .line 46
    .line 47
    invoke-static {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    const-class v2, Lhl9;

    .line 52
    .line 53
    invoke-static {v3, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const-class v0, Ljava/lang/Object;

    .line 58
    .line 59
    invoke-static {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-direct/range {v5 .. v10}, Lko9;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    :goto_0
    move-object v11, v0

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    new-instance v5, Lxq9;

    .line 71
    .line 72
    const/16 v1, 0x14

    .line 73
    .line 74
    invoke-direct {v5, v1}, Lzh8;-><init>(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :goto_1
    sput-object v5, Lks9;->f:Lzh8;

    .line 79
    .line 80
    if-eqz v11, :cond_0

    .line 81
    .line 82
    sget-object v6, Lks9;->e:Ljava/util/logging/Logger;

    .line 83
    .line 84
    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 85
    .line 86
    const-string v9, "<clinit>"

    .line 87
    .line 88
    const-string v10, "SafeAtomicHelper is broken!"

    .line 89
    .line 90
    const-string v8, "com.android.billingclient.util.concurrent.AbstractResolvableFuture"

    .line 91
    .line 92
    invoke-virtual/range {v6 .. v11}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    new-instance v0, Ljava/lang/Object;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    sput-object v0, Lks9;->k:Ljava/lang/Object;

    .line 101
    .line 102
    return-void
.end method

.method public static b(Lks9;)V
    .locals 4

    .line 1
    :cond_0
    iget-object v0, p0, Lks9;->c:Ljr9;

    .line 2
    .line 3
    sget-object v1, Lks9;->f:Lzh8;

    .line 4
    .line 5
    sget-object v2, Ljr9;->c:Ljr9;

    .line 6
    .line 7
    invoke-virtual {v1, p0, v0, v2}, Lzh8;->T(Lks9;Ljr9;Ljr9;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    :goto_0
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_4

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lks9;->b:Lhl9;

    .line 17
    .line 18
    sget-object v3, Lhl9;->d:Lhl9;

    .line 19
    .line 20
    invoke-virtual {v1, p0, v0, v3}, Lzh8;->R(Lks9;Lhl9;Lhl9;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    :goto_1
    move-object p0, v2

    .line 27
    move-object v2, v0

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-object v0, v2, Lhl9;->c:Lhl9;

    .line 31
    .line 32
    iput-object p0, v2, Lhl9;->c:Lhl9;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_2
    if-eqz p0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lhl9;->a:Ljava/lang/Runnable;

    .line 38
    .line 39
    iget-object v1, p0, Lhl9;->c:Lhl9;

    .line 40
    .line 41
    iget-object p0, p0, Lhl9;->b:Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    invoke-static {v0, p0}, Lks9;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 44
    .line 45
    .line 46
    move-object p0, v1

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    return-void

    .line 49
    :cond_4
    iget-object v3, v0, Ljr9;->a:Ljava/lang/Thread;

    .line 50
    .line 51
    if-eqz v3, :cond_5

    .line 52
    .line 53
    iput-object v2, v0, Ljr9;->a:Ljava/lang/Thread;

    .line 54
    .line 55
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 56
    .line 57
    .line 58
    :cond_5
    iget-object v0, v0, Ljr9;->b:Ljr9;

    .line 59
    .line 60
    goto :goto_0
.end method

.method public static d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    move-object v5, v0

    .line 7
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "RuntimeException while executing runnable "

    .line 18
    .line 19
    const-string v2, " with executor "

    .line 20
    .line 21
    invoke-static {v0, p0, v2, p1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v2, "com.android.billingclient.util.concurrent.AbstractResolvableFuture"

    .line 26
    .line 27
    const-string v3, "executeListener"

    .line 28
    .line 29
    sget-object v0, Lks9;->e:Ljava/util/logging/Logger;

    .line 30
    .line 31
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of v0, p0, Lbg9;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    instance-of v0, p0, Lkj9;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lks9;->k:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    :cond_0
    return-object p0

    .line 15
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    .line 16
    .line 17
    check-cast p0, Lkj9;

    .line 18
    .line 19
    iget-object p0, p0, Lkj9;->a:Ljava/lang/Throwable;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_2
    check-cast p0, Lbg9;

    .line 26
    .line 27
    iget-object p0, p0, Lbg9;->a:Ljava/lang/Throwable;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 30
    .line 31
    const-string v1, "Task was cancelled."

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 37
    .line 38
    .line 39
    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    .line 6
    .line 7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    invoke-interface {p0, v0}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-string p0, "remaining delay=["

    .line 14
    .line 15
    const-string v2, " ms]"

    .line 16
    .line 17
    invoke-static {p0, v2, v0, v1}, Lfz5;->m(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final c(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    const-string v0, "]"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lks9;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception p0

    .line 19
    goto :goto_3

    .line 20
    :catch_1
    move-exception p0

    .line 21
    goto :goto_4

    .line 22
    :cond_0
    :goto_1
    const-string v1, "SUCCESS, result=["

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    if-ne v2, p0, :cond_1

    .line 28
    .line 29
    const-string p0, "this future"

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 51
    .line 52
    .line 53
    :cond_2
    throw p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    :goto_3
    const-string v0, "UNKNOWN, cause=["

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, " thrown from get()]"

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_2
    const-string p0, "CANCELLED"

    .line 73
    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :goto_4
    const-string v1, "FAILURE, cause=["

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catch_3
    const/4 v1, 0x1

    .line 95
    goto :goto_0
.end method

.method public final cancel(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lks9;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    sget-boolean v1, Lks9;->d:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lbg9;

    .line 10
    .line 11
    new-instance v1, Ljava/util/concurrent/CancellationException;

    .line 12
    .line 13
    const-string v2, "Future.cancel() was called."

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v1}, Lbg9;-><init>(Ljava/util/concurrent/CancellationException;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    sget-object p1, Lbg9;->b:Lbg9;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object p1, Lbg9;->c:Lbg9;

    .line 28
    .line 29
    :goto_0
    sget-object v1, Lks9;->f:Lzh8;

    .line 30
    .line 31
    invoke-virtual {v1, p0, v0, p1}, Lzh8;->S(Lks9;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-static {p0}, Lks9;->b(Lks9;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_2
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public final e(Ljr9;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Ljr9;->a:Ljava/lang/Thread;

    .line 3
    .line 4
    :goto_0
    iget-object p1, p0, Lks9;->c:Ljr9;

    .line 5
    .line 6
    sget-object v1, Ljr9;->c:Ljr9;

    .line 7
    .line 8
    if-eq p1, v1, :cond_3

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    :goto_1
    if-eqz p1, :cond_3

    .line 12
    .line 13
    iget-object v2, p1, Ljr9;->b:Ljr9;

    .line 14
    .line 15
    iget-object v3, p1, Ljr9;->a:Ljava/lang/Thread;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    move-object v1, p1

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iput-object v2, v1, Ljr9;->b:Ljr9;

    .line 24
    .line 25
    iget-object p1, v1, Ljr9;->a:Ljava/lang/Thread;

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v3, Lks9;->f:Lzh8;

    .line 31
    .line 32
    invoke-virtual {v3, p0, p1, v2}, Lzh8;->T(Lks9;Ljr9;Ljr9;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_2
    move-object p1, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 4

    .line 323
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 324
    iget-object v0, p0, Lks9;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 325
    invoke-static {v0}, Lks9;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lks9;->c:Ljr9;

    sget-object v1, Ljr9;->c:Ljr9;

    if-eq v0, v1, :cond_5

    new-instance v2, Ljr9;

    .line 326
    invoke-direct {v2}, Ljr9;-><init>()V

    :cond_1
    sget-object v3, Lks9;->f:Lzh8;

    .line 327
    invoke-virtual {v3, v2, v0}, Lzh8;->P(Ljr9;Ljr9;)V

    .line 328
    invoke-virtual {v3, p0, v0, v2}, Lzh8;->T(Lks9;Ljr9;Ljr9;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    :cond_2
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 330
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 331
    iget-object v0, p0, Lks9;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 332
    invoke-static {v0}, Lks9;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 333
    :cond_3
    invoke-virtual {p0, v2}, Lks9;->e(Ljr9;)V

    new-instance p0, Ljava/lang/InterruptedException;

    .line 334
    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    .line 335
    :cond_4
    iget-object v0, p0, Lks9;->c:Ljr9;

    if-ne v0, v1, :cond_1

    :cond_5
    iget-object p0, p0, Lks9;->a:Ljava/lang/Object;

    .line 336
    invoke-static {p0}, Lks9;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 337
    :cond_6
    new-instance p0, Ljava/lang/InterruptedException;

    .line 338
    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_13

    .line 10
    .line 11
    iget-object v2, p0, Lks9;->a:Ljava/lang/Object;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-static {v2}, Lks9;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long v4, v0, v2

    .line 23
    .line 24
    if-lez v4, :cond_1

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    add-long/2addr v4, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-wide v4, v2

    .line 33
    :goto_0
    const-wide/16 v6, 0x3e8

    .line 34
    .line 35
    cmp-long v8, v0, v6

    .line 36
    .line 37
    if-ltz v8, :cond_8

    .line 38
    .line 39
    iget-object v8, p0, Lks9;->c:Ljr9;

    .line 40
    .line 41
    sget-object v9, Ljr9;->c:Ljr9;

    .line 42
    .line 43
    if-eq v8, v9, :cond_7

    .line 44
    .line 45
    new-instance v10, Ljr9;

    .line 46
    .line 47
    invoke-direct {v10}, Ljr9;-><init>()V

    .line 48
    .line 49
    .line 50
    :cond_2
    sget-object v11, Lks9;->f:Lzh8;

    .line 51
    .line 52
    invoke-virtual {v11, v10, v8}, Lzh8;->P(Ljr9;Ljr9;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v11, p0, v8, v10}, Lzh8;->T(Lks9;Ljr9;Ljr9;)Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_6

    .line 60
    .line 61
    :cond_3
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_5

    .line 69
    .line 70
    iget-object v0, p0, Lks9;->a:Ljava/lang/Object;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-static {v0}, Lks9;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    sub-long v0, v4, v0

    .line 84
    .line 85
    cmp-long v8, v0, v6

    .line 86
    .line 87
    if-gez v8, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0, v10}, Lks9;->e(Ljr9;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {p0, v10}, Lks9;->e(Ljr9;)V

    .line 94
    .line 95
    .line 96
    new-instance p0, Ljava/lang/InterruptedException;

    .line 97
    .line 98
    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_6
    iget-object v8, p0, Lks9;->c:Ljr9;

    .line 103
    .line 104
    if-ne v8, v9, :cond_2

    .line 105
    .line 106
    :cond_7
    iget-object p0, p0, Lks9;->a:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-static {p0}, Lks9;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_8
    :goto_1
    cmp-long v8, v0, v2

    .line 114
    .line 115
    if-lez v8, :cond_b

    .line 116
    .line 117
    iget-object v0, p0, Lks9;->a:Ljava/lang/Object;

    .line 118
    .line 119
    if-eqz v0, :cond_9

    .line 120
    .line 121
    invoke-static {v0}, Lks9;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_a

    .line 131
    .line 132
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 133
    .line 134
    .line 135
    move-result-wide v0

    .line 136
    sub-long v0, v4, v0

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_a
    new-instance p0, Ljava/lang/InterruptedException;

    .line 140
    .line 141
    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :cond_b
    invoke-virtual {p0}, Lks9;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 154
    .line 155
    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    invoke-virtual {v9, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    new-instance v9, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v10, "Waited "

    .line 170
    .line 171
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p1, " "

    .line 178
    .line 179
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    add-long v8, v0, v6

    .line 190
    .line 191
    cmp-long v8, v8, v2

    .line 192
    .line 193
    if-gez v8, :cond_11

    .line 194
    .line 195
    const-string v8, " (plus "

    .line 196
    .line 197
    invoke-virtual {p2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    neg-long v0, v0

    .line 202
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 203
    .line 204
    invoke-virtual {p3, v0, v1, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 205
    .line 206
    .line 207
    move-result-wide v8

    .line 208
    invoke-virtual {p3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 209
    .line 210
    .line 211
    move-result-wide v10

    .line 212
    sub-long/2addr v0, v10

    .line 213
    cmp-long p3, v8, v2

    .line 214
    .line 215
    const/4 v2, 0x1

    .line 216
    if-eqz p3, :cond_d

    .line 217
    .line 218
    cmp-long v3, v0, v6

    .line 219
    .line 220
    if-lez v3, :cond_c

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_c
    const/4 v2, 0x0

    .line 224
    :cond_d
    :goto_2
    if-lez p3, :cond_f

    .line 225
    .line 226
    new-instance p3, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    if-eqz v2, :cond_e

    .line 248
    .line 249
    const-string p3, ","

    .line 250
    .line 251
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    :cond_e
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p2

    .line 259
    :cond_f
    if-eqz v2, :cond_10

    .line 260
    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string p2, " nanoseconds "

    .line 273
    .line 274
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    :cond_10
    const-string p1, "delay)"

    .line 282
    .line 283
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    :cond_11
    invoke-virtual {p0}, Lks9;->isDone()Z

    .line 288
    .line 289
    .line 290
    move-result p0

    .line 291
    if-eqz p0, :cond_12

    .line 292
    .line 293
    const-string p0, " but future completed as timeout expired"

    .line 294
    .line 295
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    .line 300
    .line 301
    invoke-direct {p1, p0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw p1

    .line 305
    :cond_12
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    .line 306
    .line 307
    const-string p1, " for "

    .line 308
    .line 309
    invoke-static {p2, p1, v4}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw p0

    .line 317
    :cond_13
    new-instance p0, Ljava/lang/InterruptedException;

    .line 318
    .line 319
    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    .line 320
    .line 321
    .line 322
    throw p0
.end method

.method public final isCancelled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lks9;->a:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of p0, p0, Lbg9;

    .line 4
    .line 5
    return p0
.end method

.method public final isDone()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lks9;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final o(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lks9;->b:Lhl9;

    .line 5
    .line 6
    sget-object v1, Lhl9;->d:Lhl9;

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    new-instance v2, Lhl9;

    .line 11
    .line 12
    invoke-direct {v2, p1, p2}, Lhl9;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iput-object v0, v2, Lhl9;->c:Lhl9;

    .line 16
    .line 17
    sget-object v3, Lks9;->f:Lzh8;

    .line 18
    .line 19
    invoke-virtual {v3, p0, v0, v2}, Lzh8;->R(Lks9;Lhl9;Lhl9;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lks9;->b:Lhl9;

    .line 27
    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    .line 30
    :cond_2
    invoke-static {p1, p2}, Lks9;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "[status="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lks9;->a:Ljava/lang/Object;

    .line 19
    .line 20
    instance-of v1, v1, Lbg9;

    .line 21
    .line 22
    const-string v2, "]"

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string p0, "CANCELLED"

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p0}, Lks9;->isDone()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lks9;->c(Ljava/lang/StringBuilder;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lks9;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v3, "Exception thrown from implementation: "

    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_0
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    const-string p0, "PENDING, info=["

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0}, Lks9;->isDone()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lks9;->c(Ljava/lang/StringBuilder;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    const-string p0, "PENDING"

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method
