.class public final Lfq4;
.super Loe3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lv40;

.field public b:Lpe3;

.field public c:Laq4;

.field public d:Lcf6;

.field public e:Lpq4;

.field public final f:I

.field public k:Z

.field public n:Z

.field public p:Z

.field public q:I

.field public r:Z

.field public t:Ljava/io/IOException;

.field public final x:[B

.field public final y:[B


# direct methods
.method public constructor <init>(Lpe3;Leq4;Lv40;)V
    .locals 12

    .line 1
    move-object v11, p3

    .line 2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lfq4;->k:Z

    .line 7
    .line 8
    iput-boolean v1, p0, Lfq4;->n:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lfq4;->p:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, p0, Lfq4;->q:I

    .line 14
    .line 15
    iput-boolean v2, p0, Lfq4;->r:Z

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    iput-object v3, p0, Lfq4;->t:Ljava/io/IOException;

    .line 19
    .line 20
    const/4 v3, 0x6

    .line 21
    new-array v3, v3, [B

    .line 22
    .line 23
    iput-object v3, p0, Lfq4;->x:[B

    .line 24
    .line 25
    new-array v1, v1, [B

    .line 26
    .line 27
    iput-object v1, p0, Lfq4;->y:[B

    .line 28
    .line 29
    iput-object v11, p0, Lfq4;->a:Lv40;

    .line 30
    .line 31
    iput-object p1, p0, Lfq4;->b:Lpe3;

    .line 32
    .line 33
    new-instance v1, Lcf6;

    .line 34
    .line 35
    invoke-direct {v1, p3}, Lcf6;-><init>(Lv40;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lfq4;->d:Lcf6;

    .line 39
    .line 40
    iget v6, p2, Leq4;->a:I

    .line 41
    .line 42
    const/high16 v3, 0x10000

    .line 43
    .line 44
    if-le v3, v6, :cond_0

    .line 45
    .line 46
    sub-int v2, v3, v6

    .line 47
    .line 48
    :cond_0
    move v7, v2

    .line 49
    iget v2, p2, Leq4;->b:I

    .line 50
    .line 51
    iget v3, p2, Leq4;->c:I

    .line 52
    .line 53
    iget v4, p2, Leq4;->d:I

    .line 54
    .line 55
    iget v5, p2, Leq4;->e:I

    .line 56
    .line 57
    iget v8, p2, Leq4;->f:I

    .line 58
    .line 59
    iget v9, p2, Leq4;->k:I

    .line 60
    .line 61
    iget v10, p2, Leq4;->n:I

    .line 62
    .line 63
    invoke-static/range {v1 .. v11}, Lpq4;->f(Lbf6;IIIIIIIIILv40;)Lpq4;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lfq4;->e:Lpq4;

    .line 68
    .line 69
    iget-object v1, v1, Lpq4;->n:Laq4;

    .line 70
    .line 71
    iput-object v1, p0, Lfq4;->c:Laq4;

    .line 72
    .line 73
    iget v1, p2, Leq4;->d:I

    .line 74
    .line 75
    mul-int/lit8 v1, v1, 0x5

    .line 76
    .line 77
    iget v2, p2, Leq4;->c:I

    .line 78
    .line 79
    add-int/2addr v1, v2

    .line 80
    mul-int/lit8 v1, v1, 0x9

    .line 81
    .line 82
    iget v0, p2, Leq4;->b:I

    .line 83
    .line 84
    add-int/2addr v1, v0

    .line 85
    iput v1, p0, Lfq4;->f:I

    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 1
    iget-object v0, p0, Lfq4;->d:Lcf6;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    const/4 v3, 0x5

    .line 9
    if-ge v2, v3, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0}, Lbf6;->W()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    new-instance p0, Ljava/lang/Error;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_0
    iget v0, v0, Lcf6;->n:I

    .line 24
    .line 25
    iget-object v2, p0, Lfq4;->e:Lpq4;

    .line 26
    .line 27
    iget v4, v2, Lpq4;->A:I

    .line 28
    .line 29
    add-int/lit8 v5, v0, 0x2

    .line 30
    .line 31
    const/4 v6, 0x3

    .line 32
    iget-object v7, p0, Lfq4;->x:[B

    .line 33
    .line 34
    const/4 v8, 0x1

    .line 35
    const/4 v9, 0x2

    .line 36
    if-ge v5, v4, :cond_5

    .line 37
    .line 38
    iget-boolean v2, p0, Lfq4;->p:Z

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget-boolean v5, p0, Lfq4;->k:Z

    .line 43
    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    const/16 v5, 0xe0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 v5, 0xc0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-boolean v5, p0, Lfq4;->n:Z

    .line 53
    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    const/16 v5, 0xa0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const/16 v5, 0x80

    .line 60
    .line 61
    :goto_1
    add-int/lit8 v10, v4, -0x1

    .line 62
    .line 63
    ushr-int/lit8 v11, v10, 0x10

    .line 64
    .line 65
    or-int/2addr v5, v11

    .line 66
    int-to-byte v5, v5

    .line 67
    aput-byte v5, v7, v1

    .line 68
    .line 69
    ushr-int/lit8 v5, v10, 0x8

    .line 70
    .line 71
    int-to-byte v5, v5

    .line 72
    aput-byte v5, v7, v8

    .line 73
    .line 74
    int-to-byte v5, v10

    .line 75
    aput-byte v5, v7, v9

    .line 76
    .line 77
    sub-int/2addr v0, v8

    .line 78
    ushr-int/lit8 v5, v0, 0x8

    .line 79
    .line 80
    int-to-byte v5, v5

    .line 81
    aput-byte v5, v7, v6

    .line 82
    .line 83
    const/4 v5, 0x4

    .line 84
    int-to-byte v0, v0

    .line 85
    aput-byte v0, v7, v5

    .line 86
    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    iget v0, p0, Lfq4;->f:I

    .line 90
    .line 91
    int-to-byte v0, v0

    .line 92
    aput-byte v0, v7, v3

    .line 93
    .line 94
    iget-object v0, p0, Lfq4;->b:Lpe3;

    .line 95
    .line 96
    const/4 v2, 0x6

    .line 97
    invoke-virtual {v0, v7, v1, v2}, Lpe3;->write([BII)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    iget-object v0, p0, Lfq4;->b:Lpe3;

    .line 102
    .line 103
    invoke-virtual {v0, v7, v1, v3}, Lpe3;->write([BII)V

    .line 104
    .line 105
    .line 106
    :goto_2
    iget-object v0, p0, Lfq4;->d:Lcf6;

    .line 107
    .line 108
    iget-object v2, p0, Lfq4;->b:Lpe3;

    .line 109
    .line 110
    iget-object v3, v0, Lcf6;->m:[B

    .line 111
    .line 112
    iget v0, v0, Lcf6;->n:I

    .line 113
    .line 114
    invoke-virtual {v2, v3, v1, v0}, Lpe3;->write([BII)V

    .line 115
    .line 116
    .line 117
    iput-boolean v1, p0, Lfq4;->p:Z

    .line 118
    .line 119
    iput-boolean v1, p0, Lfq4;->n:Z

    .line 120
    .line 121
    iput-boolean v1, p0, Lfq4;->k:Z

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_5
    invoke-virtual {v2}, Lpq4;->a()V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lfq4;->e:Lpq4;

    .line 128
    .line 129
    iget v4, v0, Lpq4;->A:I

    .line 130
    .line 131
    move v0, v4

    .line 132
    :goto_3
    if-lez v0, :cond_7

    .line 133
    .line 134
    const/high16 v2, 0x10000

    .line 135
    .line 136
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    iget-boolean v3, p0, Lfq4;->k:Z

    .line 141
    .line 142
    if-eqz v3, :cond_6

    .line 143
    .line 144
    move v3, v8

    .line 145
    goto :goto_4

    .line 146
    :cond_6
    move v3, v9

    .line 147
    :goto_4
    int-to-byte v3, v3

    .line 148
    aput-byte v3, v7, v1

    .line 149
    .line 150
    add-int/lit8 v3, v2, -0x1

    .line 151
    .line 152
    ushr-int/lit8 v5, v3, 0x8

    .line 153
    .line 154
    int-to-byte v5, v5

    .line 155
    aput-byte v5, v7, v8

    .line 156
    .line 157
    int-to-byte v3, v3

    .line 158
    aput-byte v3, v7, v9

    .line 159
    .line 160
    iget-object v3, p0, Lfq4;->b:Lpe3;

    .line 161
    .line 162
    invoke-virtual {v3, v7, v1, v6}, Lpe3;->write([BII)V

    .line 163
    .line 164
    .line 165
    iget-object v3, p0, Lfq4;->c:Laq4;

    .line 166
    .line 167
    iget-object v5, p0, Lfq4;->b:Lpe3;

    .line 168
    .line 169
    iget-object v10, v3, Laq4;->e:[B

    .line 170
    .line 171
    iget v3, v3, Laq4;->g:I

    .line 172
    .line 173
    add-int/2addr v3, v8

    .line 174
    sub-int/2addr v3, v0

    .line 175
    invoke-virtual {v5, v10, v3, v2}, Lpe3;->write([BII)V

    .line 176
    .line 177
    .line 178
    sub-int/2addr v0, v2

    .line 179
    iput-boolean v1, p0, Lfq4;->k:Z

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_7
    iput-boolean v8, p0, Lfq4;->n:Z

    .line 183
    .line 184
    :goto_5
    iget v0, p0, Lfq4;->q:I

    .line 185
    .line 186
    sub-int/2addr v0, v4

    .line 187
    iput v0, p0, Lfq4;->q:I

    .line 188
    .line 189
    iget-object v0, p0, Lfq4;->e:Lpq4;

    .line 190
    .line 191
    iput v1, v0, Lpq4;->A:I

    .line 192
    .line 193
    iget-object p0, p0, Lfq4;->d:Lcf6;

    .line 194
    .line 195
    invoke-virtual {p0}, Lcf6;->Y()V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfq4;->t:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lfq4;->c:Laq4;

    .line 6
    .line 7
    iget v1, v0, Laq4;->j:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    iput v1, v0, Laq4;->h:I

    .line 12
    .line 13
    iput-boolean v2, v0, Laq4;->i:Z

    .line 14
    .line 15
    invoke-virtual {v0}, Laq4;->g()V

    .line 16
    .line 17
    .line 18
    :goto_0
    :try_start_0
    iget v0, p0, Lfq4;->q:I

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lfq4;->e:Lpq4;

    .line 23
    .line 24
    invoke-virtual {v0}, Lpq4;->b()Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lfq4;->a()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object v0, p0, Lfq4;->b:Lpe3;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lpe3;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    iput-boolean v2, p0, Lfq4;->r:Z

    .line 40
    .line 41
    iget-object v0, p0, Lfq4;->e:Lpq4;

    .line 42
    .line 43
    iget-object v0, v0, Lpq4;->n:Laq4;

    .line 44
    .line 45
    iget-object v1, p0, Lfq4;->a:Lv40;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Laq4;->h(Lv40;)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lfq4;->e:Lpq4;

    .line 52
    .line 53
    iput-object v0, p0, Lfq4;->c:Laq4;

    .line 54
    .line 55
    iget-object v2, p0, Lfq4;->d:Lcf6;

    .line 56
    .line 57
    iget-object v2, v2, Lcf6;->m:[B

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lv40;->c([B)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lfq4;->d:Lcf6;

    .line 63
    .line 64
    return-void

    .line 65
    :goto_1
    iput-object v0, p0, Lfq4;->t:Ljava/io/IOException;

    .line 66
    .line 67
    throw v0

    .line 68
    :cond_1
    throw v0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfq4;->b:Lpe3;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lfq4;->r:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lfq4;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lfq4;->b:Lpe3;

    .line 13
    .line 14
    invoke-virtual {v0}, Lpe3;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    iget-object v1, p0, Lfq4;->t:Ljava/io/IOException;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iput-object v0, p0, Lfq4;->t:Ljava/io/IOException;

    .line 24
    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lfq4;->b:Lpe3;

    .line 27
    .line 28
    :cond_2
    iget-object p0, p0, Lfq4;->t:Ljava/io/IOException;

    .line 29
    .line 30
    if-nez p0, :cond_3

    .line 31
    .line 32
    return-void

    .line 33
    :cond_3
    throw p0
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfq4;->t:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lfq4;->r:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lfq4;->c:Laq4;

    .line 10
    .line 11
    iget v1, v0, Laq4;->j:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    iput v1, v0, Laq4;->h:I

    .line 16
    .line 17
    invoke-virtual {v0}, Laq4;->g()V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget v0, p0, Lfq4;->q:I

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lfq4;->e:Lpq4;

    .line 25
    .line 26
    invoke-virtual {v0}, Lpq4;->b()Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lfq4;->a()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v0, p0, Lfq4;->b:Lpe3;

    .line 36
    .line 37
    invoke-virtual {v0}, Lpe3;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_1
    iput-object v0, p0, Lfq4;->t:Ljava/io/IOException;

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    new-instance p0, Lay8;

    .line 45
    .line 46
    const-string v0, "Stream finished or closed"

    .line 47
    .line 48
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    throw v0
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 65
    iget-object v0, p0, Lfq4;->y:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, v0, v1, p1}, Lfq4;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    .line 1
    if-ltz p2, :cond_4

    .line 2
    .line 3
    if-ltz p3, :cond_4

    .line 4
    .line 5
    add-int v0, p2, p3

    .line 6
    .line 7
    if-ltz v0, :cond_4

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    if-gt v0, v1, :cond_4

    .line 11
    .line 12
    iget-object v0, p0, Lfq4;->t:Ljava/io/IOException;

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    iget-boolean v0, p0, Lfq4;->r:Z

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    :cond_0
    :goto_0
    if-lez p3, :cond_1

    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lfq4;->c:Laq4;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3}, Laq4;->a([BII)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/2addr p2, v0

    .line 29
    sub-int/2addr p3, v0

    .line 30
    iget v1, p0, Lfq4;->q:I

    .line 31
    .line 32
    add-int/2addr v1, v0

    .line 33
    iput v1, p0, Lfq4;->q:I

    .line 34
    .line 35
    iget-object v0, p0, Lfq4;->e:Lpq4;

    .line 36
    .line 37
    invoke-virtual {v0}, Lpq4;->b()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lfq4;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    iput-object p1, p0, Lfq4;->t:Ljava/io/IOException;

    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    return-void

    .line 52
    :cond_2
    new-instance p0, Lay8;

    .line 53
    .line 54
    const-string p1, "Stream finished or closed"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_3
    throw v0

    .line 61
    :cond_4
    invoke-static {}, Ll0;->a()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
