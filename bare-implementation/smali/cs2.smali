.class public final Lcs2;
.super Ln60;


# instance fields
.field public final b:[B

.field public c:Lds2;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Ln60;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    new-array v1, v0, [B

    .line 8
    .line 9
    iput-object v1, p0, Lcs2;->b:[B

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    invoke-static {p1, p0, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a([B[BI[B)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    iget-object v4, v0, Lcs2;->b:[B

    .line 10
    .line 11
    monitor-enter v4

    .line 12
    :try_start_0
    iget-object v5, v0, Lcs2;->c:Lds2;

    .line 13
    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    new-instance v5, Lds2;

    .line 17
    .line 18
    iget-object v6, v0, Lcs2;->b:[B

    .line 19
    .line 20
    invoke-static {v6}, Ljb9;->y([B)Lke;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-direct {v5, v6}, Lds2;-><init>(Lke;)V

    .line 25
    .line 26
    .line 27
    iput-object v5, v0, Lcs2;->c:Lds2;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    :goto_0
    iget-object v5, v0, Lcs2;->c:Lds2;

    .line 34
    .line 35
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/16 v4, 0x20

    .line 37
    .line 38
    new-array v6, v4, [B

    .line 39
    .line 40
    iget-object v5, v5, Lds2;->b:Lke;

    .line 41
    .line 42
    invoke-static {v5, v6}, Ljb9;->w(Lke;[B)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v0, Lcs2;->b:[B

    .line 46
    .line 47
    new-instance v5, Lkr6;

    .line 48
    .line 49
    invoke-direct {v5}, Lkr6;-><init>()V

    .line 50
    .line 51
    .line 52
    const/16 v7, 0x40

    .line 53
    .line 54
    new-array v8, v7, [B

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    invoke-virtual {v5, v0, v9, v4}, Lq15;->update([BII)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v8, v9}, Lkr6;->doFinal([BI)I

    .line 61
    .line 62
    .line 63
    new-array v0, v4, [B

    .line 64
    .line 65
    invoke-static {v8, v0}, Ljb9;->T([B[B)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v8, v4, v4}, Lq15;->update([BII)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v1, v9, v2}, Lq15;->update([BII)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v8, v9}, Lkr6;->doFinal([BI)I

    .line 75
    .line 76
    .line 77
    invoke-static {v8}, Liz1;->y([B)[B

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    new-array v11, v4, [B

    .line 82
    .line 83
    new-instance v12, Las2;

    .line 84
    .line 85
    invoke-direct {v12}, Las2;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-static {v10, v12}, Ljb9;->b0([BLas2;)V

    .line 89
    .line 90
    .line 91
    const/16 v13, 0xa

    .line 92
    .line 93
    new-array v14, v13, [I

    .line 94
    .line 95
    new-array v15, v13, [I

    .line 96
    .line 97
    iget-object v7, v12, Las2;->c:Ljava/io/Serializable;

    .line 98
    .line 99
    check-cast v7, [I

    .line 100
    .line 101
    invoke-static {v7, v15}, Lnc8;->E([I[I)V

    .line 102
    .line 103
    .line 104
    iget-object v7, v12, Las2;->a:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v7, [I

    .line 107
    .line 108
    invoke-static {v15, v7, v14}, Lnc8;->K([I[I[I)V

    .line 109
    .line 110
    .line 111
    iget-object v7, v12, Las2;->b:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v7, [I

    .line 114
    .line 115
    invoke-static {v15, v7, v15}, Lnc8;->K([I[I[I)V

    .line 116
    .line 117
    .line 118
    invoke-static {v14}, Lnc8;->M([I)V

    .line 119
    .line 120
    .line 121
    invoke-static {v15}, Lnc8;->M([I)V

    .line 122
    .line 123
    .line 124
    new-array v7, v13, [I

    .line 125
    .line 126
    new-array v12, v13, [I

    .line 127
    .line 128
    new-array v13, v13, [I

    .line 129
    .line 130
    invoke-static {v14, v12}, Lnc8;->i0([I[I)V

    .line 131
    .line 132
    .line 133
    invoke-static {v15, v13}, Lnc8;->i0([I[I)V

    .line 134
    .line 135
    .line 136
    invoke-static {v12, v13, v7}, Lnc8;->K([I[I[I)V

    .line 137
    .line 138
    .line 139
    invoke-static {v12, v13, v12}, Lnc8;->l0([I[I[I)V

    .line 140
    .line 141
    .line 142
    sget-object v4, Ljb9;->q:[I

    .line 143
    .line 144
    invoke-static {v7, v4, v7}, Lnc8;->K([I[I[I)V

    .line 145
    .line 146
    .line 147
    aget v4, v7, v9

    .line 148
    .line 149
    const/16 v16, 0x1

    .line 150
    .line 151
    add-int/lit8 v4, v4, 0x1

    .line 152
    .line 153
    aput v4, v7, v9

    .line 154
    .line 155
    invoke-static {v7, v12, v7}, Lnc8;->b([I[I[I)V

    .line 156
    .line 157
    .line 158
    invoke-static {v7}, Lnc8;->M([I)V

    .line 159
    .line 160
    .line 161
    invoke-static {v13}, Lnc8;->M([I)V

    .line 162
    .line 163
    .line 164
    invoke-static {v7}, Lnc8;->H([I)I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    invoke-static {v13}, Lnc8;->H([I)I

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    not-int v7, v7

    .line 173
    and-int/2addr v4, v7

    .line 174
    invoke-static {v9, v9, v11, v15}, Lnc8;->x(II[B[I)V

    .line 175
    .line 176
    .line 177
    const/4 v7, 0x5

    .line 178
    const/16 v12, 0x10

    .line 179
    .line 180
    invoke-static {v7, v12, v11, v15}, Lnc8;->x(II[B[I)V

    .line 181
    .line 182
    .line 183
    const/16 v13, 0x1f

    .line 184
    .line 185
    aget-byte v15, v11, v13

    .line 186
    .line 187
    aget v14, v14, v9

    .line 188
    .line 189
    and-int/lit8 v14, v14, 0x1

    .line 190
    .line 191
    const/16 v17, 0x7

    .line 192
    .line 193
    shl-int/lit8 v14, v14, 0x7

    .line 194
    .line 195
    or-int/2addr v14, v15

    .line 196
    int-to-byte v14, v14

    .line 197
    aput-byte v14, v11, v13

    .line 198
    .line 199
    if-eqz v4, :cond_2

    .line 200
    .line 201
    const/16 v4, 0x20

    .line 202
    .line 203
    invoke-virtual {v5, v11, v9, v4}, Lq15;->update([BII)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5, v6, v9, v4}, Lq15;->update([BII)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v1, v9, v2}, Lq15;->update([BII)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v8, v9}, Lkr6;->doFinal([BI)I

    .line 213
    .line 214
    .line 215
    invoke-static {v8}, Liz1;->y([B)[B

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    new-array v2, v12, [I

    .line 220
    .line 221
    invoke-static {v10, v2}, Liz1;->i([B[I)V

    .line 222
    .line 223
    .line 224
    const/16 v4, 0x8

    .line 225
    .line 226
    new-array v5, v4, [I

    .line 227
    .line 228
    invoke-static {v1, v5}, Liz1;->i([B[I)V

    .line 229
    .line 230
    .line 231
    new-array v1, v4, [I

    .line 232
    .line 233
    invoke-static {v0, v1}, Liz1;->i([B[I)V

    .line 234
    .line 235
    .line 236
    aget v0, v1, v9

    .line 237
    .line 238
    int-to-long v13, v0

    .line 239
    const-wide v18, 0xffffffffL

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    and-long v13, v13, v18

    .line 245
    .line 246
    aget v0, v1, v16

    .line 247
    .line 248
    move v6, v7

    .line 249
    int-to-long v7, v0

    .line 250
    and-long v7, v7, v18

    .line 251
    .line 252
    const/4 v0, 0x2

    .line 253
    aget v0, v1, v0

    .line 254
    .line 255
    move/from16 p2, v6

    .line 256
    .line 257
    move-wide v15, v7

    .line 258
    int-to-long v6, v0

    .line 259
    and-long v6, v6, v18

    .line 260
    .line 261
    const/4 v0, 0x3

    .line 262
    aget v0, v1, v0

    .line 263
    .line 264
    int-to-long v9, v0

    .line 265
    and-long v9, v9, v18

    .line 266
    .line 267
    const/4 v0, 0x4

    .line 268
    aget v0, v1, v0

    .line 269
    .line 270
    move-wide/from16 v20, v9

    .line 271
    .line 272
    int-to-long v8, v0

    .line 273
    and-long v8, v8, v18

    .line 274
    .line 275
    aget v0, v1, p2

    .line 276
    .line 277
    move-wide/from16 v22, v13

    .line 278
    .line 279
    int-to-long v12, v0

    .line 280
    and-long v12, v12, v18

    .line 281
    .line 282
    const/4 v0, 0x6

    .line 283
    aget v0, v1, v0

    .line 284
    .line 285
    move-object v14, v11

    .line 286
    int-to-long v10, v0

    .line 287
    and-long v10, v10, v18

    .line 288
    .line 289
    aget v0, v1, v17

    .line 290
    .line 291
    int-to-long v0, v0

    .line 292
    and-long v0, v0, v18

    .line 293
    .line 294
    const-wide/16 v24, 0x0

    .line 295
    .line 296
    move-wide/from16 v26, v0

    .line 297
    .line 298
    const/4 v0, 0x0

    .line 299
    :goto_1
    if-ge v0, v4, :cond_1

    .line 300
    .line 301
    aget v1, v5, v0

    .line 302
    .line 303
    move-object/from16 v28, v5

    .line 304
    .line 305
    int-to-long v4, v1

    .line 306
    and-long v4, v4, v18

    .line 307
    .line 308
    mul-long v29, v4, v22

    .line 309
    .line 310
    aget v1, v2, v0

    .line 311
    .line 312
    move/from16 v31, v0

    .line 313
    .line 314
    int-to-long v0, v1

    .line 315
    and-long v0, v0, v18

    .line 316
    .line 317
    add-long v0, v29, v0

    .line 318
    .line 319
    move-wide/from16 v29, v4

    .line 320
    .line 321
    long-to-int v4, v0

    .line 322
    aput v4, v2, v31

    .line 323
    .line 324
    const/16 v4, 0x20

    .line 325
    .line 326
    ushr-long/2addr v0, v4

    .line 327
    mul-long v32, v29, v15

    .line 328
    .line 329
    add-int/lit8 v5, v31, 0x1

    .line 330
    .line 331
    move/from16 p1, v4

    .line 332
    .line 333
    aget v4, v2, v5

    .line 334
    .line 335
    move-wide/from16 v34, v0

    .line 336
    .line 337
    int-to-long v0, v4

    .line 338
    and-long v0, v0, v18

    .line 339
    .line 340
    add-long v32, v32, v0

    .line 341
    .line 342
    add-long v0, v32, v34

    .line 343
    .line 344
    long-to-int v4, v0

    .line 345
    aput v4, v2, v5

    .line 346
    .line 347
    ushr-long v0, v0, p1

    .line 348
    .line 349
    mul-long v32, v29, v6

    .line 350
    .line 351
    add-int/lit8 v4, v31, 0x2

    .line 352
    .line 353
    move-wide/from16 v34, v0

    .line 354
    .line 355
    aget v0, v2, v4

    .line 356
    .line 357
    int-to-long v0, v0

    .line 358
    and-long v0, v0, v18

    .line 359
    .line 360
    add-long v32, v32, v0

    .line 361
    .line 362
    add-long v0, v32, v34

    .line 363
    .line 364
    move/from16 v32, v4

    .line 365
    .line 366
    long-to-int v4, v0

    .line 367
    aput v4, v2, v32

    .line 368
    .line 369
    ushr-long v0, v0, p1

    .line 370
    .line 371
    mul-long v32, v29, v20

    .line 372
    .line 373
    add-int/lit8 v4, v31, 0x3

    .line 374
    .line 375
    move-wide/from16 v34, v0

    .line 376
    .line 377
    aget v0, v2, v4

    .line 378
    .line 379
    int-to-long v0, v0

    .line 380
    and-long v0, v0, v18

    .line 381
    .line 382
    add-long v32, v32, v0

    .line 383
    .line 384
    add-long v0, v32, v34

    .line 385
    .line 386
    move/from16 v32, v4

    .line 387
    .line 388
    long-to-int v4, v0

    .line 389
    aput v4, v2, v32

    .line 390
    .line 391
    ushr-long v0, v0, p1

    .line 392
    .line 393
    mul-long v32, v29, v8

    .line 394
    .line 395
    add-int/lit8 v4, v31, 0x4

    .line 396
    .line 397
    move-wide/from16 v34, v0

    .line 398
    .line 399
    aget v0, v2, v4

    .line 400
    .line 401
    int-to-long v0, v0

    .line 402
    and-long v0, v0, v18

    .line 403
    .line 404
    add-long v32, v32, v0

    .line 405
    .line 406
    add-long v0, v32, v34

    .line 407
    .line 408
    move/from16 v32, v4

    .line 409
    .line 410
    long-to-int v4, v0

    .line 411
    aput v4, v2, v32

    .line 412
    .line 413
    ushr-long v0, v0, p1

    .line 414
    .line 415
    mul-long v32, v29, v12

    .line 416
    .line 417
    add-int/lit8 v4, v31, 0x5

    .line 418
    .line 419
    move-wide/from16 v34, v0

    .line 420
    .line 421
    aget v0, v2, v4

    .line 422
    .line 423
    int-to-long v0, v0

    .line 424
    and-long v0, v0, v18

    .line 425
    .line 426
    add-long v32, v32, v0

    .line 427
    .line 428
    add-long v0, v32, v34

    .line 429
    .line 430
    move/from16 v32, v4

    .line 431
    .line 432
    long-to-int v4, v0

    .line 433
    aput v4, v2, v32

    .line 434
    .line 435
    ushr-long v0, v0, p1

    .line 436
    .line 437
    mul-long v32, v29, v10

    .line 438
    .line 439
    add-int/lit8 v4, v31, 0x6

    .line 440
    .line 441
    move-wide/from16 v34, v0

    .line 442
    .line 443
    aget v0, v2, v4

    .line 444
    .line 445
    int-to-long v0, v0

    .line 446
    and-long v0, v0, v18

    .line 447
    .line 448
    add-long v32, v32, v0

    .line 449
    .line 450
    add-long v0, v32, v34

    .line 451
    .line 452
    move/from16 v32, v4

    .line 453
    .line 454
    long-to-int v4, v0

    .line 455
    aput v4, v2, v32

    .line 456
    .line 457
    ushr-long v0, v0, p1

    .line 458
    .line 459
    mul-long v29, v29, v26

    .line 460
    .line 461
    add-int/lit8 v4, v31, 0x7

    .line 462
    .line 463
    move-wide/from16 v32, v0

    .line 464
    .line 465
    aget v0, v2, v4

    .line 466
    .line 467
    int-to-long v0, v0

    .line 468
    and-long v0, v0, v18

    .line 469
    .line 470
    add-long v29, v29, v0

    .line 471
    .line 472
    add-long v0, v29, v32

    .line 473
    .line 474
    move/from16 v29, v4

    .line 475
    .line 476
    long-to-int v4, v0

    .line 477
    aput v4, v2, v29

    .line 478
    .line 479
    ushr-long v0, v0, p1

    .line 480
    .line 481
    add-int/lit8 v4, v31, 0x8

    .line 482
    .line 483
    move-wide/from16 v29, v0

    .line 484
    .line 485
    aget v0, v2, v4

    .line 486
    .line 487
    int-to-long v0, v0

    .line 488
    and-long v0, v0, v18

    .line 489
    .line 490
    add-long v0, v29, v0

    .line 491
    .line 492
    add-long v0, v0, v24

    .line 493
    .line 494
    move/from16 v24, v4

    .line 495
    .line 496
    long-to-int v4, v0

    .line 497
    aput v4, v2, v24

    .line 498
    .line 499
    ushr-long v24, v0, p1

    .line 500
    .line 501
    move v0, v5

    .line 502
    move-object/from16 v5, v28

    .line 503
    .line 504
    const/16 v4, 0x8

    .line 505
    .line 506
    goto/16 :goto_1

    .line 507
    .line 508
    :cond_1
    const/16 p1, 0x20

    .line 509
    .line 510
    const/16 v0, 0x40

    .line 511
    .line 512
    new-array v0, v0, [B

    .line 513
    .line 514
    const/16 v10, 0x10

    .line 515
    .line 516
    invoke-static {v0, v10, v2}, Lg67;->o([BI[I)V

    .line 517
    .line 518
    .line 519
    invoke-static {v0}, Liz1;->y([B)[B

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    move/from16 v4, p1

    .line 524
    .line 525
    const/4 v8, 0x0

    .line 526
    invoke-static {v14, v8, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    .line 528
    .line 529
    invoke-static {v0, v8, v3, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    .line 531
    .line 532
    goto :goto_2

    .line 533
    :cond_2
    invoke-static {}, Lg84;->c()V

    .line 534
    .line 535
    .line 536
    :goto_2
    return-void

    .line 537
    :goto_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    throw v0
.end method
