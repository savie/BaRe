.class public final Lvb5;
.super Lag8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Lnb5;

.field public final j:Ljava/lang/String;

.field public final k:Lft7;


# direct methods
.method public constructor <init>(Lnb5;Lrf8;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lag8;-><init>(Lrf8;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lvb5;->i:Lnb5;

    .line 11
    .line 12
    const-string p1, "MUploadSession"

    .line 13
    .line 14
    iput-object p1, p0, Lvb5;->j:Ljava/lang/String;

    .line 15
    .line 16
    sget-object p1, Lnb5;->b:Lgt7;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance p1, Lft7;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-direct {p1, p2}, Lft7;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lvb5;->k:Lft7;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    iget-object v1, p0, Lvb5;->j:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "User cancelled the upload"

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
    iget-object v1, p0, Lvb5;->j:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    iget-object v0, p0, Lvb5;->k:Lft7;

    .line 38
    .line 39
    iget-object v0, v0, Lft7;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lvb5;->i:Lnb5;

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
    iget-object p0, p0, Ljb5;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Ljb5;->b(Ljava/util/concurrent/ConcurrentHashMap$KeySetView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :catch_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvb5;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v2, Ltb1;->a:Ltb1;

    .line 9
    .line 10
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ltb1;->i()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lag8;->a:Lrf8;

    .line 22
    .line 23
    iget-boolean v3, v2, Lrf8;->c:Z

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lrf8;->b()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lz95;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lz95;-><init>(Lvb5;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0, v1}, Lvb5;->i(Ljava/lang/String;Lz95;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final i(Ljava/lang/String;Lz95;)V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lag8;->a:Lrf8;

    .line 2
    .line 3
    iget-object v0, v0, Lrf8;->a:Lq63;

    .line 4
    .line 5
    iget-object v1, p0, Lvb5;->k:Lft7;

    .line 6
    .line 7
    invoke-static {v0, p2, v1, p1}, Lxx3;->B(Lq63;Lz95;Lft7;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lag8;->d:Lzf8;

    .line 11
    .line 12
    iput-object p1, v0, Lzf8;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    move-object v4, v0

    .line 17
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 18
    .line 19
    const/16 v6, 0x8

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    iget-object v2, p0, Lvb5;->j:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "executeUpload:"

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-static/range {v1 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lag8;->e()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget v0, p0, Lag8;->f:I

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    iget v3, p0, Lag8;->e:I

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    if-ge v0, v3, :cond_1

    .line 44
    .line 45
    move v0, v5

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v0, v2

    .line 48
    :goto_0
    sget-object v6, Lnf1;->a:Lai6;

    .line 49
    .line 50
    invoke-static {v4}, Lx13;->H(Ljava/lang/Exception;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lag8;->h(Ljava/lang/Long;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    :goto_1
    return-void

    .line 66
    :cond_2
    iget v0, p0, Lag8;->f:I

    .line 67
    .line 68
    add-int/2addr v0, v5

    .line 69
    iput v0, p0, Lag8;->f:I

    .line 70
    .line 71
    const-string v2, "/"

    .line 72
    .line 73
    const-string v4, ")"

    .line 74
    .line 75
    const-string v5, "executeUpload: Retrying upload ("

    .line 76
    .line 77
    invoke-static {v5, v0, v2, v4, v3}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    const/4 v9, 0x4

    .line 82
    const/4 v10, 0x0

    .line 83
    iget-object v6, p0, Lvb5;->j:Ljava/lang/String;

    .line 84
    .line 85
    const/4 v8, 0x0

    .line 86
    move-object v5, v1

    .line 87
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1, p2}, Lvb5;->i(Ljava/lang/String;Lz95;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    invoke-virtual {p0, v4, v2}, Lag8;->a(Ljava/lang/Exception;Z)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
