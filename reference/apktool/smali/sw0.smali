.class public Lsw0;
.super Ljava/lang/Object;


# instance fields
.field public a:[B

.field public b:I

.field public c:Z

.field public d:Lln5;

.field public e:Lgf2;

.field public f:Z

.field public g:Z


# virtual methods
.method public a([BI)I
    .locals 8

    .line 1
    iget-object v0, p0, Lsw0;->a:[B

    .line 2
    .line 3
    iget-object v1, p0, Lsw0;->e:Lgf2;

    .line 4
    .line 5
    :try_start_0
    iget v2, p0, Lsw0;->b:I

    .line 6
    .line 7
    add-int v3, p2, v2

    .line 8
    .line 9
    array-length v4, p1

    .line 10
    if-gt v3, v4, :cond_4

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Lxs0;->getBlockSize()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    div-int v4, v2, v3

    .line 22
    .line 23
    iget-object v2, p0, Lsw0;->a:[B

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    move-object v5, p1

    .line 27
    move v6, p2

    .line 28
    invoke-virtual/range {v1 .. v6}, Lgf2;->b([BII[BI)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-interface {v1}, Lxs0;->getBlockSize()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    mul-int/2addr v4, p2

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object p1, v0

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    move-object v5, p1

    .line 42
    move v6, p2

    .line 43
    move p1, v7

    .line 44
    move v4, p1

    .line 45
    :goto_0
    iget p2, p0, Lsw0;->b:I

    .line 46
    .line 47
    if-eq p2, v4, :cond_2

    .line 48
    .line 49
    iget-boolean p2, p0, Lsw0;->f:Z

    .line 50
    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    iget-object p2, p0, Lsw0;->d:Lln5;

    .line 54
    .line 55
    invoke-virtual {p2, v0, v0, v4, v4}, Lln5;->j([B[BII)I

    .line 56
    .line 57
    .line 58
    add-int p2, v6, p1

    .line 59
    .line 60
    iget v1, p0, Lsw0;->b:I

    .line 61
    .line 62
    sub-int/2addr v1, v4

    .line 63
    invoke-static {v0, v4, v5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    iget p2, p0, Lsw0;->b:I

    .line 67
    .line 68
    sub-int/2addr p2, v4

    .line 69
    add-int/2addr p2, p1

    .line 70
    iput v7, p0, Lsw0;->b:I

    .line 71
    .line 72
    move v7, p2

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance p1, Lua2;

    .line 75
    .line 76
    const-string p2, "data not block size aligned"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_2
    move v7, p1

    .line 83
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lsw0;->g()V

    .line 84
    .line 85
    .line 86
    return v7

    .line 87
    :cond_4
    :try_start_1
    new-instance p1, Ldv5;

    .line 88
    .line 89
    const-string p2, "output buffer too short for doFinal()"

    .line 90
    .line 91
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_2
    invoke-virtual {p0}, Lsw0;->g()V

    .line 96
    .line 97
    .line 98
    throw p1
.end method

.method public b()I
    .locals 0

    .line 1
    iget-object p0, p0, Lsw0;->d:Lln5;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 p0, 0x8

    .line 7
    .line 8
    return p0
.end method

.method public c(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lsw0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lsw0;->b:I

    .line 4
    .line 5
    add-int/2addr p1, v1

    .line 6
    iget-boolean v1, p0, Lsw0;->g:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-boolean v1, p0, Lsw0;->c:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    array-length v0, v0

    .line 15
    rem-int v0, p1, v0

    .line 16
    .line 17
    iget-object p0, p0, Lsw0;->d:Lln5;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0xa

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    array-length p0, v0

    .line 26
    rem-int v0, p1, p0

    .line 27
    .line 28
    :goto_0
    sub-int/2addr p1, v0

    .line 29
    return p1
.end method

.method public d(ZLz61;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsw0;->c:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lsw0;->g()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lsw0;->d:Lln5;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lln5;->a(ZLz61;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final e([BI)I
    .locals 6

    .line 1
    iget-object v1, p0, Lsw0;->a:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lsw0;->b:I

    .line 5
    .line 6
    move v2, v0

    .line 7
    iget-object v0, p0, Lsw0;->e:Lgf2;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    array-length p0, v1

    .line 12
    invoke-interface {v0}, Lxs0;->getBlockSize()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    div-int v3, p0, v2

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    move-object v4, p1

    .line 20
    move v5, p2

    .line 21
    invoke-virtual/range {v0 .. v5}, Lgf2;->b([BII[BI)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    move-object v4, p1

    .line 27
    move v5, p2

    .line 28
    iget-object p0, p0, Lsw0;->d:Lln5;

    .line 29
    .line 30
    invoke-virtual {p0, v1, v4, v2, v5}, Lln5;->j([B[BII)I

    .line 31
    .line 32
    .line 33
    const/16 p0, 0x8

    .line 34
    .line 35
    return p0
.end method

.method public f([BII[BI)I
    .locals 7

    .line 1
    iget-object v0, p0, Lsw0;->e:Lgf2;

    .line 2
    .line 3
    iget-object p2, p0, Lsw0;->a:[B

    .line 4
    .line 5
    const/4 p5, 0x0

    .line 6
    if-ltz p3, :cond_a

    .line 7
    .line 8
    invoke-virtual {p0}, Lsw0;->b()I

    .line 9
    .line 10
    .line 11
    move-result v6

    .line 12
    invoke-virtual {p0, p3}, Lsw0;->c(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_1

    .line 17
    .line 18
    array-length v2, p4

    .line 19
    if-gt v1, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ldv5;

    .line 23
    .line 24
    const-string p1, "output buffer too short"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    array-length v1, p2

    .line 31
    iget v2, p0, Lsw0;->b:I

    .line 32
    .line 33
    sub-int/2addr v1, v2

    .line 34
    if-le p3, v1, :cond_8

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-static {p1, p5, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    sub-int/2addr p3, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v1, p5

    .line 44
    :goto_1
    if-ne p1, p4, :cond_3

    .line 45
    .line 46
    new-array p1, p3, [B

    .line 47
    .line 48
    invoke-static {p4, v1, p1, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    move v2, p5

    .line 52
    :goto_2
    move-object v1, p1

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move v2, v1

    .line 55
    goto :goto_2

    .line 56
    :goto_3
    iget p1, p0, Lsw0;->b:I

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0, p4, p5}, Lsw0;->e([BI)I

    .line 61
    .line 62
    .line 63
    move-result p5

    .line 64
    :cond_4
    move v5, p5

    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    invoke-interface {v0}, Lxs0;->getBlockSize()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    div-int p1, p3, p1

    .line 72
    .line 73
    invoke-interface {v0}, Lxs0;->getBlockSize()I

    .line 74
    .line 75
    .line 76
    move-result p5

    .line 77
    div-int/2addr p5, v6

    .line 78
    mul-int v3, p5, p1

    .line 79
    .line 80
    move-object v4, p4

    .line 81
    if-lez v3, :cond_5

    .line 82
    .line 83
    invoke-virtual/range {v0 .. v5}, Lgf2;->b([BII[BI)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    add-int/2addr v5, p1

    .line 88
    mul-int/2addr v3, v6

    .line 89
    sub-int/2addr p3, v3

    .line 90
    add-int/2addr v2, v3

    .line 91
    :cond_5
    move p5, v2

    .line 92
    move-object p1, v1

    .line 93
    goto :goto_5

    .line 94
    :cond_6
    move-object v4, p4

    .line 95
    move p5, v5

    .line 96
    :goto_4
    array-length p1, p2

    .line 97
    if-le p3, p1, :cond_7

    .line 98
    .line 99
    iget-object p1, p0, Lsw0;->d:Lln5;

    .line 100
    .line 101
    invoke-virtual {p1, v1, v4, v2, p5}, Lln5;->j([B[BII)I

    .line 102
    .line 103
    .line 104
    const/16 p1, 0x8

    .line 105
    .line 106
    add-int/2addr p5, p1

    .line 107
    sub-int/2addr p3, v6

    .line 108
    add-int/2addr v2, v6

    .line 109
    goto :goto_4

    .line 110
    :cond_7
    move v5, p5

    .line 111
    move-object p1, v1

    .line 112
    move p5, v2

    .line 113
    goto :goto_5

    .line 114
    :cond_8
    move-object v4, p4

    .line 115
    move v5, p5

    .line 116
    :goto_5
    iget p4, p0, Lsw0;->b:I

    .line 117
    .line 118
    invoke-static {p1, p5, p2, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    .line 120
    .line 121
    iget p1, p0, Lsw0;->b:I

    .line 122
    .line 123
    add-int/2addr p1, p3

    .line 124
    iput p1, p0, Lsw0;->b:I

    .line 125
    .line 126
    array-length p2, p2

    .line 127
    if-ne p1, p2, :cond_9

    .line 128
    .line 129
    invoke-virtual {p0, v4, v5}, Lsw0;->e([BI)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    add-int/2addr p0, v5

    .line 134
    return p0

    .line 135
    :cond_9
    return v5

    .line 136
    :cond_a
    const-string p0, "Can\'t have a negative input length!"

    .line 137
    .line 138
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return p5
.end method

.method public g()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lsw0;->a:[B

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_0

    .line 7
    .line 8
    aput-byte v0, v2, v1

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput v0, p0, Lsw0;->b:I

    .line 14
    .line 15
    iget-object p0, p0, Lsw0;->d:Lln5;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    return-void
.end method
