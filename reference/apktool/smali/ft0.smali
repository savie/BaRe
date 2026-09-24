.class public final Lft0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final m:I

.field public static final n:[I


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public final d:[I

.field public final e:[I

.field public final f:[I

.field public final g:[I

.field public final h:[I

.field public final i:[Z

.field public final j:[I

.field public final k:[C

.field public l:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lft0;->m:I

    .line 10
    .line 11
    const/16 v0, 0xe

    .line 12
    .line 13
    new-array v0, v0, [I

    .line 14
    .line 15
    fill-array-data v0, :array_0

    .line 16
    .line 17
    .line 18
    sput-object v0, Lft0;->n:[I

    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 4
        0x1
        0x4
        0xd
        0x28
        0x79
        0x16c
        0x445
        0xcd0
        0x2671
        0x7354
        0x159fd
        0x40df8
        0xc29e9
        0x247dbc
    .end array-data
.end method

.method public constructor <init>(Lvj0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lft0;->m:I

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    iput-object v1, p0, Lft0;->d:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    iput-object v0, p0, Lft0;->e:[I

    .line 13
    .line 14
    const/16 v0, 0x3e8

    .line 15
    .line 16
    new-array v0, v0, [I

    .line 17
    .line 18
    iput-object v0, p0, Lft0;->f:[I

    .line 19
    .line 20
    const/16 v0, 0x100

    .line 21
    .line 22
    new-array v1, v0, [I

    .line 23
    .line 24
    iput-object v1, p0, Lft0;->g:[I

    .line 25
    .line 26
    new-array v1, v0, [I

    .line 27
    .line 28
    iput-object v1, p0, Lft0;->h:[I

    .line 29
    .line 30
    new-array v0, v0, [Z

    .line 31
    .line 32
    iput-object v0, p0, Lft0;->i:[Z

    .line 33
    .line 34
    const v0, 0x10001

    .line 35
    .line 36
    .line 37
    new-array v0, v0, [I

    .line 38
    .line 39
    iput-object v0, p0, Lft0;->j:[I

    .line 40
    .line 41
    iget-object p1, p1, Lvj0;->s:[C

    .line 42
    .line 43
    iput-object p1, p0, Lft0;->k:[C

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lvj0;I)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lvj0;->q:[B

    .line 6
    .line 7
    add-int/lit8 v3, p2, 0x1

    .line 8
    .line 9
    aget-byte v4, v2, v3

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    aput-byte v4, v2, v5

    .line 13
    .line 14
    iget-object v1, v1, Lvj0;->r:[I

    .line 15
    .line 16
    const/16 v4, 0x101

    .line 17
    .line 18
    new-array v6, v4, [I

    .line 19
    .line 20
    iget-object v7, v0, Lft0;->l:[I

    .line 21
    .line 22
    if-nez v7, :cond_0

    .line 23
    .line 24
    iget-object v7, v0, Lft0;->k:[C

    .line 25
    .line 26
    array-length v7, v7

    .line 27
    div-int/lit8 v7, v7, 0x2

    .line 28
    .line 29
    new-array v7, v7, [I

    .line 30
    .line 31
    iput-object v7, v0, Lft0;->l:[I

    .line 32
    .line 33
    :cond_0
    iget-object v7, v0, Lft0;->l:[I

    .line 34
    .line 35
    move v8, v5

    .line 36
    :goto_0
    if-ge v8, v3, :cond_1

    .line 37
    .line 38
    aput v5, v7, v8

    .line 39
    .line 40
    add-int/lit8 v8, v8, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v8, v5

    .line 44
    :goto_1
    const/4 v9, 0x1

    .line 45
    if-ge v8, v3, :cond_2

    .line 46
    .line 47
    aget-byte v10, v2, v8

    .line 48
    .line 49
    and-int/lit16 v10, v10, 0xff

    .line 50
    .line 51
    aget v11, v6, v10

    .line 52
    .line 53
    add-int/2addr v11, v9

    .line 54
    aput v11, v6, v10

    .line 55
    .line 56
    add-int/lit8 v8, v8, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v8, v9

    .line 60
    :goto_2
    if-ge v8, v4, :cond_3

    .line 61
    .line 62
    aget v10, v6, v8

    .line 63
    .line 64
    add-int/lit8 v11, v8, -0x1

    .line 65
    .line 66
    aget v11, v6, v11

    .line 67
    .line 68
    add-int/2addr v10, v11

    .line 69
    aput v10, v6, v8

    .line 70
    .line 71
    add-int/lit8 v8, v8, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move v4, v5

    .line 75
    :goto_3
    if-ge v4, v3, :cond_4

    .line 76
    .line 77
    aget-byte v8, v2, v4

    .line 78
    .line 79
    and-int/lit16 v8, v8, 0xff

    .line 80
    .line 81
    aget v10, v6, v8

    .line 82
    .line 83
    sub-int/2addr v10, v9

    .line 84
    aput v10, v6, v8

    .line 85
    .line 86
    aput v4, v1, v10

    .line 87
    .line 88
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    add-int/lit8 v2, p2, 0x41

    .line 92
    .line 93
    new-instance v4, Ljava/util/BitSet;

    .line 94
    .line 95
    invoke-direct {v4, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 96
    .line 97
    .line 98
    move v2, v5

    .line 99
    :goto_4
    const/16 v8, 0x100

    .line 100
    .line 101
    if-ge v2, v8, :cond_5

    .line 102
    .line 103
    aget v8, v6, v2

    .line 104
    .line 105
    invoke-virtual {v4, v8}, Ljava/util/BitSet;->set(I)V

    .line 106
    .line 107
    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_5
    move v2, v5

    .line 112
    :goto_5
    const/16 v6, 0x20

    .line 113
    .line 114
    if-ge v2, v6, :cond_6

    .line 115
    .line 116
    mul-int/lit8 v6, v2, 0x2

    .line 117
    .line 118
    add-int/2addr v6, v3

    .line 119
    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 120
    .line 121
    .line 122
    add-int/2addr v6, v9

    .line 123
    invoke-virtual {v4, v6}, Ljava/util/BitSet;->clear(I)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_6
    move v2, v9

    .line 130
    :cond_7
    move v6, v5

    .line 131
    move v8, v6

    .line 132
    :goto_6
    if-ge v6, v3, :cond_a

    .line 133
    .line 134
    invoke-virtual {v4, v6}, Ljava/util/BitSet;->get(I)Z

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    if-eqz v10, :cond_8

    .line 139
    .line 140
    move v8, v6

    .line 141
    :cond_8
    aget v10, v1, v6

    .line 142
    .line 143
    sub-int/2addr v10, v2

    .line 144
    if-gez v10, :cond_9

    .line 145
    .line 146
    add-int/2addr v10, v3

    .line 147
    :cond_9
    aput v8, v7, v10

    .line 148
    .line 149
    add-int/lit8 v6, v6, 0x1

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_a
    const/4 v6, -0x1

    .line 153
    move v10, v5

    .line 154
    move v8, v6

    .line 155
    :goto_7
    add-int/2addr v8, v9

    .line 156
    invoke-virtual {v4, v8}, Ljava/util/BitSet;->nextClearBit(I)I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    add-int/lit8 v11, v8, -0x1

    .line 161
    .line 162
    if-lt v11, v3, :cond_b

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 166
    .line 167
    invoke-virtual {v4, v8}, Ljava/util/BitSet;->nextSetBit(I)I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    sub-int/2addr v8, v9

    .line 172
    if-lt v8, v3, :cond_10

    .line 173
    .line 174
    :goto_8
    mul-int/lit8 v2, v2, 0x2

    .line 175
    .line 176
    if-gt v2, v3, :cond_c

    .line 177
    .line 178
    if-nez v10, :cond_7

    .line 179
    .line 180
    :cond_c
    move v0, v5

    .line 181
    :goto_9
    if-ge v0, v3, :cond_d

    .line 182
    .line 183
    aget v2, v1, v0

    .line 184
    .line 185
    sub-int/2addr v2, v9

    .line 186
    aput v2, v1, v0

    .line 187
    .line 188
    add-int/lit8 v0, v0, 0x1

    .line 189
    .line 190
    goto :goto_9

    .line 191
    :cond_d
    :goto_a
    if-ge v5, v3, :cond_f

    .line 192
    .line 193
    aget v0, v1, v5

    .line 194
    .line 195
    if-ne v0, v6, :cond_e

    .line 196
    .line 197
    aput p2, v1, v5

    .line 198
    .line 199
    return-void

    .line 200
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 201
    .line 202
    goto :goto_a

    .line 203
    :cond_f
    return-void

    .line 204
    :cond_10
    if-le v8, v11, :cond_29

    .line 205
    .line 206
    sub-int v12, v8, v11

    .line 207
    .line 208
    add-int/2addr v12, v9

    .line 209
    add-int/2addr v10, v12

    .line 210
    iget-object v12, v0, Lft0;->d:[I

    .line 211
    .line 212
    aput v11, v12, v5

    .line 213
    .line 214
    iget-object v13, v0, Lft0;->e:[I

    .line 215
    .line 216
    aput v8, v13, v5

    .line 217
    .line 218
    move/from16 v16, v9

    .line 219
    .line 220
    const-wide/16 v17, 0x0

    .line 221
    .line 222
    :goto_b
    if-lez v16, :cond_26

    .line 223
    .line 224
    add-int/lit8 v19, v16, -0x1

    .line 225
    .line 226
    move/from16 v20, v5

    .line 227
    .line 228
    aget v5, v12, v19

    .line 229
    .line 230
    aget v6, v13, v19

    .line 231
    .line 232
    filled-new-array {v5, v6}, [I

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    aget v6, v5, v20

    .line 237
    .line 238
    aget v5, v5, v9

    .line 239
    .line 240
    move/from16 v21, v9

    .line 241
    .line 242
    sub-int v9, v5, v6

    .line 243
    .line 244
    const-wide/16 v22, 0x0

    .line 245
    .line 246
    const/16 v14, 0xa

    .line 247
    .line 248
    if-ge v9, v14, :cond_18

    .line 249
    .line 250
    if-ne v6, v5, :cond_11

    .line 251
    .line 252
    goto :goto_10

    .line 253
    :cond_11
    const/4 v14, 0x3

    .line 254
    if-le v9, v14, :cond_14

    .line 255
    .line 256
    add-int/lit8 v9, v5, -0x4

    .line 257
    .line 258
    :goto_c
    if-lt v9, v6, :cond_14

    .line 259
    .line 260
    aget v14, v1, v9

    .line 261
    .line 262
    aget v15, v7, v14

    .line 263
    .line 264
    add-int/lit8 v16, v9, 0x4

    .line 265
    .line 266
    move/from16 v0, v16

    .line 267
    .line 268
    :goto_d
    if-gt v0, v5, :cond_12

    .line 269
    .line 270
    aget v16, v1, v0

    .line 271
    .line 272
    move/from16 v24, v0

    .line 273
    .line 274
    aget v0, v7, v16

    .line 275
    .line 276
    if-le v15, v0, :cond_13

    .line 277
    .line 278
    add-int/lit8 v0, v24, -0x4

    .line 279
    .line 280
    aput v16, v1, v0

    .line 281
    .line 282
    add-int/lit8 v0, v24, 0x4

    .line 283
    .line 284
    goto :goto_d

    .line 285
    :cond_12
    move/from16 v24, v0

    .line 286
    .line 287
    :cond_13
    add-int/lit8 v0, v24, -0x4

    .line 288
    .line 289
    aput v14, v1, v0

    .line 290
    .line 291
    add-int/lit8 v9, v9, -0x1

    .line 292
    .line 293
    move-object/from16 v0, p0

    .line 294
    .line 295
    goto :goto_c

    .line 296
    :cond_14
    add-int/lit8 v0, v5, -0x1

    .line 297
    .line 298
    :goto_e
    if-lt v0, v6, :cond_17

    .line 299
    .line 300
    aget v9, v1, v0

    .line 301
    .line 302
    aget v14, v7, v9

    .line 303
    .line 304
    add-int/lit8 v15, v0, 0x1

    .line 305
    .line 306
    :goto_f
    if-gt v15, v5, :cond_15

    .line 307
    .line 308
    aget v16, v1, v15

    .line 309
    .line 310
    move/from16 v24, v0

    .line 311
    .line 312
    aget v0, v7, v16

    .line 313
    .line 314
    if-le v14, v0, :cond_16

    .line 315
    .line 316
    add-int/lit8 v0, v15, -0x1

    .line 317
    .line 318
    aput v16, v1, v0

    .line 319
    .line 320
    add-int/lit8 v15, v15, 0x1

    .line 321
    .line 322
    move/from16 v0, v24

    .line 323
    .line 324
    goto :goto_f

    .line 325
    :cond_15
    move/from16 v24, v0

    .line 326
    .line 327
    :cond_16
    add-int/lit8 v15, v15, -0x1

    .line 328
    .line 329
    aput v9, v1, v15

    .line 330
    .line 331
    add-int/lit8 v0, v24, -0x1

    .line 332
    .line 333
    goto :goto_e

    .line 334
    :cond_17
    :goto_10
    move-object/from16 v0, p0

    .line 335
    .line 336
    move/from16 v16, v19

    .line 337
    .line 338
    move/from16 v5, v20

    .line 339
    .line 340
    move/from16 v9, v21

    .line 341
    .line 342
    :goto_11
    const/4 v6, -0x1

    .line 343
    goto :goto_b

    .line 344
    :cond_18
    const-wide/16 v14, 0x1dc5

    .line 345
    .line 346
    mul-long v17, v17, v14

    .line 347
    .line 348
    const-wide/16 v14, 0x1

    .line 349
    .line 350
    add-long v17, v17, v14

    .line 351
    .line 352
    const-wide/32 v24, 0x8000

    .line 353
    .line 354
    .line 355
    rem-long v17, v17, v24

    .line 356
    .line 357
    const-wide/16 v24, 0x3

    .line 358
    .line 359
    rem-long v24, v17, v24

    .line 360
    .line 361
    cmp-long v0, v24, v22

    .line 362
    .line 363
    if-nez v0, :cond_19

    .line 364
    .line 365
    aget v0, v1, v6

    .line 366
    .line 367
    aget v0, v7, v0

    .line 368
    .line 369
    :goto_12
    int-to-long v14, v0

    .line 370
    goto :goto_13

    .line 371
    :cond_19
    cmp-long v0, v24, v14

    .line 372
    .line 373
    if-nez v0, :cond_1a

    .line 374
    .line 375
    add-int v0, v6, v5

    .line 376
    .line 377
    ushr-int/lit8 v0, v0, 0x1

    .line 378
    .line 379
    aget v0, v1, v0

    .line 380
    .line 381
    aget v0, v7, v0

    .line 382
    .line 383
    goto :goto_12

    .line 384
    :cond_1a
    aget v0, v1, v5

    .line 385
    .line 386
    aget v0, v7, v0

    .line 387
    .line 388
    goto :goto_12

    .line 389
    :goto_13
    move-object/from16 v24, v1

    .line 390
    .line 391
    move v9, v5

    .line 392
    move/from16 v25, v9

    .line 393
    .line 394
    move v0, v6

    .line 395
    move v1, v0

    .line 396
    :goto_14
    if-le v0, v9, :cond_1b

    .line 397
    .line 398
    move/from16 v28, v2

    .line 399
    .line 400
    goto :goto_17

    .line 401
    :cond_1b
    aget v26, v24, v0

    .line 402
    .line 403
    aget v27, v7, v26

    .line 404
    .line 405
    move/from16 v28, v2

    .line 406
    .line 407
    long-to-int v2, v14

    .line 408
    sub-int v27, v27, v2

    .line 409
    .line 410
    if-nez v27, :cond_1c

    .line 411
    .line 412
    aget v2, v24, v1

    .line 413
    .line 414
    aput v2, v24, v0

    .line 415
    .line 416
    aput v26, v24, v1

    .line 417
    .line 418
    add-int/lit8 v1, v1, 0x1

    .line 419
    .line 420
    :goto_15
    add-int/lit8 v0, v0, 0x1

    .line 421
    .line 422
    :goto_16
    move/from16 v2, v28

    .line 423
    .line 424
    goto :goto_14

    .line 425
    :cond_1c
    if-lez v27, :cond_25

    .line 426
    .line 427
    :goto_17
    move/from16 v2, v25

    .line 428
    .line 429
    :goto_18
    if-le v0, v9, :cond_1d

    .line 430
    .line 431
    move/from16 v27, v3

    .line 432
    .line 433
    goto :goto_19

    .line 434
    :cond_1d
    aget v25, v24, v9

    .line 435
    .line 436
    aget v26, v7, v25

    .line 437
    .line 438
    move/from16 v27, v3

    .line 439
    .line 440
    long-to-int v3, v14

    .line 441
    sub-int v26, v26, v3

    .line 442
    .line 443
    if-nez v26, :cond_1f

    .line 444
    .line 445
    aget v3, v24, v2

    .line 446
    .line 447
    aput v3, v24, v9

    .line 448
    .line 449
    aput v25, v24, v2

    .line 450
    .line 451
    add-int/lit8 v2, v2, -0x1

    .line 452
    .line 453
    :cond_1e
    add-int/lit8 v9, v9, -0x1

    .line 454
    .line 455
    move/from16 v3, v27

    .line 456
    .line 457
    goto :goto_18

    .line 458
    :cond_1f
    if-gez v26, :cond_1e

    .line 459
    .line 460
    :goto_19
    if-le v0, v9, :cond_24

    .line 461
    .line 462
    if-ge v2, v1, :cond_20

    .line 463
    .line 464
    move-object/from16 v0, p0

    .line 465
    .line 466
    move/from16 v16, v19

    .line 467
    .line 468
    :goto_1a
    move/from16 v5, v20

    .line 469
    .line 470
    move/from16 v9, v21

    .line 471
    .line 472
    move-object/from16 v1, v24

    .line 473
    .line 474
    move/from16 v3, v27

    .line 475
    .line 476
    move/from16 v2, v28

    .line 477
    .line 478
    goto/16 :goto_11

    .line 479
    .line 480
    :cond_20
    sub-int v3, v1, v6

    .line 481
    .line 482
    sub-int v14, v0, v1

    .line 483
    .line 484
    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    sub-int v14, v0, v3

    .line 489
    .line 490
    move v15, v6

    .line 491
    :goto_1b
    if-lez v3, :cond_21

    .line 492
    .line 493
    aget v25, v24, v15

    .line 494
    .line 495
    aget v26, v24, v14

    .line 496
    .line 497
    aput v26, v24, v15

    .line 498
    .line 499
    aput v25, v24, v14

    .line 500
    .line 501
    add-int/lit8 v15, v15, 0x1

    .line 502
    .line 503
    add-int/lit8 v14, v14, 0x1

    .line 504
    .line 505
    add-int/lit8 v3, v3, -0x1

    .line 506
    .line 507
    goto :goto_1b

    .line 508
    :cond_21
    sub-int v3, v5, v2

    .line 509
    .line 510
    sub-int/2addr v2, v9

    .line 511
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    add-int/lit8 v9, v9, 0x1

    .line 516
    .line 517
    sub-int v14, v5, v3

    .line 518
    .line 519
    add-int/lit8 v14, v14, 0x1

    .line 520
    .line 521
    :goto_1c
    if-lez v3, :cond_22

    .line 522
    .line 523
    aget v15, v24, v9

    .line 524
    .line 525
    aget v25, v24, v14

    .line 526
    .line 527
    aput v25, v24, v9

    .line 528
    .line 529
    aput v15, v24, v14

    .line 530
    .line 531
    add-int/lit8 v9, v9, 0x1

    .line 532
    .line 533
    add-int/lit8 v14, v14, 0x1

    .line 534
    .line 535
    add-int/lit8 v3, v3, -0x1

    .line 536
    .line 537
    goto :goto_1c

    .line 538
    :cond_22
    add-int/2addr v0, v6

    .line 539
    sub-int/2addr v0, v1

    .line 540
    add-int/lit8 v0, v0, -0x1

    .line 541
    .line 542
    sub-int v1, v5, v2

    .line 543
    .line 544
    add-int/lit8 v1, v1, 0x1

    .line 545
    .line 546
    sub-int v2, v0, v6

    .line 547
    .line 548
    sub-int v3, v5, v1

    .line 549
    .line 550
    if-le v2, v3, :cond_23

    .line 551
    .line 552
    aput v6, v12, v19

    .line 553
    .line 554
    aput v0, v13, v19

    .line 555
    .line 556
    add-int/lit8 v0, v16, 0x1

    .line 557
    .line 558
    aput v1, v12, v16

    .line 559
    .line 560
    aput v5, v13, v16

    .line 561
    .line 562
    move/from16 v16, v0

    .line 563
    .line 564
    goto :goto_1d

    .line 565
    :cond_23
    aput v1, v12, v19

    .line 566
    .line 567
    aput v5, v13, v19

    .line 568
    .line 569
    add-int/lit8 v1, v16, 0x1

    .line 570
    .line 571
    aput v6, v12, v16

    .line 572
    .line 573
    aput v0, v13, v16

    .line 574
    .line 575
    move/from16 v16, v1

    .line 576
    .line 577
    :goto_1d
    move-object/from16 v0, p0

    .line 578
    .line 579
    goto :goto_1a

    .line 580
    :cond_24
    aget v3, v24, v0

    .line 581
    .line 582
    aget v25, v24, v9

    .line 583
    .line 584
    aput v25, v24, v0

    .line 585
    .line 586
    aput v3, v24, v9

    .line 587
    .line 588
    add-int/lit8 v0, v0, 0x1

    .line 589
    .line 590
    add-int/lit8 v9, v9, -0x1

    .line 591
    .line 592
    move/from16 v25, v2

    .line 593
    .line 594
    move/from16 v3, v27

    .line 595
    .line 596
    goto/16 :goto_16

    .line 597
    .line 598
    :cond_25
    move/from16 v27, v3

    .line 599
    .line 600
    goto/16 :goto_15

    .line 601
    .line 602
    :cond_26
    move-object/from16 v24, v1

    .line 603
    .line 604
    move/from16 v28, v2

    .line 605
    .line 606
    move/from16 v27, v3

    .line 607
    .line 608
    move/from16 v20, v5

    .line 609
    .line 610
    move/from16 v21, v9

    .line 611
    .line 612
    const/4 v0, -0x1

    .line 613
    :goto_1e
    if-gt v11, v8, :cond_28

    .line 614
    .line 615
    aget v1, v24, v11

    .line 616
    .line 617
    aget v1, v7, v1

    .line 618
    .line 619
    if-eq v0, v1, :cond_27

    .line 620
    .line 621
    invoke-virtual {v4, v11}, Ljava/util/BitSet;->set(I)V

    .line 622
    .line 623
    .line 624
    move v0, v1

    .line 625
    :cond_27
    add-int/lit8 v11, v11, 0x1

    .line 626
    .line 627
    goto :goto_1e

    .line 628
    :cond_28
    move-object/from16 v0, p0

    .line 629
    .line 630
    move/from16 v5, v20

    .line 631
    .line 632
    move/from16 v9, v21

    .line 633
    .line 634
    move-object/from16 v1, v24

    .line 635
    .line 636
    move/from16 v3, v27

    .line 637
    .line 638
    move/from16 v2, v28

    .line 639
    .line 640
    const/4 v6, -0x1

    .line 641
    goto/16 :goto_7

    .line 642
    .line 643
    :cond_29
    move-object/from16 v0, p0

    .line 644
    .line 645
    goto/16 :goto_7
.end method
