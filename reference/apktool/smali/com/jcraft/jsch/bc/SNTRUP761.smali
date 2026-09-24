.class public Lcom/jcraft/jsch/bc/SNTRUP761;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/KEM;


# instance fields
.field public a:Lty3;

.field public b:Lqv6;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final decapsulate([B)[B
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/jcraft/jsch/bc/SNTRUP761;->a:Lty3;

    .line 6
    .line 7
    iget-object v0, v0, Lty3;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lpv6;

    .line 10
    .line 11
    iget-object v2, v0, Lei0;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lov6;

    .line 14
    .line 15
    iget-object v3, v0, Lpv6;->k:[B

    .line 16
    .line 17
    iget v4, v2, Lov6;->a:I

    .line 18
    .line 19
    iget v5, v2, Lov6;->b:I

    .line 20
    .line 21
    iget v6, v2, Lov6;->c:I

    .line 22
    .line 23
    iget v2, v2, Lov6;->d:I

    .line 24
    .line 25
    new-array v7, v4, [B

    .line 26
    .line 27
    iget-object v8, v0, Lpv6;->c:[B

    .line 28
    .line 29
    invoke-static {v8}, Lms8;->k([B)[B

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    invoke-static {v4, v7, v8}, Llg7;->n(I[B[B)V

    .line 34
    .line 35
    .line 36
    new-array v8, v4, [B

    .line 37
    .line 38
    iget-object v9, v0, Lpv6;->d:[B

    .line 39
    .line 40
    invoke-static {v9}, Lms8;->k([B)[B

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-static {v4, v8, v9}, Llg7;->n(I[B[B)V

    .line 45
    .line 46
    .line 47
    new-array v9, v4, [S

    .line 48
    .line 49
    new-array v10, v4, [S

    .line 50
    .line 51
    new-array v11, v4, [S

    .line 52
    .line 53
    const/4 v12, 0x0

    .line 54
    move v13, v12

    .line 55
    :goto_0
    const/4 v14, 0x3

    .line 56
    if-ge v13, v4, :cond_0

    .line 57
    .line 58
    add-int/lit8 v15, v5, 0x2

    .line 59
    .line 60
    div-int/2addr v15, v14

    .line 61
    int-to-short v14, v15

    .line 62
    aput-short v14, v11, v13

    .line 63
    .line 64
    add-int/lit8 v13, v13, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-static {v4, v12, v1, v10, v11}, Llg7;->f(II[B[S[S)V

    .line 68
    .line 69
    .line 70
    move v11, v12

    .line 71
    :goto_1
    const/4 v13, 0x2

    .line 72
    if-ge v11, v4, :cond_1

    .line 73
    .line 74
    aget-short v15, v10, v11

    .line 75
    .line 76
    mul-int/2addr v15, v14

    .line 77
    add-int/lit8 v16, v5, -0x1

    .line 78
    .line 79
    div-int/lit8 v16, v16, 0x2

    .line 80
    .line 81
    sub-int v15, v15, v16

    .line 82
    .line 83
    int-to-short v13, v15

    .line 84
    aput-short v13, v9, v11

    .line 85
    .line 86
    add-int/lit8 v11, v11, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    new-array v10, v4, [S

    .line 90
    .line 91
    invoke-static {v4, v5, v7, v10, v9}, Llg7;->A(II[B[S[S)V

    .line 92
    .line 93
    .line 94
    new-array v7, v4, [S

    .line 95
    .line 96
    move v9, v12

    .line 97
    :goto_2
    if-ge v9, v4, :cond_2

    .line 98
    .line 99
    aget-short v11, v10, v9

    .line 100
    .line 101
    mul-int/2addr v11, v14

    .line 102
    invoke-static {v11, v5}, Llg7;->q(II)I

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    int-to-short v11, v11

    .line 107
    aput-short v11, v7, v9

    .line 108
    .line 109
    add-int/lit8 v9, v9, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    new-array v9, v4, [B

    .line 113
    .line 114
    move v10, v12

    .line 115
    :goto_3
    if-ge v10, v4, :cond_3

    .line 116
    .line 117
    aget-short v11, v7, v10

    .line 118
    .line 119
    invoke-static {v11, v14}, Llg7;->q(II)I

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    int-to-byte v11, v11

    .line 124
    aput-byte v11, v9, v10

    .line 125
    .line 126
    add-int/lit8 v10, v10, 0x1

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_3
    new-array v7, v4, [B

    .line 130
    .line 131
    add-int v10, v4, v4

    .line 132
    .line 133
    add-int/lit8 v11, v10, -0x1

    .line 134
    .line 135
    new-array v15, v11, [B

    .line 136
    .line 137
    move/from16 p0, v13

    .line 138
    .line 139
    move v13, v12

    .line 140
    :goto_4
    if-ge v13, v4, :cond_5

    .line 141
    .line 142
    move/from16 v17, v12

    .line 143
    .line 144
    :goto_5
    if-gt v12, v13, :cond_4

    .line 145
    .line 146
    aget-byte v18, v9, v12

    .line 147
    .line 148
    sub-int v19, v13, v12

    .line 149
    .line 150
    aget-byte v19, v8, v19

    .line 151
    .line 152
    mul-int v18, v18, v19

    .line 153
    .line 154
    move-object/from16 v19, v3

    .line 155
    .line 156
    add-int v3, v18, v17

    .line 157
    .line 158
    invoke-static {v3, v14}, Llg7;->q(II)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    int-to-byte v3, v3

    .line 163
    add-int/lit8 v12, v12, 0x1

    .line 164
    .line 165
    move/from16 v17, v3

    .line 166
    .line 167
    move-object/from16 v3, v19

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_4
    move-object/from16 v19, v3

    .line 171
    .line 172
    aput-byte v17, v15, v13

    .line 173
    .line 174
    add-int/lit8 v13, v13, 0x1

    .line 175
    .line 176
    const/4 v12, 0x0

    .line 177
    goto :goto_4

    .line 178
    :cond_5
    move-object/from16 v19, v3

    .line 179
    .line 180
    move v3, v4

    .line 181
    :goto_6
    const/4 v12, 0x1

    .line 182
    if-ge v3, v11, :cond_7

    .line 183
    .line 184
    sub-int v13, v3, v4

    .line 185
    .line 186
    add-int/2addr v13, v12

    .line 187
    const/4 v12, 0x0

    .line 188
    :goto_7
    if-ge v13, v4, :cond_6

    .line 189
    .line 190
    aget-byte v17, v9, v13

    .line 191
    .line 192
    sub-int v18, v3, v13

    .line 193
    .line 194
    aget-byte v18, v8, v18

    .line 195
    .line 196
    mul-int v17, v17, v18

    .line 197
    .line 198
    add-int v12, v17, v12

    .line 199
    .line 200
    invoke-static {v12, v14}, Llg7;->q(II)I

    .line 201
    .line 202
    .line 203
    move-result v12

    .line 204
    int-to-byte v12, v12

    .line 205
    add-int/lit8 v13, v13, 0x1

    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_6
    aput-byte v12, v15, v3

    .line 209
    .line 210
    add-int/lit8 v3, v3, 0x1

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_7
    add-int/lit8 v10, v10, -0x2

    .line 214
    .line 215
    :goto_8
    if-lt v10, v4, :cond_8

    .line 216
    .line 217
    sub-int v3, v10, v4

    .line 218
    .line 219
    aget-byte v8, v15, v3

    .line 220
    .line 221
    aget-byte v9, v15, v10

    .line 222
    .line 223
    add-int/2addr v8, v9

    .line 224
    invoke-static {v8, v14}, Llg7;->q(II)I

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    int-to-byte v8, v8

    .line 229
    aput-byte v8, v15, v3

    .line 230
    .line 231
    add-int/2addr v3, v12

    .line 232
    aget-byte v8, v15, v3

    .line 233
    .line 234
    aget-byte v9, v15, v10

    .line 235
    .line 236
    add-int/2addr v8, v9

    .line 237
    invoke-static {v8, v14}, Llg7;->q(II)I

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    int-to-byte v8, v8

    .line 242
    aput-byte v8, v15, v3

    .line 243
    .line 244
    add-int/lit8 v10, v10, -0x1

    .line 245
    .line 246
    goto :goto_8

    .line 247
    :cond_8
    const/4 v3, 0x0

    .line 248
    :goto_9
    if-ge v3, v4, :cond_9

    .line 249
    .line 250
    aget-byte v8, v15, v3

    .line 251
    .line 252
    aput-byte v8, v7, v3

    .line 253
    .line 254
    add-int/lit8 v3, v3, 0x1

    .line 255
    .line 256
    goto :goto_9

    .line 257
    :cond_9
    new-array v3, v4, [B

    .line 258
    .line 259
    const/4 v8, 0x0

    .line 260
    const/4 v9, 0x0

    .line 261
    :goto_a
    if-eq v8, v4, :cond_a

    .line 262
    .line 263
    aget-byte v10, v7, v8

    .line 264
    .line 265
    and-int/2addr v10, v12

    .line 266
    add-int/2addr v9, v10

    .line 267
    add-int/lit8 v8, v8, 0x1

    .line 268
    .line 269
    goto :goto_a

    .line 270
    :cond_a
    sub-int/2addr v9, v6

    .line 271
    int-to-long v8, v9

    .line 272
    const-wide v10, 0xffffffffL

    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    and-long/2addr v8, v10

    .line 278
    neg-long v8, v8

    .line 279
    const/16 v10, 0x3f

    .line 280
    .line 281
    ushr-long/2addr v8, v10

    .line 282
    long-to-int v8, v8

    .line 283
    neg-int v8, v8

    .line 284
    const/4 v9, 0x0

    .line 285
    :goto_b
    if-ge v9, v6, :cond_b

    .line 286
    .line 287
    aget-byte v10, v7, v9

    .line 288
    .line 289
    xor-int/2addr v10, v12

    .line 290
    not-int v11, v8

    .line 291
    and-int/2addr v10, v11

    .line 292
    xor-int/2addr v10, v12

    .line 293
    int-to-byte v10, v10

    .line 294
    aput-byte v10, v3, v9

    .line 295
    .line 296
    add-int/lit8 v9, v9, 0x1

    .line 297
    .line 298
    goto :goto_b

    .line 299
    :cond_b
    :goto_c
    if-ge v6, v4, :cond_c

    .line 300
    .line 301
    aget-byte v9, v7, v6

    .line 302
    .line 303
    not-int v10, v8

    .line 304
    and-int/2addr v9, v10

    .line 305
    int-to-byte v9, v9

    .line 306
    aput-byte v9, v3, v6

    .line 307
    .line 308
    add-int/lit8 v6, v6, 0x1

    .line 309
    .line 310
    goto :goto_c

    .line 311
    :cond_c
    add-int/lit8 v6, v4, 0x3

    .line 312
    .line 313
    div-int/lit8 v6, v6, 0x4

    .line 314
    .line 315
    new-array v7, v6, [B

    .line 316
    .line 317
    invoke-static {v4, v7, v3}, Llg7;->o(I[B[B)V

    .line 318
    .line 319
    .line 320
    new-array v8, v4, [S

    .line 321
    .line 322
    iget-object v9, v0, Lpv6;->e:[B

    .line 323
    .line 324
    invoke-static {v9}, Lms8;->k([B)[B

    .line 325
    .line 326
    .line 327
    move-result-object v9

    .line 328
    new-array v10, v4, [S

    .line 329
    .line 330
    new-array v11, v4, [S

    .line 331
    .line 332
    const/4 v13, 0x0

    .line 333
    :goto_d
    if-ge v13, v4, :cond_d

    .line 334
    .line 335
    int-to-short v15, v5

    .line 336
    aput-short v15, v11, v13

    .line 337
    .line 338
    add-int/lit8 v13, v13, 0x1

    .line 339
    .line 340
    goto :goto_d

    .line 341
    :cond_d
    const/4 v13, 0x0

    .line 342
    invoke-static {v4, v13, v9, v10, v11}, Llg7;->f(II[B[S[S)V

    .line 343
    .line 344
    .line 345
    const/4 v9, 0x0

    .line 346
    :goto_e
    if-ge v9, v4, :cond_e

    .line 347
    .line 348
    aget-short v11, v10, v9

    .line 349
    .line 350
    add-int/lit8 v13, v5, -0x1

    .line 351
    .line 352
    div-int/lit8 v13, v13, 0x2

    .line 353
    .line 354
    sub-int/2addr v11, v13

    .line 355
    int-to-short v11, v11

    .line 356
    aput-short v11, v8, v9

    .line 357
    .line 358
    add-int/lit8 v9, v9, 0x1

    .line 359
    .line 360
    goto :goto_e

    .line 361
    :cond_e
    new-array v9, v4, [S

    .line 362
    .line 363
    invoke-static {v4, v5, v3, v9, v8}, Llg7;->A(II[B[S[S)V

    .line 364
    .line 365
    .line 366
    new-array v3, v4, [S

    .line 367
    .line 368
    const/4 v8, 0x0

    .line 369
    :goto_f
    if-ge v8, v4, :cond_f

    .line 370
    .line 371
    aget-short v10, v9, v8

    .line 372
    .line 373
    invoke-static {v10, v14}, Llg7;->q(II)I

    .line 374
    .line 375
    .line 376
    move-result v11

    .line 377
    sub-int/2addr v10, v11

    .line 378
    int-to-short v10, v10

    .line 379
    aput-short v10, v3, v8

    .line 380
    .line 381
    add-int/lit8 v8, v8, 0x1

    .line 382
    .line 383
    goto :goto_f

    .line 384
    :cond_f
    new-array v8, v2, [B

    .line 385
    .line 386
    new-array v9, v4, [S

    .line 387
    .line 388
    new-array v10, v4, [S

    .line 389
    .line 390
    const/4 v11, 0x0

    .line 391
    :goto_10
    if-ge v11, v4, :cond_10

    .line 392
    .line 393
    aget-short v13, v3, v11

    .line 394
    .line 395
    add-int/lit8 v15, v5, -0x1

    .line 396
    .line 397
    div-int/lit8 v15, v15, 0x2

    .line 398
    .line 399
    add-int/2addr v15, v13

    .line 400
    mul-int/lit16 v15, v15, 0x2aab

    .line 401
    .line 402
    ushr-int/lit8 v13, v15, 0xf

    .line 403
    .line 404
    int-to-short v13, v13

    .line 405
    aput-short v13, v9, v11

    .line 406
    .line 407
    add-int/lit8 v13, v5, 0x2

    .line 408
    .line 409
    div-int/2addr v13, v14

    .line 410
    int-to-short v13, v13

    .line 411
    aput-short v13, v10, v11

    .line 412
    .line 413
    add-int/lit8 v11, v11, 0x1

    .line 414
    .line 415
    goto :goto_10

    .line 416
    :cond_10
    const/4 v13, 0x0

    .line 417
    invoke-static {v4, v13, v8, v9, v10}, Llg7;->h(II[B[S[S)V

    .line 418
    .line 419
    .line 420
    new-array v3, v12, [B

    .line 421
    .line 422
    aput-byte v14, v3, v13

    .line 423
    .line 424
    invoke-static {v3, v7}, Llg7;->p([B[B)[B

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    invoke-static/range {v19 .. v19}, Lms8;->k([B)[B

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    array-length v4, v4

    .line 433
    const/16 v5, 0x20

    .line 434
    .line 435
    add-int/2addr v4, v5

    .line 436
    new-array v4, v4, [B

    .line 437
    .line 438
    invoke-static {v3, v13, v4, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    .line 440
    .line 441
    invoke-static/range {v19 .. v19}, Lms8;->k([B)[B

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    invoke-static/range {v19 .. v19}, Lms8;->k([B)[B

    .line 446
    .line 447
    .line 448
    move-result-object v9

    .line 449
    array-length v9, v9

    .line 450
    invoke-static {v3, v13, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    .line 452
    .line 453
    new-array v3, v12, [B

    .line 454
    .line 455
    aput-byte p0, v3, v13

    .line 456
    .line 457
    invoke-static {v3, v4}, Llg7;->p([B[B)[B

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    add-int/lit8 v4, v2, 0x20

    .line 462
    .line 463
    new-array v9, v4, [B

    .line 464
    .line 465
    invoke-static {v8, v13, v9, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    .line 467
    .line 468
    invoke-static {v3, v13, v9, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    .line 470
    .line 471
    invoke-static {v1, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-eqz v1, :cond_11

    .line 476
    .line 477
    const/4 v13, 0x0

    .line 478
    goto :goto_11

    .line 479
    :cond_11
    const/4 v13, -0x1

    .line 480
    :goto_11
    iget-object v0, v0, Lpv6;->f:[B

    .line 481
    .line 482
    invoke-static {v0}, Lms8;->k([B)[B

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    const/4 v1, 0x0

    .line 487
    :goto_12
    if-ge v1, v6, :cond_12

    .line 488
    .line 489
    aget-byte v3, v7, v1

    .line 490
    .line 491
    aget-byte v8, v0, v1

    .line 492
    .line 493
    xor-int/2addr v8, v3

    .line 494
    and-int/2addr v8, v13

    .line 495
    xor-int/2addr v3, v8

    .line 496
    int-to-byte v3, v3

    .line 497
    aput-byte v3, v7, v1

    .line 498
    .line 499
    add-int/lit8 v1, v1, 0x1

    .line 500
    .line 501
    goto :goto_12

    .line 502
    :cond_12
    new-array v0, v12, [B

    .line 503
    .line 504
    const/4 v1, 0x0

    .line 505
    aput-byte v14, v0, v1

    .line 506
    .line 507
    invoke-static {v0, v7}, Llg7;->p([B[B)[B

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    add-int/lit8 v2, v2, 0x40

    .line 512
    .line 513
    new-array v2, v2, [B

    .line 514
    .line 515
    invoke-static {v0, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 516
    .line 517
    .line 518
    invoke-static {v9, v1, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    .line 520
    .line 521
    add-int/2addr v13, v12

    .line 522
    int-to-byte v0, v13

    .line 523
    new-array v3, v12, [B

    .line 524
    .line 525
    aput-byte v0, v3, v1

    .line 526
    .line 527
    invoke-static {v3, v2}, Llg7;->p([B[B)[B

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-static {v0, v1, v5}, Lms8;->t([BII)[B

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    return-object v0
.end method

.method public final getPublicKey()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/bc/SNTRUP761;->b:Lqv6;

    .line 2
    .line 3
    iget-object p0, p0, Lqv6;->c:[B

    .line 4
    .line 5
    invoke-static {p0}, Lms8;->k([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final init()V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/security/SecureRandom;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Le42;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    const/16 v2, 0x2f9

    .line 11
    .line 12
    new-array v3, v2, [B

    .line 13
    .line 14
    new-array v4, v2, [B

    .line 15
    .line 16
    :goto_0
    const/4 v5, 0x0

    .line 17
    move v6, v5

    .line 18
    :goto_1
    const/4 v7, 0x1

    .line 19
    const/4 v8, 0x3

    .line 20
    if-ge v6, v2, :cond_0

    .line 21
    .line 22
    invoke-static {v1}, Llg7;->r(Ljava/security/SecureRandom;)I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    const v10, 0x3fffffff    # 1.9999999f

    .line 27
    .line 28
    .line 29
    and-int/2addr v9, v10

    .line 30
    mul-int/2addr v9, v8

    .line 31
    ushr-int/lit8 v8, v9, 0x1e

    .line 32
    .line 33
    sub-int/2addr v8, v7

    .line 34
    int-to-byte v7, v8

    .line 35
    aput-byte v7, v3, v6

    .line 36
    .line 37
    add-int/lit8 v6, v6, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/16 v6, 0x2f9

    .line 41
    .line 42
    add-int/2addr v6, v7

    .line 43
    new-array v9, v6, [B

    .line 44
    .line 45
    new-array v10, v6, [B

    .line 46
    .line 47
    new-array v11, v6, [B

    .line 48
    .line 49
    new-array v12, v6, [B

    .line 50
    .line 51
    aput-byte v7, v11, v5

    .line 52
    .line 53
    aput-byte v7, v9, v5

    .line 54
    .line 55
    rsub-int v13, v7, 0x2f9

    .line 56
    .line 57
    const/4 v14, -0x1

    .line 58
    aput-byte v14, v9, v13

    .line 59
    .line 60
    aput-byte v14, v9, v2

    .line 61
    .line 62
    move v15, v5

    .line 63
    :goto_2
    if-ge v15, v2, :cond_1

    .line 64
    .line 65
    sub-int v16, v13, v15

    .line 66
    .line 67
    aget-byte v17, v3, v15

    .line 68
    .line 69
    aput-byte v17, v10, v16

    .line 70
    .line 71
    add-int/lit8 v15, v15, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    aput-byte v5, v10, v2

    .line 75
    .line 76
    move v15, v5

    .line 77
    move/from16 v16, v14

    .line 78
    .line 79
    move v14, v7

    .line 80
    :goto_3
    const/16 v17, 0x2f9

    .line 81
    .line 82
    const/4 v8, 0x2

    .line 83
    mul-int/lit8 v17, v17, 0x2

    .line 84
    .line 85
    add-int/lit8 v8, v17, -0x1

    .line 86
    .line 87
    const/16 v17, 0x3f

    .line 88
    .line 89
    const-wide v20, 0xffffffffL

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    if-ge v15, v8, :cond_6

    .line 95
    .line 96
    invoke-static {v12, v5, v12, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    .line 98
    .line 99
    aput-byte v5, v12, v5

    .line 100
    .line 101
    aget-byte v8, v10, v5

    .line 102
    .line 103
    move/from16 v22, v5

    .line 104
    .line 105
    neg-int v5, v8

    .line 106
    aget-byte v19, v9, v22

    .line 107
    .line 108
    mul-int v5, v5, v19

    .line 109
    .line 110
    move/from16 v23, v7

    .line 111
    .line 112
    neg-int v7, v14

    .line 113
    ushr-int/lit8 v2, v7, 0x1f

    .line 114
    .line 115
    neg-int v2, v2

    .line 116
    move/from16 v19, v7

    .line 117
    .line 118
    int-to-long v7, v8

    .line 119
    and-long v7, v7, v20

    .line 120
    .line 121
    neg-long v7, v7

    .line 122
    ushr-long v7, v7, v17

    .line 123
    .line 124
    long-to-int v7, v7

    .line 125
    neg-int v7, v7

    .line 126
    and-int/2addr v2, v7

    .line 127
    xor-int v7, v14, v19

    .line 128
    .line 129
    and-int/2addr v7, v2

    .line 130
    xor-int/2addr v7, v14

    .line 131
    add-int/lit8 v14, v7, 0x1

    .line 132
    .line 133
    move/from16 v7, v22

    .line 134
    .line 135
    :goto_4
    if-ge v7, v6, :cond_2

    .line 136
    .line 137
    aget-byte v8, v9, v7

    .line 138
    .line 139
    aget-byte v17, v10, v7

    .line 140
    .line 141
    xor-int v17, v8, v17

    .line 142
    .line 143
    and-int v17, v2, v17

    .line 144
    .line 145
    xor-int v8, v8, v17

    .line 146
    .line 147
    int-to-byte v8, v8

    .line 148
    aput-byte v8, v9, v7

    .line 149
    .line 150
    aget-byte v8, v10, v7

    .line 151
    .line 152
    xor-int v8, v8, v17

    .line 153
    .line 154
    int-to-byte v8, v8

    .line 155
    aput-byte v8, v10, v7

    .line 156
    .line 157
    aget-byte v8, v12, v7

    .line 158
    .line 159
    aget-byte v17, v11, v7

    .line 160
    .line 161
    xor-int v17, v8, v17

    .line 162
    .line 163
    and-int v17, v2, v17

    .line 164
    .line 165
    xor-int v8, v8, v17

    .line 166
    .line 167
    int-to-byte v8, v8

    .line 168
    aput-byte v8, v12, v7

    .line 169
    .line 170
    aget-byte v8, v11, v7

    .line 171
    .line 172
    xor-int v8, v8, v17

    .line 173
    .line 174
    int-to-byte v8, v8

    .line 175
    aput-byte v8, v11, v7

    .line 176
    .line 177
    add-int/lit8 v7, v7, 0x1

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_2
    move/from16 v2, v22

    .line 181
    .line 182
    :goto_5
    if-ge v2, v6, :cond_3

    .line 183
    .line 184
    aget-byte v7, v10, v2

    .line 185
    .line 186
    aget-byte v8, v9, v2

    .line 187
    .line 188
    mul-int/2addr v8, v5

    .line 189
    add-int/2addr v8, v7

    .line 190
    const/4 v7, 0x3

    .line 191
    invoke-static {v8, v7}, Llg7;->q(II)I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    int-to-byte v7, v8

    .line 196
    aput-byte v7, v10, v2

    .line 197
    .line 198
    add-int/lit8 v2, v2, 0x1

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_3
    move/from16 v2, v22

    .line 202
    .line 203
    :goto_6
    if-ge v2, v6, :cond_4

    .line 204
    .line 205
    aget-byte v7, v11, v2

    .line 206
    .line 207
    aget-byte v8, v12, v2

    .line 208
    .line 209
    mul-int/2addr v8, v5

    .line 210
    add-int/2addr v8, v7

    .line 211
    const/4 v7, 0x3

    .line 212
    invoke-static {v8, v7}, Llg7;->q(II)I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    int-to-byte v7, v8

    .line 217
    aput-byte v7, v11, v2

    .line 218
    .line 219
    add-int/lit8 v2, v2, 0x1

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_4
    move/from16 v2, v22

    .line 223
    .line 224
    const/16 v5, 0x2f9

    .line 225
    .line 226
    :goto_7
    if-ge v2, v5, :cond_5

    .line 227
    .line 228
    add-int/lit8 v7, v2, 0x1

    .line 229
    .line 230
    aget-byte v8, v10, v7

    .line 231
    .line 232
    aput-byte v8, v10, v2

    .line 233
    .line 234
    move v2, v7

    .line 235
    goto :goto_7

    .line 236
    :cond_5
    aput-byte v22, v10, v5

    .line 237
    .line 238
    add-int/lit8 v15, v15, 0x1

    .line 239
    .line 240
    move v2, v5

    .line 241
    move/from16 v5, v22

    .line 242
    .line 243
    move/from16 v7, v23

    .line 244
    .line 245
    const/4 v8, 0x3

    .line 246
    goto/16 :goto_3

    .line 247
    .line 248
    :cond_6
    move/from16 v22, v5

    .line 249
    .line 250
    move/from16 v23, v7

    .line 251
    .line 252
    move v5, v2

    .line 253
    aget-byte v2, v9, v22

    .line 254
    .line 255
    move/from16 v7, v22

    .line 256
    .line 257
    :goto_8
    if-ge v7, v5, :cond_7

    .line 258
    .line 259
    sub-int v9, v13, v7

    .line 260
    .line 261
    aget-byte v9, v12, v9

    .line 262
    .line 263
    mul-int/2addr v9, v2

    .line 264
    int-to-byte v9, v9

    .line 265
    aput-byte v9, v4, v7

    .line 266
    .line 267
    add-int/lit8 v7, v7, 0x1

    .line 268
    .line 269
    goto :goto_8

    .line 270
    :cond_7
    if-nez v14, :cond_1e

    .line 271
    .line 272
    new-array v2, v5, [B

    .line 273
    .line 274
    new-array v7, v5, [I

    .line 275
    .line 276
    move/from16 v9, v22

    .line 277
    .line 278
    :goto_9
    if-ge v9, v5, :cond_8

    .line 279
    .line 280
    invoke-static {v1}, Llg7;->r(Ljava/security/SecureRandom;)I

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    aput v5, v7, v9

    .line 285
    .line 286
    add-int/lit8 v9, v9, 0x1

    .line 287
    .line 288
    const/16 v5, 0x2f9

    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_8
    move/from16 v5, v22

    .line 292
    .line 293
    :goto_a
    const/16 v9, 0x11e

    .line 294
    .line 295
    if-ge v5, v9, :cond_9

    .line 296
    .line 297
    aget v9, v7, v5

    .line 298
    .line 299
    and-int/lit8 v9, v9, -0x2

    .line 300
    .line 301
    aput v9, v7, v5

    .line 302
    .line 303
    add-int/lit8 v5, v5, 0x1

    .line 304
    .line 305
    goto :goto_a

    .line 306
    :cond_9
    :goto_b
    const/16 v5, 0x2f9

    .line 307
    .line 308
    if-ge v9, v5, :cond_a

    .line 309
    .line 310
    aget v5, v7, v9

    .line 311
    .line 312
    and-int/lit8 v5, v5, -0x3

    .line 313
    .line 314
    or-int/lit8 v5, v5, 0x1

    .line 315
    .line 316
    aput v5, v7, v9

    .line 317
    .line 318
    add-int/lit8 v9, v9, 0x1

    .line 319
    .line 320
    goto :goto_b

    .line 321
    :cond_a
    move/from16 v5, v23

    .line 322
    .line 323
    :goto_c
    rsub-int v9, v5, 0x2f9

    .line 324
    .line 325
    if-ge v5, v9, :cond_b

    .line 326
    .line 327
    add-int/2addr v5, v5

    .line 328
    goto :goto_c

    .line 329
    :cond_b
    move v9, v5

    .line 330
    :goto_d
    if-lez v9, :cond_11

    .line 331
    .line 332
    move/from16 v10, v22

    .line 333
    .line 334
    :goto_e
    rsub-int v11, v9, 0x2f9

    .line 335
    .line 336
    if-ge v10, v11, :cond_d

    .line 337
    .line 338
    and-int v11, v10, v9

    .line 339
    .line 340
    if-nez v11, :cond_c

    .line 341
    .line 342
    add-int v11, v10, v9

    .line 343
    .line 344
    invoke-static {v10, v11, v7}, Llg7;->x(II[I)V

    .line 345
    .line 346
    .line 347
    :cond_c
    add-int/lit8 v10, v10, 0x1

    .line 348
    .line 349
    goto :goto_e

    .line 350
    :cond_d
    move v10, v5

    .line 351
    :goto_f
    if-le v10, v9, :cond_10

    .line 352
    .line 353
    move/from16 v11, v22

    .line 354
    .line 355
    :goto_10
    rsub-int v12, v10, 0x2f9

    .line 356
    .line 357
    if-ge v11, v12, :cond_f

    .line 358
    .line 359
    and-int v12, v11, v9

    .line 360
    .line 361
    if-nez v12, :cond_e

    .line 362
    .line 363
    add-int v12, v11, v9

    .line 364
    .line 365
    add-int v14, v11, v10

    .line 366
    .line 367
    invoke-static {v12, v14, v7}, Llg7;->x(II[I)V

    .line 368
    .line 369
    .line 370
    :cond_e
    add-int/lit8 v11, v11, 0x1

    .line 371
    .line 372
    goto :goto_10

    .line 373
    :cond_f
    ushr-int/lit8 v10, v10, 0x1

    .line 374
    .line 375
    goto :goto_f

    .line 376
    :cond_10
    ushr-int/lit8 v9, v9, 0x1

    .line 377
    .line 378
    goto :goto_d

    .line 379
    :cond_11
    move/from16 v5, v22

    .line 380
    .line 381
    const/16 v9, 0x2f9

    .line 382
    .line 383
    :goto_11
    if-ge v5, v9, :cond_12

    .line 384
    .line 385
    aget v10, v7, v5

    .line 386
    .line 387
    const/16 v18, 0x3

    .line 388
    .line 389
    and-int/lit8 v10, v10, 0x3

    .line 390
    .line 391
    add-int/lit8 v10, v10, -0x1

    .line 392
    .line 393
    int-to-byte v10, v10

    .line 394
    aput-byte v10, v2, v5

    .line 395
    .line 396
    add-int/lit8 v5, v5, 0x1

    .line 397
    .line 398
    goto :goto_11

    .line 399
    :cond_12
    new-array v5, v9, [S

    .line 400
    .line 401
    new-array v7, v6, [S

    .line 402
    .line 403
    new-array v9, v6, [S

    .line 404
    .line 405
    new-array v10, v6, [S

    .line 406
    .line 407
    new-array v11, v6, [S

    .line 408
    .line 409
    move/from16 v14, v23

    .line 410
    .line 411
    const/4 v12, 0x3

    .line 412
    :goto_12
    move-object/from16 v25, v7

    .line 413
    .line 414
    const/4 v15, 0x2

    .line 415
    rsub-int v7, v15, 0x11ef

    .line 416
    .line 417
    const/16 v15, 0x11ef

    .line 418
    .line 419
    if-ge v14, v7, :cond_13

    .line 420
    .line 421
    const/16 v18, 0x3

    .line 422
    .line 423
    mul-int v7, v18, v12

    .line 424
    .line 425
    invoke-static {v7, v15}, Llg7;->q(II)I

    .line 426
    .line 427
    .line 428
    move-result v12

    .line 429
    add-int/lit8 v14, v14, 0x1

    .line 430
    .line 431
    move-object/from16 v7, v25

    .line 432
    .line 433
    goto :goto_12

    .line 434
    :cond_13
    int-to-short v12, v12

    .line 435
    aput-short v12, v10, v22

    .line 436
    .line 437
    aput-short v23, v25, v22

    .line 438
    .line 439
    aput-short v16, v25, v13

    .line 440
    .line 441
    const/16 v12, 0x2f9

    .line 442
    .line 443
    aput-short v16, v25, v12

    .line 444
    .line 445
    move/from16 v14, v22

    .line 446
    .line 447
    :goto_13
    if-ge v14, v12, :cond_14

    .line 448
    .line 449
    sub-int v16, v13, v14

    .line 450
    .line 451
    aget-byte v15, v2, v14

    .line 452
    .line 453
    int-to-short v15, v15

    .line 454
    aput-short v15, v9, v16

    .line 455
    .line 456
    add-int/lit8 v14, v14, 0x1

    .line 457
    .line 458
    const/16 v15, 0x11ef

    .line 459
    .line 460
    goto :goto_13

    .line 461
    :cond_14
    aput-short v22, v9, v12

    .line 462
    .line 463
    move/from16 v14, v22

    .line 464
    .line 465
    move/from16 v15, v23

    .line 466
    .line 467
    :goto_14
    if-ge v14, v8, :cond_19

    .line 468
    .line 469
    move/from16 v16, v8

    .line 470
    .line 471
    move-object/from16 v27, v9

    .line 472
    .line 473
    move/from16 v9, v22

    .line 474
    .line 475
    move/from16 v8, v23

    .line 476
    .line 477
    invoke-static {v11, v9, v11, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    .line 479
    .line 480
    aput-short v9, v11, v9

    .line 481
    .line 482
    neg-int v8, v15

    .line 483
    ushr-int/lit8 v12, v8, 0x1f

    .line 484
    .line 485
    neg-int v12, v12

    .line 486
    aget-short v9, v27, v22

    .line 487
    .line 488
    move/from16 v28, v8

    .line 489
    .line 490
    int-to-long v8, v9

    .line 491
    and-long v8, v8, v20

    .line 492
    .line 493
    neg-long v8, v8

    .line 494
    ushr-long v8, v8, v17

    .line 495
    .line 496
    long-to-int v8, v8

    .line 497
    neg-int v8, v8

    .line 498
    and-int/2addr v8, v12

    .line 499
    xor-int v9, v15, v28

    .line 500
    .line 501
    and-int/2addr v9, v8

    .line 502
    xor-int/2addr v9, v15

    .line 503
    const/16 v23, 0x1

    .line 504
    .line 505
    add-int/lit8 v15, v9, 0x1

    .line 506
    .line 507
    const/4 v9, 0x0

    .line 508
    :goto_15
    if-ge v9, v6, :cond_15

    .line 509
    .line 510
    aget-short v12, v25, v9

    .line 511
    .line 512
    aget-short v28, v27, v9

    .line 513
    .line 514
    xor-int v28, v12, v28

    .line 515
    .line 516
    and-int v28, v8, v28

    .line 517
    .line 518
    xor-int v12, v12, v28

    .line 519
    .line 520
    int-to-short v12, v12

    .line 521
    aput-short v12, v25, v9

    .line 522
    .line 523
    aget-short v12, v27, v9

    .line 524
    .line 525
    xor-int v12, v12, v28

    .line 526
    .line 527
    int-to-short v12, v12

    .line 528
    aput-short v12, v27, v9

    .line 529
    .line 530
    aget-short v12, v11, v9

    .line 531
    .line 532
    aget-short v28, v10, v9

    .line 533
    .line 534
    xor-int v28, v12, v28

    .line 535
    .line 536
    and-int v28, v8, v28

    .line 537
    .line 538
    xor-int v12, v12, v28

    .line 539
    .line 540
    int-to-short v12, v12

    .line 541
    aput-short v12, v11, v9

    .line 542
    .line 543
    aget-short v12, v10, v9

    .line 544
    .line 545
    xor-int v12, v12, v28

    .line 546
    .line 547
    int-to-short v12, v12

    .line 548
    aput-short v12, v10, v9

    .line 549
    .line 550
    add-int/lit8 v9, v9, 0x1

    .line 551
    .line 552
    goto :goto_15

    .line 553
    :cond_15
    const/16 v22, 0x0

    .line 554
    .line 555
    aget-short v8, v25, v22

    .line 556
    .line 557
    aget-short v9, v27, v22

    .line 558
    .line 559
    const/4 v12, 0x0

    .line 560
    :goto_16
    if-ge v12, v6, :cond_16

    .line 561
    .line 562
    aget-short v28, v27, v12

    .line 563
    .line 564
    mul-int v28, v28, v8

    .line 565
    .line 566
    aget-short v29, v25, v12

    .line 567
    .line 568
    mul-int v29, v29, v9

    .line 569
    .line 570
    move/from16 v30, v8

    .line 571
    .line 572
    sub-int v8, v28, v29

    .line 573
    .line 574
    move/from16 v28, v9

    .line 575
    .line 576
    const/16 v9, 0x11ef

    .line 577
    .line 578
    invoke-static {v8, v9}, Llg7;->q(II)I

    .line 579
    .line 580
    .line 581
    move-result v8

    .line 582
    int-to-short v8, v8

    .line 583
    aput-short v8, v27, v12

    .line 584
    .line 585
    add-int/lit8 v12, v12, 0x1

    .line 586
    .line 587
    move/from16 v9, v28

    .line 588
    .line 589
    move/from16 v8, v30

    .line 590
    .line 591
    goto :goto_16

    .line 592
    :cond_16
    move/from16 v30, v8

    .line 593
    .line 594
    move/from16 v28, v9

    .line 595
    .line 596
    const/4 v8, 0x0

    .line 597
    :goto_17
    if-ge v8, v6, :cond_17

    .line 598
    .line 599
    aget-short v9, v10, v8

    .line 600
    .line 601
    mul-int v9, v9, v30

    .line 602
    .line 603
    aget-short v12, v11, v8

    .line 604
    .line 605
    mul-int v12, v12, v28

    .line 606
    .line 607
    sub-int/2addr v9, v12

    .line 608
    const/16 v12, 0x11ef

    .line 609
    .line 610
    invoke-static {v9, v12}, Llg7;->q(II)I

    .line 611
    .line 612
    .line 613
    move-result v9

    .line 614
    int-to-short v9, v9

    .line 615
    aput-short v9, v10, v8

    .line 616
    .line 617
    add-int/lit8 v8, v8, 0x1

    .line 618
    .line 619
    goto :goto_17

    .line 620
    :cond_17
    const/4 v8, 0x0

    .line 621
    const/16 v9, 0x2f9

    .line 622
    .line 623
    :goto_18
    if-ge v8, v9, :cond_18

    .line 624
    .line 625
    add-int/lit8 v12, v8, 0x1

    .line 626
    .line 627
    aget-short v24, v27, v12

    .line 628
    .line 629
    aput-short v24, v27, v8

    .line 630
    .line 631
    move v8, v12

    .line 632
    goto :goto_18

    .line 633
    :cond_18
    const/16 v22, 0x0

    .line 634
    .line 635
    aput-short v22, v27, v9

    .line 636
    .line 637
    add-int/lit8 v14, v14, 0x1

    .line 638
    .line 639
    move/from16 v8, v16

    .line 640
    .line 641
    move-object/from16 v9, v27

    .line 642
    .line 643
    const/16 v12, 0x2f9

    .line 644
    .line 645
    const/16 v23, 0x1

    .line 646
    .line 647
    goto/16 :goto_14

    .line 648
    .line 649
    :cond_19
    aget-short v6, v25, v22

    .line 650
    .line 651
    move v9, v6

    .line 652
    const/4 v8, 0x1

    .line 653
    :goto_19
    if-ge v8, v7, :cond_1a

    .line 654
    .line 655
    mul-int/2addr v9, v6

    .line 656
    const/16 v12, 0x11ef

    .line 657
    .line 658
    invoke-static {v9, v12}, Llg7;->q(II)I

    .line 659
    .line 660
    .line 661
    move-result v9

    .line 662
    add-int/lit8 v8, v8, 0x1

    .line 663
    .line 664
    goto :goto_19

    .line 665
    :cond_1a
    const/16 v12, 0x11ef

    .line 666
    .line 667
    const/4 v6, 0x0

    .line 668
    const/16 v7, 0x2f9

    .line 669
    .line 670
    :goto_1a
    if-ge v6, v7, :cond_1b

    .line 671
    .line 672
    sub-int v8, v13, v6

    .line 673
    .line 674
    aget-short v8, v11, v8

    .line 675
    .line 676
    mul-int/2addr v8, v9

    .line 677
    invoke-static {v8, v12}, Llg7;->q(II)I

    .line 678
    .line 679
    .line 680
    move-result v8

    .line 681
    int-to-short v8, v8

    .line 682
    aput-short v8, v5, v6

    .line 683
    .line 684
    add-int/lit8 v6, v6, 0x1

    .line 685
    .line 686
    goto :goto_1a

    .line 687
    :cond_1b
    new-array v6, v7, [S

    .line 688
    .line 689
    invoke-static {v7, v12, v3, v6, v5}, Llg7;->A(II[B[S[S)V

    .line 690
    .line 691
    .line 692
    sget-object v3, Lov6;->k:Lov6;

    .line 693
    .line 694
    iget v5, v3, Lov6;->e:I

    .line 695
    .line 696
    new-array v5, v5, [B

    .line 697
    .line 698
    new-array v8, v7, [S

    .line 699
    .line 700
    new-array v9, v7, [S

    .line 701
    .line 702
    const/4 v10, 0x0

    .line 703
    :goto_1b
    if-ge v10, v7, :cond_1c

    .line 704
    .line 705
    aget-short v7, v6, v10

    .line 706
    .line 707
    const/4 v11, 0x1

    .line 708
    rsub-int v12, v11, 0x11ef

    .line 709
    .line 710
    const/16 v19, 0x2

    .line 711
    .line 712
    div-int/lit8 v12, v12, 0x2

    .line 713
    .line 714
    add-int/2addr v12, v7

    .line 715
    int-to-short v7, v12

    .line 716
    aput-short v7, v8, v10

    .line 717
    .line 718
    add-int/lit8 v10, v10, 0x1

    .line 719
    .line 720
    const/16 v7, 0x2f9

    .line 721
    .line 722
    goto :goto_1b

    .line 723
    :cond_1c
    const/4 v6, 0x0

    .line 724
    :goto_1c
    if-ge v6, v7, :cond_1d

    .line 725
    .line 726
    const/16 v12, 0x11ef

    .line 727
    .line 728
    int-to-short v10, v12

    .line 729
    aput-short v10, v9, v6

    .line 730
    .line 731
    add-int/lit8 v6, v6, 0x1

    .line 732
    .line 733
    goto :goto_1c

    .line 734
    :cond_1d
    const/4 v6, 0x0

    .line 735
    invoke-static {v7, v6, v5, v8, v9}, Llg7;->h(II[B[S[S)V

    .line 736
    .line 737
    .line 738
    new-instance v6, Lqv6;

    .line 739
    .line 740
    invoke-direct {v6, v3, v5}, Lqv6;-><init>(Lov6;[B)V

    .line 741
    .line 742
    .line 743
    const/16 v18, 0x3

    .line 744
    .line 745
    add-int/lit8 v8, v7, 0x3

    .line 746
    .line 747
    const/4 v9, 0x4

    .line 748
    div-int/2addr v8, v9

    .line 749
    new-array v10, v8, [B

    .line 750
    .line 751
    invoke-static {v7, v10, v2}, Llg7;->o(I[B[B)V

    .line 752
    .line 753
    .line 754
    new-array v2, v8, [B

    .line 755
    .line 756
    invoke-static {v7, v2, v4}, Llg7;->o(I[B[B)V

    .line 757
    .line 758
    .line 759
    new-array v4, v8, [B

    .line 760
    .line 761
    invoke-virtual {v1, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 762
    .line 763
    .line 764
    const/4 v8, 0x1

    .line 765
    new-array v1, v8, [B

    .line 766
    .line 767
    const/4 v7, 0x0

    .line 768
    aput-byte v9, v1, v7

    .line 769
    .line 770
    invoke-static {v1, v5}, Llg7;->p([B[B)[B

    .line 771
    .line 772
    .line 773
    move-result-object v1

    .line 774
    new-instance v24, Lpv6;

    .line 775
    .line 776
    const/16 v8, 0x20

    .line 777
    .line 778
    invoke-static {v1, v7, v8}, Lms8;->t([BII)[B

    .line 779
    .line 780
    .line 781
    move-result-object v30

    .line 782
    move-object/from16 v27, v2

    .line 783
    .line 784
    move-object/from16 v25, v3

    .line 785
    .line 786
    move-object/from16 v29, v4

    .line 787
    .line 788
    move-object/from16 v28, v5

    .line 789
    .line 790
    move-object/from16 v26, v10

    .line 791
    .line 792
    invoke-direct/range {v24 .. v30}, Lpv6;-><init>(Lov6;[B[B[B[B[B)V

    .line 793
    .line 794
    .line 795
    move-object/from16 v1, v24

    .line 796
    .line 797
    new-instance v2, Lty3;

    .line 798
    .line 799
    invoke-direct {v2, v1}, Lty3;-><init>(Ljava/lang/Object;)V

    .line 800
    .line 801
    .line 802
    iput-object v2, v0, Lcom/jcraft/jsch/bc/SNTRUP761;->a:Lty3;

    .line 803
    .line 804
    iput-object v6, v0, Lcom/jcraft/jsch/bc/SNTRUP761;->b:Lqv6;

    .line 805
    .line 806
    return-void

    .line 807
    :cond_1e
    move v2, v5

    .line 808
    goto/16 :goto_0
.end method
