.class public final Lny0;
.super Ljava/lang/Object;

# interfaces
.implements Ld;


# instance fields
.field public a:Lj;

.field public b:I

.field public c:Z

.field public d:[B

.field public e:[B

.field public f:I

.field public g:Lz61;

.field public h:[B

.field public i:Lby0;

.field public j:Lby0;


# direct methods
.method public static g(IZ)I
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/16 p1, 0x20

    .line 4
    .line 5
    if-lt p0, p1, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x80

    .line 8
    .line 9
    if-gt p0, p1, :cond_0

    .line 10
    .line 11
    and-int/lit8 p1, p0, 0xf

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "tag length in octets must be one of {4,6,8,10,12,14,16}"

    .line 17
    .line 18
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_1
    :goto_0
    ushr-int/lit8 p0, p0, 0x3

    .line 24
    .line 25
    return p0
.end method


# virtual methods
.method public final a(ZLz61;)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lny0;->c:Z

    .line 2
    .line 3
    instance-of v0, p2, Le;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p2, Le;

    .line 8
    .line 9
    iget-object v0, p2, Le;->b:[B

    .line 10
    .line 11
    invoke-static {v0}, Lms8;->k([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lny0;->d:[B

    .line 16
    .line 17
    iget-object v0, p2, Le;->a:[B

    .line 18
    .line 19
    invoke-static {v0}, Lms8;->k([B)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lny0;->e:[B

    .line 24
    .line 25
    iget v0, p2, Le;->d:I

    .line 26
    .line 27
    invoke-static {v0, p1}, Lny0;->g(IZ)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lny0;->f:I

    .line 32
    .line 33
    iget-object p1, p2, Le;->c:Loo4;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    instance-of v0, p2, Lvw5;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    check-cast p2, Lvw5;

    .line 41
    .line 42
    iget-object v0, p2, Lvw5;->a:[B

    .line 43
    .line 44
    iput-object v0, p0, Lny0;->d:[B

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lny0;->e:[B

    .line 48
    .line 49
    const/16 v0, 0x40

    .line 50
    .line 51
    invoke-static {v0, p1}, Lny0;->g(IZ)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput p1, p0, Lny0;->f:I

    .line 56
    .line 57
    iget-object p1, p2, Lvw5;->b:Lz61;

    .line 58
    .line 59
    :goto_0
    if-eqz p1, :cond_1

    .line 60
    .line 61
    iput-object p1, p0, Lny0;->g:Lz61;

    .line 62
    .line 63
    :cond_1
    iget-object p1, p0, Lny0;->d:[B

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    array-length p2, p1

    .line 68
    const/4 v0, 0x7

    .line 69
    if-lt p2, v0, :cond_2

    .line 70
    .line 71
    array-length p1, p1

    .line 72
    const/16 p2, 0xd

    .line 73
    .line 74
    if-gt p1, p2, :cond_2

    .line 75
    .line 76
    iget-object p1, p0, Lny0;->a:Lj;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lny0;->i:Lby0;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lny0;->j:Lby0;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    const-string p0, "nonce must have length from 7 to 13 octets"

    .line 93
    .line 94
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const-string p1, "invalid parameters passed to CCM: "

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final b(I[B[B)I
    .locals 0

    .line 1
    array-length p3, p2

    .line 2
    if-lt p3, p1, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lny0;->j:Lby0;

    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-virtual {p0, p2, p3, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 8
    .line 9
    .line 10
    return p3

    .line 11
    :cond_0
    new-instance p0, Lua2;

    .line 12
    .line 13
    const-string p1, "Input buffer too short"

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public final c(I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final d([BI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lny0;->i:Lby0;

    .line 3
    .line 4
    invoke-virtual {p0, p1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final doFinal([BI)I
    .locals 12

    .line 1
    iget-object v0, p0, Lny0;->a:Lj;

    .line 2
    .line 3
    iget-object v1, p0, Lny0;->j:Lby0;

    .line 4
    .line 5
    invoke-virtual {v1}, Lby0;->b()[B

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v4, p0, Lny0;->h:[B

    .line 14
    .line 15
    iget v5, p0, Lny0;->b:I

    .line 16
    .line 17
    iget-object v6, p0, Lny0;->g:Lz61;

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    if-eqz v6, :cond_b

    .line 21
    .line 22
    iget-object v6, p0, Lny0;->d:[B

    .line 23
    .line 24
    array-length v8, v6

    .line 25
    rsub-int/lit8 v9, v8, 0xf

    .line 26
    .line 27
    const/4 v10, 0x4

    .line 28
    const/4 v11, 0x1

    .line 29
    if-ge v9, v10, :cond_2

    .line 30
    .line 31
    mul-int/lit8 v9, v9, 0x8

    .line 32
    .line 33
    shl-int v9, v11, v9

    .line 34
    .line 35
    iget-boolean v10, p0, Lny0;->c:Z

    .line 36
    .line 37
    if-nez v10, :cond_0

    .line 38
    .line 39
    const/16 v10, 0x10

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v10, v7

    .line 43
    :goto_0
    sub-int v10, v3, v10

    .line 44
    .line 45
    if-ge v10, v9, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string p0, "CCM packet too large for choice of q"

    .line 49
    .line 50
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v7

    .line 54
    :cond_2
    :goto_1
    new-array v9, v5, [B

    .line 55
    .line 56
    rsub-int/lit8 v8, v8, 0xe

    .line 57
    .line 58
    and-int/lit8 v8, v8, 0x7

    .line 59
    .line 60
    int-to-byte v8, v8

    .line 61
    aput-byte v8, v9, v7

    .line 62
    .line 63
    array-length v8, v6

    .line 64
    invoke-static {v6, v7, v9, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    new-instance v6, Lmr6;

    .line 68
    .line 69
    invoke-direct {v6, v0}, Lmr6;-><init>(Lxs0;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v8, p0, Lny0;->c:Z

    .line 73
    .line 74
    new-instance v10, Lvw5;

    .line 75
    .line 76
    iget-object v11, p0, Lny0;->g:Lz61;

    .line 77
    .line 78
    invoke-direct {v10, v11, v9, v5}, Lvw5;-><init>(Lz61;[BI)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v8, v10}, Lmr6;->a(ZLz61;)V

    .line 82
    .line 83
    .line 84
    iget-boolean v8, p0, Lny0;->c:Z

    .line 85
    .line 86
    iget v9, p0, Lny0;->f:I

    .line 87
    .line 88
    const-string v10, "Output buffer too short."

    .line 89
    .line 90
    if-eqz v8, :cond_5

    .line 91
    .line 92
    add-int/2addr v9, v3

    .line 93
    array-length v8, p1

    .line 94
    add-int v11, v9, p2

    .line 95
    .line 96
    if-lt v8, v11, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0, v2, v4, v7, v3}, Lny0;->f([B[BII)V

    .line 99
    .line 100
    .line 101
    new-array v8, v5, [B

    .line 102
    .line 103
    invoke-virtual {v6, v4, v8, v7, v7}, Lmr6;->j([B[BII)I

    .line 104
    .line 105
    .line 106
    move v10, p2

    .line 107
    move v4, v7

    .line 108
    :goto_2
    sub-int v11, v3, v5

    .line 109
    .line 110
    if-ge v4, v11, :cond_3

    .line 111
    .line 112
    invoke-virtual {v6, v2, p1, v4, v10}, Lmr6;->j([B[BII)I

    .line 113
    .line 114
    .line 115
    add-int/2addr v10, v5

    .line 116
    add-int/2addr v4, v5

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    new-array v5, v5, [B

    .line 119
    .line 120
    sub-int v11, v3, v4

    .line 121
    .line 122
    invoke-static {v2, v4, v5, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v5, v5, v7, v7}, Lmr6;->j([B[BII)I

    .line 126
    .line 127
    .line 128
    invoke-static {v5, v7, p1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    .line 130
    .line 131
    add-int/2addr p2, v3

    .line 132
    iget v2, p0, Lny0;->f:I

    .line 133
    .line 134
    invoke-static {v8, v7, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_4
    new-instance p0, Ldv5;

    .line 139
    .line 140
    invoke-direct {p0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_5
    if-lt v3, v9, :cond_a

    .line 145
    .line 146
    sub-int/2addr v3, v9

    .line 147
    array-length v8, p1

    .line 148
    add-int v11, v3, p2

    .line 149
    .line 150
    if-lt v8, v11, :cond_9

    .line 151
    .line 152
    invoke-static {v2, v3, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v4, v4, v7, v7}, Lmr6;->j([B[BII)I

    .line 156
    .line 157
    .line 158
    iget v8, p0, Lny0;->f:I

    .line 159
    .line 160
    :goto_3
    array-length v9, v4

    .line 161
    if-eq v8, v9, :cond_6

    .line 162
    .line 163
    aput-byte v7, v4, v8

    .line 164
    .line 165
    add-int/lit8 v8, v8, 0x1

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_6
    move v9, p2

    .line 169
    move v8, v7

    .line 170
    :goto_4
    sub-int v10, v3, v5

    .line 171
    .line 172
    if-ge v8, v10, :cond_7

    .line 173
    .line 174
    invoke-virtual {v6, v2, p1, v8, v9}, Lmr6;->j([B[BII)I

    .line 175
    .line 176
    .line 177
    add-int/2addr v9, v5

    .line 178
    add-int/2addr v8, v5

    .line 179
    goto :goto_4

    .line 180
    :cond_7
    new-array v10, v5, [B

    .line 181
    .line 182
    sub-int v11, v3, v8

    .line 183
    .line 184
    invoke-static {v2, v8, v10, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6, v10, v10, v7, v7}, Lmr6;->j([B[BII)I

    .line 188
    .line 189
    .line 190
    invoke-static {v10, v7, p1, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    .line 192
    .line 193
    new-array v2, v5, [B

    .line 194
    .line 195
    invoke-virtual {p0, p1, v2, p2, v3}, Lny0;->f([B[BII)V

    .line 196
    .line 197
    .line 198
    invoke-static {v4, v2}, Lms8;->r([B[B)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_8

    .line 203
    .line 204
    move v9, v3

    .line 205
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    iget-object p0, p0, Lny0;->i:Lby0;

    .line 209
    .line 210
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 214
    .line 215
    .line 216
    return v9

    .line 217
    :cond_8
    new-instance p0, Lyf4;

    .line 218
    .line 219
    const-string p1, "mac check in CCM failed"

    .line 220
    .line 221
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p0

    .line 225
    :cond_9
    new-instance p0, Ldv5;

    .line 226
    .line 227
    invoke-direct {p0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p0

    .line 231
    :cond_a
    new-instance p0, Lyf4;

    .line 232
    .line 233
    const-string p1, "data too short"

    .line 234
    .line 235
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p0

    .line 239
    :cond_b
    const-string p0, "CCM cipher unitialized."

    .line 240
    .line 241
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    return v7
.end method

.method public final e(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lny0;->j:Lby0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p1

    .line 8
    iget-boolean p1, p0, Lny0;->c:Z

    .line 9
    .line 10
    iget p0, p0, Lny0;->f:I

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    add-int/2addr v0, p0

    .line 15
    return v0

    .line 16
    :cond_0
    if-ge v0, p0, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    sub-int/2addr v0, p0

    .line 21
    return v0
.end method

.method public final f([B[BII)V
    .locals 11

    .line 1
    iget-object v0, p0, Lny0;->i:Lby0;

    .line 2
    .line 3
    new-instance v1, Lmy0;

    .line 4
    .line 5
    iget-object v2, p0, Lny0;->a:Lj;

    .line 6
    .line 7
    iget v3, p0, Lny0;->f:I

    .line 8
    .line 9
    mul-int/lit8 v3, v3, 0x8

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    rem-int/lit8 v4, v3, 0x8

    .line 15
    .line 16
    if-nez v4, :cond_9

    .line 17
    .line 18
    invoke-static {v2}, Lly0;->c(Lxs0;)Lly0;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, v1, Lmy0;->d:Lly0;

    .line 23
    .line 24
    div-int/lit8 v3, v3, 0x8

    .line 25
    .line 26
    iput v3, v1, Lmy0;->e:I

    .line 27
    .line 28
    const/16 v2, 0x10

    .line 29
    .line 30
    new-array v4, v2, [B

    .line 31
    .line 32
    iput-object v4, v1, Lmy0;->a:[B

    .line 33
    .line 34
    new-array v4, v2, [B

    .line 35
    .line 36
    iput-object v4, v1, Lmy0;->b:[B

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    iput v4, v1, Lmy0;->c:I

    .line 40
    .line 41
    iget-object v5, p0, Lny0;->g:Lz61;

    .line 42
    .line 43
    invoke-virtual {v1, v5}, Lmy0;->c(Lz61;)V

    .line 44
    .line 45
    .line 46
    new-array v5, v2, [B

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    iget-object v7, p0, Lny0;->e:[B

    .line 53
    .line 54
    if-nez v7, :cond_0

    .line 55
    .line 56
    move v7, v4

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    array-length v7, v7

    .line 59
    :goto_0
    add-int/2addr v6, v7

    .line 60
    if-lez v6, :cond_1

    .line 61
    .line 62
    aget-byte v6, v5, v4

    .line 63
    .line 64
    or-int/lit8 v6, v6, 0x40

    .line 65
    .line 66
    int-to-byte v6, v6

    .line 67
    aput-byte v6, v5, v4

    .line 68
    .line 69
    :cond_1
    aget-byte v6, v5, v4

    .line 70
    .line 71
    const/4 v7, 0x2

    .line 72
    sub-int/2addr v3, v7

    .line 73
    div-int/2addr v3, v7

    .line 74
    and-int/lit8 v3, v3, 0x7

    .line 75
    .line 76
    shl-int/lit8 v3, v3, 0x3

    .line 77
    .line 78
    or-int/2addr v3, v6

    .line 79
    int-to-byte v3, v3

    .line 80
    aput-byte v3, v5, v4

    .line 81
    .line 82
    iget-object v6, p0, Lny0;->d:[B

    .line 83
    .line 84
    array-length v8, v6

    .line 85
    rsub-int/lit8 v8, v8, 0xe

    .line 86
    .line 87
    and-int/lit8 v8, v8, 0x7

    .line 88
    .line 89
    or-int/2addr v3, v8

    .line 90
    int-to-byte v3, v3

    .line 91
    aput-byte v3, v5, v4

    .line 92
    .line 93
    array-length v3, v6

    .line 94
    const/4 v8, 0x1

    .line 95
    invoke-static {v6, v4, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    move v3, p4

    .line 99
    move v6, v8

    .line 100
    :goto_1
    if-lez v3, :cond_2

    .line 101
    .line 102
    rsub-int/lit8 v9, v6, 0x10

    .line 103
    .line 104
    and-int/lit16 v10, v3, 0xff

    .line 105
    .line 106
    int-to-byte v10, v10

    .line 107
    aput-byte v10, v5, v9

    .line 108
    .line 109
    ushr-int/lit8 v3, v3, 0x8

    .line 110
    .line 111
    add-int/2addr v6, v8

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v1, v5, v4, v2}, Lmy0;->update([BII)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    iget-object v5, p0, Lny0;->e:[B

    .line 121
    .line 122
    if-nez v5, :cond_3

    .line 123
    .line 124
    move v5, v4

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    array-length v5, v5

    .line 127
    :goto_2
    add-int/2addr v3, v5

    .line 128
    if-lez v3, :cond_8

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    iget-object v5, p0, Lny0;->e:[B

    .line 135
    .line 136
    if-nez v5, :cond_4

    .line 137
    .line 138
    move v5, v4

    .line 139
    goto :goto_3

    .line 140
    :cond_4
    array-length v5, v5

    .line 141
    :goto_3
    add-int/2addr v3, v5

    .line 142
    const v5, 0xff00

    .line 143
    .line 144
    .line 145
    if-ge v3, v5, :cond_5

    .line 146
    .line 147
    shr-int/lit8 v5, v3, 0x8

    .line 148
    .line 149
    int-to-byte v5, v5

    .line 150
    invoke-virtual {v1, v5}, Lmy0;->a(B)V

    .line 151
    .line 152
    .line 153
    int-to-byte v5, v3

    .line 154
    invoke-virtual {v1, v5}, Lmy0;->a(B)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_5
    const/4 v5, -0x1

    .line 159
    invoke-virtual {v1, v5}, Lmy0;->a(B)V

    .line 160
    .line 161
    .line 162
    const/4 v5, -0x2

    .line 163
    invoke-virtual {v1, v5}, Lmy0;->a(B)V

    .line 164
    .line 165
    .line 166
    shr-int/lit8 v5, v3, 0x18

    .line 167
    .line 168
    int-to-byte v5, v5

    .line 169
    invoke-virtual {v1, v5}, Lmy0;->a(B)V

    .line 170
    .line 171
    .line 172
    shr-int/lit8 v5, v3, 0x10

    .line 173
    .line 174
    int-to-byte v5, v5

    .line 175
    invoke-virtual {v1, v5}, Lmy0;->a(B)V

    .line 176
    .line 177
    .line 178
    shr-int/lit8 v5, v3, 0x8

    .line 179
    .line 180
    int-to-byte v5, v5

    .line 181
    invoke-virtual {v1, v5}, Lmy0;->a(B)V

    .line 182
    .line 183
    .line 184
    int-to-byte v5, v3

    .line 185
    invoke-virtual {v1, v5}, Lmy0;->a(B)V

    .line 186
    .line 187
    .line 188
    const/4 v7, 0x6

    .line 189
    :goto_4
    iget-object p0, p0, Lny0;->e:[B

    .line 190
    .line 191
    if-eqz p0, :cond_6

    .line 192
    .line 193
    array-length v5, p0

    .line 194
    invoke-virtual {v1, p0, v4, v5}, Lmy0;->update([BII)V

    .line 195
    .line 196
    .line 197
    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    if-lez p0, :cond_7

    .line 202
    .line 203
    invoke-virtual {v0}, Lby0;->b()[B

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-virtual {v1, p0, v4, v0}, Lmy0;->update([BII)V

    .line 212
    .line 213
    .line 214
    :cond_7
    add-int/2addr v7, v3

    .line 215
    rem-int/2addr v7, v2

    .line 216
    if-eqz v7, :cond_8

    .line 217
    .line 218
    :goto_5
    if-eq v7, v2, :cond_8

    .line 219
    .line 220
    invoke-virtual {v1, v4}, Lmy0;->a(B)V

    .line 221
    .line 222
    .line 223
    add-int/lit8 v7, v7, 0x1

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_8
    invoke-virtual {v1, p1, p3, p4}, Lmy0;->update([BII)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, p2, v4}, Lmy0;->doFinal([BI)I

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_9
    const-string p0, "MAC size must be multiple of 8"

    .line 234
    .line 235
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    return-void
.end method
