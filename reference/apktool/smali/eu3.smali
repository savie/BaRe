.class public final Leu3;
.super Ljava/lang/Object;

# interfaces
.implements Ld;


# instance fields
.field public a:Lj;

.field public b:Lro;

.field public c:Lk40;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:[B

.field public h:[B

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:[B

.field public n:[B

.field public o:[B

.field public p:[B

.field public q:[B

.field public r:I

.field public s:I

.field public t:J

.field public u:[B

.field public v:I

.field public w:J

.field public x:J


# virtual methods
.method public final a(ZLz61;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Leu3;->b:Lro;

    .line 8
    .line 9
    iget-object v4, v0, Leu3;->a:Lj;

    .line 10
    .line 11
    iput-boolean v1, v0, Leu3;->d:Z

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    iput-object v5, v0, Leu3;->m:[B

    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    iput-boolean v6, v0, Leu3;->e:Z

    .line 18
    .line 19
    instance-of v7, v2, Le;

    .line 20
    .line 21
    const/16 v8, 0x20

    .line 22
    .line 23
    const/16 v9, 0x8

    .line 24
    .line 25
    const/16 v10, 0x10

    .line 26
    .line 27
    if-eqz v7, :cond_1

    .line 28
    .line 29
    check-cast v2, Le;

    .line 30
    .line 31
    iget-object v7, v2, Le;->b:[B

    .line 32
    .line 33
    invoke-static {v7}, Lms8;->k([B)[B

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    iget-object v11, v2, Le;->a:[B

    .line 38
    .line 39
    invoke-static {v11}, Lms8;->k([B)[B

    .line 40
    .line 41
    .line 42
    move-result-object v11

    .line 43
    iput-object v11, v0, Leu3;->i:[B

    .line 44
    .line 45
    iget v11, v2, Le;->d:I

    .line 46
    .line 47
    if-lt v11, v8, :cond_0

    .line 48
    .line 49
    const/16 v12, 0x80

    .line 50
    .line 51
    if-gt v11, v12, :cond_0

    .line 52
    .line 53
    rem-int/lit8 v12, v11, 0x8

    .line 54
    .line 55
    if-nez v12, :cond_0

    .line 56
    .line 57
    div-int/2addr v11, v9

    .line 58
    iput v11, v0, Leu3;->f:I

    .line 59
    .line 60
    iget-object v2, v2, Le;->c:Loo4;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string v0, "Invalid value for MAC size: "

    .line 64
    .line 65
    invoke-static {v11, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    instance-of v7, v2, Lvw5;

    .line 74
    .line 75
    if-eqz v7, :cond_13

    .line 76
    .line 77
    check-cast v2, Lvw5;

    .line 78
    .line 79
    iget-object v7, v2, Lvw5;->a:[B

    .line 80
    .line 81
    iput-object v5, v0, Leu3;->i:[B

    .line 82
    .line 83
    iput v10, v0, Leu3;->f:I

    .line 84
    .line 85
    iget-object v2, v2, Lvw5;->b:Lz61;

    .line 86
    .line 87
    check-cast v2, Loo4;

    .line 88
    .line 89
    :goto_0
    if-eqz v1, :cond_2

    .line 90
    .line 91
    move v11, v10

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    iget v11, v0, Leu3;->f:I

    .line 94
    .line 95
    add-int/2addr v11, v10

    .line 96
    :goto_1
    new-array v11, v11, [B

    .line 97
    .line 98
    iput-object v11, v0, Leu3;->l:[B

    .line 99
    .line 100
    if-eqz v7, :cond_12

    .line 101
    .line 102
    array-length v11, v7

    .line 103
    if-lt v11, v6, :cond_12

    .line 104
    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    iget-object v1, v0, Leu3;->h:[B

    .line 108
    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_5

    .line 116
    .line 117
    const-string v1, "cannot reuse nonce for GCM encryption"

    .line 118
    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    iget-object v11, v0, Leu3;->g:[B

    .line 122
    .line 123
    if-eqz v11, :cond_5

    .line 124
    .line 125
    iget-object v12, v2, Loo4;->a:[B

    .line 126
    .line 127
    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-nez v11, :cond_3

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    invoke-static {v1}, Lc6;->f(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_4
    invoke-static {v1}, Lc6;->f(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_5
    :goto_2
    iput-object v7, v0, Leu3;->h:[B

    .line 143
    .line 144
    if-eqz v2, :cond_6

    .line 145
    .line 146
    iget-object v1, v2, Loo4;->a:[B

    .line 147
    .line 148
    iput-object v1, v0, Leu3;->g:[B

    .line 149
    .line 150
    :cond_6
    const/4 v1, 0x0

    .line 151
    if-eqz v2, :cond_d

    .line 152
    .line 153
    invoke-virtual {v4, v6, v2}, Lj;->a(ZLz61;)V

    .line 154
    .line 155
    .line 156
    new-array v2, v10, [B

    .line 157
    .line 158
    iput-object v2, v0, Leu3;->j:[B

    .line 159
    .line 160
    invoke-virtual {v4, v2, v2, v1, v1}, Lj;->j([B[BII)I

    .line 161
    .line 162
    .line 163
    iget-object v2, v0, Leu3;->j:[B

    .line 164
    .line 165
    iget-object v4, v3, Lro;->c:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v4, [[J

    .line 168
    .line 169
    const/4 v7, 0x2

    .line 170
    const/16 v11, 0x100

    .line 171
    .line 172
    if-nez v4, :cond_7

    .line 173
    .line 174
    new-array v4, v7, [I

    .line 175
    .line 176
    aput v7, v4, v6

    .line 177
    .line 178
    aput v11, v4, v1

    .line 179
    .line 180
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 181
    .line 182
    invoke-static {v12, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    check-cast v4, [[J

    .line 187
    .line 188
    iput-object v4, v3, Lro;->c:Ljava/lang/Object;

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_7
    iget-object v4, v3, Lro;->b:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v4, [B

    .line 194
    .line 195
    move v12, v1

    .line 196
    move v13, v12

    .line 197
    :goto_3
    if-ge v12, v10, :cond_8

    .line 198
    .line 199
    aget-byte v14, v4, v12

    .line 200
    .line 201
    aget-byte v15, v2, v12

    .line 202
    .line 203
    xor-int/2addr v14, v15

    .line 204
    or-int/2addr v13, v14

    .line 205
    add-int/lit8 v12, v12, 0x1

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_8
    ushr-int/lit8 v4, v13, 0x1

    .line 209
    .line 210
    and-int/lit8 v12, v13, 0x1

    .line 211
    .line 212
    or-int/2addr v4, v12

    .line 213
    sub-int/2addr v4, v6

    .line 214
    shr-int/lit8 v4, v4, 0x1f

    .line 215
    .line 216
    int-to-byte v4, v4

    .line 217
    if-eqz v4, :cond_9

    .line 218
    .line 219
    move/from16 v16, v6

    .line 220
    .line 221
    goto/16 :goto_8

    .line 222
    .line 223
    :cond_9
    :goto_4
    new-array v4, v10, [B

    .line 224
    .line 225
    iput-object v4, v3, Lro;->b:Ljava/lang/Object;

    .line 226
    .line 227
    move v12, v1

    .line 228
    :goto_5
    if-ge v12, v10, :cond_a

    .line 229
    .line 230
    aget-byte v13, v2, v12

    .line 231
    .line 232
    aput-byte v13, v4, v12

    .line 233
    .line 234
    add-int/lit8 v12, v12, 0x1

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_a
    iget-object v2, v3, Lro;->b:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v2, [B

    .line 240
    .line 241
    iget-object v4, v3, Lro;->c:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v4, [[J

    .line 244
    .line 245
    aget-object v4, v4, v6

    .line 246
    .line 247
    move v12, v1

    .line 248
    move v13, v12

    .line 249
    :goto_6
    if-ge v12, v7, :cond_b

    .line 250
    .line 251
    invoke-static {v2, v13}, Lxx3;->a([BI)I

    .line 252
    .line 253
    .line 254
    move-result v14

    .line 255
    add-int/lit8 v15, v13, 0x4

    .line 256
    .line 257
    invoke-static {v2, v15}, Lxx3;->a([BI)I

    .line 258
    .line 259
    .line 260
    move-result v15

    .line 261
    move/from16 v16, v6

    .line 262
    .line 263
    move/from16 p1, v7

    .line 264
    .line 265
    int-to-long v6, v14

    .line 266
    const-wide v17, 0xffffffffL

    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    and-long v6, v6, v17

    .line 272
    .line 273
    shl-long/2addr v6, v8

    .line 274
    int-to-long v14, v15

    .line 275
    and-long v14, v14, v17

    .line 276
    .line 277
    or-long/2addr v6, v14

    .line 278
    aput-wide v6, v4, v12

    .line 279
    .line 280
    add-int/2addr v13, v9

    .line 281
    add-int/lit8 v12, v12, 0x1

    .line 282
    .line 283
    move/from16 v7, p1

    .line 284
    .line 285
    move/from16 v6, v16

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_b
    move/from16 v16, v6

    .line 289
    .line 290
    move/from16 p1, v7

    .line 291
    .line 292
    iget-object v2, v3, Lro;->c:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v2, [[J

    .line 295
    .line 296
    aget-object v2, v2, v16

    .line 297
    .line 298
    aget-wide v6, v2, v1

    .line 299
    .line 300
    aget-wide v12, v2, v16

    .line 301
    .line 302
    const/16 v4, 0x39

    .line 303
    .line 304
    shl-long v14, v12, v4

    .line 305
    .line 306
    const/4 v8, 0x7

    .line 307
    ushr-long v17, v6, v8

    .line 308
    .line 309
    xor-long v17, v17, v14

    .line 310
    .line 311
    ushr-long v19, v14, v16

    .line 312
    .line 313
    xor-long v17, v17, v19

    .line 314
    .line 315
    ushr-long v19, v14, p1

    .line 316
    .line 317
    xor-long v17, v17, v19

    .line 318
    .line 319
    ushr-long/2addr v14, v8

    .line 320
    xor-long v14, v17, v14

    .line 321
    .line 322
    aput-wide v14, v2, v1

    .line 323
    .line 324
    ushr-long/2addr v12, v8

    .line 325
    shl-long/2addr v6, v4

    .line 326
    or-long/2addr v6, v12

    .line 327
    aput-wide v6, v2, v16

    .line 328
    .line 329
    move/from16 v7, p1

    .line 330
    .line 331
    :goto_7
    if-ge v7, v11, :cond_c

    .line 332
    .line 333
    iget-object v2, v3, Lro;->c:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v2, [[J

    .line 336
    .line 337
    shr-int/lit8 v4, v7, 0x1

    .line 338
    .line 339
    aget-object v4, v2, v4

    .line 340
    .line 341
    aget-object v6, v2, v7

    .line 342
    .line 343
    aget-wide v12, v4, v1

    .line 344
    .line 345
    aget-wide v14, v4, v16

    .line 346
    .line 347
    const/16 v4, 0x3f

    .line 348
    .line 349
    move-wide/from16 v17, v12

    .line 350
    .line 351
    shr-long v11, v17, v4

    .line 352
    .line 353
    const-wide/high16 v19, -0x1f00000000000000L    # -1.757388200993436E159

    .line 354
    .line 355
    and-long v19, v11, v19

    .line 356
    .line 357
    xor-long v17, v17, v19

    .line 358
    .line 359
    shl-long v17, v17, v16

    .line 360
    .line 361
    ushr-long v19, v14, v4

    .line 362
    .line 363
    or-long v17, v17, v19

    .line 364
    .line 365
    aput-wide v17, v6, v1

    .line 366
    .line 367
    shl-long v13, v14, v16

    .line 368
    .line 369
    neg-long v11, v11

    .line 370
    or-long/2addr v11, v13

    .line 371
    aput-wide v11, v6, v16

    .line 372
    .line 373
    aget-object v4, v2, v16

    .line 374
    .line 375
    add-int/lit8 v6, v7, 0x1

    .line 376
    .line 377
    aget-object v2, v2, v6

    .line 378
    .line 379
    aget-wide v13, v4, v1

    .line 380
    .line 381
    xor-long v13, v17, v13

    .line 382
    .line 383
    aput-wide v13, v2, v1

    .line 384
    .line 385
    aget-wide v13, v4, v16

    .line 386
    .line 387
    xor-long/2addr v11, v13

    .line 388
    aput-wide v11, v2, v16

    .line 389
    .line 390
    add-int/lit8 v7, v7, 0x2

    .line 391
    .line 392
    const/16 v11, 0x100

    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_c
    :goto_8
    iput-object v5, v0, Leu3;->c:Lk40;

    .line 396
    .line 397
    goto :goto_9

    .line 398
    :cond_d
    move/from16 v16, v6

    .line 399
    .line 400
    iget-object v2, v0, Leu3;->j:[B

    .line 401
    .line 402
    if-eqz v2, :cond_11

    .line 403
    .line 404
    :goto_9
    new-array v2, v10, [B

    .line 405
    .line 406
    iput-object v2, v0, Leu3;->k:[B

    .line 407
    .line 408
    iget-object v4, v0, Leu3;->h:[B

    .line 409
    .line 410
    array-length v5, v4

    .line 411
    const/16 v6, 0xc

    .line 412
    .line 413
    if-ne v5, v6, :cond_e

    .line 414
    .line 415
    array-length v3, v4

    .line 416
    invoke-static {v4, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    .line 418
    .line 419
    iget-object v2, v0, Leu3;->k:[B

    .line 420
    .line 421
    const/16 v3, 0xf

    .line 422
    .line 423
    aput-byte v16, v2, v3

    .line 424
    .line 425
    goto :goto_b

    .line 426
    :cond_e
    array-length v5, v4

    .line 427
    move v6, v1

    .line 428
    :goto_a
    if-ge v6, v5, :cond_f

    .line 429
    .line 430
    sub-int v7, v5, v6

    .line 431
    .line 432
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    .line 433
    .line 434
    .line 435
    move-result v7

    .line 436
    invoke-virtual {v0, v2, v4, v6, v7}, Leu3;->i([B[BII)V

    .line 437
    .line 438
    .line 439
    add-int/lit8 v6, v6, 0x10

    .line 440
    .line 441
    goto :goto_a

    .line 442
    :cond_f
    new-array v2, v10, [B

    .line 443
    .line 444
    iget-object v4, v0, Leu3;->h:[B

    .line 445
    .line 446
    array-length v4, v4

    .line 447
    int-to-long v4, v4

    .line 448
    const-wide/16 v6, 0x8

    .line 449
    .line 450
    mul-long/2addr v4, v6

    .line 451
    invoke-static {v9, v4, v5, v2}, Lxx3;->u(IJ[B)V

    .line 452
    .line 453
    .line 454
    iget-object v4, v0, Leu3;->k:[B

    .line 455
    .line 456
    invoke-static {v4, v2}, Lly8;->S([B[B)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v3, v4}, Lro;->p([B)V

    .line 460
    .line 461
    .line 462
    :goto_b
    new-array v2, v10, [B

    .line 463
    .line 464
    iput-object v2, v0, Leu3;->n:[B

    .line 465
    .line 466
    new-array v2, v10, [B

    .line 467
    .line 468
    iput-object v2, v0, Leu3;->o:[B

    .line 469
    .line 470
    new-array v2, v10, [B

    .line 471
    .line 472
    iput-object v2, v0, Leu3;->p:[B

    .line 473
    .line 474
    new-array v2, v10, [B

    .line 475
    .line 476
    iput-object v2, v0, Leu3;->u:[B

    .line 477
    .line 478
    iput v1, v0, Leu3;->v:I

    .line 479
    .line 480
    const-wide/16 v2, 0x0

    .line 481
    .line 482
    iput-wide v2, v0, Leu3;->w:J

    .line 483
    .line 484
    iput-wide v2, v0, Leu3;->x:J

    .line 485
    .line 486
    iget-object v4, v0, Leu3;->k:[B

    .line 487
    .line 488
    invoke-static {v4}, Lms8;->k([B)[B

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    iput-object v4, v0, Leu3;->q:[B

    .line 493
    .line 494
    const/4 v4, -0x2

    .line 495
    iput v4, v0, Leu3;->r:I

    .line 496
    .line 497
    iput v1, v0, Leu3;->s:I

    .line 498
    .line 499
    iput-wide v2, v0, Leu3;->t:J

    .line 500
    .line 501
    iget-object v1, v0, Leu3;->i:[B

    .line 502
    .line 503
    if-eqz v1, :cond_10

    .line 504
    .line 505
    array-length v2, v1

    .line 506
    invoke-virtual {v0, v1, v2}, Leu3;->d([BI)V

    .line 507
    .line 508
    .line 509
    :cond_10
    return-void

    .line 510
    :cond_11
    const-string v0, "Key must be specified in initial init"

    .line 511
    .line 512
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    :cond_12
    const-string v0, "IV must be at least 1 byte"

    .line 517
    .line 518
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    :cond_13
    const-string v0, "invalid parameters passed to GCM"

    .line 523
    .line 524
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    return-void
.end method

.method public final b(I[B[B)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Leu3;->f()V

    .line 2
    .line 3
    .line 4
    array-length v0, p2

    .line 5
    if-lt v0, p1, :cond_9

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-ne p2, p3, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Leu3;->c(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez p1, :cond_0

    .line 15
    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    if-lez p1, :cond_0

    .line 21
    .line 22
    new-array p2, p1, [B

    .line 23
    .line 24
    invoke-static {p3, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v1, p0, Leu3;->d:Z

    .line 28
    .line 29
    const/16 v2, 0x10

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    iget v1, p0, Leu3;->s:I

    .line 34
    .line 35
    if-lez v1, :cond_2

    .line 36
    .line 37
    rsub-int/lit8 v3, v1, 0x10

    .line 38
    .line 39
    iget-object v4, p0, Leu3;->l:[B

    .line 40
    .line 41
    if-ge p1, v3, :cond_1

    .line 42
    .line 43
    invoke-static {p2, v0, v4, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget p2, p0, Leu3;->s:I

    .line 47
    .line 48
    add-int/2addr p2, p1

    .line 49
    iput p2, p0, Leu3;->s:I

    .line 50
    .line 51
    return v0

    .line 52
    :cond_1
    invoke-static {p2, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Leu3;->l:[B

    .line 56
    .line 57
    invoke-virtual {p0, v1, p3, v0, v0}, Leu3;->h([B[BII)V

    .line 58
    .line 59
    .line 60
    sub-int/2addr p1, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v2, v0

    .line 63
    move v3, v2

    .line 64
    :goto_1
    add-int/2addr p1, v3

    .line 65
    add-int/lit8 v1, p1, -0x10

    .line 66
    .line 67
    :goto_2
    if-gt v3, v1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0, p2, p3, v3, v2}, Leu3;->h([B[BII)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x10

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x10

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    sub-int/2addr p1, v3

    .line 78
    iput p1, p0, Leu3;->s:I

    .line 79
    .line 80
    iget-object p0, p0, Leu3;->l:[B

    .line 81
    .line 82
    invoke-static {p2, v3, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    .line 84
    .line 85
    return v2

    .line 86
    :cond_4
    iget-object v1, p0, Leu3;->l:[B

    .line 87
    .line 88
    array-length v3, v1

    .line 89
    iget v4, p0, Leu3;->s:I

    .line 90
    .line 91
    sub-int/2addr v3, v4

    .line 92
    if-ge p1, v3, :cond_5

    .line 93
    .line 94
    invoke-static {p2, v0, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    if-lt v4, v2, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0, v1, p3, v0, v0}, Leu3;->g([B[BII)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Leu3;->l:[B

    .line 104
    .line 105
    iget v4, p0, Leu3;->s:I

    .line 106
    .line 107
    sub-int/2addr v4, v2

    .line 108
    iput v4, p0, Leu3;->s:I

    .line 109
    .line 110
    invoke-static {v1, v2, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    .line 112
    .line 113
    add-int/2addr v3, v2

    .line 114
    if-ge p1, v3, :cond_6

    .line 115
    .line 116
    iget-object p3, p0, Leu3;->l:[B

    .line 117
    .line 118
    iget v1, p0, Leu3;->s:I

    .line 119
    .line 120
    invoke-static {p2, v0, p3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    .line 122
    .line 123
    iget p2, p0, Leu3;->s:I

    .line 124
    .line 125
    add-int/2addr p2, p1

    .line 126
    iput p2, p0, Leu3;->s:I

    .line 127
    .line 128
    return v2

    .line 129
    :cond_6
    move v1, v2

    .line 130
    goto :goto_3

    .line 131
    :cond_7
    move v1, v0

    .line 132
    :goto_3
    iget-object v3, p0, Leu3;->l:[B

    .line 133
    .line 134
    array-length v4, v3

    .line 135
    sub-int/2addr p1, v4

    .line 136
    iget v4, p0, Leu3;->s:I

    .line 137
    .line 138
    rsub-int/lit8 v5, v4, 0x10

    .line 139
    .line 140
    invoke-static {p2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    .line 142
    .line 143
    iget-object v3, p0, Leu3;->l:[B

    .line 144
    .line 145
    invoke-virtual {p0, v3, p3, v0, v1}, Leu3;->g([B[BII)V

    .line 146
    .line 147
    .line 148
    add-int/2addr v1, v2

    .line 149
    :goto_4
    if-gt v5, p1, :cond_8

    .line 150
    .line 151
    invoke-virtual {p0, p2, p3, v5, v1}, Leu3;->g([B[BII)V

    .line 152
    .line 153
    .line 154
    add-int/lit8 v5, v5, 0x10

    .line 155
    .line 156
    add-int/lit8 v1, v1, 0x10

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_8
    iget-object p3, p0, Leu3;->l:[B

    .line 160
    .line 161
    array-length v2, p3

    .line 162
    add-int/2addr v2, p1

    .line 163
    sub-int/2addr v2, v5

    .line 164
    iput v2, p0, Leu3;->s:I

    .line 165
    .line 166
    invoke-static {p2, v5, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    .line 168
    .line 169
    return v1

    .line 170
    :cond_9
    new-instance p0, Lua2;

    .line 171
    .line 172
    const-string p1, "Input buffer too short"

    .line 173
    .line 174
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0
.end method

.method public final c(I)I
    .locals 1

    .line 1
    iget v0, p0, Leu3;->s:I

    .line 2
    .line 3
    add-int/2addr p1, v0

    .line 4
    iget-boolean v0, p0, Leu3;->d:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget p0, p0, Leu3;->f:I

    .line 9
    .line 10
    if-ge p1, p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    sub-int/2addr p1, p0

    .line 15
    :cond_1
    rem-int/lit8 p0, p1, 0x10

    .line 16
    .line 17
    sub-int/2addr p1, p0

    .line 18
    return p1
.end method

.method public final d([BI)V
    .locals 8

    .line 1
    iget-object v0, p0, Leu3;->b:Lro;

    .line 2
    .line 3
    invoke-virtual {p0}, Leu3;->f()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Leu3;->v:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-wide/16 v3, 0x10

    .line 10
    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    rsub-int/lit8 v5, v1, 0x10

    .line 14
    .line 15
    iget-object v6, p0, Leu3;->u:[B

    .line 16
    .line 17
    if-ge p2, v5, :cond_0

    .line 18
    .line 19
    invoke-static {p1, v2, v6, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Leu3;->v:I

    .line 23
    .line 24
    add-int/2addr p1, p2

    .line 25
    iput p1, p0, Leu3;->v:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {p1, v2, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Leu3;->o:[B

    .line 32
    .line 33
    iget-object v6, p0, Leu3;->u:[B

    .line 34
    .line 35
    invoke-static {v1, v6}, Lly8;->S([B[B)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lro;->p([B)V

    .line 39
    .line 40
    .line 41
    iget-wide v6, p0, Leu3;->w:J

    .line 42
    .line 43
    add-long/2addr v6, v3

    .line 44
    iput-wide v6, p0, Leu3;->w:J

    .line 45
    .line 46
    sub-int/2addr p2, v5

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v5, v2

    .line 49
    :goto_0
    add-int/2addr p2, v5

    .line 50
    add-int/lit8 v1, p2, -0x10

    .line 51
    .line 52
    :goto_1
    if-gt v5, v1, :cond_2

    .line 53
    .line 54
    iget-object v6, p0, Leu3;->o:[B

    .line 55
    .line 56
    invoke-static {v5, v6, p1}, Lly8;->R(I[B[B)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v6}, Lro;->p([B)V

    .line 60
    .line 61
    .line 62
    iget-wide v6, p0, Leu3;->w:J

    .line 63
    .line 64
    add-long/2addr v6, v3

    .line 65
    iput-wide v6, p0, Leu3;->w:J

    .line 66
    .line 67
    add-int/lit8 v5, v5, 0x10

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    sub-int/2addr p2, v5

    .line 71
    iput p2, p0, Leu3;->v:I

    .line 72
    .line 73
    iget-object p0, p0, Leu3;->u:[B

    .line 74
    .line 75
    invoke-static {p1, v5, p0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final doFinal([BI)I
    .locals 37

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
    iget-object v3, v0, Leu3;->a:Lj;

    .line 8
    .line 9
    invoke-virtual {v0}, Leu3;->f()V

    .line 10
    .line 11
    .line 12
    iget-wide v4, v0, Leu3;->t:J

    .line 13
    .line 14
    const-wide/16 v6, 0x0

    .line 15
    .line 16
    cmp-long v4, v4, v6

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Leu3;->k()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget v4, v0, Leu3;->s:I

    .line 24
    .line 25
    iget-boolean v5, v0, Leu3;->d:Z

    .line 26
    .line 27
    iget v8, v0, Leu3;->f:I

    .line 28
    .line 29
    const-string v9, "Output buffer too short"

    .line 30
    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    array-length v5, v1

    .line 34
    sub-int/2addr v5, v2

    .line 35
    add-int/2addr v8, v4

    .line 36
    if-lt v5, v8, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ldv5;

    .line 40
    .line 41
    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_2
    if-lt v4, v8, :cond_19

    .line 46
    .line 47
    sub-int/2addr v4, v8

    .line 48
    array-length v5, v1

    .line 49
    sub-int/2addr v5, v2

    .line 50
    if-lt v5, v4, :cond_18

    .line 51
    .line 52
    :goto_0
    const/16 v5, 0x10

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    if-lez v4, :cond_6

    .line 56
    .line 57
    iget-object v9, v0, Leu3;->l:[B

    .line 58
    .line 59
    new-array v10, v5, [B

    .line 60
    .line 61
    invoke-virtual {v0, v10}, Leu3;->j([B)V

    .line 62
    .line 63
    .line 64
    iget-boolean v11, v0, Leu3;->d:Z

    .line 65
    .line 66
    if-eqz v11, :cond_4

    .line 67
    .line 68
    move v11, v4

    .line 69
    :goto_1
    add-int/lit8 v11, v11, -0x1

    .line 70
    .line 71
    if-ltz v11, :cond_3

    .line 72
    .line 73
    aget-byte v12, v9, v11

    .line 74
    .line 75
    aget-byte v13, v10, v11

    .line 76
    .line 77
    xor-int/2addr v12, v13

    .line 78
    int-to-byte v12, v12

    .line 79
    aput-byte v12, v9, v11

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object v10, v0, Leu3;->n:[B

    .line 83
    .line 84
    invoke-virtual {v0, v10, v9, v8, v4}, Leu3;->i([B[BII)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    iget-object v11, v0, Leu3;->n:[B

    .line 89
    .line 90
    invoke-virtual {v0, v11, v9, v8, v4}, Leu3;->i([B[BII)V

    .line 91
    .line 92
    .line 93
    move v11, v4

    .line 94
    :goto_2
    add-int/lit8 v11, v11, -0x1

    .line 95
    .line 96
    if-ltz v11, :cond_5

    .line 97
    .line 98
    aget-byte v12, v9, v11

    .line 99
    .line 100
    aget-byte v13, v10, v11

    .line 101
    .line 102
    xor-int/2addr v12, v13

    .line 103
    int-to-byte v12, v12

    .line 104
    aput-byte v12, v9, v11

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    :goto_3
    invoke-static {v9, v8, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    .line 109
    .line 110
    iget-wide v9, v0, Leu3;->t:J

    .line 111
    .line 112
    int-to-long v11, v4

    .line 113
    add-long/2addr v9, v11

    .line 114
    iput-wide v9, v0, Leu3;->t:J

    .line 115
    .line 116
    :cond_6
    iget-wide v9, v0, Leu3;->w:J

    .line 117
    .line 118
    iget v11, v0, Leu3;->v:I

    .line 119
    .line 120
    int-to-long v12, v11

    .line 121
    add-long/2addr v9, v12

    .line 122
    iput-wide v9, v0, Leu3;->w:J

    .line 123
    .line 124
    iget-wide v12, v0, Leu3;->x:J

    .line 125
    .line 126
    cmp-long v9, v9, v12

    .line 127
    .line 128
    const-wide/16 v12, 0x8

    .line 129
    .line 130
    if-lez v9, :cond_12

    .line 131
    .line 132
    if-lez v11, :cond_7

    .line 133
    .line 134
    iget-object v9, v0, Leu3;->o:[B

    .line 135
    .line 136
    iget-object v14, v0, Leu3;->u:[B

    .line 137
    .line 138
    invoke-virtual {v0, v9, v14, v8, v11}, Leu3;->i([B[BII)V

    .line 139
    .line 140
    .line 141
    :cond_7
    iget-wide v14, v0, Leu3;->x:J

    .line 142
    .line 143
    cmp-long v9, v14, v6

    .line 144
    .line 145
    if-lez v9, :cond_8

    .line 146
    .line 147
    iget-object v9, v0, Leu3;->o:[B

    .line 148
    .line 149
    iget-object v11, v0, Leu3;->p:[B

    .line 150
    .line 151
    invoke-static {v9, v11}, Lly8;->S([B[B)V

    .line 152
    .line 153
    .line 154
    :cond_8
    iget-wide v14, v0, Leu3;->t:J

    .line 155
    .line 156
    mul-long/2addr v14, v12

    .line 157
    const-wide/16 v16, 0x7f

    .line 158
    .line 159
    add-long v14, v14, v16

    .line 160
    .line 161
    const/4 v9, 0x7

    .line 162
    ushr-long/2addr v14, v9

    .line 163
    new-array v11, v5, [B

    .line 164
    .line 165
    move/from16 v16, v9

    .line 166
    .line 167
    iget-object v9, v0, Leu3;->c:Lk40;

    .line 168
    .line 169
    const/16 v17, 0x20

    .line 170
    .line 171
    const-wide v18, 0xffffffffL

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    move-wide/from16 v20, v12

    .line 177
    .line 178
    const/4 v12, 0x2

    .line 179
    if-nez v9, :cond_a

    .line 180
    .line 181
    new-instance v9, Lk40;

    .line 182
    .line 183
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 184
    .line 185
    .line 186
    iput-object v9, v0, Leu3;->c:Lk40;

    .line 187
    .line 188
    iget-object v13, v0, Leu3;->j:[B

    .line 189
    .line 190
    move-wide/from16 v22, v6

    .line 191
    .line 192
    new-array v6, v12, [J

    .line 193
    .line 194
    move v7, v8

    .line 195
    move v10, v7

    .line 196
    const/16 v24, 0x8

    .line 197
    .line 198
    :goto_4
    if-ge v7, v12, :cond_9

    .line 199
    .line 200
    invoke-static {v13, v10}, Lxx3;->a([BI)I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    move/from16 v25, v8

    .line 205
    .line 206
    add-int/lit8 v8, v10, 0x4

    .line 207
    .line 208
    invoke-static {v13, v8}, Lxx3;->a([BI)I

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    move-object/from16 v27, v13

    .line 213
    .line 214
    int-to-long v12, v5

    .line 215
    and-long v12, v12, v18

    .line 216
    .line 217
    shl-long v12, v12, v17

    .line 218
    .line 219
    move v5, v7

    .line 220
    int-to-long v7, v8

    .line 221
    and-long v7, v7, v18

    .line 222
    .line 223
    or-long/2addr v7, v12

    .line 224
    aput-wide v7, v6, v5

    .line 225
    .line 226
    add-int/lit8 v10, v10, 0x8

    .line 227
    .line 228
    add-int/lit8 v7, v5, 0x1

    .line 229
    .line 230
    move/from16 v8, v25

    .line 231
    .line 232
    move-object/from16 v13, v27

    .line 233
    .line 234
    const/16 v5, 0x10

    .line 235
    .line 236
    const/4 v12, 0x2

    .line 237
    goto :goto_4

    .line 238
    :cond_9
    move/from16 v25, v8

    .line 239
    .line 240
    iput-object v6, v9, Lk40;->a:[J

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_a
    move-wide/from16 v22, v6

    .line 244
    .line 245
    move/from16 v25, v8

    .line 246
    .line 247
    const/16 v24, 0x8

    .line 248
    .line 249
    :goto_5
    iget-object v5, v0, Leu3;->c:Lk40;

    .line 250
    .line 251
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    const/4 v6, 0x2

    .line 255
    new-array v7, v6, [J

    .line 256
    .line 257
    const-wide/high16 v8, -0x8000000000000000L

    .line 258
    .line 259
    aput-wide v8, v7, v25

    .line 260
    .line 261
    cmp-long v8, v14, v22

    .line 262
    .line 263
    if-lez v8, :cond_d

    .line 264
    .line 265
    new-array v8, v6, [J

    .line 266
    .line 267
    iget-object v5, v5, Lk40;->a:[J

    .line 268
    .line 269
    aget-wide v9, v5, v25

    .line 270
    .line 271
    aput-wide v9, v8, v25

    .line 272
    .line 273
    const/4 v6, 0x1

    .line 274
    aget-wide v9, v5, v6

    .line 275
    .line 276
    aput-wide v9, v8, v6

    .line 277
    .line 278
    :goto_6
    const-wide/16 v9, 0x1

    .line 279
    .line 280
    and-long/2addr v9, v14

    .line 281
    cmp-long v5, v9, v22

    .line 282
    .line 283
    if-eqz v5, :cond_b

    .line 284
    .line 285
    invoke-static {v7, v8}, Lly8;->D([J[J)V

    .line 286
    .line 287
    .line 288
    :cond_b
    const/4 v5, 0x4

    .line 289
    new-array v5, v5, [J

    .line 290
    .line 291
    aget-wide v9, v8, v25

    .line 292
    .line 293
    move/from16 v12, v25

    .line 294
    .line 295
    invoke-static {v12, v9, v10, v5}, Llg7;->l(IJ[J)V

    .line 296
    .line 297
    .line 298
    aget-wide v9, v8, v6

    .line 299
    .line 300
    const/4 v13, 0x2

    .line 301
    invoke-static {v13, v9, v10, v5}, Llg7;->l(IJ[J)V

    .line 302
    .line 303
    .line 304
    aget-wide v9, v5, v12

    .line 305
    .line 306
    aget-wide v27, v5, v6

    .line 307
    .line 308
    aget-wide v29, v5, v13

    .line 309
    .line 310
    const/4 v12, 0x3

    .line 311
    aget-wide v31, v5, v12

    .line 312
    .line 313
    ushr-long v33, v31, v6

    .line 314
    .line 315
    xor-long v33, v31, v33

    .line 316
    .line 317
    ushr-long v35, v31, v13

    .line 318
    .line 319
    xor-long v12, v33, v35

    .line 320
    .line 321
    ushr-long v33, v31, v16

    .line 322
    .line 323
    xor-long v12, v12, v33

    .line 324
    .line 325
    xor-long v12, v27, v12

    .line 326
    .line 327
    const/16 v5, 0x3f

    .line 328
    .line 329
    shl-long v27, v31, v5

    .line 330
    .line 331
    const/16 v33, 0x3e

    .line 332
    .line 333
    shl-long v34, v31, v33

    .line 334
    .line 335
    xor-long v27, v27, v34

    .line 336
    .line 337
    const/16 v34, 0x39

    .line 338
    .line 339
    shl-long v31, v31, v34

    .line 340
    .line 341
    xor-long v27, v27, v31

    .line 342
    .line 343
    xor-long v27, v29, v27

    .line 344
    .line 345
    ushr-long v29, v27, v6

    .line 346
    .line 347
    xor-long v29, v27, v29

    .line 348
    .line 349
    const/16 v26, 0x2

    .line 350
    .line 351
    ushr-long v31, v27, v26

    .line 352
    .line 353
    xor-long v29, v29, v31

    .line 354
    .line 355
    ushr-long v31, v27, v16

    .line 356
    .line 357
    xor-long v29, v29, v31

    .line 358
    .line 359
    xor-long v9, v9, v29

    .line 360
    .line 361
    shl-long v29, v27, v5

    .line 362
    .line 363
    shl-long v31, v27, v33

    .line 364
    .line 365
    xor-long v29, v29, v31

    .line 366
    .line 367
    shl-long v27, v27, v34

    .line 368
    .line 369
    xor-long v27, v29, v27

    .line 370
    .line 371
    xor-long v12, v12, v27

    .line 372
    .line 373
    const/16 v25, 0x0

    .line 374
    .line 375
    aput-wide v9, v8, v25

    .line 376
    .line 377
    aput-wide v12, v8, v6

    .line 378
    .line 379
    ushr-long/2addr v14, v6

    .line 380
    cmp-long v5, v14, v22

    .line 381
    .line 382
    if-gtz v5, :cond_c

    .line 383
    .line 384
    goto :goto_7

    .line 385
    :cond_c
    const/16 v25, 0x0

    .line 386
    .line 387
    goto :goto_6

    .line 388
    :cond_d
    :goto_7
    const/4 v5, 0x0

    .line 389
    const/4 v6, 0x0

    .line 390
    const/4 v13, 0x2

    .line 391
    :goto_8
    if-ge v5, v13, :cond_e

    .line 392
    .line 393
    aget-wide v8, v7, v5

    .line 394
    .line 395
    invoke-static {v6, v8, v9, v11}, Lxx3;->u(IJ[B)V

    .line 396
    .line 397
    .line 398
    add-int/lit8 v6, v6, 0x8

    .line 399
    .line 400
    add-int/lit8 v5, v5, 0x1

    .line 401
    .line 402
    goto :goto_8

    .line 403
    :cond_e
    iget-object v5, v0, Leu3;->o:[B

    .line 404
    .line 405
    new-array v6, v13, [J

    .line 406
    .line 407
    const/4 v7, 0x0

    .line 408
    const/4 v8, 0x0

    .line 409
    :goto_9
    if-ge v7, v13, :cond_f

    .line 410
    .line 411
    invoke-static {v5, v8}, Lxx3;->a([BI)I

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    add-int/lit8 v10, v8, 0x4

    .line 416
    .line 417
    invoke-static {v5, v10}, Lxx3;->a([BI)I

    .line 418
    .line 419
    .line 420
    move-result v10

    .line 421
    int-to-long v12, v9

    .line 422
    and-long v12, v12, v18

    .line 423
    .line 424
    shl-long v12, v12, v17

    .line 425
    .line 426
    int-to-long v9, v10

    .line 427
    and-long v9, v9, v18

    .line 428
    .line 429
    or-long/2addr v9, v12

    .line 430
    aput-wide v9, v6, v7

    .line 431
    .line 432
    add-int/lit8 v8, v8, 0x8

    .line 433
    .line 434
    add-int/lit8 v7, v7, 0x1

    .line 435
    .line 436
    const/4 v13, 0x2

    .line 437
    goto :goto_9

    .line 438
    :cond_f
    new-array v7, v13, [J

    .line 439
    .line 440
    const/4 v8, 0x0

    .line 441
    const/4 v9, 0x0

    .line 442
    :goto_a
    if-ge v8, v13, :cond_10

    .line 443
    .line 444
    invoke-static {v11, v9}, Lxx3;->a([BI)I

    .line 445
    .line 446
    .line 447
    move-result v10

    .line 448
    add-int/lit8 v12, v9, 0x4

    .line 449
    .line 450
    invoke-static {v11, v12}, Lxx3;->a([BI)I

    .line 451
    .line 452
    .line 453
    move-result v12

    .line 454
    int-to-long v13, v10

    .line 455
    and-long v13, v13, v18

    .line 456
    .line 457
    shl-long v13, v13, v17

    .line 458
    .line 459
    move v10, v8

    .line 460
    move v15, v9

    .line 461
    int-to-long v8, v12

    .line 462
    and-long v8, v8, v18

    .line 463
    .line 464
    or-long/2addr v8, v13

    .line 465
    aput-wide v8, v7, v10

    .line 466
    .line 467
    add-int/lit8 v9, v15, 0x8

    .line 468
    .line 469
    add-int/lit8 v8, v10, 0x1

    .line 470
    .line 471
    const/4 v13, 0x2

    .line 472
    goto :goto_a

    .line 473
    :cond_10
    invoke-static {v6, v7}, Lly8;->D([J[J)V

    .line 474
    .line 475
    .line 476
    const/4 v7, 0x0

    .line 477
    const/4 v8, 0x0

    .line 478
    const/4 v13, 0x2

    .line 479
    :goto_b
    if-ge v7, v13, :cond_11

    .line 480
    .line 481
    aget-wide v9, v6, v7

    .line 482
    .line 483
    invoke-static {v8, v9, v10, v5}, Lxx3;->u(IJ[B)V

    .line 484
    .line 485
    .line 486
    add-int/lit8 v8, v8, 0x8

    .line 487
    .line 488
    add-int/lit8 v7, v7, 0x1

    .line 489
    .line 490
    goto :goto_b

    .line 491
    :cond_11
    iget-object v5, v0, Leu3;->n:[B

    .line 492
    .line 493
    iget-object v6, v0, Leu3;->o:[B

    .line 494
    .line 495
    invoke-static {v5, v6}, Lly8;->S([B[B)V

    .line 496
    .line 497
    .line 498
    const/16 v5, 0x10

    .line 499
    .line 500
    goto :goto_c

    .line 501
    :cond_12
    move-wide/from16 v22, v6

    .line 502
    .line 503
    move-wide/from16 v20, v12

    .line 504
    .line 505
    const/16 v24, 0x8

    .line 506
    .line 507
    :goto_c
    new-array v6, v5, [B

    .line 508
    .line 509
    iget-wide v7, v0, Leu3;->w:J

    .line 510
    .line 511
    mul-long v7, v7, v20

    .line 512
    .line 513
    const/4 v12, 0x0

    .line 514
    invoke-static {v12, v7, v8, v6}, Lxx3;->u(IJ[B)V

    .line 515
    .line 516
    .line 517
    iget-wide v7, v0, Leu3;->t:J

    .line 518
    .line 519
    mul-long v7, v7, v20

    .line 520
    .line 521
    move/from16 v9, v24

    .line 522
    .line 523
    invoke-static {v9, v7, v8, v6}, Lxx3;->u(IJ[B)V

    .line 524
    .line 525
    .line 526
    iget-object v7, v0, Leu3;->n:[B

    .line 527
    .line 528
    invoke-static {v7, v6}, Lly8;->S([B[B)V

    .line 529
    .line 530
    .line 531
    iget-object v6, v0, Leu3;->b:Lro;

    .line 532
    .line 533
    invoke-virtual {v6, v7}, Lro;->p([B)V

    .line 534
    .line 535
    .line 536
    new-array v6, v5, [B

    .line 537
    .line 538
    iget-object v5, v0, Leu3;->k:[B

    .line 539
    .line 540
    invoke-virtual {v3, v5, v6, v12, v12}, Lj;->j([B[BII)I

    .line 541
    .line 542
    .line 543
    iget-object v3, v0, Leu3;->n:[B

    .line 544
    .line 545
    invoke-static {v6, v3}, Lly8;->S([B[B)V

    .line 546
    .line 547
    .line 548
    iget v3, v0, Leu3;->f:I

    .line 549
    .line 550
    new-array v5, v3, [B

    .line 551
    .line 552
    iput-object v5, v0, Leu3;->m:[B

    .line 553
    .line 554
    invoke-static {v6, v12, v5, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    .line 556
    .line 557
    iget-boolean v3, v0, Leu3;->d:Z

    .line 558
    .line 559
    if-eqz v3, :cond_13

    .line 560
    .line 561
    iget-object v3, v0, Leu3;->m:[B

    .line 562
    .line 563
    iget v5, v0, Leu3;->s:I

    .line 564
    .line 565
    add-int/2addr v2, v5

    .line 566
    iget v5, v0, Leu3;->f:I

    .line 567
    .line 568
    invoke-static {v3, v12, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    .line 570
    .line 571
    iget v1, v0, Leu3;->f:I

    .line 572
    .line 573
    add-int/2addr v4, v1

    .line 574
    :goto_d
    const/16 v5, 0x10

    .line 575
    .line 576
    goto :goto_e

    .line 577
    :cond_13
    iget v1, v0, Leu3;->f:I

    .line 578
    .line 579
    new-array v2, v1, [B

    .line 580
    .line 581
    iget-object v3, v0, Leu3;->l:[B

    .line 582
    .line 583
    invoke-static {v3, v4, v2, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    .line 585
    .line 586
    iget-object v1, v0, Leu3;->m:[B

    .line 587
    .line 588
    invoke-static {v1, v2}, Lms8;->r([B[B)Z

    .line 589
    .line 590
    .line 591
    move-result v1

    .line 592
    if-eqz v1, :cond_17

    .line 593
    .line 594
    goto :goto_d

    .line 595
    :goto_e
    new-array v1, v5, [B

    .line 596
    .line 597
    iput-object v1, v0, Leu3;->n:[B

    .line 598
    .line 599
    new-array v1, v5, [B

    .line 600
    .line 601
    iput-object v1, v0, Leu3;->o:[B

    .line 602
    .line 603
    new-array v1, v5, [B

    .line 604
    .line 605
    iput-object v1, v0, Leu3;->p:[B

    .line 606
    .line 607
    new-array v1, v5, [B

    .line 608
    .line 609
    iput-object v1, v0, Leu3;->u:[B

    .line 610
    .line 611
    const/4 v12, 0x0

    .line 612
    iput v12, v0, Leu3;->v:I

    .line 613
    .line 614
    move-wide/from16 v1, v22

    .line 615
    .line 616
    iput-wide v1, v0, Leu3;->w:J

    .line 617
    .line 618
    iput-wide v1, v0, Leu3;->x:J

    .line 619
    .line 620
    iget-object v3, v0, Leu3;->k:[B

    .line 621
    .line 622
    invoke-static {v3}, Lms8;->k([B)[B

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    iput-object v3, v0, Leu3;->q:[B

    .line 627
    .line 628
    const/4 v3, -0x2

    .line 629
    iput v3, v0, Leu3;->r:I

    .line 630
    .line 631
    iput v12, v0, Leu3;->s:I

    .line 632
    .line 633
    iput-wide v1, v0, Leu3;->t:J

    .line 634
    .line 635
    iget-object v1, v0, Leu3;->l:[B

    .line 636
    .line 637
    if-eqz v1, :cond_14

    .line 638
    .line 639
    invoke-static {v1, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 640
    .line 641
    .line 642
    :cond_14
    iget-boolean v1, v0, Leu3;->d:Z

    .line 643
    .line 644
    if-eqz v1, :cond_15

    .line 645
    .line 646
    iput-boolean v12, v0, Leu3;->e:Z

    .line 647
    .line 648
    return v4

    .line 649
    :cond_15
    iget-object v1, v0, Leu3;->i:[B

    .line 650
    .line 651
    if-eqz v1, :cond_16

    .line 652
    .line 653
    array-length v2, v1

    .line 654
    invoke-virtual {v0, v1, v2}, Leu3;->d([BI)V

    .line 655
    .line 656
    .line 657
    :cond_16
    return v4

    .line 658
    :cond_17
    new-instance v0, Lyf4;

    .line 659
    .line 660
    const-string v1, "mac check in GCM failed"

    .line 661
    .line 662
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    throw v0

    .line 666
    :cond_18
    new-instance v0, Ldv5;

    .line 667
    .line 668
    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    throw v0

    .line 672
    :cond_19
    new-instance v0, Lyf4;

    .line 673
    .line 674
    const-string v1, "data too short"

    .line 675
    .line 676
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    throw v0
.end method

.method public final e(I)I
    .locals 1

    .line 1
    iget v0, p0, Leu3;->s:I

    .line 2
    .line 3
    add-int/2addr p1, v0

    .line 4
    iget-boolean v0, p0, Leu3;->d:Z

    .line 5
    .line 6
    iget p0, p0, Leu3;->f:I

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    add-int/2addr p1, p0

    .line 11
    return p1

    .line 12
    :cond_0
    if-ge p1, p0, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    sub-int/2addr p1, p0

    .line 17
    return p1
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Leu3;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Leu3;->d:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string p0, "GCM cipher cannot be reused for encryption"

    .line 10
    .line 11
    :goto_0
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "GCM cipher needs to be initialised"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return-void
.end method

.method public final g([B[BII)V
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    sub-int/2addr v0, p4

    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    iget-wide v2, p0, Leu3;->t:J

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmp-long v0, v2, v4

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Leu3;->k()V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-array v0, v1, [B

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Leu3;->j([B)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Leu3;->n:[B

    .line 24
    .line 25
    invoke-static {p3, v2, p1}, Lly8;->R(I[B[B)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Leu3;->b:Lro;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Lro;->p([B)V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :cond_1
    add-int v3, p4, v2

    .line 35
    .line 36
    aget-byte v4, v0, v2

    .line 37
    .line 38
    add-int v5, p3, v2

    .line 39
    .line 40
    aget-byte v5, p1, v5

    .line 41
    .line 42
    xor-int/2addr v4, v5

    .line 43
    int-to-byte v4, v4

    .line 44
    aput-byte v4, p2, v3

    .line 45
    .line 46
    add-int/lit8 v3, v2, 0x1

    .line 47
    .line 48
    add-int v4, p4, v3

    .line 49
    .line 50
    aget-byte v5, v0, v3

    .line 51
    .line 52
    add-int/2addr v3, p3

    .line 53
    aget-byte v3, p1, v3

    .line 54
    .line 55
    xor-int/2addr v3, v5

    .line 56
    int-to-byte v3, v3

    .line 57
    aput-byte v3, p2, v4

    .line 58
    .line 59
    add-int/lit8 v3, v2, 0x2

    .line 60
    .line 61
    add-int v4, p4, v3

    .line 62
    .line 63
    aget-byte v5, v0, v3

    .line 64
    .line 65
    add-int/2addr v3, p3

    .line 66
    aget-byte v3, p1, v3

    .line 67
    .line 68
    xor-int/2addr v3, v5

    .line 69
    int-to-byte v3, v3

    .line 70
    aput-byte v3, p2, v4

    .line 71
    .line 72
    add-int/lit8 v3, v2, 0x3

    .line 73
    .line 74
    add-int v4, p4, v3

    .line 75
    .line 76
    aget-byte v5, v0, v3

    .line 77
    .line 78
    add-int/2addr v3, p3

    .line 79
    aget-byte v3, p1, v3

    .line 80
    .line 81
    xor-int/2addr v3, v5

    .line 82
    int-to-byte v3, v3

    .line 83
    aput-byte v3, p2, v4

    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x4

    .line 86
    .line 87
    if-lt v2, v1, :cond_1

    .line 88
    .line 89
    iget-wide p1, p0, Leu3;->t:J

    .line 90
    .line 91
    const-wide/16 p3, 0x10

    .line 92
    .line 93
    add-long/2addr p1, p3

    .line 94
    iput-wide p1, p0, Leu3;->t:J

    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    new-instance p0, Ldv5;

    .line 98
    .line 99
    const-string p1, "Output buffer too short"

    .line 100
    .line 101
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method public final h([B[BII)V
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    sub-int/2addr v0, p4

    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-wide v2, p0, Leu3;->t:J

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmp-long v0, v2, v4

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Leu3;->k()V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-array v0, v1, [B

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Leu3;->j([B)V

    .line 21
    .line 22
    .line 23
    invoke-static {p3, v0, p1}, Lly8;->R(I[B[B)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Leu3;->n:[B

    .line 27
    .line 28
    invoke-static {p1, v0}, Lly8;->S([B[B)V

    .line 29
    .line 30
    .line 31
    iget-object p3, p0, Leu3;->b:Lro;

    .line 32
    .line 33
    invoke-virtual {p3, p1}, Lro;->p([B)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-static {v0, p1, p2, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    iget-wide p1, p0, Leu3;->t:J

    .line 41
    .line 42
    const-wide/16 p3, 0x10

    .line 43
    .line 44
    add-long/2addr p1, p3

    .line 45
    iput-wide p1, p0, Leu3;->t:J

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    new-instance p0, Ldv5;

    .line 49
    .line 50
    const-string p1, "Output buffer too short"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final i([B[BII)V
    .locals 2

    .line 1
    :goto_0
    add-int/lit8 p4, p4, -0x1

    .line 2
    .line 3
    if-ltz p4, :cond_0

    .line 4
    .line 5
    aget-byte v0, p1, p4

    .line 6
    .line 7
    add-int v1, p3, p4

    .line 8
    .line 9
    aget-byte v1, p2, v1

    .line 10
    .line 11
    xor-int/2addr v0, v1

    .line 12
    int-to-byte v0, v0

    .line 13
    aput-byte v0, p1, p4

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Leu3;->b:Lro;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lro;->p([B)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final j([B)V
    .locals 4

    .line 1
    iget v0, p0, Leu3;->r:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p0, Leu3;->r:I

    .line 8
    .line 9
    iget-object v0, p0, Leu3;->q:[B

    .line 10
    .line 11
    const/16 v1, 0xf

    .line 12
    .line 13
    aget-byte v2, v0, v1

    .line 14
    .line 15
    and-int/lit16 v2, v2, 0xff

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    int-to-byte v3, v2

    .line 20
    aput-byte v3, v0, v1

    .line 21
    .line 22
    ushr-int/lit8 v1, v2, 0x8

    .line 23
    .line 24
    const/16 v2, 0xe

    .line 25
    .line 26
    aget-byte v3, v0, v2

    .line 27
    .line 28
    and-int/lit16 v3, v3, 0xff

    .line 29
    .line 30
    add-int/2addr v1, v3

    .line 31
    int-to-byte v3, v1

    .line 32
    aput-byte v3, v0, v2

    .line 33
    .line 34
    ushr-int/lit8 v1, v1, 0x8

    .line 35
    .line 36
    const/16 v2, 0xd

    .line 37
    .line 38
    aget-byte v3, v0, v2

    .line 39
    .line 40
    and-int/lit16 v3, v3, 0xff

    .line 41
    .line 42
    add-int/2addr v1, v3

    .line 43
    int-to-byte v3, v1

    .line 44
    aput-byte v3, v0, v2

    .line 45
    .line 46
    ushr-int/lit8 v1, v1, 0x8

    .line 47
    .line 48
    const/16 v2, 0xc

    .line 49
    .line 50
    aget-byte v3, v0, v2

    .line 51
    .line 52
    and-int/lit16 v3, v3, 0xff

    .line 53
    .line 54
    add-int/2addr v1, v3

    .line 55
    int-to-byte v1, v1

    .line 56
    aput-byte v1, v0, v2

    .line 57
    .line 58
    iget-object p0, p0, Leu3;->a:Lj;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, p1, v1, v1}, Lj;->j([B[BII)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    const-string p0, "Attempt to process too many blocks"

    .line 66
    .line 67
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final k()V
    .locals 9

    .line 1
    iget-wide v0, p0, Leu3;->w:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Leu3;->o:[B

    .line 13
    .line 14
    iget-object v5, p0, Leu3;->p:[B

    .line 15
    .line 16
    invoke-static {v0, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    iget-wide v5, p0, Leu3;->w:J

    .line 20
    .line 21
    iput-wide v5, p0, Leu3;->x:J

    .line 22
    .line 23
    :cond_0
    iget v0, p0, Leu3;->v:I

    .line 24
    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    iget-object v5, p0, Leu3;->p:[B

    .line 28
    .line 29
    iget-object v6, p0, Leu3;->u:[B

    .line 30
    .line 31
    invoke-virtual {p0, v5, v6, v4, v0}, Leu3;->i([B[BII)V

    .line 32
    .line 33
    .line 34
    iget-wide v5, p0, Leu3;->x:J

    .line 35
    .line 36
    iget v0, p0, Leu3;->v:I

    .line 37
    .line 38
    int-to-long v7, v0

    .line 39
    add-long/2addr v5, v7

    .line 40
    iput-wide v5, p0, Leu3;->x:J

    .line 41
    .line 42
    :cond_1
    iget-wide v5, p0, Leu3;->x:J

    .line 43
    .line 44
    cmp-long v0, v5, v2

    .line 45
    .line 46
    if-lez v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Leu3;->p:[B

    .line 49
    .line 50
    iget-object p0, p0, Leu3;->n:[B

    .line 51
    .line 52
    invoke-static {v0, v4, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method
