.class public final Ldq8;
.super Ljg4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lkg4;

.field public final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lkg4;Llo6;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Ljg4;->a:[Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Ljg4;-><init>([Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ldq8;->b:Lkg4;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Ldq8;->c:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Ldq8;->c:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljg4;

    .line 13
    .line 14
    if-nez v1, :cond_5

    .line 15
    .line 16
    iget-object v1, v0, Ldq8;->b:Lkg4;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v2, v1, Lkg4;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object v3, v1, Lkg4;->c:Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lfs5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-object v2, v1, Lkg4;->b:Lmb8;

    .line 40
    .line 41
    iget-object v0, v0, Lfs5;->b:[I

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v2, v2, Lmb8;->h:Lds5;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object v3, v2, Lds5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 57
    .line 58
    .line 59
    :try_start_1
    array-length v4, v0

    .line 60
    const/4 v5, 0x0

    .line 61
    move v6, v5

    .line 62
    move v7, v6

    .line 63
    :goto_0
    const/4 v8, 0x1

    .line 64
    if-ge v6, v4, :cond_1

    .line 65
    .line 66
    aget v9, v0, v6

    .line 67
    .line 68
    iget-object v10, v2, Lds5;->b:[J

    .line 69
    .line 70
    aget-wide v11, v10, v9

    .line 71
    .line 72
    const-wide/16 v13, 0x1

    .line 73
    .line 74
    sub-long v15, v11, v13

    .line 75
    .line 76
    aput-wide v15, v10, v9

    .line 77
    .line 78
    cmp-long v9, v11, v13

    .line 79
    .line 80
    if-nez v9, :cond_0

    .line 81
    .line 82
    iput-boolean v8, v2, Lds5;->d:Z

    .line 83
    .line 84
    move v7, v8

    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    goto :goto_2

    .line 88
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    if-nez v7, :cond_2

    .line 92
    .line 93
    iget-boolean v0, v2, Lds5;->d:Z

    .line 94
    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    iget-boolean v0, v2, Lds5;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    :cond_2
    move v5, v8

    .line 102
    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 103
    .line 104
    .line 105
    if-eqz v5, :cond_4

    .line 106
    .line 107
    new-instance v0, Llb2;

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    invoke-direct {v0, v1, v2, v8}, Llb2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Lzh8;->I(Lqt3;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_4
    :goto_3
    return-void

    .line 122
    :catchall_1
    move-exception v0

    .line 123
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_5
    move-object/from16 v0, p1

    .line 128
    .line 129
    invoke-virtual {v1, v0}, Ljg4;->a(Ljava/util/Set;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method
