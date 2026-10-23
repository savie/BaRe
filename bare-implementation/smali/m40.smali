.class public final Lm40;
.super Ljava/lang/Object;


# static fields
.field public static final e:[B


# instance fields
.field public a:Ln40;

.field public b:[Lk40;

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Lm40;->e:[B

    .line 5
    .line 6
    return-void
.end method

.method public static a([JIIII)V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p4, v0}, Lm40;->f([JIIII)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x18

    .line 7
    .line 8
    invoke-static {p0, p3, p4, p2, v0}, Lm40;->f([JIIII)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    invoke-static {p0, p1, p2, p4, v0}, Lm40;->f([JIIII)V

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x3f

    .line 17
    .line 18
    invoke-static {p0, p3, p4, p2, p1}, Lm40;->f([JIIII)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static b([BLss0;[B)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object p0, Lm40;->e:[B

    .line 6
    .line 7
    invoke-virtual {p1, p0, v1, v0}, Lss0;->update([BII)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    array-length v2, p2

    .line 12
    invoke-static {p0, v2, v1}, Lxx3;->o([BII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0, v1, v0}, Lss0;->update([BII)V

    .line 16
    .line 17
    .line 18
    array-length p0, p2

    .line 19
    invoke-virtual {p1, p2, v1, p0}, Lss0;->update([BII)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static d(I[B[B)V
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v1, p0, v2}, Lxx3;->o([BII)V

    .line 6
    .line 7
    .line 8
    const/16 v3, 0x40

    .line 9
    .line 10
    if-gt p0, v3, :cond_0

    .line 11
    .line 12
    new-instance v3, Lss0;

    .line 13
    .line 14
    mul-int/lit8 p0, p0, 0x8

    .line 15
    .line 16
    invoke-direct {v3, p0}, Lss0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v1, v2, v0}, Lss0;->update([BII)V

    .line 20
    .line 21
    .line 22
    array-length p0, p1

    .line 23
    invoke-virtual {v3, p1, v2, p0}, Lss0;->update([BII)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p2, v2}, Lss0;->doFinal([BI)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v4, Lss0;

    .line 31
    .line 32
    const/16 v5, 0x200

    .line 33
    .line 34
    invoke-direct {v4, v5}, Lss0;-><init>(I)V

    .line 35
    .line 36
    .line 37
    new-array v5, v3, [B

    .line 38
    .line 39
    invoke-virtual {v4, v1, v2, v0}, Lss0;->update([BII)V

    .line 40
    .line 41
    .line 42
    array-length v0, p1

    .line 43
    invoke-virtual {v4, p1, v2, v0}, Lss0;->update([BII)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v5, v2}, Lss0;->doFinal([BI)I

    .line 47
    .line 48
    .line 49
    const/16 p1, 0x20

    .line 50
    .line 51
    invoke-static {v5, v2, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v0, p0, 0x1f

    .line 55
    .line 56
    div-int/2addr v0, p1

    .line 57
    const/4 v1, 0x2

    .line 58
    sub-int/2addr v0, v1

    .line 59
    move v6, p1

    .line 60
    :goto_0
    if-gt v1, v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v4, v5, v2, v3}, Lss0;->update([BII)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5, v2}, Lss0;->doFinal([BI)I

    .line 66
    .line 67
    .line 68
    invoke-static {v5, v2, p2, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    add-int/lit8 v6, v6, 0x20

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    mul-int/2addr v0, p1

    .line 77
    sub-int/2addr p0, v0

    .line 78
    new-instance p1, Lss0;

    .line 79
    .line 80
    mul-int/lit8 p0, p0, 0x8

    .line 81
    .line 82
    invoke-direct {p1, p0}, Lss0;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v5, v2, v3}, Lss0;->update([BII)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2, v6}, Lss0;->doFinal([BI)I

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public static f([JIIII)V
    .locals 14

    .line 1
    aget-wide v6, p0, p1

    .line 2
    .line 3
    aget-wide v4, p0, p2

    .line 4
    .line 5
    aget-wide v8, p0, p3

    .line 6
    .line 7
    const-wide v0, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long v2, v6, v0

    .line 13
    .line 14
    const-wide/16 v10, 0x2

    .line 15
    .line 16
    mul-long/2addr v2, v10

    .line 17
    and-long/2addr v0, v4

    .line 18
    move-wide v12, v2

    .line 19
    move-wide v2, v0

    .line 20
    move-wide v0, v12

    .line 21
    invoke-static/range {v0 .. v7}, Ldj7;->d(JJJJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    xor-long v2, v8, v0

    .line 26
    .line 27
    move/from16 v4, p4

    .line 28
    .line 29
    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    aput-wide v0, p0, p1

    .line 34
    .line 35
    aput-wide v2, p0, p3

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final c([B[B)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    array-length v3, v1

    .line 6
    const/4 v8, 0x4

    .line 7
    if-lt v3, v8, :cond_1e

    .line 8
    .line 9
    const/16 v9, 0x400

    .line 10
    .line 11
    new-array v10, v9, [B

    .line 12
    .line 13
    new-instance v11, Lss0;

    .line 14
    .line 15
    const/16 v2, 0x200

    .line 16
    .line 17
    invoke-direct {v11, v2}, Lss0;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Lm40;->a:Ln40;

    .line 21
    .line 22
    iget v4, v2, Ln40;->f:I

    .line 23
    .line 24
    move v5, v4

    .line 25
    iget v4, v2, Ln40;->e:I

    .line 26
    .line 27
    move v6, v5

    .line 28
    iget v5, v2, Ln40;->d:I

    .line 29
    .line 30
    move v7, v6

    .line 31
    iget v6, v2, Ln40;->g:I

    .line 32
    .line 33
    iget v2, v2, Ln40;->h:I

    .line 34
    .line 35
    move/from16 v34, v7

    .line 36
    .line 37
    move v7, v2

    .line 38
    move/from16 v2, v34

    .line 39
    .line 40
    filled-new-array/range {v2 .. v7}, [I

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v10, v2}, Lxx3;->p([B[I)V

    .line 45
    .line 46
    .line 47
    const/16 v2, 0x18

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-virtual {v11, v10, v4, v2}, Lss0;->update([BII)V

    .line 51
    .line 52
    .line 53
    move-object/from16 v2, p1

    .line 54
    .line 55
    invoke-static {v10, v11, v2}, Lm40;->b([BLss0;[B)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Lm40;->a:Ln40;

    .line 59
    .line 60
    iget-object v2, v2, Ln40;->a:[B

    .line 61
    .line 62
    invoke-static {v2}, Lms8;->k([B)[B

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v10, v11, v2}, Lm40;->b([BLss0;[B)V

    .line 67
    .line 68
    .line 69
    iget-object v2, v0, Lm40;->a:Ln40;

    .line 70
    .line 71
    iget-object v2, v2, Ln40;->b:[B

    .line 72
    .line 73
    invoke-static {v2}, Lms8;->k([B)[B

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v10, v11, v2}, Lm40;->b([BLss0;[B)V

    .line 78
    .line 79
    .line 80
    iget-object v2, v0, Lm40;->a:Ln40;

    .line 81
    .line 82
    iget-object v2, v2, Ln40;->c:[B

    .line 83
    .line 84
    invoke-static {v2}, Lms8;->k([B)[B

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v10, v11, v2}, Lm40;->b([BLss0;[B)V

    .line 89
    .line 90
    .line 91
    const/16 v2, 0x48

    .line 92
    .line 93
    new-array v5, v2, [B

    .line 94
    .line 95
    invoke-virtual {v11, v5, v4}, Lss0;->doFinal([BI)I

    .line 96
    .line 97
    .line 98
    new-array v2, v2, [B

    .line 99
    .line 100
    const/16 v6, 0x40

    .line 101
    .line 102
    invoke-static {v5, v4, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    .line 104
    .line 105
    const/4 v7, 0x1

    .line 106
    aput-byte v7, v2, v6

    .line 107
    .line 108
    move v6, v4

    .line 109
    :goto_0
    iget-object v11, v0, Lm40;->a:Ln40;

    .line 110
    .line 111
    iget v11, v11, Ln40;->f:I

    .line 112
    .line 113
    if-ge v6, v11, :cond_2

    .line 114
    .line 115
    const/16 v11, 0x44

    .line 116
    .line 117
    invoke-static {v5, v6, v11}, Lxx3;->o([BII)V

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v6, v11}, Lxx3;->o([BII)V

    .line 121
    .line 122
    .line 123
    invoke-static {v9, v5, v10}, Lm40;->d(I[B[B)V

    .line 124
    .line 125
    .line 126
    iget-object v11, v0, Lm40;->b:[Lk40;

    .line 127
    .line 128
    iget v12, v0, Lm40;->d:I

    .line 129
    .line 130
    mul-int/2addr v12, v6

    .line 131
    aget-object v11, v11, v12

    .line 132
    .line 133
    iget-object v11, v11, Lk40;->a:[J

    .line 134
    .line 135
    move v12, v4

    .line 136
    move v13, v12

    .line 137
    :goto_1
    array-length v14, v11

    .line 138
    if-ge v12, v14, :cond_0

    .line 139
    .line 140
    invoke-static {v10, v13}, Lxx3;->t([BI)J

    .line 141
    .line 142
    .line 143
    move-result-wide v14

    .line 144
    aput-wide v14, v11, v12

    .line 145
    .line 146
    add-int/lit8 v13, v13, 0x8

    .line 147
    .line 148
    add-int/lit8 v12, v12, 0x1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_0
    invoke-static {v9, v2, v10}, Lm40;->d(I[B[B)V

    .line 152
    .line 153
    .line 154
    iget-object v11, v0, Lm40;->b:[Lk40;

    .line 155
    .line 156
    iget v12, v0, Lm40;->d:I

    .line 157
    .line 158
    mul-int/2addr v12, v6

    .line 159
    add-int/2addr v12, v7

    .line 160
    aget-object v11, v11, v12

    .line 161
    .line 162
    iget-object v11, v11, Lk40;->a:[J

    .line 163
    .line 164
    move v12, v4

    .line 165
    move v13, v12

    .line 166
    :goto_2
    array-length v14, v11

    .line 167
    if-ge v12, v14, :cond_1

    .line 168
    .line 169
    invoke-static {v10, v13}, Lxx3;->t([BI)J

    .line 170
    .line 171
    .line 172
    move-result-wide v14

    .line 173
    aput-wide v14, v11, v12

    .line 174
    .line 175
    add-int/lit8 v13, v13, 0x8

    .line 176
    .line 177
    add-int/lit8 v12, v12, 0x1

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_2
    new-instance v2, Ll40;

    .line 184
    .line 185
    invoke-direct {v2, v4}, Ll40;-><init>(I)V

    .line 186
    .line 187
    .line 188
    new-instance v5, Lk40;

    .line 189
    .line 190
    invoke-direct {v5}, Lk40;-><init>()V

    .line 191
    .line 192
    .line 193
    iput-object v5, v2, Ll40;->b:Ljava/lang/Object;

    .line 194
    .line 195
    new-instance v5, Lk40;

    .line 196
    .line 197
    invoke-direct {v5}, Lk40;-><init>()V

    .line 198
    .line 199
    .line 200
    iput-object v5, v2, Ll40;->c:Ljava/lang/Object;

    .line 201
    .line 202
    new-instance v5, Lk40;

    .line 203
    .line 204
    invoke-direct {v5}, Lk40;-><init>()V

    .line 205
    .line 206
    .line 207
    iput-object v5, v2, Ll40;->d:Ljava/lang/Object;

    .line 208
    .line 209
    new-instance v5, Lk40;

    .line 210
    .line 211
    invoke-direct {v5}, Lk40;-><init>()V

    .line 212
    .line 213
    .line 214
    iput-object v5, v2, Ll40;->e:Ljava/lang/Object;

    .line 215
    .line 216
    move v5, v4

    .line 217
    :goto_3
    iget-object v6, v0, Lm40;->a:Ln40;

    .line 218
    .line 219
    iget v6, v6, Ln40;->d:I

    .line 220
    .line 221
    const-wide/16 v11, 0x0

    .line 222
    .line 223
    if-ge v5, v6, :cond_18

    .line 224
    .line 225
    move v6, v4

    .line 226
    :goto_4
    if-ge v6, v8, :cond_17

    .line 227
    .line 228
    move v13, v4

    .line 229
    :goto_5
    iget-object v14, v0, Lm40;->a:Ln40;

    .line 230
    .line 231
    iget v15, v14, Ln40;->f:I

    .line 232
    .line 233
    if-ge v13, v15, :cond_16

    .line 234
    .line 235
    iget v14, v14, Ln40;->h:I

    .line 236
    .line 237
    const/4 v15, 0x2

    .line 238
    if-eq v14, v7, :cond_4

    .line 239
    .line 240
    if-ne v14, v15, :cond_3

    .line 241
    .line 242
    if-nez v5, :cond_3

    .line 243
    .line 244
    if-ge v6, v15, :cond_3

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_3
    move v14, v4

    .line 248
    goto :goto_7

    .line 249
    :cond_4
    :goto_6
    move v14, v7

    .line 250
    :goto_7
    if-nez v5, :cond_5

    .line 251
    .line 252
    if-nez v6, :cond_5

    .line 253
    .line 254
    move/from16 v16, v15

    .line 255
    .line 256
    :goto_8
    move/from16 p1, v7

    .line 257
    .line 258
    goto :goto_9

    .line 259
    :cond_5
    move/from16 v16, v4

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :goto_9
    iget v7, v0, Lm40;->d:I

    .line 263
    .line 264
    mul-int v17, v13, v7

    .line 265
    .line 266
    move/from16 v18, v8

    .line 267
    .line 268
    iget v8, v0, Lm40;->c:I

    .line 269
    .line 270
    mul-int/2addr v8, v6

    .line 271
    add-int v8, v8, v17

    .line 272
    .line 273
    add-int v8, v8, v16

    .line 274
    .line 275
    rem-int v17, v8, v7

    .line 276
    .line 277
    if-nez v17, :cond_6

    .line 278
    .line 279
    add-int/2addr v7, v8

    .line 280
    add-int/lit8 v7, v7, -0x1

    .line 281
    .line 282
    goto :goto_a

    .line 283
    :cond_6
    add-int/lit8 v7, v8, -0x1

    .line 284
    .line 285
    :goto_a
    const-wide/16 v19, 0x1

    .line 286
    .line 287
    const/16 v17, 0x6

    .line 288
    .line 289
    const-wide v21, 0xffffffffL

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    if-eqz v14, :cond_8

    .line 295
    .line 296
    move/from16 v23, v15

    .line 297
    .line 298
    iget-object v15, v2, Ll40;->d:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v15, Lk40;

    .line 301
    .line 302
    move/from16 v24, v4

    .line 303
    .line 304
    iget-object v4, v15, Lk40;->a:[J

    .line 305
    .line 306
    invoke-static {v4, v11, v12}, Ljava/util/Arrays;->fill([JJ)V

    .line 307
    .line 308
    .line 309
    iget-object v4, v2, Ll40;->e:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v4, Lk40;

    .line 312
    .line 313
    iget-object v9, v4, Lk40;->a:[J

    .line 314
    .line 315
    move/from16 v25, v7

    .line 316
    .line 317
    iget-object v7, v4, Lk40;->a:[J

    .line 318
    .line 319
    invoke-static {v9, v11, v12}, Ljava/util/Arrays;->fill([JJ)V

    .line 320
    .line 321
    .line 322
    int-to-long v11, v5

    .line 323
    and-long v11, v11, v21

    .line 324
    .line 325
    aput-wide v11, v7, v24

    .line 326
    .line 327
    int-to-long v11, v13

    .line 328
    and-long v11, v11, v21

    .line 329
    .line 330
    aput-wide v11, v7, p1

    .line 331
    .line 332
    int-to-long v11, v6

    .line 333
    and-long v11, v11, v21

    .line 334
    .line 335
    aput-wide v11, v7, v23

    .line 336
    .line 337
    iget-object v9, v0, Lm40;->b:[Lk40;

    .line 338
    .line 339
    array-length v9, v9

    .line 340
    int-to-long v11, v9

    .line 341
    and-long v11, v11, v21

    .line 342
    .line 343
    const/4 v9, 0x3

    .line 344
    aput-wide v11, v7, v9

    .line 345
    .line 346
    iget-object v9, v0, Lm40;->a:Ln40;

    .line 347
    .line 348
    iget v11, v9, Ln40;->d:I

    .line 349
    .line 350
    int-to-long v11, v11

    .line 351
    and-long v11, v11, v21

    .line 352
    .line 353
    aput-wide v11, v7, v18

    .line 354
    .line 355
    iget v9, v9, Ln40;->h:I

    .line 356
    .line 357
    int-to-long v11, v9

    .line 358
    and-long v11, v11, v21

    .line 359
    .line 360
    const/4 v9, 0x5

    .line 361
    aput-wide v11, v7, v9

    .line 362
    .line 363
    if-nez v5, :cond_7

    .line 364
    .line 365
    if-nez v6, :cond_7

    .line 366
    .line 367
    aget-wide v11, v7, v17

    .line 368
    .line 369
    add-long v11, v11, v19

    .line 370
    .line 371
    aput-wide v11, v7, v17

    .line 372
    .line 373
    iget-object v9, v2, Ll40;->c:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v9, Lk40;

    .line 376
    .line 377
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    iget-object v11, v9, Lk40;->a:[J

    .line 381
    .line 382
    move/from16 v23, v5

    .line 383
    .line 384
    move/from16 v12, v24

    .line 385
    .line 386
    const/16 v5, 0x80

    .line 387
    .line 388
    invoke-static {v7, v12, v11, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2}, Ll40;->b()V

    .line 392
    .line 393
    .line 394
    invoke-static {v15, v4, v9}, Lk40;->a(Lk40;Lk40;Lk40;)V

    .line 395
    .line 396
    .line 397
    iget-object v7, v15, Lk40;->a:[J

    .line 398
    .line 399
    invoke-static {v7, v12, v11, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2}, Ll40;->b()V

    .line 403
    .line 404
    .line 405
    invoke-static {v15, v15, v9}, Lk40;->a(Lk40;Lk40;Lk40;)V

    .line 406
    .line 407
    .line 408
    goto :goto_b

    .line 409
    :cond_7
    move/from16 v23, v5

    .line 410
    .line 411
    goto :goto_b

    .line 412
    :cond_8
    move/from16 v23, v5

    .line 413
    .line 414
    move/from16 v25, v7

    .line 415
    .line 416
    const/4 v15, 0x0

    .line 417
    move-object v4, v15

    .line 418
    :goto_b
    if-eqz v23, :cond_9

    .line 419
    .line 420
    iget-object v5, v0, Lm40;->a:Ln40;

    .line 421
    .line 422
    iget v5, v5, Ln40;->g:I

    .line 423
    .line 424
    const/16 v7, 0x10

    .line 425
    .line 426
    if-eq v5, v7, :cond_9

    .line 427
    .line 428
    move/from16 v12, p1

    .line 429
    .line 430
    goto :goto_c

    .line 431
    :cond_9
    const/4 v12, 0x0

    .line 432
    :goto_c
    move/from16 v5, v16

    .line 433
    .line 434
    move/from16 v7, v25

    .line 435
    .line 436
    :goto_d
    iget v9, v0, Lm40;->c:I

    .line 437
    .line 438
    if-ge v5, v9, :cond_15

    .line 439
    .line 440
    if-eqz v14, :cond_b

    .line 441
    .line 442
    rem-int/lit16 v9, v5, 0x80

    .line 443
    .line 444
    if-nez v9, :cond_a

    .line 445
    .line 446
    iget-object v11, v4, Lk40;->a:[J

    .line 447
    .line 448
    aget-wide v26, v11, v17

    .line 449
    .line 450
    add-long v26, v26, v19

    .line 451
    .line 452
    aput-wide v26, v11, v17

    .line 453
    .line 454
    iget-object v11, v2, Ll40;->c:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast v11, Lk40;

    .line 457
    .line 458
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    move/from16 v16, v5

    .line 462
    .line 463
    iget-object v5, v11, Lk40;->a:[J

    .line 464
    .line 465
    move/from16 v25, v6

    .line 466
    .line 467
    iget-object v6, v4, Lk40;->a:[J

    .line 468
    .line 469
    move/from16 v26, v7

    .line 470
    .line 471
    move/from16 v27, v8

    .line 472
    .line 473
    const/4 v7, 0x0

    .line 474
    const/16 v8, 0x80

    .line 475
    .line 476
    invoke-static {v6, v7, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v2}, Ll40;->b()V

    .line 480
    .line 481
    .line 482
    invoke-static {v15, v4, v11}, Lk40;->a(Lk40;Lk40;Lk40;)V

    .line 483
    .line 484
    .line 485
    iget-object v6, v15, Lk40;->a:[J

    .line 486
    .line 487
    invoke-static {v6, v7, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2}, Ll40;->b()V

    .line 491
    .line 492
    .line 493
    invoke-static {v15, v15, v11}, Lk40;->a(Lk40;Lk40;Lk40;)V

    .line 494
    .line 495
    .line 496
    goto :goto_e

    .line 497
    :cond_a
    move/from16 v16, v5

    .line 498
    .line 499
    move/from16 v25, v6

    .line 500
    .line 501
    move/from16 v26, v7

    .line 502
    .line 503
    move/from16 v27, v8

    .line 504
    .line 505
    const/4 v7, 0x0

    .line 506
    :goto_e
    iget-object v5, v15, Lk40;->a:[J

    .line 507
    .line 508
    aget-wide v8, v5, v9

    .line 509
    .line 510
    goto :goto_f

    .line 511
    :cond_b
    move/from16 v16, v5

    .line 512
    .line 513
    move/from16 v25, v6

    .line 514
    .line 515
    move/from16 v26, v7

    .line 516
    .line 517
    move/from16 v27, v8

    .line 518
    .line 519
    const/4 v7, 0x0

    .line 520
    iget-object v5, v0, Lm40;->b:[Lk40;

    .line 521
    .line 522
    aget-object v5, v5, v26

    .line 523
    .line 524
    iget-object v5, v5, Lk40;->a:[J

    .line 525
    .line 526
    aget-wide v8, v5, v7

    .line 527
    .line 528
    :goto_f
    const/16 v5, 0x20

    .line 529
    .line 530
    ushr-long v6, v8, v5

    .line 531
    .line 532
    iget-object v11, v0, Lm40;->a:Ln40;

    .line 533
    .line 534
    iget v11, v11, Ln40;->f:I

    .line 535
    .line 536
    move/from16 v28, v5

    .line 537
    .line 538
    move-wide/from16 v29, v6

    .line 539
    .line 540
    int-to-long v5, v11

    .line 541
    rem-long v6, v29, v5

    .line 542
    .line 543
    long-to-int v5, v6

    .line 544
    if-nez v23, :cond_c

    .line 545
    .line 546
    if-nez v25, :cond_c

    .line 547
    .line 548
    move v5, v13

    .line 549
    :cond_c
    if-ne v5, v13, :cond_d

    .line 550
    .line 551
    move/from16 v6, p1

    .line 552
    .line 553
    goto :goto_10

    .line 554
    :cond_d
    const/4 v6, 0x0

    .line 555
    :goto_10
    iget v7, v0, Lm40;->c:I

    .line 556
    .line 557
    if-nez v23, :cond_10

    .line 558
    .line 559
    if-eqz v6, :cond_e

    .line 560
    .line 561
    mul-int v6, v25, v7

    .line 562
    .line 563
    add-int v6, v6, v16

    .line 564
    .line 565
    add-int/lit8 v6, v6, -0x1

    .line 566
    .line 567
    :goto_11
    const/4 v7, 0x0

    .line 568
    goto :goto_15

    .line 569
    :cond_e
    mul-int v6, v25, v7

    .line 570
    .line 571
    if-nez v16, :cond_f

    .line 572
    .line 573
    const/4 v11, -0x1

    .line 574
    goto :goto_12

    .line 575
    :cond_f
    const/4 v11, 0x0

    .line 576
    :goto_12
    add-int/2addr v6, v11

    .line 577
    goto :goto_11

    .line 578
    :cond_10
    add-int/lit8 v29, v25, 0x1

    .line 579
    .line 580
    mul-int v29, v29, v7

    .line 581
    .line 582
    iget v11, v0, Lm40;->d:I

    .line 583
    .line 584
    rem-int v29, v29, v11

    .line 585
    .line 586
    sub-int/2addr v11, v7

    .line 587
    if-eqz v6, :cond_11

    .line 588
    .line 589
    add-int v11, v11, v16

    .line 590
    .line 591
    add-int/lit8 v6, v11, -0x1

    .line 592
    .line 593
    :goto_13
    move/from16 v7, v29

    .line 594
    .line 595
    goto :goto_15

    .line 596
    :cond_11
    if-nez v16, :cond_12

    .line 597
    .line 598
    const/16 v30, -0x1

    .line 599
    .line 600
    goto :goto_14

    .line 601
    :cond_12
    const/16 v30, 0x0

    .line 602
    .line 603
    :goto_14
    add-int v6, v11, v30

    .line 604
    .line 605
    goto :goto_13

    .line 606
    :goto_15
    and-long v8, v8, v21

    .line 607
    .line 608
    mul-long/2addr v8, v8

    .line 609
    ushr-long v8, v8, v28

    .line 610
    .line 611
    add-int/lit8 v11, v6, -0x1

    .line 612
    .line 613
    move-object/from16 v29, v4

    .line 614
    .line 615
    move/from16 v30, v5

    .line 616
    .line 617
    int-to-long v4, v11

    .line 618
    move-wide/from16 v31, v4

    .line 619
    .line 620
    int-to-long v4, v6

    .line 621
    mul-long/2addr v4, v8

    .line 622
    ushr-long v4, v4, v28

    .line 623
    .line 624
    sub-long v4, v31, v4

    .line 625
    .line 626
    int-to-long v6, v7

    .line 627
    add-long/2addr v6, v4

    .line 628
    long-to-int v4, v6

    .line 629
    iget v5, v0, Lm40;->d:I

    .line 630
    .line 631
    rem-int/2addr v4, v5

    .line 632
    iget-object v6, v0, Lm40;->b:[Lk40;

    .line 633
    .line 634
    aget-object v7, v6, v26

    .line 635
    .line 636
    mul-int v5, v5, v30

    .line 637
    .line 638
    add-int/2addr v5, v4

    .line 639
    aget-object v4, v6, v5

    .line 640
    .line 641
    aget-object v5, v6, v27

    .line 642
    .line 643
    iget-object v6, v2, Ll40;->b:Ljava/lang/Object;

    .line 644
    .line 645
    check-cast v6, Lk40;

    .line 646
    .line 647
    if-eqz v12, :cond_14

    .line 648
    .line 649
    invoke-static {v6, v7, v4}, Lk40;->a(Lk40;Lk40;Lk40;)V

    .line 650
    .line 651
    .line 652
    iget-object v4, v6, Lk40;->a:[J

    .line 653
    .line 654
    iget-object v6, v2, Ll40;->c:Ljava/lang/Object;

    .line 655
    .line 656
    check-cast v6, Lk40;

    .line 657
    .line 658
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    iget-object v6, v6, Lk40;->a:[J

    .line 662
    .line 663
    const/4 v7, 0x0

    .line 664
    const/16 v8, 0x80

    .line 665
    .line 666
    invoke-static {v4, v7, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v2}, Ll40;->b()V

    .line 670
    .line 671
    .line 672
    iget-object v5, v5, Lk40;->a:[J

    .line 673
    .line 674
    const/4 v7, 0x0

    .line 675
    :goto_16
    if-ge v7, v8, :cond_13

    .line 676
    .line 677
    aget-wide v8, v5, v7

    .line 678
    .line 679
    aget-wide v30, v4, v7

    .line 680
    .line 681
    aget-wide v32, v6, v7

    .line 682
    .line 683
    xor-long v30, v30, v32

    .line 684
    .line 685
    xor-long v8, v8, v30

    .line 686
    .line 687
    aput-wide v8, v5, v7

    .line 688
    .line 689
    add-int/lit8 v7, v7, 0x1

    .line 690
    .line 691
    const/16 v8, 0x80

    .line 692
    .line 693
    goto :goto_16

    .line 694
    :cond_13
    const/4 v9, 0x0

    .line 695
    goto :goto_17

    .line 696
    :cond_14
    invoke-static {v6, v7, v4}, Lk40;->a(Lk40;Lk40;Lk40;)V

    .line 697
    .line 698
    .line 699
    iget-object v4, v2, Ll40;->c:Ljava/lang/Object;

    .line 700
    .line 701
    check-cast v4, Lk40;

    .line 702
    .line 703
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 704
    .line 705
    .line 706
    iget-object v7, v6, Lk40;->a:[J

    .line 707
    .line 708
    iget-object v8, v4, Lk40;->a:[J

    .line 709
    .line 710
    const/4 v9, 0x0

    .line 711
    const/16 v11, 0x80

    .line 712
    .line 713
    invoke-static {v7, v9, v8, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v2}, Ll40;->b()V

    .line 717
    .line 718
    .line 719
    invoke-static {v5, v6, v4}, Lk40;->a(Lk40;Lk40;Lk40;)V

    .line 720
    .line 721
    .line 722
    :goto_17
    add-int/lit8 v8, v27, 0x1

    .line 723
    .line 724
    add-int/lit8 v5, v16, 0x1

    .line 725
    .line 726
    move/from16 v6, v25

    .line 727
    .line 728
    move/from16 v7, v27

    .line 729
    .line 730
    move-object/from16 v4, v29

    .line 731
    .line 732
    goto/16 :goto_d

    .line 733
    .line 734
    :cond_15
    move/from16 v25, v6

    .line 735
    .line 736
    const/4 v9, 0x0

    .line 737
    add-int/lit8 v13, v13, 0x1

    .line 738
    .line 739
    move/from16 v7, p1

    .line 740
    .line 741
    move v4, v9

    .line 742
    move/from16 v8, v18

    .line 743
    .line 744
    move/from16 v5, v23

    .line 745
    .line 746
    const-wide/16 v11, 0x0

    .line 747
    .line 748
    goto/16 :goto_5

    .line 749
    .line 750
    :cond_16
    move v9, v4

    .line 751
    move/from16 v23, v5

    .line 752
    .line 753
    move/from16 v25, v6

    .line 754
    .line 755
    move/from16 p1, v7

    .line 756
    .line 757
    move/from16 v18, v8

    .line 758
    .line 759
    add-int/lit8 v6, v25, 0x1

    .line 760
    .line 761
    const-wide/16 v11, 0x0

    .line 762
    .line 763
    goto/16 :goto_4

    .line 764
    .line 765
    :cond_17
    move v9, v4

    .line 766
    move/from16 v23, v5

    .line 767
    .line 768
    move/from16 p1, v7

    .line 769
    .line 770
    move/from16 v18, v8

    .line 771
    .line 772
    add-int/lit8 v5, v23, 0x1

    .line 773
    .line 774
    goto/16 :goto_3

    .line 775
    .line 776
    :cond_18
    move v9, v4

    .line 777
    move/from16 p1, v7

    .line 778
    .line 779
    iget-object v2, v0, Lm40;->b:[Lk40;

    .line 780
    .line 781
    iget v4, v0, Lm40;->d:I

    .line 782
    .line 783
    add-int/lit8 v4, v4, -0x1

    .line 784
    .line 785
    aget-object v2, v2, v4

    .line 786
    .line 787
    move/from16 v4, p1

    .line 788
    .line 789
    :goto_18
    iget-object v5, v0, Lm40;->a:Ln40;

    .line 790
    .line 791
    iget v5, v5, Ln40;->f:I

    .line 792
    .line 793
    if-ge v4, v5, :cond_1a

    .line 794
    .line 795
    iget v5, v0, Lm40;->d:I

    .line 796
    .line 797
    mul-int v6, v4, v5

    .line 798
    .line 799
    add-int/lit8 v5, v5, -0x1

    .line 800
    .line 801
    add-int/2addr v5, v6

    .line 802
    iget-object v6, v0, Lm40;->b:[Lk40;

    .line 803
    .line 804
    aget-object v5, v6, v5

    .line 805
    .line 806
    iget-object v6, v2, Lk40;->a:[J

    .line 807
    .line 808
    iget-object v5, v5, Lk40;->a:[J

    .line 809
    .line 810
    move v12, v9

    .line 811
    const/16 v8, 0x80

    .line 812
    .line 813
    :goto_19
    if-ge v12, v8, :cond_19

    .line 814
    .line 815
    aget-wide v13, v6, v12

    .line 816
    .line 817
    aget-wide v15, v5, v12

    .line 818
    .line 819
    xor-long/2addr v13, v15

    .line 820
    aput-wide v13, v6, v12

    .line 821
    .line 822
    add-int/lit8 v12, v12, 0x1

    .line 823
    .line 824
    goto :goto_19

    .line 825
    :cond_19
    add-int/lit8 v4, v4, 0x1

    .line 826
    .line 827
    goto :goto_18

    .line 828
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 829
    .line 830
    .line 831
    iget-object v2, v2, Lk40;->a:[J

    .line 832
    .line 833
    move v4, v9

    .line 834
    move v12, v4

    .line 835
    :goto_1a
    array-length v5, v2

    .line 836
    if-ge v12, v5, :cond_1b

    .line 837
    .line 838
    aget-wide v5, v2, v12

    .line 839
    .line 840
    invoke-static {v4, v5, v6, v10}, Lxx3;->v(IJ[B)V

    .line 841
    .line 842
    .line 843
    add-int/lit8 v4, v4, 0x8

    .line 844
    .line 845
    add-int/lit8 v12, v12, 0x1

    .line 846
    .line 847
    goto :goto_1a

    .line 848
    :cond_1b
    invoke-static {v3, v10, v1}, Lm40;->d(I[B[B)V

    .line 849
    .line 850
    .line 851
    iget-object v1, v0, Lm40;->b:[Lk40;

    .line 852
    .line 853
    if-eqz v1, :cond_1d

    .line 854
    .line 855
    move v4, v9

    .line 856
    :goto_1b
    iget-object v1, v0, Lm40;->b:[Lk40;

    .line 857
    .line 858
    array-length v2, v1

    .line 859
    if-ge v4, v2, :cond_1d

    .line 860
    .line 861
    aget-object v1, v1, v4

    .line 862
    .line 863
    if-eqz v1, :cond_1c

    .line 864
    .line 865
    iget-object v1, v1, Lk40;->a:[J

    .line 866
    .line 867
    const-wide/16 v2, 0x0

    .line 868
    .line 869
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 870
    .line 871
    .line 872
    goto :goto_1c

    .line 873
    :cond_1c
    const-wide/16 v2, 0x0

    .line 874
    .line 875
    :goto_1c
    add-int/lit8 v4, v4, 0x1

    .line 876
    .line 877
    goto :goto_1b

    .line 878
    :cond_1d
    return-void

    .line 879
    :cond_1e
    const-string v0, "output length less than 4"

    .line 880
    .line 881
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    return-void
.end method

.method public final e(Ln40;)V
    .locals 4

    .line 1
    iget v0, p1, Ln40;->g:I

    .line 2
    .line 3
    iget v1, p1, Ln40;->f:I

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    const/16 v2, 0x13

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "unknown Argon2 version"

    .line 15
    .line 16
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    :goto_0
    iget v0, p1, Ln40;->h:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    if-eq v0, v2, :cond_3

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    if-ne v0, v3, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const-string p0, "unknown Argon2 type"

    .line 32
    .line 33
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    :goto_1
    if-lt v1, v2, :cond_7

    .line 38
    .line 39
    const v0, 0xffffff

    .line 40
    .line 41
    .line 42
    if-gt v1, v0, :cond_6

    .line 43
    .line 44
    iget v0, p1, Ln40;->d:I

    .line 45
    .line 46
    if-lt v0, v2, :cond_5

    .line 47
    .line 48
    iput-object p1, p0, Lm40;->a:Ln40;

    .line 49
    .line 50
    iget p1, p1, Ln40;->e:I

    .line 51
    .line 52
    mul-int/lit8 v0, v1, 0x8

    .line 53
    .line 54
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    mul-int/lit8 v0, v1, 0x4

    .line 59
    .line 60
    div-int/2addr p1, v0

    .line 61
    iput p1, p0, Lm40;->c:I

    .line 62
    .line 63
    mul-int/lit8 p1, p1, 0x4

    .line 64
    .line 65
    iput p1, p0, Lm40;->d:I

    .line 66
    .line 67
    mul-int/2addr v1, p1

    .line 68
    new-array p1, v1, [Lk40;

    .line 69
    .line 70
    iput-object p1, p0, Lm40;->b:[Lk40;

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    :goto_2
    iget-object v0, p0, Lm40;->b:[Lk40;

    .line 74
    .line 75
    array-length v1, v0

    .line 76
    if-ge p1, v1, :cond_4

    .line 77
    .line 78
    new-instance v1, Lk40;

    .line 79
    .line 80
    invoke-direct {v1}, Lk40;-><init>()V

    .line 81
    .line 82
    .line 83
    aput-object v1, v0, p1

    .line 84
    .line 85
    add-int/lit8 p1, p1, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    return-void

    .line 89
    :cond_5
    const-string p0, "iterations is less than: 1"

    .line 90
    .line 91
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_6
    const-string p0, "lanes must be at most 16777215"

    .line 96
    .line 97
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_7
    const-string p0, "lanes must be at least 1"

    .line 102
    .line 103
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
