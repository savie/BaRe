.class public final Lsq4;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic r:I


# instance fields
.field public a:Ljava/io/InputStream;

.field public final b:Lv40;

.field public c:Lzp4;

.field public final d:Laf6;

.field public final e:Lkq4;

.field public f:Z

.field public k:Z

.field public final n:[B

.field public p:J

.field public q:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JBI)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lsq4;->f:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lsq4;->k:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    iput-object v0, p0, Lsq4;->n:[B

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lsq4;->q:Ljava/io/IOException;

    .line 16
    .line 17
    sget-object v0, Lv40;->a:Lv40;

    .line 18
    .line 19
    const-wide/16 v1, -0x1

    .line 20
    .line 21
    cmp-long v1, p2, v1

    .line 22
    .line 23
    if-ltz v1, :cond_4

    .line 24
    .line 25
    and-int/lit16 p4, p4, 0xff

    .line 26
    .line 27
    const/16 v2, 0xe0

    .line 28
    .line 29
    if-gt p4, v2, :cond_3

    .line 30
    .line 31
    div-int/lit8 v8, p4, 0x2d

    .line 32
    .line 33
    mul-int/lit8 v2, v8, 0x2d

    .line 34
    .line 35
    sub-int/2addr p4, v2

    .line 36
    div-int/lit8 v7, p4, 0x9

    .line 37
    .line 38
    mul-int/lit8 v2, v7, 0x9

    .line 39
    .line 40
    sub-int v6, p4, v2

    .line 41
    .line 42
    if-ltz p5, :cond_2

    .line 43
    .line 44
    const p4, 0x7ffffff0

    .line 45
    .line 46
    .line 47
    if-gt p5, p4, :cond_2

    .line 48
    .line 49
    if-ltz v1, :cond_1

    .line 50
    .line 51
    if-ltz v6, :cond_1

    .line 52
    .line 53
    const/16 p4, 0x8

    .line 54
    .line 55
    if-gt v6, p4, :cond_1

    .line 56
    .line 57
    if-ltz v7, :cond_1

    .line 58
    .line 59
    const/4 p4, 0x4

    .line 60
    if-gt v7, p4, :cond_1

    .line 61
    .line 62
    if-ltz v8, :cond_1

    .line 63
    .line 64
    if-gt v8, p4, :cond_1

    .line 65
    .line 66
    iput-object p1, p0, Lsq4;->a:Ljava/io/InputStream;

    .line 67
    .line 68
    iput-object v0, p0, Lsq4;->b:Lv40;

    .line 69
    .line 70
    invoke-static {p5}, Lsq4;->a(I)I

    .line 71
    .line 72
    .line 73
    move-result p4

    .line 74
    const-wide/16 v1, 0x0

    .line 75
    .line 76
    cmp-long p5, p2, v1

    .line 77
    .line 78
    if-ltz p5, :cond_0

    .line 79
    .line 80
    int-to-long v1, p4

    .line 81
    cmp-long p5, v1, p2

    .line 82
    .line 83
    if-lez p5, :cond_0

    .line 84
    .line 85
    long-to-int p4, p2

    .line 86
    invoke-static {p4}, Lsq4;->a(I)I

    .line 87
    .line 88
    .line 89
    move-result p4

    .line 90
    :cond_0
    new-instance p5, Lzp4;

    .line 91
    .line 92
    invoke-static {p4}, Lsq4;->a(I)I

    .line 93
    .line 94
    .line 95
    move-result p4

    .line 96
    invoke-direct {p5, p4, v0}, Lzp4;-><init>(ILv40;)V

    .line 97
    .line 98
    .line 99
    iput-object p5, p0, Lsq4;->c:Lzp4;

    .line 100
    .line 101
    new-instance v5, Laf6;

    .line 102
    .line 103
    invoke-direct {v5, p1}, Laf6;-><init>(Ljava/io/InputStream;)V

    .line 104
    .line 105
    .line 106
    iput-object v5, p0, Lsq4;->d:Laf6;

    .line 107
    .line 108
    new-instance v3, Lkq4;

    .line 109
    .line 110
    iget-object v4, p0, Lsq4;->c:Lzp4;

    .line 111
    .line 112
    invoke-direct/range {v3 .. v8}, Lkq4;-><init>(Lzp4;Lye6;III)V

    .line 113
    .line 114
    .line 115
    iput-object v3, p0, Lsq4;->e:Lkq4;

    .line 116
    .line 117
    iput-wide p2, p0, Lsq4;->p:J

    .line 118
    .line 119
    return-void

    .line 120
    :cond_1
    invoke-static {}, Lc6;->b()V

    .line 121
    .line 122
    .line 123
    const/4 p0, 0x0

    .line 124
    throw p0

    .line 125
    :cond_2
    const-string p0, "LZMA dictionary is too big for this implementation"

    .line 126
    .line 127
    invoke-static {p0}, Ly5;->h(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/4 p0, 0x0

    .line 131
    throw p0

    .line 132
    :cond_3
    new-instance p0, Lcy1;

    .line 133
    .line 134
    const-string p1, "Invalid LZMA properties byte"

    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_4
    const-string p0, "Uncompressed size is too big"

    .line 141
    .line 142
    invoke-static {p0}, Ly5;->h(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const/4 p0, 0x0

    .line 146
    throw p0
.end method

.method public static a(I)I
    .locals 1

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    const v0, 0x7ffffff0

    .line 4
    .line 5
    .line 6
    if-gt p0, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x1000

    .line 9
    .line 10
    if-ge p0, v0, :cond_0

    .line 11
    .line 12
    move p0, v0

    .line 13
    :cond_0
    add-int/lit8 p0, p0, 0xf

    .line 14
    .line 15
    and-int/lit8 p0, p0, -0x10

    .line 16
    .line 17
    return p0

    .line 18
    :cond_1
    const-string p0, "LZMA dictionary is too big for this implementation"

    .line 19
    .line 20
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsq4;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lsq4;->c:Lzp4;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lsq4;->b:Lv40;

    .line 11
    .line 12
    iget-object v0, v0, Lzp4;->a:[B

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Lv40;->c([B)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lsq4;->c:Lzp4;

    .line 18
    .line 19
    :cond_0
    :try_start_0
    iget-object v0, p0, Lsq4;->a:Ljava/io/InputStream;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lsq4;->a:Ljava/io/InputStream;

    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    iput-object v1, p0, Lsq4;->a:Ljava/io/InputStream;

    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    return-void
.end method

.method public final read()I
    .locals 3

    const/4 v0, 0x1

    .line 287
    iget-object v1, p0, Lsq4;->n:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lsq4;->read([BII)I

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
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v3, v1, Lsq4;->d:Laf6;

    .line 6
    .line 7
    iget-object v4, v1, Lsq4;->e:Lkq4;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    if-ltz p2, :cond_18

    .line 11
    .line 12
    if-ltz p3, :cond_18

    .line 13
    .line 14
    add-int v0, p2, p3

    .line 15
    .line 16
    if-ltz v0, :cond_18

    .line 17
    .line 18
    array-length v6, v2

    .line 19
    if-gt v0, v6, :cond_18

    .line 20
    .line 21
    if-nez p3, :cond_0

    .line 22
    .line 23
    return v5

    .line 24
    :cond_0
    iget-object v0, v1, Lsq4;->a:Ljava/io/InputStream;

    .line 25
    .line 26
    if-eqz v0, :cond_17

    .line 27
    .line 28
    iget-object v0, v1, Lsq4;->q:Ljava/io/IOException;

    .line 29
    .line 30
    if-nez v0, :cond_16

    .line 31
    .line 32
    iget-boolean v0, v1, Lsq4;->f:Z

    .line 33
    .line 34
    const/4 v6, -0x1

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    return v6

    .line 38
    :cond_1
    move/from16 v7, p2

    .line 39
    .line 40
    move/from16 v8, p3

    .line 41
    .line 42
    move v9, v5

    .line 43
    :cond_2
    if-lez v8, :cond_15

    .line 44
    .line 45
    :try_start_0
    iget-wide v10, v1, Lsq4;->p:J

    .line 46
    .line 47
    const-wide/16 v12, 0x0

    .line 48
    .line 49
    cmp-long v0, v10, v12

    .line 50
    .line 51
    if-ltz v0, :cond_3

    .line 52
    .line 53
    int-to-long v14, v8

    .line 54
    cmp-long v0, v10, v14

    .line 55
    .line 56
    if-gez v0, :cond_3

    .line 57
    .line 58
    long-to-int v0, v10

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    move v0, v8

    .line 61
    :goto_0
    iget-object v10, v1, Lsq4;->c:Lzp4;

    .line 62
    .line 63
    iget v11, v10, Lzp4;->b:I

    .line 64
    .line 65
    iget v14, v10, Lzp4;->d:I

    .line 66
    .line 67
    sub-int v15, v11, v14

    .line 68
    .line 69
    if-gt v15, v0, :cond_4

    .line 70
    .line 71
    iput v11, v10, Lzp4;->f:I

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    add-int/2addr v14, v0

    .line 75
    iput v14, v10, Lzp4;->f:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    :goto_1
    const/4 v14, 0x1

    .line 78
    :try_start_1
    invoke-virtual {v4}, Lkq4;->b()V
    :try_end_1
    .catch Lcy1; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    .line 80
    .line 81
    const-wide/16 p2, -0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :catch_0
    move-exception v0

    .line 85
    goto/16 :goto_b

    .line 86
    .line 87
    :catch_1
    move-exception v0

    .line 88
    const-wide/16 p2, -0x1

    .line 89
    .line 90
    :try_start_2
    iget-wide v10, v1, Lsq4;->p:J

    .line 91
    .line 92
    cmp-long v10, v10, p2

    .line 93
    .line 94
    if-nez v10, :cond_14

    .line 95
    .line 96
    iget-object v10, v4, Lgq4;->b:[I

    .line 97
    .line 98
    aget v10, v10, v5

    .line 99
    .line 100
    if-ne v10, v6, :cond_5

    .line 101
    .line 102
    move v10, v14

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    move v10, v5

    .line 105
    :goto_2
    if-eqz v10, :cond_14

    .line 106
    .line 107
    iput-boolean v14, v1, Lsq4;->f:Z

    .line 108
    .line 109
    invoke-virtual {v3}, Laf6;->T()V

    .line 110
    .line 111
    .line 112
    :goto_3
    iget-object v0, v1, Lsq4;->c:Lzp4;

    .line 113
    .line 114
    iget v10, v0, Lzp4;->d:I

    .line 115
    .line 116
    iget v11, v0, Lzp4;->c:I

    .line 117
    .line 118
    sub-int v15, v10, v11

    .line 119
    .line 120
    move-wide/from16 v16, v12

    .line 121
    .line 122
    iget v12, v0, Lzp4;->b:I

    .line 123
    .line 124
    if-ne v10, v12, :cond_6

    .line 125
    .line 126
    iput v5, v0, Lzp4;->d:I

    .line 127
    .line 128
    :cond_6
    iget-object v10, v0, Lzp4;->a:[B

    .line 129
    .line 130
    invoke-static {v10, v11, v2, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    .line 132
    .line 133
    iget v10, v0, Lzp4;->d:I

    .line 134
    .line 135
    iput v10, v0, Lzp4;->c:I

    .line 136
    .line 137
    add-int/2addr v7, v15

    .line 138
    sub-int/2addr v8, v15

    .line 139
    add-int/2addr v9, v15

    .line 140
    iget-wide v10, v1, Lsq4;->p:J

    .line 141
    .line 142
    cmp-long v0, v10, v16

    .line 143
    .line 144
    if-ltz v0, :cond_7

    .line 145
    .line 146
    int-to-long v12, v15

    .line 147
    sub-long/2addr v10, v12

    .line 148
    iput-wide v10, v1, Lsq4;->p:J

    .line 149
    .line 150
    cmp-long v0, v10, v16

    .line 151
    .line 152
    if-nez v0, :cond_7

    .line 153
    .line 154
    iput-boolean v14, v1, Lsq4;->f:Z

    .line 155
    .line 156
    :cond_7
    iget-boolean v0, v1, Lsq4;->f:Z

    .line 157
    .line 158
    if-eqz v0, :cond_2

    .line 159
    .line 160
    iget-object v0, v1, Lsq4;->c:Lzp4;

    .line 161
    .line 162
    iget v2, v0, Lzp4;->g:I

    .line 163
    .line 164
    if-lez v2, :cond_8

    .line 165
    .line 166
    move v2, v14

    .line 167
    goto :goto_4

    .line 168
    :cond_8
    move v2, v5

    .line 169
    :goto_4
    if-nez v2, :cond_13

    .line 170
    .line 171
    iget v2, v3, Lye6;->i:I

    .line 172
    .line 173
    if-nez v2, :cond_9

    .line 174
    .line 175
    move v2, v14

    .line 176
    goto :goto_5

    .line 177
    :cond_9
    move v2, v5

    .line 178
    :goto_5
    if-nez v2, :cond_10

    .line 179
    .line 180
    iget-wide v7, v1, Lsq4;->p:J

    .line 181
    .line 182
    cmp-long v2, v7, p2

    .line 183
    .line 184
    if-eqz v2, :cond_f

    .line 185
    .line 186
    iget-boolean v2, v1, Lsq4;->k:Z

    .line 187
    .line 188
    if-eqz v2, :cond_f

    .line 189
    .line 190
    iget v2, v0, Lzp4;->b:I

    .line 191
    .line 192
    iget v7, v0, Lzp4;->d:I

    .line 193
    .line 194
    sub-int v8, v2, v7

    .line 195
    .line 196
    if-gt v8, v14, :cond_a

    .line 197
    .line 198
    iput v2, v0, Lzp4;->f:I

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_a
    add-int/2addr v7, v14

    .line 202
    iput v7, v0, Lzp4;->f:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 203
    .line 204
    :goto_6
    :try_start_3
    invoke-virtual {v4}, Lkq4;->b()V
    :try_end_3
    .catch Lcy1; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 205
    .line 206
    .line 207
    goto :goto_8

    .line 208
    :catch_2
    move-exception v0

    .line 209
    :try_start_4
    iget-object v2, v4, Lgq4;->b:[I

    .line 210
    .line 211
    aget v2, v2, v5

    .line 212
    .line 213
    if-ne v2, v6, :cond_b

    .line 214
    .line 215
    move v2, v14

    .line 216
    goto :goto_7

    .line 217
    :cond_b
    move v2, v5

    .line 218
    :goto_7
    if-eqz v2, :cond_e

    .line 219
    .line 220
    invoke-virtual {v3}, Laf6;->T()V

    .line 221
    .line 222
    .line 223
    iget v0, v3, Lye6;->i:I

    .line 224
    .line 225
    if-nez v0, :cond_c

    .line 226
    .line 227
    move v5, v14

    .line 228
    :cond_c
    if-eqz v5, :cond_d

    .line 229
    .line 230
    goto :goto_9

    .line 231
    :cond_d
    :goto_8
    new-instance v0, Lcy1;

    .line 232
    .line 233
    invoke-direct {v0}, Lcy1;-><init>()V

    .line 234
    .line 235
    .line 236
    throw v0

    .line 237
    :cond_e
    throw v0

    .line 238
    :cond_f
    new-instance v0, Lcy1;

    .line 239
    .line 240
    invoke-direct {v0}, Lcy1;-><init>()V

    .line 241
    .line 242
    .line 243
    throw v0

    .line 244
    :cond_10
    :goto_9
    iget-object v0, v1, Lsq4;->c:Lzp4;

    .line 245
    .line 246
    if-eqz v0, :cond_11

    .line 247
    .line 248
    iget-object v2, v1, Lsq4;->b:Lv40;

    .line 249
    .line 250
    iget-object v0, v0, Lzp4;->a:[B

    .line 251
    .line 252
    invoke-virtual {v2, v0}, Lv40;->c([B)V

    .line 253
    .line 254
    .line 255
    const/4 v0, 0x0

    .line 256
    iput-object v0, v1, Lsq4;->c:Lzp4;

    .line 257
    .line 258
    :cond_11
    if-nez v9, :cond_12

    .line 259
    .line 260
    goto :goto_a

    .line 261
    :cond_12
    move v6, v9

    .line 262
    :goto_a
    return v6

    .line 263
    :cond_13
    new-instance v0, Lcy1;

    .line 264
    .line 265
    invoke-direct {v0}, Lcy1;-><init>()V

    .line 266
    .line 267
    .line 268
    throw v0

    .line 269
    :cond_14
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 270
    :goto_b
    iput-object v0, v1, Lsq4;->q:Ljava/io/IOException;

    .line 271
    .line 272
    throw v0

    .line 273
    :cond_15
    return v9

    .line 274
    :cond_16
    throw v0

    .line 275
    :cond_17
    new-instance v0, Lay8;

    .line 276
    .line 277
    const-string v1, "Stream closed"

    .line 278
    .line 279
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :cond_18
    invoke-static {}, Ll0;->a()V

    .line 284
    .line 285
    .line 286
    return v5
.end method
