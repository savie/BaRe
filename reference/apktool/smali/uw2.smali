.class public final Luw2;
.super Lvw2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Low0;)J
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 p0, 0x8

    .line 5
    .line 6
    new-array v0, p0, [B

    .line 7
    .line 8
    invoke-virtual {p1, v0, p0}, Low0;->o([BI)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    const/4 p1, 0x7

    .line 14
    :goto_0
    if-ltz p1, :cond_0

    .line 15
    .line 16
    shl-long/2addr v1, p0

    .line 17
    aget-byte v3, v0, p1

    .line 18
    .line 19
    and-int/lit16 v3, v3, 0xff

    .line 20
    .line 21
    int-to-long v3, v3

    .line 22
    or-long/2addr v1, v3

    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-wide v1
.end method

.method public final c(Lzu6;)Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lh51;->c:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-static {p1, p0}, Lvw2;->b(Low0;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final d(Low0;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x2

    .line 5
    new-array v0, p0, [B

    .line 6
    .line 7
    invoke-virtual {p1, v0, p0}, Low0;->o([BI)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    aget-byte p0, v0, p0

    .line 12
    .line 13
    and-int/lit16 p0, p0, 0xff

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    aget-byte p1, v0, p1

    .line 17
    .line 18
    shl-int/lit8 p1, p1, 0x8

    .line 19
    .line 20
    const v0, 0xff00

    .line 21
    .line 22
    .line 23
    and-int/2addr p1, v0

    .line 24
    or-int/2addr p0, p1

    .line 25
    return p0
.end method

.method public final e(Low0;)J
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x4

    .line 5
    new-array v0, p0, [B

    .line 6
    .line 7
    invoke-virtual {p1, v0, p0}, Low0;->o([BI)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    aget-byte p0, v0, p0

    .line 12
    .line 13
    int-to-long p0, p0

    .line 14
    const-wide/16 v1, 0xff

    .line 15
    .line 16
    and-long/2addr p0, v1

    .line 17
    const/4 v1, 0x1

    .line 18
    aget-byte v1, v0, v1

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x8

    .line 21
    .line 22
    int-to-long v1, v1

    .line 23
    const-wide/32 v3, 0xff00

    .line 24
    .line 25
    .line 26
    and-long/2addr v1, v3

    .line 27
    or-long/2addr p0, v1

    .line 28
    const/4 v1, 0x2

    .line 29
    aget-byte v1, v0, v1

    .line 30
    .line 31
    shl-int/lit8 v1, v1, 0x10

    .line 32
    .line 33
    int-to-long v1, v1

    .line 34
    const-wide/32 v3, 0xff0000

    .line 35
    .line 36
    .line 37
    and-long/2addr v1, v3

    .line 38
    or-long/2addr p0, v1

    .line 39
    const/4 v1, 0x3

    .line 40
    aget-byte v0, v0, v1

    .line 41
    .line 42
    shl-int/lit8 v0, v0, 0x18

    .line 43
    .line 44
    int-to-long v0, v0

    .line 45
    const-wide v2, 0xff000000L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    and-long/2addr v0, v2

    .line 51
    or-long/2addr p0, v0

    .line 52
    return-wide p0
.end method

.method public final f(Low0;)J
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Luw2;->e(Low0;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long/2addr v0, v2

    .line 11
    invoke-virtual {p0, p1}, Luw2;->e(Low0;)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    const/16 v2, 0x20

    .line 16
    .line 17
    shl-long/2addr p0, v2

    .line 18
    add-long/2addr v0, p0

    .line 19
    const-wide/16 p0, 0x0

    .line 20
    .line 21
    cmp-long p0, v0, p0

    .line 22
    .line 23
    if-ltz p0, :cond_0

    .line 24
    .line 25
    return-wide v0

    .line 26
    :cond_0
    new-instance p0, Liw0;

    .line 27
    .line 28
    const-string p1, "Cannot handle values > 9223372036854775807"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final g(Low0;I)Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lh51;->c:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-static {p1, p2, p0}, Lvw2;->h(Low0;ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final i(Low0;J)V
    .locals 8

    .line 1
    long-to-int p0, p2

    .line 2
    int-to-byte p0, p0

    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    shr-long v1, p2, v0

    .line 6
    .line 7
    long-to-int v1, v1

    .line 8
    int-to-byte v1, v1

    .line 9
    const/16 v2, 0x10

    .line 10
    .line 11
    shr-long v2, p2, v2

    .line 12
    .line 13
    long-to-int v2, v2

    .line 14
    int-to-byte v2, v2

    .line 15
    const/16 v3, 0x18

    .line 16
    .line 17
    shr-long v3, p2, v3

    .line 18
    .line 19
    long-to-int v3, v3

    .line 20
    int-to-byte v3, v3

    .line 21
    const/16 v4, 0x20

    .line 22
    .line 23
    shr-long v4, p2, v4

    .line 24
    .line 25
    long-to-int v4, v4

    .line 26
    int-to-byte v4, v4

    .line 27
    const/16 v5, 0x28

    .line 28
    .line 29
    shr-long v5, p2, v5

    .line 30
    .line 31
    long-to-int v5, v5

    .line 32
    int-to-byte v5, v5

    .line 33
    const/16 v6, 0x30

    .line 34
    .line 35
    shr-long v6, p2, v6

    .line 36
    .line 37
    long-to-int v6, v6

    .line 38
    int-to-byte v6, v6

    .line 39
    const/16 v7, 0x38

    .line 40
    .line 41
    shr-long/2addr p2, v7

    .line 42
    long-to-int p2, p2

    .line 43
    int-to-byte p2, p2

    .line 44
    new-array p3, v0, [B

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    aput-byte p0, p3, v7

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    aput-byte v1, p3, p0

    .line 51
    .line 52
    const/4 p0, 0x2

    .line 53
    aput-byte v2, p3, p0

    .line 54
    .line 55
    const/4 p0, 0x3

    .line 56
    aput-byte v3, p3, p0

    .line 57
    .line 58
    const/4 p0, 0x4

    .line 59
    aput-byte v4, p3, p0

    .line 60
    .line 61
    const/4 p0, 0x5

    .line 62
    aput-byte v5, p3, p0

    .line 63
    .line 64
    const/4 p0, 0x6

    .line 65
    aput-byte v6, p3, p0

    .line 66
    .line 67
    const/4 p0, 0x7

    .line 68
    aput-byte p2, p3, p0

    .line 69
    .line 70
    invoke-virtual {p1, p3, v0}, Low0;->i([BI)Low0;

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final j(Low0;I)V
    .locals 3

    .line 1
    if-ltz p2, :cond_0

    .line 2
    .line 3
    const p0, 0xffff

    .line 4
    .line 5
    .line 6
    if-gt p2, p0, :cond_0

    .line 7
    .line 8
    int-to-byte p0, p2

    .line 9
    shr-int/lit8 p2, p2, 0x8

    .line 10
    .line 11
    int-to-byte p2, p2

    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v1, v0, [B

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-byte p0, v1, v2

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    aput-byte p2, v1, p0

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Low0;->i([BI)Low0;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string p0, "Invalid uint16 value: "

    .line 26
    .line 27
    invoke-static {p2, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final k(Low0;J)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p0, p2, v0

    .line 4
    .line 5
    if-ltz p0, :cond_0

    .line 6
    .line 7
    const-wide v0, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long p0, p2, v0

    .line 13
    .line 14
    if-gtz p0, :cond_0

    .line 15
    .line 16
    long-to-int p0, p2

    .line 17
    int-to-byte p0, p0

    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    shr-long v0, p2, v0

    .line 21
    .line 22
    long-to-int v0, v0

    .line 23
    int-to-byte v0, v0

    .line 24
    const/16 v1, 0x10

    .line 25
    .line 26
    shr-long v1, p2, v1

    .line 27
    .line 28
    long-to-int v1, v1

    .line 29
    int-to-byte v1, v1

    .line 30
    const/16 v2, 0x18

    .line 31
    .line 32
    shr-long/2addr p2, v2

    .line 33
    long-to-int p2, p2

    .line 34
    int-to-byte p2, p2

    .line 35
    const/4 p3, 0x4

    .line 36
    new-array v2, p3, [B

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    aput-byte p0, v2, v3

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    aput-byte v0, v2, p0

    .line 43
    .line 44
    const/4 p0, 0x2

    .line 45
    aput-byte v1, v2, p0

    .line 46
    .line 47
    const/4 p0, 0x3

    .line 48
    aput-byte p2, v2, p0

    .line 49
    .line 50
    invoke-virtual {p1, v2, p3}, Low0;->i([BI)Low0;

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    const-string p0, "Invalid uint32 value: "

    .line 55
    .line 56
    invoke-static {p2, p3, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final l(Low0;J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Luw2;->i(Low0;J)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "Invalid uint64 value: "

    .line 12
    .line 13
    invoke-static {p2, p3, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final m(Low0;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p0, Lh51;->c:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    array-length p2, p0

    .line 11
    invoke-virtual {p1, p0, p2}, Low0;->i([BI)Low0;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "little endian"

    .line 2
    .line 3
    return-object p0
.end method
