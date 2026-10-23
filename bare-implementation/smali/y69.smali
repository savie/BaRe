.class public final Ly69;
.super Lgk1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:[B

.field public d:I

.field public e:I

.field public f:I

.field public final k:I

.field public n:I

.field public p:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Ly69;->p:I

    .line 8
    .line 9
    iput-object p1, p0, Ly69;->c:[B

    .line 10
    .line 11
    add-int/2addr p3, p2

    .line 12
    iput p3, p0, Ly69;->d:I

    .line 13
    .line 14
    iput p2, p0, Ly69;->f:I

    .line 15
    .line 16
    iput p2, p0, Ly69;->k:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final A()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly69;->f0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final H()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Ly69;->e0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final I(I)I
    .locals 1

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ly69;->J()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p1

    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    iget p1, p0, Ly69;->p:I

    .line 11
    .line 12
    if-gt v0, p1, :cond_0

    .line 13
    .line 14
    iput v0, p0, Ly69;->p:I

    .line 15
    .line 16
    invoke-virtual {p0}, Ly69;->h0()V

    .line 17
    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    invoke-static {}, Lp79;->g()Lp79;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    throw p0

    .line 25
    :cond_1
    new-instance p0, Lp79;

    .line 26
    .line 27
    const-string p1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter()."

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_2
    invoke-static {}, Lp79;->e()Lp79;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0
.end method

.method public final J()I
    .locals 1

    .line 1
    iget v0, p0, Ly69;->f:I

    .line 2
    .line 3
    iget p0, p0, Ly69;->k:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public final K(I)V
    .locals 0

    .line 1
    iget p0, p0, Ly69;->n:I

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Lp79;

    .line 7
    .line 8
    const-string p1, "Protocol message end-group tag did not match expected tag."

    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public final L()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ly69;->j0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final M(I)V
    .locals 0

    .line 1
    iput p1, p0, Ly69;->p:I

    .line 2
    .line 3
    invoke-virtual {p0}, Ly69;->h0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final N()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ly69;->e0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final O()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ly69;->j0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final P()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ly69;->e0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final Q()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly69;->k0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    ushr-int/lit8 v0, p0, 0x1

    .line 6
    .line 7
    and-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    neg-int p0, p0

    .line 10
    xor-int/2addr p0, v0

    .line 11
    return p0
.end method

.method public final R()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly69;->b0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Ly69;->n:I

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ly69;->k0()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Ly69;->n:I

    .line 16
    .line 17
    ushr-int/lit8 p0, v0, 0x3

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    invoke-static {}, Lp79;->b()Lp79;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    throw p0
.end method

.method public final S()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ly69;->k0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final T()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly69;->f0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final U()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly69;->g0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final V()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly69;->f0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final W()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly69;->g0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lgk1;->C(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final X()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly69;->g0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final Y()Lx69;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ly69;->k0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ly69;->c:[B

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget v2, p0, Ly69;->d:I

    .line 10
    .line 11
    iget v3, p0, Ly69;->f:I

    .line 12
    .line 13
    sub-int/2addr v2, v3

    .line 14
    if-gt v0, v2, :cond_0

    .line 15
    .line 16
    invoke-static {v1, v3, v0}, Lt69;->o([BII)Lx69;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget v2, p0, Ly69;->f:I

    .line 21
    .line 22
    add-int/2addr v2, v0

    .line 23
    iput v2, p0, Ly69;->f:I

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    if-nez v0, :cond_1

    .line 27
    .line 28
    sget-object p0, Lt69;->b:Lx69;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    if-lez v0, :cond_2

    .line 32
    .line 33
    iget v2, p0, Ly69;->d:I

    .line 34
    .line 35
    iget v3, p0, Ly69;->f:I

    .line 36
    .line 37
    sub-int/2addr v2, v3

    .line 38
    if-gt v0, v2, :cond_2

    .line 39
    .line 40
    add-int/2addr v0, v3

    .line 41
    iput v0, p0, Ly69;->f:I

    .line 42
    .line 43
    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    if-gtz v0, :cond_5

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    sget-object p0, Ll79;->a:[B

    .line 53
    .line 54
    :goto_0
    sget-object v0, Lt69;->b:Lx69;

    .line 55
    .line 56
    array-length v0, p0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    sget-object p0, Lt69;->b:Lx69;

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_3
    new-instance v0, Lx69;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lx69;-><init>([B)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_4
    invoke-static {}, Lp79;->e()Lp79;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    throw p0

    .line 73
    :cond_5
    invoke-static {}, Lp79;->g()Lp79;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    throw p0
.end method

.method public final Z()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ly69;->k0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Ly69;->d:I

    .line 8
    .line 9
    iget v2, p0, Ly69;->f:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p0, Ly69;->c:[B

    .line 17
    .line 18
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 21
    .line 22
    .line 23
    iget v2, p0, Ly69;->f:I

    .line 24
    .line 25
    add-int/2addr v2, v0

    .line 26
    iput v2, p0, Ly69;->f:I

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-string p0, ""

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    if-gez v0, :cond_2

    .line 35
    .line 36
    invoke-static {}, Lp79;->e()Lp79;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    throw p0

    .line 41
    :cond_2
    invoke-static {}, Lp79;->g()Lp79;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    throw p0
.end method

.method public final a0()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ly69;->k0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Ly69;->d:I

    .line 8
    .line 9
    iget v2, p0, Ly69;->f:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Ly69;->c:[B

    .line 15
    .line 16
    invoke-static {v1, v2, v0}, Ltu0;->G([BII)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget v2, p0, Ly69;->f:I

    .line 21
    .line 22
    add-int/2addr v2, v0

    .line 23
    iput v2, p0, Ly69;->f:I

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string p0, ""

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    if-gtz v0, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lp79;->e()Lp79;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0

    .line 38
    :cond_2
    invoke-static {}, Lp79;->g()Lp79;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    throw p0
.end method

.method public final b0()Z
    .locals 1

    .line 1
    iget v0, p0, Ly69;->f:I

    .line 2
    .line 3
    iget p0, p0, Ly69;->d:I

    .line 4
    .line 5
    if-ne v0, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final c0()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ly69;->g0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p0, v0, v2

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final d0()I
    .locals 7

    .line 1
    iget v0, p0, Ly69;->f:I

    .line 2
    .line 3
    iget v1, p0, Ly69;->d:I

    .line 4
    .line 5
    if-eq v1, v0, :cond_6

    .line 6
    .line 7
    add-int/lit8 v2, v0, 0x1

    .line 8
    .line 9
    iget-object v3, p0, Ly69;->c:[B

    .line 10
    .line 11
    aget-byte v4, v3, v0

    .line 12
    .line 13
    if-ltz v4, :cond_0

    .line 14
    .line 15
    iput v2, p0, Ly69;->f:I

    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    sub-int/2addr v1, v2

    .line 19
    const/16 v5, 0x9

    .line 20
    .line 21
    if-lt v1, v5, :cond_6

    .line 22
    .line 23
    add-int/lit8 v1, v0, 0x2

    .line 24
    .line 25
    aget-byte v2, v3, v2

    .line 26
    .line 27
    shl-int/lit8 v2, v2, 0x7

    .line 28
    .line 29
    xor-int/2addr v2, v4

    .line 30
    if-gez v2, :cond_1

    .line 31
    .line 32
    xor-int/lit8 v0, v2, -0x80

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    add-int/lit8 v4, v0, 0x3

    .line 36
    .line 37
    aget-byte v1, v3, v1

    .line 38
    .line 39
    shl-int/lit8 v1, v1, 0xe

    .line 40
    .line 41
    xor-int/2addr v1, v2

    .line 42
    if-ltz v1, :cond_2

    .line 43
    .line 44
    xor-int/lit16 v0, v1, 0x3f80

    .line 45
    .line 46
    :goto_0
    move v1, v4

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    add-int/lit8 v2, v0, 0x4

    .line 49
    .line 50
    aget-byte v4, v3, v4

    .line 51
    .line 52
    shl-int/lit8 v4, v4, 0x15

    .line 53
    .line 54
    xor-int/2addr v1, v4

    .line 55
    if-gez v1, :cond_3

    .line 56
    .line 57
    const v0, -0x1fc080

    .line 58
    .line 59
    .line 60
    xor-int/2addr v0, v1

    .line 61
    :goto_1
    move v1, v2

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    add-int/lit8 v4, v0, 0x5

    .line 64
    .line 65
    aget-byte v2, v3, v2

    .line 66
    .line 67
    shl-int/lit8 v5, v2, 0x1c

    .line 68
    .line 69
    xor-int/2addr v1, v5

    .line 70
    const v5, 0xfe03f80

    .line 71
    .line 72
    .line 73
    xor-int/2addr v1, v5

    .line 74
    if-gez v2, :cond_4

    .line 75
    .line 76
    add-int/lit8 v2, v0, 0x6

    .line 77
    .line 78
    aget-byte v4, v3, v4

    .line 79
    .line 80
    if-gez v4, :cond_5

    .line 81
    .line 82
    add-int/lit8 v4, v0, 0x7

    .line 83
    .line 84
    aget-byte v2, v3, v2

    .line 85
    .line 86
    if-gez v2, :cond_4

    .line 87
    .line 88
    add-int/lit8 v2, v0, 0x8

    .line 89
    .line 90
    aget-byte v4, v3, v4

    .line 91
    .line 92
    if-gez v4, :cond_5

    .line 93
    .line 94
    add-int/lit8 v4, v0, 0x9

    .line 95
    .line 96
    aget-byte v2, v3, v2

    .line 97
    .line 98
    if-gez v2, :cond_4

    .line 99
    .line 100
    add-int/lit8 v0, v0, 0xa

    .line 101
    .line 102
    aget-byte v2, v3, v4

    .line 103
    .line 104
    if-ltz v2, :cond_6

    .line 105
    .line 106
    move v6, v1

    .line 107
    move v1, v0

    .line 108
    move v0, v6

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    move v0, v1

    .line 111
    goto :goto_0

    .line 112
    :cond_5
    move v0, v1

    .line 113
    goto :goto_1

    .line 114
    :goto_2
    iput v1, p0, Ly69;->f:I

    .line 115
    .line 116
    return v0

    .line 117
    :cond_6
    invoke-virtual {p0}, Ly69;->i0()J

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    long-to-int p0, v0

    .line 122
    return p0
.end method

.method public final e0()I
    .locals 3

    .line 1
    iget v0, p0, Ly69;->f:I

    .line 2
    .line 3
    iget v1, p0, Ly69;->d:I

    .line 4
    .line 5
    sub-int/2addr v1, v0

    .line 6
    const/4 v2, 0x4

    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0x4

    .line 10
    .line 11
    iput v1, p0, Ly69;->f:I

    .line 12
    .line 13
    iget-object p0, p0, Ly69;->c:[B

    .line 14
    .line 15
    aget-byte v1, p0, v0

    .line 16
    .line 17
    and-int/lit16 v1, v1, 0xff

    .line 18
    .line 19
    add-int/lit8 v2, v0, 0x1

    .line 20
    .line 21
    aget-byte v2, p0, v2

    .line 22
    .line 23
    and-int/lit16 v2, v2, 0xff

    .line 24
    .line 25
    shl-int/lit8 v2, v2, 0x8

    .line 26
    .line 27
    or-int/2addr v1, v2

    .line 28
    add-int/lit8 v2, v0, 0x2

    .line 29
    .line 30
    aget-byte v2, p0, v2

    .line 31
    .line 32
    and-int/lit16 v2, v2, 0xff

    .line 33
    .line 34
    shl-int/lit8 v2, v2, 0x10

    .line 35
    .line 36
    or-int/2addr v1, v2

    .line 37
    add-int/lit8 v0, v0, 0x3

    .line 38
    .line 39
    aget-byte p0, p0, v0

    .line 40
    .line 41
    and-int/lit16 p0, p0, 0xff

    .line 42
    .line 43
    shl-int/lit8 p0, p0, 0x18

    .line 44
    .line 45
    or-int/2addr p0, v1

    .line 46
    return p0

    .line 47
    :cond_0
    invoke-static {}, Lp79;->g()Lp79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0
.end method

.method public final f0()J
    .locals 9

    .line 1
    iget v0, p0, Ly69;->f:I

    .line 2
    .line 3
    iget v1, p0, Ly69;->d:I

    .line 4
    .line 5
    sub-int/2addr v1, v0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-lt v1, v2, :cond_0

    .line 9
    .line 10
    add-int/lit8 v1, v0, 0x8

    .line 11
    .line 12
    iput v1, p0, Ly69;->f:I

    .line 13
    .line 14
    iget-object p0, p0, Ly69;->c:[B

    .line 15
    .line 16
    aget-byte v1, p0, v0

    .line 17
    .line 18
    int-to-long v3, v1

    .line 19
    const-wide/16 v5, 0xff

    .line 20
    .line 21
    and-long/2addr v3, v5

    .line 22
    add-int/lit8 v1, v0, 0x1

    .line 23
    .line 24
    aget-byte v1, p0, v1

    .line 25
    .line 26
    int-to-long v7, v1

    .line 27
    and-long/2addr v7, v5

    .line 28
    shl-long v1, v7, v2

    .line 29
    .line 30
    or-long/2addr v1, v3

    .line 31
    add-int/lit8 v3, v0, 0x2

    .line 32
    .line 33
    aget-byte v3, p0, v3

    .line 34
    .line 35
    int-to-long v3, v3

    .line 36
    and-long/2addr v3, v5

    .line 37
    const/16 v7, 0x10

    .line 38
    .line 39
    shl-long/2addr v3, v7

    .line 40
    or-long/2addr v1, v3

    .line 41
    add-int/lit8 v3, v0, 0x3

    .line 42
    .line 43
    aget-byte v3, p0, v3

    .line 44
    .line 45
    int-to-long v3, v3

    .line 46
    and-long/2addr v3, v5

    .line 47
    const/16 v7, 0x18

    .line 48
    .line 49
    shl-long/2addr v3, v7

    .line 50
    or-long/2addr v1, v3

    .line 51
    add-int/lit8 v3, v0, 0x4

    .line 52
    .line 53
    aget-byte v3, p0, v3

    .line 54
    .line 55
    int-to-long v3, v3

    .line 56
    and-long/2addr v3, v5

    .line 57
    const/16 v7, 0x20

    .line 58
    .line 59
    shl-long/2addr v3, v7

    .line 60
    or-long/2addr v1, v3

    .line 61
    add-int/lit8 v3, v0, 0x5

    .line 62
    .line 63
    aget-byte v3, p0, v3

    .line 64
    .line 65
    int-to-long v3, v3

    .line 66
    and-long/2addr v3, v5

    .line 67
    const/16 v7, 0x28

    .line 68
    .line 69
    shl-long/2addr v3, v7

    .line 70
    or-long/2addr v1, v3

    .line 71
    add-int/lit8 v3, v0, 0x6

    .line 72
    .line 73
    aget-byte v3, p0, v3

    .line 74
    .line 75
    int-to-long v3, v3

    .line 76
    and-long/2addr v3, v5

    .line 77
    const/16 v7, 0x30

    .line 78
    .line 79
    shl-long/2addr v3, v7

    .line 80
    or-long/2addr v1, v3

    .line 81
    add-int/lit8 v0, v0, 0x7

    .line 82
    .line 83
    aget-byte p0, p0, v0

    .line 84
    .line 85
    int-to-long v3, p0

    .line 86
    and-long/2addr v3, v5

    .line 87
    const/16 p0, 0x38

    .line 88
    .line 89
    shl-long/2addr v3, p0

    .line 90
    or-long v0, v1, v3

    .line 91
    .line 92
    return-wide v0

    .line 93
    :cond_0
    invoke-static {}, Lp79;->g()Lp79;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    throw p0
.end method

.method public final g0()J
    .locals 12

    .line 1
    iget v0, p0, Ly69;->f:I

    .line 2
    .line 3
    iget v1, p0, Ly69;->d:I

    .line 4
    .line 5
    if-eq v1, v0, :cond_9

    .line 6
    .line 7
    add-int/lit8 v2, v0, 0x1

    .line 8
    .line 9
    iget-object v3, p0, Ly69;->c:[B

    .line 10
    .line 11
    aget-byte v4, v3, v0

    .line 12
    .line 13
    if-ltz v4, :cond_0

    .line 14
    .line 15
    iput v2, p0, Ly69;->f:I

    .line 16
    .line 17
    int-to-long v0, v4

    .line 18
    return-wide v0

    .line 19
    :cond_0
    sub-int/2addr v1, v2

    .line 20
    const/16 v5, 0x9

    .line 21
    .line 22
    if-lt v1, v5, :cond_9

    .line 23
    .line 24
    add-int/lit8 v1, v0, 0x2

    .line 25
    .line 26
    aget-byte v2, v3, v2

    .line 27
    .line 28
    shl-int/lit8 v2, v2, 0x7

    .line 29
    .line 30
    xor-int/2addr v2, v4

    .line 31
    if-gez v2, :cond_1

    .line 32
    .line 33
    xor-int/lit8 v0, v2, -0x80

    .line 34
    .line 35
    int-to-long v2, v0

    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v4, v0, 0x3

    .line 39
    .line 40
    aget-byte v1, v3, v1

    .line 41
    .line 42
    shl-int/lit8 v1, v1, 0xe

    .line 43
    .line 44
    xor-int/2addr v1, v2

    .line 45
    if-ltz v1, :cond_2

    .line 46
    .line 47
    xor-int/lit16 v0, v1, 0x3f80

    .line 48
    .line 49
    int-to-long v2, v0

    .line 50
    move v1, v4

    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_2
    add-int/lit8 v2, v0, 0x4

    .line 54
    .line 55
    aget-byte v4, v3, v4

    .line 56
    .line 57
    shl-int/lit8 v4, v4, 0x15

    .line 58
    .line 59
    xor-int/2addr v1, v4

    .line 60
    if-gez v1, :cond_3

    .line 61
    .line 62
    const v0, -0x1fc080

    .line 63
    .line 64
    .line 65
    xor-int/2addr v0, v1

    .line 66
    int-to-long v0, v0

    .line 67
    :goto_0
    move-wide v10, v0

    .line 68
    move v1, v2

    .line 69
    move-wide v2, v10

    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :cond_3
    int-to-long v4, v1

    .line 73
    add-int/lit8 v1, v0, 0x5

    .line 74
    .line 75
    aget-byte v2, v3, v2

    .line 76
    .line 77
    int-to-long v6, v2

    .line 78
    const/16 v2, 0x1c

    .line 79
    .line 80
    shl-long/2addr v6, v2

    .line 81
    xor-long/2addr v4, v6

    .line 82
    const-wide/16 v6, 0x0

    .line 83
    .line 84
    cmp-long v2, v4, v6

    .line 85
    .line 86
    if-ltz v2, :cond_4

    .line 87
    .line 88
    const-wide/32 v2, 0xfe03f80

    .line 89
    .line 90
    .line 91
    :goto_1
    xor-long/2addr v2, v4

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    add-int/lit8 v2, v0, 0x6

    .line 94
    .line 95
    aget-byte v1, v3, v1

    .line 96
    .line 97
    int-to-long v8, v1

    .line 98
    const/16 v1, 0x23

    .line 99
    .line 100
    shl-long/2addr v8, v1

    .line 101
    xor-long/2addr v4, v8

    .line 102
    cmp-long v1, v4, v6

    .line 103
    .line 104
    if-gez v1, :cond_5

    .line 105
    .line 106
    const-wide v0, -0x7f01fc080L

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :goto_2
    xor-long/2addr v0, v4

    .line 112
    goto :goto_0

    .line 113
    :cond_5
    add-int/lit8 v1, v0, 0x7

    .line 114
    .line 115
    aget-byte v2, v3, v2

    .line 116
    .line 117
    int-to-long v8, v2

    .line 118
    const/16 v2, 0x2a

    .line 119
    .line 120
    shl-long/2addr v8, v2

    .line 121
    xor-long/2addr v4, v8

    .line 122
    cmp-long v2, v4, v6

    .line 123
    .line 124
    if-ltz v2, :cond_6

    .line 125
    .line 126
    const-wide v2, 0x3f80fe03f80L

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    add-int/lit8 v2, v0, 0x8

    .line 133
    .line 134
    aget-byte v1, v3, v1

    .line 135
    .line 136
    int-to-long v8, v1

    .line 137
    const/16 v1, 0x31

    .line 138
    .line 139
    shl-long/2addr v8, v1

    .line 140
    xor-long/2addr v4, v8

    .line 141
    cmp-long v1, v4, v6

    .line 142
    .line 143
    if-gez v1, :cond_7

    .line 144
    .line 145
    const-wide v0, -0x1fc07f01fc080L

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    add-int/lit8 v1, v0, 0x9

    .line 152
    .line 153
    aget-byte v2, v3, v2

    .line 154
    .line 155
    int-to-long v8, v2

    .line 156
    const/16 v2, 0x38

    .line 157
    .line 158
    shl-long/2addr v8, v2

    .line 159
    xor-long/2addr v4, v8

    .line 160
    cmp-long v2, v4, v6

    .line 161
    .line 162
    if-ltz v2, :cond_8

    .line 163
    .line 164
    const-wide v2, 0xfe03f80fe03f80L

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_8
    add-int/lit8 v0, v0, 0xa

    .line 171
    .line 172
    aget-byte v1, v3, v1

    .line 173
    .line 174
    int-to-long v1, v1

    .line 175
    const/16 v3, 0x3f

    .line 176
    .line 177
    shl-long/2addr v1, v3

    .line 178
    xor-long/2addr v1, v4

    .line 179
    cmp-long v3, v1, v6

    .line 180
    .line 181
    if-ltz v3, :cond_9

    .line 182
    .line 183
    const-wide v3, -0x7f01fc07f01fc080L    # -6.838959413692434E-304

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    xor-long v2, v1, v3

    .line 189
    .line 190
    move v1, v0

    .line 191
    :goto_3
    iput v1, p0, Ly69;->f:I

    .line 192
    .line 193
    return-wide v2

    .line 194
    :cond_9
    invoke-virtual {p0}, Ly69;->i0()J

    .line 195
    .line 196
    .line 197
    move-result-wide v0

    .line 198
    return-wide v0
.end method

.method public final h0()V
    .locals 3

    .line 1
    iget v0, p0, Ly69;->d:I

    .line 2
    .line 3
    iget v1, p0, Ly69;->e:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Ly69;->d:I

    .line 7
    .line 8
    iget v1, p0, Ly69;->k:I

    .line 9
    .line 10
    sub-int v1, v0, v1

    .line 11
    .line 12
    iget v2, p0, Ly69;->p:I

    .line 13
    .line 14
    if-le v1, v2, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, p0, Ly69;->e:I

    .line 18
    .line 19
    sub-int/2addr v0, v1

    .line 20
    iput v0, p0, Ly69;->d:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Ly69;->e:I

    .line 25
    .line 26
    return-void
.end method

.method public final i0()J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0x40

    .line 5
    .line 6
    if-ge v2, v3, :cond_2

    .line 7
    .line 8
    iget v3, p0, Ly69;->f:I

    .line 9
    .line 10
    iget v4, p0, Ly69;->d:I

    .line 11
    .line 12
    if-eq v3, v4, :cond_1

    .line 13
    .line 14
    add-int/lit8 v4, v3, 0x1

    .line 15
    .line 16
    iput v4, p0, Ly69;->f:I

    .line 17
    .line 18
    iget-object v4, p0, Ly69;->c:[B

    .line 19
    .line 20
    aget-byte v3, v4, v3

    .line 21
    .line 22
    and-int/lit8 v4, v3, 0x7f

    .line 23
    .line 24
    int-to-long v4, v4

    .line 25
    shl-long/2addr v4, v2

    .line 26
    or-long/2addr v0, v4

    .line 27
    and-int/lit16 v3, v3, 0x80

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    return-wide v0

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lp79;->g()Lp79;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    throw p0

    .line 40
    :cond_2
    invoke-static {}, Lp79;->d()Lp79;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    throw p0
.end method

.method public final j0()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ly69;->d0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final k0()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ly69;->d0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
