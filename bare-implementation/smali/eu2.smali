.class public final Leu2;
.super Lnc8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:Lfu2;


# direct methods
.method public constructor <init>(Lfu2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Leu2;->e:Lfu2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final P(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Leu2;->e:Lfu2;

    .line 2
    .line 3
    iget-object p0, p0, Lfu2;->a:Lku2;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lku2;->d(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final R(Lkb2;)V
    .locals 5

    .line 1
    iget-object p0, p0, Leu2;->e:Lfu2;

    .line 2
    .line 3
    iput-object p1, p0, Lfu2;->c:Lkb2;

    .line 4
    .line 5
    new-instance p1, Ldr;

    .line 6
    .line 7
    iget-object v0, p0, Lfu2;->c:Lkb2;

    .line 8
    .line 9
    iget-object v1, p0, Lfu2;->a:Lku2;

    .line 10
    .line 11
    iget-object v2, v1, Lku2;->g:Lfo8;

    .line 12
    .line 13
    iget-object v1, v1, Lku2;->i:Lje2;

    .line 14
    .line 15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v4, 0x22

    .line 18
    .line 19
    if-lt v3, v4, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lru2;->a()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lzh8;->s()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :goto_0
    invoke-direct {p1, v0, v2, v1, v3}, Ldr;-><init>(Lkb2;Lfo8;Lje2;Ljava/util/Set;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lfu2;->b:Ldr;

    .line 34
    .line 35
    iget-object p0, p0, Lfu2;->a:Lku2;

    .line 36
    .line 37
    new-instance p1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    :try_start_0
    iput v0, p0, Lku2;->c:I

    .line 53
    .line 54
    iget-object v0, p0, Lku2;->b:Lp50;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lku2;->b:Lp50;

    .line 60
    .line 61
    invoke-virtual {v0}, Lp50;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lku2;->d:Landroid/os/Handler;

    .line 74
    .line 75
    new-instance v1, Liu2;

    .line 76
    .line 77
    iget p0, p0, Lku2;->c:I

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-direct {v1, p1, p0, v2}, Liu2;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    iget-object p0, p0, Lku2;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    .line 96
    .line 97
    throw p1
.end method
