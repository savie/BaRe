.class public final Llq4;
.super Lj3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/InputStream;JLkk1;[BI)Ljava/io/InputStream;
    .locals 7

    .line 1
    iget-object p0, p5, Lkk1;->d:[B

    .line 2
    .line 3
    const/4 p5, 0x0

    .line 4
    if-eqz p0, :cond_6

    .line 5
    .line 6
    array-length p6, p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-lt p6, v0, :cond_5

    .line 9
    .line 10
    const/4 p6, 0x0

    .line 11
    aget-byte v5, p0, p6

    .line 12
    .line 13
    const/4 p6, 0x4

    .line 14
    invoke-static {p0, v0, p6}, Lwx3;->j([BII)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    long-to-int v6, v1

    .line 19
    const p0, 0x7ffffff0

    .line 20
    .line 21
    .line 22
    if-gt v6, p0, :cond_4

    .line 23
    .line 24
    sget p1, Lsq4;->r:I

    .line 25
    .line 26
    if-ltz v6, :cond_3

    .line 27
    .line 28
    if-gt v6, p0, :cond_3

    .line 29
    .line 30
    and-int/lit16 p0, v5, 0xff

    .line 31
    .line 32
    const/16 p1, 0xe0

    .line 33
    .line 34
    if-gt p0, p1, :cond_2

    .line 35
    .line 36
    rem-int/lit8 p0, p0, 0x2d

    .line 37
    .line 38
    div-int/lit8 p1, p0, 0x9

    .line 39
    .line 40
    mul-int/lit8 v1, p1, 0x9

    .line 41
    .line 42
    sub-int/2addr p0, v1

    .line 43
    if-ltz p0, :cond_1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    if-gt p0, v1, :cond_1

    .line 48
    .line 49
    if-ltz p1, :cond_1

    .line 50
    .line 51
    if-gt p1, p6, :cond_1

    .line 52
    .line 53
    invoke-static {v6}, Lsq4;->a(I)I

    .line 54
    .line 55
    .line 56
    move-result p5

    .line 57
    div-int/lit16 p5, p5, 0x400

    .line 58
    .line 59
    add-int/lit8 p5, p5, 0xa

    .line 60
    .line 61
    const/16 p6, 0x600

    .line 62
    .line 63
    add-int/2addr p0, p1

    .line 64
    shl-int p0, p6, p0

    .line 65
    .line 66
    div-int/lit16 p0, p0, 0x400

    .line 67
    .line 68
    add-int/2addr p0, p5

    .line 69
    if-gt p0, p7, :cond_0

    .line 70
    .line 71
    new-instance v1, Lsq4;

    .line 72
    .line 73
    move-object v2, p2

    .line 74
    move-wide v3, p3

    .line 75
    invoke-direct/range {v1 .. v6}, Lsq4;-><init>(Ljava/io/InputStream;JBI)V

    .line 76
    .line 77
    .line 78
    iput-boolean v0, v1, Lsq4;->k:Z

    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_0
    new-instance p1, Lzb5;

    .line 82
    .line 83
    int-to-long p2, p0

    .line 84
    invoke-direct {p1, p7, p2, p3}, Lzb5;-><init>(IJ)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_1
    const-string p0, "Invalid lc or lp"

    .line 89
    .line 90
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object p5

    .line 94
    :cond_2
    new-instance p0, Lcy1;

    .line 95
    .line 96
    const-string p1, "Invalid LZMA properties byte"

    .line 97
    .line 98
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_3
    const-string p0, "LZMA dictionary is too big for this implementation"

    .line 103
    .line 104
    invoke-static {p0}, Ly5;->h(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object p5

    .line 108
    :cond_4
    const-string p0, "Dictionary larger than 4GiB maximum size used in "

    .line 109
    .line 110
    invoke-static {p0, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object p5

    .line 118
    :cond_5
    const-string p0, "LZMA properties too short"

    .line 119
    .line 120
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-object p5

    .line 124
    :cond_6
    const-string p0, "Missing LZMA properties"

    .line 125
    .line 126
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-object p5
.end method

.method public final b(Ljava/lang/Object;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 3

    .line 1
    new-instance p0, Ldj3;

    .line 2
    .line 3
    new-instance v0, Ltq4;

    .line 4
    .line 5
    instance-of v1, p1, Leq4;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast p1, Leq4;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Leq4;

    .line 13
    .line 14
    invoke-direct {v1}, Leq4;-><init>()V

    .line 15
    .line 16
    .line 17
    const/high16 v2, 0x800000

    .line 18
    .line 19
    invoke-static {v2, p1}, Lj3;->e(ILjava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v1, p1}, Leq4;->c(I)V

    .line 24
    .line 25
    .line 26
    move-object p1, v1

    .line 27
    :goto_0
    invoke-direct {v0, p2, p1}, Ltq4;-><init>(Ljava/io/OutputStream;Leq4;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public final c(Ljava/lang/Object;)[B
    .locals 3

    .line 1
    instance-of p0, p1, Leq4;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Leq4;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Leq4;

    .line 9
    .line 10
    invoke-direct {p0}, Leq4;-><init>()V

    .line 11
    .line 12
    .line 13
    const/high16 v0, 0x800000

    .line 14
    .line 15
    invoke-static {v0, p1}, Lj3;->e(ILjava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Leq4;->c(I)V

    .line 20
    .line 21
    .line 22
    move-object p1, p0

    .line 23
    :goto_0
    iget p0, p1, Leq4;->d:I

    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    mul-int/2addr p0, v0

    .line 27
    iget v1, p1, Leq4;->c:I

    .line 28
    .line 29
    add-int/2addr p0, v1

    .line 30
    mul-int/lit8 p0, p0, 0x9

    .line 31
    .line 32
    iget v1, p1, Leq4;->b:I

    .line 33
    .line 34
    add-int/2addr p0, v1

    .line 35
    int-to-byte p0, p0

    .line 36
    iget p1, p1, Leq4;->a:I

    .line 37
    .line 38
    new-array v0, v0, [B

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    aput-byte p0, v0, v1

    .line 42
    .line 43
    int-to-long p0, p1

    .line 44
    const/4 v1, 0x1

    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-static {p0, p1, v0, v1, v2}, Lwx3;->C(J[BII)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public final d(Lkk1;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object p0, p1, Lkk1;->d:[B

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    if-eqz p0, :cond_3

    .line 5
    .line 6
    array-length v0, p0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-lt v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    aget-byte v0, p0, v0

    .line 12
    .line 13
    and-int/lit16 v0, v0, 0xff

    .line 14
    .line 15
    div-int/lit8 v2, v0, 0x2d

    .line 16
    .line 17
    mul-int/lit8 v3, v2, 0x2d

    .line 18
    .line 19
    sub-int/2addr v0, v3

    .line 20
    div-int/lit8 v3, v0, 0x9

    .line 21
    .line 22
    mul-int/lit8 v4, v3, 0x9

    .line 23
    .line 24
    sub-int/2addr v0, v4

    .line 25
    new-instance v4, Leq4;

    .line 26
    .line 27
    invoke-direct {v4}, Leq4;-><init>()V

    .line 28
    .line 29
    .line 30
    if-ltz v2, :cond_1

    .line 31
    .line 32
    const/4 v5, 0x4

    .line 33
    if-gt v2, v5, :cond_1

    .line 34
    .line 35
    iput v2, v4, Leq4;->d:I

    .line 36
    .line 37
    if-ltz v0, :cond_0

    .line 38
    .line 39
    if-ltz v3, :cond_0

    .line 40
    .line 41
    if-gt v0, v5, :cond_0

    .line 42
    .line 43
    if-gt v3, v5, :cond_0

    .line 44
    .line 45
    add-int v2, v0, v3

    .line 46
    .line 47
    if-gt v2, v5, :cond_0

    .line 48
    .line 49
    iput v0, v4, Leq4;->b:I

    .line 50
    .line 51
    iput v3, v4, Leq4;->c:I

    .line 52
    .line 53
    invoke-static {p0, v1, v5}, Lwx3;->j([BII)J

    .line 54
    .line 55
    .line 56
    move-result-wide p0

    .line 57
    long-to-int p0, p0

    .line 58
    invoke-virtual {v4, p0}, Leq4;->c(I)V

    .line 59
    .line 60
    .line 61
    return-object v4

    .line 62
    :cond_0
    const-string p0, "lc + lp must not exceed 4: "

    .line 63
    .line 64
    const-string v1, " + "

    .line 65
    .line 66
    invoke-static {p0, v0, v3, v1}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Ly5;->h(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_1
    const-string p0, "pb must not exceed 4: "

    .line 75
    .line 76
    invoke-static {v2, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Ly5;->h(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_2
    const-string p0, "LZMA properties too short"

    .line 85
    .line 86
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_3
    const-string p0, "Missing LZMA properties"

    .line 91
    .line 92
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object p1
.end method
