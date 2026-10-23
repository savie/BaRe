.class public final synthetic Lbg5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lpg5;

.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Ldc6;

.field public final synthetic e:Lhx5;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Lox0;


# direct methods
.method public synthetic constructor <init>(Lpg5;[Ljava/lang/String;ILdc6;Lhx5;ZZLox0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbg5;->a:Lpg5;

    .line 5
    .line 6
    iput-object p2, p0, Lbg5;->b:[Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lbg5;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lbg5;->d:Ldc6;

    .line 11
    .line 12
    iput-object p5, p0, Lbg5;->e:Lhx5;

    .line 13
    .line 14
    iput-boolean p6, p0, Lbg5;->f:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lbg5;->g:Z

    .line 17
    .line 18
    iput-object p8, p0, Lbg5;->h:Lox0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lt12;

    .line 6
    .line 7
    sget v2, Lpg5;->n:I

    .line 8
    .line 9
    iget-object v1, v1, Lt12;->a:Lfc4;

    .line 10
    .line 11
    invoke-virtual {v1}, Lfc4;->c()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-object v1, v0, Lbg5;->b:[Ljava/lang/String;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object v4, v1, v2

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iget-object v9, v0, Lbg5;->a:Lpg5;

    .line 22
    .line 23
    move-object v8, v4

    .line 24
    iget v4, v0, Lbg5;->c:I

    .line 25
    .line 26
    iget-object v3, v0, Lbg5;->d:Ldc6;

    .line 27
    .line 28
    iget-object v14, v0, Lbg5;->e:Lhx5;

    .line 29
    .line 30
    iget-boolean v7, v0, Lbg5;->f:Z

    .line 31
    .line 32
    iget-boolean v10, v0, Lbg5;->g:Z

    .line 33
    .line 34
    iget-object v15, v0, Lbg5;->h:Lox0;

    .line 35
    .line 36
    if-ne v4, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v3}, Ldc6;->y()J

    .line 39
    .line 40
    .line 41
    move-result-wide v11

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lfg5;

    .line 48
    .line 49
    move-object v4, v8

    .line 50
    move v8, v10

    .line 51
    move-object v5, v14

    .line 52
    move-object v6, v15

    .line 53
    invoke-direct/range {v2 .. v8}, Lfg5;-><init>(Ldc6;Ljava/lang/String;Lhx5;Lox0;ZZ)V

    .line 54
    .line 55
    .line 56
    move/from16 v16, v7

    .line 57
    .line 58
    move/from16 v17, v8

    .line 59
    .line 60
    move-object v8, v4

    .line 61
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v2, Lgg5;

    .line 66
    .line 67
    invoke-direct {v2, v9}, Lgg5;-><init>(Lpg5;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v2, Lhg5;

    .line 75
    .line 76
    move-object v4, v0

    .line 77
    move-object v7, v3

    .line 78
    move-object v3, v9

    .line 79
    move-object v6, v14

    .line 80
    move-object v5, v15

    .line 81
    move/from16 v9, v16

    .line 82
    .line 83
    move/from16 v10, v17

    .line 84
    .line 85
    invoke-direct/range {v2 .. v12}, Lhg5;-><init>(Lpg5;Ljava/util/ArrayList;Lox0;Lhx5;Ldc6;Ljava/lang/String;ZZJ)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0

    .line 93
    :cond_0
    move/from16 v16, v7

    .line 94
    .line 95
    move/from16 v17, v10

    .line 96
    .line 97
    move-object v7, v3

    .line 98
    move-object v3, v9

    .line 99
    invoke-virtual {v7}, Ldc6;->y()J

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    move-object v13, v8

    .line 104
    new-instance v8, Lvx0;

    .line 105
    .line 106
    invoke-direct {v8, v4, v0, v1}, Lvx0;-><init>(IJ)V

    .line 107
    .line 108
    .line 109
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    move-object v12, v7

    .line 114
    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 115
    .line 116
    invoke-direct {v7, v4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 117
    .line 118
    .line 119
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    .line 120
    .line 121
    invoke-direct {v11, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    .line 135
    invoke-direct {v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 136
    .line 137
    .line 138
    new-instance v10, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 139
    .line 140
    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance v2, Leg5;

    .line 144
    .line 145
    invoke-direct/range {v2 .. v17}, Leg5;-><init>(Lpg5;ILjava/util/concurrent/ExecutorService;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ArrayBlockingQueue;Lvx0;Ljava/util/List;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/CountDownLatch;Ldc6;Ljava/lang/String;Lhx5;Lox0;ZZ)V

    .line 146
    .line 147
    .line 148
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    return-object v0
.end method
