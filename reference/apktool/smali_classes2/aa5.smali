.class public final Laa5;
.super Lno2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final n:Lnb5;

.field public final p:Lfo2;

.field public final q:Ljava/lang/String;

.field public final r:Lft7;


# direct methods
.method public constructor <init>(Lnb5;Lfo2;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, Lfo2;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p2, Lfo2;->d:Lq63;

    .line 10
    .line 11
    iget-wide v2, p2, Lfo2;->c:J

    .line 12
    .line 13
    invoke-direct {p0, v2, v3, v1, v0}, Lno2;-><init>(JLq63;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Laa5;->n:Lnb5;

    .line 17
    .line 18
    iput-object p2, p0, Laa5;->p:Lfo2;

    .line 19
    .line 20
    const-string p1, "MDownloadSession"

    .line 21
    .line 22
    iput-object p1, p0, Laa5;->q:Ljava/lang/String;

    .line 23
    .line 24
    sget-object p1, Lnb5;->b:Lgt7;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance p1, Lft7;

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-direct {p1, p2}, Lft7;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Laa5;->r:Lft7;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    iget-object v1, p0, Laa5;->q:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "User cancelled the download"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Ltb1;->a:Ltb1;

    .line 14
    .line 15
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Closing connection with "

    .line 24
    .line 25
    const-string v3, ", may result in unknown errors"

    .line 26
    .line 27
    invoke-static {v2, v1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v1, p0, Laa5;->q:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    iget-object v0, p0, Laa5;->r:Lft7;

    .line 38
    .line 39
    iget-object v0, v0, Lft7;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :catch_0
    :try_start_1
    iget-object p0, p0, Laa5;->n:Lnb5;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    sget-object p0, Lgt7;->a:Lgt7;

    .line 51
    .line 52
    sget-object p0, Lgt7;->g:Lgv7;

    .line 53
    .line 54
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ljb5;

    .line 59
    .line 60
    iget-object p0, p0, Ljb5;->f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Ljb5;->b(Ljava/util/concurrent/ConcurrentHashMap$KeySetView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    .line 68
    :catch_1
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Laa5;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final j()V
    .locals 10

    .line 1
    iget-object v1, p0, Lno2;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Lz95;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lz95;-><init>(Laa5;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Laa5;->n:Lnb5;

    .line 9
    .line 10
    iget-object v3, p0, Lno2;->b:Lq63;

    .line 11
    .line 12
    iget-object v4, p0, Laa5;->r:Lft7;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v0, v4, v1}, Lnb5;->b(Lq63;Lz95;Lft7;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    iget-object v2, p0, Lno2;->d:Lgz7;

    .line 23
    .line 24
    invoke-virtual {v2}, Lgz7;->isCancelled()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "executeDownload: Error when downloading "

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v3, p0, Laa5;->q:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    sget-object v2, Lnf1;->a:Lai6;

    .line 51
    .line 52
    invoke-static {v0}, Lx13;->J(Ljava/lang/Throwable;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    invoke-static {v0}, Lx13;->G(Ljava/lang/Exception;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    invoke-static {v0}, Lx13;->I(Ljava/lang/Throwable;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    invoke-static {v0}, Lx13;->C(Ljava/lang/Throwable;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    invoke-static {v0}, Lx13;->B(Ljava/lang/Exception;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_2

    .line 81
    .line 82
    invoke-static {v0}, Lx13;->K(Ljava/lang/Throwable;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    invoke-static {v0}, Lx13;->D(Ljava/lang/Throwable;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v3, "Error while downloading from Drive: File id = "

    .line 102
    .line 103
    const-string v5, ", Error = "

    .line 104
    .line 105
    invoke-static {v3, v1, v5, v2}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    const/4 v8, 0x4

    .line 110
    const/4 v9, 0x0

    .line 111
    iget-object v5, p0, Laa5;->q:Ljava/lang/String;

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lno2;->e:Lke;

    .line 118
    .line 119
    iput-object v0, p0, Lke;->b:Ljava/lang/Object;

    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    :goto_0
    const-string v0, "executeDownload: Retrying download"

    .line 123
    .line 124
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->R()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Laa5;->j()V

    .line 131
    .line 132
    .line 133
    return-void
.end method
