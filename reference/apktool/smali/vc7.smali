.class public abstract Lvc7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final G:Lus2;

.field public static final y:Lfo8;


# instance fields
.field public final a:Lfi7;

.field public final b:Lab8;

.field public final c:J

.field public final d:Lj87;

.field public final e:Lus6;

.field public final f:I

.field public final k:J

.field public final n:I

.field public final p:J

.field public final q:I

.field public final r:J

.field public final t:J

.field public final x:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lnr6;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    new-array v2, v1, [B

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v0, v3, v2, v1}, Lnr6;-><init>(I[B[B)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lfo8;

    .line 20
    .line 21
    const/16 v1, 0xf

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lfo8;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lvc7;->y:Lfo8;

    .line 27
    .line 28
    new-instance v0, Lus2;

    .line 29
    .line 30
    const/16 v1, 0x19

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lus2;-><init>(I)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lvc7;->G:Lus2;

    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Lfi7;Lab8;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lvc7;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Lvc7;->a:Lfi7;

    .line 13
    .line 14
    iput-object p2, p0, Lvc7;->b:Lab8;

    .line 15
    .line 16
    iget-object p1, p2, Lab8;->c:Lj87;

    .line 17
    .line 18
    iput-object p1, p0, Lvc7;->d:Lj87;

    .line 19
    .line 20
    iget-object v0, p2, Lab8;->d:Lru3;

    .line 21
    .line 22
    iget-object v1, v0, Lru3;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lus6;

    .line 25
    .line 26
    iput-object v1, p0, Lvc7;->e:Lus6;

    .line 27
    .line 28
    iget-object v1, p2, Lab8;->e:Ldi7;

    .line 29
    .line 30
    iget v2, v1, Ldi7;->i:I

    .line 31
    .line 32
    iget v3, v0, Lru3;->c:I

    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iput v2, p0, Lvc7;->f:I

    .line 39
    .line 40
    iget-wide v2, v1, Ldi7;->j:J

    .line 41
    .line 42
    iput-wide v2, p0, Lvc7;->k:J

    .line 43
    .line 44
    iget v2, v1, Ldi7;->k:I

    .line 45
    .line 46
    iget v3, v0, Lru3;->d:I

    .line 47
    .line 48
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iput v2, p0, Lvc7;->n:I

    .line 53
    .line 54
    iget-wide v2, v1, Ldi7;->l:J

    .line 55
    .line 56
    iput-wide v2, p0, Lvc7;->p:J

    .line 57
    .line 58
    iget v2, v1, Ldi7;->m:I

    .line 59
    .line 60
    iget v0, v0, Lru3;->b:I

    .line 61
    .line 62
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lvc7;->q:I

    .line 67
    .line 68
    iget-wide v0, v1, Ldi7;->o:J

    .line 69
    .line 70
    iput-wide v0, p0, Lvc7;->r:J

    .line 71
    .line 72
    iget-wide v0, p1, Lj87;->a:J

    .line 73
    .line 74
    iput-wide v0, p0, Lvc7;->t:J

    .line 75
    .line 76
    iget-wide p1, p2, Lab8;->a:J

    .line 77
    .line 78
    iput-wide p1, p0, Lvc7;->c:J

    .line 79
    .line 80
    return-void
.end method

.method public static a(Lp21;Ljava/lang/String;Ljava/lang/Object;Lzm7;J)Lrt6;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p4, v0

    .line 4
    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_0
    .catch Lva8; {:try_start_0 .. :try_end_0} :catch_3

    .line 8
    .line 9
    :try_start_1
    iget-object p0, p0, Lp21;->a:Ln86;

    .line 10
    .line 11
    invoke-virtual {p0, p4, p5, v0}, Ln86;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lva8; {:try_start_1 .. :try_end_1} :catch_3

    .line 15
    :try_start_2
    check-cast p0, Lrt6;

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :catch_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception p0

    .line 21
    :goto_0
    instance-of p1, p0, Lva8;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    check-cast p0, Lva8;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    new-instance p1, Lva8;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    move-object p0, p1

    .line 34
    :goto_1
    throw p0

    .line 35
    :catch_2
    move-exception p0

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lva8;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw p1
    :try_end_2
    .catch Lva8; {:try_start_2 .. :try_end_2} :catch_3

    .line 49
    :cond_1
    :try_start_3
    iget-object p0, p0, Lp21;->a:Ln86;

    .line 50
    .line 51
    invoke-virtual {p0}, Ln86;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lva8; {:try_start_3 .. :try_end_3} :catch_3

    .line 55
    :try_start_4
    check-cast p0, Lrt6;
    :try_end_4
    .catch Lva8; {:try_start_4 .. :try_end_4} :catch_3

    .line 56
    .line 57
    :goto_2
    invoke-virtual {p0}, Lev6;->c()Ldv6;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    check-cast p4, Lut6;

    .line 62
    .line 63
    iget-wide p4, p4, Lut6;->j:J

    .line 64
    .line 65
    invoke-interface {p3, p4, p5}, Lzm7;->c(J)Z

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    if-eqz p3, :cond_2

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_2
    new-instance p3, Lyu6;

    .line 73
    .line 74
    invoke-virtual {p0}, Lev6;->c()Ldv6;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Lut6;

    .line 79
    .line 80
    new-instance p4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, " failed for "

    .line 89
    .line 90
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p3, p0, p1}, Lyu6;-><init>(Lut6;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p3

    .line 104
    :catch_3
    move-exception p0

    .line 105
    goto :goto_3

    .line 106
    :catch_4
    move-exception p0

    .line 107
    :try_start_5
    new-instance p1, Lva8;

    .line 108
    .line 109
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :catch_5
    move-exception p0

    .line 114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 119
    .line 120
    .line 121
    new-instance p1, Lva8;

    .line 122
    .line 123
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    throw p1
    :try_end_5
    .catch Lva8; {:try_start_5 .. :try_end_5} :catch_3

    .line 127
    :goto_3
    new-instance p1, Lgv6;

    .line 128
    .line 129
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    throw p1
.end method


# virtual methods
.method public final b(Lrt6;)Lp21;
    .locals 1

    .line 1
    iget-object v0, p0, Lvc7;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lvc7;->d:Lj87;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lj87;->n(Lrt6;)Lp21;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Lva8; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Lgv6;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_0
    new-instance p1, Lgv6;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, " has already been closed"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public final close()V
    .locals 11

    .line 1
    iget-object v0, p0, Lvc7;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object p0, p0, Lvc7;->b:Lab8;

    .line 11
    .line 12
    iget-wide v6, p0, Lab8;->a:J

    .line 13
    .line 14
    iget-object v8, p0, Lab8;->f:Lcv6;

    .line 15
    .line 16
    iget-object v9, p0, Lab8;->c:Lj87;

    .line 17
    .line 18
    const-string v10, "Error closing connection to "

    .line 19
    .line 20
    :try_start_0
    new-instance v0, Lat6;

    .line 21
    .line 22
    iget-object v1, p0, Lab8;->d:Lru3;

    .line 23
    .line 24
    iget-object v1, v1, Lru3;->e:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v2, v1

    .line 27
    check-cast v2, Lus6;

    .line 28
    .line 29
    iget-wide v4, v9, Lj87;->a:J

    .line 30
    .line 31
    sget-object v3, Lit6;->f:Lit6;

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    invoke-direct/range {v0 .. v7}, Lat6;-><init>(ILus6;Lit6;JJ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v9, v0}, Lj87;->n(Lrt6;)Lp21;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lab8;->e:Ldi7;

    .line 42
    .line 43
    iget-wide v1, v1, Ldi7;->o:J

    .line 44
    .line 45
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    :try_start_1
    iget-object v0, v0, Lp21;->a:Ln86;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, v3}, Ln86;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    check-cast v0, Lrt6;

    .line 54
    .line 55
    invoke-virtual {v0}, Lev6;->c()Ldv6;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lut6;

    .line 60
    .line 61
    iget-wide v1, v1, Lut6;->j:J

    .line 62
    .line 63
    invoke-static {v1, v2}, Lbp5;->a(J)Z

    .line 64
    .line 65
    .line 66
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    new-instance p0, Lbb8;

    .line 70
    .line 71
    iget-wide v0, v9, Lj87;->a:J

    .line 72
    .line 73
    invoke-direct {p0, v0, v1, v6, v7}, Lbb8;-><init>(JJ)V

    .line 74
    .line 75
    .line 76
    iget-object v0, v8, Lcv6;->a:Lju7;

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Lju7;->g(Ljava/lang/Object;)Lrd5;

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    :try_start_3
    new-instance v1, Lyu6;

    .line 83
    .line 84
    invoke-virtual {v0}, Lev6;->c()Ldv6;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lut6;

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lab8;->b:Lfi7;

    .line 96
    .line 97
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-direct {v1, v0, p0}, Lyu6;-><init>(Lut6;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v1

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    move-object p0, v0

    .line 110
    goto :goto_4

    .line 111
    :catch_0
    move-exception v0

    .line 112
    :goto_0
    move-object p0, v0

    .line 113
    goto :goto_1

    .line 114
    :catch_1
    move-exception v0

    .line 115
    goto :goto_0

    .line 116
    :catch_2
    move-exception v0

    .line 117
    move-object p0, v0

    .line 118
    goto :goto_3

    .line 119
    :goto_1
    instance-of v0, p0, Lva8;

    .line 120
    .line 121
    if-eqz v0, :cond_1

    .line 122
    .line 123
    check-cast p0, Lva8;

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_1
    new-instance v0, Lva8;

    .line 127
    .line 128
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    move-object p0, v0

    .line 132
    :goto_2
    throw p0

    .line 133
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 138
    .line 139
    .line 140
    new-instance v0, Lva8;

    .line 141
    .line 142
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    :goto_4
    new-instance v0, Lbb8;

    .line 147
    .line 148
    iget-wide v1, v9, Lj87;->a:J

    .line 149
    .line 150
    invoke-direct {v0, v1, v2, v6, v7}, Lbb8;-><init>(JJ)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v8, Lcv6;->a:Lju7;

    .line 154
    .line 155
    invoke-virtual {v1, v0}, Lju7;->g(Ljava/lang/Object;)Lrd5;

    .line 156
    .line 157
    .line 158
    throw p0

    .line 159
    :cond_2
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eq v2, v3, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    check-cast p1, Lvc7;

    .line 21
    .line 22
    iget-object p1, p1, Lvc7;->a:Lfi7;

    .line 23
    .line 24
    iget-object p0, p0, Lvc7;->a:Lfi7;

    .line 25
    .line 26
    if-nez p0, :cond_3

    .line 27
    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    invoke-virtual {p0, p1}, Lfi7;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object p0, p0, Lvc7;->a:Lfi7;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lfi7;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    :goto_0
    const/16 v0, 0x1f

    .line 12
    .line 13
    add-int/2addr v0, p0

    .line 14
    return v0
.end method
