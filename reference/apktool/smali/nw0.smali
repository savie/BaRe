.class public final Lnw0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lzw0;
.implements Lyw0;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public a:Lm67;

.field public b:J


# virtual methods
.method public final A(I)Lm67;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_3

    .line 3
    .line 4
    const/16 v0, 0x2000

    .line 5
    .line 6
    if-gt p1, v0, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Lnw0;->a:Lm67;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lo67;->b()Lm67;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lnw0;->a:Lm67;

    .line 17
    .line 18
    iput-object p1, p1, Lm67;->g:Lm67;

    .line 19
    .line 20
    iput-object p1, p1, Lm67;->f:Lm67;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    iget-object p0, v1, Lm67;->g:Lm67;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lm67;->c:I

    .line 29
    .line 30
    add-int/2addr v1, p1

    .line 31
    if-gt v1, v0, :cond_2

    .line 32
    .line 33
    iget-boolean p1, p0, Lm67;->e:Z

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-object p0

    .line 39
    :cond_2
    :goto_0
    invoke-static {}, Lo67;->b()Lm67;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lm67;->b(Lm67;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_3
    const-string p0, "unexpected capacity"

    .line 48
    .line 49
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public final B(Lij7;)J
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    :goto_0
    const-wide/16 v2, 0x2000

    .line 7
    .line 8
    invoke-interface {p1, p0, v2, v3}, Lij7;->H(Lnw0;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const-wide/16 v4, -0x1

    .line 13
    .line 14
    cmp-long v4, v2, v4

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    add-long/2addr v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-wide v0
.end method

.method public final D(Lhy0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lhy0;->d()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1, p0, v0}, Lhy0;->x(Lnw0;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final E(J)Ljava/lang/String;
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_3

    .line 6
    .line 7
    const-wide v0, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v2, p1, v0

    .line 13
    .line 14
    const-wide/16 v7, 0x1

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    :goto_0
    move-wide v4, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-long v0, p1, v7

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :goto_1
    const/16 v1, 0xa

    .line 24
    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    move-object v0, p0

    .line 28
    invoke-virtual/range {v0 .. v5}, Lnw0;->j(BJJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    const-wide/16 v9, -0x1

    .line 33
    .line 34
    cmp-long v3, v1, v9

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-static {p0, v1, v2}, Lb;->c(Lnw0;J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :cond_1
    iget-wide v1, p0, Lnw0;->b:J

    .line 44
    .line 45
    cmp-long v1, v4, v1

    .line 46
    .line 47
    if-gez v1, :cond_2

    .line 48
    .line 49
    sub-long v1, v4, v7

    .line 50
    .line 51
    invoke-virtual {p0, v1, v2}, Lnw0;->h(J)B

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/16 v2, 0xd

    .line 56
    .line 57
    if-ne v1, v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, v4, v5}, Lnw0;->h(J)B

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/16 v2, 0xa

    .line 64
    .line 65
    if-ne v1, v2, :cond_2

    .line 66
    .line 67
    invoke-static {p0, v4, v5}, Lb;->c(Lnw0;J)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0

    .line 72
    :cond_2
    new-instance v1, Lnw0;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-wide v2, p0, Lnw0;->b:J

    .line 78
    .line 79
    const-wide/16 v4, 0x20

    .line 80
    .line 81
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    const-wide/16 v2, 0x0

    .line 86
    .line 87
    move-object v0, p0

    .line 88
    invoke-virtual/range {v0 .. v5}, Lnw0;->b(Lnw0;JJ)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Ljava/io/EOFException;

    .line 92
    .line 93
    iget-wide v3, p0, Lnw0;->b:J

    .line 94
    .line 95
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    iget-wide v5, v1, Lnw0;->b:J

    .line 100
    .line 101
    invoke-virtual {v1, v5, v6}, Lnw0;->o(J)Lhy0;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lhy0;->e()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v5, "\\n not found: limit="

    .line 112
    .line 113
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v3, " content="

    .line 120
    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const/16 v0, 0x2026

    .line 128
    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-direct {v2, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v2

    .line 140
    :cond_3
    const-string v0, "limit < 0: "

    .line 141
    .line 142
    invoke-static {p1, p2, v0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    const/4 v0, 0x0

    .line 150
    return-object v0
.end method

.method public final G(Lij7;J)V
    .locals 4

    .line 1
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p1, p0, p2, p3}, Lij7;->H(Lnw0;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, -0x1

    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    sub-long/2addr p2, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Ld6;->d()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final H(Lnw0;J)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p2, v0

    .line 7
    .line 8
    if-ltz v2, :cond_2

    .line 9
    .line 10
    iget-wide v2, p0, Lnw0;->b:J

    .line 11
    .line 12
    cmp-long v0, v2, v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-wide/16 p0, -0x1

    .line 17
    .line 18
    return-wide p0

    .line 19
    :cond_0
    cmp-long v0, p2, v2

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    move-wide p2, v2

    .line 24
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Lnw0;->f0(Lnw0;J)V

    .line 25
    .line 26
    .line 27
    return-wide p2

    .line 28
    :cond_2
    const-string p0, "byteCount < 0: "

    .line 29
    .line 30
    invoke-static {p2, p3, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-wide v0
.end method

.method public final J(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lnw0;->A(I)Lm67;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, v0, Lm67;->a:[B

    .line 7
    .line 8
    iget v2, v0, Lm67;->c:I

    .line 9
    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 11
    .line 12
    iput v3, v0, Lm67;->c:I

    .line 13
    .line 14
    int-to-byte p1, p1

    .line 15
    aput-byte p1, v1, v2

    .line 16
    .line 17
    iget-wide v0, p0, Lnw0;->b:J

    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    add-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Lnw0;->b:J

    .line 23
    .line 24
    return-void
.end method

.method public final bridge synthetic K(Ljava/lang/String;)Lyw0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnw0;->Z(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final M(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lnw0;->b:J

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, p1}, Lnw0;->u(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final O(J)V
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lnw0;->J(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-gez v2, :cond_2

    .line 16
    .line 17
    neg-long p1, p1

    .line 18
    cmp-long v2, p1, v0

    .line 19
    .line 20
    if-gez v2, :cond_1

    .line 21
    .line 22
    const-string p1, "-9223372036854775808"

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lnw0;->Z(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    move v2, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v2, v3

    .line 31
    :goto_0
    sget-object v5, Lb;->a:[B

    .line 32
    .line 33
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    rsub-int/lit8 v5, v5, 0x40

    .line 38
    .line 39
    mul-int/lit8 v5, v5, 0xa

    .line 40
    .line 41
    ushr-int/lit8 v5, v5, 0x5

    .line 42
    .line 43
    sget-object v6, Lb;->b:[J

    .line 44
    .line 45
    aget-wide v7, v6, v5

    .line 46
    .line 47
    cmp-long v6, p1, v7

    .line 48
    .line 49
    if-lez v6, :cond_3

    .line 50
    .line 51
    move v3, v4

    .line 52
    :cond_3
    add-int/2addr v5, v3

    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    add-int/lit8 v5, v5, 0x1

    .line 56
    .line 57
    :cond_4
    invoke-virtual {p0, v5}, Lnw0;->A(I)Lm67;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget-object v4, v3, Lm67;->a:[B

    .line 62
    .line 63
    iget v6, v3, Lm67;->c:I

    .line 64
    .line 65
    add-int/2addr v6, v5

    .line 66
    :goto_1
    cmp-long v7, p1, v0

    .line 67
    .line 68
    if-eqz v7, :cond_5

    .line 69
    .line 70
    const-wide/16 v7, 0xa

    .line 71
    .line 72
    rem-long v9, p1, v7

    .line 73
    .line 74
    long-to-int v9, v9

    .line 75
    add-int/lit8 v6, v6, -0x1

    .line 76
    .line 77
    sget-object v10, Lb;->a:[B

    .line 78
    .line 79
    aget-byte v9, v10, v9

    .line 80
    .line 81
    aput-byte v9, v4, v6

    .line 82
    .line 83
    div-long/2addr p1, v7

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    if-eqz v2, :cond_6

    .line 86
    .line 87
    add-int/lit8 v6, v6, -0x1

    .line 88
    .line 89
    const/16 p1, 0x2d

    .line 90
    .line 91
    aput-byte p1, v4, v6

    .line 92
    .line 93
    :cond_6
    iget p1, v3, Lm67;->c:I

    .line 94
    .line 95
    add-int/2addr p1, v5

    .line 96
    iput p1, v3, Lm67;->c:I

    .line 97
    .line 98
    iget-wide p1, p0, Lnw0;->b:J

    .line 99
    .line 100
    int-to-long v0, v5

    .line 101
    add-long/2addr p1, v0

    .line 102
    iput-wide p1, p0, Lnw0;->b:J

    .line 103
    .line 104
    return-void
.end method

.method public final bridge synthetic P(Lhy0;)Lyw0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnw0;->D(Lhy0;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final bridge synthetic Q(J)Lyw0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnw0;->S(J)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final S(J)V
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lnw0;->J(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    ushr-long v1, p1, v0

    .line 15
    .line 16
    or-long/2addr v1, p1

    .line 17
    const/4 v3, 0x2

    .line 18
    ushr-long v4, v1, v3

    .line 19
    .line 20
    or-long/2addr v1, v4

    .line 21
    const/4 v4, 0x4

    .line 22
    ushr-long v5, v1, v4

    .line 23
    .line 24
    or-long/2addr v1, v5

    .line 25
    const/16 v5, 0x8

    .line 26
    .line 27
    ushr-long v6, v1, v5

    .line 28
    .line 29
    or-long/2addr v1, v6

    .line 30
    const/16 v6, 0x10

    .line 31
    .line 32
    ushr-long v7, v1, v6

    .line 33
    .line 34
    or-long/2addr v1, v7

    .line 35
    const/16 v7, 0x20

    .line 36
    .line 37
    ushr-long v8, v1, v7

    .line 38
    .line 39
    or-long/2addr v1, v8

    .line 40
    ushr-long v8, v1, v0

    .line 41
    .line 42
    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v8, v10

    .line 48
    sub-long/2addr v1, v8

    .line 49
    ushr-long v8, v1, v3

    .line 50
    .line 51
    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    and-long/2addr v8, v10

    .line 57
    and-long/2addr v1, v10

    .line 58
    add-long/2addr v8, v1

    .line 59
    ushr-long v1, v8, v4

    .line 60
    .line 61
    add-long/2addr v1, v8

    .line 62
    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    and-long/2addr v1, v8

    .line 68
    ushr-long v8, v1, v5

    .line 69
    .line 70
    add-long/2addr v1, v8

    .line 71
    ushr-long v5, v1, v6

    .line 72
    .line 73
    add-long/2addr v1, v5

    .line 74
    const-wide/16 v5, 0x3f

    .line 75
    .line 76
    and-long v8, v1, v5

    .line 77
    .line 78
    ushr-long/2addr v1, v7

    .line 79
    and-long/2addr v1, v5

    .line 80
    add-long/2addr v8, v1

    .line 81
    const-wide/16 v1, 0x3

    .line 82
    .line 83
    add-long/2addr v8, v1

    .line 84
    const-wide/16 v1, 0x4

    .line 85
    .line 86
    div-long/2addr v8, v1

    .line 87
    long-to-int v1, v8

    .line 88
    invoke-virtual {p0, v1}, Lnw0;->A(I)Lm67;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v3, v2, Lm67;->a:[B

    .line 93
    .line 94
    iget v5, v2, Lm67;->c:I

    .line 95
    .line 96
    add-int v6, v5, v1

    .line 97
    .line 98
    sub-int/2addr v6, v0

    .line 99
    :goto_0
    if-lt v6, v5, :cond_1

    .line 100
    .line 101
    sget-object v0, Lb;->a:[B

    .line 102
    .line 103
    const-wide/16 v7, 0xf

    .line 104
    .line 105
    and-long/2addr v7, p1

    .line 106
    long-to-int v7, v7

    .line 107
    aget-byte v0, v0, v7

    .line 108
    .line 109
    aput-byte v0, v3, v6

    .line 110
    .line 111
    ushr-long/2addr p1, v4

    .line 112
    add-int/lit8 v6, v6, -0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    iget p1, v2, Lm67;->c:I

    .line 116
    .line 117
    add-int/2addr p1, v1

    .line 118
    iput p1, v2, Lm67;->c:I

    .line 119
    .line 120
    iget-wide p1, p0, Lnw0;->b:J

    .line 121
    .line 122
    int-to-long v0, v1

    .line 123
    add-long/2addr p1, v0

    .line 124
    iput-wide p1, p0, Lnw0;->b:J

    .line 125
    .line 126
    return-void
.end method

.method public final T(Lhy0;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lnw0;->m(Lhy0;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public final U(I)V
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lnw0;->A(I)Lm67;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, v1, Lm67;->a:[B

    .line 7
    .line 8
    iget v3, v1, Lm67;->c:I

    .line 9
    .line 10
    add-int/lit8 v4, v3, 0x1

    .line 11
    .line 12
    ushr-int/lit8 v5, p1, 0x18

    .line 13
    .line 14
    and-int/lit16 v5, v5, 0xff

    .line 15
    .line 16
    int-to-byte v5, v5

    .line 17
    aput-byte v5, v2, v3

    .line 18
    .line 19
    add-int/lit8 v5, v3, 0x2

    .line 20
    .line 21
    ushr-int/lit8 v6, p1, 0x10

    .line 22
    .line 23
    and-int/lit16 v6, v6, 0xff

    .line 24
    .line 25
    int-to-byte v6, v6

    .line 26
    aput-byte v6, v2, v4

    .line 27
    .line 28
    add-int/lit8 v4, v3, 0x3

    .line 29
    .line 30
    ushr-int/lit8 v6, p1, 0x8

    .line 31
    .line 32
    and-int/lit16 v6, v6, 0xff

    .line 33
    .line 34
    int-to-byte v6, v6

    .line 35
    aput-byte v6, v2, v5

    .line 36
    .line 37
    add-int/2addr v3, v0

    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    int-to-byte p1, p1

    .line 41
    aput-byte p1, v2, v4

    .line 42
    .line 43
    iput v3, v1, Lm67;->c:I

    .line 44
    .line 45
    iget-wide v0, p0, Lnw0;->b:J

    .line 46
    .line 47
    const-wide/16 v2, 0x4

    .line 48
    .line 49
    add-long/2addr v0, v2

    .line 50
    iput-wide v0, p0, Lnw0;->b:J

    .line 51
    .line 52
    return-void
.end method

.method public final bridge synthetic V(Lrc4;J)Lyw0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lnw0;->G(Lij7;J)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final W(I)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lnw0;->A(I)Lm67;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, v1, Lm67;->a:[B

    .line 7
    .line 8
    iget v3, v1, Lm67;->c:I

    .line 9
    .line 10
    add-int/lit8 v4, v3, 0x1

    .line 11
    .line 12
    ushr-int/lit8 v5, p1, 0x8

    .line 13
    .line 14
    and-int/lit16 v5, v5, 0xff

    .line 15
    .line 16
    int-to-byte v5, v5

    .line 17
    aput-byte v5, v2, v3

    .line 18
    .line 19
    add-int/2addr v3, v0

    .line 20
    and-int/lit16 p1, p1, 0xff

    .line 21
    .line 22
    int-to-byte p1, p1

    .line 23
    aput-byte p1, v2, v4

    .line 24
    .line 25
    iput v3, v1, Lm67;->c:I

    .line 26
    .line 27
    iget-wide v0, p0, Lnw0;->b:J

    .line 28
    .line 29
    const-wide/16 v2, 0x2

    .line 30
    .line 31
    add-long/2addr v0, v2

    .line 32
    iput-wide v0, p0, Lnw0;->b:J

    .line 33
    .line 34
    return-void
.end method

.method public final X()Ljava/lang/String;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lnw0;->E(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final Y(IILjava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_a

    .line 5
    .line 6
    if-lt p2, p1, :cond_9

    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-gt p2, v0, :cond_8

    .line 13
    .line 14
    :goto_0
    if-ge p1, p2, :cond_7

    .line 15
    .line 16
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x80

    .line 21
    .line 22
    if-ge v0, v1, :cond_1

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {p0, v2}, Lnw0;->A(I)Lm67;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, v2, Lm67;->a:[B

    .line 30
    .line 31
    iget v4, v2, Lm67;->c:I

    .line 32
    .line 33
    sub-int/2addr v4, p1

    .line 34
    rsub-int v5, v4, 0x2000

    .line 35
    .line 36
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    add-int/lit8 v6, p1, 0x1

    .line 41
    .line 42
    add-int/2addr p1, v4

    .line 43
    int-to-byte v0, v0

    .line 44
    aput-byte v0, v3, p1

    .line 45
    .line 46
    :goto_1
    move p1, v6

    .line 47
    if-ge p1, v5, :cond_0

    .line 48
    .line 49
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ge v0, v1, :cond_0

    .line 54
    .line 55
    add-int/lit8 v6, p1, 0x1

    .line 56
    .line 57
    add-int/2addr p1, v4

    .line 58
    int-to-byte v0, v0

    .line 59
    aput-byte v0, v3, p1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    add-int/2addr v4, p1

    .line 63
    iget v0, v2, Lm67;->c:I

    .line 64
    .line 65
    sub-int/2addr v4, v0

    .line 66
    add-int/2addr v0, v4

    .line 67
    iput v0, v2, Lm67;->c:I

    .line 68
    .line 69
    iget-wide v0, p0, Lnw0;->b:J

    .line 70
    .line 71
    int-to-long v2, v4

    .line 72
    add-long/2addr v0, v2

    .line 73
    iput-wide v0, p0, Lnw0;->b:J

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/16 v2, 0x800

    .line 77
    .line 78
    if-ge v0, v2, :cond_2

    .line 79
    .line 80
    const/4 v2, 0x2

    .line 81
    invoke-virtual {p0, v2}, Lnw0;->A(I)Lm67;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget-object v4, v3, Lm67;->a:[B

    .line 86
    .line 87
    iget v5, v3, Lm67;->c:I

    .line 88
    .line 89
    shr-int/lit8 v6, v0, 0x6

    .line 90
    .line 91
    or-int/lit16 v6, v6, 0xc0

    .line 92
    .line 93
    int-to-byte v6, v6

    .line 94
    aput-byte v6, v4, v5

    .line 95
    .line 96
    add-int/lit8 v6, v5, 0x1

    .line 97
    .line 98
    and-int/lit8 v0, v0, 0x3f

    .line 99
    .line 100
    or-int/2addr v0, v1

    .line 101
    int-to-byte v0, v0

    .line 102
    aput-byte v0, v4, v6

    .line 103
    .line 104
    add-int/2addr v5, v2

    .line 105
    iput v5, v3, Lm67;->c:I

    .line 106
    .line 107
    iget-wide v0, p0, Lnw0;->b:J

    .line 108
    .line 109
    const-wide/16 v2, 0x2

    .line 110
    .line 111
    add-long/2addr v0, v2

    .line 112
    iput-wide v0, p0, Lnw0;->b:J

    .line 113
    .line 114
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    const v2, 0xd800

    .line 118
    .line 119
    .line 120
    const/16 v3, 0x3f

    .line 121
    .line 122
    if-lt v0, v2, :cond_6

    .line 123
    .line 124
    const v2, 0xdfff

    .line 125
    .line 126
    .line 127
    if-le v0, v2, :cond_3

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_3
    add-int/lit8 v2, p1, 0x1

    .line 131
    .line 132
    if-ge v2, p2, :cond_4

    .line 133
    .line 134
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    goto :goto_3

    .line 139
    :cond_4
    const/4 v4, 0x0

    .line 140
    :goto_3
    const v5, 0xdbff

    .line 141
    .line 142
    .line 143
    if-gt v0, v5, :cond_5

    .line 144
    .line 145
    const v5, 0xdc00

    .line 146
    .line 147
    .line 148
    if-gt v5, v4, :cond_5

    .line 149
    .line 150
    const v5, 0xe000

    .line 151
    .line 152
    .line 153
    if-ge v4, v5, :cond_5

    .line 154
    .line 155
    and-int/lit16 v0, v0, 0x3ff

    .line 156
    .line 157
    shl-int/lit8 v0, v0, 0xa

    .line 158
    .line 159
    and-int/lit16 v2, v4, 0x3ff

    .line 160
    .line 161
    or-int/2addr v0, v2

    .line 162
    const/high16 v2, 0x10000

    .line 163
    .line 164
    add-int/2addr v0, v2

    .line 165
    const/4 v2, 0x4

    .line 166
    invoke-virtual {p0, v2}, Lnw0;->A(I)Lm67;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    iget-object v5, v4, Lm67;->a:[B

    .line 171
    .line 172
    iget v6, v4, Lm67;->c:I

    .line 173
    .line 174
    shr-int/lit8 v7, v0, 0x12

    .line 175
    .line 176
    or-int/lit16 v7, v7, 0xf0

    .line 177
    .line 178
    int-to-byte v7, v7

    .line 179
    aput-byte v7, v5, v6

    .line 180
    .line 181
    add-int/lit8 v7, v6, 0x1

    .line 182
    .line 183
    shr-int/lit8 v8, v0, 0xc

    .line 184
    .line 185
    and-int/2addr v8, v3

    .line 186
    or-int/2addr v8, v1

    .line 187
    int-to-byte v8, v8

    .line 188
    aput-byte v8, v5, v7

    .line 189
    .line 190
    add-int/lit8 v7, v6, 0x2

    .line 191
    .line 192
    shr-int/lit8 v8, v0, 0x6

    .line 193
    .line 194
    and-int/2addr v8, v3

    .line 195
    or-int/2addr v8, v1

    .line 196
    int-to-byte v8, v8

    .line 197
    aput-byte v8, v5, v7

    .line 198
    .line 199
    add-int/lit8 v7, v6, 0x3

    .line 200
    .line 201
    and-int/2addr v0, v3

    .line 202
    or-int/2addr v0, v1

    .line 203
    int-to-byte v0, v0

    .line 204
    aput-byte v0, v5, v7

    .line 205
    .line 206
    add-int/2addr v6, v2

    .line 207
    iput v6, v4, Lm67;->c:I

    .line 208
    .line 209
    iget-wide v0, p0, Lnw0;->b:J

    .line 210
    .line 211
    const-wide/16 v2, 0x4

    .line 212
    .line 213
    add-long/2addr v0, v2

    .line 214
    iput-wide v0, p0, Lnw0;->b:J

    .line 215
    .line 216
    add-int/lit8 p1, p1, 0x2

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_5
    invoke-virtual {p0, v3}, Lnw0;->J(I)V

    .line 221
    .line 222
    .line 223
    move p1, v2

    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_6
    :goto_4
    const/4 v2, 0x3

    .line 227
    invoke-virtual {p0, v2}, Lnw0;->A(I)Lm67;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    iget-object v5, v4, Lm67;->a:[B

    .line 232
    .line 233
    iget v6, v4, Lm67;->c:I

    .line 234
    .line 235
    shr-int/lit8 v7, v0, 0xc

    .line 236
    .line 237
    or-int/lit16 v7, v7, 0xe0

    .line 238
    .line 239
    int-to-byte v7, v7

    .line 240
    aput-byte v7, v5, v6

    .line 241
    .line 242
    add-int/lit8 v7, v6, 0x1

    .line 243
    .line 244
    shr-int/lit8 v8, v0, 0x6

    .line 245
    .line 246
    and-int/2addr v3, v8

    .line 247
    or-int/2addr v3, v1

    .line 248
    int-to-byte v3, v3

    .line 249
    aput-byte v3, v5, v7

    .line 250
    .line 251
    add-int/lit8 v3, v6, 0x2

    .line 252
    .line 253
    and-int/lit8 v0, v0, 0x3f

    .line 254
    .line 255
    or-int/2addr v0, v1

    .line 256
    int-to-byte v0, v0

    .line 257
    aput-byte v0, v5, v3

    .line 258
    .line 259
    add-int/2addr v6, v2

    .line 260
    iput v6, v4, Lm67;->c:I

    .line 261
    .line 262
    iget-wide v0, p0, Lnw0;->b:J

    .line 263
    .line 264
    const-wide/16 v2, 0x3

    .line 265
    .line 266
    add-long/2addr v0, v2

    .line 267
    iput-wide v0, p0, Lnw0;->b:J

    .line 268
    .line 269
    goto/16 :goto_2

    .line 270
    .line 271
    :cond_7
    return-void

    .line 272
    :cond_8
    const-string p0, "endIndex > string.length: "

    .line 273
    .line 274
    const-string p1, " > "

    .line 275
    .line 276
    invoke-static {p2, p0, p1}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    invoke-static {p1, p0}, Lb6;->b(ILjava/lang/StringBuilder;)V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :cond_9
    const-string p0, "endIndex < beginIndex: "

    .line 289
    .line 290
    const-string p3, " < "

    .line 291
    .line 292
    invoke-static {p0, p2, p1, p3}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_a
    const-string p0, "beginIndex < 0: "

    .line 301
    .line 302
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    return-void
.end method

.method public final Z(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1, p1}, Lnw0;->Y(IILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnw0;->b:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lnw0;->skip(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lnw0;JJ)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lnw0;->b:J

    .line 5
    .line 6
    move-wide v2, p2

    .line 7
    move-wide v4, p4

    .line 8
    invoke-static/range {v0 .. v5}, Lk55;->c(JJJ)V

    .line 9
    .line 10
    .line 11
    const-wide/16 p2, 0x0

    .line 12
    .line 13
    cmp-long p4, v4, p2

    .line 14
    .line 15
    if-nez p4, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    iget-wide p4, p1, Lnw0;->b:J

    .line 19
    .line 20
    add-long/2addr p4, v4

    .line 21
    iput-wide p4, p1, Lnw0;->b:J

    .line 22
    .line 23
    iget-object p0, p0, Lnw0;->a:Lm67;

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget p4, p0, Lm67;->c:I

    .line 29
    .line 30
    iget p5, p0, Lm67;->b:I

    .line 31
    .line 32
    sub-int/2addr p4, p5

    .line 33
    int-to-long p4, p4

    .line 34
    cmp-long v0, v2, p4

    .line 35
    .line 36
    if-ltz v0, :cond_1

    .line 37
    .line 38
    sub-long/2addr v2, p4

    .line 39
    iget-object p0, p0, Lm67;->f:Lm67;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-wide p4, v4

    .line 43
    :goto_1
    cmp-long v0, p4, p2

    .line 44
    .line 45
    if-lez v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lm67;->c()Lm67;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v1, v0, Lm67;->b:I

    .line 55
    .line 56
    long-to-int v2, v2

    .line 57
    add-int/2addr v1, v2

    .line 58
    iput v1, v0, Lm67;->b:I

    .line 59
    .line 60
    long-to-int v2, p4

    .line 61
    add-int/2addr v1, v2

    .line 62
    iget v2, v0, Lm67;->c:I

    .line 63
    .line 64
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iput v1, v0, Lm67;->c:I

    .line 69
    .line 70
    iget-object v1, p1, Lnw0;->a:Lm67;

    .line 71
    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    iput-object v0, v0, Lm67;->g:Lm67;

    .line 75
    .line 76
    iput-object v0, v0, Lm67;->f:Lm67;

    .line 77
    .line 78
    iput-object v0, p1, Lnw0;->a:Lm67;

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    iget-object v1, v1, Lm67;->g:Lm67;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0}, Lm67;->b(Lm67;)V

    .line 87
    .line 88
    .line 89
    :goto_2
    iget v1, v0, Lm67;->c:I

    .line 90
    .line 91
    iget v0, v0, Lm67;->b:I

    .line 92
    .line 93
    sub-int/2addr v1, v0

    .line 94
    int-to-long v0, v1

    .line 95
    sub-long/2addr p4, v0

    .line 96
    iget-object p0, p0, Lm67;->f:Lm67;

    .line 97
    .line 98
    move-wide v2, p2

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    :goto_3
    return-void
.end method

.method public final b0(I)V
    .locals 8

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lnw0;->J(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/16 v1, 0x800

    .line 10
    .line 11
    const/16 v2, 0x3f

    .line 12
    .line 13
    if-ge p1, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p0, v1}, Lnw0;->A(I)Lm67;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, v3, Lm67;->a:[B

    .line 21
    .line 22
    iget v5, v3, Lm67;->c:I

    .line 23
    .line 24
    shr-int/lit8 v6, p1, 0x6

    .line 25
    .line 26
    or-int/lit16 v6, v6, 0xc0

    .line 27
    .line 28
    int-to-byte v6, v6

    .line 29
    aput-byte v6, v4, v5

    .line 30
    .line 31
    add-int/lit8 v6, v5, 0x1

    .line 32
    .line 33
    and-int/2addr p1, v2

    .line 34
    or-int/2addr p1, v0

    .line 35
    int-to-byte p1, p1

    .line 36
    aput-byte p1, v4, v6

    .line 37
    .line 38
    add-int/2addr v5, v1

    .line 39
    iput v5, v3, Lm67;->c:I

    .line 40
    .line 41
    iget-wide v0, p0, Lnw0;->b:J

    .line 42
    .line 43
    const-wide/16 v2, 0x2

    .line 44
    .line 45
    add-long/2addr v0, v2

    .line 46
    iput-wide v0, p0, Lnw0;->b:J

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    const v1, 0xd800

    .line 50
    .line 51
    .line 52
    if-gt v1, p1, :cond_2

    .line 53
    .line 54
    const v1, 0xe000

    .line 55
    .line 56
    .line 57
    if-ge p1, v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Lnw0;->J(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    const/high16 v1, 0x10000

    .line 64
    .line 65
    if-ge p1, v1, :cond_3

    .line 66
    .line 67
    const/4 v1, 0x3

    .line 68
    invoke-virtual {p0, v1}, Lnw0;->A(I)Lm67;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iget-object v4, v3, Lm67;->a:[B

    .line 73
    .line 74
    iget v5, v3, Lm67;->c:I

    .line 75
    .line 76
    shr-int/lit8 v6, p1, 0xc

    .line 77
    .line 78
    or-int/lit16 v6, v6, 0xe0

    .line 79
    .line 80
    int-to-byte v6, v6

    .line 81
    aput-byte v6, v4, v5

    .line 82
    .line 83
    add-int/lit8 v6, v5, 0x1

    .line 84
    .line 85
    shr-int/lit8 v7, p1, 0x6

    .line 86
    .line 87
    and-int/2addr v7, v2

    .line 88
    or-int/2addr v7, v0

    .line 89
    int-to-byte v7, v7

    .line 90
    aput-byte v7, v4, v6

    .line 91
    .line 92
    add-int/lit8 v6, v5, 0x2

    .line 93
    .line 94
    and-int/2addr p1, v2

    .line 95
    or-int/2addr p1, v0

    .line 96
    int-to-byte p1, p1

    .line 97
    aput-byte p1, v4, v6

    .line 98
    .line 99
    add-int/2addr v5, v1

    .line 100
    iput v5, v3, Lm67;->c:I

    .line 101
    .line 102
    iget-wide v0, p0, Lnw0;->b:J

    .line 103
    .line 104
    const-wide/16 v2, 0x3

    .line 105
    .line 106
    add-long/2addr v0, v2

    .line 107
    iput-wide v0, p0, Lnw0;->b:J

    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    const v1, 0x10ffff

    .line 111
    .line 112
    .line 113
    if-gt p1, v1, :cond_4

    .line 114
    .line 115
    const/4 v1, 0x4

    .line 116
    invoke-virtual {p0, v1}, Lnw0;->A(I)Lm67;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iget-object v4, v3, Lm67;->a:[B

    .line 121
    .line 122
    iget v5, v3, Lm67;->c:I

    .line 123
    .line 124
    shr-int/lit8 v6, p1, 0x12

    .line 125
    .line 126
    or-int/lit16 v6, v6, 0xf0

    .line 127
    .line 128
    int-to-byte v6, v6

    .line 129
    aput-byte v6, v4, v5

    .line 130
    .line 131
    add-int/lit8 v6, v5, 0x1

    .line 132
    .line 133
    shr-int/lit8 v7, p1, 0xc

    .line 134
    .line 135
    and-int/2addr v7, v2

    .line 136
    or-int/2addr v7, v0

    .line 137
    int-to-byte v7, v7

    .line 138
    aput-byte v7, v4, v6

    .line 139
    .line 140
    add-int/lit8 v6, v5, 0x2

    .line 141
    .line 142
    shr-int/lit8 v7, p1, 0x6

    .line 143
    .line 144
    and-int/2addr v7, v2

    .line 145
    or-int/2addr v7, v0

    .line 146
    int-to-byte v7, v7

    .line 147
    aput-byte v7, v4, v6

    .line 148
    .line 149
    add-int/lit8 v6, v5, 0x3

    .line 150
    .line 151
    and-int/2addr p1, v2

    .line 152
    or-int/2addr p1, v0

    .line 153
    int-to-byte p1, p1

    .line 154
    aput-byte p1, v4, v6

    .line 155
    .line 156
    add-int/2addr v5, v1

    .line 157
    iput v5, v3, Lm67;->c:I

    .line 158
    .line 159
    iget-wide v0, p0, Lnw0;->b:J

    .line 160
    .line 161
    const-wide/16 v2, 0x4

    .line 162
    .line 163
    add-long/2addr v0, v2

    .line 164
    iput-wide v0, p0, Lnw0;->b:J

    .line 165
    .line 166
    return-void

    .line 167
    :cond_4
    invoke-static {p1}, Lk55;->G(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    const-string p1, "Unexpected code point: 0x"

    .line 172
    .line 173
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final c()Lnw0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lnw0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lnw0;->b:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v1, p0, Lnw0;->a:Lm67;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lm67;->c()Lm67;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v0, Lnw0;->a:Lm67;

    .line 25
    .line 26
    iput-object v2, v2, Lm67;->g:Lm67;

    .line 27
    .line 28
    iput-object v2, v2, Lm67;->f:Lm67;

    .line 29
    .line 30
    iget-object v3, v1, Lm67;->f:Lm67;

    .line 31
    .line 32
    :goto_0
    if-eq v3, v1, :cond_1

    .line 33
    .line 34
    iget-object v4, v2, Lm67;->g:Lm67;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lm67;->c()Lm67;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Lm67;->b(Lm67;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v3, Lm67;->f:Lm67;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-wide v1, p0, Lnw0;->b:J

    .line 53
    .line 54
    iput-wide v1, v0, Lnw0;->b:J

    .line 55
    .line 56
    return-object v0
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()Lf48;
    .locals 0

    .line 1
    sget-object p0, Lf48;->d:Le48;

    .line 2
    .line 3
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    instance-of v3, v1, Lnw0;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    return v4

    .line 15
    :cond_1
    iget-wide v5, v0, Lnw0;->b:J

    .line 16
    .line 17
    check-cast v1, Lnw0;

    .line 18
    .line 19
    iget-wide v7, v1, Lnw0;->b:J

    .line 20
    .line 21
    cmp-long v3, v5, v7

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    return v4

    .line 26
    :cond_2
    const-wide/16 v7, 0x0

    .line 27
    .line 28
    cmp-long v3, v5, v7

    .line 29
    .line 30
    if-nez v3, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget-object v3, v0, Lnw0;->a:Lm67;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v1, v1, Lnw0;->a:Lm67;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget v5, v3, Lm67;->b:I

    .line 44
    .line 45
    iget v6, v1, Lm67;->b:I

    .line 46
    .line 47
    move-wide v9, v7

    .line 48
    :goto_0
    iget-wide v11, v0, Lnw0;->b:J

    .line 49
    .line 50
    cmp-long v11, v9, v11

    .line 51
    .line 52
    if-gez v11, :cond_8

    .line 53
    .line 54
    iget v11, v3, Lm67;->c:I

    .line 55
    .line 56
    sub-int/2addr v11, v5

    .line 57
    iget v12, v1, Lm67;->c:I

    .line 58
    .line 59
    sub-int/2addr v12, v6

    .line 60
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    int-to-long v11, v11

    .line 65
    move-wide v13, v7

    .line 66
    :goto_1
    cmp-long v15, v13, v11

    .line 67
    .line 68
    if-gez v15, :cond_5

    .line 69
    .line 70
    iget-object v15, v3, Lm67;->a:[B

    .line 71
    .line 72
    add-int/lit8 v16, v5, 0x1

    .line 73
    .line 74
    aget-byte v5, v15, v5

    .line 75
    .line 76
    iget-object v15, v1, Lm67;->a:[B

    .line 77
    .line 78
    add-int/lit8 v17, v6, 0x1

    .line 79
    .line 80
    aget-byte v6, v15, v6

    .line 81
    .line 82
    if-eq v5, v6, :cond_4

    .line 83
    .line 84
    return v4

    .line 85
    :cond_4
    const-wide/16 v5, 0x1

    .line 86
    .line 87
    add-long/2addr v13, v5

    .line 88
    move/from16 v5, v16

    .line 89
    .line 90
    move/from16 v6, v17

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    iget v13, v3, Lm67;->c:I

    .line 94
    .line 95
    if-ne v5, v13, :cond_6

    .line 96
    .line 97
    iget-object v3, v3, Lm67;->f:Lm67;

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget v5, v3, Lm67;->b:I

    .line 103
    .line 104
    :cond_6
    iget v13, v1, Lm67;->c:I

    .line 105
    .line 106
    if-ne v6, v13, :cond_7

    .line 107
    .line 108
    iget-object v1, v1, Lm67;->f:Lm67;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    iget v6, v1, Lm67;->b:I

    .line 114
    .line 115
    :cond_7
    add-long/2addr v9, v11

    .line 116
    goto :goto_0

    .line 117
    :cond_8
    return v2
.end method

.method public final f0(Lnw0;J)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eq p1, p0, :cond_c

    .line 5
    .line 6
    iget-wide v0, p1, Lnw0;->b:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    move-wide v4, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lk55;->c(JJJ)V

    .line 12
    .line 13
    .line 14
    :goto_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long v0, p2, v0

    .line 17
    .line 18
    if-lez v0, :cond_b

    .line 19
    .line 20
    iget-object v0, p1, Lnw0;->a:Lm67;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget v0, v0, Lm67;->c:I

    .line 26
    .line 27
    iget-object v1, p1, Lnw0;->a:Lm67;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget v1, v1, Lm67;->b:I

    .line 33
    .line 34
    sub-int/2addr v0, v1

    .line 35
    int-to-long v0, v0

    .line 36
    cmp-long v0, p2, v0

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-gez v0, :cond_5

    .line 40
    .line 41
    iget-object v0, p0, Lnw0;->a:Lm67;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object v0, v0, Lm67;->g:Lm67;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_1
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-boolean v2, v0, Lm67;->e:Z

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget v2, v0, Lm67;->c:I

    .line 56
    .line 57
    int-to-long v2, v2

    .line 58
    add-long/2addr v2, p2

    .line 59
    iget-boolean v4, v0, Lm67;->d:Z

    .line 60
    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    move v4, v1

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    iget v4, v0, Lm67;->b:I

    .line 66
    .line 67
    :goto_2
    int-to-long v4, v4

    .line 68
    sub-long/2addr v2, v4

    .line 69
    const-wide/16 v4, 0x2000

    .line 70
    .line 71
    cmp-long v2, v2, v4

    .line 72
    .line 73
    if-gtz v2, :cond_2

    .line 74
    .line 75
    iget-object v1, p1, Lnw0;->a:Lm67;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    long-to-int v2, p2

    .line 81
    invoke-virtual {v1, v0, v2}, Lm67;->d(Lm67;I)V

    .line 82
    .line 83
    .line 84
    iget-wide v0, p1, Lnw0;->b:J

    .line 85
    .line 86
    sub-long/2addr v0, p2

    .line 87
    iput-wide v0, p1, Lnw0;->b:J

    .line 88
    .line 89
    iget-wide v0, p0, Lnw0;->b:J

    .line 90
    .line 91
    add-long/2addr v0, p2

    .line 92
    iput-wide v0, p0, Lnw0;->b:J

    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    iget-object v0, p1, Lnw0;->a:Lm67;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    long-to-int v2, p2

    .line 101
    if-lez v2, :cond_4

    .line 102
    .line 103
    iget v3, v0, Lm67;->c:I

    .line 104
    .line 105
    iget v4, v0, Lm67;->b:I

    .line 106
    .line 107
    sub-int/2addr v3, v4

    .line 108
    if-gt v2, v3, :cond_4

    .line 109
    .line 110
    const/16 v3, 0x400

    .line 111
    .line 112
    if-lt v2, v3, :cond_3

    .line 113
    .line 114
    invoke-virtual {v0}, Lm67;->c()Lm67;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    goto :goto_3

    .line 119
    :cond_3
    invoke-static {}, Lo67;->b()Lm67;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iget-object v4, v0, Lm67;->a:[B

    .line 124
    .line 125
    iget-object v5, v3, Lm67;->a:[B

    .line 126
    .line 127
    iget v7, v0, Lm67;->b:I

    .line 128
    .line 129
    add-int v8, v7, v2

    .line 130
    .line 131
    const/4 v9, 0x2

    .line 132
    const/4 v6, 0x0

    .line 133
    invoke-static/range {v4 .. v9}, Lx50;->j0([B[BIIII)V

    .line 134
    .line 135
    .line 136
    :goto_3
    iget v4, v3, Lm67;->b:I

    .line 137
    .line 138
    add-int/2addr v4, v2

    .line 139
    iput v4, v3, Lm67;->c:I

    .line 140
    .line 141
    iget v4, v0, Lm67;->b:I

    .line 142
    .line 143
    add-int/2addr v4, v2

    .line 144
    iput v4, v0, Lm67;->b:I

    .line 145
    .line 146
    iget-object v0, v0, Lm67;->g:Lm67;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v3}, Lm67;->b(Lm67;)V

    .line 152
    .line 153
    .line 154
    iput-object v3, p1, Lnw0;->a:Lm67;

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_4
    const-string p0, "byteCount out of range"

    .line 158
    .line 159
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_5
    :goto_4
    iget-object v0, p1, Lnw0;->a:Lm67;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    iget v2, v0, Lm67;->c:I

    .line 169
    .line 170
    iget v3, v0, Lm67;->b:I

    .line 171
    .line 172
    sub-int/2addr v2, v3

    .line 173
    int-to-long v2, v2

    .line 174
    invoke-virtual {v0}, Lm67;->a()Lm67;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    iput-object v4, p1, Lnw0;->a:Lm67;

    .line 179
    .line 180
    iget-object v4, p0, Lnw0;->a:Lm67;

    .line 181
    .line 182
    if-nez v4, :cond_6

    .line 183
    .line 184
    iput-object v0, p0, Lnw0;->a:Lm67;

    .line 185
    .line 186
    iput-object v0, v0, Lm67;->g:Lm67;

    .line 187
    .line 188
    iput-object v0, v0, Lm67;->f:Lm67;

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_6
    iget-object v4, v4, Lm67;->g:Lm67;

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v0}, Lm67;->b(Lm67;)V

    .line 197
    .line 198
    .line 199
    iget-object v4, v0, Lm67;->g:Lm67;

    .line 200
    .line 201
    if-eq v4, v0, :cond_a

    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    iget-boolean v4, v4, Lm67;->e:Z

    .line 207
    .line 208
    if-nez v4, :cond_7

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_7
    iget v4, v0, Lm67;->c:I

    .line 212
    .line 213
    iget v5, v0, Lm67;->b:I

    .line 214
    .line 215
    sub-int/2addr v4, v5

    .line 216
    iget-object v5, v0, Lm67;->g:Lm67;

    .line 217
    .line 218
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    iget v5, v5, Lm67;->c:I

    .line 222
    .line 223
    rsub-int v5, v5, 0x2000

    .line 224
    .line 225
    iget-object v6, v0, Lm67;->g:Lm67;

    .line 226
    .line 227
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    iget-boolean v6, v6, Lm67;->d:Z

    .line 231
    .line 232
    if-eqz v6, :cond_8

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_8
    iget-object v1, v0, Lm67;->g:Lm67;

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    iget v1, v1, Lm67;->b:I

    .line 241
    .line 242
    :goto_5
    add-int/2addr v5, v1

    .line 243
    if-le v4, v5, :cond_9

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_9
    iget-object v1, v0, Lm67;->g:Lm67;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1, v4}, Lm67;->d(Lm67;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Lm67;->a()Lm67;

    .line 255
    .line 256
    .line 257
    invoke-static {v0}, Lo67;->a(Lm67;)V

    .line 258
    .line 259
    .line 260
    :goto_6
    iget-wide v0, p1, Lnw0;->b:J

    .line 261
    .line 262
    sub-long/2addr v0, v2

    .line 263
    iput-wide v0, p1, Lnw0;->b:J

    .line 264
    .line 265
    iget-wide v0, p0, Lnw0;->b:J

    .line 266
    .line 267
    add-long/2addr v0, v2

    .line 268
    iput-wide v0, p0, Lnw0;->b:J

    .line 269
    .line 270
    sub-long/2addr p2, v2

    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_a
    const-string p0, "cannot compact"

    .line 274
    .line 275
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    :cond_b
    return-void

    .line 279
    :cond_c
    const-string p0, "source == this"

    .line 280
    .line 281
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public final h(J)B
    .locals 6

    .line 1
    iget-wide v0, p0, Lnw0;->b:J

    .line 2
    .line 3
    const-wide/16 v4, 0x1

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    invoke-static/range {v0 .. v5}, Lk55;->c(JJJ)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lnw0;->a:Lm67;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-wide v0, p0, Lnw0;->b:J

    .line 15
    .line 16
    sub-long v4, v0, v2

    .line 17
    .line 18
    cmp-long p0, v4, v2

    .line 19
    .line 20
    if-gez p0, :cond_1

    .line 21
    .line 22
    :goto_0
    cmp-long p0, v0, v2

    .line 23
    .line 24
    if-lez p0, :cond_0

    .line 25
    .line 26
    iget-object p1, p1, Lm67;->g:Lm67;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget p0, p1, Lm67;->c:I

    .line 32
    .line 33
    iget p2, p1, Lm67;->b:I

    .line 34
    .line 35
    sub-int/2addr p0, p2

    .line 36
    int-to-long v4, p0

    .line 37
    sub-long/2addr v0, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p1, Lm67;->a:[B

    .line 40
    .line 41
    iget p1, p1, Lm67;->b:I

    .line 42
    .line 43
    int-to-long p1, p1

    .line 44
    add-long/2addr p1, v2

    .line 45
    sub-long/2addr p1, v0

    .line 46
    long-to-int p1, p1

    .line 47
    aget-byte p0, p0, p1

    .line 48
    .line 49
    return p0

    .line 50
    :cond_1
    const-wide/16 v0, 0x0

    .line 51
    .line 52
    :goto_1
    iget p0, p1, Lm67;->c:I

    .line 53
    .line 54
    iget p2, p1, Lm67;->b:I

    .line 55
    .line 56
    sub-int/2addr p0, p2

    .line 57
    int-to-long v4, p0

    .line 58
    add-long/2addr v4, v0

    .line 59
    cmp-long p0, v4, v2

    .line 60
    .line 61
    if-gtz p0, :cond_2

    .line 62
    .line 63
    iget-object p1, p1, Lm67;->f:Lm67;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-wide v0, v4

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iget-object p0, p1, Lm67;->a:[B

    .line 71
    .line 72
    int-to-long p1, p2

    .line 73
    add-long/2addr p1, v2

    .line 74
    sub-long/2addr p1, v0

    .line 75
    long-to-int p1, p1

    .line 76
    aget-byte p0, p0, p1

    .line 77
    .line 78
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lnw0;->a:Lm67;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    :cond_1
    iget v2, v0, Lm67;->b:I

    .line 9
    .line 10
    iget v3, v0, Lm67;->c:I

    .line 11
    .line 12
    :goto_0
    if-ge v2, v3, :cond_2

    .line 13
    .line 14
    mul-int/lit8 v1, v1, 0x1f

    .line 15
    .line 16
    iget-object v4, v0, Lm67;->a:[B

    .line 17
    .line 18
    aget-byte v4, v4, v2

    .line 19
    .line 20
    add-int/2addr v1, v4

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v0, v0, Lm67;->f:Lm67;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lnw0;->a:Lm67;

    .line 30
    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    return v1
.end method

.method public final isOpen()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final j(BJJ)J
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, v0, p2

    .line 4
    .line 5
    if-gtz v2, :cond_b

    .line 6
    .line 7
    cmp-long v2, p2, p4

    .line 8
    .line 9
    if-gtz v2, :cond_b

    .line 10
    .line 11
    iget-wide v2, p0, Lnw0;->b:J

    .line 12
    .line 13
    cmp-long v4, p4, v2

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    move-wide p4, v2

    .line 18
    :cond_0
    cmp-long v4, p2, p4

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    goto/16 :goto_6

    .line 23
    .line 24
    :cond_1
    iget-object p0, p0, Lnw0;->a:Lm67;

    .line 25
    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_2
    sub-long v4, v2, p2

    .line 31
    .line 32
    cmp-long v4, v4, p2

    .line 33
    .line 34
    if-gez v4, :cond_6

    .line 35
    .line 36
    :goto_0
    cmp-long v0, v2, p2

    .line 37
    .line 38
    if-lez v0, :cond_3

    .line 39
    .line 40
    iget-object p0, p0, Lm67;->g:Lm67;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lm67;->c:I

    .line 46
    .line 47
    iget v1, p0, Lm67;->b:I

    .line 48
    .line 49
    sub-int/2addr v0, v1

    .line 50
    int-to-long v0, v0

    .line 51
    sub-long/2addr v2, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    :goto_1
    cmp-long v0, v2, p4

    .line 54
    .line 55
    if-gez v0, :cond_a

    .line 56
    .line 57
    iget-object v0, p0, Lm67;->a:[B

    .line 58
    .line 59
    iget v1, p0, Lm67;->c:I

    .line 60
    .line 61
    int-to-long v4, v1

    .line 62
    iget v1, p0, Lm67;->b:I

    .line 63
    .line 64
    int-to-long v6, v1

    .line 65
    add-long/2addr v6, p4

    .line 66
    sub-long/2addr v6, v2

    .line 67
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    long-to-int v1, v4

    .line 72
    iget v4, p0, Lm67;->b:I

    .line 73
    .line 74
    int-to-long v4, v4

    .line 75
    add-long/2addr v4, p2

    .line 76
    sub-long/2addr v4, v2

    .line 77
    long-to-int p2, v4

    .line 78
    :goto_2
    if-ge p2, v1, :cond_5

    .line 79
    .line 80
    aget-byte p3, v0, p2

    .line 81
    .line 82
    if-ne p3, p1, :cond_4

    .line 83
    .line 84
    iget p0, p0, Lm67;->b:I

    .line 85
    .line 86
    sub-int/2addr p2, p0

    .line 87
    int-to-long p0, p2

    .line 88
    add-long/2addr p0, v2

    .line 89
    return-wide p0

    .line 90
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    iget p2, p0, Lm67;->c:I

    .line 94
    .line 95
    iget p3, p0, Lm67;->b:I

    .line 96
    .line 97
    sub-int/2addr p2, p3

    .line 98
    int-to-long p2, p2

    .line 99
    add-long/2addr v2, p2

    .line 100
    iget-object p0, p0, Lm67;->f:Lm67;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    move-wide p2, v2

    .line 106
    goto :goto_1

    .line 107
    :cond_6
    :goto_3
    iget v2, p0, Lm67;->c:I

    .line 108
    .line 109
    iget v3, p0, Lm67;->b:I

    .line 110
    .line 111
    sub-int/2addr v2, v3

    .line 112
    int-to-long v2, v2

    .line 113
    add-long/2addr v2, v0

    .line 114
    cmp-long v4, v2, p2

    .line 115
    .line 116
    if-gtz v4, :cond_7

    .line 117
    .line 118
    iget-object p0, p0, Lm67;->f:Lm67;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    move-wide v0, v2

    .line 124
    goto :goto_3

    .line 125
    :cond_7
    :goto_4
    cmp-long v2, v0, p4

    .line 126
    .line 127
    if-gez v2, :cond_a

    .line 128
    .line 129
    iget-object v2, p0, Lm67;->a:[B

    .line 130
    .line 131
    iget v3, p0, Lm67;->c:I

    .line 132
    .line 133
    int-to-long v3, v3

    .line 134
    iget v5, p0, Lm67;->b:I

    .line 135
    .line 136
    int-to-long v5, v5

    .line 137
    add-long/2addr v5, p4

    .line 138
    sub-long/2addr v5, v0

    .line 139
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 140
    .line 141
    .line 142
    move-result-wide v3

    .line 143
    long-to-int v3, v3

    .line 144
    iget v4, p0, Lm67;->b:I

    .line 145
    .line 146
    int-to-long v4, v4

    .line 147
    add-long/2addr v4, p2

    .line 148
    sub-long/2addr v4, v0

    .line 149
    long-to-int p2, v4

    .line 150
    :goto_5
    if-ge p2, v3, :cond_9

    .line 151
    .line 152
    aget-byte p3, v2, p2

    .line 153
    .line 154
    if-ne p3, p1, :cond_8

    .line 155
    .line 156
    iget p0, p0, Lm67;->b:I

    .line 157
    .line 158
    sub-int/2addr p2, p0

    .line 159
    int-to-long p0, p2

    .line 160
    add-long/2addr p0, v0

    .line 161
    return-wide p0

    .line 162
    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_9
    iget p2, p0, Lm67;->c:I

    .line 166
    .line 167
    iget p3, p0, Lm67;->b:I

    .line 168
    .line 169
    sub-int/2addr p2, p3

    .line 170
    int-to-long p2, p2

    .line 171
    add-long/2addr v0, p2

    .line 172
    iget-object p0, p0, Lm67;->f:Lm67;

    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    move-wide p2, v0

    .line 178
    goto :goto_4

    .line 179
    :cond_a
    :goto_6
    const-wide/16 p0, -0x1

    .line 180
    .line 181
    return-wide p0

    .line 182
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v0, "size="

    .line 185
    .line 186
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-wide v0, p0, Lnw0;->b:J

    .line 190
    .line 191
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string p0, " fromIndex="

    .line 195
    .line 196
    const-string v0, " toIndex="

    .line 197
    .line 198
    invoke-static {p1, p0, p2, p3, v0}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 209
    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p1
.end method

.method public final j0(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnw0;->b:J

    .line 2
    .line 3
    cmp-long p0, v0, p1

    .line 4
    .line 5
    if-ltz p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Ld6;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final m(Lhy0;J)J
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p2, v0

    .line 7
    .line 8
    if-ltz v2, :cond_14

    .line 9
    .line 10
    iget-object v2, p0, Lnw0;->a:Lm67;

    .line 11
    .line 12
    const-wide/16 v3, -0x1

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-wide v3

    .line 17
    :cond_0
    iget-wide v5, p0, Lnw0;->b:J

    .line 18
    .line 19
    sub-long v7, v5, p2

    .line 20
    .line 21
    cmp-long v7, v7, p2

    .line 22
    .line 23
    const/4 v8, 0x2

    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v10, 0x1

    .line 26
    if-gez v7, :cond_a

    .line 27
    .line 28
    :goto_0
    cmp-long v0, v5, p2

    .line 29
    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    iget-object v2, v2, Lm67;->g:Lm67;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget v0, v2, Lm67;->c:I

    .line 38
    .line 39
    iget v1, v2, Lm67;->b:I

    .line 40
    .line 41
    sub-int/2addr v0, v1

    .line 42
    int-to-long v0, v0

    .line 43
    sub-long/2addr v5, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1}, Lhy0;->d()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-ne v0, v8, :cond_5

    .line 50
    .line 51
    invoke-virtual {p1, v9}, Lhy0;->i(I)B

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p1, v10}, Lhy0;->i(I)B

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    :goto_1
    iget-wide v7, p0, Lnw0;->b:J

    .line 60
    .line 61
    cmp-long v1, v5, v7

    .line 62
    .line 63
    if-gez v1, :cond_9

    .line 64
    .line 65
    iget-object v1, v2, Lm67;->a:[B

    .line 66
    .line 67
    iget v7, v2, Lm67;->b:I

    .line 68
    .line 69
    int-to-long v7, v7

    .line 70
    add-long/2addr v7, p2

    .line 71
    sub-long/2addr v7, v5

    .line 72
    long-to-int p2, v7

    .line 73
    iget p3, v2, Lm67;->c:I

    .line 74
    .line 75
    :goto_2
    if-ge p2, p3, :cond_4

    .line 76
    .line 77
    aget-byte v7, v1, p2

    .line 78
    .line 79
    if-eq v7, v0, :cond_3

    .line 80
    .line 81
    if-ne v7, p1, :cond_2

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    :goto_3
    iget p0, v2, Lm67;->b:I

    .line 88
    .line 89
    sub-int/2addr p2, p0

    .line 90
    int-to-long p0, p2

    .line 91
    add-long/2addr p0, v5

    .line 92
    return-wide p0

    .line 93
    :cond_4
    iget p2, v2, Lm67;->c:I

    .line 94
    .line 95
    iget p3, v2, Lm67;->b:I

    .line 96
    .line 97
    sub-int/2addr p2, p3

    .line 98
    int-to-long p2, p2

    .line 99
    add-long/2addr v5, p2

    .line 100
    iget-object v2, v2, Lm67;->f:Lm67;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    move-wide p2, v5

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    invoke-virtual {p1}, Lhy0;->h()[B

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    :goto_4
    iget-wide v0, p0, Lnw0;->b:J

    .line 112
    .line 113
    cmp-long v0, v5, v0

    .line 114
    .line 115
    if-gez v0, :cond_9

    .line 116
    .line 117
    iget-object v0, v2, Lm67;->a:[B

    .line 118
    .line 119
    iget v1, v2, Lm67;->b:I

    .line 120
    .line 121
    int-to-long v7, v1

    .line 122
    add-long/2addr v7, p2

    .line 123
    sub-long/2addr v7, v5

    .line 124
    long-to-int p2, v7

    .line 125
    iget p3, v2, Lm67;->c:I

    .line 126
    .line 127
    :goto_5
    if-ge p2, p3, :cond_8

    .line 128
    .line 129
    aget-byte v1, v0, p2

    .line 130
    .line 131
    array-length v7, p1

    .line 132
    move v8, v9

    .line 133
    :goto_6
    if-ge v8, v7, :cond_7

    .line 134
    .line 135
    aget-byte v10, p1, v8

    .line 136
    .line 137
    if-ne v1, v10, :cond_6

    .line 138
    .line 139
    iget p0, v2, Lm67;->b:I

    .line 140
    .line 141
    sub-int/2addr p2, p0

    .line 142
    int-to-long p0, p2

    .line 143
    add-long/2addr p0, v5

    .line 144
    return-wide p0

    .line 145
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_7
    add-int/lit8 p2, p2, 0x1

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_8
    iget p2, v2, Lm67;->c:I

    .line 152
    .line 153
    iget p3, v2, Lm67;->b:I

    .line 154
    .line 155
    sub-int/2addr p2, p3

    .line 156
    int-to-long p2, p2

    .line 157
    add-long/2addr v5, p2

    .line 158
    iget-object v2, v2, Lm67;->f:Lm67;

    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    move-wide p2, v5

    .line 164
    goto :goto_4

    .line 165
    :cond_9
    return-wide v3

    .line 166
    :cond_a
    :goto_7
    iget v5, v2, Lm67;->c:I

    .line 167
    .line 168
    iget v6, v2, Lm67;->b:I

    .line 169
    .line 170
    sub-int/2addr v5, v6

    .line 171
    int-to-long v5, v5

    .line 172
    add-long/2addr v5, v0

    .line 173
    cmp-long v7, v5, p2

    .line 174
    .line 175
    if-gtz v7, :cond_b

    .line 176
    .line 177
    iget-object v2, v2, Lm67;->f:Lm67;

    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    move-wide v0, v5

    .line 183
    goto :goto_7

    .line 184
    :cond_b
    invoke-virtual {p1}, Lhy0;->d()I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-ne v5, v8, :cond_f

    .line 189
    .line 190
    invoke-virtual {p1, v9}, Lhy0;->i(I)B

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    invoke-virtual {p1, v10}, Lhy0;->i(I)B

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    :goto_8
    iget-wide v6, p0, Lnw0;->b:J

    .line 199
    .line 200
    cmp-long v6, v0, v6

    .line 201
    .line 202
    if-gez v6, :cond_13

    .line 203
    .line 204
    iget-object v6, v2, Lm67;->a:[B

    .line 205
    .line 206
    iget v7, v2, Lm67;->b:I

    .line 207
    .line 208
    int-to-long v7, v7

    .line 209
    add-long/2addr v7, p2

    .line 210
    sub-long/2addr v7, v0

    .line 211
    long-to-int p2, v7

    .line 212
    iget p3, v2, Lm67;->c:I

    .line 213
    .line 214
    :goto_9
    if-ge p2, p3, :cond_e

    .line 215
    .line 216
    aget-byte v7, v6, p2

    .line 217
    .line 218
    if-eq v7, v5, :cond_d

    .line 219
    .line 220
    if-ne v7, p1, :cond_c

    .line 221
    .line 222
    goto :goto_a

    .line 223
    :cond_c
    add-int/lit8 p2, p2, 0x1

    .line 224
    .line 225
    goto :goto_9

    .line 226
    :cond_d
    :goto_a
    iget p0, v2, Lm67;->b:I

    .line 227
    .line 228
    sub-int/2addr p2, p0

    .line 229
    int-to-long p0, p2

    .line 230
    add-long/2addr p0, v0

    .line 231
    return-wide p0

    .line 232
    :cond_e
    iget p2, v2, Lm67;->c:I

    .line 233
    .line 234
    iget p3, v2, Lm67;->b:I

    .line 235
    .line 236
    sub-int/2addr p2, p3

    .line 237
    int-to-long p2, p2

    .line 238
    add-long/2addr v0, p2

    .line 239
    iget-object v2, v2, Lm67;->f:Lm67;

    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    move-wide p2, v0

    .line 245
    goto :goto_8

    .line 246
    :cond_f
    invoke-virtual {p1}, Lhy0;->h()[B

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    :goto_b
    iget-wide v5, p0, Lnw0;->b:J

    .line 251
    .line 252
    cmp-long v5, v0, v5

    .line 253
    .line 254
    if-gez v5, :cond_13

    .line 255
    .line 256
    iget-object v5, v2, Lm67;->a:[B

    .line 257
    .line 258
    iget v6, v2, Lm67;->b:I

    .line 259
    .line 260
    int-to-long v6, v6

    .line 261
    add-long/2addr v6, p2

    .line 262
    sub-long/2addr v6, v0

    .line 263
    long-to-int p2, v6

    .line 264
    iget p3, v2, Lm67;->c:I

    .line 265
    .line 266
    :goto_c
    if-ge p2, p3, :cond_12

    .line 267
    .line 268
    aget-byte v6, v5, p2

    .line 269
    .line 270
    array-length v7, p1

    .line 271
    move v8, v9

    .line 272
    :goto_d
    if-ge v8, v7, :cond_11

    .line 273
    .line 274
    aget-byte v10, p1, v8

    .line 275
    .line 276
    if-ne v6, v10, :cond_10

    .line 277
    .line 278
    iget p0, v2, Lm67;->b:I

    .line 279
    .line 280
    sub-int/2addr p2, p0

    .line 281
    int-to-long p0, p2

    .line 282
    add-long/2addr p0, v0

    .line 283
    return-wide p0

    .line 284
    :cond_10
    add-int/lit8 v8, v8, 0x1

    .line 285
    .line 286
    goto :goto_d

    .line 287
    :cond_11
    add-int/lit8 p2, p2, 0x1

    .line 288
    .line 289
    goto :goto_c

    .line 290
    :cond_12
    iget p2, v2, Lm67;->c:I

    .line 291
    .line 292
    iget p3, v2, Lm67;->b:I

    .line 293
    .line 294
    sub-int/2addr p2, p3

    .line 295
    int-to-long p2, p2

    .line 296
    add-long/2addr v0, p2

    .line 297
    iget-object v2, v2, Lm67;->f:Lm67;

    .line 298
    .line 299
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    move-wide p2, v0

    .line 303
    goto :goto_b

    .line 304
    :cond_13
    return-wide v3

    .line 305
    :cond_14
    const-string p0, "fromIndex < 0: "

    .line 306
    .line 307
    invoke-static {p2, p3, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    return-wide v0
.end method

.method public final n(JLhy0;I)Z
    .locals 9

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-gez p4, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v0, p1, v0

    .line 10
    .line 11
    if-ltz v0, :cond_4

    .line 12
    .line 13
    int-to-long v0, p4

    .line 14
    add-long/2addr v0, p1

    .line 15
    iget-wide v2, p0, Lnw0;->b:J

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p3}, Lhy0;->d()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-le p4, v0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    if-nez p4, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    const-wide/16 v0, 0x1

    .line 33
    .line 34
    add-long v6, p1, v0

    .line 35
    .line 36
    move-object v2, p0

    .line 37
    move-wide v4, p1

    .line 38
    move-object v3, p3

    .line 39
    move v8, p4

    .line 40
    invoke-static/range {v2 .. v8}, Lb;->a(Lnw0;Lhy0;JJI)J

    .line 41
    .line 42
    .line 43
    move-result-wide p0

    .line 44
    const-wide/16 p2, -0x1

    .line 45
    .line 46
    cmp-long p0, p0, p2

    .line 47
    .line 48
    if-eqz p0, :cond_4

    .line 49
    .line 50
    :goto_0
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 53
    return p0
.end method

.method public final n0()Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Lmw0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lmw0;-><init>(Lnw0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final o(J)Lhy0;
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-ltz v0, :cond_2

    .line 7
    .line 8
    const-wide/32 v2, 0x7fffffff

    .line 9
    .line 10
    .line 11
    cmp-long v0, p1, v2

    .line 12
    .line 13
    if-gtz v0, :cond_2

    .line 14
    .line 15
    iget-wide v2, p0, Lnw0;->b:J

    .line 16
    .line 17
    cmp-long v0, v2, p1

    .line 18
    .line 19
    if-ltz v0, :cond_1

    .line 20
    .line 21
    const-wide/16 v0, 0x1000

    .line 22
    .line 23
    cmp-long v0, p1, v0

    .line 24
    .line 25
    if-ltz v0, :cond_0

    .line 26
    .line 27
    long-to-int v0, p1

    .line 28
    invoke-virtual {p0, v0}, Lnw0;->z(I)Lhy0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, p1, p2}, Lnw0;->skip(J)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lhy0;

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Lnw0;->q(J)[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Lhy0;-><init>([B)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    invoke-static {}, Ld6;->d()V

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_2
    const-string p0, "byteCount: "

    .line 51
    .line 52
    invoke-static {p1, p2, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-object v1
.end method

.method public final o0()J
    .locals 14

    .line 1
    iget-wide v0, p0, Lnw0;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    move-wide v4, v2

    .line 12
    :cond_0
    iget-object v6, p0, Lnw0;->a:Lm67;

    .line 13
    .line 14
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v7, v6, Lm67;->a:[B

    .line 18
    .line 19
    iget v8, v6, Lm67;->b:I

    .line 20
    .line 21
    iget v9, v6, Lm67;->c:I

    .line 22
    .line 23
    :goto_0
    if-ge v8, v9, :cond_6

    .line 24
    .line 25
    aget-byte v10, v7, v8

    .line 26
    .line 27
    const/16 v11, 0x30

    .line 28
    .line 29
    if-lt v10, v11, :cond_1

    .line 30
    .line 31
    const/16 v11, 0x39

    .line 32
    .line 33
    if-gt v10, v11, :cond_1

    .line 34
    .line 35
    add-int/lit8 v11, v10, -0x30

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v11, 0x61

    .line 39
    .line 40
    if-lt v10, v11, :cond_2

    .line 41
    .line 42
    const/16 v11, 0x66

    .line 43
    .line 44
    if-gt v10, v11, :cond_2

    .line 45
    .line 46
    add-int/lit8 v11, v10, -0x57

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/16 v11, 0x41

    .line 50
    .line 51
    if-lt v10, v11, :cond_4

    .line 52
    .line 53
    const/16 v11, 0x46

    .line 54
    .line 55
    if-gt v10, v11, :cond_4

    .line 56
    .line 57
    add-int/lit8 v11, v10, -0x37

    .line 58
    .line 59
    :goto_1
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    .line 60
    .line 61
    and-long/2addr v12, v4

    .line 62
    cmp-long v12, v12, v2

    .line 63
    .line 64
    if-nez v12, :cond_3

    .line 65
    .line 66
    const/4 v10, 0x4

    .line 67
    shl-long/2addr v4, v10

    .line 68
    int-to-long v10, v11

    .line 69
    or-long/2addr v4, v10

    .line 70
    add-int/lit8 v8, v8, 0x1

    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    new-instance p0, Lnw0;

    .line 76
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v4, v5}, Lnw0;->S(J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v10}, Lnw0;->J(I)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 87
    .line 88
    invoke-virtual {p0}, Lnw0;->v()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string v1, "Number too large: "

    .line 93
    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_4
    if-eqz v0, :cond_5

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 107
    .line 108
    invoke-static {v10}, Lk55;->F(B)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_6
    :goto_2
    if-ne v8, v9, :cond_7

    .line 123
    .line 124
    invoke-virtual {v6}, Lm67;->a()Lm67;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    iput-object v7, p0, Lnw0;->a:Lm67;

    .line 129
    .line 130
    invoke-static {v6}, Lo67;->a(Lm67;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_7
    iput v8, v6, Lm67;->b:I

    .line 135
    .line 136
    :goto_3
    if-nez v1, :cond_8

    .line 137
    .line 138
    iget-object v6, p0, Lnw0;->a:Lm67;

    .line 139
    .line 140
    if-nez v6, :cond_0

    .line 141
    .line 142
    :cond_8
    iget-wide v1, p0, Lnw0;->b:J

    .line 143
    .line 144
    int-to-long v6, v0

    .line 145
    sub-long/2addr v1, v6

    .line 146
    iput-wide v1, p0, Lnw0;->b:J

    .line 147
    .line 148
    return-wide v4

    .line 149
    :cond_9
    invoke-static {}, Ld6;->d()V

    .line 150
    .line 151
    .line 152
    return-wide v2
.end method

.method public final peek()Ltf6;
    .locals 1

    .line 1
    new-instance v0, Lsy5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lsy5;-><init>(Lzw0;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ltf6;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ltf6;-><init>(Lij7;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final q(J)[B
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    if-gtz v0, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, Lnw0;->b:J

    .line 15
    .line 16
    cmp-long v0, v0, p1

    .line 17
    .line 18
    if-ltz v0, :cond_0

    .line 19
    .line 20
    long-to-int p1, p1

    .line 21
    new-array p1, p1, [B

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lnw0;->readFully([B)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    invoke-static {}, Ld6;->d()V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_1
    const-string p0, "byteCount: "

    .line 33
    .line 34
    invoke-static {p1, p2, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0
.end method

.method public final q0()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Llw0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Llw0;-><init>(Lnw0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final r()S
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnw0;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const v0, 0xff00

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, p0

    .line 9
    ushr-int/lit8 v0, v0, 0x8

    .line 10
    .line 11
    and-int/lit16 p0, p0, 0xff

    .line 12
    .line 13
    shl-int/lit8 p0, p0, 0x8

    .line 14
    .line 15
    or-int/2addr p0, v0

    .line 16
    int-to-short p0, p0

    .line 17
    return p0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iget-object v0, p0, Lnw0;->a:Lm67;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Lm67;->c:I

    iget v3, v0, Lm67;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 62
    iget-object v2, v0, Lm67;->a:[B

    iget v3, v0, Lm67;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 63
    iget p1, v0, Lm67;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lm67;->b:I

    .line 64
    iget-wide v2, p0, Lnw0;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lnw0;->b:J

    .line 65
    iget v2, v0, Lm67;->c:I

    if-ne p1, v2, :cond_1

    .line 66
    invoke-virtual {v0}, Lm67;->a()Lm67;

    move-result-object p1

    iput-object p1, p0, Lnw0;->a:Lm67;

    .line 67
    invoke-static {v0}, Lo67;->a(Lm67;)V

    :cond_1
    return v1
.end method

.method public final read([BII)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    int-to-long v1, v0

    .line 6
    int-to-long v3, p2

    .line 7
    int-to-long v5, p3

    .line 8
    invoke-static/range {v1 .. v6}, Lk55;->c(JJJ)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lnw0;->a:Lm67;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :cond_0
    iget v1, v0, Lm67;->c:I

    .line 18
    .line 19
    iget v2, v0, Lm67;->b:I

    .line 20
    .line 21
    sub-int/2addr v1, v2

    .line 22
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    iget-object v1, v0, Lm67;->a:[B

    .line 27
    .line 28
    iget v2, v0, Lm67;->b:I

    .line 29
    .line 30
    add-int v3, v2, p3

    .line 31
    .line 32
    invoke-static {v1, p2, v2, p1, v3}, Lx50;->h0([BII[BI)V

    .line 33
    .line 34
    .line 35
    iget p1, v0, Lm67;->b:I

    .line 36
    .line 37
    add-int/2addr p1, p3

    .line 38
    iput p1, v0, Lm67;->b:I

    .line 39
    .line 40
    iget-wide v1, p0, Lnw0;->b:J

    .line 41
    .line 42
    int-to-long v3, p3

    .line 43
    sub-long/2addr v1, v3

    .line 44
    iput-wide v1, p0, Lnw0;->b:J

    .line 45
    .line 46
    iget p2, v0, Lm67;->c:I

    .line 47
    .line 48
    if-ne p1, p2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Lm67;->a()Lm67;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lnw0;->a:Lm67;

    .line 55
    .line 56
    invoke-static {v0}, Lo67;->a(Lm67;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return p3
.end method

.method public final readByte()B
    .locals 9

    .line 1
    iget-wide v0, p0, Lnw0;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lnw0;->a:Lm67;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lm67;->b:I

    .line 15
    .line 16
    iget v2, v0, Lm67;->c:I

    .line 17
    .line 18
    iget-object v3, v0, Lm67;->a:[B

    .line 19
    .line 20
    add-int/lit8 v4, v1, 0x1

    .line 21
    .line 22
    aget-byte v1, v3, v1

    .line 23
    .line 24
    iget-wide v5, p0, Lnw0;->b:J

    .line 25
    .line 26
    const-wide/16 v7, 0x1

    .line 27
    .line 28
    sub-long/2addr v5, v7

    .line 29
    iput-wide v5, p0, Lnw0;->b:J

    .line 30
    .line 31
    if-ne v4, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lm67;->a()Lm67;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, p0, Lnw0;->a:Lm67;

    .line 38
    .line 39
    invoke-static {v0}, Lo67;->a(Lm67;)V

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :cond_0
    iput v4, v0, Lm67;->b:I

    .line 44
    .line 45
    return v1

    .line 46
    :cond_1
    invoke-static {}, Ld6;->d()V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method public final readFully([B)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v1, p1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    array-length v1, p1

    .line 9
    sub-int/2addr v1, v0

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Lnw0;->read([BII)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Ld6;->d()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final readInt()I
    .locals 9

    .line 1
    iget-wide v0, p0, Lnw0;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x4

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lnw0;->a:Lm67;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lm67;->b:I

    .line 15
    .line 16
    iget v4, v0, Lm67;->c:I

    .line 17
    .line 18
    sub-int v5, v4, v1

    .line 19
    .line 20
    int-to-long v5, v5

    .line 21
    cmp-long v5, v5, v2

    .line 22
    .line 23
    if-gez v5, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lnw0;->readByte()B

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 30
    .line 31
    shl-int/lit8 v0, v0, 0x18

    .line 32
    .line 33
    invoke-virtual {p0}, Lnw0;->readByte()B

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    and-int/lit16 v1, v1, 0xff

    .line 38
    .line 39
    shl-int/lit8 v1, v1, 0x10

    .line 40
    .line 41
    or-int/2addr v0, v1

    .line 42
    invoke-virtual {p0}, Lnw0;->readByte()B

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    and-int/lit16 v1, v1, 0xff

    .line 47
    .line 48
    shl-int/lit8 v1, v1, 0x8

    .line 49
    .line 50
    or-int/2addr v0, v1

    .line 51
    invoke-virtual {p0}, Lnw0;->readByte()B

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    and-int/lit16 p0, p0, 0xff

    .line 56
    .line 57
    or-int/2addr p0, v0

    .line 58
    return p0

    .line 59
    :cond_0
    iget-object v5, v0, Lm67;->a:[B

    .line 60
    .line 61
    add-int/lit8 v6, v1, 0x1

    .line 62
    .line 63
    aget-byte v7, v5, v1

    .line 64
    .line 65
    and-int/lit16 v7, v7, 0xff

    .line 66
    .line 67
    shl-int/lit8 v7, v7, 0x18

    .line 68
    .line 69
    add-int/lit8 v8, v1, 0x2

    .line 70
    .line 71
    aget-byte v6, v5, v6

    .line 72
    .line 73
    and-int/lit16 v6, v6, 0xff

    .line 74
    .line 75
    shl-int/lit8 v6, v6, 0x10

    .line 76
    .line 77
    or-int/2addr v6, v7

    .line 78
    add-int/lit8 v7, v1, 0x3

    .line 79
    .line 80
    aget-byte v8, v5, v8

    .line 81
    .line 82
    and-int/lit16 v8, v8, 0xff

    .line 83
    .line 84
    shl-int/lit8 v8, v8, 0x8

    .line 85
    .line 86
    or-int/2addr v6, v8

    .line 87
    add-int/lit8 v1, v1, 0x4

    .line 88
    .line 89
    aget-byte v5, v5, v7

    .line 90
    .line 91
    and-int/lit16 v5, v5, 0xff

    .line 92
    .line 93
    or-int/2addr v5, v6

    .line 94
    iget-wide v6, p0, Lnw0;->b:J

    .line 95
    .line 96
    sub-long/2addr v6, v2

    .line 97
    iput-wide v6, p0, Lnw0;->b:J

    .line 98
    .line 99
    if-ne v1, v4, :cond_1

    .line 100
    .line 101
    invoke-virtual {v0}, Lm67;->a()Lm67;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iput-object v1, p0, Lnw0;->a:Lm67;

    .line 106
    .line 107
    invoke-static {v0}, Lo67;->a(Lm67;)V

    .line 108
    .line 109
    .line 110
    return v5

    .line 111
    :cond_1
    iput v1, v0, Lm67;->b:I

    .line 112
    .line 113
    return v5

    .line 114
    :cond_2
    invoke-static {}, Ld6;->d()V

    .line 115
    .line 116
    .line 117
    const/4 p0, 0x0

    .line 118
    return p0
.end method

.method public final readShort()S
    .locals 9

    .line 1
    iget-wide v0, p0, Lnw0;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x2

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lnw0;->a:Lm67;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lm67;->b:I

    .line 15
    .line 16
    iget v4, v0, Lm67;->c:I

    .line 17
    .line 18
    sub-int v5, v4, v1

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    if-ge v5, v6, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lnw0;->readByte()B

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    and-int/lit16 v0, v0, 0xff

    .line 28
    .line 29
    shl-int/lit8 v0, v0, 0x8

    .line 30
    .line 31
    invoke-virtual {p0}, Lnw0;->readByte()B

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    and-int/lit16 p0, p0, 0xff

    .line 36
    .line 37
    or-int/2addr p0, v0

    .line 38
    int-to-short p0, p0

    .line 39
    return p0

    .line 40
    :cond_0
    iget-object v5, v0, Lm67;->a:[B

    .line 41
    .line 42
    add-int/lit8 v7, v1, 0x1

    .line 43
    .line 44
    aget-byte v8, v5, v1

    .line 45
    .line 46
    and-int/lit16 v8, v8, 0xff

    .line 47
    .line 48
    shl-int/lit8 v8, v8, 0x8

    .line 49
    .line 50
    add-int/2addr v1, v6

    .line 51
    aget-byte v5, v5, v7

    .line 52
    .line 53
    and-int/lit16 v5, v5, 0xff

    .line 54
    .line 55
    or-int/2addr v5, v8

    .line 56
    iget-wide v6, p0, Lnw0;->b:J

    .line 57
    .line 58
    sub-long/2addr v6, v2

    .line 59
    iput-wide v6, p0, Lnw0;->b:J

    .line 60
    .line 61
    if-ne v1, v4, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Lm67;->a()Lm67;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lnw0;->a:Lm67;

    .line 68
    .line 69
    invoke-static {v0}, Lo67;->a(Lm67;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iput v1, v0, Lm67;->b:I

    .line 74
    .line 75
    :goto_0
    int-to-short p0, v5

    .line 76
    return p0

    .line 77
    :cond_2
    invoke-static {}, Ld6;->d()V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    return p0
.end method

.method public final request(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnw0;->b:J

    .line 2
    .line 3
    cmp-long p0, v0, p1

    .line 4
    .line 5
    if-ltz p0, :cond_0

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

.method public final skip(J)V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lnw0;->a:Lm67;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, v0, Lm67;->c:I

    .line 12
    .line 13
    iget v2, v0, Lm67;->b:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    int-to-long v1, v1

    .line 17
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    long-to-int v1, v1

    .line 22
    iget-wide v2, p0, Lnw0;->b:J

    .line 23
    .line 24
    int-to-long v4, v1

    .line 25
    sub-long/2addr v2, v4

    .line 26
    iput-wide v2, p0, Lnw0;->b:J

    .line 27
    .line 28
    sub-long/2addr p1, v4

    .line 29
    iget v2, v0, Lm67;->b:I

    .line 30
    .line 31
    add-int/2addr v2, v1

    .line 32
    iput v2, v0, Lm67;->b:I

    .line 33
    .line 34
    iget v1, v0, Lm67;->c:I

    .line 35
    .line 36
    if-ne v2, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lm67;->a()Lm67;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lnw0;->a:Lm67;

    .line 43
    .line 44
    invoke-static {v0}, Lo67;->a(Lm67;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {}, Ld6;->d()V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public final t()[B
    .locals 2

    .line 1
    iget-wide v0, p0, Lnw0;->b:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lnw0;->q(J)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lnw0;->b:J

    .line 2
    .line 3
    const-wide/32 v2, 0x7fffffff

    .line 4
    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-gtz v2, :cond_0

    .line 9
    .line 10
    long-to-int v0, v0

    .line 11
    invoke-virtual {p0, v0}, Lnw0;->z(I)Lhy0;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lhy0;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-wide v0, p0, Lnw0;->b:J

    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "size > Int.MAX_VALUE: "

    .line 25
    .line 26
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public final u(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-ltz v0, :cond_4

    .line 10
    .line 11
    const-wide/32 v2, 0x7fffffff

    .line 12
    .line 13
    .line 14
    cmp-long v2, p1, v2

    .line 15
    .line 16
    if-gtz v2, :cond_4

    .line 17
    .line 18
    iget-wide v2, p0, Lnw0;->b:J

    .line 19
    .line 20
    cmp-long v2, v2, p1

    .line 21
    .line 22
    if-ltz v2, :cond_3

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string p0, ""

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    iget-object v0, p0, Lnw0;->a:Lm67;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget v1, v0, Lm67;->b:I

    .line 35
    .line 36
    int-to-long v2, v1

    .line 37
    add-long/2addr v2, p1

    .line 38
    iget v4, v0, Lm67;->c:I

    .line 39
    .line 40
    int-to-long v4, v4

    .line 41
    cmp-long v2, v2, v4

    .line 42
    .line 43
    if-lez v2, :cond_1

    .line 44
    .line 45
    new-instance v0, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Lnw0;->q(J)[B

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v0, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_1
    new-instance v2, Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, v0, Lm67;->a:[B

    .line 58
    .line 59
    long-to-int v4, p1

    .line 60
    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 61
    .line 62
    .line 63
    iget p3, v0, Lm67;->b:I

    .line 64
    .line 65
    add-int/2addr p3, v4

    .line 66
    iput p3, v0, Lm67;->b:I

    .line 67
    .line 68
    iget-wide v3, p0, Lnw0;->b:J

    .line 69
    .line 70
    sub-long/2addr v3, p1

    .line 71
    iput-wide v3, p0, Lnw0;->b:J

    .line 72
    .line 73
    iget p1, v0, Lm67;->c:I

    .line 74
    .line 75
    if-ne p3, p1, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Lm67;->a()Lm67;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lnw0;->a:Lm67;

    .line 82
    .line 83
    invoke-static {v0}, Lo67;->a(Lm67;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    return-object v2

    .line 87
    :cond_3
    invoke-static {}, Ld6;->d()V

    .line 88
    .line 89
    .line 90
    return-object v1

    .line 91
    :cond_4
    const-string p0, "byteCount: "

    .line 92
    .line 93
    invoke-static {p1, p2, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-object v1
.end method

.method public final v()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lnw0;->b:J

    .line 2
    .line 3
    sget-object v2, Lf51;->a:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lnw0;->u(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 53
    invoke-virtual {p0, v2}, Lnw0;->A(I)Lm67;

    move-result-object v2

    .line 54
    iget v3, v2, Lm67;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 55
    iget-object v4, v2, Lm67;->a:[B

    iget v5, v2, Lm67;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 56
    iget v4, v2, Lm67;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lm67;->c:I

    goto :goto_0

    .line 57
    :cond_0
    iget-wide v1, p0, Lnw0;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lnw0;->b:J

    return v0
.end method

.method public final write([B)Lyw0;
    .locals 2

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 59
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnw0;->write([BII)V

    return-object p0
.end method

.method public final bridge synthetic write([BII)Lyw0;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lnw0;->write([BII)V

    return-object p0
.end method

.method public final write([BII)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    int-to-long v1, v0

    .line 6
    int-to-long v3, p2

    .line 7
    int-to-long v5, p3

    .line 8
    invoke-static/range {v1 .. v6}, Lk55;->c(JJJ)V

    .line 9
    .line 10
    .line 11
    add-int/2addr p3, p2

    .line 12
    :goto_0
    if-ge p2, p3, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lnw0;->A(I)Lm67;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sub-int v1, p3, p2

    .line 20
    .line 21
    iget v2, v0, Lm67;->c:I

    .line 22
    .line 23
    rsub-int v2, v2, 0x2000

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, v0, Lm67;->a:[B

    .line 30
    .line 31
    iget v3, v0, Lm67;->c:I

    .line 32
    .line 33
    add-int v4, p2, v1

    .line 34
    .line 35
    invoke-static {p1, v3, p2, v2, v4}, Lx50;->h0([BII[BI)V

    .line 36
    .line 37
    .line 38
    iget p2, v0, Lm67;->c:I

    .line 39
    .line 40
    add-int/2addr p2, v1

    .line 41
    iput p2, v0, Lm67;->c:I

    .line 42
    .line 43
    move p2, v4

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-wide p1, p0, Lnw0;->b:J

    .line 46
    .line 47
    add-long/2addr p1, v5

    .line 48
    iput-wide p1, p0, Lnw0;->b:J

    .line 49
    .line 50
    return-void
.end method

.method public final bridge synthetic writeByte(I)Lyw0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnw0;->J(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final bridge synthetic writeInt(I)Lyw0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnw0;->U(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final bridge synthetic writeShort(I)Lyw0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnw0;->W(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final x()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lnw0;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final y(Lnu5;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0}, Lb;->d(Lnw0;Lnu5;Z)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object p1, p1, Lnu5;->a:[Lhy0;

    .line 14
    .line 15
    aget-object p1, p1, v0

    .line 16
    .line 17
    invoke-virtual {p1}, Lhy0;->d()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    int-to-long v1, p1

    .line 22
    invoke-virtual {p0, v1, v2}, Lnw0;->skip(J)V

    .line 23
    .line 24
    .line 25
    return v0
.end method

.method public final z(I)Lhy0;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lhy0;->d:Lhy0;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-wide v0, p0, Lnw0;->b:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    int-to-long v4, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lk55;->c(JJJ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lnw0;->a:Lm67;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v2, p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget v4, v0, Lm67;->c:I

    .line 25
    .line 26
    iget v5, v0, Lm67;->b:I

    .line 27
    .line 28
    if-eq v4, v5, :cond_1

    .line 29
    .line 30
    sub-int/2addr v4, v5

    .line 31
    add-int/2addr v2, v4

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    iget-object v0, v0, Lm67;->f:Lm67;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string p0, "s.limit == s.pos"

    .line 38
    .line 39
    invoke-static {p0}, Le6;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0

    .line 44
    :cond_2
    new-array v0, v3, [[B

    .line 45
    .line 46
    mul-int/lit8 v2, v3, 0x2

    .line 47
    .line 48
    new-array v2, v2, [I

    .line 49
    .line 50
    iget-object p0, p0, Lnw0;->a:Lm67;

    .line 51
    .line 52
    move v4, v1

    .line 53
    :goto_1
    if-ge v1, p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v5, p0, Lm67;->a:[B

    .line 59
    .line 60
    aput-object v5, v0, v4

    .line 61
    .line 62
    iget v5, p0, Lm67;->c:I

    .line 63
    .line 64
    iget v6, p0, Lm67;->b:I

    .line 65
    .line 66
    sub-int/2addr v5, v6

    .line 67
    add-int/2addr v1, v5

    .line 68
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    aput v5, v2, v4

    .line 73
    .line 74
    add-int v5, v4, v3

    .line 75
    .line 76
    iget v6, p0, Lm67;->b:I

    .line 77
    .line 78
    aput v6, v2, v5

    .line 79
    .line 80
    const/4 v5, 0x1

    .line 81
    iput-boolean v5, p0, Lm67;->d:Z

    .line 82
    .line 83
    add-int/2addr v4, v5

    .line 84
    iget-object p0, p0, Lm67;->f:Lm67;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    new-instance p0, Lp67;

    .line 88
    .line 89
    invoke-direct {p0, v0, v2}, Lp67;-><init>([[B[I)V

    .line 90
    .line 91
    .line 92
    return-object p0
.end method
