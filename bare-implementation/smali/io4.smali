.class public abstract Lio4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static final a(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x1020002

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast p0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    move-object v1, p0

    .line 10
    :goto_0
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v1, Lod2;->c:[Ljava/lang/Throwable;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, [Ljava/lang/Throwable;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    array-length v2, v0

    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_1
    if-ge v3, v2, :cond_2

    .line 45
    .line 46
    aget-object v4, v0, v3

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v5, 0x0

    .line 61
    const/16 v6, 0x3e

    .line 62
    .line 63
    const-string v2, "\n"

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string v1, ": "

    .line 80
    .line 81
    invoke-static {p0, v1, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public static final c(Landroid/content/Context;I)I
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lz85;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v1, 0x7f04014a

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p0, v0}, Ljm1;->T(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0, v0}, Lz85;->C(Landroid/content/Context;Landroid/util/TypedValue;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    new-instance v0, Lb34;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lb34;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lb34;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lb34;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iget-wide v1, v0, Lb34;->a:D

    .line 32
    .line 33
    iget-wide v3, p1, Lb34;->a:D

    .line 34
    .line 35
    sub-double/2addr v1, v3

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    const-wide v3, 0x4066800000000000L    # 180.0

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    sub-double/2addr v1, v3

    .line 46
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    sub-double v1, v3, v1

    .line 51
    .line 52
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 53
    .line 54
    mul-double/2addr v1, v5

    .line 55
    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    .line 56
    .line 57
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    iget-wide v5, v0, Lb34;->a:D

    .line 62
    .line 63
    iget-wide p0, p1, Lb34;->a:D

    .line 64
    .line 65
    sub-double/2addr p0, v5

    .line 66
    const-wide v7, 0x4076800000000000L    # 360.0

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    rem-double/2addr p0, v7

    .line 72
    const-wide/16 v9, 0x0

    .line 73
    .line 74
    cmpg-double v11, p0, v9

    .line 75
    .line 76
    if-gez v11, :cond_0

    .line 77
    .line 78
    add-double/2addr p0, v7

    .line 79
    :cond_0
    cmpg-double p0, p0, v3

    .line 80
    .line 81
    if-gtz p0, :cond_1

    .line 82
    .line 83
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    .line 87
    .line 88
    :goto_0
    mul-double/2addr v1, p0

    .line 89
    add-double/2addr v1, v5

    .line 90
    rem-double/2addr v1, v7

    .line 91
    cmpg-double p0, v1, v9

    .line 92
    .line 93
    if-gez p0, :cond_2

    .line 94
    .line 95
    add-double/2addr v1, v7

    .line 96
    :cond_2
    move-wide v3, v1

    .line 97
    iget-wide v5, v0, Lb34;->b:D

    .line 98
    .line 99
    iget-wide v7, v0, Lb34;->c:D

    .line 100
    .line 101
    invoke-static/range {v3 .. v8}, Ly13;->F(DDD)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    new-instance p1, Lb34;

    .line 106
    .line 107
    invoke-direct {p1, p0}, Lb34;-><init>(I)V

    .line 108
    .line 109
    .line 110
    iget p0, p1, Lb34;->d:I

    .line 111
    .line 112
    return p0
.end method

.method public static final d(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lsz8;->y(Landroid/content/Context;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p0, p1}, Lio4;->c(Landroid/content/Context;I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static final e(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lb67;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 24
    .line 25
    const/16 v0, 0x20

    .line 26
    .line 27
    and-int/2addr p0, v0

    .line 28
    if-ne p0, v0, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public static final f(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static final g(Lq63;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq63;->t()Lq63;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {v0}, Lq63;->j()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-static {v0}, Lq63;->E(Lq63;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "Failed to create parent dir for file="

    .line 24
    .line 25
    invoke-static {p0, v0}, Ll0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lq63;->x()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const-string v0, "Parent path is not a directory for file="

    .line 37
    .line 38
    invoke-static {p0, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    const-string v0, "File has no parent: "

    .line 47
    .line 48
    invoke-static {p0, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static final h(Ljava/lang/Long;)J
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0

    .line 8
    :cond_0
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    return-wide v0
.end method

.method public static final i(Lil0;Ln81;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    iget-object p1, p1, Ln81;->a:Ljava/lang/Class;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;
    .locals 9

    .line 1
    and-int/lit8 v0, p4, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p4, 0x4

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move p2, v2

    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x8

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const/4 v2, 0x1

    .line 19
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-interface {p3}, Lbt3;->invoke()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    move-object p3, v0

    .line 29
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    const-string p1, "tryCatchLog"

    .line 35
    .line 36
    :cond_3
    invoke-static {p3}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    const-string p4, ": "

    .line 41
    .line 42
    invoke-static {p1, p4, p3}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-eqz p2, :cond_5

    .line 47
    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 51
    .line 52
    const/4 v7, 0x4

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    move-object v4, p0

    .line 56
    invoke-static/range {v3 .. v8}, Lvr6;->de$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    move-object v4, p0

    .line 61
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 62
    .line 63
    const/4 v7, 0x4

    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v6, 0x0

    .line 66
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    move-object v4, p0

    .line 71
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :goto_1
    return-object v1
.end method
