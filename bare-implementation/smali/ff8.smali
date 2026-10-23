.class public final Lff8;
.super Lyp1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[B

.field public final b:Lgr0;

.field public final c:I

.field public d:I

.field public e:B

.field public f:I

.field public k:I

.field public final n:[I

.field public final p:[B

.field public final q:[B

.field public r:I

.field public final t:[Z


# direct methods
.method public constructor <init>(Ljava/io/BufferedInputStream;)V
    .locals 6

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    iput-object v2, p0, Lff8;->a:[B

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    iput v2, p0, Lff8;->c:I

    .line 13
    .line 14
    const/16 v3, 0x9

    .line 15
    .line 16
    iput v3, p0, Lff8;->d:I

    .line 17
    .line 18
    iput v2, p0, Lff8;->f:I

    .line 19
    .line 20
    new-instance v3, Lgr0;

    .line 21
    .line 22
    invoke-direct {v3, p1, v0}, Lgr0;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lff8;->b:Lgr0;

    .line 26
    .line 27
    const/16 p1, 0x100

    .line 28
    .line 29
    iput p1, p0, Lff8;->c:I

    .line 30
    .line 31
    iget v0, p0, Lff8;->d:I

    .line 32
    .line 33
    const/16 v3, 0xd

    .line 34
    .line 35
    if-gt v0, v3, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x2000

    .line 38
    .line 39
    new-array v3, v0, [I

    .line 40
    .line 41
    iput-object v3, p0, Lff8;->n:[I

    .line 42
    .line 43
    new-array v3, v0, [B

    .line 44
    .line 45
    iput-object v3, p0, Lff8;->p:[B

    .line 46
    .line 47
    new-array v3, v0, [B

    .line 48
    .line 49
    iput-object v3, p0, Lff8;->q:[B

    .line 50
    .line 51
    iput v0, p0, Lff8;->r:I

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    move v3, v0

    .line 55
    :goto_0
    iget-object v4, p0, Lff8;->n:[I

    .line 56
    .line 57
    if-ge v3, p1, :cond_0

    .line 58
    .line 59
    aput v2, v4, v3

    .line 60
    .line 61
    iget-object v4, p0, Lff8;->p:[B

    .line 62
    .line 63
    int-to-byte v5, v3

    .line 64
    aput-byte v5, v4, v3

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    array-length v2, v4

    .line 70
    new-array v2, v2, [Z

    .line 71
    .line 72
    iput-object v2, p0, Lff8;->t:[Z

    .line 73
    .line 74
    :goto_1
    if-ge v0, p1, :cond_1

    .line 75
    .line 76
    iget-object v2, p0, Lff8;->t:[Z

    .line 77
    .line 78
    aput-boolean v1, v2, v0

    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iget p1, p0, Lff8;->c:I

    .line 84
    .line 85
    add-int/2addr p1, v1

    .line 86
    iput p1, p0, Lff8;->k:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    const-string p0, "maxCodeSize 13 is out of bounds."

    .line 90
    .line 91
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x0

    .line 95
    throw p0
.end method


# virtual methods
.method public final a(BI)I
    .locals 4

    .line 1
    iget v0, p0, Lff8;->k:I

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lff8;->t:[Z

    .line 4
    .line 5
    const/16 v2, 0x2000

    .line 6
    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    aget-boolean v3, v1, v0

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput v0, p0, Lff8;->k:I

    .line 17
    .line 18
    if-ge v0, v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lff8;->n:[I

    .line 21
    .line 22
    aput p2, v2, v0

    .line 23
    .line 24
    iget-object p2, p0, Lff8;->p:[B

    .line 25
    .line 26
    aput-byte p1, p2, v0

    .line 27
    .line 28
    add-int/lit8 p1, v0, 0x1

    .line 29
    .line 30
    iput p1, p0, Lff8;->k:I

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v0, -0x1

    .line 34
    :goto_1
    if-ltz v0, :cond_2

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    aput-boolean p0, v1, v0

    .line 38
    .line 39
    :cond_2
    return v0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lff8;->b:Lgr0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgr0;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final read()I
    .locals 1

    .line 276
    iget-object v0, p0, Lff8;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-gez p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 277
    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final read([BII)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    return v4

    .line 13
    :cond_0
    iget-object v5, v0, Lff8;->q:[B

    .line 14
    .line 15
    array-length v6, v5

    .line 16
    iget v7, v0, Lff8;->r:I

    .line 17
    .line 18
    sub-int/2addr v6, v7

    .line 19
    if-lez v6, :cond_1

    .line 20
    .line 21
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    iget v7, v0, Lff8;->r:I

    .line 26
    .line 27
    invoke-static {v5, v7, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    iget v7, v0, Lff8;->r:I

    .line 31
    .line 32
    add-int/2addr v7, v6

    .line 33
    iput v7, v0, Lff8;->r:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v6, v4

    .line 37
    :goto_0
    sub-int v7, v3, v6

    .line 38
    .line 39
    if-lez v7, :cond_15

    .line 40
    .line 41
    iget v8, v0, Lff8;->d:I

    .line 42
    .line 43
    const-string v9, "Code size must not be bigger than 31"

    .line 44
    .line 45
    const/16 v10, 0x1f

    .line 46
    .line 47
    if-gt v8, v10, :cond_14

    .line 48
    .line 49
    iget-object v11, v0, Lff8;->b:Lgr0;

    .line 50
    .line 51
    invoke-virtual {v11, v8}, Lgr0;->a(I)J

    .line 52
    .line 53
    .line 54
    move-result-wide v12

    .line 55
    long-to-int v8, v12

    .line 56
    const/4 v12, -0x1

    .line 57
    if-gez v8, :cond_2

    .line 58
    .line 59
    move/from16 v16, v4

    .line 60
    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :cond_2
    iget-object v13, v0, Lff8;->n:[I

    .line 64
    .line 65
    iget v14, v0, Lff8;->c:I

    .line 66
    .line 67
    iget-object v15, v0, Lff8;->t:[Z

    .line 68
    .line 69
    move/from16 v16, v4

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    if-eq v8, v14, :cond_7

    .line 73
    .line 74
    aget-boolean v9, v15, v8

    .line 75
    .line 76
    if-nez v9, :cond_4

    .line 77
    .line 78
    iget v8, v0, Lff8;->f:I

    .line 79
    .line 80
    if-eq v8, v12, :cond_3

    .line 81
    .line 82
    iget-byte v9, v0, Lff8;->e:B

    .line 83
    .line 84
    invoke-virtual {v0, v9, v8}, Lff8;->a(BI)I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    move v9, v4

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const-string v0, "The first code can\'t be a reference to its preceding code"

    .line 91
    .line 92
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return v16

    .line 96
    :cond_4
    move/from16 v9, v16

    .line 97
    .line 98
    :goto_1
    move v10, v8

    .line 99
    :goto_2
    if-ltz v10, :cond_5

    .line 100
    .line 101
    iget v11, v0, Lff8;->r:I

    .line 102
    .line 103
    sub-int/2addr v11, v4

    .line 104
    iput v11, v0, Lff8;->r:I

    .line 105
    .line 106
    iget-object v14, v0, Lff8;->p:[B

    .line 107
    .line 108
    aget-byte v14, v14, v10

    .line 109
    .line 110
    aput-byte v14, v5, v11

    .line 111
    .line 112
    aget v10, v13, v10

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    iget v4, v0, Lff8;->f:I

    .line 116
    .line 117
    if-eq v4, v12, :cond_6

    .line 118
    .line 119
    if-nez v9, :cond_6

    .line 120
    .line 121
    iget v9, v0, Lff8;->r:I

    .line 122
    .line 123
    aget-byte v9, v5, v9

    .line 124
    .line 125
    invoke-virtual {v0, v9, v4}, Lff8;->a(BI)I

    .line 126
    .line 127
    .line 128
    :cond_6
    iput v8, v0, Lff8;->f:I

    .line 129
    .line 130
    iget v12, v0, Lff8;->r:I

    .line 131
    .line 132
    aget-byte v4, v5, v12

    .line 133
    .line 134
    iput-byte v4, v0, Lff8;->e:B

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_7
    iget v8, v0, Lff8;->d:I

    .line 138
    .line 139
    if-gt v8, v10, :cond_13

    .line 140
    .line 141
    invoke-virtual {v11, v8}, Lgr0;->a(I)J

    .line 142
    .line 143
    .line 144
    move-result-wide v8

    .line 145
    long-to-int v8, v8

    .line 146
    if-ltz v8, :cond_12

    .line 147
    .line 148
    if-ne v8, v4, :cond_9

    .line 149
    .line 150
    iget v4, v0, Lff8;->d:I

    .line 151
    .line 152
    const/16 v8, 0xd

    .line 153
    .line 154
    if-ge v4, v8, :cond_8

    .line 155
    .line 156
    add-int/lit8 v4, v4, 0x1

    .line 157
    .line 158
    iput v4, v0, Lff8;->d:I

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_8
    const-string v0, "Attempt to increase code size beyond maximum"

    .line 162
    .line 163
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return v16

    .line 167
    :cond_9
    const/4 v9, 0x2

    .line 168
    if-ne v8, v9, :cond_11

    .line 169
    .line 170
    const/16 v8, 0x2000

    .line 171
    .line 172
    new-array v9, v8, [Z

    .line 173
    .line 174
    move/from16 v10, v16

    .line 175
    .line 176
    :goto_3
    array-length v11, v15

    .line 177
    if-ge v10, v11, :cond_b

    .line 178
    .line 179
    aget-boolean v11, v15, v10

    .line 180
    .line 181
    if-eqz v11, :cond_a

    .line 182
    .line 183
    aget v11, v13, v10

    .line 184
    .line 185
    if-eq v11, v12, :cond_a

    .line 186
    .line 187
    aput-boolean v4, v9, v11

    .line 188
    .line 189
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_b
    add-int/lit8 v4, v14, 0x1

    .line 193
    .line 194
    :goto_4
    if-ge v4, v8, :cond_d

    .line 195
    .line 196
    aget-boolean v10, v9, v4

    .line 197
    .line 198
    if-nez v10, :cond_c

    .line 199
    .line 200
    aput-boolean v16, v15, v4

    .line 201
    .line 202
    aput v12, v13, v4

    .line 203
    .line 204
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_d
    add-int/lit8 v14, v14, 0x1

    .line 208
    .line 209
    iput v14, v0, Lff8;->k:I

    .line 210
    .line 211
    :goto_5
    move/from16 v12, v16

    .line 212
    .line 213
    :goto_6
    if-gez v12, :cond_f

    .line 214
    .line 215
    if-lez v6, :cond_e

    .line 216
    .line 217
    goto :goto_8

    .line 218
    :cond_e
    return v12

    .line 219
    :cond_f
    add-int v4, v2, v6

    .line 220
    .line 221
    array-length v8, v5

    .line 222
    iget v9, v0, Lff8;->r:I

    .line 223
    .line 224
    sub-int/2addr v8, v9

    .line 225
    if-lez v8, :cond_10

    .line 226
    .line 227
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    iget v8, v0, Lff8;->r:I

    .line 232
    .line 233
    invoke-static {v5, v8, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    .line 235
    .line 236
    iget v4, v0, Lff8;->r:I

    .line 237
    .line 238
    add-int/2addr v4, v7

    .line 239
    iput v4, v0, Lff8;->r:I

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_10
    move/from16 v7, v16

    .line 243
    .line 244
    :goto_7
    add-int/2addr v6, v7

    .line 245
    move/from16 v4, v16

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_11
    const-string v0, "Invalid clear code subcode "

    .line 250
    .line 251
    invoke-static {v8, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    return v16

    .line 259
    :cond_12
    const-string v0, "Unexpected EOF;"

    .line 260
    .line 261
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    return v16

    .line 265
    :cond_13
    invoke-static {v9}, Lc6;->f(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    return v16

    .line 269
    :cond_14
    move/from16 v16, v4

    .line 270
    .line 271
    invoke-static {v9}, Lc6;->f(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return v16

    .line 275
    :cond_15
    :goto_8
    return v6
.end method
