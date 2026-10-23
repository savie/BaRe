.class public final Lte1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ltb1;

.field public final b:Ltd1;

.field public c:Lqe1;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public final synthetic g:Lwe1;


# direct methods
.method public constructor <init>(Lwe1;Ltb1;Ltd1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lte1;->g:Lwe1;

    .line 5
    .line 6
    iput-object p2, p0, Lte1;->a:Ltb1;

    .line 7
    .line 8
    iput-object p3, p0, Lte1;->b:Ltd1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lke;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lte1;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lte1;->b:Ltd1;

    .line 7
    .line 8
    iget-object v0, v0, Ltd1;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-static {v0}, Lel1;->b1(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lsd1;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lsd1;->PROVIDER_TRANSFER_PIPELINE:Lsd1;

    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, Lte1;->d:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Lte1;->g:Lwe1;

    .line 26
    .line 27
    iget-object v4, p0, Lte1;->a:Ltb1;

    .line 28
    .line 29
    invoke-virtual {v3, v0, p1, v4, v1}, Lwe1;->b(Lsd1;Lke;Ltb1;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lte1;->d:Ljava/lang/String;

    .line 33
    .line 34
    :cond_2
    iget-object p1, p0, Lte1;->c:Lqe1;

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-static {p1}, Lwe1;->c(Lqe1;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    iput-object v2, p0, Lte1;->c:Lqe1;

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lte1;->e:Z

    .line 45
    .line 46
    return-void
.end method

.method public final b(Lsd1;Lke;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lte1;->b:Ltd1;

    .line 2
    .line 3
    iget-object v0, v0, Ltd1;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {v0}, Lel1;->b1(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lsd1;

    .line 10
    .line 11
    if-ne p1, v0, :cond_2

    .line 12
    .line 13
    iget-object v5, p0, Lte1;->d:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    iget-object v4, p0, Lte1;->a:Ltb1;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    iget-object v1, p0, Lte1;->g:Lwe1;

    .line 22
    .line 23
    move-object v2, p1

    .line 24
    move-object v3, p2

    .line 25
    invoke-virtual/range {v1 .. v6}, Lwe1;->g(Lsd1;Lke;Ltb1;Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lte1;->d:Ljava/lang/String;

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lte1;->c:Lqe1;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-static {p1}, Lwe1;->c(Lqe1;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iput-object v0, p0, Lte1;->c:Lqe1;

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lte1;->e:Z

    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public final c(Lsd1;Lke;Loe1;)V
    .locals 13

    .line 1
    move-object/from16 v8, p3

    .line 2
    .line 3
    iget-boolean v9, v8, Loe1;->b:Z

    .line 4
    .line 5
    iget-boolean v10, v8, Loe1;->a:Z

    .line 6
    .line 7
    if-nez v10, :cond_1

    .line 8
    .line 9
    if-eqz v9, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v0, p0, Lte1;->f:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :goto_0
    iget-object v11, p0, Lte1;->c:Lqe1;

    .line 18
    .line 19
    const-string v0, "Required value was null."

    .line 20
    .line 21
    if-eqz v11, :cond_5

    .line 22
    .line 23
    iget-object v7, v11, Lqe1;->b:Lq63;

    .line 24
    .line 25
    invoke-static {v7}, Lwe1;->o(Lq63;)V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lte1;->d:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v4, :cond_4

    .line 31
    .line 32
    iget-object v12, p0, Lte1;->b:Ltd1;

    .line 33
    .line 34
    iget-wide v5, v12, Ltd1;->a:J

    .line 35
    .line 36
    iget-object v0, p0, Lte1;->g:Lwe1;

    .line 37
    .line 38
    iget-object v3, p0, Lte1;->a:Ltb1;

    .line 39
    .line 40
    move-object v1, p1

    .line 41
    move-object v2, p2

    .line 42
    invoke-virtual/range {v0 .. v8}, Lwe1;->l(Lsd1;Lke;Ltb1;Ljava/lang/String;JLq63;Loe1;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, v11, Lqe1;->c:Ljava/lang/String;

    .line 46
    .line 47
    iget-wide v1, v12, Ltd1;->a:J

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, v7, p1}, Lwe1;->C(JLq63;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    if-nez v10, :cond_3

    .line 53
    .line 54
    if-eqz v9, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lte1;->f:Z

    .line 59
    .line 60
    :cond_3
    :goto_1
    return-void

    .line 61
    :cond_4
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final d(Lsd1;Lke;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lte1;->b:Ltd1;

    .line 2
    .line 3
    iget-wide v1, v0, Ltd1;->a:J

    .line 4
    .line 5
    iget-object v3, p0, Lte1;->d:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v4, p0, Lte1;->g:Lwe1;

    .line 11
    .line 12
    iget-object v7, p0, Lte1;->a:Ltb1;

    .line 13
    .line 14
    invoke-virtual {v4, v7}, Lwe1;->m(Ltb1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, v1, v2}, Lwe1;->e(J)Lqe1;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    iput-object v9, p0, Lte1;->c:Lqe1;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    iput-boolean v3, p0, Lte1;->e:Z

    .line 25
    .line 26
    iput-boolean v3, p0, Lte1;->f:Z

    .line 27
    .line 28
    :try_start_0
    iget-object v3, v4, Lwe1;->a:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v1, v2}, Lwe1;->n(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const v2, 0x7f13012f

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1, v1}, Lke;->g(Lsd1;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-boolean v0, v0, Ltd1;->c:Z

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v7}, Ltb1;->g()Ldd1;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    move-object v5, v4

    .line 60
    new-instance v4, Lse1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 61
    .line 62
    move-object v8, p0

    .line 63
    move-object v6, p1

    .line 64
    move-object v7, p2

    .line 65
    :try_start_1
    invoke-direct/range {v4 .. v9}, Lse1;-><init>(Lwe1;Lsd1;Lke;Lte1;Lqe1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    .line 67
    .line 68
    move-object v6, v7

    .line 69
    move-object p0, v8

    .line 70
    :try_start_2
    invoke-static {v0, v4}, Lwe1;->F(Ldd1;Lbt3;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Ljava/lang/String;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    :goto_0
    move-object p1, v0

    .line 79
    goto :goto_2

    .line 80
    :catchall_1
    move-exception v0

    .line 81
    move-object v6, v7

    .line 82
    move-object p0, v8

    .line 83
    goto :goto_0

    .line 84
    :catchall_2
    move-exception v0

    .line 85
    move-object v6, p2

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move-object v5, p1

    .line 88
    move-object v6, p2

    .line 89
    iget-object v8, v9, Lqe1;->a:Lq63;

    .line 90
    .line 91
    const/4 v10, 0x0

    .line 92
    const/16 v11, 0x60

    .line 93
    .line 94
    const/4 v9, 0x0

    .line 95
    invoke-static/range {v4 .. v11}, Lwe1;->B(Lwe1;Lsd1;Lke;Ltb1;Lq63;ILjava/lang/String;I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :goto_1
    iput-object p1, p0, Lte1;->d:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .line 101
    return-void

    .line 102
    :goto_2
    invoke-virtual {p0, v6}, Lte1;->a(Lke;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public final e(Lsd1;Lke;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lte1;->d(Lsd1;Lke;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Loe1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1, v1}, Loe1;-><init>(ZZ)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, v0}, Lte1;->c(Lsd1;Lke;Loe1;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lte1;->b(Lsd1;Lke;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lte1;->g:Lwe1;

    .line 20
    .line 21
    iget-object p1, p1, Lwe1;->a:Landroid/content/Context;

    .line 22
    .line 23
    iget-object p0, p0, Lte1;->b:Ltd1;

    .line 24
    .line 25
    iget-wide v0, p0, Ltd1;->a:J

    .line 26
    .line 27
    invoke-static {v0, v1}, Lwe1;->n(J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const p2, 0x7f13013f

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    return-object p0
.end method

.method public final f(Lsd1;Lke;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lte1;->a:Ltb1;

    .line 5
    .line 6
    iget-object v1, p0, Lte1;->g:Lwe1;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lwe1;->m(Ltb1;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lho6;->t()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v2, Loi5;->L:Lgv7;

    .line 16
    .line 17
    invoke-static {}, Lly8;->u()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lel1;->c1(Ljava/util/List;)Ljava/lang/Comparable;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Integer;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lly8;->v()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    :goto_0
    :try_start_0
    invoke-static {v2}, Lho6;->V(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Lte1;->d(Lsd1;Lke;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Loe1;

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-direct {v3, v4, v4}, Loe1;-><init>(ZZ)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, p2, v3}, Lte1;->c(Lsd1;Lke;Loe1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lho6;->V(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Lte1;->b(Lsd1;Lke;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, v1, Lwe1;->a:Landroid/content/Context;

    .line 60
    .line 61
    iget-object p0, p0, Lte1;->b:Ltd1;

    .line 62
    .line 63
    iget-wide v0, p0, Ltd1;->a:J

    .line 64
    .line 65
    invoke-static {v0, v1}, Lwe1;->n(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const p2, 0x7f13012b

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    return-object p0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    const-string p2, "multithreaded_downloads_chunk_count"

    .line 94
    .line 95
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_1
    const-string p0, "editor"

    .line 104
    .line 105
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/4 p0, 0x0

    .line 109
    throw p0
.end method

.method public final g(Lsd1;Lke;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lte1;->d(Lsd1;Lke;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Loe1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1, v1}, Loe1;-><init>(ZZ)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, v0}, Lte1;->c(Lsd1;Lke;Loe1;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lte1;->b(Lsd1;Lke;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lte1;->g:Lwe1;

    .line 20
    .line 21
    iget-object p1, p1, Lwe1;->a:Landroid/content/Context;

    .line 22
    .line 23
    iget-object p2, p0, Lte1;->a:Ltb1;

    .line 24
    .line 25
    invoke-virtual {p2}, Ltb1;->g()Ldd1;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Ldd1;->getDisplayName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object p0, p0, Lte1;->b:Ltd1;

    .line 34
    .line 35
    iget-wide v0, p0, Ltd1;->a:J

    .line 36
    .line 37
    invoke-static {v0, v1}, Lwe1;->n(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const p2, 0x7f130132

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    return-object p0
.end method
