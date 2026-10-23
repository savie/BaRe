.class public final Lnr8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static k:J


# instance fields
.field public a:Lc00;

.field public b:Z

.field public c:Z

.field public d:J

.field public e:Ldq7;

.field public final f:Lvr1;

.field public g:Ljava/util/concurrent/ScheduledFuture;

.field public h:Ljava/util/concurrent/ScheduledFuture;

.field public final i:Ljava/util/concurrent/ScheduledExecutorService;

.field public final j:Lu00;


# direct methods
.method public constructor <init>(Lyr1;Lf64;Ljava/lang/String;Ljava/lang/String;Lvr1;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnr8;->b:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lnr8;->c:Z

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lnr8;->d:J

    .line 12
    .line 13
    iget-object v0, p1, Lyr1;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    .line 17
    iput-object v0, p0, Lnr8;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    iput-object p5, p0, Lnr8;->f:Lvr1;

    .line 20
    .line 21
    sget-wide v0, Lnr8;->k:J

    .line 22
    .line 23
    const-wide/16 v2, 0x1

    .line 24
    .line 25
    add-long/2addr v2, v0

    .line 26
    sput-wide v2, Lnr8;->k:J

    .line 27
    .line 28
    new-instance p5, Lu00;

    .line 29
    .line 30
    iget-object v2, p1, Lyr1;->f:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Lub;

    .line 33
    .line 34
    const-string v3, "ws_"

    .line 35
    .line 36
    invoke-static {v0, v1, v3}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x4

    .line 41
    const-string v3, "WebSocket"

    .line 42
    .line 43
    invoke-direct {p5, v1, v2, v3, v0}, Lu00;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object p5, p0, Lnr8;->j:Lu00;

    .line 47
    .line 48
    if-eqz p3, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p3, p2, Lf64;->a:Ljava/lang/String;

    .line 52
    .line 53
    :goto_0
    iget-boolean p5, p2, Lf64;->c:Z

    .line 54
    .line 55
    iget-object p2, p2, Lf64;->b:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz p5, :cond_1

    .line 58
    .line 59
    const-string p5, "wss"

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const-string p5, "ws"

    .line 63
    .line 64
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p5, "://"

    .line 73
    .line 74
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p3, "/.ws?ns="

    .line 81
    .line 82
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p2, "&v=5"

    .line 89
    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    if-eqz p6, :cond_2

    .line 98
    .line 99
    const-string p3, "&ls="

    .line 100
    .line 101
    invoke-static {p2, p3, p6}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    :cond_2
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    new-instance p3, Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string p5, "User-Agent"

    .line 115
    .line 116
    iget-object p6, p1, Lyr1;->a:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p3, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    const-string p5, "X-Firebase-GMPID"

    .line 122
    .line 123
    iget-object p6, p1, Lyr1;->b:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p3, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    const-string p5, "X-Firebase-AppCheck"

    .line 129
    .line 130
    invoke-virtual {p3, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    new-instance p4, Lar8;

    .line 134
    .line 135
    invoke-direct {p4, p1, p2, p3}, Lar8;-><init>(Lyr1;Ljava/net/URI;Ljava/util/HashMap;)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Lc00;

    .line 139
    .line 140
    invoke-direct {p1, p0, p4}, Lc00;-><init>(Lnr8;Lar8;)V

    .line 141
    .line 142
    .line 143
    iput-object p1, p0, Lnr8;->a:Lc00;

    .line 144
    .line 145
    return-void
.end method

.method public static a(Lnr8;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lnr8;->j:Lu00;

    .line 2
    .line 3
    iget-boolean v1, p0, Lnr8;->c:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lu00;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "closing itself"

    .line 16
    .line 17
    new-array v4, v3, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v4}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lnr8;->f()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iput-object v2, p0, Lnr8;->a:Lc00;

    .line 26
    .line 27
    iget-object p0, p0, Lnr8;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    invoke-interface {p0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lnr8;->j:Lu00;

    .line 2
    .line 3
    const-string v1, "handleIncomingFrame complete frame: "

    .line 4
    .line 5
    iget-object v2, p0, Lnr8;->e:Ldq7;

    .line 6
    .line 7
    iget-boolean v3, v2, Ldq7;->k:Z

    .line 8
    .line 9
    if-nez v3, :cond_4

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-lez v3, :cond_0

    .line 16
    .line 17
    iget-object v2, v2, Ldq7;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-wide v2, p0, Lnr8;->d:J

    .line 23
    .line 24
    const-wide/16 v4, 0x1

    .line 25
    .line 26
    sub-long/2addr v2, v4

    .line 27
    iput-wide v2, p0, Lnr8;->d:J

    .line 28
    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    cmp-long p1, v2, v4

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    :try_start_0
    iget-object p1, p0, Lnr8;->e:Ldq7;

    .line 36
    .line 37
    iget-boolean v2, p1, Ldq7;->k:Z

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    iput-boolean v2, p1, Ldq7;->k:Z

    .line 43
    .line 44
    invoke-virtual {p1}, Ldq7;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Ljb9;->L(Ljava/lang/String;)Ljava/util/HashMap;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v2, 0x0

    .line 53
    iput-object v2, p0, Lnr8;->e:Ldq7;

    .line 54
    .line 55
    invoke-virtual {v0}, Lu00;->e()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v3, 0x0

    .line 74
    new-array v3, v3, [Ljava/lang/Object;

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2, v3}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_1

    .line 82
    :catch_1
    move-exception p1

    .line 83
    goto :goto_2

    .line 84
    :cond_1
    :goto_0
    iget-object v1, p0, Lnr8;->f:Lvr1;

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Lvr1;->r(Ljava/util/HashMap;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string v1, "Trying to freeze frozen StringListReader"

    .line 93
    .line 94
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    iget-object v1, p0, Lnr8;->e:Ldq7;

    .line 99
    .line 100
    invoke-virtual {v1}, Ldq7;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-string v2, "Error parsing frame (cast error): "

    .line 105
    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1, p1}, Lu00;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lnr8;->c()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lnr8;->f()V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :goto_2
    iget-object v1, p0, Lnr8;->e:Ldq7;

    .line 121
    .line 122
    invoke-virtual {v1}, Ldq7;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-string v2, "Error parsing frame: "

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1, p1}, Lu00;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lnr8;->c()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lnr8;->f()V

    .line 139
    .line 140
    .line 141
    :cond_3
    :goto_3
    return-void

    .line 142
    :cond_4
    const-string p0, "Trying to add string after reading"

    .line 143
    .line 144
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnr8;->j:Lu00;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu00;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "websocket is being closed"

    .line 14
    .line 15
    invoke-virtual {v0, v3, v2, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lnr8;->c:Z

    .line 20
    .line 21
    iget-object v1, p0, Lnr8;->a:Lc00;

    .line 22
    .line 23
    iget-object v1, v1, Lc00;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lar8;

    .line 26
    .line 27
    invoke-virtual {v1}, Lar8;->a()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lnr8;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p0, p0, Lnr8;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public final d(I)V
    .locals 3

    .line 1
    int-to-long v0, p1

    .line 2
    iput-wide v0, p0, Lnr8;->d:J

    .line 3
    .line 4
    new-instance p1, Ldq7;

    .line 5
    .line 6
    invoke-direct {p1}, Ldq7;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lnr8;->e:Ldq7;

    .line 10
    .line 11
    iget-object p1, p0, Lnr8;->j:Lu00;

    .line 12
    .line 13
    invoke-virtual {p1}, Lu00;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "HandleNewFrameCount: "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v1, p0, Lnr8;->d:J

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, p0, v1, v0}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lnr8;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lnr8;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iget-object v4, p0, Lnr8;->j:Lu00;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4}, Lu00;->e()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v5, "Reset keepAlive. Remaining: "

    .line 27
    .line 28
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v5, p0, Lnr8;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 32
    .line 33
    invoke-interface {v5, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-array v3, v3, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {v4, v0, v1, v3}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v4}, Lu00;->e()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    const-string v0, "Reset keepAlive"

    .line 57
    .line 58
    new-array v3, v3, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v4, v0, v1, v3}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    new-instance v0, Lbo0;

    .line 64
    .line 65
    const/4 v1, 0x4

    .line 66
    invoke-direct {v0, p0, v1}, Lbo0;-><init>(Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    const-wide/32 v3, 0xafc8

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lnr8;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 73
    .line 74
    invoke-interface {v1, v0, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lnr8;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnr8;->c:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lnr8;->b:Z

    .line 5
    .line 6
    iget-object p0, p0, Lnr8;->f:Lvr1;

    .line 7
    .line 8
    iget-object v2, p0, Lvr1;->f:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Lu00;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    iput-object v3, p0, Lvr1;->d:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget v1, p0, Lvr1;->b:I

    .line 19
    .line 20
    if-ne v1, v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lu00;->e()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v0, "Realtime connection failed"

    .line 29
    .line 30
    new-array v1, v4, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {v2, v0, v3, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v2}, Lu00;->e()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string v0, "Realtime connection lost"

    .line 43
    .line 44
    new-array v1, v4, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {v2, v0, v3, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 50
    invoke-virtual {p0, v0}, Lvr1;->c(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
