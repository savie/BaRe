.class public final Lzr7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lz23;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lea6;Lea6;Lea6;Ll22;Lea6;Lea6;Lea6;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lzr7;->a:Ljava/lang/Object;

    .line 43
    iput-object p2, p0, Lzr7;->b:Ljava/lang/Object;

    .line 44
    iput-object p3, p0, Lzr7;->c:Ljava/lang/Object;

    .line 45
    iput-object p4, p0, Lzr7;->d:Ljava/lang/Object;

    .line 46
    iput-object p5, p0, Lzr7;->e:Ljava/lang/Object;

    .line 47
    iput-object p6, p0, Lzr7;->f:Ljava/lang/Object;

    .line 48
    iput-object p7, p0, Lzr7;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkm5;Lus2;Lix0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzq7;

    .line 5
    .line 6
    invoke-direct {v0}, Lzq7;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lzr7;->d:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lzr7;->f:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, p0, Lzr7;->a:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p2, p0, Lzr7;->e:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p3, p0, Lzr7;->k:Ljava/lang/Object;

    .line 23
    .line 24
    new-instance p1, Ljava/util/HashMap;

    .line 25
    .line 26
    const/16 p2, 0x100

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lzr7;->b:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance p1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lzr7;->c:Ljava/lang/Object;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/AutoCloseable;)[Lxr7;
    .locals 1

    .line 1
    iget-object v0, p0, Lzr7;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lzr7;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, [Lxr7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public b(Ljava/lang/AutoCloseable;[Lxr7;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lzr7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v1, p0, Lzr7;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lzr7;->a(Ljava/lang/AutoCloseable;)[Lxr7;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_3

    .line 22
    .line 23
    array-length v2, p2

    .line 24
    move v4, v3

    .line 25
    :goto_0
    if-ge v4, v2, :cond_2

    .line 26
    .line 27
    aget-object v5, p2, v4

    .line 28
    .line 29
    invoke-virtual {v5, p1}, Lxr7;->a(Ljava/lang/AutoCloseable;)V

    .line 30
    .line 31
    .line 32
    iget-object v6, v5, Lxr7;->d:Lyr7;

    .line 33
    .line 34
    iget-object v6, v6, Lyr7;->a:Lnd5;

    .line 35
    .line 36
    iget-object v6, v6, Lnd5;->h:[Ljava/lang/Class;

    .line 37
    .line 38
    array-length v7, v6

    .line 39
    move v8, v3

    .line 40
    :goto_1
    if-ge v8, v7, :cond_1

    .line 41
    .line 42
    aget-object v9, v6, v8

    .line 43
    .line 44
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    check-cast v10, Ljava/util/ArrayList;

    .line 49
    .line 50
    if-nez v10, :cond_0

    .line 51
    .line 52
    new-instance v10, Ljava/util/ArrayList;

    .line 53
    .line 54
    const/16 v11, 0x8

    .line 55
    .line 56
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_5

    .line 65
    :cond_0
    :goto_2
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    add-int/lit8 v8, v8, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-object p0, p0, Lzr7;->c:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_3
    array-length p0, v2

    .line 87
    :goto_3
    if-ge v3, p0, :cond_4

    .line 88
    .line 89
    aget-object p2, v2, v3

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Lxr7;->a(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :goto_5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method public get()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lzr7;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lea6;

    .line 4
    .line 5
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Landroid/content/Context;

    .line 11
    .line 12
    iget-object v0, p0, Lzr7;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lea6;

    .line 15
    .line 16
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v3, v0

    .line 21
    check-cast v3, Lmf5;

    .line 22
    .line 23
    iget-object v0, p0, Lzr7;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lea6;

    .line 26
    .line 27
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v4, v0

    .line 32
    check-cast v4, Lmw6;

    .line 33
    .line 34
    iget-object v0, p0, Lzr7;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ll22;

    .line 37
    .line 38
    invoke-virtual {v0}, Ll22;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v5, v0

    .line 43
    check-cast v5, Le41;

    .line 44
    .line 45
    iget-object v0, p0, Lzr7;->e:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lea6;

    .line 48
    .line 49
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v6, v0

    .line 54
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 55
    .line 56
    iget-object v0, p0, Lzr7;->f:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lea6;

    .line 59
    .line 60
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v7, v0

    .line 65
    check-cast v7, Lmw6;

    .line 66
    .line 67
    new-instance v8, Lb05;

    .line 68
    .line 69
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v9, Lsl4;

    .line 73
    .line 74
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lzr7;->k:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p0, Lea6;

    .line 80
    .line 81
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    move-object v10, p0

    .line 86
    check-cast v10, Lmw6;

    .line 87
    .line 88
    new-instance v1, Lfg8;

    .line 89
    .line 90
    invoke-direct/range {v1 .. v10}, Lfg8;-><init>(Landroid/content/Context;Lmf5;Lmw6;Le41;Ljava/util/concurrent/Executor;Lmw6;Lba1;Lba1;Lmw6;)V

    .line 91
    .line 92
    .line 93
    return-object v1
.end method
