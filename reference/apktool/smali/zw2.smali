.class public final Lzw2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final h:Z


# instance fields
.field public final a:Ldi4;

.field public final b:Lfo8;

.field public final c:Lq35;

.field public final d:Lxw2;

.field public final e:Lbe;

.field public final f:Lnn1;

.field public final g:Ly8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Engine"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lzw2;->h:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lq35;Lfu;Ljy3;Ljy3;Ljy3;Ljy3;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzw2;->c:Lq35;

    .line 5
    .line 6
    new-instance v0, Lyw2;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lyw2;-><init>(Lfu;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Ly8;

    .line 12
    .line 13
    invoke-direct {p2}, Ly8;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lzw2;->g:Ly8;

    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    iput-object p0, p2, Ly8;->d:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    new-instance p2, Lfo8;

    .line 25
    .line 26
    const/4 v1, 0x6

    .line 27
    invoke-direct {p2, v1}, Lfo8;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lzw2;->b:Lfo8;

    .line 31
    .line 32
    new-instance p2, Ldi4;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {p2, v1}, Ldi4;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lzw2;->a:Ldi4;

    .line 39
    .line 40
    new-instance v2, Lxw2;

    .line 41
    .line 42
    move-object v8, p0

    .line 43
    move-object v7, p0

    .line 44
    move-object v3, p3

    .line 45
    move-object v4, p4

    .line 46
    move-object v5, p5

    .line 47
    move-object v6, p6

    .line 48
    invoke-direct/range {v2 .. v8}, Lxw2;-><init>(Ljy3;Ljy3;Ljy3;Ljy3;Lzw2;Lzw2;)V

    .line 49
    .line 50
    .line 51
    iput-object v2, v7, Lzw2;->d:Lxw2;

    .line 52
    .line 53
    new-instance p0, Lnn1;

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lnn1;-><init>(Lyw2;)V

    .line 56
    .line 57
    .line 58
    iput-object p0, v7, Lzw2;->f:Lnn1;

    .line 59
    .line 60
    new-instance p0, Lbe;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance p2, Landroid/os/Handler;

    .line 66
    .line 67
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    new-instance p4, Lzl6;

    .line 72
    .line 73
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 77
    .line 78
    .line 79
    iput-object p2, p0, Lbe;->b:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object p0, v7, Lzw2;->e:Lbe;

    .line 82
    .line 83
    iput-object v7, p1, Lq35;->d:Lzw2;

    .line 84
    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    move-object v7, p0

    .line 88
    :goto_0
    move-object p0, v0

    .line 89
    goto :goto_2

    .line 90
    :catchall_1
    move-exception v0

    .line 91
    move-object v7, p0

    .line 92
    :goto_1
    move-object p0, v0

    .line 93
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 94
    :try_start_4
    throw p0

    .line 95
    :catchall_2
    move-exception v0

    .line 96
    goto :goto_0

    .line 97
    :catchall_3
    move-exception v0

    .line 98
    goto :goto_1

    .line 99
    :goto_2
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 100
    throw p0
.end method

.method public static c(Ljava/lang/String;JLex2;)V
    .locals 1

    .line 1
    const-string v0, " in "

    .line 2
    .line 3
    invoke-static {p0, v0}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1, p2}, Lg15;->a(J)D

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "ms, key: "

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "Engine"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static f(Lll6;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lfx2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lfx2;

    .line 6
    .line 7
    invoke-virtual {p0}, Lfx2;->e()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "Cannot release anything but an EngineResource"

    .line 12
    .line 13
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ldy3;Ljava/lang/Object;Ljo4;IILjava/lang/Class;Ljava/lang/Class;Le66;Lkm2;Liz0;ZZLou5;ZZLfh7;Ljava/util/concurrent/Executor;)Le41;
    .locals 23

    move-object/from16 v2, p0

    .line 1
    sget-boolean v0, Lzw2;->h:Z

    if-eqz v0, :cond_0

    sget v0, Lg15;->b:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    :goto_0
    iget-object v3, v2, Lzw2;->b:Lfo8;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v4, Lex2;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v9, p10

    move-object/from16 v12, p13

    invoke-direct/range {v4 .. v12}, Lex2;-><init>(Ljava/lang/Object;Ljo4;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lou5;)V

    .line 6
    monitor-enter p0

    move/from16 v3, p14

    .line 7
    :try_start_0
    invoke-virtual {v2, v4, v3, v0, v1}, Lzw2;->b(Lex2;ZJ)Lfx2;

    move-result-object v5

    if-nez v5, :cond_1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-wide/from16 v21, v0

    move/from16 v16, v3

    move-object/from16 v20, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 8
    invoke-virtual/range {v2 .. v22}, Lzw2;->g(Ldy3;Ljava/lang/Object;Ljo4;IILjava/lang/Class;Ljava/lang/Class;Le66;Lkm2;Ljava/util/Map;ZZLou5;ZZLfh7;Ljava/util/concurrent/Executor;Lex2;J)Le41;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v5

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    move-object/from16 v2, p16

    .line 10
    invoke-virtual {v2, v0, v1}, Lfh7;->h(Lll6;I)V

    const/4 v0, 0x0

    return-object v0

    .line 11
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Lex2;ZJ)Lfx2;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    goto/16 :goto_4

    .line 5
    .line 6
    :cond_0
    iget-object p2, p0, Lzw2;->g:Ly8;

    .line 7
    .line 8
    monitor-enter p2

    .line 9
    :try_start_0
    iget-object v1, p2, Ly8;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lx8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    monitor-exit p2

    .line 22
    move-object v2, v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lfx2;

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p2, v1}, Ly8;->d(Lx8;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_2
    :goto_0
    monitor-exit p2

    .line 41
    :goto_1
    if-eqz v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2}, Lfx2;->a()V

    .line 44
    .line 45
    .line 46
    :cond_3
    if-eqz v2, :cond_5

    .line 47
    .line 48
    sget-boolean p0, Lzw2;->h:Z

    .line 49
    .line 50
    if-eqz p0, :cond_4

    .line 51
    .line 52
    const-string p0, "Loaded resource from active resources"

    .line 53
    .line 54
    invoke-static {p0, p3, p4, p1}, Lzw2;->c(Ljava/lang/String;JLex2;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    return-object v2

    .line 58
    :cond_5
    iget-object v1, p0, Lzw2;->c:Lq35;

    .line 59
    .line 60
    monitor-enter v1

    .line 61
    :try_start_2
    iget-object p2, v1, Lf62;->c:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p2, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Lo35;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    .line 71
    if-nez p2, :cond_6

    .line 72
    .line 73
    monitor-exit v1

    .line 74
    move-object p2, v0

    .line 75
    goto :goto_2

    .line 76
    :cond_6
    :try_start_3
    iget-wide v2, v1, Lf62;->b:J

    .line 77
    .line 78
    iget v4, p2, Lo35;->b:I

    .line 79
    .line 80
    int-to-long v4, v4

    .line 81
    sub-long/2addr v2, v4

    .line 82
    iput-wide v2, v1, Lf62;->b:J

    .line 83
    .line 84
    iget-object p2, p2, Lo35;->a:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    .line 86
    monitor-exit v1

    .line 87
    :goto_2
    move-object v2, p2

    .line 88
    check-cast v2, Lll6;

    .line 89
    .line 90
    if-nez v2, :cond_7

    .line 91
    .line 92
    move-object v6, p0

    .line 93
    move-object v5, p1

    .line 94
    move-object v2, v0

    .line 95
    goto :goto_3

    .line 96
    :cond_7
    instance-of p2, v2, Lfx2;

    .line 97
    .line 98
    if-eqz p2, :cond_8

    .line 99
    .line 100
    check-cast v2, Lfx2;

    .line 101
    .line 102
    move-object v6, p0

    .line 103
    move-object v5, p1

    .line 104
    goto :goto_3

    .line 105
    :cond_8
    new-instance v1, Lfx2;

    .line 106
    .line 107
    const/4 v3, 0x1

    .line 108
    const/4 v4, 0x1

    .line 109
    move-object v6, p0

    .line 110
    move-object v5, p1

    .line 111
    invoke-direct/range {v1 .. v6}, Lfx2;-><init>(Lll6;ZZLjo4;Lzw2;)V

    .line 112
    .line 113
    .line 114
    move-object v2, v1

    .line 115
    :goto_3
    if-eqz v2, :cond_9

    .line 116
    .line 117
    invoke-virtual {v2}, Lfx2;->a()V

    .line 118
    .line 119
    .line 120
    iget-object p0, v6, Lzw2;->g:Ly8;

    .line 121
    .line 122
    invoke-virtual {p0, v5, v2}, Ly8;->a(Ljo4;Lfx2;)V

    .line 123
    .line 124
    .line 125
    :cond_9
    if-eqz v2, :cond_b

    .line 126
    .line 127
    sget-boolean p0, Lzw2;->h:Z

    .line 128
    .line 129
    if-eqz p0, :cond_a

    .line 130
    .line 131
    const-string p0, "Loaded resource from cache"

    .line 132
    .line 133
    invoke-static {p0, p3, p4, v5}, Lzw2;->c(Ljava/lang/String;JLex2;)V

    .line 134
    .line 135
    .line 136
    :cond_a
    return-object v2

    .line 137
    :cond_b
    :goto_4
    return-object v0

    .line 138
    :catchall_1
    move-exception v0

    .line 139
    move-object p0, v0

    .line 140
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 141
    throw p0

    .line 142
    :goto_5
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    throw p0
.end method

.method public final declared-synchronized d(Ldx2;Lex2;Lfx2;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-boolean v0, p3, Lfx2;->a:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lzw2;->g:Ly8;

    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, Ly8;->a(Ljo4;Lfx2;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    :goto_0
    iget-object p3, p0, Lzw2;->a:Ldi4;

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p3, p3, Ldi4;->a:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eq p1, v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :goto_1
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1
.end method

.method public final e(Ljo4;Lfx2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzw2;->g:Ly8;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Ly8;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lx8;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, v1, Lx8;->c:Lll6;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    iget-boolean v0, p2, Lfx2;->a:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lzw2;->c:Lq35;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lf62;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lll6;

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object p0, p0, Lzw2;->e:Lbe;

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p2, p1}, Lbe;->f(Lll6;Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p0
.end method

.method public final g(Ldy3;Ljava/lang/Object;Ljo4;IILjava/lang/Class;Ljava/lang/Class;Le66;Lkm2;Ljava/util/Map;ZZLou5;ZZLfh7;Ljava/util/concurrent/Executor;Lex2;J)Le41;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-wide/from16 v12, p19

    .line 1
    iget-object v14, v0, Lzw2;->a:Ldi4;

    .line 2
    iget-object v14, v14, Ldi4;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ldx2;

    if-eqz v14, :cond_1

    .line 4
    invoke-virtual {v14, v9, v10}, Ldx2;->b(Lfh7;Ljava/util/concurrent/Executor;)V

    .line 5
    sget-boolean v1, Lzw2;->h:Z

    if-eqz v1, :cond_0

    .line 6
    const-string v1, "Added to existing load"

    invoke-static {v1, v12, v13, v11}, Lzw2;->c(Ljava/lang/String;JLex2;)V

    .line 7
    :cond_0
    new-instance v1, Le41;

    invoke-direct {v1, v0, v9, v14}, Le41;-><init>(Lzw2;Lfh7;Ldx2;)V

    return-object v1

    .line 8
    :cond_1
    iget-object v14, v0, Lzw2;->d:Lxw2;

    .line 9
    iget-object v14, v14, Lxw2;->g:Ll22;

    invoke-virtual {v14}, Ll22;->d()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ldx2;

    .line 10
    monitor-enter v14

    .line 11
    :try_start_0
    iput-object v11, v14, Ldx2;->r:Lex2;

    move/from16 v15, p14

    .line 12
    iput-boolean v15, v14, Ldx2;->t:Z

    move/from16 v15, p15

    .line 13
    iput-boolean v15, v14, Ldx2;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    monitor-exit v14

    .line 15
    iget-object v15, v0, Lzw2;->f:Lnn1;

    .line 16
    iget-object v12, v15, Lnn1;->c:Ljava/lang/Object;

    check-cast v12, Ll22;

    invoke-virtual {v12}, Ll22;->d()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ltd2;

    .line 17
    iget v13, v15, Lnn1;->a:I

    add-int/lit8 v9, v13, 0x1

    iput v9, v15, Lnn1;->a:I

    .line 18
    iget-object v9, v12, Ltd2;->a:Lqd2;

    iget-object v15, v12, Ltd2;->d:Lyw2;

    .line 19
    iput-object v1, v9, Lqd2;->c:Ldy3;

    .line 20
    iput-object v2, v9, Lqd2;->d:Ljava/lang/Object;

    .line 21
    iput-object v3, v9, Lqd2;->n:Ljo4;

    .line 22
    iput v4, v9, Lqd2;->e:I

    .line 23
    iput v5, v9, Lqd2;->f:I

    .line 24
    iput-object v7, v9, Lqd2;->p:Lkm2;

    move-object/from16 v10, p6

    .line 25
    iput-object v10, v9, Lqd2;->g:Ljava/lang/Class;

    .line 26
    iput-object v15, v9, Lqd2;->h:Lyw2;

    move-object/from16 v10, p7

    .line 27
    iput-object v10, v9, Lqd2;->k:Ljava/lang/Class;

    .line 28
    iput-object v6, v9, Lqd2;->o:Le66;

    .line 29
    iput-object v8, v9, Lqd2;->i:Lou5;

    move-object/from16 v10, p10

    .line 30
    iput-object v10, v9, Lqd2;->j:Ljava/util/Map;

    move/from16 v10, p11

    .line 31
    iput-boolean v10, v9, Lqd2;->q:Z

    move/from16 v10, p12

    .line 32
    iput-boolean v10, v9, Lqd2;->r:Z

    .line 33
    iput-object v1, v12, Ltd2;->n:Ldy3;

    .line 34
    iput-object v3, v12, Ltd2;->p:Ljo4;

    .line 35
    iput-object v6, v12, Ltd2;->q:Le66;

    .line 36
    iput-object v11, v12, Ltd2;->r:Lex2;

    .line 37
    iput v4, v12, Ltd2;->t:I

    .line 38
    iput v5, v12, Ltd2;->x:I

    .line 39
    iput-object v7, v12, Ltd2;->y:Lkm2;

    .line 40
    iput-object v8, v12, Ltd2;->G:Lou5;

    .line 41
    iput-object v14, v12, Ltd2;->H:Ldx2;

    .line 42
    iput v13, v12, Ltd2;->I:I

    const/4 v1, 0x1

    .line 43
    iput v1, v12, Ltd2;->V:I

    .line 44
    iput-object v2, v12, Ltd2;->K:Ljava/lang/Object;

    .line 45
    iget-object v2, v0, Lzw2;->a:Ldi4;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    iget-object v2, v2, Ldi4;->a:Ljava/util/HashMap;

    .line 47
    invoke-virtual {v2, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    .line 48
    invoke-virtual {v14, v9, v10}, Ldx2;->b(Lfh7;Ljava/util/concurrent/Executor;)V

    .line 49
    monitor-enter v14

    .line 50
    :try_start_1
    iput-object v12, v14, Ldx2;->L:Ltd2;

    .line 51
    invoke-virtual {v12, v1}, Ltd2;->h(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 52
    :cond_2
    iget-boolean v1, v14, Ldx2;->x:Z

    if-eqz v1, :cond_3

    iget-object v1, v14, Ldx2;->p:Ljy3;

    goto :goto_1

    :cond_3
    iget-object v1, v14, Ldx2;->n:Ljy3;

    goto :goto_1

    .line 53
    :cond_4
    :goto_0
    iget-object v1, v14, Ldx2;->k:Ljy3;

    .line 54
    :goto_1
    invoke-virtual {v1, v12}, Ljy3;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit v14

    .line 56
    sget-boolean v1, Lzw2;->h:Z

    if-eqz v1, :cond_5

    .line 57
    const-string v1, "Started new load"

    move-wide/from16 v12, p19

    invoke-static {v1, v12, v13, v11}, Lzw2;->c(Ljava/lang/String;JLex2;)V

    .line 58
    :cond_5
    new-instance v1, Le41;

    invoke-direct {v1, v0, v9, v14}, Le41;-><init>(Lzw2;Lfh7;Ldx2;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 59
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 60
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
