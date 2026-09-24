.class public final synthetic Lva5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljb5;

.field public final synthetic b:Lgb5;

.field public final synthetic c:Lya5;

.field public final synthetic d:Lft7;

.field public final synthetic e:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field public final synthetic f:[B

.field public final synthetic k:[I

.field public final synthetic n:Ljava/util/concurrent/Semaphore;

.field public final synthetic p:[I


# direct methods
.method public synthetic constructor <init>(Ljb5;Lgb5;Lya5;Lft7;Ljava/util/concurrent/ConcurrentHashMap$KeySetView;[B[ILjava/util/concurrent/Semaphore;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lva5;->a:Ljb5;

    .line 5
    .line 6
    iput-object p2, p0, Lva5;->b:Lgb5;

    .line 7
    .line 8
    iput-object p3, p0, Lva5;->c:Lya5;

    .line 9
    .line 10
    iput-object p4, p0, Lva5;->d:Lft7;

    .line 11
    .line 12
    iput-object p5, p0, Lva5;->e:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 13
    .line 14
    iput-object p6, p0, Lva5;->f:[B

    .line 15
    .line 16
    iput-object p7, p0, Lva5;->k:[I

    .line 17
    .line 18
    iput-object p8, p0, Lva5;->n:Ljava/util/concurrent/Semaphore;

    .line 19
    .line 20
    iput-object p9, p0, Lva5;->p:[I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Lva5;->a:Ljb5;

    .line 2
    .line 3
    iget-object v1, p0, Lva5;->b:Lgb5;

    .line 4
    .line 5
    iget-object v7, p0, Lva5;->c:Lya5;

    .line 6
    .line 7
    iget-object v5, p0, Lva5;->d:Lft7;

    .line 8
    .line 9
    iget-object v6, p0, Lva5;->e:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 10
    .line 11
    iget-object v8, p0, Lva5;->f:[B

    .line 12
    .line 13
    iget-object v9, p0, Lva5;->k:[I

    .line 14
    .line 15
    iget-object v10, p0, Lva5;->n:Ljava/util/concurrent/Semaphore;

    .line 16
    .line 17
    iget-object p0, p0, Lva5;->p:[I

    .line 18
    .line 19
    :try_start_0
    sget v2, Ljb5;->h:I

    .line 20
    .line 21
    iget-object v1, v1, Lgb5;->a:Ljava/lang/String;

    .line 22
    .line 23
    iget-wide v2, v7, Lya5;->b:J

    .line 24
    .line 25
    iget-wide v11, v7, Lya5;->b:J

    .line 26
    .line 27
    iget v4, v7, Lya5;->c:I

    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {v0 .. v6}, Ljb5;->g(Ljava/lang/String;JILft7;Ljava/util/Set;)[B

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v8, v9, v11, v12, v1}, Ljb5;->f([B[IJ[B)[B

    .line 37
    .line 38
    .line 39
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    const/4 v3, 0x0

    .line 41
    :try_start_1
    iget-object v0, v7, Lya5;->d:Ljava/util/List;

    .line 42
    .line 43
    new-instance v4, Ljava/util/ArrayList;

    .line 44
    .line 45
    const/16 v5, 0xa

    .line 46
    .line 47
    invoke-static {v0, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Lcb5;

    .line 69
    .line 70
    iget-object v6, v5, Lcb5;->b:Ldb5;

    .line 71
    .line 72
    iget-wide v13, v6, Ldb5;->a:J

    .line 73
    .line 74
    sub-long/2addr v13, v11

    .line 75
    long-to-int v9, v13

    .line 76
    new-instance v13, Lbb5;

    .line 77
    .line 78
    iget v5, v5, Lcb5;->a:I

    .line 79
    .line 80
    iget v6, v6, Ldb5;->b:I

    .line 81
    .line 82
    invoke-static {v8, p0, v2, v9, v6}, Ljb5;->c([B[I[BII)[B

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-direct {v13, v6, v5}, Lbb5;-><init>([BI)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    move-object p0, v0

    .line 95
    goto :goto_1

    .line 96
    :cond_0
    new-instance p0, Lza5;

    .line 97
    .line 98
    iget v0, v7, Lya5;->a:I

    .line 99
    .line 100
    invoke-direct {p0, v0, v2, v4}, Lza5;-><init>(I[BLjava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    :try_start_2
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->release()V

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :catchall_1
    move-exception v0

    .line 111
    move-object p0, v0

    .line 112
    goto :goto_2

    .line 113
    :goto_1
    :try_start_3
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 117
    .line 118
    .line 119
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    :goto_2
    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->release()V

    .line 121
    .line 122
    .line 123
    throw p0
.end method
