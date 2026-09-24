.class public final Ldq4;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lv40;

.field public b:Ljava/io/DataInputStream;

.field public c:Lzp4;

.field public d:Lze6;

.field public e:Lkq4;

.field public f:I

.field public k:Z

.field public n:Z

.field public p:Z

.field public q:Z

.field public r:Ljava/io/IOException;

.field public final t:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILv40;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ldq4;->f:I

    .line 6
    .line 7
    iput-boolean v0, p0, Ldq4;->k:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Ldq4;->n:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Ldq4;->p:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Ldq4;->q:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Ldq4;->r:Ljava/io/IOException;

    .line 18
    .line 19
    new-array v0, v1, [B

    .line 20
    .line 21
    iput-object v0, p0, Ldq4;->t:[B

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iput-object p3, p0, Ldq4;->a:Lv40;

    .line 27
    .line 28
    new-instance v0, Ljava/io/DataInputStream;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Ldq4;->b:Ljava/io/DataInputStream;

    .line 34
    .line 35
    new-instance p1, Lze6;

    .line 36
    .line 37
    invoke-direct {p1, p3}, Lze6;-><init>(Lv40;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Ldq4;->d:Lze6;

    .line 41
    .line 42
    new-instance p1, Lzp4;

    .line 43
    .line 44
    invoke-static {p2}, Ldq4;->b(I)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-direct {p1, p2, p3}, Lzp4;-><init>(ILv40;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Ldq4;->c:Lzp4;

    .line 52
    .line 53
    return-void
.end method

.method public static b(I)I
    .locals 1

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7ffffff0

    .line 6
    .line 7
    .line 8
    if-gt p0, v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 p0, p0, 0xf

    .line 11
    .line 12
    and-int/lit8 p0, p0, -0x10

    .line 13
    .line 14
    return p0

    .line 15
    :cond_0
    const-string v0, "Unsupported dictionary size "

    .line 16
    .line 17
    invoke-static {p0, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget-object v0, p0, Ldq4;->b:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iput-boolean v1, p0, Ldq4;->q:Z

    .line 11
    .line 12
    iget-object v0, p0, Ldq4;->c:Lzp4;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lzp4;->a:[B

    .line 17
    .line 18
    iget-object v1, p0, Ldq4;->a:Lv40;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lv40;->c([B)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Ldq4;->c:Lzp4;

    .line 25
    .line 26
    iget-object v2, p0, Ldq4;->d:Lze6;

    .line 27
    .line 28
    iget-object v2, v2, Lze6;->j:[B

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lv40;->c([B)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Ldq4;->d:Lze6;

    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :cond_1
    const/16 v2, 0xe0

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-ge v0, v2, :cond_4

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-boolean v4, p0, Ldq4;->n:Z

    .line 45
    .line 46
    if-nez v4, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    new-instance p0, Lcy1;

    .line 50
    .line 51
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_4
    :goto_0
    iput-boolean v1, p0, Ldq4;->p:Z

    .line 56
    .line 57
    iput-boolean v3, p0, Ldq4;->n:Z

    .line 58
    .line 59
    iget-object v4, p0, Ldq4;->c:Lzp4;

    .line 60
    .line 61
    iput v3, v4, Lzp4;->c:I

    .line 62
    .line 63
    iput v3, v4, Lzp4;->d:I

    .line 64
    .line 65
    iput v3, v4, Lzp4;->e:I

    .line 66
    .line 67
    iput v3, v4, Lzp4;->f:I

    .line 68
    .line 69
    iget-object v5, v4, Lzp4;->a:[B

    .line 70
    .line 71
    iget v4, v4, Lzp4;->b:I

    .line 72
    .line 73
    sub-int/2addr v4, v1

    .line 74
    aput-byte v3, v5, v4

    .line 75
    .line 76
    :goto_1
    const/16 v4, 0x80

    .line 77
    .line 78
    if-lt v0, v4, :cond_c

    .line 79
    .line 80
    iput-boolean v1, p0, Ldq4;->k:Z

    .line 81
    .line 82
    and-int/lit8 v4, v0, 0x1f

    .line 83
    .line 84
    shl-int/lit8 v4, v4, 0x10

    .line 85
    .line 86
    iput v4, p0, Ldq4;->f:I

    .line 87
    .line 88
    iget-object v5, p0, Ldq4;->b:Ljava/io/DataInputStream;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    add-int/2addr v5, v1

    .line 95
    add-int/2addr v5, v4

    .line 96
    iput v5, p0, Ldq4;->f:I

    .line 97
    .line 98
    iget-object v1, p0, Ldq4;->b:Ljava/io/DataInputStream;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    add-int/lit8 v4, v1, 0x1

    .line 105
    .line 106
    const/16 v5, 0xc0

    .line 107
    .line 108
    if-lt v0, v5, :cond_7

    .line 109
    .line 110
    iput-boolean v3, p0, Ldq4;->p:Z

    .line 111
    .line 112
    iget-object v0, p0, Ldq4;->b:Ljava/io/DataInputStream;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-gt v0, v2, :cond_6

    .line 119
    .line 120
    div-int/lit8 v10, v0, 0x2d

    .line 121
    .line 122
    mul-int/lit8 v2, v10, 0x2d

    .line 123
    .line 124
    sub-int/2addr v0, v2

    .line 125
    div-int/lit8 v9, v0, 0x9

    .line 126
    .line 127
    mul-int/lit8 v2, v9, 0x9

    .line 128
    .line 129
    sub-int v8, v0, v2

    .line 130
    .line 131
    add-int v0, v8, v9

    .line 132
    .line 133
    const/4 v2, 0x4

    .line 134
    if-gt v0, v2, :cond_5

    .line 135
    .line 136
    new-instance v5, Lkq4;

    .line 137
    .line 138
    iget-object v6, p0, Ldq4;->c:Lzp4;

    .line 139
    .line 140
    iget-object v7, p0, Ldq4;->d:Lze6;

    .line 141
    .line 142
    invoke-direct/range {v5 .. v10}, Lkq4;-><init>(Lzp4;Lye6;III)V

    .line 143
    .line 144
    .line 145
    iput-object v5, p0, Ldq4;->e:Lkq4;

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    new-instance p0, Lcy1;

    .line 149
    .line 150
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :cond_6
    new-instance p0, Lcy1;

    .line 155
    .line 156
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 157
    .line 158
    .line 159
    throw p0

    .line 160
    :cond_7
    iget-boolean v2, p0, Ldq4;->p:Z

    .line 161
    .line 162
    if-nez v2, :cond_b

    .line 163
    .line 164
    const/16 v2, 0xa0

    .line 165
    .line 166
    if-lt v0, v2, :cond_8

    .line 167
    .line 168
    iget-object v0, p0, Ldq4;->e:Lkq4;

    .line 169
    .line 170
    invoke-virtual {v0}, Lkq4;->a()V

    .line 171
    .line 172
    .line 173
    :cond_8
    :goto_2
    iget-object v0, p0, Ldq4;->d:Lze6;

    .line 174
    .line 175
    iget-object p0, p0, Ldq4;->b:Ljava/io/DataInputStream;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    const/4 v2, 0x5

    .line 181
    if-lt v4, v2, :cond_a

    .line 182
    .line 183
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-nez v2, :cond_9

    .line 188
    .line 189
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    iput v2, v0, Lye6;->i:I

    .line 194
    .line 195
    const/4 v2, -0x1

    .line 196
    iput v2, v0, Lye6;->h:I

    .line 197
    .line 198
    add-int/lit8 v1, v1, -0x4

    .line 199
    .line 200
    iget-object v2, v0, Lze6;->j:[B

    .line 201
    .line 202
    array-length v3, v2

    .line 203
    sub-int/2addr v3, v1

    .line 204
    iput v3, v0, Lze6;->k:I

    .line 205
    .line 206
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_9
    new-instance p0, Lcy1;

    .line 211
    .line 212
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 213
    .line 214
    .line 215
    throw p0

    .line 216
    :cond_a
    new-instance p0, Lcy1;

    .line 217
    .line 218
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 219
    .line 220
    .line 221
    throw p0

    .line 222
    :cond_b
    new-instance p0, Lcy1;

    .line 223
    .line 224
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 225
    .line 226
    .line 227
    throw p0

    .line 228
    :cond_c
    const/4 v2, 0x2

    .line 229
    if-gt v0, v2, :cond_d

    .line 230
    .line 231
    iput-boolean v3, p0, Ldq4;->k:Z

    .line 232
    .line 233
    iget-object v0, p0, Ldq4;->b:Ljava/io/DataInputStream;

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    add-int/2addr v0, v1

    .line 240
    iput v0, p0, Ldq4;->f:I

    .line 241
    .line 242
    return-void

    .line 243
    :cond_d
    new-instance p0, Lcy1;

    .line 244
    .line 245
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 246
    .line 247
    .line 248
    throw p0
.end method

.method public final available()I
    .locals 2

    .line 1
    iget-object v0, p0, Ldq4;->b:Ljava/io/DataInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Ldq4;->r:Ljava/io/IOException;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Ldq4;->k:Z

    .line 10
    .line 11
    iget p0, p0, Ldq4;->f:I

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_1
    throw v1

    .line 26
    :cond_2
    new-instance p0, Lay8;

    .line 27
    .line 28
    const-string v0, "Stream closed"

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldq4;->b:Ljava/io/DataInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Ldq4;->c:Lzp4;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lzp4;->a:[B

    .line 11
    .line 12
    iget-object v2, p0, Ldq4;->a:Lv40;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Lv40;->c([B)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Ldq4;->c:Lzp4;

    .line 18
    .line 19
    iget-object v0, p0, Ldq4;->d:Lze6;

    .line 20
    .line 21
    iget-object v0, v0, Lze6;->j:[B

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lv40;->c([B)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Ldq4;->d:Lze6;

    .line 27
    .line 28
    :cond_0
    :try_start_0
    iget-object v0, p0, Ldq4;->b:Ljava/io/DataInputStream;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Ldq4;->b:Ljava/io/DataInputStream;

    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    iput-object v1, p0, Ldq4;->b:Ljava/io/DataInputStream;

    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    return-void
.end method

.method public final read()I
    .locals 3

    const/4 v0, 0x1

    .line 193
    iget-object v1, p0, Ldq4;->t:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ldq4;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final read([BII)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p2, :cond_d

    .line 3
    .line 4
    if-ltz p3, :cond_d

    .line 5
    .line 6
    add-int v1, p2, p3

    .line 7
    .line 8
    if-ltz v1, :cond_d

    .line 9
    .line 10
    array-length v2, p1

    .line 11
    if-gt v1, v2, :cond_d

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    iget-object v1, p0, Ldq4;->b:Ljava/io/DataInputStream;

    .line 17
    .line 18
    if-eqz v1, :cond_c

    .line 19
    .line 20
    iget-object v1, p0, Ldq4;->r:Ljava/io/IOException;

    .line 21
    .line 22
    if-nez v1, :cond_b

    .line 23
    .line 24
    iget-boolean v1, p0, Ldq4;->q:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v1, v0

    .line 30
    :cond_2
    :goto_0
    if-lez p3, :cond_a

    .line 31
    .line 32
    :try_start_0
    iget v2, p0, Ldq4;->f:I

    .line 33
    .line 34
    if-nez v2, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Ldq4;->a()V

    .line 37
    .line 38
    .line 39
    iget-boolean v2, p0, Ldq4;->q:Z

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    if-nez v1, :cond_a

    .line 44
    .line 45
    :goto_1
    const/4 p0, -0x1

    .line 46
    return p0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_3
    iget v2, p0, Ldq4;->f:I

    .line 51
    .line 52
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget-boolean v3, p0, Ldq4;->k:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    iget-object v4, p0, Ldq4;->c:Lzp4;

    .line 59
    .line 60
    if-nez v3, :cond_4

    .line 61
    .line 62
    :try_start_1
    iget-object v3, p0, Ldq4;->b:Ljava/io/DataInputStream;

    .line 63
    .line 64
    iget v5, v4, Lzp4;->b:I

    .line 65
    .line 66
    iget v6, v4, Lzp4;->d:I

    .line 67
    .line 68
    sub-int/2addr v5, v6

    .line 69
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iget-object v5, v4, Lzp4;->a:[B

    .line 74
    .line 75
    iget v6, v4, Lzp4;->d:I

    .line 76
    .line 77
    invoke-virtual {v3, v5, v6, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 78
    .line 79
    .line 80
    iget v3, v4, Lzp4;->d:I

    .line 81
    .line 82
    add-int/2addr v3, v2

    .line 83
    iput v3, v4, Lzp4;->d:I

    .line 84
    .line 85
    iget v2, v4, Lzp4;->e:I

    .line 86
    .line 87
    if-ge v2, v3, :cond_6

    .line 88
    .line 89
    iput v3, v4, Lzp4;->e:I

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    iget v3, v4, Lzp4;->b:I

    .line 93
    .line 94
    iget v5, v4, Lzp4;->d:I

    .line 95
    .line 96
    sub-int v6, v3, v5

    .line 97
    .line 98
    if-gt v6, v2, :cond_5

    .line 99
    .line 100
    iput v3, v4, Lzp4;->f:I

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    add-int/2addr v5, v2

    .line 104
    iput v5, v4, Lzp4;->f:I

    .line 105
    .line 106
    :goto_2
    iget-object v2, p0, Ldq4;->e:Lkq4;

    .line 107
    .line 108
    invoke-virtual {v2}, Lkq4;->b()V

    .line 109
    .line 110
    .line 111
    :cond_6
    :goto_3
    iget-object v2, p0, Ldq4;->c:Lzp4;

    .line 112
    .line 113
    iget v3, v2, Lzp4;->d:I

    .line 114
    .line 115
    iget v4, v2, Lzp4;->c:I

    .line 116
    .line 117
    sub-int v5, v3, v4

    .line 118
    .line 119
    iget v6, v2, Lzp4;->b:I

    .line 120
    .line 121
    if-ne v3, v6, :cond_7

    .line 122
    .line 123
    iput v0, v2, Lzp4;->d:I

    .line 124
    .line 125
    :cond_7
    iget-object v3, v2, Lzp4;->a:[B

    .line 126
    .line 127
    invoke-static {v3, v4, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    .line 129
    .line 130
    iget v3, v2, Lzp4;->d:I

    .line 131
    .line 132
    iput v3, v2, Lzp4;->c:I

    .line 133
    .line 134
    add-int/2addr p2, v5

    .line 135
    sub-int/2addr p3, v5

    .line 136
    add-int/2addr v1, v5

    .line 137
    iget v2, p0, Ldq4;->f:I

    .line 138
    .line 139
    sub-int/2addr v2, v5

    .line 140
    iput v2, p0, Ldq4;->f:I

    .line 141
    .line 142
    if-nez v2, :cond_2

    .line 143
    .line 144
    iget-object v2, p0, Ldq4;->d:Lze6;

    .line 145
    .line 146
    iget v3, v2, Lze6;->k:I

    .line 147
    .line 148
    iget-object v4, v2, Lze6;->j:[B

    .line 149
    .line 150
    array-length v4, v4

    .line 151
    if-ne v3, v4, :cond_9

    .line 152
    .line 153
    iget v2, v2, Lye6;->i:I

    .line 154
    .line 155
    if-nez v2, :cond_9

    .line 156
    .line 157
    iget-object v2, p0, Ldq4;->c:Lzp4;

    .line 158
    .line 159
    iget v2, v2, Lzp4;->g:I

    .line 160
    .line 161
    if-lez v2, :cond_8

    .line 162
    .line 163
    const/4 v2, 0x1

    .line 164
    goto :goto_4

    .line 165
    :cond_8
    move v2, v0

    .line 166
    :goto_4
    if-nez v2, :cond_9

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_9
    new-instance p1, Lcy1;

    .line 171
    .line 172
    invoke-direct {p1}, Lcy1;-><init>()V

    .line 173
    .line 174
    .line 175
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    :goto_5
    iput-object p1, p0, Ldq4;->r:Ljava/io/IOException;

    .line 177
    .line 178
    throw p1

    .line 179
    :cond_a
    return v1

    .line 180
    :cond_b
    throw v1

    .line 181
    :cond_c
    new-instance p0, Lay8;

    .line 182
    .line 183
    const-string p1, "Stream closed"

    .line 184
    .line 185
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p0

    .line 189
    :cond_d
    invoke-static {}, Ll0;->a()V

    .line 190
    .line 191
    .line 192
    return v0
.end method
