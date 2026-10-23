.class public final Lwe1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/Context;

.field public volatile b:Z

.field public volatile c:Lag8;

.field public volatile d:Lno2;

.field public volatile e:Lxh2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwe1;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static B(Lwe1;Lsd1;Lke;Ltb1;Lq63;ILjava/lang/String;I)Ljava/lang/String;
    .locals 11

    .line 1
    and-int/lit8 v0, p7, 0x20

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    move v7, v0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :goto_1
    and-int/lit8 v0, p7, 0x40

    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move-object v0, v10

    .line 16
    goto :goto_2

    .line 17
    :cond_1
    move-object/from16 v0, p6

    .line 18
    .line 19
    :goto_2
    invoke-virtual {p0}, Lwe1;->a()V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lrf8;

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    move-object v5, p4

    .line 27
    move/from16 v6, p5

    .line 28
    .line 29
    invoke-direct/range {v4 .. v9}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v4}, Ltb1;->d(Lrf8;)Lag8;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iput-object v0, v6, Lag8;->b:Ljava/lang/String;

    .line 49
    .line 50
    :cond_3
    :goto_3
    iput-object v6, p0, Lwe1;->c:Lag8;

    .line 51
    .line 52
    new-instance v0, Lle1;

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    move-object v3, p0

    .line 56
    move-object v2, p1

    .line 57
    move-object v1, p2

    .line 58
    move-object v4, p4

    .line 59
    invoke-direct/range {v0 .. v5}, Lle1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iput-object v0, v6, Lag8;->g:Lmt3;

    .line 66
    .line 67
    :try_start_0
    invoke-virtual {v6}, Lag8;->c()Lzf8;

    .line 68
    .line 69
    .line 70
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iput-object v10, p0, Lwe1;->c:Lag8;

    .line 72
    .line 73
    invoke-virtual {p0}, Lwe1;->a()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lzf8;->a()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_6

    .line 81
    .line 82
    iget-object v0, v0, Lzf8;->a:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    move-object v0, v10

    .line 94
    :goto_4
    if-eqz v0, :cond_5

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_5
    iget-object v0, p0, Lwe1;->a:Landroid/content/Context;

    .line 98
    .line 99
    const v1, 0x7f13015e

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-object v10

    .line 113
    :cond_6
    iget-object v1, p0, Lwe1;->a:Landroid/content/Context;

    .line 114
    .line 115
    invoke-virtual {v0}, Lzf8;->b()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const v2, 0x7f13015d

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return-object v10

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    iput-object v10, p0, Lwe1;->c:Lag8;

    .line 139
    .line 140
    throw v0
.end method

.method public static E(Lig3;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lig3;->a()V

    .line 13
    .line 14
    .line 15
    const-string v3, ".info/connected"

    .line 16
    .line 17
    invoke-static {v3}, Lui8;->b(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lgy5;

    .line 21
    .line 22
    invoke-direct {v4, v3}, Lgy5;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lzc2;

    .line 26
    .line 27
    iget-object p0, p0, Lig3;->c:Lwj6;

    .line 28
    .line 29
    invoke-direct {v3, p0, v4}, Lzc2;-><init>(Lwj6;Lgy5;)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Lw00;

    .line 33
    .line 34
    invoke-direct {p0, v1, v0, v2}, Lw00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p0}, Lzc2;->c(Laj8;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    .line 42
    const-wide/16 v4, 0xf

    .line 43
    .line 44
    invoke-virtual {v0, v4, v5, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lwc2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {v3, p0}, Lzc2;->g(Laj8;)V

    .line 57
    .line 58
    .line 59
    return v0

    .line 60
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    iget-object v1, v1, Lwc2;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    invoke-virtual {v3, p0}, Lzc2;->g(Laj8;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method

.method public static F(Ldd1;Lbt3;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lho6;->q()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lho6;->w()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {}, Lho6;->v()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {}, Lho6;->z()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {}, Lho6;->y()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    :try_start_0
    sget-object v5, Lue1;->b:[I

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    aget p0, v5, p0

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    const/4 v6, 0x5

    .line 31
    if-eq p0, v5, :cond_3

    .line 32
    .line 33
    const/4 v7, 0x2

    .line 34
    if-eq p0, v7, :cond_2

    .line 35
    .line 36
    const/4 v7, 0x3

    .line 37
    if-eq p0, v7, :cond_1

    .line 38
    .line 39
    const/4 v7, 0x4

    .line 40
    if-eq p0, v7, :cond_0

    .line 41
    .line 42
    if-eq p0, v6, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v6}, Lho6;->W(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v5}, Lho6;->U(Z)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static {v6}, Lho6;->Y(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-static {v6}, Lho6;->X(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-static {v6}, Lho6;->T(I)V

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-interface {p1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {v0}, Lho6;->T(I)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lho6;->X(I)V

    .line 73
    .line 74
    .line 75
    invoke-static {v2}, Lho6;->W(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Lho6;->U(Z)V

    .line 79
    .line 80
    .line 81
    invoke-static {v4}, Lho6;->Y(I)V

    .line 82
    .line 83
    .line 84
    return-object p0

    .line 85
    :goto_1
    invoke-static {v0}, Lho6;->T(I)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Lho6;->X(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {v2}, Lho6;->W(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v3}, Lho6;->U(Z)V

    .line 95
    .line 96
    .line 97
    invoke-static {v4}, Lho6;->Y(I)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public static G(Ljava/io/File;J)Ljava/lang/String;
    .locals 13

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x10000

    .line 8
    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    new-instance v2, Ljava/io/FileOutputStream;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Ljava/io/BufferedOutputStream;

    .line 17
    .line 18
    const/16 v3, 0x2000

    .line 19
    .line 20
    invoke-direct {p0, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    move-wide v4, v2

    .line 26
    :goto_0
    cmp-long v6, p1, v2

    .line 27
    .line 28
    if-lez v6, :cond_1

    .line 29
    .line 30
    const-wide/32 v6, 0x10000

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    long-to-int v6, v6

    .line 38
    const/4 v7, 0x0

    .line 39
    move v8, v7

    .line 40
    :goto_1
    if-ge v8, v6, :cond_0

    .line 41
    .line 42
    int-to-long v9, v8

    .line 43
    add-long/2addr v9, v4

    .line 44
    const-wide/16 v11, 0x1f

    .line 45
    .line 46
    mul-long/2addr v9, v11

    .line 47
    const-wide/16 v11, 0x11

    .line 48
    .line 49
    add-long/2addr v9, v11

    .line 50
    long-to-int v9, v9

    .line 51
    int-to-byte v9, v9

    .line 52
    aput-byte v9, v1, v8

    .line 53
    .line 54
    add-int/lit8 v8, v8, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    invoke-virtual {p0, v1, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v7, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    int-to-long v6, v6

    .line 66
    add-long/2addr v4, v6

    .line 67
    sub-long/2addr p1, v6

    .line 68
    goto :goto_0

    .line 69
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :catchall_1
    move-exception p2

    .line 71
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw p2

    .line 75
    :cond_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance p1, Lnk;

    .line 89
    .line 90
    const/4 p2, 0x3

    .line 91
    invoke-direct {p1, p2}, Lnk;-><init>(I)V

    .line 92
    .line 93
    .line 94
    const/16 p2, 0x1e

    .line 95
    .line 96
    const-string v0, ""

    .line 97
    .line 98
    invoke-static {p0, v0, p1, p2}, Lx50;->t0([BLjava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method

.method public static c(Lqe1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqe1;->a:Lq63;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq63;->h()Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lqe1;->b:Lq63;

    .line 7
    .line 8
    invoke-static {v0}, Lwe1;->o(Lq63;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lqe1;->d:Lq63;

    .line 12
    .line 13
    invoke-virtual {p0}, Lq63;->h()Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static d(Lre1;)V
    .locals 4

    .line 1
    new-instance v0, Lq63;

    .line 2
    .line 3
    iget-object v1, p0, Lre1;->b:Ljava/io/File;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Lq63;-><init>(Ljava/io/File;I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lre1;->a:Lq63;

    .line 10
    .line 11
    invoke-virtual {v1}, Lq63;->h()Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lq63;->h()Z

    .line 15
    .line 16
    .line 17
    new-instance v1, Lq63;

    .line 18
    .line 19
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, ".download"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0}, Lq63;->o()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-direct {v1, v2, v3}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lq63;->h()Z

    .line 37
    .line 38
    .line 39
    new-instance v1, Lq63;

    .line 40
    .line 41
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, ".download.meta"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0}, Lq63;->o()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-direct {v1, v2, v0}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lq63;->h()Z

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lre1;->c:Lq63;

    .line 62
    .line 63
    invoke-virtual {p0}, Lq63;->h()Z

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static h(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    return-object v0

    .line 19
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static n(J)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lp93;->a:Lp93;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static o(Lq63;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq63;->h()Z

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq63;

    .line 5
    .line 6
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, ".download"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lq63;->o()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {v0, v1, v2}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lq63;->h()Z

    .line 24
    .line 25
    .line 26
    new-instance v0, Lq63;

    .line 27
    .line 28
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, ".download.meta"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lq63;->o()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-direct {v0, v1, p0}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lq63;->h()Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static final p(Llh6;Ljava/util/ArrayList;Lwe1;Ltb1;)Lte1;
    .locals 6

    .line 1
    iget-object v0, p0, Llh6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lte1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    sget-object v0, Lud1;->a:Ljava/util/Set;

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    invoke-static {p1, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lqd1;

    .line 36
    .line 37
    iget-object v1, v1, Lqd1;->a:Lsd1;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p3}, Ltb1;->g()Ldd1;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v1, Lue1;->b:[I

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    aget p1, v1, p1

    .line 54
    .line 55
    const/4 v1, 0x6

    .line 56
    if-eq p1, v1, :cond_3

    .line 57
    .line 58
    const/4 v1, 0x7

    .line 59
    if-eq p1, v1, :cond_2

    .line 60
    .line 61
    const-wide/32 v1, 0xc00000

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const-wide/32 v1, 0x1100000

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const-wide/32 v1, 0x30af080

    .line 70
    .line 71
    .line 72
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    move-object v4, v3

    .line 92
    check-cast v4, Lsd1;

    .line 93
    .line 94
    sget-object v5, Lud1;->a:Ljava/util/Set;

    .line 95
    .line 96
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_4

    .line 101
    .line 102
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    const/4 v3, 0x0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    move-object v0, v3

    .line 114
    goto :goto_4

    .line 115
    :cond_6
    sget-object v0, Lsd1;->LARGE_ROUND_TRIP:Lsd1;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    const-wide/32 v1, 0x5000000

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    sget-object v0, Lsd1;->PROVIDER_TRANSFER_PIPELINE:Lsd1;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_8

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_8
    const-wide/32 v1, 0x2000000

    .line 137
    .line 138
    .line 139
    :goto_3
    new-instance v0, Ltd1;

    .line 140
    .line 141
    sget-object v4, Lsd1;->PROVIDER_TRANSFER_PIPELINE:Lsd1;

    .line 142
    .line 143
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    invoke-direct {v0, v1, v2, p1, v4}, Ltd1;-><init>(JLjava/util/ArrayList;Z)V

    .line 148
    .line 149
    .line 150
    :goto_4
    if-nez v0, :cond_9

    .line 151
    .line 152
    return-object v3

    .line 153
    :cond_9
    new-instance p1, Lte1;

    .line 154
    .line 155
    invoke-direct {p1, p2, p3, v0}, Lte1;-><init>(Lwe1;Ltb1;Ltd1;)V

    .line 156
    .line 157
    .line 158
    iput-object p1, p0, Llh6;->a:Ljava/lang/Object;

    .line 159
    .line 160
    return-object p1
.end method

.method public static synthetic y(Lwe1;Ltb1;Lsd1;Lke;J)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v6, Loe1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v6, v0, v0}, Loe1;-><init>(ZZ)V

    .line 5
    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-wide v4, p4

    .line 12
    invoke-virtual/range {v0 .. v6}, Lwe1;->x(Ltb1;Lsd1;Lke;JLoe1;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public final A(Lsd1;Ltb1;ZLke;Lte1;)Lpd1;
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    sget-object v0, Lue1;->a:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    aget v0, v0, v4
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lkd1; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    const-string v4, "Required value was null."

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    :try_start_1
    new-instance p1, Lmn5;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    move-object p0, v0

    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :catch_0
    move-exception v0

    .line 30
    move-object p0, v0

    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :pswitch_0
    if-eqz p2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, p2, p1, p4}, Lwe1;->z(Ltb1;Lsd1;Lke;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :pswitch_1
    if-eqz p2, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, p2, p1, p4}, Lwe1;->v(Ltb1;Lsd1;Lke;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :pswitch_2
    if-eqz p5, :cond_2

    .line 62
    .line 63
    invoke-virtual {p5, p1, p4}, Lte1;->f(Lsd1;Lke;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_2
    if-eqz p2, :cond_3

    .line 70
    .line 71
    invoke-virtual {p0, p2, p1, p4}, Lwe1;->u(Ltb1;Lsd1;Lke;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :pswitch_3
    if-eqz p5, :cond_4

    .line 84
    .line 85
    invoke-virtual {p5, p1, p4}, Lte1;->g(Lsd1;Lke;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_4
    if-eqz p2, :cond_5

    .line 92
    .line 93
    invoke-virtual {p0, p2, p1, p4}, Lwe1;->w(Ltb1;Lsd1;Lke;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :pswitch_4
    if-eqz p5, :cond_6

    .line 106
    .line 107
    invoke-virtual {p5, p1, p4}, Lte1;->e(Lsd1;Lke;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lkd1; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    goto :goto_0

    .line 112
    :cond_6
    if-eqz p2, :cond_7

    .line 113
    .line 114
    const-wide/32 v8, 0x5000000

    .line 115
    .line 116
    .line 117
    move-object v4, p0

    .line 118
    move-object v6, p1

    .line 119
    move-object v5, p2

    .line 120
    move-object v7, p4

    .line 121
    :try_start_2
    invoke-static/range {v4 .. v9}, Lwe1;->y(Lwe1;Ltb1;Lsd1;Lke;J)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lkd1; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    goto :goto_0

    .line 126
    :catch_1
    move-object p0, v4

    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :cond_7
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lkd1; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    :pswitch_5
    move-object v6, p1

    .line 136
    move-object v5, p2

    .line 137
    move-object v7, p4

    .line 138
    if-eqz v5, :cond_8

    .line 139
    .line 140
    const-wide/32 v8, 0x10000

    .line 141
    .line 142
    .line 143
    move-object v4, p0

    .line 144
    :try_start_4
    invoke-static/range {v4 .. v9}, Lwe1;->y(Lwe1;Ltb1;Lsd1;Lke;J)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lkd1; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    goto :goto_0

    .line 149
    :cond_8
    :try_start_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 150
    .line 151
    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1

    .line 155
    :pswitch_6
    move-object v6, p1

    .line 156
    move-object v5, p2

    .line 157
    move-object v7, p4

    .line 158
    if-eqz v5, :cond_9

    .line 159
    .line 160
    invoke-virtual {p0, v5, v6, v7}, Lwe1;->r(Ltb1;Lsd1;Lke;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    goto :goto_0

    .line 165
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :pswitch_7
    move-object v5, p2

    .line 172
    if-eqz v5, :cond_a

    .line 173
    .line 174
    invoke-virtual {p0, v5}, Lwe1;->q(Ltb1;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    goto :goto_0

    .line 179
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 180
    .line 181
    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p1

    .line 185
    :pswitch_8
    invoke-virtual {p0, p3}, Lwe1;->s(Z)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    goto :goto_0

    .line 190
    :pswitch_9
    invoke-virtual {p0}, Lwe1;->t()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    :goto_0
    new-instance p2, Lpd1;

    .line 195
    .line 196
    sget-object p3, Lrd1;->PASSED:Lrd1;

    .line 197
    .line 198
    invoke-direct {p2, p3, p1, v3}, Lpd1;-><init>(Lrd1;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lkd1; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :goto_1
    new-instance p2, Lpd1;

    .line 203
    .line 204
    sget-object p1, Lrd1;->FAILED:Lrd1;

    .line 205
    .line 206
    invoke-static {p0}, Lwe1;->h(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-direct {p2, p1, p0, v3}, Lpd1;-><init>(Lrd1;Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :goto_2
    new-instance p2, Lpd1;

    .line 215
    .line 216
    sget-object p1, Lrd1;->ACTION_REQUIRED:Lrd1;

    .line 217
    .line 218
    invoke-static {p0}, Lwe1;->h(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-direct {p2, p1, p0, v3}, Lpd1;-><init>(Lrd1;Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :catch_2
    :goto_3
    new-instance p2, Lpd1;

    .line 227
    .line 228
    sget-object p1, Lrd1;->SKIPPED:Lrd1;

    .line 229
    .line 230
    iget-object p0, p0, Lwe1;->a:Landroid/content/Context;

    .line 231
    .line 232
    const p3, 0x7f1300f2

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    invoke-direct {p2, p1, p0, v3}, Lpd1;-><init>(Lrd1;Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    .line 244
    .line 245
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 246
    .line 247
    .line 248
    move-result-wide p0

    .line 249
    sub-long/2addr p0, v1

    .line 250
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    iget-object p1, p2, Lpd1;->a:Lrd1;

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    iget-object p2, p2, Lpd1;->b:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    new-instance p3, Lpd1;

    .line 265
    .line 266
    invoke-direct {p3, p1, p2, p0}, Lpd1;-><init>(Lrd1;Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    .line 268
    .line 269
    return-object p3

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final C(JLq63;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Lq63;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lwe1;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p3}, Lq63;->A()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    cmp-long v0, v0, p1

    .line 14
    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    const-string p1, "SHA-256"

    .line 18
    .line 19
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/high16 p2, 0x10000

    .line 24
    .line 25
    new-array p2, p2, [B

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p3, v0}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    instance-of v0, p3, Ljava/io/BufferedInputStream;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    check-cast p3, Ljava/io/BufferedInputStream;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 40
    .line 41
    const/16 v1, 0x2000

    .line 42
    .line 43
    invoke-direct {v0, p3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 44
    .line 45
    .line 46
    move-object p3, v0

    .line 47
    :goto_0
    :try_start_0
    invoke-virtual {p3, p2}, Ljava/io/InputStream;->read([B)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ltz v0, :cond_1

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, p2, v1, v0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-interface {p3}, Ljava/io/Closeable;->close()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance p2, Lnk;

    .line 74
    .line 75
    const/4 p3, 0x3

    .line 76
    invoke-direct {p2, p3}, Lnk;-><init>(I)V

    .line 77
    .line 78
    .line 79
    const/16 p3, 0x1e

    .line 80
    .line 81
    const-string v0, ""

    .line 82
    .line 83
    invoke-static {p1, v0, p2, p3}, Lx50;->t0([BLjava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    const p1, 0x7f13011b

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    :catchall_1
    move-exception p1

    .line 110
    invoke-static {p3, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_3
    invoke-static {p1, p2}, Lwe1;->n(J)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p3}, Lq63;->A()J

    .line 119
    .line 120
    .line 121
    move-result-wide p2

    .line 122
    invoke-static {p2, p3}, Lwe1;->n(J)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const p2, 0x7f13011e

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_4
    const p1, 0x7f13011c

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public final D(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lwe1;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    const p1, 0x7f130156

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    const p1, 0x7f130157

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    const p1, 0x7f13011c

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lwe1;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 7
    .line 8
    iget-object p0, p0, Lwe1;->a:Landroid/content/Context;

    .line 9
    .line 10
    const v1, 0x7f1300f2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public final b(Lsd1;Lke;Ltb1;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v5, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lwe1;->g(Lsd1;Lke;Ltb1;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method

.method public final e(J)Lqe1;
    .locals 6

    .line 1
    const-string v0, "round-trip"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lwe1;->f(Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-string v4, "cloud-diagnostics-"

    .line 16
    .line 17
    const-string v5, "-"

    .line 18
    .line 19
    invoke-static {v4, v5, v0, v1}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, ".bin"

    .line 24
    .line 25
    invoke-static {v2, v3, v1, v0}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ljava/io/File;

    .line 30
    .line 31
    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Ljava/io/File;

    .line 35
    .line 36
    const-string v3, "downloaded-"

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1, p1, p2}, Lwe1;->G(Ljava/io/File;J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Lqe1;

    .line 50
    .line 51
    new-instance v0, Lq63;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-direct {v0, v1, v3}, Lq63;-><init>(Ljava/io/File;I)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lq63;

    .line 58
    .line 59
    const/4 v3, 0x2

    .line 60
    invoke-direct {v1, v2, v3}, Lq63;-><init>(Ljava/io/File;I)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lq63;

    .line 64
    .line 65
    invoke-direct {v2, p0, v3}, Lq63;-><init>(Ljava/io/File;I)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p2, v0, v1, p1, v2}, Lqe1;-><init>(Lq63;Lq63;Ljava/lang/String;Lq63;)V

    .line 69
    .line 70
    .line 71
    return-object p2
.end method

.method public final f(Ljava/lang/String;)Ljava/io/File;
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object p0, p0, Lwe1;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "cloud-diagnostics"

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    const v3, 0x7f130116

    .line 20
    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    new-instance v8, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, "-"

    .line 61
    .line 62
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-object v2
.end method

.method public final g(Lsd1;Lke;Ltb1;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lwe1;->a()V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lwe1;->a:Landroid/content/Context;

    .line 7
    .line 8
    const v1, 0x7f130118

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1, v0}, Lke;->g(Lsd1;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p4}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Ljd1;

    .line 26
    .line 27
    new-instance p4, Ljava/util/LinkedHashSet;

    .line 28
    .line 29
    invoke-direct {p4, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p4}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p2, p1}, Ljd1;-><init>(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p2}, Ltb1;->b(Lzv1;)Lxh2;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lwe1;->e:Lxh2;

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lxh2;->c()Ljq6;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iput-object p2, p0, Lwe1;->e:Lxh2;

    .line 51
    .line 52
    if-nez p5, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Lwe1;->a()V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p1}, Ljq6;->q()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    iget-object p0, p0, Lwe1;->a:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljq6;->b()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const p2, 0x7f130117

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    iput-object p2, p0, Lwe1;->e:Lxh2;

    .line 90
    .line 91
    throw p1
.end method

.method public final i(Lsd1;Lke;Ljava/io/File;Lbt3;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v2, v0

    .line 4
    :goto_0
    iget-object v3, p0, Lwe1;->a:Landroid/content/Context;

    .line 5
    .line 6
    const/4 v4, 0x6

    .line 7
    if-ge v1, v4, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lwe1;->a()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 13
    .line 14
    .line 15
    const v2, 0x7f130159

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1, v2}, Lke;->g(Lsd1;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-interface {p4}, Lbt3;->invoke()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    :try_start_1
    move-object v4, v2

    .line 35
    check-cast v4, Ljava/io/InputStream;

    .line 36
    .line 37
    new-instance v5, Ljava/io/FileOutputStream;

    .line 38
    .line 39
    invoke-direct {v5, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    .line 42
    :try_start_2
    invoke-static {v4, v5}, Lcy0;->k(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 43
    .line 44
    .line 45
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    .line 47
    .line 48
    :try_start_4
    invoke-static {v2, v0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/io/File;->length()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    const-wide/16 v6, 0x0

    .line 56
    .line 57
    cmp-long v2, v4, v6

    .line 58
    .line 59
    if-lez v2, :cond_0

    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const v4, 0x7f130157

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catchall_0
    move-exception v2

    .line 76
    goto :goto_2

    .line 77
    :catchall_1
    move-exception v3

    .line 78
    goto :goto_1

    .line 79
    :catchall_2
    move-exception v3

    .line 80
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 81
    :catchall_3
    move-exception v4

    .line 82
    :try_start_6
    invoke-static {v5, v3}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 86
    :goto_1
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 87
    :catchall_4
    move-exception v4

    .line 88
    :try_start_8
    invoke-static {v2, v3}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 92
    :goto_2
    const/4 v3, 0x5

    .line 93
    if-ge v1, v3, :cond_1

    .line 94
    .line 95
    const-wide/16 v3, 0xbb8

    .line 96
    .line 97
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 98
    .line 99
    .line 100
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    const p1, 0x7f130158

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {p0, v2}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final j(Lsd1;Lke;Ljava/io/File;Lbt3;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v3, v0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget-object v4, p0, Lwe1;->a:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v5, 0x6

    .line 8
    if-ge v2, v5, :cond_9

    .line 9
    .line 10
    invoke-virtual {p0}, Lwe1;->a()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 14
    .line 15
    .line 16
    const v3, 0x7f130159

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1, v3}, Lke;->g(Lsd1;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-interface {p4}, Lbt3;->invoke()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    const v5, 0x7f130157

    .line 36
    .line 37
    .line 38
    if-eqz v3, :cond_7

    .line 39
    .line 40
    const-string v6, "http://"

    .line 41
    .line 42
    invoke-static {v3, v6, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_1

    .line 47
    .line 48
    const-string v6, "https://"

    .line 49
    .line 50
    invoke-static {v3, v6, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    move-object v3, v0

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v3

    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_1
    :goto_1
    if-eqz v3, :cond_7

    .line 63
    .line 64
    new-instance v6, Ljava/net/URL;

    .line 65
    .line 66
    invoke-direct {v6, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/16 v6, 0x3a98

    .line 74
    .line 75
    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 82
    .line 83
    .line 84
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    .line 86
    .line 87
    invoke-direct {v7, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 88
    .line 89
    .line 90
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    const/16 v8, 0x2000

    .line 94
    .line 95
    invoke-static {v6, v7, v8}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 96
    .line 97
    .line 98
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 99
    .line 100
    .line 101
    :try_start_5
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 102
    .line 103
    .line 104
    :try_start_6
    instance-of v6, v3, Ljava/net/HttpURLConnection;

    .line 105
    .line 106
    if-eqz v6, :cond_2

    .line 107
    .line 108
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    move-object v3, v0

    .line 112
    :goto_2
    if-eqz v3, :cond_3

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-virtual {p3}, Ljava/io/File;->length()J

    .line 118
    .line 119
    .line 120
    move-result-wide v6

    .line 121
    const-wide/16 v8, 0x0

    .line 122
    .line 123
    cmp-long v3, v6, v8

    .line 124
    .line 125
    if-lez v3, :cond_4

    .line 126
    .line 127
    return-void

    .line 128
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :catchall_1
    move-exception v4

    .line 139
    goto :goto_4

    .line 140
    :catchall_2
    move-exception v4

    .line 141
    goto :goto_3

    .line 142
    :catchall_3
    move-exception v4

    .line 143
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 144
    :catchall_4
    move-exception v5

    .line 145
    :try_start_8
    invoke-static {v7, v4}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 149
    :goto_3
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 150
    :catchall_5
    move-exception v5

    .line 151
    :try_start_a
    invoke-static {v6, v4}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 155
    :goto_4
    :try_start_b
    instance-of v5, v3, Ljava/net/HttpURLConnection;

    .line 156
    .line 157
    if-eqz v5, :cond_5

    .line 158
    .line 159
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_5
    move-object v3, v0

    .line 163
    :goto_5
    if-eqz v3, :cond_6

    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    .line 167
    .line 168
    :cond_6
    throw v4

    .line 169
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 170
    .line 171
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 179
    :goto_6
    const/4 v4, 0x5

    .line 180
    if-ge v2, v4, :cond_8

    .line 181
    .line 182
    const-wide/16 v4, 0xbb8

    .line 183
    .line 184
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 185
    .line 186
    .line 187
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    const p1, 0x7f130158

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-static {p0, v3}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method public final k(Lsd1;Lke;Ltb1;Ljava/lang/String;Ljava/io/File;)Z
    .locals 10

    .line 1
    sget-object v0, Lnd1;->a:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {p3}, Ltb1;->g()Ldd1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v1, Lnd1;->a:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    instance-of v0, p3, Lkh0;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v0, :cond_7

    .line 26
    .line 27
    check-cast p3, Lkh0;

    .line 28
    .line 29
    move v0, v1

    .line 30
    move-object v4, v2

    .line 31
    :goto_0
    iget-object v5, p0, Lwe1;->a:Landroid/content/Context;

    .line 32
    .line 33
    const/4 v6, 0x6

    .line 34
    if-ge v0, v6, :cond_6

    .line 35
    .line 36
    invoke-virtual {p0}, Lwe1;->a()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p5}, Ljava/io/File;->delete()Z

    .line 40
    .line 41
    .line 42
    const v4, 0x7f130159

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1, v4}, Lke;->g(Lsd1;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    .line 56
    .line 57
    invoke-direct {v4, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    :try_start_1
    invoke-virtual {p3, p4, v4}, Lkh0;->p(Ljava/lang/String;Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .line 62
    .line 63
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p5}, Ljava/io/File;->length()J

    .line 67
    .line 68
    .line 69
    move-result-wide v6

    .line 70
    const-wide/16 v8, 0x0

    .line 71
    .line 72
    cmp-long v4, v6, v8

    .line 73
    .line 74
    if-lez v4, :cond_1

    .line 75
    .line 76
    return v3

    .line 77
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const v6, 0x7f130157

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception v4

    .line 91
    goto :goto_1

    .line 92
    :catchall_1
    move-exception v5

    .line 93
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 94
    :catchall_2
    move-exception v6

    .line 95
    :try_start_4
    invoke-static {v4, v5}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    :goto_1
    const/4 v5, 0x5

    .line 100
    if-ge v0, v5, :cond_5

    .line 101
    .line 102
    instance-of v5, v4, Lhv0;

    .line 103
    .line 104
    if-eqz v5, :cond_2

    .line 105
    .line 106
    move-object v5, v4

    .line 107
    check-cast v5, Lhv0;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    move-object v5, v2

    .line 111
    :goto_2
    if-eqz v5, :cond_3

    .line 112
    .line 113
    iget-object v5, v5, Lhv0;->c:Ljava/lang/Long;

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    move-object v5, v2

    .line 117
    :goto_3
    if-eqz v5, :cond_4

    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 120
    .line 121
    .line 122
    move-result-wide v5

    .line 123
    goto :goto_4

    .line 124
    :cond_4
    const-wide/16 v5, 0xbb8

    .line 125
    .line 126
    :goto_4
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 127
    .line 128
    .line 129
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    const p1, 0x7f130158

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {p0, v4}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    return v1

    .line 151
    :cond_7
    instance-of v0, p3, Lnq5;

    .line 152
    .line 153
    if-eqz v0, :cond_8

    .line 154
    .line 155
    check-cast p3, Lnq5;

    .line 156
    .line 157
    new-instance v0, Lrm;

    .line 158
    .line 159
    const/4 v1, 0x3

    .line 160
    invoke-direct {v0, v1, p3, p4}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p1, p2, p5, v0}, Lwe1;->j(Lsd1;Lke;Ljava/io/File;Lbt3;)V

    .line 164
    .line 165
    .line 166
    return v3

    .line 167
    :cond_8
    instance-of v0, p3, Lb82;

    .line 168
    .line 169
    if-eqz v0, :cond_9

    .line 170
    .line 171
    check-cast p3, Lb82;

    .line 172
    .line 173
    new-instance v0, Ld11;

    .line 174
    .line 175
    invoke-direct {v0, v3, p3, p4}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1, p2, p5, v0}, Lwe1;->i(Lsd1;Lke;Ljava/io/File;Lbt3;)V

    .line 179
    .line 180
    .line 181
    return v3

    .line 182
    :cond_9
    instance-of v0, p3, Lfu3;

    .line 183
    .line 184
    if-eqz v0, :cond_a

    .line 185
    .line 186
    check-cast p3, Lfu3;

    .line 187
    .line 188
    new-instance v0, Ll30;

    .line 189
    .line 190
    invoke-direct {v0, v3, p3, p4}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, p1, p2, p5, v0}, Lwe1;->j(Lsd1;Lke;Ljava/io/File;Lbt3;)V

    .line 194
    .line 195
    .line 196
    return v3

    .line 197
    :cond_a
    instance-of v0, p3, Lv52;

    .line 198
    .line 199
    if-eqz v0, :cond_d

    .line 200
    .line 201
    check-cast p3, Lv52;

    .line 202
    .line 203
    invoke-virtual {p3}, Lv52;->o()Ljh1;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    instance-of v0, p3, Ljy8;

    .line 208
    .line 209
    if-eqz v0, :cond_b

    .line 210
    .line 211
    move-object v2, p3

    .line 212
    check-cast v2, Ljy8;

    .line 213
    .line 214
    :cond_b
    if-nez v2, :cond_c

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_c
    new-instance p3, Lqf;

    .line 218
    .line 219
    const/4 v0, 0x4

    .line 220
    invoke-direct {p3, v0, v2, p4}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1, p2, p5, p3}, Lwe1;->i(Lsd1;Lke;Ljava/io/File;Lbt3;)V

    .line 224
    .line 225
    .line 226
    return v3

    .line 227
    :cond_d
    :goto_5
    return v1
.end method

.method public final l(Lsd1;Lke;Ltb1;Ljava/lang/String;JLq63;Loe1;)V
    .locals 10

    .line 1
    move-object/from16 v0, p8

    .line 2
    .line 3
    invoke-virtual {p0}, Lwe1;->a()V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v2, p5, v2

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-lez v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v3

    .line 22
    :goto_0
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    :goto_1
    move-wide v7, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    const-wide/16 v1, -0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :goto_2
    new-instance v4, Lfo2;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v5, p4

    .line 37
    move-object/from16 v9, p7

    .line 38
    .line 39
    invoke-direct/range {v4 .. v9}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v1, v0, Loe1;->a:Z

    .line 43
    .line 44
    iput-boolean v1, v4, Lfo2;->e:Z

    .line 45
    .line 46
    iget-boolean v0, v0, Loe1;->b:Z

    .line 47
    .line 48
    iput-boolean v0, v4, Lfo2;->f:Z

    .line 49
    .line 50
    invoke-virtual {p3, v4}, Ltb1;->c(Lfo2;)Lno2;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lwe1;->d:Lno2;

    .line 55
    .line 56
    new-instance v4, Lme1;

    .line 57
    .line 58
    move-object v7, p0

    .line 59
    move-object v6, p1

    .line 60
    move-object v5, p2

    .line 61
    move-wide v8, p5

    .line 62
    invoke-direct/range {v4 .. v9}, Lme1;-><init>(Lke;Lsd1;Lwe1;J)V

    .line 63
    .line 64
    .line 65
    iput-object v4, v0, Lno2;->f:Lmt3;

    .line 66
    .line 67
    :try_start_0
    invoke-virtual {v0}, Lno2;->b()Lke;

    .line 68
    .line 69
    .line 70
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iput-object v3, p0, Lwe1;->d:Lno2;

    .line 72
    .line 73
    invoke-virtual {p0}, Lwe1;->a()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lke;->e()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    iget-object p0, p0, Lwe1;->a:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {p1}, Lke;->b()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const p2, 0x7f13011a

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    move-object p1, v0

    .line 109
    iput-object v3, p0, Lwe1;->d:Lno2;

    .line 110
    .line 111
    throw p1
.end method

.method public final m(Ltb1;)V
    .locals 1

    .line 1
    sget-object v0, Ltb1;->a:Ltb1;

    .line 2
    .line 3
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lwe1;->a()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lwe1;->q(Ltb1;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final q(Ltb1;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lwe1;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ltb1;->a:Ltb1;

    .line 5
    .line 6
    invoke-static {}, Lqb1;->m()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    iget-object p0, p0, Lwe1;->a:Landroid/content/Context;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Ltb1;->a(Z)Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v2, v0, Lsi1;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Ltb1;->g()Ldd1;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ldd1;->getDisplayName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const v0, 0x7f130111

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_0
    const p1, 0x7f13012a

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_1
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;->getErrorMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const v0, 0x7f130110

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-object v1

    .line 95
    :cond_2
    const p1, 0x7f1303c5

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-object v1
.end method

.method public final r(Ltb1;Lsd1;Lke;)Ljava/lang/String;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    iget-object v0, v1, Lwe1;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p1}, Lwe1;->m(Ltb1;)V

    .line 10
    .line 11
    .line 12
    const-string v4, "backup-scan"

    .line 13
    .line 14
    invoke-virtual {v1, v4}, Lwe1;->f(Ljava/lang/String;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v7

    .line 26
    new-instance v9, Lld1;

    .line 27
    .line 28
    const-string v10, "cloud-diagnostics-listing-messages-"

    .line 29
    .line 30
    const-string v11, "-"

    .line 31
    .line 32
    invoke-static {v10, v11, v5, v6}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    const-string v12, ".msg"

    .line 37
    .line 38
    invoke-static {v7, v8, v12, v10}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    const/16 v12, 0x14

    .line 43
    .line 44
    invoke-direct {v9, v10, v12}, Lld1;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    new-instance v10, Lld1;

    .line 48
    .line 49
    const-string v13, "cloud-diagnostics-listing-calls-"

    .line 50
    .line 51
    invoke-static {v13, v11, v5, v6}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string v6, ".cls"

    .line 56
    .line 57
    invoke-static {v7, v8, v6, v5}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/16 v11, 0x15

    .line 62
    .line 63
    invoke-direct {v10, v5, v11}, Lld1;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    filled-new-array {v9, v10}, [Lld1;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {v5}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    new-instance v9, Ljava/util/ArrayList;

    .line 75
    .line 76
    const/16 v10, 0xa

    .line 77
    .line 78
    invoke-static {v5, v10}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    const/4 v13, 0x1

    .line 94
    const/4 v14, 0x0

    .line 95
    if-eqz v6, :cond_0

    .line 96
    .line 97
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Lld1;

    .line 102
    .line 103
    new-instance v7, Ljava/io/File;

    .line 104
    .line 105
    iget-object v8, v6, Lld1;->a:Ljava/lang/String;

    .line 106
    .line 107
    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-array v8, v13, [B

    .line 111
    .line 112
    const/16 v15, 0x53

    .line 113
    .line 114
    aput-byte v15, v8, v14

    .line 115
    .line 116
    invoke-static {v7, v8}, Lnc3;->W(Ljava/io/File;[B)V

    .line 117
    .line 118
    .line 119
    new-instance v8, Lpe1;

    .line 120
    .line 121
    new-instance v14, Lq63;

    .line 122
    .line 123
    invoke-direct {v14, v7, v13}, Lq63;-><init>(Ljava/io/File;I)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v8, v6, v14}, Lpe1;-><init>(Lld1;Lq63;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_0
    new-instance v15, Lq63;

    .line 134
    .line 135
    const/4 v5, 0x2

    .line 136
    invoke-direct {v15, v4, v5}, Lq63;-><init>(Ljava/io/File;I)V

    .line 137
    .line 138
    .line 139
    new-instance v4, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    const v5, 0x7f130160

    .line 145
    .line 146
    .line 147
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v2, v5}, Lke;->g(Lsd1;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v16

    .line 161
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 165
    if-eqz v5, :cond_1

    .line 166
    .line 167
    :try_start_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    check-cast v5, Lpe1;

    .line 172
    .line 173
    iget-object v6, v5, Lpe1;->b:Lq63;

    .line 174
    .line 175
    iget-object v5, v5, Lpe1;->a:Lld1;

    .line 176
    .line 177
    iget v5, v5, Lld1;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    .line 179
    const/4 v7, 0x0

    .line 180
    const/16 v8, 0x40

    .line 181
    .line 182
    move-object/from16 v17, v6

    .line 183
    .line 184
    move v6, v5

    .line 185
    move-object/from16 v5, v17

    .line 186
    .line 187
    move/from16 v17, v11

    .line 188
    .line 189
    move-object v11, v4

    .line 190
    move-object/from16 v4, p1

    .line 191
    .line 192
    :try_start_2
    invoke-static/range {v1 .. v8}, Lwe1;->B(Lwe1;Lsd1;Lke;Ltb1;Lq63;ILjava/lang/String;I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-object/from16 v1, p0

    .line 200
    .line 201
    move-object v4, v11

    .line 202
    move/from16 v11, v17

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    :goto_2
    move-object/from16 v1, p0

    .line 207
    .line 208
    :goto_3
    move-object/from16 v4, p1

    .line 209
    .line 210
    goto/16 :goto_13

    .line 211
    .line 212
    :catchall_1
    move-exception v0

    .line 213
    move-object v11, v4

    .line 214
    goto :goto_2

    .line 215
    :cond_1
    move/from16 v17, v11

    .line 216
    .line 217
    move-object v11, v4

    .line 218
    const v1, 0x7f130145

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3, v2, v1}, Lke;->g(Lsd1;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    sget-object v1, Ltb1;->a:Ltb1;

    .line 232
    .line 233
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-static {v9, v10}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    invoke-static {v4}, Lx65;->q0(I)I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    const/16 v5, 0x10

    .line 246
    .line 247
    if-ge v4, v5, :cond_2

    .line 248
    .line 249
    move v4, v5

    .line 250
    :cond_2
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 251
    .line 252
    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    if-eqz v6, :cond_3

    .line 264
    .line 265
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    move-object v7, v6

    .line 270
    check-cast v7, Lpe1;

    .line 271
    .line 272
    iget-object v7, v7, Lpe1;->a:Lld1;

    .line 273
    .line 274
    iget v7, v7, Lld1;->b:I

    .line 275
    .line 276
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_3
    new-instance v4, Lne1;

    .line 285
    .line 286
    const v6, 0x7f130348

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    invoke-virtual/range {p1 .. p1}, Ltb1;->j()Lui1;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v8

    .line 304
    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    check-cast v8, Lpe1;

    .line 309
    .line 310
    const/4 v10, 0x0

    .line 311
    if-eqz v8, :cond_4

    .line 312
    .line 313
    iget-object v8, v8, Lpe1;->a:Lld1;

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_4
    move-object v8, v10

    .line 317
    :goto_5
    invoke-direct {v4, v6, v7, v8}, Lne1;-><init>(Ljava/lang/String;Lui1;Lld1;)V

    .line 318
    .line 319
    .line 320
    new-instance v6, Lne1;

    .line 321
    .line 322
    const v7, 0x7f1300e3

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    invoke-virtual/range {p1 .. p1}, Ltb1;->f()Lui1;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v12

    .line 340
    invoke-virtual {v5, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    check-cast v5, Lpe1;

    .line 345
    .line 346
    if-eqz v5, :cond_5

    .line 347
    .line 348
    iget-object v5, v5, Lpe1;->a:Lld1;

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_5
    move-object v5, v10

    .line 352
    :goto_6
    invoke-direct {v6, v7, v8, v5}, Lne1;-><init>(Ljava/lang/String;Lui1;Lld1;)V

    .line 353
    .line 354
    .line 355
    new-instance v5, Lne1;

    .line 356
    .line 357
    const v7, 0x7f1305a3

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v7

    .line 364
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    invoke-virtual/range {p1 .. p1}, Ltb1;->k()Lui1;

    .line 368
    .line 369
    .line 370
    move-result-object v8

    .line 371
    invoke-direct {v5, v7, v8, v10}, Lne1;-><init>(Ljava/lang/String;Lui1;Lld1;)V

    .line 372
    .line 373
    .line 374
    new-instance v7, Lne1;

    .line 375
    .line 376
    const v8, 0x7f1305b0

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    invoke-virtual/range {p1 .. p1}, Ltb1;->l()Lui1;

    .line 387
    .line 388
    .line 389
    move-result-object v12

    .line 390
    invoke-direct {v7, v8, v12, v10}, Lne1;-><init>(Ljava/lang/String;Lui1;Lld1;)V

    .line 391
    .line 392
    .line 393
    filled-new-array {v4, v6, v5, v7}, [Lne1;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-static {v4}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-virtual/range {p0 .. p0}, Lwe1;->a()V

    .line 402
    .line 403
    .line 404
    new-instance v5, Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .line 408
    .line 409
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 414
    .line 415
    .line 416
    move-result v7

    .line 417
    if-eqz v7, :cond_f

    .line 418
    .line 419
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    check-cast v7, Lne1;

    .line 424
    .line 425
    iget-object v8, v7, Lne1;->b:Lui1;

    .line 426
    .line 427
    iget-object v12, v7, Lne1;->c:Lld1;

    .line 428
    .line 429
    iget-object v7, v7, Lne1;->a:Ljava/lang/String;

    .line 430
    .line 431
    iget-object v10, v8, Lui1;->b:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    .line 433
    if-nez v10, :cond_6

    .line 434
    .line 435
    move/from16 v17, v13

    .line 436
    .line 437
    goto :goto_8

    .line 438
    :cond_6
    move/from16 v17, v14

    .line 439
    .line 440
    :goto_8
    const-string v13, ": "

    .line 441
    .line 442
    if-nez v17, :cond_9

    .line 443
    .line 444
    if-eqz v10, :cond_7

    .line 445
    .line 446
    :try_start_3
    invoke-static {v10}, Lwe1;->h(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v8

    .line 450
    goto :goto_9

    .line 451
    :cond_7
    const/4 v8, 0x0

    .line 452
    :goto_9
    if-nez v8, :cond_8

    .line 453
    .line 454
    const-string v8, ""

    .line 455
    .line 456
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v7

    .line 474
    goto :goto_d

    .line 475
    :cond_9
    if-eqz v12, :cond_d

    .line 476
    .line 477
    iget-object v8, v8, Lui1;->a:Ljava/util/List;

    .line 478
    .line 479
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 480
    .line 481
    .line 482
    move-result v10

    .line 483
    if-eqz v10, :cond_a

    .line 484
    .line 485
    goto :goto_b

    .line 486
    :cond_a
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 487
    .line 488
    .line 489
    move-result-object v8

    .line 490
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 491
    .line 492
    .line 493
    move-result v10

    .line 494
    if-eqz v10, :cond_c

    .line 495
    .line 496
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v10

    .line 500
    check-cast v10, Lpg1;

    .line 501
    .line 502
    iget-object v10, v10, Lpg1;->a:Ljava/lang/String;

    .line 503
    .line 504
    invoke-virtual {v12, v1}, Lld1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v14

    .line 508
    invoke-static {v10, v14}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v10

    .line 512
    if-eqz v10, :cond_b

    .line 513
    .line 514
    goto :goto_c

    .line 515
    :cond_b
    const/4 v14, 0x0

    .line 516
    goto :goto_a

    .line 517
    :cond_c
    :goto_b
    invoke-virtual {v12, v1}, Lld1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v8

    .line 521
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v8

    .line 525
    const v10, 0x7f130114

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0, v10, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v8

    .line 532
    new-instance v10, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v7

    .line 550
    goto :goto_d

    .line 551
    :cond_d
    :goto_c
    const/4 v7, 0x0

    .line 552
    :goto_d
    if-eqz v7, :cond_e

    .line 553
    .line 554
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    :cond_e
    const/4 v10, 0x0

    .line 558
    const/4 v13, 0x1

    .line 559
    const/4 v14, 0x0

    .line 560
    goto/16 :goto_7

    .line 561
    .line 562
    :cond_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    if-eqz v1, :cond_16

    .line 567
    .line 568
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    const/4 v7, 0x0

    .line 573
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 574
    .line 575
    .line 576
    move-result v4

    .line 577
    if-eqz v4, :cond_12

    .line 578
    .line 579
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    check-cast v4, Lne1;

    .line 584
    .line 585
    iget-object v4, v4, Lne1;->b:Lui1;

    .line 586
    .line 587
    iget-object v4, v4, Lui1;->a:Ljava/util/List;

    .line 588
    .line 589
    new-instance v5, Ljava/util/ArrayList;

    .line 590
    .line 591
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .line 593
    .line 594
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 595
    .line 596
    .line 597
    move-result-object v4

    .line 598
    :cond_10
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 599
    .line 600
    .line 601
    move-result v6

    .line 602
    if-eqz v6, :cond_11

    .line 603
    .line 604
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v6

    .line 608
    move-object v8, v6

    .line 609
    check-cast v8, Lpg1;

    .line 610
    .line 611
    iget-object v8, v8, Lpg1;->a:Ljava/lang/String;

    .line 612
    .line 613
    const-string v10, "cloud-diagnostics-listing"

    .line 614
    .line 615
    const/4 v12, 0x0

    .line 616
    invoke-static {v8, v10, v12}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 617
    .line 618
    .line 619
    move-result v8

    .line 620
    if-nez v8, :cond_10

    .line 621
    .line 622
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    goto :goto_f

    .line 626
    :cond_11
    const/4 v12, 0x0

    .line 627
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    add-int/2addr v7, v4

    .line 632
    goto :goto_e

    .line 633
    :cond_12
    new-instance v1, Lpn6;

    .line 634
    .line 635
    invoke-direct {v1, v11}, Lpn6;-><init>(Ljava/util/ArrayList;)V

    .line 636
    .line 637
    .line 638
    invoke-static {v1}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 643
    .line 644
    .line 645
    move-result-object v8

    .line 646
    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    if-eqz v1, :cond_13

    .line 651
    .line 652
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    move-object v5, v1

    .line 657
    check-cast v5, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 658
    .line 659
    const/4 v6, 0x0

    .line 660
    move-object/from16 v1, p0

    .line 661
    .line 662
    move-object/from16 v4, p1

    .line 663
    .line 664
    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lwe1;->g(Lsd1;Lke;Ltb1;Ljava/lang/String;Z)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    goto :goto_10

    .line 671
    :catchall_2
    move-exception v0

    .line 672
    goto/16 :goto_13

    .line 673
    .line 674
    :cond_13
    move-object/from16 v1, p0

    .line 675
    .line 676
    move-object/from16 v4, p1

    .line 677
    .line 678
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 679
    .line 680
    .line 681
    move-result-object v5

    .line 682
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v5

    .line 686
    const v6, 0x7f130142

    .line 687
    .line 688
    .line 689
    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 694
    .line 695
    .line 696
    new-instance v5, Lpn6;

    .line 697
    .line 698
    invoke-direct {v5, v11}, Lpn6;-><init>(Ljava/util/ArrayList;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v5}, Lpn6;->iterator()Ljava/util/Iterator;

    .line 702
    .line 703
    .line 704
    move-result-object v5

    .line 705
    :goto_11
    move-object v6, v5

    .line 706
    check-cast v6, Lon6;

    .line 707
    .line 708
    iget-object v6, v6, Lon6;->a:Ljava/util/ListIterator;

    .line 709
    .line 710
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 711
    .line 712
    .line 713
    move-result v7

    .line 714
    if-eqz v7, :cond_14

    .line 715
    .line 716
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v6

    .line 720
    check-cast v6, Ljava/lang/String;

    .line 721
    .line 722
    invoke-virtual {v1, v2, v3, v4, v6}, Lwe1;->b(Lsd1;Lke;Ltb1;Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    goto :goto_11

    .line 726
    :cond_14
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 731
    .line 732
    .line 733
    move-result v2

    .line 734
    if-eqz v2, :cond_15

    .line 735
    .line 736
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    check-cast v2, Lpe1;

    .line 741
    .line 742
    iget-object v2, v2, Lpe1;->b:Lq63;

    .line 743
    .line 744
    invoke-virtual {v2}, Lq63;->h()Z

    .line 745
    .line 746
    .line 747
    goto :goto_12

    .line 748
    :cond_15
    invoke-virtual {v15}, Lq63;->h()Z

    .line 749
    .line 750
    .line 751
    return-object v0

    .line 752
    :cond_16
    move-object/from16 v1, p0

    .line 753
    .line 754
    move-object/from16 v4, p1

    .line 755
    .line 756
    :try_start_5
    const-string v17, "\n"

    .line 757
    .line 758
    const/16 v20, 0x0

    .line 759
    .line 760
    const/16 v21, 0x3e

    .line 761
    .line 762
    const/16 v18, 0x0

    .line 763
    .line 764
    const/16 v19, 0x0

    .line 765
    .line 766
    move-object/from16 v16, v5

    .line 767
    .line 768
    invoke-static/range {v16 .. v21}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 773
    .line 774
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 782
    :catchall_3
    move-exception v0

    .line 783
    move-object v11, v4

    .line 784
    goto/16 :goto_3

    .line 785
    .line 786
    :goto_13
    new-instance v5, Lpn6;

    .line 787
    .line 788
    invoke-direct {v5, v11}, Lpn6;-><init>(Ljava/util/ArrayList;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v5}, Lpn6;->iterator()Ljava/util/Iterator;

    .line 792
    .line 793
    .line 794
    move-result-object v5

    .line 795
    :goto_14
    move-object v6, v5

    .line 796
    check-cast v6, Lon6;

    .line 797
    .line 798
    iget-object v6, v6, Lon6;->a:Ljava/util/ListIterator;

    .line 799
    .line 800
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 801
    .line 802
    .line 803
    move-result v7

    .line 804
    if-eqz v7, :cond_17

    .line 805
    .line 806
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v6

    .line 810
    check-cast v6, Ljava/lang/String;

    .line 811
    .line 812
    invoke-virtual {v1, v2, v3, v4, v6}, Lwe1;->b(Lsd1;Lke;Ltb1;Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    goto :goto_14

    .line 816
    :cond_17
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 821
    .line 822
    .line 823
    move-result v2

    .line 824
    if-eqz v2, :cond_18

    .line 825
    .line 826
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v2

    .line 830
    check-cast v2, Lpe1;

    .line 831
    .line 832
    iget-object v2, v2, Lpe1;->b:Lq63;

    .line 833
    .line 834
    invoke-virtual {v2}, Lq63;->h()Z

    .line 835
    .line 836
    .line 837
    goto :goto_15

    .line 838
    :cond_18
    invoke-virtual {v15}, Lq63;->h()Z

    .line 839
    .line 840
    .line 841
    throw v0
.end method

.method public final s(Z)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lwe1;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lwe1;->t()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lwe1;->a()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Lig3;->b()Lig3;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lwe1;->E(Lig3;)Z

    .line 16
    .line 17
    .line 18
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p0}, Lwe1;->a()V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const p0, 0x7f130120

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    const p0, 0x7f130123

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance p1, Lkd1;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    new-instance p1, Lkd1;

    .line 53
    .line 54
    invoke-static {p0}, Lwe1;->h(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const v1, 0x7f13011f

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lwe1;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lwe1;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lai8;->i(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lwe1;->a()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lai8;->h()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const p0, 0x7f130124

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    const p0, 0x7f130127

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v0, Lkd1;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    const p0, 0x7f1303c8

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lkd1;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method public final u(Ltb1;Lsd1;Lke;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lwe1;->m(Ltb1;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lho6;->t()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    sget-object v0, Loi5;->L:Lgv7;

    .line 9
    .line 10
    invoke-static {}, Lly8;->u()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lel1;->c1(Ljava/util/List;)Ljava/lang/Comparable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Integer;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lly8;->v()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :goto_0
    :try_start_0
    invoke-static {v0}, Lho6;->V(I)V

    .line 32
    .line 33
    .line 34
    new-instance v8, Loe1;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-direct {v8, v2, v2}, Loe1;-><init>(ZZ)V

    .line 38
    .line 39
    .line 40
    const-wide/32 v6, 0x2000000

    .line 41
    .line 42
    .line 43
    move-object v2, p0

    .line 44
    move-object v3, p1

    .line 45
    move-object v4, p2

    .line 46
    move-object v5, p3

    .line 47
    invoke-virtual/range {v2 .. v8}, Lwe1;->x(Ltb1;Lsd1;Lke;JLoe1;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lho6;->V(I)V

    .line 51
    .line 52
    .line 53
    const-wide/32 p0, 0x2000000

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Lwe1;->n(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iget-object p1, v2, Lwe1;->a:Landroid/content/Context;

    .line 69
    .line 70
    const p2, 0x7f13012b

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    move-object p0, v0

    .line 83
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 84
    .line 85
    if-eqz p1, :cond_1

    .line 86
    .line 87
    const-string p2, "multithreaded_downloads_chunk_count"

    .line 88
    .line 89
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_1
    const-string p0, "editor"

    .line 98
    .line 99
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 p0, 0x0

    .line 103
    throw p0
.end method

.method public final v(Ltb1;Lsd1;Lke;)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lwe1;->m(Ltb1;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "thumbnail"

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lwe1;->f(Ljava/lang/String;)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-string v6, "cloud-diagnostics-thumbnail-"

    .line 21
    .line 22
    const-string v7, "-"

    .line 23
    .line 24
    invoke-static {v6, v7, v2, v3}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Ljava/io/File;

    .line 36
    .line 37
    const-string v4, ".wal"

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v9, Ljava/io/File;

    .line 47
    .line 48
    const-string v4, "-thumbnail.jpg"

    .line 49
    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-direct {v9, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/16 v2, 0x60

    .line 58
    .line 59
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 60
    .line 61
    invoke-static {v2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/16 v4, 0x7a

    .line 66
    .line 67
    const/16 v5, 0xb8

    .line 68
    .line 69
    const/16 v6, 0x24

    .line 70
    .line 71
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Ljava/io/FileOutputStream;

    .line 79
    .line 80
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 81
    .line 82
    .line 83
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 84
    .line 85
    const/16 v6, 0x64

    .line 86
    .line 87
    invoke-virtual {v2, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 88
    .line 89
    .line 90
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 91
    iget-object v10, v1, Lwe1;->a:Landroid/content/Context;

    .line 92
    .line 93
    if-eqz v5, :cond_3

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    .line 100
    .line 101
    new-instance v11, Lre1;

    .line 102
    .line 103
    new-instance v5, Lq63;

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    invoke-direct {v5, v3, v2}, Lq63;-><init>(Ljava/io/File;I)V

    .line 107
    .line 108
    .line 109
    new-instance v2, Lq63;

    .line 110
    .line 111
    const/4 v12, 0x2

    .line 112
    invoke-direct {v2, v0, v12}, Lq63;-><init>(Ljava/io/File;I)V

    .line 113
    .line 114
    .line 115
    invoke-direct {v11, v5, v9, v2}, Lre1;-><init>(Lq63;Ljava/io/File;Lq63;)V

    .line 116
    .line 117
    .line 118
    const/4 v7, 0x0

    .line 119
    const/16 v8, 0x60

    .line 120
    .line 121
    const/4 v13, 0x0

    .line 122
    const/16 v6, 0x16

    .line 123
    .line 124
    move-object/from16 v4, p1

    .line 125
    .line 126
    move-object/from16 v2, p2

    .line 127
    .line 128
    move-object/from16 v3, p3

    .line 129
    .line 130
    :try_start_1
    invoke-static/range {v1 .. v8}, Lwe1;->B(Lwe1;Lsd1;Lke;Ltb1;Lq63;ILjava/lang/String;I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    move-object v0, v5

    .line 135
    move-object/from16 v1, p0

    .line 136
    .line 137
    move-object v5, v6

    .line 138
    move-object v6, v9

    .line 139
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lwe1;->k(Lsd1;Lke;Ltb1;Ljava/lang/String;Ljava/io/File;)Z

    .line 140
    .line 141
    .line 142
    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 143
    move-object v15, v6

    .line 144
    if-nez v14, :cond_0

    .line 145
    .line 146
    :try_start_3
    invoke-virtual {v0}, Lq63;->A()J

    .line 147
    .line 148
    .line 149
    move-result-wide v6

    .line 150
    new-instance v8, Lq63;

    .line 151
    .line 152
    invoke-direct {v8, v15, v12}, Lq63;-><init>(Ljava/io/File;I)V

    .line 153
    .line 154
    .line 155
    new-instance v9, Loe1;

    .line 156
    .line 157
    const/4 v0, 0x0

    .line 158
    invoke-direct {v9, v0, v0}, Loe1;-><init>(ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    .line 160
    .line 161
    move-object/from16 v1, p0

    .line 162
    .line 163
    move-object/from16 v4, p1

    .line 164
    .line 165
    move-object/from16 v2, p2

    .line 166
    .line 167
    move-object/from16 v3, p3

    .line 168
    .line 169
    :try_start_4
    invoke-virtual/range {v1 .. v9}, Lwe1;->l(Lsd1;Lke;Ltb1;Ljava/lang/String;JLq63;Loe1;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :goto_0
    move-object v13, v5

    .line 174
    goto :goto_3

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    move-object/from16 v1, p0

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_0
    move-object/from16 v1, p0

    .line 180
    .line 181
    :goto_1
    invoke-virtual {v1, v15}, Lwe1;->D(Ljava/io/File;)V

    .line 182
    .line 183
    .line 184
    const/4 v6, 0x0

    .line 185
    move-object/from16 v4, p1

    .line 186
    .line 187
    move-object/from16 v2, p2

    .line 188
    .line 189
    move-object/from16 v3, p3

    .line 190
    .line 191
    invoke-virtual/range {v1 .. v6}, Lwe1;->g(Lsd1;Lke;Ltb1;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 192
    .line 193
    .line 194
    if-eqz v14, :cond_1

    .line 195
    .line 196
    const v0, 0x7f130131

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_1
    const v0, 0x7f130130

    .line 201
    .line 202
    .line 203
    :goto_2
    :try_start_5
    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 208
    .line 209
    .line 210
    invoke-static {v11}, Lwe1;->d(Lre1;)V

    .line 211
    .line 212
    .line 213
    return-object v0

    .line 214
    :catchall_1
    move-exception v0

    .line 215
    goto :goto_3

    .line 216
    :catchall_2
    move-exception v0

    .line 217
    goto :goto_0

    .line 218
    :goto_3
    if-eqz v13, :cond_2

    .line 219
    .line 220
    move-object/from16 v4, p1

    .line 221
    .line 222
    move-object/from16 v2, p2

    .line 223
    .line 224
    move-object/from16 v3, p3

    .line 225
    .line 226
    invoke-virtual {v1, v2, v3, v4, v13}, Lwe1;->b(Lsd1;Lke;Ltb1;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :cond_2
    invoke-static {v11}, Lwe1;->d(Lre1;)V

    .line 230
    .line 231
    .line 232
    throw v0

    .line 233
    :cond_3
    const v0, 0x7f13015a

    .line 234
    .line 235
    .line 236
    :try_start_6
    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 253
    :catchall_3
    move-exception v0

    .line 254
    move-object v1, v0

    .line 255
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 256
    :catchall_4
    move-exception v0

    .line 257
    invoke-static {v4, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    throw v0
.end method

.method public final w(Ltb1;Lsd1;Lke;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ltb1;->g()Ldd1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lue1;->b:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    const/4 v2, 0x6

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    const-wide/32 v1, 0xc00000

    .line 20
    .line 21
    .line 22
    :goto_0
    move-wide v8, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const-wide/32 v1, 0x1100000

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-wide/32 v1, 0x30af080

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    new-instance v3, Lke1;

    .line 33
    .line 34
    move-object v4, p0

    .line 35
    move-object v5, p1

    .line 36
    move-object v6, p2

    .line 37
    move-object v7, p3

    .line 38
    invoke-direct/range {v3 .. v9}, Lke1;-><init>(Lwe1;Ltb1;Lsd1;Lke;J)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v3}, Lwe1;->F(Ldd1;Lbt3;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ldd1;->getDisplayName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v8, v9}, Lwe1;->n(J)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object p1, v4, Lwe1;->a:Landroid/content/Context;

    .line 57
    .line 58
    const p2, 0x7f130132

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    return-object p0
.end method

.method public final x(Ltb1;Lsd1;Lke;JLoe1;)Ljava/lang/String;
    .locals 14

    .line 1
    move-object/from16 v2, p2

    .line 2
    .line 3
    move-object/from16 v3, p3

    .line 4
    .line 5
    move-wide/from16 v9, p4

    .line 6
    .line 7
    iget-object v0, p0, Lwe1;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p1}, Lwe1;->m(Ltb1;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v9, v10}, Lwe1;->e(J)Lqe1;

    .line 13
    .line 14
    .line 15
    move-result-object v11

    .line 16
    iget-object v12, v11, Lqe1;->b:Lq63;

    .line 17
    .line 18
    const/4 v13, 0x0

    .line 19
    :try_start_0
    invoke-static {v9, v10}, Lwe1;->n(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const v4, 0x7f13012f

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v2, v1}, Lke;->g(Lsd1;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v5, v11, Lqe1;->a:Lq63;

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    const/16 v8, 0x60

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    move-object v1, p0

    .line 47
    move-object v4, p1

    .line 48
    invoke-static/range {v1 .. v8}, Lwe1;->B(Lwe1;Lsd1;Lke;Ltb1;Lq63;ILjava/lang/String;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    move-object/from16 v2, p2

    .line 53
    .line 54
    move-object/from16 v3, p3

    .line 55
    .line 56
    move-wide v6, v9

    .line 57
    move-object v8, v12

    .line 58
    move-object/from16 v9, p6

    .line 59
    .line 60
    :try_start_1
    invoke-virtual/range {v1 .. v9}, Lwe1;->l(Lsd1;Lke;Ltb1;Ljava/lang/String;JLq63;Loe1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .line 62
    .line 63
    move-wide v9, v6

    .line 64
    :try_start_2
    iget-object v2, v11, Lqe1;->c:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0, v9, v10, v8, v2}, Lwe1;->C(JLq63;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    move-object v1, p0

    .line 71
    move-object v4, p1

    .line 72
    move-object/from16 v2, p2

    .line 73
    .line 74
    move-object/from16 v3, p3

    .line 75
    .line 76
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lwe1;->g(Lsd1;Lke;Ltb1;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    .line 78
    .line 79
    :try_start_4
    invoke-static {v9, v10}, Lwe1;->n(J)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const v6, 0x7f13013f

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    .line 96
    .line 97
    invoke-static {v11}, Lwe1;->c(Lqe1;)V

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    goto :goto_1

    .line 103
    :catchall_1
    move-exception v0

    .line 104
    :goto_0
    move-object v13, v5

    .line 105
    goto :goto_1

    .line 106
    :catchall_2
    move-exception v0

    .line 107
    move-object/from16 v2, p2

    .line 108
    .line 109
    move-object/from16 v3, p3

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :goto_1
    if-eqz v13, :cond_0

    .line 113
    .line 114
    invoke-virtual {p0, v2, v3, p1, v13}, Lwe1;->b(Lsd1;Lke;Ltb1;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_0
    invoke-static {v11}, Lwe1;->c(Lqe1;)V

    .line 118
    .line 119
    .line 120
    throw v0
.end method

.method public final z(Ltb1;Lsd1;Lke;)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lwe1;->m(Ltb1;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v2, 0x1000

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Lwe1;->e(J)Lqe1;

    .line 9
    .line 10
    .line 11
    move-result-object v10

    .line 12
    iget-object v0, v10, Lqe1;->b:Lq63;

    .line 13
    .line 14
    iget-object v5, v10, Lqe1;->a:Lq63;

    .line 15
    .line 16
    new-instance v11, Ljava/util/LinkedHashSet;

    .line 17
    .line 18
    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    const/16 v8, 0x60

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    move-object/from16 v4, p1

    .line 26
    .line 27
    move-object/from16 v2, p2

    .line 28
    .line 29
    move-object/from16 v3, p3

    .line 30
    .line 31
    :try_start_0
    invoke-static/range {v1 .. v8}, Lwe1;->B(Lwe1;Lsd1;Lke;Ltb1;Lq63;ILjava/lang/String;I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    invoke-interface {v11, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    new-instance v1, Ljava/io/File;

    .line 39
    .line 40
    invoke-virtual {v5}, Lq63;->v()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v12, 0x2000

    .line 48
    .line 49
    invoke-static {v1, v12, v13}, Lwe1;->G(Ljava/io/File;J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 53
    const/4 v6, 0x0

    .line 54
    const/16 v8, 0x20

    .line 55
    .line 56
    move-object/from16 v1, p0

    .line 57
    .line 58
    move-object/from16 v4, p1

    .line 59
    .line 60
    move-object/from16 v2, p2

    .line 61
    .line 62
    move-object/from16 v3, p3

    .line 63
    .line 64
    :try_start_2
    invoke-static/range {v1 .. v8}, Lwe1;->B(Lwe1;Lsd1;Lke;Ltb1;Lq63;ILjava/lang/String;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    :try_start_3
    invoke-interface {v11, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    instance-of v2, v4, Lkh0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    .line 73
    iget-object v15, v1, Lwe1;->a:Landroid/content/Context;

    .line 74
    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    :try_start_4
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_0

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_0
    const v0, 0x7f130161

    .line 85
    .line 86
    .line 87
    invoke-virtual {v15, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v2

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    :goto_0
    move-object/from16 v2, p2

    .line 106
    .line 107
    move-object/from16 v3, p3

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_1
    :goto_1
    new-instance v9, Loe1;

    .line 111
    .line 112
    const/4 v2, 0x0

    .line 113
    invoke-direct {v9, v2, v2}, Loe1;-><init>(ZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    .line 115
    .line 116
    const-wide/16 v6, 0x2000

    .line 117
    .line 118
    move-object/from16 v2, p2

    .line 119
    .line 120
    move-object/from16 v3, p3

    .line 121
    .line 122
    move-object v8, v0

    .line 123
    :try_start_5
    invoke-virtual/range {v1 .. v9}, Lwe1;->l(Lsd1;Lke;Ltb1;Ljava/lang/String;JLq63;Loe1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 124
    .line 125
    .line 126
    :try_start_6
    invoke-virtual {v1, v12, v13, v8, v14}, Lwe1;->C(JLq63;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 127
    .line 128
    .line 129
    const/4 v6, 0x0

    .line 130
    move-object/from16 v4, p1

    .line 131
    .line 132
    move-object/from16 v2, p2

    .line 133
    .line 134
    move-object/from16 v3, p3

    .line 135
    .line 136
    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lwe1;->g(Lsd1;Lke;Ltb1;Ljava/lang/String;Z)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v5}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    const v0, 0x7f130141

    .line 143
    .line 144
    .line 145
    invoke-virtual {v15, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 150
    .line 151
    .line 152
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_2

    .line 161
    .line 162
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v1, v2, v3, v4, v6}, Lwe1;->b(Lsd1;Lke;Ltb1;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_2
    invoke-static {v10}, Lwe1;->c(Lqe1;)V

    .line 173
    .line 174
    .line 175
    return-object v0

    .line 176
    :catchall_1
    move-exception v0

    .line 177
    goto :goto_4

    .line 178
    :catchall_2
    move-exception v0

    .line 179
    :goto_3
    move-object/from16 v4, p1

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :catchall_3
    move-exception v0

    .line 183
    move-object/from16 v1, p0

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :goto_4
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-eqz v6, :cond_3

    .line 195
    .line 196
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    check-cast v6, Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v1, v2, v3, v4, v6}, Lwe1;->b(Lsd1;Lke;Ltb1;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_3
    invoke-static {v10}, Lwe1;->c(Lqe1;)V

    .line 207
    .line 208
    .line 209
    throw v0
.end method
