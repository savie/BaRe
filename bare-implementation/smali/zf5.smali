.class public final synthetic Lzf5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lpg5;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Ljava/util/concurrent/ArrayBlockingQueue;

.field public final synthetic d:Lvx0;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final synthetic k:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lpg5;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ArrayBlockingQueue;Lvx0;Ljava/util/List;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzf5;->a:Lpg5;

    .line 5
    .line 6
    iput-object p2, p0, Lzf5;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    iput-object p3, p0, Lzf5;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 9
    .line 10
    iput-object p4, p0, Lzf5;->d:Lvx0;

    .line 11
    .line 12
    iput-object p5, p0, Lzf5;->e:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Lzf5;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 15
    .line 16
    iput-object p7, p0, Lzf5;->k:Ljava/util/concurrent/CountDownLatch;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lzf5;->a:Lpg5;

    .line 2
    .line 3
    iget-object v1, p0, Lzf5;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iget-object v2, p0, Lzf5;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 6
    .line 7
    iget-object v3, p0, Lzf5;->d:Lvx0;

    .line 8
    .line 9
    iget-object v4, p0, Lzf5;->e:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Lzf5;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 12
    .line 13
    iget-object p0, p0, Lzf5;->k:Ljava/util/concurrent/CountDownLatch;

    .line 14
    .line 15
    sget v6, Lpg5;->n:I

    .line 16
    .line 17
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-nez v6, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Lwf8$b;

    .line 28
    .line 29
    invoke-virtual {v6}, Lwf8$b;->a()Lwf8;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    if-nez v7, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v6}, Lwf8$b;->a()Lwf8;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v0, v7}, Lcn0;->G(Lwf8;)Ljava/util/concurrent/CompletableFuture;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v7}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Lyf8;

    .line 49
    .line 50
    invoke-virtual {v6}, Lwf8$b;->a()Lwf8;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v6}, Lyb6;->i()Lox0;

    .line 55
    .line 56
    .line 57
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    invoke-virtual {v6}, Lox0;->reset()V

    .line 59
    .line 60
    .line 61
    iget-object v8, v3, Lvx0;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 62
    .line 63
    invoke-virtual {v8, v6}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lrg5; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    :try_start_2
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto :goto_3

    .line 72
    :catch_0
    move-exception v0

    .line 73
    goto :goto_2

    .line 74
    :catch_1
    move-exception v0

    .line 75
    new-instance v2, Ljava/lang/RuntimeException;

    .line 76
    .line 77
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_2
    const/4 v2, 0x1

    .line 86
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 97
    .line 98
    .line 99
    throw v0
.end method
