.class public final Lrq4;
.super Lpq4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final B:[Lgu5;

.field public C:I

.field public D:I

.field public E:Lnn1;

.field public final F:[I

.field public final G:Ldm7;


# direct methods
.method public constructor <init>(Lbf6;IIIIIIIILv40;)V
    .locals 10

    .line 1
    move/from16 v0, p8

    .line 2
    .line 3
    const/16 v8, 0x1000

    .line 4
    .line 5
    move/from16 v1, p6

    .line 6
    .line 7
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x1000

    .line 12
    .line 13
    const/4 v9, 0x4

    .line 14
    if-eq v0, v9, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x14

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    new-instance v0, Lqj0;

    .line 21
    .line 22
    move v1, p5

    .line 23
    move/from16 v4, p7

    .line 24
    .line 25
    move/from16 v5, p9

    .line 26
    .line 27
    move-object/from16 v6, p10

    .line 28
    .line 29
    invoke-direct/range {v0 .. v6}, Lqj0;-><init>(IIIIILv40;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    move-object v1, p1

    .line 33
    move v3, p2

    .line 34
    move v4, p3

    .line 35
    move v5, p4

    .line 36
    move v6, p5

    .line 37
    move/from16 v7, p7

    .line 38
    .line 39
    move-object v2, v0

    .line 40
    move-object v0, p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-static {}, Lc6;->b()V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    throw v0

    .line 47
    :cond_1
    new-instance v0, Lg24;

    .line 48
    .line 49
    move v1, p5

    .line 50
    move/from16 v4, p7

    .line 51
    .line 52
    move/from16 v5, p9

    .line 53
    .line 54
    move-object/from16 v6, p10

    .line 55
    .line 56
    invoke-direct/range {v0 .. v6}, Lg24;-><init>(IIIIILv40;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_1
    invoke-direct/range {v0 .. v7}, Lpq4;-><init>(Lbf6;Laq4;IIIII)V

    .line 61
    .line 62
    .line 63
    new-array v1, v8, [Lgu5;

    .line 64
    .line 65
    iput-object v1, p0, Lrq4;->B:[Lgu5;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    iput v1, p0, Lrq4;->C:I

    .line 69
    .line 70
    iput v1, p0, Lrq4;->D:I

    .line 71
    .line 72
    new-array v2, v9, [I

    .line 73
    .line 74
    iput-object v2, p0, Lrq4;->F:[I

    .line 75
    .line 76
    new-instance v2, Ldm7;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v2, p0, Lrq4;->G:Ldm7;

    .line 82
    .line 83
    :goto_2
    if-ge v1, v8, :cond_2

    .line 84
    .line 85
    iget-object v2, p0, Lrq4;->B:[Lgu5;

    .line 86
    .line 87
    new-instance v3, Lgu5;

    .line 88
    .line 89
    invoke-direct {v3}, Lgu5;-><init>()V

    .line 90
    .line 91
    .line 92
    aput-object v3, v2, v1

    .line 93
    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lrq4;->C:I

    .line 3
    .line 4
    iput v0, p0, Lrq4;->D:I

    .line 5
    .line 6
    invoke-super {p0}, Lpq4;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final k()I
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lrq4;->C:I

    .line 4
    .line 5
    iget v2, v0, Lrq4;->D:I

    .line 6
    .line 7
    iget-object v3, v0, Lrq4;->B:[Lgu5;

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    aget-object v2, v3, v1

    .line 12
    .line 13
    iget v2, v2, Lgu5;->d:I

    .line 14
    .line 15
    sub-int v1, v2, v1

    .line 16
    .line 17
    iput v2, v0, Lrq4;->C:I

    .line 18
    .line 19
    aget-object v2, v3, v2

    .line 20
    .line 21
    iget v2, v2, Lgu5;->e:I

    .line 22
    .line 23
    iput v2, v0, Lpq4;->y:I

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    iput v1, v0, Lrq4;->C:I

    .line 28
    .line 29
    iput v1, v0, Lrq4;->D:I

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    iput v2, v0, Lpq4;->y:I

    .line 33
    .line 34
    iget v4, v0, Lpq4;->z:I

    .line 35
    .line 36
    if-ne v4, v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lpq4;->j()Lnn1;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iput-object v4, v0, Lrq4;->E:Lnn1;

    .line 43
    .line 44
    :cond_1
    iget-object v4, v0, Lpq4;->n:Laq4;

    .line 45
    .line 46
    iget v5, v4, Laq4;->j:I

    .line 47
    .line 48
    iget-object v6, v4, Laq4;->e:[B

    .line 49
    .line 50
    iget v7, v4, Laq4;->g:I

    .line 51
    .line 52
    sub-int/2addr v5, v7

    .line 53
    const/16 v7, 0x111

    .line 54
    .line 55
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    const/4 v7, 0x2

    .line 60
    const/4 v8, 0x1

    .line 61
    if-ge v5, v7, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move v9, v1

    .line 65
    move v10, v9

    .line 66
    :goto_0
    iget-object v11, v0, Lgq4;->b:[I

    .line 67
    .line 68
    iget-object v12, v0, Lrq4;->F:[I

    .line 69
    .line 70
    const/4 v13, 0x4

    .line 71
    if-ge v9, v13, :cond_5

    .line 72
    .line 73
    aget v11, v11, v9

    .line 74
    .line 75
    iget v13, v4, Laq4;->g:I

    .line 76
    .line 77
    add-int/2addr v11, v8

    .line 78
    invoke-static {v6, v13, v11, v1, v5}, Lrs9;->g([BIIII)I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    aput v11, v12, v9

    .line 83
    .line 84
    if-ge v11, v7, :cond_3

    .line 85
    .line 86
    aput v1, v12, v9

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    aget v12, v12, v10

    .line 90
    .line 91
    if-le v11, v12, :cond_4

    .line 92
    .line 93
    move v10, v9

    .line 94
    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    aget v5, v12, v10

    .line 98
    .line 99
    iget v9, v0, Lpq4;->r:I

    .line 100
    .line 101
    if-lt v5, v9, :cond_6

    .line 102
    .line 103
    iput v10, v0, Lpq4;->y:I

    .line 104
    .line 105
    sub-int/2addr v5, v8

    .line 106
    invoke-virtual {v0, v5}, Lpq4;->l(I)V

    .line 107
    .line 108
    .line 109
    aget v0, v12, v10

    .line 110
    .line 111
    return v0

    .line 112
    :cond_6
    iget-object v5, v0, Lrq4;->E:Lnn1;

    .line 113
    .line 114
    iget v14, v5, Lnn1;->a:I

    .line 115
    .line 116
    if-lez v14, :cond_7

    .line 117
    .line 118
    iget-object v15, v5, Lnn1;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v15, [I

    .line 121
    .line 122
    sub-int/2addr v14, v8

    .line 123
    aget v15, v15, v14

    .line 124
    .line 125
    iget-object v5, v5, Lnn1;->c:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v5, [I

    .line 128
    .line 129
    aget v5, v5, v14

    .line 130
    .line 131
    if-lt v15, v9, :cond_8

    .line 132
    .line 133
    add-int/2addr v5, v13

    .line 134
    iput v5, v0, Lpq4;->y:I

    .line 135
    .line 136
    add-int/lit8 v1, v15, -0x1

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lpq4;->l(I)V

    .line 139
    .line 140
    .line 141
    return v15

    .line 142
    :cond_7
    move v15, v1

    .line 143
    :cond_8
    invoke-virtual {v4, v1}, Laq4;->b(I)I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    aget v14, v11, v1

    .line 148
    .line 149
    add-int/2addr v14, v8

    .line 150
    invoke-virtual {v4, v14}, Laq4;->b(I)I

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    if-ge v15, v7, :cond_9

    .line 155
    .line 156
    if-eq v5, v14, :cond_9

    .line 157
    .line 158
    aget v13, v12, v10

    .line 159
    .line 160
    if-ge v13, v7, :cond_9

    .line 161
    .line 162
    :goto_2
    return v8

    .line 163
    :cond_9
    iget v13, v4, Laq4;->g:I

    .line 164
    .line 165
    iget v7, v0, Lgq4;->a:I

    .line 166
    .line 167
    and-int v1, v13, v7

    .line 168
    .line 169
    invoke-virtual {v4, v8}, Laq4;->b(I)I

    .line 170
    .line 171
    .line 172
    move-result v19

    .line 173
    move/from16 v24, v8

    .line 174
    .line 175
    iget-object v8, v0, Lpq4;->o:Loq4;

    .line 176
    .line 177
    iget-object v2, v0, Lgq4;->c:Ldm7;

    .line 178
    .line 179
    move-object/from16 v21, v2

    .line 180
    .line 181
    move/from16 v17, v5

    .line 182
    .line 183
    move-object/from16 v16, v8

    .line 184
    .line 185
    move/from16 v20, v13

    .line 186
    .line 187
    move/from16 v18, v14

    .line 188
    .line 189
    invoke-virtual/range {v16 .. v21}, Loq4;->b(IIIILdm7;)I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    move/from16 v8, v18

    .line 194
    .line 195
    move-object/from16 v13, v21

    .line 196
    .line 197
    aget-object v14, v3, v24

    .line 198
    .line 199
    move-object/from16 v16, v3

    .line 200
    .line 201
    move/from16 v17, v7

    .line 202
    .line 203
    const/4 v3, -0x1

    .line 204
    const/4 v7, 0x0

    .line 205
    invoke-virtual {v14, v2, v7, v3}, Lgu5;->a(III)V

    .line 206
    .line 207
    .line 208
    iget v2, v13, Ldm7;->a:I

    .line 209
    .line 210
    iget-object v3, v0, Lgq4;->d:[[S

    .line 211
    .line 212
    aget-object v2, v3, v2

    .line 213
    .line 214
    aget-short v2, v2, v1

    .line 215
    .line 216
    move/from16 v7, v24

    .line 217
    .line 218
    invoke-static {v2, v7}, Lbf6;->T(II)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    iget v14, v13, Ldm7;->a:I

    .line 223
    .line 224
    move/from16 v18, v2

    .line 225
    .line 226
    iget-object v2, v0, Lgq4;->e:[S

    .line 227
    .line 228
    aget-short v14, v2, v14

    .line 229
    .line 230
    invoke-static {v14, v7}, Lbf6;->T(II)I

    .line 231
    .line 232
    .line 233
    move-result v14

    .line 234
    add-int v14, v14, v18

    .line 235
    .line 236
    iget-object v7, v0, Lgq4;->i:[[S

    .line 237
    .line 238
    move-object/from16 v19, v2

    .line 239
    .line 240
    iget-object v2, v0, Lgq4;->f:[S

    .line 241
    .line 242
    if-ne v8, v5, :cond_a

    .line 243
    .line 244
    iget v5, v13, Ldm7;->a:I

    .line 245
    .line 246
    aget-short v5, v2, v5

    .line 247
    .line 248
    const/4 v8, 0x0

    .line 249
    invoke-static {v5, v8}, Lbf6;->T(II)I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    add-int/2addr v5, v14

    .line 254
    iget v8, v13, Ldm7;->a:I

    .line 255
    .line 256
    aget-object v8, v7, v8

    .line 257
    .line 258
    aget-short v8, v8, v1

    .line 259
    .line 260
    move-object/from16 v21, v2

    .line 261
    .line 262
    const/4 v2, 0x0

    .line 263
    invoke-static {v8, v2}, Lbf6;->T(II)I

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    add-int/2addr v8, v5

    .line 268
    const/16 v24, 0x1

    .line 269
    .line 270
    aget-object v5, v16, v24

    .line 271
    .line 272
    move-object/from16 v25, v3

    .line 273
    .line 274
    iget v3, v5, Lgu5;->c:I

    .line 275
    .line 276
    if-ge v8, v3, :cond_b

    .line 277
    .line 278
    invoke-virtual {v5, v8, v2, v2}, Lgu5;->a(III)V

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_a
    move-object/from16 v21, v2

    .line 283
    .line 284
    move-object/from16 v25, v3

    .line 285
    .line 286
    const/16 v24, 0x1

    .line 287
    .line 288
    :cond_b
    :goto_3
    aget v2, v12, v10

    .line 289
    .line 290
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    iput v2, v0, Lrq4;->D:I

    .line 295
    .line 296
    const/4 v3, 0x2

    .line 297
    if-ge v2, v3, :cond_c

    .line 298
    .line 299
    aget-object v1, v16, v24

    .line 300
    .line 301
    iget v1, v1, Lgu5;->e:I

    .line 302
    .line 303
    iput v1, v0, Lpq4;->y:I

    .line 304
    .line 305
    return v24

    .line 306
    :cond_c
    iget v2, v0, Lpq4;->s:I

    .line 307
    .line 308
    if-gtz v2, :cond_14

    .line 309
    .line 310
    const/16 v2, 0x80

    .line 311
    .line 312
    iput v2, v0, Lpq4;->s:I

    .line 313
    .line 314
    const/4 v2, 0x0

    .line 315
    :goto_4
    iget-object v3, v0, Lpq4;->w:[[I

    .line 316
    .line 317
    iget-object v8, v0, Lpq4;->v:[[I

    .line 318
    .line 319
    const/4 v10, 0x4

    .line 320
    if-ge v2, v10, :cond_10

    .line 321
    .line 322
    const/4 v10, 0x0

    .line 323
    :goto_5
    iget v5, v0, Lpq4;->u:I

    .line 324
    .line 325
    if-ge v10, v5, :cond_d

    .line 326
    .line 327
    aget-object v5, v8, v2

    .line 328
    .line 329
    move/from16 v27, v2

    .line 330
    .line 331
    iget-object v2, v0, Lgq4;->j:[[S

    .line 332
    .line 333
    aget-object v2, v2, v27

    .line 334
    .line 335
    invoke-static {v10, v2}, Lbf6;->U(I[S)I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    aput v2, v5, v10

    .line 340
    .line 341
    add-int/lit8 v10, v10, 0x1

    .line 342
    .line 343
    move/from16 v2, v27

    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_d
    move/from16 v27, v2

    .line 347
    .line 348
    const/16 v2, 0xe

    .line 349
    .line 350
    :goto_6
    if-ge v2, v5, :cond_e

    .line 351
    .line 352
    ushr-int/lit8 v10, v2, 0x1

    .line 353
    .line 354
    add-int/lit8 v10, v10, -0x5

    .line 355
    .line 356
    aget-object v26, v8, v27

    .line 357
    .line 358
    aget v28, v26, v2

    .line 359
    .line 360
    sget-object v29, Lbf6;->l:[I

    .line 361
    .line 362
    move/from16 v30, v2

    .line 363
    .line 364
    const/4 v2, 0x4

    .line 365
    shl-int/2addr v10, v2

    .line 366
    add-int v28, v28, v10

    .line 367
    .line 368
    aput v28, v26, v30

    .line 369
    .line 370
    add-int/lit8 v10, v30, 0x1

    .line 371
    .line 372
    move v2, v10

    .line 373
    goto :goto_6

    .line 374
    :cond_e
    const/4 v5, 0x0

    .line 375
    :goto_7
    const/4 v2, 0x4

    .line 376
    if-ge v5, v2, :cond_f

    .line 377
    .line 378
    aget-object v2, v3, v27

    .line 379
    .line 380
    aget-object v10, v8, v27

    .line 381
    .line 382
    aget v10, v10, v5

    .line 383
    .line 384
    aput v10, v2, v5

    .line 385
    .line 386
    add-int/lit8 v5, v5, 0x1

    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_f
    add-int/lit8 v2, v27, 0x1

    .line 390
    .line 391
    goto :goto_4

    .line 392
    :cond_10
    const/4 v2, 0x4

    .line 393
    const/4 v5, 0x4

    .line 394
    :goto_8
    const/16 v10, 0xe

    .line 395
    .line 396
    if-ge v2, v10, :cond_14

    .line 397
    .line 398
    ushr-int/lit8 v26, v2, 0x1

    .line 399
    .line 400
    const/16 v24, 0x1

    .line 401
    .line 402
    add-int/lit8 v26, v26, -0x1

    .line 403
    .line 404
    and-int/lit8 v27, v2, 0x1

    .line 405
    .line 406
    const/16 v22, 0x2

    .line 407
    .line 408
    or-int/lit8 v27, v27, 0x2

    .line 409
    .line 410
    shl-int v26, v27, v26

    .line 411
    .line 412
    add-int/lit8 v27, v2, -0x4

    .line 413
    .line 414
    iget-object v10, v0, Lgq4;->k:[[S

    .line 415
    .line 416
    move/from16 v29, v2

    .line 417
    .line 418
    aget-object v2, v10, v27

    .line 419
    .line 420
    array-length v2, v2

    .line 421
    move-object/from16 v30, v3

    .line 422
    .line 423
    const/4 v3, 0x0

    .line 424
    :goto_9
    if-ge v3, v2, :cond_13

    .line 425
    .line 426
    sub-int v31, v5, v26

    .line 427
    .line 428
    move/from16 v32, v2

    .line 429
    .line 430
    aget-object v2, v10, v27

    .line 431
    .line 432
    move/from16 v33, v3

    .line 433
    .line 434
    array-length v3, v2

    .line 435
    or-int v3, v31, v3

    .line 436
    .line 437
    const/16 v31, 0x0

    .line 438
    .line 439
    const/16 v34, 0x1

    .line 440
    .line 441
    :goto_a
    move-object/from16 v35, v2

    .line 442
    .line 443
    and-int/lit8 v2, v3, 0x1

    .line 444
    .line 445
    move/from16 v36, v3

    .line 446
    .line 447
    const/16 v24, 0x1

    .line 448
    .line 449
    ushr-int/lit8 v3, v36, 0x1

    .line 450
    .line 451
    move/from16 v36, v5

    .line 452
    .line 453
    aget-short v5, v35, v34

    .line 454
    .line 455
    invoke-static {v5, v2}, Lbf6;->T(II)I

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    add-int v31, v5, v31

    .line 460
    .line 461
    shl-int/lit8 v5, v34, 0x1

    .line 462
    .line 463
    or-int v34, v5, v2

    .line 464
    .line 465
    move/from16 v2, v24

    .line 466
    .line 467
    if-ne v3, v2, :cond_12

    .line 468
    .line 469
    const/4 v2, 0x0

    .line 470
    :goto_b
    const/4 v3, 0x4

    .line 471
    if-ge v2, v3, :cond_11

    .line 472
    .line 473
    aget-object v3, v30, v2

    .line 474
    .line 475
    aget-object v5, v8, v2

    .line 476
    .line 477
    aget v5, v5, v29

    .line 478
    .line 479
    add-int v5, v5, v31

    .line 480
    .line 481
    aput v5, v3, v36

    .line 482
    .line 483
    add-int/lit8 v2, v2, 0x1

    .line 484
    .line 485
    goto :goto_b

    .line 486
    :cond_11
    add-int/lit8 v5, v36, 0x1

    .line 487
    .line 488
    add-int/lit8 v3, v33, 0x1

    .line 489
    .line 490
    move/from16 v2, v32

    .line 491
    .line 492
    goto :goto_9

    .line 493
    :cond_12
    move-object/from16 v2, v35

    .line 494
    .line 495
    move/from16 v5, v36

    .line 496
    .line 497
    goto :goto_a

    .line 498
    :cond_13
    move/from16 v36, v5

    .line 499
    .line 500
    add-int/lit8 v2, v29, 0x1

    .line 501
    .line 502
    move-object/from16 v3, v30

    .line 503
    .line 504
    goto :goto_8

    .line 505
    :cond_14
    iget v2, v0, Lpq4;->t:I

    .line 506
    .line 507
    if-gtz v2, :cond_16

    .line 508
    .line 509
    const/16 v2, 0x10

    .line 510
    .line 511
    iput v2, v0, Lpq4;->t:I

    .line 512
    .line 513
    const/4 v3, 0x0

    .line 514
    :goto_c
    if-ge v3, v2, :cond_16

    .line 515
    .line 516
    iget-object v5, v0, Lgq4;->l:[S

    .line 517
    .line 518
    array-length v8, v5

    .line 519
    or-int/2addr v8, v3

    .line 520
    const/4 v10, 0x0

    .line 521
    const/16 v26, 0x1

    .line 522
    .line 523
    :goto_d
    and-int/lit8 v2, v8, 0x1

    .line 524
    .line 525
    move/from16 v28, v3

    .line 526
    .line 527
    const/4 v3, 0x1

    .line 528
    ushr-int/2addr v8, v3

    .line 529
    move/from16 v24, v3

    .line 530
    .line 531
    aget-short v3, v5, v26

    .line 532
    .line 533
    invoke-static {v3, v2}, Lbf6;->T(II)I

    .line 534
    .line 535
    .line 536
    move-result v3

    .line 537
    add-int/2addr v10, v3

    .line 538
    shl-int/lit8 v3, v26, 0x1

    .line 539
    .line 540
    or-int v26, v3, v2

    .line 541
    .line 542
    move/from16 v2, v24

    .line 543
    .line 544
    if-ne v8, v2, :cond_15

    .line 545
    .line 546
    iget-object v2, v0, Lpq4;->x:[I

    .line 547
    .line 548
    aput v10, v2, v28

    .line 549
    .line 550
    add-int/lit8 v3, v28, 0x1

    .line 551
    .line 552
    const/16 v2, 0x10

    .line 553
    .line 554
    goto :goto_c

    .line 555
    :cond_15
    move/from16 v3, v28

    .line 556
    .line 557
    const/16 v2, 0x10

    .line 558
    .line 559
    goto :goto_d

    .line 560
    :cond_16
    iget-object v2, v0, Lpq4;->p:Lmq4;

    .line 561
    .line 562
    invoke-virtual {v2}, Lmq4;->g()V

    .line 563
    .line 564
    .line 565
    iget-object v2, v0, Lpq4;->q:Lmq4;

    .line 566
    .line 567
    invoke-virtual {v2}, Lmq4;->g()V

    .line 568
    .line 569
    .line 570
    iget-object v2, v2, Lmq4;->f:[[I

    .line 571
    .line 572
    const/4 v8, 0x0

    .line 573
    aget-object v3, v16, v8

    .line 574
    .line 575
    iget-object v5, v3, Lgu5;->a:Ldm7;

    .line 576
    .line 577
    iget v10, v13, Ldm7;->a:I

    .line 578
    .line 579
    iput v10, v5, Ldm7;->a:I

    .line 580
    .line 581
    iget-object v3, v3, Lgu5;->b:[I

    .line 582
    .line 583
    const/4 v10, 0x4

    .line 584
    invoke-static {v11, v8, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    .line 586
    .line 587
    iget v3, v0, Lrq4;->D:I

    .line 588
    .line 589
    :goto_e
    const/high16 v5, 0x40000000    # 2.0f

    .line 590
    .line 591
    const/4 v8, 0x2

    .line 592
    if-lt v3, v8, :cond_17

    .line 593
    .line 594
    aget-object v11, v16, v3

    .line 595
    .line 596
    iput v5, v11, Lgu5;->c:I

    .line 597
    .line 598
    add-int/lit8 v3, v3, -0x1

    .line 599
    .line 600
    goto :goto_e

    .line 601
    :cond_17
    const/4 v3, 0x0

    .line 602
    :goto_f
    if-ge v3, v10, :cond_1b

    .line 603
    .line 604
    aget v10, v12, v3

    .line 605
    .line 606
    if-ge v10, v8, :cond_18

    .line 607
    .line 608
    move-object/from16 v27, v2

    .line 609
    .line 610
    move v5, v8

    .line 611
    const/4 v2, 0x0

    .line 612
    goto :goto_12

    .line 613
    :cond_18
    invoke-virtual {v0, v14, v3, v13, v1}, Lpq4;->h(IILdm7;I)I

    .line 614
    .line 615
    .line 616
    move-result v8

    .line 617
    :goto_10
    aget-object v11, v2, v1

    .line 618
    .line 619
    add-int/lit8 v26, v10, -0x2

    .line 620
    .line 621
    aget v11, v11, v26

    .line 622
    .line 623
    add-int/2addr v11, v8

    .line 624
    aget-object v5, v16, v10

    .line 625
    .line 626
    move-object/from16 v27, v2

    .line 627
    .line 628
    iget v2, v5, Lgu5;->c:I

    .line 629
    .line 630
    if-ge v11, v2, :cond_19

    .line 631
    .line 632
    const/4 v2, 0x0

    .line 633
    invoke-virtual {v5, v11, v2, v3}, Lgu5;->a(III)V

    .line 634
    .line 635
    .line 636
    goto :goto_11

    .line 637
    :cond_19
    const/4 v2, 0x0

    .line 638
    :goto_11
    add-int/lit8 v10, v10, -0x1

    .line 639
    .line 640
    const/4 v5, 0x2

    .line 641
    if-ge v10, v5, :cond_1a

    .line 642
    .line 643
    :goto_12
    add-int/lit8 v3, v3, 0x1

    .line 644
    .line 645
    move v8, v5

    .line 646
    move-object/from16 v2, v27

    .line 647
    .line 648
    const/high16 v5, 0x40000000    # 2.0f

    .line 649
    .line 650
    const/4 v10, 0x4

    .line 651
    goto :goto_f

    .line 652
    :cond_1a
    move-object/from16 v2, v27

    .line 653
    .line 654
    const/high16 v5, 0x40000000    # 2.0f

    .line 655
    .line 656
    goto :goto_10

    .line 657
    :cond_1b
    move-object/from16 v27, v2

    .line 658
    .line 659
    move v5, v8

    .line 660
    const/4 v2, 0x0

    .line 661
    aget v3, v12, v2

    .line 662
    .line 663
    const/16 v24, 0x1

    .line 664
    .line 665
    add-int/lit8 v3, v3, 0x1

    .line 666
    .line 667
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 668
    .line 669
    .line 670
    move-result v3

    .line 671
    if-gt v3, v15, :cond_1f

    .line 672
    .line 673
    iget v5, v13, Ldm7;->a:I

    .line 674
    .line 675
    aget-short v5, v19, v5

    .line 676
    .line 677
    invoke-static {v5, v2}, Lbf6;->T(II)I

    .line 678
    .line 679
    .line 680
    move-result v5

    .line 681
    add-int v5, v5, v18

    .line 682
    .line 683
    const/4 v2, 0x0

    .line 684
    :goto_13
    iget-object v8, v0, Lrq4;->E:Lnn1;

    .line 685
    .line 686
    iget-object v8, v8, Lnn1;->b:Ljava/lang/Object;

    .line 687
    .line 688
    check-cast v8, [I

    .line 689
    .line 690
    aget v8, v8, v2

    .line 691
    .line 692
    if-le v3, v8, :cond_1c

    .line 693
    .line 694
    add-int/lit8 v2, v2, 0x1

    .line 695
    .line 696
    goto :goto_13

    .line 697
    :cond_1c
    :goto_14
    iget-object v8, v0, Lrq4;->E:Lnn1;

    .line 698
    .line 699
    iget-object v8, v8, Lnn1;->c:Ljava/lang/Object;

    .line 700
    .line 701
    check-cast v8, [I

    .line 702
    .line 703
    aget v8, v8, v2

    .line 704
    .line 705
    invoke-virtual {v0, v5, v8, v3, v1}, Lpq4;->i(IIII)I

    .line 706
    .line 707
    .line 708
    move-result v10

    .line 709
    aget-object v11, v16, v3

    .line 710
    .line 711
    iget v12, v11, Lgu5;->c:I

    .line 712
    .line 713
    if-ge v10, v12, :cond_1d

    .line 714
    .line 715
    add-int/lit8 v8, v8, 0x4

    .line 716
    .line 717
    const/4 v12, 0x0

    .line 718
    invoke-virtual {v11, v10, v12, v8}, Lgu5;->a(III)V

    .line 719
    .line 720
    .line 721
    :cond_1d
    iget-object v8, v0, Lrq4;->E:Lnn1;

    .line 722
    .line 723
    iget-object v10, v8, Lnn1;->b:Ljava/lang/Object;

    .line 724
    .line 725
    check-cast v10, [I

    .line 726
    .line 727
    aget v10, v10, v2

    .line 728
    .line 729
    if-ne v3, v10, :cond_1e

    .line 730
    .line 731
    add-int/lit8 v2, v2, 0x1

    .line 732
    .line 733
    iget v8, v8, Lnn1;->a:I

    .line 734
    .line 735
    if-ne v2, v8, :cond_1e

    .line 736
    .line 737
    goto :goto_15

    .line 738
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    .line 739
    .line 740
    goto :goto_14

    .line 741
    :cond_1f
    :goto_15
    iget v1, v4, Laq4;->j:I

    .line 742
    .line 743
    iget v2, v4, Laq4;->g:I

    .line 744
    .line 745
    sub-int/2addr v1, v2

    .line 746
    const/16 v2, 0xfff

    .line 747
    .line 748
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 749
    .line 750
    .line 751
    move-result v1

    .line 752
    move/from16 v13, v20

    .line 753
    .line 754
    :goto_16
    iget v2, v0, Lrq4;->C:I

    .line 755
    .line 756
    const/16 v24, 0x1

    .line 757
    .line 758
    add-int/lit8 v2, v2, 0x1

    .line 759
    .line 760
    iput v2, v0, Lrq4;->C:I

    .line 761
    .line 762
    iget v3, v0, Lrq4;->D:I

    .line 763
    .line 764
    if-ge v2, v3, :cond_4c

    .line 765
    .line 766
    invoke-virtual {v0}, Lpq4;->j()Lnn1;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    iput-object v2, v0, Lrq4;->E:Lnn1;

    .line 771
    .line 772
    iget v3, v2, Lnn1;->a:I

    .line 773
    .line 774
    if-lez v3, :cond_20

    .line 775
    .line 776
    iget-object v2, v2, Lnn1;->b:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v2, [I

    .line 779
    .line 780
    add-int/lit8 v3, v3, -0x1

    .line 781
    .line 782
    aget v2, v2, v3

    .line 783
    .line 784
    if-lt v2, v9, :cond_20

    .line 785
    .line 786
    goto/16 :goto_34

    .line 787
    .line 788
    :cond_20
    add-int/lit8 v2, v1, -0x1

    .line 789
    .line 790
    add-int/lit8 v32, v13, 0x1

    .line 791
    .line 792
    and-int v3, v32, v17

    .line 793
    .line 794
    iget v5, v0, Lrq4;->C:I

    .line 795
    .line 796
    aget-object v5, v16, v5

    .line 797
    .line 798
    iget v8, v5, Lgu5;->d:I

    .line 799
    .line 800
    iget-object v10, v5, Lgu5;->a:Ldm7;

    .line 801
    .line 802
    iget-boolean v11, v5, Lgu5;->f:Z

    .line 803
    .line 804
    if-eqz v11, :cond_23

    .line 805
    .line 806
    add-int/lit8 v8, v8, -0x1

    .line 807
    .line 808
    iget-boolean v11, v5, Lgu5;->g:Z

    .line 809
    .line 810
    if-eqz v11, :cond_22

    .line 811
    .line 812
    iget v11, v5, Lgu5;->h:I

    .line 813
    .line 814
    aget-object v11, v16, v11

    .line 815
    .line 816
    iget-object v11, v11, Lgu5;->a:Ldm7;

    .line 817
    .line 818
    iget v11, v11, Ldm7;->a:I

    .line 819
    .line 820
    iput v11, v10, Ldm7;->a:I

    .line 821
    .line 822
    iget v5, v5, Lgu5;->i:I

    .line 823
    .line 824
    const/4 v11, 0x4

    .line 825
    if-ge v5, v11, :cond_21

    .line 826
    .line 827
    invoke-virtual {v10}, Ldm7;->b()V

    .line 828
    .line 829
    .line 830
    goto :goto_17

    .line 831
    :cond_21
    invoke-virtual {v10}, Ldm7;->c()V

    .line 832
    .line 833
    .line 834
    goto :goto_17

    .line 835
    :cond_22
    aget-object v5, v16, v8

    .line 836
    .line 837
    iget-object v5, v5, Lgu5;->a:Ldm7;

    .line 838
    .line 839
    iget v5, v5, Ldm7;->a:I

    .line 840
    .line 841
    iput v5, v10, Ldm7;->a:I

    .line 842
    .line 843
    :goto_17
    iget v5, v0, Lrq4;->C:I

    .line 844
    .line 845
    aget-object v5, v16, v5

    .line 846
    .line 847
    iget-object v5, v5, Lgu5;->a:Ldm7;

    .line 848
    .line 849
    invoke-virtual {v5}, Ldm7;->a()V

    .line 850
    .line 851
    .line 852
    goto :goto_18

    .line 853
    :cond_23
    aget-object v5, v16, v8

    .line 854
    .line 855
    iget-object v5, v5, Lgu5;->a:Ldm7;

    .line 856
    .line 857
    iget v5, v5, Ldm7;->a:I

    .line 858
    .line 859
    iput v5, v10, Ldm7;->a:I

    .line 860
    .line 861
    :goto_18
    iget v5, v0, Lrq4;->C:I

    .line 862
    .line 863
    add-int/lit8 v10, v5, -0x1

    .line 864
    .line 865
    if-ne v8, v10, :cond_27

    .line 866
    .line 867
    aget-object v5, v16, v5

    .line 868
    .line 869
    iget v10, v5, Lgu5;->e:I

    .line 870
    .line 871
    iget-object v5, v5, Lgu5;->a:Ldm7;

    .line 872
    .line 873
    if-nez v10, :cond_25

    .line 874
    .line 875
    iget v10, v5, Ldm7;->a:I

    .line 876
    .line 877
    const/4 v11, 0x7

    .line 878
    if-ge v10, v11, :cond_24

    .line 879
    .line 880
    const/16 v10, 0x9

    .line 881
    .line 882
    goto :goto_19

    .line 883
    :cond_24
    const/16 v10, 0xb

    .line 884
    .line 885
    :goto_19
    iput v10, v5, Ldm7;->a:I

    .line 886
    .line 887
    goto :goto_1a

    .line 888
    :cond_25
    invoke-virtual {v5}, Ldm7;->a()V

    .line 889
    .line 890
    .line 891
    :goto_1a
    aget-object v5, v16, v8

    .line 892
    .line 893
    iget-object v5, v5, Lgu5;->b:[I

    .line 894
    .line 895
    iget v8, v0, Lrq4;->C:I

    .line 896
    .line 897
    aget-object v8, v16, v8

    .line 898
    .line 899
    iget-object v8, v8, Lgu5;->b:[I

    .line 900
    .line 901
    const/4 v10, 0x4

    .line 902
    const/4 v12, 0x0

    .line 903
    invoke-static {v5, v12, v8, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 904
    .line 905
    .line 906
    :cond_26
    const/4 v11, 0x1

    .line 907
    goto/16 :goto_1e

    .line 908
    .line 909
    :cond_27
    aget-object v5, v16, v5

    .line 910
    .line 911
    iget-boolean v10, v5, Lgu5;->f:Z

    .line 912
    .line 913
    iget-object v11, v5, Lgu5;->a:Ldm7;

    .line 914
    .line 915
    if-eqz v10, :cond_28

    .line 916
    .line 917
    iget-boolean v10, v5, Lgu5;->g:Z

    .line 918
    .line 919
    if-eqz v10, :cond_28

    .line 920
    .line 921
    iget v8, v5, Lgu5;->h:I

    .line 922
    .line 923
    iget v5, v5, Lgu5;->i:I

    .line 924
    .line 925
    invoke-virtual {v11}, Ldm7;->b()V

    .line 926
    .line 927
    .line 928
    const/4 v10, 0x4

    .line 929
    goto :goto_1b

    .line 930
    :cond_28
    iget v5, v5, Lgu5;->e:I

    .line 931
    .line 932
    const/4 v10, 0x4

    .line 933
    if-ge v5, v10, :cond_29

    .line 934
    .line 935
    invoke-virtual {v11}, Ldm7;->b()V

    .line 936
    .line 937
    .line 938
    goto :goto_1b

    .line 939
    :cond_29
    invoke-virtual {v11}, Ldm7;->c()V

    .line 940
    .line 941
    .line 942
    :goto_1b
    iget v11, v0, Lrq4;->C:I

    .line 943
    .line 944
    if-ge v5, v10, :cond_2b

    .line 945
    .line 946
    aget-object v10, v16, v11

    .line 947
    .line 948
    iget-object v10, v10, Lgu5;->b:[I

    .line 949
    .line 950
    aget-object v11, v16, v8

    .line 951
    .line 952
    iget-object v11, v11, Lgu5;->b:[I

    .line 953
    .line 954
    aget v11, v11, v5

    .line 955
    .line 956
    const/16 v23, 0x0

    .line 957
    .line 958
    aput v11, v10, v23

    .line 959
    .line 960
    const/4 v10, 0x1

    .line 961
    :goto_1c
    if-gt v10, v5, :cond_2a

    .line 962
    .line 963
    iget v11, v0, Lrq4;->C:I

    .line 964
    .line 965
    aget-object v11, v16, v11

    .line 966
    .line 967
    iget-object v11, v11, Lgu5;->b:[I

    .line 968
    .line 969
    aget-object v12, v16, v8

    .line 970
    .line 971
    iget-object v12, v12, Lgu5;->b:[I

    .line 972
    .line 973
    add-int/lit8 v14, v10, -0x1

    .line 974
    .line 975
    aget v12, v12, v14

    .line 976
    .line 977
    aput v12, v11, v10

    .line 978
    .line 979
    add-int/lit8 v10, v10, 0x1

    .line 980
    .line 981
    goto :goto_1c

    .line 982
    :cond_2a
    :goto_1d
    const/4 v11, 0x4

    .line 983
    if-ge v10, v11, :cond_26

    .line 984
    .line 985
    iget v5, v0, Lrq4;->C:I

    .line 986
    .line 987
    aget-object v5, v16, v5

    .line 988
    .line 989
    iget-object v5, v5, Lgu5;->b:[I

    .line 990
    .line 991
    aget-object v11, v16, v8

    .line 992
    .line 993
    iget-object v11, v11, Lgu5;->b:[I

    .line 994
    .line 995
    aget v11, v11, v10

    .line 996
    .line 997
    aput v11, v5, v10

    .line 998
    .line 999
    add-int/lit8 v10, v10, 0x1

    .line 1000
    .line 1001
    goto :goto_1d

    .line 1002
    :cond_2b
    aget-object v10, v16, v11

    .line 1003
    .line 1004
    iget-object v10, v10, Lgu5;->b:[I

    .line 1005
    .line 1006
    add-int/lit8 v5, v5, -0x4

    .line 1007
    .line 1008
    const/4 v12, 0x0

    .line 1009
    aput v5, v10, v12

    .line 1010
    .line 1011
    aget-object v5, v16, v8

    .line 1012
    .line 1013
    iget-object v5, v5, Lgu5;->b:[I

    .line 1014
    .line 1015
    const/4 v8, 0x3

    .line 1016
    const/4 v11, 0x1

    .line 1017
    invoke-static {v5, v12, v10, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1018
    .line 1019
    .line 1020
    :goto_1e
    iget v5, v0, Lrq4;->C:I

    .line 1021
    .line 1022
    aget-object v5, v16, v5

    .line 1023
    .line 1024
    iget v8, v5, Lgu5;->c:I

    .line 1025
    .line 1026
    iget-object v5, v5, Lgu5;->a:Ldm7;

    .line 1027
    .line 1028
    iget v5, v5, Ldm7;->a:I

    .line 1029
    .line 1030
    aget-object v5, v25, v5

    .line 1031
    .line 1032
    aget-short v5, v5, v3

    .line 1033
    .line 1034
    invoke-static {v5, v11}, Lbf6;->T(II)I

    .line 1035
    .line 1036
    .line 1037
    move-result v5

    .line 1038
    add-int/2addr v5, v8

    .line 1039
    iget v8, v0, Lrq4;->C:I

    .line 1040
    .line 1041
    aget-object v8, v16, v8

    .line 1042
    .line 1043
    iget-object v8, v8, Lgu5;->a:Ldm7;

    .line 1044
    .line 1045
    iget v8, v8, Ldm7;->a:I

    .line 1046
    .line 1047
    aget-short v8, v19, v8

    .line 1048
    .line 1049
    invoke-static {v8, v11}, Lbf6;->T(II)I

    .line 1050
    .line 1051
    .line 1052
    move-result v8

    .line 1053
    add-int/2addr v8, v5

    .line 1054
    const/4 v12, 0x0

    .line 1055
    invoke-virtual {v4, v12}, Laq4;->b(I)I

    .line 1056
    .line 1057
    .line 1058
    move-result v29

    .line 1059
    iget v10, v0, Lrq4;->C:I

    .line 1060
    .line 1061
    aget-object v10, v16, v10

    .line 1062
    .line 1063
    iget-object v10, v10, Lgu5;->b:[I

    .line 1064
    .line 1065
    aget v10, v10, v12

    .line 1066
    .line 1067
    add-int/2addr v10, v11

    .line 1068
    invoke-virtual {v4, v10}, Laq4;->b(I)I

    .line 1069
    .line 1070
    .line 1071
    move-result v30

    .line 1072
    iget v10, v0, Lrq4;->C:I

    .line 1073
    .line 1074
    aget-object v10, v16, v10

    .line 1075
    .line 1076
    iget v10, v10, Lgu5;->c:I

    .line 1077
    .line 1078
    invoke-virtual {v4, v11}, Laq4;->b(I)I

    .line 1079
    .line 1080
    .line 1081
    move-result v31

    .line 1082
    iget v11, v0, Lrq4;->C:I

    .line 1083
    .line 1084
    aget-object v11, v16, v11

    .line 1085
    .line 1086
    iget-object v11, v11, Lgu5;->a:Ldm7;

    .line 1087
    .line 1088
    iget-object v12, v0, Lpq4;->o:Loq4;

    .line 1089
    .line 1090
    move-object/from16 v33, v11

    .line 1091
    .line 1092
    move-object/from16 v28, v12

    .line 1093
    .line 1094
    invoke-virtual/range {v28 .. v33}, Loq4;->b(IIIILdm7;)I

    .line 1095
    .line 1096
    .line 1097
    move-result v11

    .line 1098
    move/from16 v12, v29

    .line 1099
    .line 1100
    move/from16 v14, v30

    .line 1101
    .line 1102
    add-int/2addr v10, v11

    .line 1103
    iget v11, v0, Lrq4;->C:I

    .line 1104
    .line 1105
    add-int/lit8 v15, v11, 0x1

    .line 1106
    .line 1107
    aget-object v15, v16, v15

    .line 1108
    .line 1109
    move/from16 v18, v1

    .line 1110
    .line 1111
    iget v1, v15, Lgu5;->c:I

    .line 1112
    .line 1113
    if-ge v10, v1, :cond_2c

    .line 1114
    .line 1115
    const/4 v1, -0x1

    .line 1116
    invoke-virtual {v15, v10, v11, v1}, Lgu5;->a(III)V

    .line 1117
    .line 1118
    .line 1119
    const/4 v1, 0x1

    .line 1120
    goto :goto_1f

    .line 1121
    :cond_2c
    const/4 v1, 0x0

    .line 1122
    :goto_1f
    if-ne v14, v12, :cond_2f

    .line 1123
    .line 1124
    iget v11, v0, Lrq4;->C:I

    .line 1125
    .line 1126
    add-int/lit8 v15, v11, 0x1

    .line 1127
    .line 1128
    aget-object v15, v16, v15

    .line 1129
    .line 1130
    move/from16 v20, v1

    .line 1131
    .line 1132
    iget v1, v15, Lgu5;->d:I

    .line 1133
    .line 1134
    if-eq v1, v11, :cond_2e

    .line 1135
    .line 1136
    iget v1, v15, Lgu5;->e:I

    .line 1137
    .line 1138
    if-eqz v1, :cond_2d

    .line 1139
    .line 1140
    goto :goto_21

    .line 1141
    :cond_2d
    :goto_20
    move/from16 v29, v5

    .line 1142
    .line 1143
    goto :goto_22

    .line 1144
    :cond_2e
    :goto_21
    aget-object v1, v16, v11

    .line 1145
    .line 1146
    iget-object v1, v1, Lgu5;->a:Ldm7;

    .line 1147
    .line 1148
    iget v11, v1, Ldm7;->a:I

    .line 1149
    .line 1150
    aget-short v11, v21, v11

    .line 1151
    .line 1152
    const/4 v15, 0x0

    .line 1153
    invoke-static {v11, v15}, Lbf6;->T(II)I

    .line 1154
    .line 1155
    .line 1156
    move-result v11

    .line 1157
    add-int/2addr v11, v8

    .line 1158
    iget v1, v1, Ldm7;->a:I

    .line 1159
    .line 1160
    aget-object v1, v7, v1

    .line 1161
    .line 1162
    aget-short v1, v1, v3

    .line 1163
    .line 1164
    invoke-static {v1, v15}, Lbf6;->T(II)I

    .line 1165
    .line 1166
    .line 1167
    move-result v1

    .line 1168
    add-int/2addr v1, v11

    .line 1169
    iget v11, v0, Lrq4;->C:I

    .line 1170
    .line 1171
    add-int/lit8 v23, v11, 0x1

    .line 1172
    .line 1173
    aget-object v15, v16, v23

    .line 1174
    .line 1175
    move/from16 v29, v5

    .line 1176
    .line 1177
    iget v5, v15, Lgu5;->c:I

    .line 1178
    .line 1179
    if-gt v1, v5, :cond_30

    .line 1180
    .line 1181
    const/4 v5, 0x0

    .line 1182
    invoke-virtual {v15, v1, v11, v5}, Lgu5;->a(III)V

    .line 1183
    .line 1184
    .line 1185
    const/16 v20, 0x1

    .line 1186
    .line 1187
    goto :goto_22

    .line 1188
    :cond_2f
    move/from16 v20, v1

    .line 1189
    .line 1190
    goto :goto_20

    .line 1191
    :cond_30
    :goto_22
    iget-object v1, v0, Lrq4;->G:Ldm7;

    .line 1192
    .line 1193
    if-nez v20, :cond_32

    .line 1194
    .line 1195
    if-eq v14, v12, :cond_32

    .line 1196
    .line 1197
    const/4 v5, 0x2

    .line 1198
    if-le v2, v5, :cond_32

    .line 1199
    .line 1200
    add-int/lit8 v5, v18, -0x2

    .line 1201
    .line 1202
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    .line 1203
    .line 1204
    .line 1205
    move-result v5

    .line 1206
    iget v11, v0, Lrq4;->C:I

    .line 1207
    .line 1208
    aget-object v11, v16, v11

    .line 1209
    .line 1210
    iget-object v11, v11, Lgu5;->b:[I

    .line 1211
    .line 1212
    const/4 v12, 0x0

    .line 1213
    aget v11, v11, v12

    .line 1214
    .line 1215
    iget v14, v4, Laq4;->g:I

    .line 1216
    .line 1217
    const/16 v24, 0x1

    .line 1218
    .line 1219
    add-int/lit8 v14, v14, 0x1

    .line 1220
    .line 1221
    add-int/lit8 v11, v11, 0x1

    .line 1222
    .line 1223
    invoke-static {v6, v14, v11, v12, v5}, Lrs9;->g([BIIII)I

    .line 1224
    .line 1225
    .line 1226
    move-result v5

    .line 1227
    const/4 v11, 0x2

    .line 1228
    if-lt v5, v11, :cond_32

    .line 1229
    .line 1230
    iget v11, v0, Lrq4;->C:I

    .line 1231
    .line 1232
    aget-object v11, v16, v11

    .line 1233
    .line 1234
    iget-object v11, v11, Lgu5;->a:Ldm7;

    .line 1235
    .line 1236
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1237
    .line 1238
    .line 1239
    iget v11, v11, Ldm7;->a:I

    .line 1240
    .line 1241
    iput v11, v1, Ldm7;->a:I

    .line 1242
    .line 1243
    invoke-virtual {v1}, Ldm7;->a()V

    .line 1244
    .line 1245
    .line 1246
    add-int/lit8 v13, v13, 0x2

    .line 1247
    .line 1248
    and-int v11, v13, v17

    .line 1249
    .line 1250
    invoke-virtual {v0, v5, v1, v11}, Lpq4;->g(ILdm7;I)I

    .line 1251
    .line 1252
    .line 1253
    move-result v11

    .line 1254
    add-int/2addr v11, v10

    .line 1255
    iget v10, v0, Lrq4;->C:I

    .line 1256
    .line 1257
    const/16 v24, 0x1

    .line 1258
    .line 1259
    add-int/lit8 v10, v10, 0x1

    .line 1260
    .line 1261
    add-int/2addr v10, v5

    .line 1262
    :goto_23
    iget v5, v0, Lrq4;->D:I

    .line 1263
    .line 1264
    if-ge v5, v10, :cond_31

    .line 1265
    .line 1266
    add-int/lit8 v5, v5, 0x1

    .line 1267
    .line 1268
    iput v5, v0, Lrq4;->D:I

    .line 1269
    .line 1270
    aget-object v5, v16, v5

    .line 1271
    .line 1272
    const/high16 v12, 0x40000000    # 2.0f

    .line 1273
    .line 1274
    iput v12, v5, Lgu5;->c:I

    .line 1275
    .line 1276
    goto :goto_23

    .line 1277
    :cond_31
    aget-object v5, v16, v10

    .line 1278
    .line 1279
    iget v10, v5, Lgu5;->c:I

    .line 1280
    .line 1281
    if-ge v11, v10, :cond_32

    .line 1282
    .line 1283
    iget v10, v0, Lrq4;->C:I

    .line 1284
    .line 1285
    iput v11, v5, Lgu5;->c:I

    .line 1286
    .line 1287
    const/4 v11, 0x1

    .line 1288
    add-int/2addr v10, v11

    .line 1289
    iput v10, v5, Lgu5;->d:I

    .line 1290
    .line 1291
    const/4 v12, 0x0

    .line 1292
    iput v12, v5, Lgu5;->e:I

    .line 1293
    .line 1294
    iput-boolean v11, v5, Lgu5;->f:Z

    .line 1295
    .line 1296
    iput-boolean v12, v5, Lgu5;->g:Z

    .line 1297
    .line 1298
    :cond_32
    const/4 v5, 0x2

    .line 1299
    if-lt v2, v5, :cond_4b

    .line 1300
    .line 1301
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    .line 1302
    .line 1303
    .line 1304
    move-result v10

    .line 1305
    move v11, v5

    .line 1306
    const/4 v12, 0x0

    .line 1307
    :goto_24
    const/4 v13, 0x4

    .line 1308
    if-ge v12, v13, :cond_3c

    .line 1309
    .line 1310
    iget v14, v0, Lrq4;->C:I

    .line 1311
    .line 1312
    aget-object v14, v16, v14

    .line 1313
    .line 1314
    iget-object v14, v14, Lgu5;->b:[I

    .line 1315
    .line 1316
    aget v14, v14, v12

    .line 1317
    .line 1318
    iget v15, v4, Laq4;->g:I

    .line 1319
    .line 1320
    const/16 v24, 0x1

    .line 1321
    .line 1322
    add-int/lit8 v14, v14, 0x1

    .line 1323
    .line 1324
    const/4 v13, 0x0

    .line 1325
    invoke-static {v6, v15, v14, v13, v10}, Lrs9;->g([BIIII)I

    .line 1326
    .line 1327
    .line 1328
    move-result v14

    .line 1329
    if-ge v14, v5, :cond_33

    .line 1330
    .line 1331
    move-object/from16 v28, v7

    .line 1332
    .line 1333
    move/from16 v20, v8

    .line 1334
    .line 1335
    goto/16 :goto_28

    .line 1336
    .line 1337
    :cond_33
    :goto_25
    iget v5, v0, Lrq4;->D:I

    .line 1338
    .line 1339
    iget v13, v0, Lrq4;->C:I

    .line 1340
    .line 1341
    add-int v15, v13, v14

    .line 1342
    .line 1343
    if-ge v5, v15, :cond_34

    .line 1344
    .line 1345
    add-int/lit8 v5, v5, 0x1

    .line 1346
    .line 1347
    iput v5, v0, Lrq4;->D:I

    .line 1348
    .line 1349
    aget-object v5, v16, v5

    .line 1350
    .line 1351
    const/high16 v13, 0x40000000    # 2.0f

    .line 1352
    .line 1353
    iput v13, v5, Lgu5;->c:I

    .line 1354
    .line 1355
    goto :goto_25

    .line 1356
    :cond_34
    aget-object v5, v16, v13

    .line 1357
    .line 1358
    iget-object v5, v5, Lgu5;->a:Ldm7;

    .line 1359
    .line 1360
    invoke-virtual {v0, v8, v12, v5, v3}, Lpq4;->h(IILdm7;I)I

    .line 1361
    .line 1362
    .line 1363
    move-result v5

    .line 1364
    move v13, v14

    .line 1365
    :goto_26
    const/4 v15, 0x2

    .line 1366
    if-lt v13, v15, :cond_36

    .line 1367
    .line 1368
    aget-object v15, v27, v3

    .line 1369
    .line 1370
    add-int/lit8 v18, v13, -0x2

    .line 1371
    .line 1372
    aget v15, v15, v18

    .line 1373
    .line 1374
    add-int/2addr v15, v5

    .line 1375
    move/from16 v18, v5

    .line 1376
    .line 1377
    iget v5, v0, Lrq4;->C:I

    .line 1378
    .line 1379
    add-int v20, v5, v13

    .line 1380
    .line 1381
    move-object/from16 v28, v7

    .line 1382
    .line 1383
    aget-object v7, v16, v20

    .line 1384
    .line 1385
    move/from16 v20, v8

    .line 1386
    .line 1387
    iget v8, v7, Lgu5;->c:I

    .line 1388
    .line 1389
    if-ge v15, v8, :cond_35

    .line 1390
    .line 1391
    invoke-virtual {v7, v15, v5, v12}, Lgu5;->a(III)V

    .line 1392
    .line 1393
    .line 1394
    :cond_35
    add-int/lit8 v13, v13, -0x1

    .line 1395
    .line 1396
    move/from16 v5, v18

    .line 1397
    .line 1398
    move/from16 v8, v20

    .line 1399
    .line 1400
    move-object/from16 v7, v28

    .line 1401
    .line 1402
    goto :goto_26

    .line 1403
    :cond_36
    move/from16 v18, v5

    .line 1404
    .line 1405
    move-object/from16 v28, v7

    .line 1406
    .line 1407
    move/from16 v20, v8

    .line 1408
    .line 1409
    if-nez v12, :cond_37

    .line 1410
    .line 1411
    add-int/lit8 v11, v14, 0x1

    .line 1412
    .line 1413
    :cond_37
    sub-int v5, v2, v14

    .line 1414
    .line 1415
    const/16 v24, 0x1

    .line 1416
    .line 1417
    add-int/lit8 v5, v5, -0x1

    .line 1418
    .line 1419
    const/4 v15, 0x2

    .line 1420
    if-ge v5, v15, :cond_38

    .line 1421
    .line 1422
    goto/16 :goto_28

    .line 1423
    .line 1424
    :cond_38
    if-le v5, v9, :cond_39

    .line 1425
    .line 1426
    move v5, v9

    .line 1427
    :cond_39
    add-int/lit8 v7, v14, 0x1

    .line 1428
    .line 1429
    iget v8, v0, Lrq4;->C:I

    .line 1430
    .line 1431
    aget-object v8, v16, v8

    .line 1432
    .line 1433
    iget-object v8, v8, Lgu5;->b:[I

    .line 1434
    .line 1435
    aget v8, v8, v12

    .line 1436
    .line 1437
    iget v13, v4, Laq4;->g:I

    .line 1438
    .line 1439
    add-int/2addr v13, v7

    .line 1440
    const/16 v24, 0x1

    .line 1441
    .line 1442
    add-int/lit8 v8, v8, 0x1

    .line 1443
    .line 1444
    const/4 v15, 0x0

    .line 1445
    invoke-static {v6, v13, v8, v15, v5}, Lrs9;->g([BIIII)I

    .line 1446
    .line 1447
    .line 1448
    move-result v5

    .line 1449
    const/4 v15, 0x2

    .line 1450
    if-lt v5, v15, :cond_3b

    .line 1451
    .line 1452
    aget-object v7, v27, v3

    .line 1453
    .line 1454
    add-int/lit8 v8, v14, -0x2

    .line 1455
    .line 1456
    aget v7, v7, v8

    .line 1457
    .line 1458
    add-int v7, v7, v18

    .line 1459
    .line 1460
    iget v8, v0, Lrq4;->C:I

    .line 1461
    .line 1462
    aget-object v8, v16, v8

    .line 1463
    .line 1464
    iget-object v8, v8, Lgu5;->a:Ldm7;

    .line 1465
    .line 1466
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1467
    .line 1468
    .line 1469
    iget v8, v8, Ldm7;->a:I

    .line 1470
    .line 1471
    iput v8, v1, Ldm7;->a:I

    .line 1472
    .line 1473
    invoke-virtual {v1}, Ldm7;->b()V

    .line 1474
    .line 1475
    .line 1476
    const/4 v15, 0x0

    .line 1477
    invoke-virtual {v4, v14, v15}, Laq4;->c(II)I

    .line 1478
    .line 1479
    .line 1480
    move-result v34

    .line 1481
    invoke-virtual {v4, v15}, Laq4;->b(I)I

    .line 1482
    .line 1483
    .line 1484
    move-result v35

    .line 1485
    const/4 v8, 0x1

    .line 1486
    invoke-virtual {v4, v14, v8}, Laq4;->c(II)I

    .line 1487
    .line 1488
    .line 1489
    move-result v36

    .line 1490
    add-int v37, v32, v14

    .line 1491
    .line 1492
    iget-object v13, v0, Lrq4;->G:Ldm7;

    .line 1493
    .line 1494
    iget-object v15, v0, Lpq4;->o:Loq4;

    .line 1495
    .line 1496
    move-object/from16 v38, v13

    .line 1497
    .line 1498
    move-object/from16 v33, v15

    .line 1499
    .line 1500
    invoke-virtual/range {v33 .. v38}, Loq4;->b(IIIILdm7;)I

    .line 1501
    .line 1502
    .line 1503
    move-result v13

    .line 1504
    add-int/2addr v7, v13

    .line 1505
    invoke-virtual {v1}, Ldm7;->a()V

    .line 1506
    .line 1507
    .line 1508
    add-int/lit8 v37, v37, 0x1

    .line 1509
    .line 1510
    and-int v13, v37, v17

    .line 1511
    .line 1512
    invoke-virtual {v0, v5, v1, v13}, Lpq4;->g(ILdm7;I)I

    .line 1513
    .line 1514
    .line 1515
    move-result v13

    .line 1516
    add-int/2addr v13, v7

    .line 1517
    iget v7, v0, Lrq4;->C:I

    .line 1518
    .line 1519
    add-int/2addr v7, v14

    .line 1520
    add-int/2addr v7, v8

    .line 1521
    add-int/2addr v7, v5

    .line 1522
    :goto_27
    iget v5, v0, Lrq4;->D:I

    .line 1523
    .line 1524
    if-ge v5, v7, :cond_3a

    .line 1525
    .line 1526
    add-int/lit8 v5, v5, 0x1

    .line 1527
    .line 1528
    iput v5, v0, Lrq4;->D:I

    .line 1529
    .line 1530
    aget-object v5, v16, v5

    .line 1531
    .line 1532
    const/high16 v8, 0x40000000    # 2.0f

    .line 1533
    .line 1534
    iput v8, v5, Lgu5;->c:I

    .line 1535
    .line 1536
    goto :goto_27

    .line 1537
    :cond_3a
    aget-object v5, v16, v7

    .line 1538
    .line 1539
    iget v7, v5, Lgu5;->c:I

    .line 1540
    .line 1541
    if-ge v13, v7, :cond_3b

    .line 1542
    .line 1543
    iget v7, v0, Lrq4;->C:I

    .line 1544
    .line 1545
    iput v13, v5, Lgu5;->c:I

    .line 1546
    .line 1547
    add-int/2addr v14, v7

    .line 1548
    const/4 v8, 0x1

    .line 1549
    add-int/2addr v14, v8

    .line 1550
    iput v14, v5, Lgu5;->d:I

    .line 1551
    .line 1552
    const/4 v15, 0x0

    .line 1553
    iput v15, v5, Lgu5;->e:I

    .line 1554
    .line 1555
    iput-boolean v8, v5, Lgu5;->f:Z

    .line 1556
    .line 1557
    iput-boolean v8, v5, Lgu5;->g:Z

    .line 1558
    .line 1559
    iput v7, v5, Lgu5;->h:I

    .line 1560
    .line 1561
    iput v12, v5, Lgu5;->i:I

    .line 1562
    .line 1563
    :cond_3b
    :goto_28
    add-int/lit8 v12, v12, 0x1

    .line 1564
    .line 1565
    move/from16 v8, v20

    .line 1566
    .line 1567
    move-object/from16 v7, v28

    .line 1568
    .line 1569
    const/4 v5, 0x2

    .line 1570
    goto/16 :goto_24

    .line 1571
    .line 1572
    :cond_3c
    move-object/from16 v28, v7

    .line 1573
    .line 1574
    iget-object v5, v0, Lrq4;->E:Lnn1;

    .line 1575
    .line 1576
    iget v7, v5, Lnn1;->a:I

    .line 1577
    .line 1578
    if-lez v7, :cond_4a

    .line 1579
    .line 1580
    iget-object v8, v5, Lnn1;->b:Ljava/lang/Object;

    .line 1581
    .line 1582
    check-cast v8, [I

    .line 1583
    .line 1584
    add-int/lit8 v7, v7, -0x1

    .line 1585
    .line 1586
    aget v7, v8, v7

    .line 1587
    .line 1588
    if-le v7, v2, :cond_3e

    .line 1589
    .line 1590
    const/4 v12, 0x0

    .line 1591
    iput v12, v5, Lnn1;->a:I

    .line 1592
    .line 1593
    :goto_29
    iget-object v5, v0, Lrq4;->E:Lnn1;

    .line 1594
    .line 1595
    iget-object v7, v5, Lnn1;->b:Ljava/lang/Object;

    .line 1596
    .line 1597
    check-cast v7, [I

    .line 1598
    .line 1599
    iget v8, v5, Lnn1;->a:I

    .line 1600
    .line 1601
    aget v10, v7, v8

    .line 1602
    .line 1603
    if-ge v10, v2, :cond_3d

    .line 1604
    .line 1605
    add-int/lit8 v8, v8, 0x1

    .line 1606
    .line 1607
    iput v8, v5, Lnn1;->a:I

    .line 1608
    .line 1609
    goto :goto_29

    .line 1610
    :cond_3d
    add-int/lit8 v10, v8, 0x1

    .line 1611
    .line 1612
    iput v10, v5, Lnn1;->a:I

    .line 1613
    .line 1614
    aput v2, v7, v8

    .line 1615
    .line 1616
    :cond_3e
    iget-object v5, v0, Lrq4;->E:Lnn1;

    .line 1617
    .line 1618
    iget-object v7, v5, Lnn1;->b:Ljava/lang/Object;

    .line 1619
    .line 1620
    check-cast v7, [I

    .line 1621
    .line 1622
    iget v5, v5, Lnn1;->a:I

    .line 1623
    .line 1624
    const/16 v24, 0x1

    .line 1625
    .line 1626
    add-int/lit8 v5, v5, -0x1

    .line 1627
    .line 1628
    aget v5, v7, v5

    .line 1629
    .line 1630
    if-ge v5, v11, :cond_3f

    .line 1631
    .line 1632
    move/from16 v18, v2

    .line 1633
    .line 1634
    move/from16 v14, v24

    .line 1635
    .line 1636
    const/high16 v12, 0x40000000    # 2.0f

    .line 1637
    .line 1638
    :goto_2a
    const/4 v15, 0x2

    .line 1639
    goto/16 :goto_33

    .line 1640
    .line 1641
    :cond_3f
    :goto_2b
    iget v5, v0, Lrq4;->D:I

    .line 1642
    .line 1643
    iget v7, v0, Lrq4;->C:I

    .line 1644
    .line 1645
    iget-object v8, v0, Lrq4;->E:Lnn1;

    .line 1646
    .line 1647
    iget-object v10, v8, Lnn1;->b:Ljava/lang/Object;

    .line 1648
    .line 1649
    check-cast v10, [I

    .line 1650
    .line 1651
    iget v8, v8, Lnn1;->a:I

    .line 1652
    .line 1653
    add-int/lit8 v8, v8, -0x1

    .line 1654
    .line 1655
    aget v8, v10, v8

    .line 1656
    .line 1657
    add-int/2addr v8, v7

    .line 1658
    if-ge v5, v8, :cond_40

    .line 1659
    .line 1660
    add-int/lit8 v5, v5, 0x1

    .line 1661
    .line 1662
    iput v5, v0, Lrq4;->D:I

    .line 1663
    .line 1664
    aget-object v5, v16, v5

    .line 1665
    .line 1666
    const/high16 v8, 0x40000000    # 2.0f

    .line 1667
    .line 1668
    iput v8, v5, Lgu5;->c:I

    .line 1669
    .line 1670
    const/16 v24, 0x1

    .line 1671
    .line 1672
    goto :goto_2b

    .line 1673
    :cond_40
    aget-object v5, v16, v7

    .line 1674
    .line 1675
    iget-object v5, v5, Lgu5;->a:Ldm7;

    .line 1676
    .line 1677
    iget v5, v5, Ldm7;->a:I

    .line 1678
    .line 1679
    aget-short v5, v19, v5

    .line 1680
    .line 1681
    const/4 v12, 0x0

    .line 1682
    invoke-static {v5, v12}, Lbf6;->T(II)I

    .line 1683
    .line 1684
    .line 1685
    move-result v5

    .line 1686
    add-int v5, v5, v29

    .line 1687
    .line 1688
    const/4 v7, 0x0

    .line 1689
    :goto_2c
    iget-object v8, v0, Lrq4;->E:Lnn1;

    .line 1690
    .line 1691
    iget-object v8, v8, Lnn1;->b:Ljava/lang/Object;

    .line 1692
    .line 1693
    check-cast v8, [I

    .line 1694
    .line 1695
    aget v8, v8, v7

    .line 1696
    .line 1697
    if-le v11, v8, :cond_41

    .line 1698
    .line 1699
    add-int/lit8 v7, v7, 0x1

    .line 1700
    .line 1701
    goto :goto_2c

    .line 1702
    :cond_41
    :goto_2d
    iget-object v8, v0, Lrq4;->E:Lnn1;

    .line 1703
    .line 1704
    iget-object v8, v8, Lnn1;->c:Ljava/lang/Object;

    .line 1705
    .line 1706
    check-cast v8, [I

    .line 1707
    .line 1708
    aget v8, v8, v7

    .line 1709
    .line 1710
    invoke-virtual {v0, v5, v8, v11, v3}, Lpq4;->i(IIII)I

    .line 1711
    .line 1712
    .line 1713
    move-result v10

    .line 1714
    iget v12, v0, Lrq4;->C:I

    .line 1715
    .line 1716
    add-int v13, v12, v11

    .line 1717
    .line 1718
    aget-object v13, v16, v13

    .line 1719
    .line 1720
    iget v14, v13, Lgu5;->c:I

    .line 1721
    .line 1722
    if-ge v10, v14, :cond_42

    .line 1723
    .line 1724
    add-int/lit8 v14, v8, 0x4

    .line 1725
    .line 1726
    invoke-virtual {v13, v10, v12, v14}, Lgu5;->a(III)V

    .line 1727
    .line 1728
    .line 1729
    :cond_42
    iget-object v12, v0, Lrq4;->E:Lnn1;

    .line 1730
    .line 1731
    iget-object v12, v12, Lnn1;->b:Ljava/lang/Object;

    .line 1732
    .line 1733
    check-cast v12, [I

    .line 1734
    .line 1735
    aget v12, v12, v7

    .line 1736
    .line 1737
    if-eq v11, v12, :cond_43

    .line 1738
    .line 1739
    move/from16 v18, v2

    .line 1740
    .line 1741
    const/high16 v12, 0x40000000    # 2.0f

    .line 1742
    .line 1743
    const/4 v14, 0x1

    .line 1744
    const/4 v15, 0x2

    .line 1745
    goto/16 :goto_32

    .line 1746
    .line 1747
    :cond_43
    sub-int v12, v2, v11

    .line 1748
    .line 1749
    const/16 v24, 0x1

    .line 1750
    .line 1751
    add-int/lit8 v12, v12, -0x1

    .line 1752
    .line 1753
    const/4 v15, 0x2

    .line 1754
    if-lt v12, v15, :cond_48

    .line 1755
    .line 1756
    if-le v12, v9, :cond_44

    .line 1757
    .line 1758
    move v12, v9

    .line 1759
    :cond_44
    add-int/lit8 v13, v11, 0x1

    .line 1760
    .line 1761
    iget v14, v4, Laq4;->g:I

    .line 1762
    .line 1763
    add-int/2addr v14, v13

    .line 1764
    add-int/lit8 v13, v8, 0x1

    .line 1765
    .line 1766
    move/from16 v18, v2

    .line 1767
    .line 1768
    const/4 v2, 0x0

    .line 1769
    invoke-static {v6, v14, v13, v2, v12}, Lrs9;->g([BIIII)I

    .line 1770
    .line 1771
    .line 1772
    move-result v12

    .line 1773
    if-lt v12, v15, :cond_47

    .line 1774
    .line 1775
    iget v13, v0, Lrq4;->C:I

    .line 1776
    .line 1777
    aget-object v13, v16, v13

    .line 1778
    .line 1779
    iget-object v13, v13, Lgu5;->a:Ldm7;

    .line 1780
    .line 1781
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1782
    .line 1783
    .line 1784
    iget v13, v13, Ldm7;->a:I

    .line 1785
    .line 1786
    iput v13, v1, Ldm7;->a:I

    .line 1787
    .line 1788
    invoke-virtual {v1}, Ldm7;->c()V

    .line 1789
    .line 1790
    .line 1791
    invoke-virtual {v4, v11, v2}, Laq4;->c(II)I

    .line 1792
    .line 1793
    .line 1794
    move-result v34

    .line 1795
    invoke-virtual {v4, v2}, Laq4;->b(I)I

    .line 1796
    .line 1797
    .line 1798
    move-result v35

    .line 1799
    const/4 v2, 0x1

    .line 1800
    invoke-virtual {v4, v11, v2}, Laq4;->c(II)I

    .line 1801
    .line 1802
    .line 1803
    move-result v36

    .line 1804
    add-int v37, v32, v11

    .line 1805
    .line 1806
    iget-object v13, v0, Lrq4;->G:Ldm7;

    .line 1807
    .line 1808
    iget-object v14, v0, Lpq4;->o:Loq4;

    .line 1809
    .line 1810
    move-object/from16 v38, v13

    .line 1811
    .line 1812
    move-object/from16 v33, v14

    .line 1813
    .line 1814
    invoke-virtual/range {v33 .. v38}, Loq4;->b(IIIILdm7;)I

    .line 1815
    .line 1816
    .line 1817
    move-result v13

    .line 1818
    add-int/2addr v10, v13

    .line 1819
    invoke-virtual {v1}, Ldm7;->a()V

    .line 1820
    .line 1821
    .line 1822
    add-int/lit8 v37, v37, 0x1

    .line 1823
    .line 1824
    and-int v13, v37, v17

    .line 1825
    .line 1826
    invoke-virtual {v0, v12, v1, v13}, Lpq4;->g(ILdm7;I)I

    .line 1827
    .line 1828
    .line 1829
    move-result v13

    .line 1830
    add-int/2addr v13, v10

    .line 1831
    iget v10, v0, Lrq4;->C:I

    .line 1832
    .line 1833
    add-int/2addr v10, v11

    .line 1834
    add-int/2addr v10, v2

    .line 1835
    add-int/2addr v10, v12

    .line 1836
    :goto_2e
    iget v2, v0, Lrq4;->D:I

    .line 1837
    .line 1838
    if-ge v2, v10, :cond_45

    .line 1839
    .line 1840
    add-int/lit8 v2, v2, 0x1

    .line 1841
    .line 1842
    iput v2, v0, Lrq4;->D:I

    .line 1843
    .line 1844
    aget-object v2, v16, v2

    .line 1845
    .line 1846
    const/high16 v12, 0x40000000    # 2.0f

    .line 1847
    .line 1848
    iput v12, v2, Lgu5;->c:I

    .line 1849
    .line 1850
    goto :goto_2e

    .line 1851
    :cond_45
    const/high16 v12, 0x40000000    # 2.0f

    .line 1852
    .line 1853
    aget-object v2, v16, v10

    .line 1854
    .line 1855
    iget v10, v2, Lgu5;->c:I

    .line 1856
    .line 1857
    if-ge v13, v10, :cond_46

    .line 1858
    .line 1859
    iget v10, v0, Lrq4;->C:I

    .line 1860
    .line 1861
    add-int/lit8 v8, v8, 0x4

    .line 1862
    .line 1863
    iput v13, v2, Lgu5;->c:I

    .line 1864
    .line 1865
    add-int v13, v10, v11

    .line 1866
    .line 1867
    const/4 v14, 0x1

    .line 1868
    add-int/2addr v13, v14

    .line 1869
    iput v13, v2, Lgu5;->d:I

    .line 1870
    .line 1871
    const/4 v13, 0x0

    .line 1872
    iput v13, v2, Lgu5;->e:I

    .line 1873
    .line 1874
    iput-boolean v14, v2, Lgu5;->f:Z

    .line 1875
    .line 1876
    iput-boolean v14, v2, Lgu5;->g:Z

    .line 1877
    .line 1878
    iput v10, v2, Lgu5;->h:I

    .line 1879
    .line 1880
    iput v8, v2, Lgu5;->i:I

    .line 1881
    .line 1882
    goto :goto_31

    .line 1883
    :cond_46
    :goto_2f
    const/4 v14, 0x1

    .line 1884
    goto :goto_31

    .line 1885
    :cond_47
    :goto_30
    const/high16 v12, 0x40000000    # 2.0f

    .line 1886
    .line 1887
    goto :goto_2f

    .line 1888
    :cond_48
    move/from16 v18, v2

    .line 1889
    .line 1890
    goto :goto_30

    .line 1891
    :goto_31
    add-int/lit8 v7, v7, 0x1

    .line 1892
    .line 1893
    iget-object v2, v0, Lrq4;->E:Lnn1;

    .line 1894
    .line 1895
    iget v2, v2, Lnn1;->a:I

    .line 1896
    .line 1897
    if-ne v7, v2, :cond_49

    .line 1898
    .line 1899
    goto :goto_33

    .line 1900
    :cond_49
    :goto_32
    add-int/lit8 v11, v11, 0x1

    .line 1901
    .line 1902
    move/from16 v2, v18

    .line 1903
    .line 1904
    goto/16 :goto_2d

    .line 1905
    .line 1906
    :cond_4a
    move/from16 v18, v2

    .line 1907
    .line 1908
    const/high16 v12, 0x40000000    # 2.0f

    .line 1909
    .line 1910
    const/4 v14, 0x1

    .line 1911
    goto/16 :goto_2a

    .line 1912
    .line 1913
    :cond_4b
    move/from16 v18, v2

    .line 1914
    .line 1915
    move v15, v5

    .line 1916
    move-object/from16 v28, v7

    .line 1917
    .line 1918
    const/high16 v12, 0x40000000    # 2.0f

    .line 1919
    .line 1920
    const/4 v14, 0x1

    .line 1921
    :goto_33
    move/from16 v1, v18

    .line 1922
    .line 1923
    move-object/from16 v7, v28

    .line 1924
    .line 1925
    move/from16 v13, v32

    .line 1926
    .line 1927
    goto/16 :goto_16

    .line 1928
    .line 1929
    :cond_4c
    :goto_34
    iget v1, v0, Lrq4;->C:I

    .line 1930
    .line 1931
    iput v1, v0, Lrq4;->D:I

    .line 1932
    .line 1933
    aget-object v1, v16, v1

    .line 1934
    .line 1935
    iget v1, v1, Lgu5;->d:I

    .line 1936
    .line 1937
    :goto_35
    iget v2, v0, Lrq4;->C:I

    .line 1938
    .line 1939
    aget-object v3, v16, v2

    .line 1940
    .line 1941
    iget-boolean v4, v3, Lgu5;->f:Z

    .line 1942
    .line 1943
    if-eqz v4, :cond_4e

    .line 1944
    .line 1945
    aget-object v4, v16, v1

    .line 1946
    .line 1947
    iput v2, v4, Lgu5;->d:I

    .line 1948
    .line 1949
    const/4 v2, -0x1

    .line 1950
    iput v2, v4, Lgu5;->e:I

    .line 1951
    .line 1952
    add-int/lit8 v4, v1, -0x1

    .line 1953
    .line 1954
    iput v1, v0, Lrq4;->C:I

    .line 1955
    .line 1956
    iget-boolean v5, v3, Lgu5;->g:Z

    .line 1957
    .line 1958
    if-eqz v5, :cond_4d

    .line 1959
    .line 1960
    aget-object v5, v16, v4

    .line 1961
    .line 1962
    iput v1, v5, Lgu5;->d:I

    .line 1963
    .line 1964
    iget v1, v3, Lgu5;->i:I

    .line 1965
    .line 1966
    iput v1, v5, Lgu5;->e:I

    .line 1967
    .line 1968
    iput v4, v0, Lrq4;->C:I

    .line 1969
    .line 1970
    iget v1, v3, Lgu5;->h:I

    .line 1971
    .line 1972
    goto :goto_36

    .line 1973
    :cond_4d
    move v1, v4

    .line 1974
    goto :goto_36

    .line 1975
    :cond_4e
    const/4 v2, -0x1

    .line 1976
    :goto_36
    aget-object v3, v16, v1

    .line 1977
    .line 1978
    iget v4, v3, Lgu5;->d:I

    .line 1979
    .line 1980
    iget v5, v0, Lrq4;->C:I

    .line 1981
    .line 1982
    iput v5, v3, Lgu5;->d:I

    .line 1983
    .line 1984
    iput v1, v0, Lrq4;->C:I

    .line 1985
    .line 1986
    const/16 v23, 0x0

    .line 1987
    .line 1988
    if-gtz v1, :cond_4f

    .line 1989
    .line 1990
    aget-object v1, v16, v23

    .line 1991
    .line 1992
    iget v1, v1, Lgu5;->d:I

    .line 1993
    .line 1994
    iput v1, v0, Lrq4;->C:I

    .line 1995
    .line 1996
    aget-object v2, v16, v1

    .line 1997
    .line 1998
    iget v2, v2, Lgu5;->e:I

    .line 1999
    .line 2000
    iput v2, v0, Lpq4;->y:I

    .line 2001
    .line 2002
    return v1

    .line 2003
    :cond_4f
    move v1, v4

    .line 2004
    goto :goto_35
.end method
