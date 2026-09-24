.class public final Lh31;
.super Ljava/lang/Object;

# interfaces
.implements Lcp7;


# static fields
.field public static final p:[I


# instance fields
.field public a:I

.field public final b:[I

.field public final c:[I

.field public final d:[B

.field public e:Z

.field public f:I

.field public k:I

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "expand 16-byte kexpand 32-byte k"

    .line 2
    .line 3
    invoke-static {v0}, Llq7;->b(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v2, v1, [I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v3, v1, :cond_0

    .line 14
    .line 15
    invoke-static {v0, v4}, Lxx3;->r([BI)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    aput v5, v2, v3

    .line 20
    .line 21
    add-int/lit8 v4, v4, 0x4

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sput-object v2, Lh31;->p:[I

    .line 27
    .line 28
    const-string v0, "expand 32-byte k"

    .line 29
    .line 30
    invoke-static {v0}, Llq7;->b(Ljava/lang/String;)[B

    .line 31
    .line 32
    .line 33
    const-string v0, "expand 16-byte k"

    .line 34
    .line 35
    invoke-static {v0}, Llq7;->b(Ljava/lang/String;)[B

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lh31;->a:I

    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    new-array v2, v1, [I

    .line 10
    .line 11
    iput-object v2, p0, Lh31;->b:[I

    .line 12
    .line 13
    new-array v1, v1, [I

    .line 14
    .line 15
    iput-object v1, p0, Lh31;->c:[I

    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    new-array v1, v1, [B

    .line 20
    .line 21
    iput-object v1, p0, Lh31;->d:[B

    .line 22
    .line 23
    iput-boolean v0, p0, Lh31;->e:Z

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lh31;->b:[I

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/16 v3, 0x10

    .line 7
    .line 8
    if-ne v2, v3, :cond_2

    .line 9
    .line 10
    iget-object v0, v0, Lh31;->c:[I

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    if-ne v2, v3, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aget v4, v1, v2

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    aget v6, v1, v5

    .line 20
    .line 21
    const/4 v7, 0x2

    .line 22
    aget v8, v1, v7

    .line 23
    .line 24
    const/4 v9, 0x3

    .line 25
    aget v10, v1, v9

    .line 26
    .line 27
    const/4 v11, 0x4

    .line 28
    aget v12, v1, v11

    .line 29
    .line 30
    const/4 v13, 0x5

    .line 31
    aget v14, v1, v13

    .line 32
    .line 33
    const/4 v15, 0x6

    .line 34
    aget v16, v1, v15

    .line 35
    .line 36
    move/from16 p0, v2

    .line 37
    .line 38
    const/4 v2, 0x7

    .line 39
    aget v17, v1, v2

    .line 40
    .line 41
    move/from16 v18, v5

    .line 42
    .line 43
    const/16 v5, 0x8

    .line 44
    .line 45
    aget v19, v1, v5

    .line 46
    .line 47
    const/16 v20, 0x9

    .line 48
    .line 49
    aget v21, v1, v20

    .line 50
    .line 51
    const/16 v22, 0xa

    .line 52
    .line 53
    aget v23, v1, v22

    .line 54
    .line 55
    const/16 v24, 0xb

    .line 56
    .line 57
    aget v25, v1, v24

    .line 58
    .line 59
    move/from16 v26, v7

    .line 60
    .line 61
    const/16 v7, 0xc

    .line 62
    .line 63
    aget v27, v1, v7

    .line 64
    .line 65
    const/16 v28, 0xd

    .line 66
    .line 67
    aget v29, v1, v28

    .line 68
    .line 69
    const/16 v30, 0xe

    .line 70
    .line 71
    aget v31, v1, v30

    .line 72
    .line 73
    const/16 v32, 0xf

    .line 74
    .line 75
    aget v33, v1, v32

    .line 76
    .line 77
    const/16 v34, 0x14

    .line 78
    .line 79
    :goto_0
    if-lez v34, :cond_0

    .line 80
    .line 81
    add-int/2addr v4, v12

    .line 82
    move/from16 v35, v9

    .line 83
    .line 84
    xor-int v9, v27, v4

    .line 85
    .line 86
    invoke-static {v9, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    add-int v19, v19, v9

    .line 91
    .line 92
    xor-int v12, v12, v19

    .line 93
    .line 94
    invoke-static {v12, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    add-int/2addr v4, v12

    .line 99
    xor-int/2addr v9, v4

    .line 100
    invoke-static {v9, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    add-int v19, v19, v9

    .line 105
    .line 106
    xor-int v12, v12, v19

    .line 107
    .line 108
    invoke-static {v12, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    add-int/2addr v6, v14

    .line 113
    move/from16 v36, v11

    .line 114
    .line 115
    xor-int v11, v29, v6

    .line 116
    .line 117
    invoke-static {v11, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    add-int v21, v21, v11

    .line 122
    .line 123
    xor-int v14, v14, v21

    .line 124
    .line 125
    invoke-static {v14, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 126
    .line 127
    .line 128
    move-result v14

    .line 129
    add-int/2addr v6, v14

    .line 130
    xor-int/2addr v11, v6

    .line 131
    invoke-static {v11, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    add-int v21, v21, v11

    .line 136
    .line 137
    xor-int v14, v14, v21

    .line 138
    .line 139
    invoke-static {v14, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    add-int v8, v8, v16

    .line 144
    .line 145
    move/from16 v37, v13

    .line 146
    .line 147
    xor-int v13, v31, v8

    .line 148
    .line 149
    invoke-static {v13, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    add-int v23, v23, v13

    .line 154
    .line 155
    move/from16 v38, v15

    .line 156
    .line 157
    xor-int v15, v16, v23

    .line 158
    .line 159
    invoke-static {v15, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    add-int/2addr v8, v15

    .line 164
    xor-int/2addr v13, v8

    .line 165
    invoke-static {v13, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    add-int v23, v23, v13

    .line 170
    .line 171
    xor-int v15, v15, v23

    .line 172
    .line 173
    invoke-static {v15, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 174
    .line 175
    .line 176
    move-result v15

    .line 177
    add-int v10, v10, v17

    .line 178
    .line 179
    xor-int v2, v33, v10

    .line 180
    .line 181
    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    add-int v25, v25, v2

    .line 186
    .line 187
    xor-int v3, v17, v25

    .line 188
    .line 189
    invoke-static {v3, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    add-int/2addr v10, v3

    .line 194
    xor-int/2addr v2, v10

    .line 195
    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    add-int v25, v25, v2

    .line 200
    .line 201
    xor-int v3, v3, v25

    .line 202
    .line 203
    const/4 v5, 0x7

    .line 204
    invoke-static {v3, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    add-int/2addr v4, v14

    .line 209
    xor-int/2addr v2, v4

    .line 210
    const/16 v5, 0x10

    .line 211
    .line 212
    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    add-int v23, v23, v2

    .line 217
    .line 218
    xor-int v5, v14, v23

    .line 219
    .line 220
    invoke-static {v5, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    add-int/2addr v4, v5

    .line 225
    xor-int/2addr v2, v4

    .line 226
    const/16 v14, 0x8

    .line 227
    .line 228
    invoke-static {v2, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 229
    .line 230
    .line 231
    move-result v33

    .line 232
    add-int v23, v23, v33

    .line 233
    .line 234
    xor-int v2, v5, v23

    .line 235
    .line 236
    const/4 v5, 0x7

    .line 237
    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 238
    .line 239
    .line 240
    move-result v14

    .line 241
    add-int/2addr v6, v15

    .line 242
    xor-int v2, v9, v6

    .line 243
    .line 244
    const/16 v5, 0x10

    .line 245
    .line 246
    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    add-int v25, v25, v2

    .line 251
    .line 252
    xor-int v5, v15, v25

    .line 253
    .line 254
    invoke-static {v5, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    add-int/2addr v6, v5

    .line 259
    xor-int/2addr v2, v6

    .line 260
    const/16 v9, 0x8

    .line 261
    .line 262
    invoke-static {v2, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 263
    .line 264
    .line 265
    move-result v27

    .line 266
    add-int v25, v25, v27

    .line 267
    .line 268
    xor-int v2, v5, v25

    .line 269
    .line 270
    const/4 v5, 0x7

    .line 271
    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 272
    .line 273
    .line 274
    move-result v16

    .line 275
    add-int/2addr v8, v3

    .line 276
    xor-int v2, v11, v8

    .line 277
    .line 278
    const/16 v5, 0x10

    .line 279
    .line 280
    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    add-int v19, v19, v2

    .line 285
    .line 286
    xor-int v3, v3, v19

    .line 287
    .line 288
    invoke-static {v3, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    add-int/2addr v8, v3

    .line 293
    xor-int/2addr v2, v8

    .line 294
    const/16 v9, 0x8

    .line 295
    .line 296
    invoke-static {v2, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 297
    .line 298
    .line 299
    move-result v29

    .line 300
    add-int v19, v19, v29

    .line 301
    .line 302
    xor-int v2, v3, v19

    .line 303
    .line 304
    const/4 v5, 0x7

    .line 305
    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 306
    .line 307
    .line 308
    move-result v17

    .line 309
    add-int/2addr v10, v12

    .line 310
    xor-int v2, v13, v10

    .line 311
    .line 312
    const/16 v5, 0x10

    .line 313
    .line 314
    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    add-int v21, v21, v2

    .line 319
    .line 320
    xor-int v3, v12, v21

    .line 321
    .line 322
    invoke-static {v3, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    add-int/2addr v10, v3

    .line 327
    xor-int/2addr v2, v10

    .line 328
    const/16 v9, 0x8

    .line 329
    .line 330
    invoke-static {v2, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 331
    .line 332
    .line 333
    move-result v31

    .line 334
    add-int v21, v21, v31

    .line 335
    .line 336
    xor-int v2, v3, v21

    .line 337
    .line 338
    const/4 v3, 0x7

    .line 339
    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 340
    .line 341
    .line 342
    move-result v12

    .line 343
    add-int/lit8 v34, v34, -0x2

    .line 344
    .line 345
    move v3, v5

    .line 346
    move/from16 v9, v35

    .line 347
    .line 348
    move/from16 v11, v36

    .line 349
    .line 350
    move/from16 v13, v37

    .line 351
    .line 352
    move/from16 v15, v38

    .line 353
    .line 354
    const/4 v2, 0x7

    .line 355
    const/16 v5, 0x8

    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_0
    move/from16 v35, v9

    .line 360
    .line 361
    move/from16 v36, v11

    .line 362
    .line 363
    move/from16 v37, v13

    .line 364
    .line 365
    move/from16 v38, v15

    .line 366
    .line 367
    aget v2, v1, p0

    .line 368
    .line 369
    add-int/2addr v4, v2

    .line 370
    aput v4, v0, p0

    .line 371
    .line 372
    aget v2, v1, v18

    .line 373
    .line 374
    add-int/2addr v6, v2

    .line 375
    aput v6, v0, v18

    .line 376
    .line 377
    aget v2, v1, v26

    .line 378
    .line 379
    add-int/2addr v8, v2

    .line 380
    aput v8, v0, v26

    .line 381
    .line 382
    aget v2, v1, v35

    .line 383
    .line 384
    add-int/2addr v10, v2

    .line 385
    aput v10, v0, v35

    .line 386
    .line 387
    aget v2, v1, v36

    .line 388
    .line 389
    add-int/2addr v12, v2

    .line 390
    aput v12, v0, v36

    .line 391
    .line 392
    aget v2, v1, v37

    .line 393
    .line 394
    add-int/2addr v14, v2

    .line 395
    aput v14, v0, v37

    .line 396
    .line 397
    aget v2, v1, v38

    .line 398
    .line 399
    add-int v16, v16, v2

    .line 400
    .line 401
    aput v16, v0, v38

    .line 402
    .line 403
    const/16 v39, 0x7

    .line 404
    .line 405
    aget v2, v1, v39

    .line 406
    .line 407
    add-int v17, v17, v2

    .line 408
    .line 409
    aput v17, v0, v39

    .line 410
    .line 411
    const/16 v40, 0x8

    .line 412
    .line 413
    aget v2, v1, v40

    .line 414
    .line 415
    add-int v19, v19, v2

    .line 416
    .line 417
    aput v19, v0, v40

    .line 418
    .line 419
    aget v2, v1, v20

    .line 420
    .line 421
    add-int v21, v21, v2

    .line 422
    .line 423
    aput v21, v0, v20

    .line 424
    .line 425
    aget v2, v1, v22

    .line 426
    .line 427
    add-int v23, v23, v2

    .line 428
    .line 429
    aput v23, v0, v22

    .line 430
    .line 431
    aget v2, v1, v24

    .line 432
    .line 433
    add-int v25, v25, v2

    .line 434
    .line 435
    aput v25, v0, v24

    .line 436
    .line 437
    aget v2, v1, v7

    .line 438
    .line 439
    add-int v27, v27, v2

    .line 440
    .line 441
    aput v27, v0, v7

    .line 442
    .line 443
    aget v2, v1, v28

    .line 444
    .line 445
    add-int v29, v29, v2

    .line 446
    .line 447
    aput v29, v0, v28

    .line 448
    .line 449
    aget v2, v1, v30

    .line 450
    .line 451
    add-int v31, v31, v2

    .line 452
    .line 453
    aput v31, v0, v30

    .line 454
    .line 455
    aget v1, v1, v32

    .line 456
    .line 457
    add-int v33, v33, v1

    .line 458
    .line 459
    aput v33, v0, v32

    .line 460
    .line 461
    move-object/from16 v1, p1

    .line 462
    .line 463
    invoke-static {v1, v0}, Lxx3;->p([B[I)V

    .line 464
    .line 465
    .line 466
    return-void

    .line 467
    :cond_1
    invoke-static {}, Lc6;->b()V

    .line 468
    .line 469
    .line 470
    return-void

    .line 471
    :cond_2
    invoke-static {}, Lc6;->b()V

    .line 472
    .line 473
    .line 474
    return-void
.end method

.method public final b(ZLz61;)V
    .locals 4

    .line 1
    instance-of p1, p2, Lvw5;

    .line 2
    .line 3
    const-string v0, "ChaCha20"

    .line 4
    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    move-object p1, p2

    .line 8
    check-cast p1, Lvw5;

    .line 9
    .line 10
    iget-object v1, p1, Lvw5;->a:[B

    .line 11
    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    if-ne v2, v3, :cond_4

    .line 18
    .line 19
    iget-object p1, p1, Lvw5;->b:Lz61;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-boolean p1, p0, Lh31;->e:Z

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1, v1}, Lh31;->d([B[B)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p0, " KeyParameter can not be null for first initialisation"

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    instance-of v2, p1, Loo4;

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    check-cast p1, Loo4;

    .line 47
    .line 48
    iget-object p1, p1, Loo4;->a:[B

    .line 49
    .line 50
    invoke-virtual {p0, p1, v1}, Lh31;->d([B[B)V

    .line 51
    .line 52
    .line 53
    array-length p1, p1

    .line 54
    instance-of p1, p2, Lb42;

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    sget-object p1, Le42;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ld42;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    :goto_0
    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lh31;->a:I

    .line 71
    .line 72
    iput p1, p0, Lh31;->f:I

    .line 73
    .line 74
    iput p1, p0, Lh31;->k:I

    .line 75
    .line 76
    iput p1, p0, Lh31;->n:I

    .line 77
    .line 78
    const/16 p2, 0xd

    .line 79
    .line 80
    iget-object v0, p0, Lh31;->b:[I

    .line 81
    .line 82
    aput p1, v0, p2

    .line 83
    .line 84
    const/16 p2, 0xc

    .line 85
    .line 86
    aput p1, v0, p2

    .line 87
    .line 88
    iget-object p1, p0, Lh31;->d:[B

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lh31;->a([B)V

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lh31;->e:Z

    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    const-string p0, "params should not be CryptoServicePurpose"

    .line 98
    .line 99
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    const-string p0, " Init parameters must contain a KeyParameter (or null for re-init)"

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_4
    const-string p0, " requires exactly 8 bytes of IV"

    .line 114
    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_5
    const-string p0, " Init parameters must include an IV"

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final c([BII[BI)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lh31;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    add-int v0, p2, p3

    .line 7
    .line 8
    array-length v2, p1

    .line 9
    if-gt v0, v2, :cond_6

    .line 10
    .line 11
    add-int v0, p5, p3

    .line 12
    .line 13
    array-length v2, p4

    .line 14
    if-gt v0, v2, :cond_5

    .line 15
    .line 16
    iget v0, p0, Lh31;->f:I

    .line 17
    .line 18
    add-int/2addr v0, p3

    .line 19
    iput v0, p0, Lh31;->f:I

    .line 20
    .line 21
    if-ge v0, p3, :cond_1

    .line 22
    .line 23
    if-ltz v0, :cond_1

    .line 24
    .line 25
    iget v0, p0, Lh31;->k:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput v0, p0, Lh31;->k:I

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget v0, p0, Lh31;->n:I

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    iput v0, p0, Lh31;->n:I

    .line 38
    .line 39
    and-int/lit8 v0, v0, 0x20

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Lk95;

    .line 45
    .line 46
    const-string p1, "2^70 byte limit per IV would be exceeded; Change IV"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_1
    :goto_0
    if-ge v1, p3, :cond_4

    .line 53
    .line 54
    add-int v0, v1, p5

    .line 55
    .line 56
    iget v2, p0, Lh31;->a:I

    .line 57
    .line 58
    iget-object v3, p0, Lh31;->d:[B

    .line 59
    .line 60
    aget-byte v4, v3, v2

    .line 61
    .line 62
    add-int v5, v1, p2

    .line 63
    .line 64
    aget-byte v5, p1, v5

    .line 65
    .line 66
    xor-int/2addr v4, v5

    .line 67
    int-to-byte v4, v4

    .line 68
    aput-byte v4, p4, v0

    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    and-int/lit8 v0, v2, 0x3f

    .line 73
    .line 74
    iput v0, p0, Lh31;->a:I

    .line 75
    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    iget-object v0, p0, Lh31;->b:[I

    .line 79
    .line 80
    const/16 v2, 0xc

    .line 81
    .line 82
    aget v4, v0, v2

    .line 83
    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    aput v4, v0, v2

    .line 87
    .line 88
    if-nez v4, :cond_2

    .line 89
    .line 90
    const/16 v2, 0xd

    .line 91
    .line 92
    aget v4, v0, v2

    .line 93
    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    aput v4, v0, v2

    .line 97
    .line 98
    :cond_2
    invoke-virtual {p0, v3}, Lh31;->a([B)V

    .line 99
    .line 100
    .line 101
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    return p3

    .line 105
    :cond_5
    new-instance p0, Ldv5;

    .line 106
    .line 107
    const-string p1, "output buffer too short"

    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_6
    new-instance p0, Lua2;

    .line 114
    .line 115
    const-string p1, "input buffer too short"

    .line 116
    .line 117
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_7
    const-string p0, "ChaCha20"

    .line 122
    .line 123
    const-string p1, " not initialised"

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return v1
.end method

.method public final d([B[B)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object p0, p0, Lh31;->b:[I

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    array-length v2, p1

    .line 8
    const/16 v3, 0x10

    .line 9
    .line 10
    if-eq v2, v3, :cond_1

    .line 11
    .line 12
    array-length v2, p1

    .line 13
    const/16 v4, 0x20

    .line 14
    .line 15
    if-ne v2, v4, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "ChaCha20"

    .line 19
    .line 20
    const-string p1, " requires 128 bit or 256 bit key"

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    :goto_0
    array-length v2, p1

    .line 31
    sub-int/2addr v2, v3

    .line 32
    const/4 v4, 0x4

    .line 33
    div-int/2addr v2, v4

    .line 34
    sget-object v5, Lh31;->p:[I

    .line 35
    .line 36
    aget v6, v5, v2

    .line 37
    .line 38
    aput v6, p0, v1

    .line 39
    .line 40
    add-int/lit8 v6, v2, 0x1

    .line 41
    .line 42
    aget v6, v5, v6

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    aput v6, p0, v7

    .line 46
    .line 47
    add-int/lit8 v6, v2, 0x2

    .line 48
    .line 49
    aget v6, v5, v6

    .line 50
    .line 51
    aput v6, p0, v0

    .line 52
    .line 53
    const/4 v6, 0x3

    .line 54
    add-int/2addr v2, v6

    .line 55
    aget v2, v5, v2

    .line 56
    .line 57
    aput v2, p0, v6

    .line 58
    .line 59
    invoke-static {p1, v1, p0, v4, v4}, Lxx3;->s([BI[III)V

    .line 60
    .line 61
    .line 62
    array-length v2, p1

    .line 63
    sub-int/2addr v2, v3

    .line 64
    const/16 v3, 0x8

    .line 65
    .line 66
    invoke-static {p1, v2, p0, v3, v4}, Lxx3;->s([BI[III)V

    .line 67
    .line 68
    .line 69
    :cond_2
    const/16 p1, 0xe

    .line 70
    .line 71
    invoke-static {p2, v1, p0, p1, v0}, Lxx3;->s([BI[III)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
