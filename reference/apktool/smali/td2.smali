.class public final Ltd2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsa2;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Ld33;


# instance fields
.field public G:Lou5;

.field public H:Ldx2;

.field public I:I

.field public J:J

.field public K:Ljava/lang/Object;

.field public L:Ljava/lang/Thread;

.field public M:Ljo4;

.field public N:Ljo4;

.field public O:Ljava/lang/Object;

.field public P:Lra2;

.field public volatile Q:Lta2;

.field public volatile R:Z

.field public volatile S:Z

.field public T:Z

.field public U:I

.field public V:I

.field public W:I

.field public final a:Lqd2;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lrm7;

.field public final d:Lyw2;

.field public final e:Ld36;

.field public final f:Lx00;

.field public final k:Lsd2;

.field public n:Ldy3;

.field public p:Ljo4;

.field public q:Le66;

.field public r:Lex2;

.field public t:I

.field public x:I

.field public y:Lkm2;


# direct methods
.method public constructor <init>(Lyw2;Ll22;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lqd2;

    .line 5
    .line 6
    invoke-direct {v0}, Lqd2;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ltd2;->a:Lqd2;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ltd2;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lrm7;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ltd2;->c:Lrm7;

    .line 24
    .line 25
    new-instance v0, Lx00;

    .line 26
    .line 27
    invoke-direct {v0}, Lx00;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Ltd2;->f:Lx00;

    .line 31
    .line 32
    new-instance v0, Lsd2;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Ltd2;->k:Lsd2;

    .line 38
    .line 39
    iput-object p1, p0, Ltd2;->d:Lyw2;

    .line 40
    .line 41
    iput-object p2, p0, Ltd2;->e:Ld36;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a()Lrm7;
    .locals 0

    .line 1
    iget-object p0, p0, Ltd2;->c:Lrm7;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Ljo4;Ljava/lang/Object;Lra2;ILjo4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltd2;->M:Ljo4;

    .line 2
    .line 3
    iput-object p2, p0, Ltd2;->O:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ltd2;->P:Lra2;

    .line 6
    .line 7
    iput p4, p0, Ltd2;->W:I

    .line 8
    .line 9
    iput-object p5, p0, Ltd2;->N:Ljo4;

    .line 10
    .line 11
    iget-object p2, p0, Ltd2;->a:Lqd2;

    .line 12
    .line 13
    invoke-virtual {p2}, Lqd2;->a()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eq p1, p2, :cond_0

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    :cond_0
    iput-boolean p3, p0, Ltd2;->T:Z

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Ltd2;->L:Ljava/lang/Thread;

    .line 32
    .line 33
    if-eq p1, p2, :cond_2

    .line 34
    .line 35
    const/4 p1, 0x3

    .line 36
    iput p1, p0, Ltd2;->V:I

    .line 37
    .line 38
    iget-object p1, p0, Ltd2;->H:Ldx2;

    .line 39
    .line 40
    iget-boolean p2, p1, Ldx2;->x:Z

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    iget-object p1, p1, Ldx2;->p:Ljy3;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p1, Ldx2;->n:Ljy3;

    .line 48
    .line 49
    :goto_0
    invoke-virtual {p1, p0}, Ljy3;->execute(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    invoke-virtual {p0}, Ltd2;->f()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final c(Ljo4;Ljava/lang/Exception;Lra2;I)V
    .locals 2

    .line 1
    invoke-interface {p3}, Lra2;->c()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfy3;

    .line 5
    .line 6
    const-string v1, "Fetching data failed"

    .line 7
    .line 8
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-direct {v0, v1, p2}, Lfy3;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p3}, Lra2;->a()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p1, v0, Lfy3;->b:Ljo4;

    .line 20
    .line 21
    iput p4, v0, Lfy3;->c:I

    .line 22
    .line 23
    iput-object p2, v0, Lfy3;->d:Ljava/lang/Class;

    .line 24
    .line 25
    iget-object p1, p0, Ltd2;->b:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Ltd2;->L:Ljava/lang/Thread;

    .line 35
    .line 36
    if-eq p1, p2, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x2

    .line 39
    iput p1, p0, Ltd2;->V:I

    .line 40
    .line 41
    iget-object p1, p0, Ltd2;->H:Ldx2;

    .line 42
    .line 43
    iget-boolean p2, p1, Ldx2;->x:Z

    .line 44
    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    iget-object p1, p1, Ldx2;->p:Ljy3;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p1, Ldx2;->n:Ljy3;

    .line 51
    .line 52
    :goto_0
    invoke-virtual {p1, p0}, Ljy3;->execute(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Ltd2;->l()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Ltd2;

    .line 2
    .line 3
    iget-object v0, p0, Ltd2;->q:Le66;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p1, Ltd2;->q:Le66;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget p0, p0, Ltd2;->I:I

    .line 19
    .line 20
    iget p1, p1, Ltd2;->I:I

    .line 21
    .line 22
    sub-int/2addr p0, p1

    .line 23
    return p0

    .line 24
    :cond_0
    return v0
.end method

.method public final d(Lra2;Ljava/lang/Object;I)Lll6;
    .locals 5

    .line 1
    const-string v0, "Decoded result "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Lra2;->c()V

    .line 7
    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    :try_start_0
    sget v2, Lg15;->b:I

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {p0, p3, p2}, Ltd2;->e(ILjava/lang/Object;)Lll6;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string p3, "DecodeJob"

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    invoke-static {p3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p0, p3, v1, v2, v3}, Ltd2;->i(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    invoke-interface {p1}, Lra2;->c()V

    .line 48
    .line 49
    .line 50
    return-object p2

    .line 51
    :goto_1
    invoke-interface {p1}, Lra2;->c()V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final e(ILjava/lang/Object;)Lll6;
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ltd2;->a:Lqd2;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lqd2;->c(Ljava/lang/Class;)Laz4;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v0, p0, Ltd2;->G:Lou5;

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    if-eq p1, v3, :cond_1

    .line 15
    .line 16
    iget-boolean v1, v1, Lqd2;->r:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 24
    :goto_1
    sget-object v3, Luo2;->i:Liu5;

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Lou5;->c(Liu5;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/lang/Boolean;

    .line 31
    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    :cond_2
    :goto_2
    move-object v7, v0

    .line 43
    goto :goto_3

    .line 44
    :cond_3
    new-instance v0, Lou5;

    .line 45
    .line 46
    invoke-direct {v0}, Lou5;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, Ltd2;->G:Lou5;

    .line 50
    .line 51
    iget-object v4, v4, Lou5;->b:Liz0;

    .line 52
    .line 53
    iget-object v5, v0, Lou5;->b:Liz0;

    .line 54
    .line 55
    invoke-virtual {v5, v4}, Liz0;->h(Lk50;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v5, v3, v1}, Liz0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_3
    iget-object v0, p0, Ltd2;->n:Ldy3;

    .line 67
    .line 68
    invoke-virtual {v0}, Ldy3;->a()Lmi6;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0, p2}, Lmi6;->g(Ljava/lang/Object;)Lza2;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    :try_start_0
    iget v3, p0, Ltd2;->t:I

    .line 77
    .line 78
    iget v4, p0, Ltd2;->x:I

    .line 79
    .line 80
    new-instance v6, Lrd2;

    .line 81
    .line 82
    invoke-direct {v6, p0, p1}, Lrd2;-><init>(Ltd2;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {v2 .. v7}, Laz4;->a(IILza2;Lrd2;Lou5;)Lll6;

    .line 86
    .line 87
    .line 88
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-interface {v5}, Lza2;->c()V

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    move-object p0, v0

    .line 95
    invoke-interface {v5}, Lza2;->c()V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public final f()V
    .locals 12

    .line 1
    const-string v0, "DecodeJob"

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
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "Retrieved data"

    .line 11
    .line 12
    iget-wide v1, p0, Ltd2;->J:J

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "data: "

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Ltd2;->O:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, ", cache key: "

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Ltd2;->M:Ljo4;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, ", fetcher: "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Ltd2;->P:Lra2;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p0, v0, v3, v1, v2}, Ltd2;->i(Ljava/lang/String;Ljava/lang/String;J)V

    .line 51
    .line 52
    .line 53
    :cond_0
    const/4 v1, 0x0

    .line 54
    :try_start_0
    iget-object v0, p0, Ltd2;->P:Lra2;

    .line 55
    .line 56
    iget-object v2, p0, Ltd2;->O:Ljava/lang/Object;

    .line 57
    .line 58
    iget v3, p0, Ltd2;->W:I

    .line 59
    .line 60
    invoke-virtual {p0, v0, v2, v3}, Ltd2;->d(Lra2;Ljava/lang/Object;I)Lll6;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_0
    .catch Lfy3; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    iget-object v2, p0, Ltd2;->N:Ljo4;

    .line 67
    .line 68
    iget v3, p0, Ltd2;->W:I

    .line 69
    .line 70
    iput-object v2, v0, Lfy3;->b:Ljo4;

    .line 71
    .line 72
    iput v3, v0, Lfy3;->c:I

    .line 73
    .line 74
    iput-object v1, v0, Lfy3;->d:Ljava/lang/Class;

    .line 75
    .line 76
    iget-object v2, p0, Ltd2;->b:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-object v0, v1

    .line 82
    :goto_0
    if-eqz v0, :cond_b

    .line 83
    .line 84
    iget v2, p0, Ltd2;->W:I

    .line 85
    .line 86
    instance-of v3, v0, Ldc4;

    .line 87
    .line 88
    if-eqz v3, :cond_1

    .line 89
    .line 90
    move-object v3, v0

    .line 91
    check-cast v3, Ldc4;

    .line 92
    .line 93
    invoke-interface {v3}, Ldc4;->a()V

    .line 94
    .line 95
    .line 96
    :cond_1
    iget-object v3, p0, Ltd2;->f:Lx00;

    .line 97
    .line 98
    iget-object v3, v3, Lx00;->d:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v3, Lz05;

    .line 101
    .line 102
    const/4 v4, 0x0

    .line 103
    const/4 v5, 0x1

    .line 104
    if-eqz v3, :cond_2

    .line 105
    .line 106
    sget-object v1, Lz05;->e:Ll22;

    .line 107
    .line 108
    invoke-virtual {v1}, Ll22;->d()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Lz05;

    .line 113
    .line 114
    iput-boolean v4, v1, Lz05;->d:Z

    .line 115
    .line 116
    iput-boolean v5, v1, Lz05;->c:Z

    .line 117
    .line 118
    iput-object v0, v1, Lz05;->b:Lll6;

    .line 119
    .line 120
    move-object v0, v1

    .line 121
    :cond_2
    invoke-virtual {p0}, Ltd2;->p()V

    .line 122
    .line 123
    .line 124
    iget-object v3, p0, Ltd2;->H:Ldx2;

    .line 125
    .line 126
    monitor-enter v3

    .line 127
    :try_start_1
    iput-object v0, v3, Ldx2;->y:Lll6;

    .line 128
    .line 129
    iput v2, v3, Ldx2;->G:I

    .line 130
    .line 131
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 132
    monitor-enter v3

    .line 133
    :try_start_2
    iget-object v0, v3, Ldx2;->b:Lrm7;

    .line 134
    .line 135
    invoke-virtual {v0}, Lrm7;->a()V

    .line 136
    .line 137
    .line 138
    iget-boolean v0, v3, Ldx2;->M:Z

    .line 139
    .line 140
    if-eqz v0, :cond_3

    .line 141
    .line 142
    iget-object v0, v3, Ldx2;->y:Lll6;

    .line 143
    .line 144
    invoke-interface {v0}, Lll6;->b()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Ldx2;->f()V

    .line 148
    .line 149
    .line 150
    monitor-exit v3

    .line 151
    goto :goto_2

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    move-object p0, v0

    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :cond_3
    iget-object v0, v3, Ldx2;->a:Lcx2;

    .line 157
    .line 158
    iget-object v0, v0, Lcx2;->a:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_a

    .line 165
    .line 166
    iget-boolean v0, v3, Ldx2;->H:Z

    .line 167
    .line 168
    if-nez v0, :cond_9

    .line 169
    .line 170
    iget-object v0, v3, Ldx2;->e:Llv1;

    .line 171
    .line 172
    iget-object v7, v3, Ldx2;->y:Lll6;

    .line 173
    .line 174
    iget-boolean v8, v3, Ldx2;->t:Z

    .line 175
    .line 176
    iget-object v10, v3, Ldx2;->r:Lex2;

    .line 177
    .line 178
    iget-object v11, v3, Ldx2;->c:Lzw2;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    new-instance v6, Lfx2;

    .line 184
    .line 185
    const/4 v9, 0x1

    .line 186
    invoke-direct/range {v6 .. v11}, Lfx2;-><init>(Lll6;ZZLjo4;Lzw2;)V

    .line 187
    .line 188
    .line 189
    iput-object v6, v3, Ldx2;->K:Lfx2;

    .line 190
    .line 191
    iput-boolean v5, v3, Ldx2;->H:Z

    .line 192
    .line 193
    iget-object v0, v3, Ldx2;->a:Lcx2;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    new-instance v2, Ljava/util/ArrayList;

    .line 199
    .line 200
    iget-object v0, v0, Lcx2;->a:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    add-int/2addr v0, v5

    .line 210
    invoke-virtual {v3, v0}, Ldx2;->d(I)V

    .line 211
    .line 212
    .line 213
    iget-object v0, v3, Ldx2;->r:Lex2;

    .line 214
    .line 215
    iget-object v6, v3, Ldx2;->K:Lfx2;

    .line 216
    .line 217
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    iget-object v7, v3, Ldx2;->f:Lzw2;

    .line 219
    .line 220
    invoke-virtual {v7, v3, v0, v6}, Lzw2;->d(Ldx2;Lex2;Lfx2;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_4

    .line 232
    .line 233
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    check-cast v2, Lbx2;

    .line 238
    .line 239
    iget-object v6, v2, Lbx2;->b:Ljava/util/concurrent/Executor;

    .line 240
    .line 241
    new-instance v7, Ltd9;

    .line 242
    .line 243
    iget-object v2, v2, Lbx2;->a:Lfh7;

    .line 244
    .line 245
    invoke-direct {v7, v5, v3, v2}, Ltd9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_4
    invoke-virtual {v3}, Ldx2;->c()V

    .line 253
    .line 254
    .line 255
    :goto_2
    const/4 v0, 0x5

    .line 256
    iput v0, p0, Ltd2;->U:I

    .line 257
    .line 258
    :try_start_3
    iget-object v2, p0, Ltd2;->f:Lx00;

    .line 259
    .line 260
    iget-object v0, v2, Lx00;->d:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v0, Lz05;

    .line 263
    .line 264
    if-eqz v0, :cond_5

    .line 265
    .line 266
    move v4, v5

    .line 267
    :cond_5
    if-eqz v4, :cond_6

    .line 268
    .line 269
    iget-object v0, p0, Ltd2;->d:Lyw2;

    .line 270
    .line 271
    iget-object v3, p0, Ltd2;->G:Lou5;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 272
    .line 273
    :try_start_4
    invoke-virtual {v0}, Lyw2;->a()Lgm2;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iget-object v4, v2, Lx00;->b:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v4, Ljo4;

    .line 280
    .line 281
    new-instance v6, Lu94;

    .line 282
    .line 283
    iget-object v7, v2, Lx00;->c:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v7, Ltl6;

    .line 286
    .line 287
    iget-object v8, v2, Lx00;->d:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v8, Lz05;

    .line 290
    .line 291
    invoke-direct {v6, v7, v8, v3}, Lu94;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-interface {v0, v4, v6}, Lgm2;->g(Ljo4;Lu94;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 295
    .line 296
    .line 297
    :try_start_5
    iget-object v0, v2, Lx00;->d:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v0, Lz05;

    .line 300
    .line 301
    invoke-virtual {v0}, Lz05;->e()V

    .line 302
    .line 303
    .line 304
    goto :goto_3

    .line 305
    :catchall_1
    move-exception v0

    .line 306
    move-object p0, v0

    .line 307
    iget-object v0, v2, Lx00;->d:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v0, Lz05;

    .line 310
    .line 311
    invoke-virtual {v0}, Lz05;->e()V

    .line 312
    .line 313
    .line 314
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 315
    :catchall_2
    move-exception v0

    .line 316
    move-object p0, v0

    .line 317
    goto :goto_4

    .line 318
    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 319
    .line 320
    invoke-virtual {v1}, Lz05;->e()V

    .line 321
    .line 322
    .line 323
    :cond_7
    iget-object v2, p0, Ltd2;->k:Lsd2;

    .line 324
    .line 325
    monitor-enter v2

    .line 326
    :try_start_6
    iput-boolean v5, v2, Lsd2;->b:Z

    .line 327
    .line 328
    invoke-virtual {v2}, Lsd2;->a()Z

    .line 329
    .line 330
    .line 331
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 332
    monitor-exit v2

    .line 333
    if-eqz v0, :cond_c

    .line 334
    .line 335
    invoke-virtual {p0}, Ltd2;->k()V

    .line 336
    .line 337
    .line 338
    goto :goto_6

    .line 339
    :catchall_3
    move-exception v0

    .line 340
    move-object p0, v0

    .line 341
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 342
    throw p0

    .line 343
    :goto_4
    if-eqz v1, :cond_8

    .line 344
    .line 345
    invoke-virtual {v1}, Lz05;->e()V

    .line 346
    .line 347
    .line 348
    :cond_8
    throw p0

    .line 349
    :cond_9
    :try_start_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 350
    .line 351
    const-string v0, "Already have resource"

    .line 352
    .line 353
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    throw p0

    .line 357
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 358
    .line 359
    const-string v0, "Received a resource without any callbacks to notify"

    .line 360
    .line 361
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw p0

    .line 365
    :goto_5
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 366
    throw p0

    .line 367
    :catchall_4
    move-exception v0

    .line 368
    move-object p0, v0

    .line 369
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 370
    throw p0

    .line 371
    :cond_b
    invoke-virtual {p0}, Ltd2;->l()V

    .line 372
    .line 373
    .line 374
    :cond_c
    :goto_6
    return-void
.end method

.method public final g()Lta2;
    .locals 3

    .line 1
    iget v0, p0, Ltd2;->U:I

    .line 2
    .line 3
    invoke-static {v0}, Ldj7;->A(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Ltd2;->a:Lqd2;

    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    const/4 v2, 0x0

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_0
    iget p0, p0, Ltd2;->U:I

    .line 24
    .line 25
    invoke-static {p0}, Lxs1;->w(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "Unrecognized stage: "

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_1
    new-instance v0, Ljj7;

    .line 40
    .line 41
    invoke-direct {v0, v2, p0}, Ljj7;-><init>(Lqd2;Ltd2;)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_2
    new-instance v0, Lha2;

    .line 46
    .line 47
    invoke-virtual {v2}, Lqd2;->a()Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1, v2, p0}, Lha2;-><init>(Ljava/util/List;Lqd2;Lsa2;)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_3
    new-instance v0, Lol6;

    .line 56
    .line 57
    invoke-direct {v0, v2, p0}, Lol6;-><init>(Lqd2;Ltd2;)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method

.method public final h(I)I
    .locals 4

    .line 1
    invoke-static {p1}, Ldj7;->A(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq v0, v2, :cond_3

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    if-eq v0, v3, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x5

    .line 17
    if-ne v0, p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1}, Lxs1;->w(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "Unrecognized stage: "

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_1
    :goto_0
    const/4 p0, 0x6

    .line 36
    return p0

    .line 37
    :cond_2
    const/4 p0, 0x4

    .line 38
    return p0

    .line 39
    :cond_3
    iget-object p1, p0, Ltd2;->y:Lkm2;

    .line 40
    .line 41
    invoke-virtual {p1}, Lkm2;->a()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    return v3

    .line 48
    :cond_4
    invoke-virtual {p0, v3}, Ltd2;->h(I)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_5
    iget-object p1, p0, Ltd2;->y:Lkm2;

    .line 54
    .line 55
    invoke-virtual {p1}, Lkm2;->b()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    return v1

    .line 62
    :cond_6
    invoke-virtual {p0, v1}, Ltd2;->h(I)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 1
    const-string v0, " in "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p3, p4}, Lg15;->a(J)D

    .line 8
    .line 9
    .line 10
    move-result-wide p3

    .line 11
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p3, ", load key: "

    .line 15
    .line 16
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Ltd2;->r:Lex2;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const-string p0, ", "

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p0, ""

    .line 34
    .line 35
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, ", thread: "

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "DecodeJob"

    .line 59
    .line 60
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final j()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ltd2;->p()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfy3;

    .line 5
    .line 6
    const-string v1, "Failed to load resource"

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Ltd2;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lfy3;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ltd2;->H:Ldx2;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iput-object v0, v1, Ldx2;->I:Lfy3;

    .line 22
    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 24
    monitor-enter v1

    .line 25
    :try_start_1
    iget-object v0, v1, Ldx2;->b:Lrm7;

    .line 26
    .line 27
    invoke-virtual {v0}, Lrm7;->a()V

    .line 28
    .line 29
    .line 30
    iget-boolean v0, v1, Ldx2;->M:Z

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Ldx2;->f()V

    .line 36
    .line 37
    .line 38
    monitor-exit v1

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    iget-object v0, v1, Ldx2;->a:Lcx2;

    .line 43
    .line 44
    iget-object v0, v0, Lcx2;->a:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    iget-boolean v0, v1, Ldx2;->J:Z

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    iput-boolean v2, v1, Ldx2;->J:Z

    .line 57
    .line 58
    iget-object v0, v1, Ldx2;->r:Lex2;

    .line 59
    .line 60
    iget-object v3, v1, Ldx2;->a:Lcx2;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance v4, Ljava/util/ArrayList;

    .line 66
    .line 67
    iget-object v3, v3, Lcx2;->a:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    add-int/2addr v3, v2

    .line 77
    invoke-virtual {v1, v3}, Ldx2;->d(I)V

    .line 78
    .line 79
    .line 80
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    iget-object v3, v1, Ldx2;->f:Lzw2;

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    invoke-virtual {v3, v1, v0, v5}, Lzw2;->d(Ldx2;Lex2;Lfx2;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_1

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Lbx2;

    .line 102
    .line 103
    iget-object v4, v3, Lbx2;->b:Ljava/util/concurrent/Executor;

    .line 104
    .line 105
    new-instance v5, Lax2;

    .line 106
    .line 107
    iget-object v3, v3, Lbx2;->a:Lfh7;

    .line 108
    .line 109
    const/4 v6, 0x0

    .line 110
    invoke-direct {v5, v6, v1, v3}, Lax2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v1}, Ldx2;->c()V

    .line 118
    .line 119
    .line 120
    :goto_1
    iget-object v0, p0, Ltd2;->k:Lsd2;

    .line 121
    .line 122
    monitor-enter v0

    .line 123
    :try_start_2
    iput-boolean v2, v0, Lsd2;->c:Z

    .line 124
    .line 125
    invoke-virtual {v0}, Lsd2;->a()Z

    .line 126
    .line 127
    .line 128
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    monitor-exit v0

    .line 130
    if-eqz v1, :cond_2

    .line 131
    .line 132
    invoke-virtual {p0}, Ltd2;->k()V

    .line 133
    .line 134
    .line 135
    :cond_2
    return-void

    .line 136
    :catchall_1
    move-exception p0

    .line 137
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    throw p0

    .line 139
    :cond_3
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 140
    .line 141
    const-string v0, "Already failed once"

    .line 142
    .line 143
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 148
    .line 149
    const-string v0, "Received an exception without any callbacks to notify"

    .line 150
    .line 151
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    throw p0

    .line 157
    :catchall_2
    move-exception p0

    .line 158
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 159
    throw p0
.end method

.method public final k()V
    .locals 5

    .line 1
    iget-object v0, p0, Ltd2;->k:Lsd2;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, v0, Lsd2;->b:Z

    .line 6
    .line 7
    iput-boolean v1, v0, Lsd2;->a:Z

    .line 8
    .line 9
    iput-boolean v1, v0, Lsd2;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    iget-object v0, p0, Ltd2;->f:Lx00;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, v0, Lx00;->b:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object v2, v0, Lx00;->c:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v2, v0, Lx00;->d:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, p0, Ltd2;->a:Lqd2;

    .line 22
    .line 23
    iput-object v2, v0, Lqd2;->c:Ldy3;

    .line 24
    .line 25
    iput-object v2, v0, Lqd2;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object v2, v0, Lqd2;->n:Ljo4;

    .line 28
    .line 29
    iput-object v2, v0, Lqd2;->g:Ljava/lang/Class;

    .line 30
    .line 31
    iput-object v2, v0, Lqd2;->k:Ljava/lang/Class;

    .line 32
    .line 33
    iput-object v2, v0, Lqd2;->i:Lou5;

    .line 34
    .line 35
    iput-object v2, v0, Lqd2;->o:Le66;

    .line 36
    .line 37
    iput-object v2, v0, Lqd2;->j:Ljava/util/Map;

    .line 38
    .line 39
    iput-object v2, v0, Lqd2;->p:Lkm2;

    .line 40
    .line 41
    iget-object v3, v0, Lqd2;->a:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    iput-boolean v1, v0, Lqd2;->l:Z

    .line 47
    .line 48
    iget-object v3, v0, Lqd2;->b:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    iput-boolean v1, v0, Lqd2;->m:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Ltd2;->R:Z

    .line 56
    .line 57
    iput-object v2, p0, Ltd2;->n:Ldy3;

    .line 58
    .line 59
    iput-object v2, p0, Ltd2;->p:Ljo4;

    .line 60
    .line 61
    iput-object v2, p0, Ltd2;->G:Lou5;

    .line 62
    .line 63
    iput-object v2, p0, Ltd2;->q:Le66;

    .line 64
    .line 65
    iput-object v2, p0, Ltd2;->r:Lex2;

    .line 66
    .line 67
    iput-object v2, p0, Ltd2;->H:Ldx2;

    .line 68
    .line 69
    iput v1, p0, Ltd2;->U:I

    .line 70
    .line 71
    iput-object v2, p0, Ltd2;->Q:Lta2;

    .line 72
    .line 73
    iput-object v2, p0, Ltd2;->L:Ljava/lang/Thread;

    .line 74
    .line 75
    iput-object v2, p0, Ltd2;->M:Ljo4;

    .line 76
    .line 77
    iput-object v2, p0, Ltd2;->O:Ljava/lang/Object;

    .line 78
    .line 79
    iput v1, p0, Ltd2;->W:I

    .line 80
    .line 81
    iput-object v2, p0, Ltd2;->P:Lra2;

    .line 82
    .line 83
    const-wide/16 v3, 0x0

    .line 84
    .line 85
    iput-wide v3, p0, Ltd2;->J:J

    .line 86
    .line 87
    iput-boolean v1, p0, Ltd2;->S:Z

    .line 88
    .line 89
    iput-object v2, p0, Ltd2;->K:Ljava/lang/Object;

    .line 90
    .line 91
    iget-object v0, p0, Ltd2;->b:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Ltd2;->e:Ld36;

    .line 97
    .line 98
    invoke-interface {v0, p0}, Ld36;->c(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p0
.end method

.method public final l()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Ltd2;->L:Ljava/lang/Thread;

    .line 6
    .line 7
    sget v0, Lg15;->b:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Ltd2;->J:J

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    iget-boolean v1, p0, Ltd2;->S:Z

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    iget-object v1, p0, Ltd2;->Q:Lta2;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Ltd2;->Q:Lta2;

    .line 25
    .line 26
    invoke-interface {v0}, Lta2;->a()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget v1, p0, Ltd2;->U:I

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ltd2;->h(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p0, Ltd2;->U:I

    .line 39
    .line 40
    invoke-virtual {p0}, Ltd2;->g()Lta2;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Ltd2;->Q:Lta2;

    .line 45
    .line 46
    iget v1, p0, Ltd2;->U:I

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    if-ne v1, v2, :cond_0

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    iput v0, p0, Ltd2;->V:I

    .line 53
    .line 54
    iget-object v0, p0, Ltd2;->H:Ldx2;

    .line 55
    .line 56
    iget-boolean v1, v0, Ldx2;->x:Z

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    iget-object v0, v0, Ldx2;->p:Ljy3;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, v0, Ldx2;->n:Ljy3;

    .line 64
    .line 65
    :goto_0
    invoke-virtual {v0, p0}, Ljy3;->execute(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    iget v1, p0, Ltd2;->U:I

    .line 70
    .line 71
    const/4 v2, 0x6

    .line 72
    if-eq v1, v2, :cond_3

    .line 73
    .line 74
    iget-boolean v1, p0, Ltd2;->S:Z

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    :cond_3
    if-nez v0, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0}, Ltd2;->j()V

    .line 81
    .line 82
    .line 83
    :cond_4
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget v0, p0, Ltd2;->V:I

    .line 2
    .line 3
    invoke-static {v0}, Ldj7;->A(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Ltd2;->f()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget p0, p0, Ltd2;->V:I

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    if-eq p0, v0, :cond_3

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    if-eq p0, v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    if-eq p0, v0, :cond_1

    .line 29
    .line 30
    const-string p0, "null"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string p0, "DECODE_DATA"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string p0, "SWITCH_TO_SOURCE_SERVICE"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    const-string p0, "INITIALIZE"

    .line 40
    .line 41
    :goto_0
    const-string v0, "Unrecognized run reason: "

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    invoke-virtual {p0}, Ltd2;->l()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_5
    invoke-virtual {p0, v1}, Ltd2;->h(I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Ltd2;->U:I

    .line 60
    .line 61
    invoke-virtual {p0}, Ltd2;->g()Lta2;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Ltd2;->Q:Lta2;

    .line 66
    .line 67
    invoke-virtual {p0}, Ltd2;->l()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltd2;->c:Lrm7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrm7;->a()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Ltd2;->R:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Ltd2;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Ltd2;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {p0, v1}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/lang/Throwable;

    .line 28
    .line 29
    :goto_0
    const-string v0, "Already notified"

    .line 30
    .line 31
    invoke-static {v0, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iput-boolean v1, p0, Ltd2;->R:Z

    .line 36
    .line 37
    return-void
.end method

.method public final run()V
    .locals 5

    .line 1
    const-string v0, "DecodeJob"

    .line 2
    .line 3
    const-string v1, "DecodeJob threw unexpectedly, isCancelled: "

    .line 4
    .line 5
    iget-object v2, p0, Ltd2;->P:Lra2;

    .line 6
    .line 7
    :try_start_0
    iget-boolean v3, p0, Ltd2;->S:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ltd2;->j()V
    :try_end_0
    .catch Lwz0; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v2}, Lra2;->c()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v3

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ltd2;->o()V
    :try_end_1
    .catch Lwz0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {v2}, Lra2;->c()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :goto_0
    const/4 v4, 0x3

    .line 34
    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Ltd2;->S:Z

    .line 46
    .line 47
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", stage: "

    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v1, p0, Ltd2;->U:I

    .line 56
    .line 57
    invoke-static {v1}, Lxs1;->w(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    :goto_1
    iget v0, p0, Ltd2;->U:I

    .line 75
    .line 76
    const/4 v1, 0x5

    .line 77
    if-eq v0, v1, :cond_3

    .line 78
    .line 79
    iget-object v0, p0, Ltd2;->b:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ltd2;->j()V

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-boolean p0, p0, Ltd2;->S:Z

    .line 88
    .line 89
    if-nez p0, :cond_4

    .line 90
    .line 91
    throw v3

    .line 92
    :cond_4
    throw v3

    .line 93
    :goto_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    :goto_3
    if-eqz v2, :cond_5

    .line 95
    .line 96
    invoke-interface {v2}, Lra2;->c()V

    .line 97
    .line 98
    .line 99
    :cond_5
    throw p0
.end method
