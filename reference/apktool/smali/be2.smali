.class public final Lbe2;
.super Lsw0;


# instance fields
.field public final h:[B

.field public i:I

.field public j:Z

.field public final k:Lly0;

.field public final l:Lly0;

.field public final m:Z

.field public final n:Z


# direct methods
.method public constructor <init>(Lly0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbe2;->k:Lly0;

    .line 5
    .line 6
    iput-object p1, p0, Lbe2;->l:Lly0;

    .line 7
    .line 8
    invoke-interface {p1}, Lxs0;->getBlockSize()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    iput-object v0, p0, Lbe2;->h:[B

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lbe2;->i:I

    .line 18
    .line 19
    invoke-virtual {p1}, Lly0;->f()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/16 v2, 0x2f

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    add-int/2addr v2, v3

    .line 31
    if-lez v2, :cond_0

    .line 32
    .line 33
    const-string v4, "PGP"

    .line 34
    .line 35
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    move v4, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v4, v0

    .line 44
    :goto_0
    iput-boolean v4, p0, Lbe2;->n:Z

    .line 45
    .line 46
    if-nez v4, :cond_3

    .line 47
    .line 48
    instance-of p1, p1, Lcp7;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    if-lez v2, :cond_2

    .line 54
    .line 55
    const-string p1, "OpenPGP"

    .line 56
    .line 57
    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    move v0, v3

    .line 64
    :cond_2
    iput-boolean v0, p0, Lbe2;->m:Z

    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lbe2;->m:Z

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final a([BI)I
    .locals 10

    .line 1
    iget-object v0, p0, Lbe2;->h:[B

    .line 2
    .line 3
    :try_start_0
    iget v1, p0, Lbe2;->i:I

    .line 4
    .line 5
    add-int v2, p2, v1

    .line 6
    .line 7
    array-length v3, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-gt v2, v3, :cond_4

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-object v3, p0, Lbe2;->l:Lly0;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    :try_start_1
    iget-object v9, v3, Lly0;->e:Lxs0;

    .line 18
    .line 19
    invoke-interface {v9}, Lxs0;->getBlockSize()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    div-int v6, v1, v4

    .line 24
    .line 25
    iget-object v4, p0, Lbe2;->h:[B

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    move-object v7, p1

    .line 29
    move v8, p2

    .line 30
    invoke-virtual/range {v3 .. v8}, Lgf2;->b([BII[BI)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-interface {v9}, Lxs0;->getBlockSize()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    mul-int/2addr v6, p2

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    move-object p1, v0

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    move-object v7, p1

    .line 44
    move v8, p2

    .line 45
    move p1, v2

    .line 46
    move v6, p1

    .line 47
    :goto_0
    iget p2, p0, Lbe2;->i:I

    .line 48
    .line 49
    if-eq p2, v6, :cond_2

    .line 50
    .line 51
    iget-boolean p2, p0, Lbe2;->m:Z

    .line 52
    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    iget-object p2, p0, Lbe2;->k:Lly0;

    .line 56
    .line 57
    invoke-virtual {p2, v0, v0, v6, v6}, Lly0;->j([B[BII)I

    .line 58
    .line 59
    .line 60
    add-int p2, v8, p1

    .line 61
    .line 62
    iget v1, p0, Lbe2;->i:I

    .line 63
    .line 64
    sub-int/2addr v1, v6

    .line 65
    invoke-static {v0, v6, v7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    .line 67
    .line 68
    iget p2, p0, Lbe2;->i:I

    .line 69
    .line 70
    sub-int/2addr p2, v6

    .line 71
    add-int/2addr p2, p1

    .line 72
    iput v2, p0, Lbe2;->i:I

    .line 73
    .line 74
    move v2, p2

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance p1, Lua2;

    .line 77
    .line 78
    const-string p2, "data not block size aligned"

    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :cond_2
    move v2, p1

    .line 85
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lbe2;->g()V

    .line 86
    .line 87
    .line 88
    return v2

    .line 89
    :cond_4
    :try_start_2
    new-instance p1, Ldv5;

    .line 90
    .line 91
    const-string p2, "output buffer too short for doFinal()"

    .line 92
    .line 93
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :goto_2
    invoke-virtual {p0}, Lbe2;->g()V

    .line 98
    .line 99
    .line 100
    throw p1
.end method

.method public final b()I
    .locals 0

    .line 1
    iget-object p0, p0, Lbe2;->k:Lly0;

    .line 2
    .line 3
    iget-object p0, p0, Lly0;->e:Lxs0;

    .line 4
    .line 5
    invoke-interface {p0}, Lxs0;->getBlockSize()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final c(I)I
    .locals 2

    .line 1
    iget v0, p0, Lbe2;->i:I

    .line 2
    .line 3
    add-int/2addr p1, v0

    .line 4
    iget-boolean v0, p0, Lbe2;->n:Z

    .line 5
    .line 6
    iget-object v1, p0, Lbe2;->h:[B

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lbe2;->j:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    array-length v0, v1

    .line 15
    rem-int v0, p1, v0

    .line 16
    .line 17
    iget-object p0, p0, Lbe2;->k:Lly0;

    .line 18
    .line 19
    iget-object p0, p0, Lly0;->e:Lxs0;

    .line 20
    .line 21
    invoke-interface {p0}, Lxs0;->getBlockSize()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    add-int/lit8 p0, p0, 0x2

    .line 26
    .line 27
    sub-int/2addr v0, p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    array-length p0, v1

    .line 30
    rem-int v0, p1, p0

    .line 31
    .line 32
    :goto_0
    sub-int/2addr p1, v0

    .line 33
    return p1
.end method

.method public final d(ZLz61;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lbe2;->j:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lbe2;->g()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lbe2;->k:Lly0;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lly0;->a(ZLz61;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f([BII[BI)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p3, :cond_a

    .line 3
    .line 4
    iget-object v1, p0, Lbe2;->k:Lly0;

    .line 5
    .line 6
    iget-object v2, v1, Lly0;->e:Lxs0;

    .line 7
    .line 8
    invoke-interface {v2}, Lxs0;->getBlockSize()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p0, p3}, Lbe2;->c(I)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-lez v3, :cond_1

    .line 17
    .line 18
    add-int/2addr v3, p5

    .line 19
    array-length v4, p4

    .line 20
    if-gt v3, v4, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ldv5;

    .line 24
    .line 25
    const-string p1, "output buffer too short"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_0
    iget-object v3, p0, Lbe2;->h:[B

    .line 32
    .line 33
    array-length v4, v3

    .line 34
    iget v5, p0, Lbe2;->i:I

    .line 35
    .line 36
    sub-int/2addr v4, v5

    .line 37
    if-le p3, v4, :cond_8

    .line 38
    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    invoke-static {p1, p2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    add-int/2addr p2, v4

    .line 45
    sub-int/2addr p3, v4

    .line 46
    :cond_2
    if-ne p1, p4, :cond_3

    .line 47
    .line 48
    new-array p1, p3, [B

    .line 49
    .line 50
    invoke-static {p4, p2, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    move v6, v0

    .line 54
    :goto_1
    move-object v5, p1

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    move v6, p2

    .line 57
    goto :goto_1

    .line 58
    :goto_2
    iget p1, p0, Lbe2;->i:I

    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0, p4, p5}, Lbe2;->h([BI)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    :cond_4
    iget-object v4, p0, Lbe2;->l:Lly0;

    .line 67
    .line 68
    if-eqz v4, :cond_7

    .line 69
    .line 70
    invoke-interface {v4}, Lxs0;->getBlockSize()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    div-int p1, p3, p1

    .line 75
    .line 76
    invoke-interface {v4}, Lxs0;->getBlockSize()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    div-int/2addr p2, v2

    .line 81
    mul-int v7, p2, p1

    .line 82
    .line 83
    if-lez v7, :cond_5

    .line 84
    .line 85
    add-int v9, p5, v0

    .line 86
    .line 87
    move-object v8, p4

    .line 88
    invoke-virtual/range {v4 .. v9}, Lgf2;->b([BII[BI)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    add-int/2addr v0, p1

    .line 93
    mul-int/2addr v7, v2

    .line 94
    sub-int/2addr p3, v7

    .line 95
    add-int/2addr v6, v7

    .line 96
    :goto_3
    move p2, v6

    .line 97
    goto :goto_4

    .line 98
    :cond_5
    move-object v8, p4

    .line 99
    goto :goto_3

    .line 100
    :cond_6
    :goto_4
    move-object p1, v5

    .line 101
    goto :goto_6

    .line 102
    :cond_7
    move-object v8, p4

    .line 103
    move p2, v6

    .line 104
    :goto_5
    array-length p1, v3

    .line 105
    if-le p3, p1, :cond_6

    .line 106
    .line 107
    add-int p1, p5, v0

    .line 108
    .line 109
    invoke-virtual {v1, v5, v8, p2, p1}, Lly0;->j([B[BII)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    add-int/2addr v0, p1

    .line 114
    sub-int/2addr p3, v2

    .line 115
    add-int/2addr p2, v2

    .line 116
    goto :goto_5

    .line 117
    :cond_8
    move-object v8, p4

    .line 118
    :goto_6
    iget p4, p0, Lbe2;->i:I

    .line 119
    .line 120
    invoke-static {p1, p2, v3, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    .line 122
    .line 123
    iget p1, p0, Lbe2;->i:I

    .line 124
    .line 125
    add-int/2addr p1, p3

    .line 126
    iput p1, p0, Lbe2;->i:I

    .line 127
    .line 128
    array-length p2, v3

    .line 129
    if-ne p1, p2, :cond_9

    .line 130
    .line 131
    add-int/2addr p5, v0

    .line 132
    invoke-virtual {p0, v8, p5}, Lbe2;->h([BI)I

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    add-int/2addr p0, v0

    .line 137
    return p0

    .line 138
    :cond_9
    return v0

    .line 139
    :cond_a
    const-string p0, "Can\'t have a negative input length!"

    .line 140
    .line 141
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return v0
.end method

.method public final g()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lbe2;->h:[B

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
    iput v0, p0, Lbe2;->i:I

    .line 14
    .line 15
    iget-object p0, p0, Lbe2;->k:Lly0;

    .line 16
    .line 17
    invoke-virtual {p0}, Lly0;->reset()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final h([BI)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lbe2;->i:I

    .line 3
    .line 4
    iget-object v2, p0, Lbe2;->h:[B

    .line 5
    .line 6
    iget-object v1, p0, Lbe2;->l:Lly0;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    array-length p0, v2

    .line 11
    iget-object v0, v1, Lly0;->e:Lxs0;

    .line 12
    .line 13
    invoke-interface {v0}, Lxs0;->getBlockSize()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    div-int v4, p0, v0

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    move-object v5, p1

    .line 21
    move v6, p2

    .line 22
    invoke-virtual/range {v1 .. v6}, Lgf2;->b([BII[BI)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_0
    move-object v5, p1

    .line 28
    move v6, p2

    .line 29
    iget-object p0, p0, Lbe2;->k:Lly0;

    .line 30
    .line 31
    invoke-virtual {p0, v2, v5, v0, v6}, Lly0;->j([B[BII)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method
