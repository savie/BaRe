.class public final Li45;
.super Lei0;


# instance fields
.field public final c:[B

.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final k:[B

.field public final n:[B

.field public final p:[B

.field public final q:[B

.field public final r:I


# direct methods
.method public constructor <init>(Lh45;[BLj45;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    const/4 v10, 0x1

    .line 8
    invoke-direct {v0, v1, v10}, Lei0;-><init>(Ljava/lang/Object;Z)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lg45;

    .line 12
    .line 13
    iget v1, v1, Lh45;->a:I

    .line 14
    .line 15
    invoke-direct {v2, v1}, Lg45;-><init>(I)V

    .line 16
    .line 17
    .line 18
    array-length v1, v8

    .line 19
    const/16 v4, 0x40

    .line 20
    .line 21
    const/16 v5, 0x80

    .line 22
    .line 23
    const/16 v16, 0x2

    .line 24
    .line 25
    iget v7, v2, Lg45;->d:I

    .line 26
    .line 27
    move/from16 v17, v10

    .line 28
    .line 29
    iget v10, v2, Lg45;->b:I

    .line 30
    .line 31
    const/16 v18, 0x7

    .line 32
    .line 33
    iget v11, v2, Lg45;->c:I

    .line 34
    .line 35
    const/16 v19, 0x5

    .line 36
    .line 37
    const/16 v13, 0x20

    .line 38
    .line 39
    if-ne v1, v13, :cond_9

    .line 40
    .line 41
    new-array v1, v5, [B

    .line 42
    .line 43
    const/16 v20, 0x4

    .line 44
    .line 45
    new-array v14, v4, [B

    .line 46
    .line 47
    const/16 v21, 0x3

    .line 48
    .line 49
    new-array v15, v13, [B

    .line 50
    .line 51
    new-array v12, v4, [B

    .line 52
    .line 53
    new-array v3, v13, [B

    .line 54
    .line 55
    new-instance v4, Lln5;

    .line 56
    .line 57
    invoke-direct {v4, v2}, Lln5;-><init>(Lg45;)V

    .line 58
    .line 59
    .line 60
    new-instance v5, Lke;

    .line 61
    .line 62
    invoke-direct {v5, v2}, Lke;-><init>(Lg45;)V

    .line 63
    .line 64
    .line 65
    iget-object v5, v5, Lke;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v5, [Ll22;

    .line 68
    .line 69
    new-instance v6, Lzq8;

    .line 70
    .line 71
    invoke-direct {v6, v2}, Lzq8;-><init>(Lg45;)V

    .line 72
    .line 73
    .line 74
    iget-object v6, v6, Lzq8;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v6, [Ll22;

    .line 77
    .line 78
    new-instance v13, Lzq8;

    .line 79
    .line 80
    invoke-direct {v13, v2}, Lzq8;-><init>(Lg45;)V

    .line 81
    .line 82
    .line 83
    move/from16 v27, v10

    .line 84
    .line 85
    new-instance v10, Lzq8;

    .line 86
    .line 87
    invoke-direct {v10, v2}, Lzq8;-><init>(Lg45;)V

    .line 88
    .line 89
    .line 90
    iget-object v9, v2, Lg45;->a:Llr6;

    .line 91
    .line 92
    move-object/from16 v28, v14

    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    const/16 v14, 0x20

    .line 96
    .line 97
    invoke-virtual {v9, v8, v0, v14}, Lgo4;->update([BII)V

    .line 98
    .line 99
    .line 100
    int-to-byte v14, v11

    .line 101
    invoke-virtual {v9, v14}, Lgo4;->a(B)V

    .line 102
    .line 103
    .line 104
    int-to-byte v14, v7

    .line 105
    invoke-virtual {v9, v14}, Lgo4;->a(B)V

    .line 106
    .line 107
    .line 108
    const/16 v14, 0x80

    .line 109
    .line 110
    invoke-virtual {v9, v1, v0, v14}, Llr6;->l([BII)V

    .line 111
    .line 112
    .line 113
    const/16 v14, 0x20

    .line 114
    .line 115
    invoke-static {v1, v0, v15, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    .line 117
    .line 118
    const/16 v8, 0x40

    .line 119
    .line 120
    invoke-static {v1, v14, v12, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    .line 122
    .line 123
    const/16 v8, 0x60

    .line 124
    .line 125
    invoke-static {v1, v8, v3, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v15}, Lln5;->l([B)V

    .line 129
    .line 130
    .line 131
    const/4 v0, 0x0

    .line 132
    const/4 v1, 0x0

    .line 133
    :goto_0
    array-length v8, v5

    .line 134
    if-ge v0, v8, :cond_0

    .line 135
    .line 136
    aget-object v8, v5, v0

    .line 137
    .line 138
    add-int/lit8 v14, v1, 0x1

    .line 139
    .line 140
    int-to-short v14, v14

    .line 141
    invoke-virtual {v8, v12, v1}, Ll22;->k([BS)V

    .line 142
    .line 143
    .line 144
    add-int/lit8 v0, v0, 0x1

    .line 145
    .line 146
    move v1, v14

    .line 147
    goto :goto_0

    .line 148
    :cond_0
    int-to-short v0, v7

    .line 149
    const/4 v1, 0x0

    .line 150
    :goto_1
    array-length v8, v6

    .line 151
    if-ge v1, v8, :cond_1

    .line 152
    .line 153
    aget-object v8, v6, v1

    .line 154
    .line 155
    add-int/lit8 v14, v0, 0x1

    .line 156
    .line 157
    int-to-short v14, v14

    .line 158
    invoke-virtual {v8, v12, v0}, Ll22;->k([BS)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v1, v1, 0x1

    .line 162
    .line 163
    move v0, v14

    .line 164
    goto :goto_1

    .line 165
    :cond_1
    new-instance v0, Lke;

    .line 166
    .line 167
    invoke-direct {v0, v2}, Lke;-><init>(Lg45;)V

    .line 168
    .line 169
    .line 170
    const/4 v1, 0x0

    .line 171
    :goto_2
    array-length v8, v5

    .line 172
    if-ge v1, v8, :cond_2

    .line 173
    .line 174
    aget-object v8, v5, v1

    .line 175
    .line 176
    iget-object v12, v0, Lke;->b:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v12, [Ll22;

    .line 179
    .line 180
    aget-object v12, v12, v1

    .line 181
    .line 182
    iget-object v8, v8, Ll22;->b:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v8, [I

    .line 185
    .line 186
    iget-object v12, v12, Ll22;->b:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v12, [I

    .line 189
    .line 190
    move/from16 v25, v1

    .line 191
    .line 192
    const/4 v1, 0x0

    .line 193
    const/16 v14, 0x100

    .line 194
    .line 195
    invoke-static {v8, v1, v12, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    .line 197
    .line 198
    add-int/lit8 v1, v25, 0x1

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_2
    invoke-virtual {v0}, Lke;->j()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v13, v0}, Lln5;->n(Lzq8;Lke;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v13}, Lzq8;->C()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v13}, Lzq8;->z()V

    .line 211
    .line 212
    .line 213
    const/4 v0, 0x0

    .line 214
    :goto_3
    iget-object v1, v13, Lzq8;->b:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v1, [Ll22;

    .line 217
    .line 218
    array-length v4, v1

    .line 219
    if-ge v0, v4, :cond_4

    .line 220
    .line 221
    aget-object v1, v1, v0

    .line 222
    .line 223
    aget-object v4, v6, v0

    .line 224
    .line 225
    const/4 v8, 0x0

    .line 226
    :goto_4
    const/16 v14, 0x100

    .line 227
    .line 228
    if-ge v8, v14, :cond_3

    .line 229
    .line 230
    iget-object v12, v1, Ll22;->b:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v12, [I

    .line 233
    .line 234
    aget v14, v12, v8

    .line 235
    .line 236
    move/from16 v25, v0

    .line 237
    .line 238
    iget-object v0, v4, Ll22;->b:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v0, [I

    .line 241
    .line 242
    aget v0, v0, v8

    .line 243
    .line 244
    add-int/2addr v14, v0

    .line 245
    aput v14, v12, v8

    .line 246
    .line 247
    add-int/lit8 v8, v8, 0x1

    .line 248
    .line 249
    move/from16 v0, v25

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_3
    move/from16 v25, v0

    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    add-int/lit8 v0, v25, 0x1

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_4
    invoke-virtual {v13}, Lzq8;->r()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v13, v10}, Lzq8;->B(Lzq8;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v13, v2}, Lz85;->B(Lzq8;Lg45;)[B

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const/4 v1, 0x0

    .line 271
    const/16 v14, 0x20

    .line 272
    .line 273
    invoke-virtual {v9, v15, v1, v14}, Lgo4;->update([BII)V

    .line 274
    .line 275
    .line 276
    array-length v2, v0

    .line 277
    invoke-virtual {v9, v0, v1, v2}, Lgo4;->update([BII)V

    .line 278
    .line 279
    .line 280
    move-object/from16 v2, v28

    .line 281
    .line 282
    const/16 v8, 0x40

    .line 283
    .line 284
    invoke-virtual {v9, v2, v1, v8}, Llr6;->l([BII)V

    .line 285
    .line 286
    .line 287
    const/4 v4, 0x6

    .line 288
    new-array v8, v4, [[B

    .line 289
    .line 290
    aput-object v15, v8, v1

    .line 291
    .line 292
    aput-object v3, v8, v17

    .line 293
    .line 294
    aput-object v2, v8, v16

    .line 295
    .line 296
    mul-int v1, v7, v27

    .line 297
    .line 298
    new-array v1, v1, [B

    .line 299
    .line 300
    aput-object v1, v8, v21

    .line 301
    .line 302
    const/4 v1, 0x0

    .line 303
    :goto_5
    if-ge v1, v7, :cond_5

    .line 304
    .line 305
    aget-object v2, v5, v1

    .line 306
    .line 307
    aget-object v3, v8, v21

    .line 308
    .line 309
    mul-int v4, v1, v27

    .line 310
    .line 311
    invoke-virtual {v2, v3, v4}, Ll22;->e([BI)V

    .line 312
    .line 313
    .line 314
    add-int/lit8 v1, v1, 0x1

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_5
    mul-int v1, v11, v27

    .line 318
    .line 319
    new-array v1, v1, [B

    .line 320
    .line 321
    aput-object v1, v8, v20

    .line 322
    .line 323
    const/4 v1, 0x0

    .line 324
    :goto_6
    if-ge v1, v11, :cond_6

    .line 325
    .line 326
    aget-object v2, v6, v1

    .line 327
    .line 328
    aget-object v3, v8, v20

    .line 329
    .line 330
    mul-int v4, v1, v27

    .line 331
    .line 332
    invoke-virtual {v2, v3, v4}, Ll22;->e([BI)V

    .line 333
    .line 334
    .line 335
    add-int/lit8 v1, v1, 0x1

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :cond_6
    mul-int/lit16 v1, v11, 0x1a0

    .line 339
    .line 340
    new-array v1, v1, [B

    .line 341
    .line 342
    aput-object v1, v8, v19

    .line 343
    .line 344
    const/4 v1, 0x0

    .line 345
    :goto_7
    if-ge v1, v11, :cond_8

    .line 346
    .line 347
    iget-object v2, v10, Lzq8;->b:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v2, [Ll22;

    .line 350
    .line 351
    aget-object v2, v2, v1

    .line 352
    .line 353
    aget-object v3, v8, v19

    .line 354
    .line 355
    mul-int/lit16 v4, v1, 0x1a0

    .line 356
    .line 357
    const/4 v5, 0x0

    .line 358
    :goto_8
    const/16 v14, 0x20

    .line 359
    .line 360
    if-ge v5, v14, :cond_7

    .line 361
    .line 362
    mul-int/lit8 v6, v5, 0x8

    .line 363
    .line 364
    iget-object v7, v2, Ll22;->b:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v7, [I

    .line 367
    .line 368
    aget v9, v7, v6

    .line 369
    .line 370
    rsub-int v9, v9, 0x1000

    .line 371
    .line 372
    add-int/lit8 v12, v6, 0x1

    .line 373
    .line 374
    aget v12, v7, v12

    .line 375
    .line 376
    rsub-int v12, v12, 0x1000

    .line 377
    .line 378
    add-int/lit8 v13, v6, 0x2

    .line 379
    .line 380
    aget v13, v7, v13

    .line 381
    .line 382
    rsub-int v13, v13, 0x1000

    .line 383
    .line 384
    add-int/lit8 v14, v6, 0x3

    .line 385
    .line 386
    aget v14, v7, v14

    .line 387
    .line 388
    rsub-int v14, v14, 0x1000

    .line 389
    .line 390
    add-int/lit8 v15, v6, 0x4

    .line 391
    .line 392
    aget v15, v7, v15

    .line 393
    .line 394
    rsub-int v15, v15, 0x1000

    .line 395
    .line 396
    add-int/lit8 v23, v6, 0x5

    .line 397
    .line 398
    move-object/from16 v24, v0

    .line 399
    .line 400
    aget v0, v7, v23

    .line 401
    .line 402
    rsub-int v0, v0, 0x1000

    .line 403
    .line 404
    add-int/lit8 v23, v6, 0x6

    .line 405
    .line 406
    move/from16 v32, v0

    .line 407
    .line 408
    aget v0, v7, v23

    .line 409
    .line 410
    rsub-int v0, v0, 0x1000

    .line 411
    .line 412
    add-int/lit8 v6, v6, 0x7

    .line 413
    .line 414
    aget v6, v7, v6

    .line 415
    .line 416
    rsub-int v6, v6, 0x1000

    .line 417
    .line 418
    move/from16 v33, v0

    .line 419
    .line 420
    move/from16 v34, v6

    .line 421
    .line 422
    move/from16 v27, v9

    .line 423
    .line 424
    move/from16 v28, v12

    .line 425
    .line 426
    move/from16 v29, v13

    .line 427
    .line 428
    move/from16 v30, v14

    .line 429
    .line 430
    move/from16 v31, v15

    .line 431
    .line 432
    filled-new-array/range {v27 .. v34}, [I

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    mul-int/lit8 v6, v5, 0xd

    .line 437
    .line 438
    add-int/2addr v6, v4

    .line 439
    const/16 v26, 0x0

    .line 440
    .line 441
    aget v7, v0, v26

    .line 442
    .line 443
    int-to-byte v9, v7

    .line 444
    aput-byte v9, v3, v6

    .line 445
    .line 446
    add-int/lit8 v9, v6, 0x1

    .line 447
    .line 448
    shr-int/lit8 v7, v7, 0x8

    .line 449
    .line 450
    int-to-byte v7, v7

    .line 451
    aput-byte v7, v3, v9

    .line 452
    .line 453
    aget v12, v0, v17

    .line 454
    .line 455
    shl-int/lit8 v13, v12, 0x5

    .line 456
    .line 457
    int-to-byte v13, v13

    .line 458
    or-int/2addr v7, v13

    .line 459
    int-to-byte v7, v7

    .line 460
    aput-byte v7, v3, v9

    .line 461
    .line 462
    add-int/lit8 v7, v6, 0x2

    .line 463
    .line 464
    shr-int/lit8 v9, v12, 0x3

    .line 465
    .line 466
    int-to-byte v9, v9

    .line 467
    aput-byte v9, v3, v7

    .line 468
    .line 469
    add-int/lit8 v7, v6, 0x3

    .line 470
    .line 471
    shr-int/lit8 v9, v12, 0xb

    .line 472
    .line 473
    int-to-byte v9, v9

    .line 474
    aput-byte v9, v3, v7

    .line 475
    .line 476
    aget v12, v0, v16

    .line 477
    .line 478
    shl-int/lit8 v13, v12, 0x2

    .line 479
    .line 480
    int-to-byte v13, v13

    .line 481
    or-int/2addr v9, v13

    .line 482
    int-to-byte v9, v9

    .line 483
    aput-byte v9, v3, v7

    .line 484
    .line 485
    add-int/lit8 v7, v6, 0x4

    .line 486
    .line 487
    const/16 v22, 0x6

    .line 488
    .line 489
    shr-int/lit8 v9, v12, 0x6

    .line 490
    .line 491
    int-to-byte v9, v9

    .line 492
    aput-byte v9, v3, v7

    .line 493
    .line 494
    aget v12, v0, v21

    .line 495
    .line 496
    shl-int/lit8 v13, v12, 0x7

    .line 497
    .line 498
    int-to-byte v13, v13

    .line 499
    or-int/2addr v9, v13

    .line 500
    int-to-byte v9, v9

    .line 501
    aput-byte v9, v3, v7

    .line 502
    .line 503
    add-int/lit8 v7, v6, 0x5

    .line 504
    .line 505
    shr-int/lit8 v9, v12, 0x1

    .line 506
    .line 507
    int-to-byte v9, v9

    .line 508
    aput-byte v9, v3, v7

    .line 509
    .line 510
    add-int/lit8 v7, v6, 0x6

    .line 511
    .line 512
    shr-int/lit8 v9, v12, 0x9

    .line 513
    .line 514
    int-to-byte v9, v9

    .line 515
    aput-byte v9, v3, v7

    .line 516
    .line 517
    aget v12, v0, v20

    .line 518
    .line 519
    shl-int/lit8 v13, v12, 0x4

    .line 520
    .line 521
    int-to-byte v13, v13

    .line 522
    or-int/2addr v9, v13

    .line 523
    int-to-byte v9, v9

    .line 524
    aput-byte v9, v3, v7

    .line 525
    .line 526
    add-int/lit8 v7, v6, 0x7

    .line 527
    .line 528
    shr-int/lit8 v9, v12, 0x4

    .line 529
    .line 530
    int-to-byte v9, v9

    .line 531
    aput-byte v9, v3, v7

    .line 532
    .line 533
    add-int/lit8 v7, v6, 0x8

    .line 534
    .line 535
    shr-int/lit8 v9, v12, 0xc

    .line 536
    .line 537
    int-to-byte v9, v9

    .line 538
    aput-byte v9, v3, v7

    .line 539
    .line 540
    aget v12, v0, v19

    .line 541
    .line 542
    shl-int/lit8 v13, v12, 0x1

    .line 543
    .line 544
    int-to-byte v13, v13

    .line 545
    or-int/2addr v9, v13

    .line 546
    int-to-byte v9, v9

    .line 547
    aput-byte v9, v3, v7

    .line 548
    .line 549
    add-int/lit8 v7, v6, 0x9

    .line 550
    .line 551
    shr-int/lit8 v9, v12, 0x7

    .line 552
    .line 553
    int-to-byte v9, v9

    .line 554
    aput-byte v9, v3, v7

    .line 555
    .line 556
    const/16 v22, 0x6

    .line 557
    .line 558
    aget v12, v0, v22

    .line 559
    .line 560
    shl-int/lit8 v13, v12, 0x6

    .line 561
    .line 562
    int-to-byte v13, v13

    .line 563
    or-int/2addr v9, v13

    .line 564
    int-to-byte v9, v9

    .line 565
    aput-byte v9, v3, v7

    .line 566
    .line 567
    add-int/lit8 v7, v6, 0xa

    .line 568
    .line 569
    shr-int/lit8 v9, v12, 0x2

    .line 570
    .line 571
    int-to-byte v9, v9

    .line 572
    aput-byte v9, v3, v7

    .line 573
    .line 574
    add-int/lit8 v7, v6, 0xb

    .line 575
    .line 576
    shr-int/lit8 v9, v12, 0xa

    .line 577
    .line 578
    int-to-byte v9, v9

    .line 579
    aput-byte v9, v3, v7

    .line 580
    .line 581
    aget v0, v0, v18

    .line 582
    .line 583
    shl-int/lit8 v12, v0, 0x3

    .line 584
    .line 585
    int-to-byte v12, v12

    .line 586
    or-int/2addr v9, v12

    .line 587
    int-to-byte v9, v9

    .line 588
    aput-byte v9, v3, v7

    .line 589
    .line 590
    add-int/lit8 v6, v6, 0xc

    .line 591
    .line 592
    shr-int/lit8 v0, v0, 0x5

    .line 593
    .line 594
    int-to-byte v0, v0

    .line 595
    aput-byte v0, v3, v6

    .line 596
    .line 597
    add-int/lit8 v5, v5, 0x1

    .line 598
    .line 599
    move-object/from16 v0, v24

    .line 600
    .line 601
    goto/16 :goto_8

    .line 602
    .line 603
    :cond_7
    move-object/from16 v24, v0

    .line 604
    .line 605
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    add-int/lit8 v1, v1, 0x1

    .line 609
    .line 610
    goto/16 :goto_7

    .line 611
    .line 612
    :cond_8
    move-object/from16 v24, v0

    .line 613
    .line 614
    const/16 v26, 0x0

    .line 615
    .line 616
    aget-object v1, v8, v26

    .line 617
    .line 618
    aget-object v2, v8, v17

    .line 619
    .line 620
    aget-object v3, v8, v16

    .line 621
    .line 622
    aget-object v4, v8, v21

    .line 623
    .line 624
    aget-object v5, v8, v20

    .line 625
    .line 626
    aget-object v6, v8, v19

    .line 627
    .line 628
    move-object/from16 v8, p2

    .line 629
    .line 630
    move-object/from16 v7, v24

    .line 631
    .line 632
    move/from16 v0, v26

    .line 633
    .line 634
    const/4 v9, 0x0

    .line 635
    filled-new-array/range {v1 .. v8}, [[B

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    aget-object v2, v1, v0

    .line 640
    .line 641
    move-object/from16 v3, p0

    .line 642
    .line 643
    iput-object v2, v3, Li45;->c:[B

    .line 644
    .line 645
    aget-object v2, v1, v17

    .line 646
    .line 647
    iput-object v2, v3, Li45;->d:[B

    .line 648
    .line 649
    aget-object v2, v1, v16

    .line 650
    .line 651
    iput-object v2, v3, Li45;->e:[B

    .line 652
    .line 653
    aget-object v2, v1, v21

    .line 654
    .line 655
    iput-object v2, v3, Li45;->f:[B

    .line 656
    .line 657
    aget-object v2, v1, v20

    .line 658
    .line 659
    iput-object v2, v3, Li45;->k:[B

    .line 660
    .line 661
    aget-object v2, v1, v19

    .line 662
    .line 663
    iput-object v2, v3, Li45;->n:[B

    .line 664
    .line 665
    const/16 v22, 0x6

    .line 666
    .line 667
    aget-object v2, v1, v22

    .line 668
    .line 669
    iput-object v2, v3, Li45;->p:[B

    .line 670
    .line 671
    aget-object v1, v1, v18

    .line 672
    .line 673
    iput-object v1, v3, Li45;->q:[B

    .line 674
    .line 675
    move v7, v0

    .line 676
    goto/16 :goto_10

    .line 677
    .line 678
    :cond_9
    move-object v3, v0

    .line 679
    move/from16 v27, v10

    .line 680
    .line 681
    move v14, v13

    .line 682
    const/4 v0, 0x0

    .line 683
    const/4 v9, 0x0

    .line 684
    const/16 v20, 0x4

    .line 685
    .line 686
    const/16 v21, 0x3

    .line 687
    .line 688
    invoke-static {v8, v0, v14}, Lms8;->t([BII)[B

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    iput-object v1, v3, Li45;->c:[B

    .line 693
    .line 694
    const/16 v4, 0x40

    .line 695
    .line 696
    invoke-static {v8, v14, v4}, Lms8;->t([BII)[B

    .line 697
    .line 698
    .line 699
    move-result-object v5

    .line 700
    iput-object v5, v3, Li45;->d:[B

    .line 701
    .line 702
    const/16 v14, 0x80

    .line 703
    .line 704
    invoke-static {v8, v4, v14}, Lms8;->t([BII)[B

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    iput-object v4, v3, Li45;->e:[B

    .line 709
    .line 710
    mul-int v10, v7, v27

    .line 711
    .line 712
    add-int/2addr v10, v14

    .line 713
    invoke-static {v8, v14, v10}, Lms8;->t([BII)[B

    .line 714
    .line 715
    .line 716
    move-result-object v4

    .line 717
    iput-object v4, v3, Li45;->f:[B

    .line 718
    .line 719
    mul-int v5, v11, v27

    .line 720
    .line 721
    add-int/2addr v5, v10

    .line 722
    invoke-static {v8, v10, v5}, Lms8;->t([BII)[B

    .line 723
    .line 724
    .line 725
    move-result-object v6

    .line 726
    iput-object v6, v3, Li45;->k:[B

    .line 727
    .line 728
    mul-int/lit16 v10, v11, 0x1a0

    .line 729
    .line 730
    add-int/2addr v10, v5

    .line 731
    invoke-static {v8, v5, v10}, Lms8;->t([BII)[B

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    iput-object v5, v3, Li45;->n:[B

    .line 736
    .line 737
    new-instance v8, Lln5;

    .line 738
    .line 739
    invoke-direct {v8, v2}, Lln5;-><init>(Lg45;)V

    .line 740
    .line 741
    .line 742
    new-instance v10, Lke;

    .line 743
    .line 744
    invoke-direct {v10, v2}, Lke;-><init>(Lg45;)V

    .line 745
    .line 746
    .line 747
    iget-object v10, v10, Lke;->b:Ljava/lang/Object;

    .line 748
    .line 749
    check-cast v10, [Ll22;

    .line 750
    .line 751
    new-instance v12, Lzq8;

    .line 752
    .line 753
    invoke-direct {v12, v2}, Lzq8;-><init>(Lg45;)V

    .line 754
    .line 755
    .line 756
    iget-object v12, v12, Lzq8;->b:Ljava/lang/Object;

    .line 757
    .line 758
    check-cast v12, [Ll22;

    .line 759
    .line 760
    new-instance v13, Lzq8;

    .line 761
    .line 762
    invoke-direct {v13, v2}, Lzq8;-><init>(Lg45;)V

    .line 763
    .line 764
    .line 765
    new-instance v14, Lzq8;

    .line 766
    .line 767
    invoke-direct {v14, v2}, Lzq8;-><init>(Lg45;)V

    .line 768
    .line 769
    .line 770
    move v15, v0

    .line 771
    :goto_9
    if-ge v15, v7, :cond_a

    .line 772
    .line 773
    aget-object v9, v10, v15

    .line 774
    .line 775
    mul-int v0, v15, v27

    .line 776
    .line 777
    invoke-virtual {v9, v4, v0}, Ll22;->f([BI)V

    .line 778
    .line 779
    .line 780
    add-int/lit8 v15, v15, 0x1

    .line 781
    .line 782
    const/4 v0, 0x0

    .line 783
    const/4 v9, 0x0

    .line 784
    goto :goto_9

    .line 785
    :cond_a
    const/4 v0, 0x0

    .line 786
    :goto_a
    if-ge v0, v11, :cond_b

    .line 787
    .line 788
    aget-object v4, v12, v0

    .line 789
    .line 790
    mul-int v7, v0, v27

    .line 791
    .line 792
    invoke-virtual {v4, v6, v7}, Ll22;->f([BI)V

    .line 793
    .line 794
    .line 795
    add-int/lit8 v0, v0, 0x1

    .line 796
    .line 797
    goto :goto_a

    .line 798
    :cond_b
    const/4 v6, 0x0

    .line 799
    :goto_b
    if-ge v6, v11, :cond_d

    .line 800
    .line 801
    iget-object v0, v14, Lzq8;->b:Ljava/lang/Object;

    .line 802
    .line 803
    check-cast v0, [Ll22;

    .line 804
    .line 805
    aget-object v0, v0, v6

    .line 806
    .line 807
    mul-int/lit16 v4, v6, 0x1a0

    .line 808
    .line 809
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 810
    .line 811
    .line 812
    const/4 v7, 0x0

    .line 813
    :goto_c
    const/16 v9, 0x20

    .line 814
    .line 815
    if-ge v7, v9, :cond_c

    .line 816
    .line 817
    mul-int/lit8 v15, v7, 0xd

    .line 818
    .line 819
    add-int/2addr v15, v4

    .line 820
    mul-int/lit8 v24, v7, 0x8

    .line 821
    .line 822
    aget-byte v9, v5, v15

    .line 823
    .line 824
    and-int/lit16 v9, v9, 0xff

    .line 825
    .line 826
    add-int/lit8 v25, v15, 0x1

    .line 827
    .line 828
    move/from16 v27, v4

    .line 829
    .line 830
    aget-byte v4, v5, v25

    .line 831
    .line 832
    and-int/lit16 v4, v4, 0xff

    .line 833
    .line 834
    shl-int/lit8 v25, v4, 0x8

    .line 835
    .line 836
    or-int v9, v9, v25

    .line 837
    .line 838
    and-int/lit16 v9, v9, 0x1fff

    .line 839
    .line 840
    move/from16 v25, v4

    .line 841
    .line 842
    iget-object v4, v0, Ll22;->b:Ljava/lang/Object;

    .line 843
    .line 844
    check-cast v4, [I

    .line 845
    .line 846
    aput v9, v4, v24

    .line 847
    .line 848
    add-int/lit8 v9, v24, 0x1

    .line 849
    .line 850
    shr-int/lit8 v25, v25, 0x5

    .line 851
    .line 852
    add-int/lit8 v28, v15, 0x2

    .line 853
    .line 854
    move-object/from16 p2, v0

    .line 855
    .line 856
    aget-byte v0, v5, v28

    .line 857
    .line 858
    and-int/lit16 v0, v0, 0xff

    .line 859
    .line 860
    shl-int/lit8 v0, v0, 0x3

    .line 861
    .line 862
    or-int v0, v25, v0

    .line 863
    .line 864
    add-int/lit8 v25, v15, 0x3

    .line 865
    .line 866
    move/from16 v28, v0

    .line 867
    .line 868
    aget-byte v0, v5, v25

    .line 869
    .line 870
    and-int/lit16 v0, v0, 0xff

    .line 871
    .line 872
    shl-int/lit8 v25, v0, 0xb

    .line 873
    .line 874
    move/from16 v29, v0

    .line 875
    .line 876
    or-int v0, v28, v25

    .line 877
    .line 878
    and-int/lit16 v0, v0, 0x1fff

    .line 879
    .line 880
    aput v0, v4, v9

    .line 881
    .line 882
    add-int/lit8 v0, v24, 0x2

    .line 883
    .line 884
    shr-int/lit8 v25, v29, 0x2

    .line 885
    .line 886
    add-int/lit8 v28, v15, 0x4

    .line 887
    .line 888
    move/from16 v29, v0

    .line 889
    .line 890
    aget-byte v0, v5, v28

    .line 891
    .line 892
    and-int/lit16 v0, v0, 0xff

    .line 893
    .line 894
    shl-int/lit8 v28, v0, 0x6

    .line 895
    .line 896
    move/from16 v30, v0

    .line 897
    .line 898
    or-int v0, v25, v28

    .line 899
    .line 900
    and-int/lit16 v0, v0, 0x1fff

    .line 901
    .line 902
    aput v0, v4, v29

    .line 903
    .line 904
    add-int/lit8 v0, v24, 0x3

    .line 905
    .line 906
    shr-int/lit8 v25, v30, 0x7

    .line 907
    .line 908
    add-int/lit8 v28, v15, 0x5

    .line 909
    .line 910
    move/from16 v30, v0

    .line 911
    .line 912
    aget-byte v0, v5, v28

    .line 913
    .line 914
    and-int/lit16 v0, v0, 0xff

    .line 915
    .line 916
    shl-int/lit8 v0, v0, 0x1

    .line 917
    .line 918
    or-int v0, v25, v0

    .line 919
    .line 920
    add-int/lit8 v25, v15, 0x6

    .line 921
    .line 922
    move/from16 v28, v0

    .line 923
    .line 924
    aget-byte v0, v5, v25

    .line 925
    .line 926
    and-int/lit16 v0, v0, 0xff

    .line 927
    .line 928
    shl-int/lit8 v25, v0, 0x9

    .line 929
    .line 930
    move/from16 v31, v0

    .line 931
    .line 932
    or-int v0, v28, v25

    .line 933
    .line 934
    and-int/lit16 v0, v0, 0x1fff

    .line 935
    .line 936
    aput v0, v4, v30

    .line 937
    .line 938
    add-int/lit8 v0, v24, 0x4

    .line 939
    .line 940
    shr-int/lit8 v25, v31, 0x4

    .line 941
    .line 942
    add-int/lit8 v28, v15, 0x7

    .line 943
    .line 944
    move/from16 v31, v0

    .line 945
    .line 946
    aget-byte v0, v5, v28

    .line 947
    .line 948
    and-int/lit16 v0, v0, 0xff

    .line 949
    .line 950
    shl-int/lit8 v0, v0, 0x4

    .line 951
    .line 952
    or-int v0, v25, v0

    .line 953
    .line 954
    add-int/lit8 v25, v15, 0x8

    .line 955
    .line 956
    move/from16 v28, v0

    .line 957
    .line 958
    aget-byte v0, v5, v25

    .line 959
    .line 960
    and-int/lit16 v0, v0, 0xff

    .line 961
    .line 962
    shl-int/lit8 v25, v0, 0xc

    .line 963
    .line 964
    move/from16 v32, v0

    .line 965
    .line 966
    or-int v0, v28, v25

    .line 967
    .line 968
    and-int/lit16 v0, v0, 0x1fff

    .line 969
    .line 970
    aput v0, v4, v31

    .line 971
    .line 972
    add-int/lit8 v0, v24, 0x5

    .line 973
    .line 974
    shr-int/lit8 v25, v32, 0x1

    .line 975
    .line 976
    add-int/lit8 v28, v15, 0x9

    .line 977
    .line 978
    move/from16 v32, v0

    .line 979
    .line 980
    aget-byte v0, v5, v28

    .line 981
    .line 982
    and-int/lit16 v0, v0, 0xff

    .line 983
    .line 984
    shl-int/lit8 v28, v0, 0x7

    .line 985
    .line 986
    move/from16 v33, v0

    .line 987
    .line 988
    or-int v0, v25, v28

    .line 989
    .line 990
    and-int/lit16 v0, v0, 0x1fff

    .line 991
    .line 992
    aput v0, v4, v32

    .line 993
    .line 994
    add-int/lit8 v0, v24, 0x6

    .line 995
    .line 996
    const/16 v22, 0x6

    .line 997
    .line 998
    shr-int/lit8 v25, v33, 0x6

    .line 999
    .line 1000
    add-int/lit8 v28, v15, 0xa

    .line 1001
    .line 1002
    move/from16 v33, v0

    .line 1003
    .line 1004
    aget-byte v0, v5, v28

    .line 1005
    .line 1006
    and-int/lit16 v0, v0, 0xff

    .line 1007
    .line 1008
    shl-int/lit8 v0, v0, 0x2

    .line 1009
    .line 1010
    or-int v0, v25, v0

    .line 1011
    .line 1012
    add-int/lit8 v25, v15, 0xb

    .line 1013
    .line 1014
    move/from16 v28, v0

    .line 1015
    .line 1016
    aget-byte v0, v5, v25

    .line 1017
    .line 1018
    and-int/lit16 v0, v0, 0xff

    .line 1019
    .line 1020
    shl-int/lit8 v25, v0, 0xa

    .line 1021
    .line 1022
    move/from16 v34, v0

    .line 1023
    .line 1024
    or-int v0, v28, v25

    .line 1025
    .line 1026
    and-int/lit16 v0, v0, 0x1fff

    .line 1027
    .line 1028
    aput v0, v4, v33

    .line 1029
    .line 1030
    add-int/lit8 v0, v24, 0x7

    .line 1031
    .line 1032
    shr-int/lit8 v25, v34, 0x3

    .line 1033
    .line 1034
    add-int/lit8 v15, v15, 0xc

    .line 1035
    .line 1036
    aget-byte v15, v5, v15

    .line 1037
    .line 1038
    and-int/lit16 v15, v15, 0xff

    .line 1039
    .line 1040
    shl-int/lit8 v15, v15, 0x5

    .line 1041
    .line 1042
    or-int v15, v25, v15

    .line 1043
    .line 1044
    and-int/lit16 v15, v15, 0x1fff

    .line 1045
    .line 1046
    aput v15, v4, v0

    .line 1047
    .line 1048
    aget v15, v4, v24

    .line 1049
    .line 1050
    rsub-int v15, v15, 0x1000

    .line 1051
    .line 1052
    aput v15, v4, v24

    .line 1053
    .line 1054
    aget v15, v4, v9

    .line 1055
    .line 1056
    rsub-int v15, v15, 0x1000

    .line 1057
    .line 1058
    aput v15, v4, v9

    .line 1059
    .line 1060
    aget v9, v4, v29

    .line 1061
    .line 1062
    rsub-int v9, v9, 0x1000

    .line 1063
    .line 1064
    aput v9, v4, v29

    .line 1065
    .line 1066
    aget v9, v4, v30

    .line 1067
    .line 1068
    rsub-int v9, v9, 0x1000

    .line 1069
    .line 1070
    aput v9, v4, v30

    .line 1071
    .line 1072
    aget v9, v4, v31

    .line 1073
    .line 1074
    rsub-int v9, v9, 0x1000

    .line 1075
    .line 1076
    aput v9, v4, v31

    .line 1077
    .line 1078
    aget v9, v4, v32

    .line 1079
    .line 1080
    rsub-int v9, v9, 0x1000

    .line 1081
    .line 1082
    aput v9, v4, v32

    .line 1083
    .line 1084
    aget v9, v4, v33

    .line 1085
    .line 1086
    rsub-int v9, v9, 0x1000

    .line 1087
    .line 1088
    aput v9, v4, v33

    .line 1089
    .line 1090
    aget v9, v4, v0

    .line 1091
    .line 1092
    rsub-int v9, v9, 0x1000

    .line 1093
    .line 1094
    aput v9, v4, v0

    .line 1095
    .line 1096
    add-int/lit8 v7, v7, 0x1

    .line 1097
    .line 1098
    move-object/from16 v0, p2

    .line 1099
    .line 1100
    move/from16 v4, v27

    .line 1101
    .line 1102
    goto/16 :goto_c

    .line 1103
    .line 1104
    :cond_c
    const/16 v22, 0x6

    .line 1105
    .line 1106
    add-int/lit8 v6, v6, 0x1

    .line 1107
    .line 1108
    goto/16 :goto_b

    .line 1109
    .line 1110
    :cond_d
    invoke-virtual {v8, v1}, Lln5;->l([B)V

    .line 1111
    .line 1112
    .line 1113
    new-instance v0, Lke;

    .line 1114
    .line 1115
    invoke-direct {v0, v2}, Lke;-><init>(Lg45;)V

    .line 1116
    .line 1117
    .line 1118
    const/4 v6, 0x0

    .line 1119
    :goto_d
    array-length v1, v10

    .line 1120
    if-ge v6, v1, :cond_e

    .line 1121
    .line 1122
    aget-object v1, v10, v6

    .line 1123
    .line 1124
    iget-object v4, v0, Lke;->b:Ljava/lang/Object;

    .line 1125
    .line 1126
    check-cast v4, [Ll22;

    .line 1127
    .line 1128
    aget-object v4, v4, v6

    .line 1129
    .line 1130
    iget-object v1, v1, Ll22;->b:Ljava/lang/Object;

    .line 1131
    .line 1132
    check-cast v1, [I

    .line 1133
    .line 1134
    iget-object v4, v4, Ll22;->b:Ljava/lang/Object;

    .line 1135
    .line 1136
    check-cast v4, [I

    .line 1137
    .line 1138
    const/16 v5, 0x100

    .line 1139
    .line 1140
    const/4 v7, 0x0

    .line 1141
    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1142
    .line 1143
    .line 1144
    add-int/lit8 v6, v6, 0x1

    .line 1145
    .line 1146
    goto :goto_d

    .line 1147
    :cond_e
    const/4 v7, 0x0

    .line 1148
    invoke-virtual {v0}, Lke;->j()V

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v8, v13, v0}, Lln5;->n(Lzq8;Lke;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v13}, Lzq8;->C()V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v13}, Lzq8;->z()V

    .line 1158
    .line 1159
    .line 1160
    move v6, v7

    .line 1161
    :goto_e
    iget-object v0, v13, Lzq8;->b:Ljava/lang/Object;

    .line 1162
    .line 1163
    check-cast v0, [Ll22;

    .line 1164
    .line 1165
    array-length v1, v0

    .line 1166
    if-ge v6, v1, :cond_10

    .line 1167
    .line 1168
    aget-object v0, v0, v6

    .line 1169
    .line 1170
    aget-object v1, v12, v6

    .line 1171
    .line 1172
    move v4, v7

    .line 1173
    const/16 v5, 0x100

    .line 1174
    .line 1175
    :goto_f
    if-ge v4, v5, :cond_f

    .line 1176
    .line 1177
    iget-object v8, v0, Ll22;->b:Ljava/lang/Object;

    .line 1178
    .line 1179
    check-cast v8, [I

    .line 1180
    .line 1181
    aget v9, v8, v4

    .line 1182
    .line 1183
    iget-object v10, v1, Ll22;->b:Ljava/lang/Object;

    .line 1184
    .line 1185
    check-cast v10, [I

    .line 1186
    .line 1187
    aget v10, v10, v4

    .line 1188
    .line 1189
    add-int/2addr v9, v10

    .line 1190
    aput v9, v8, v4

    .line 1191
    .line 1192
    add-int/lit8 v4, v4, 0x1

    .line 1193
    .line 1194
    goto :goto_f

    .line 1195
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1196
    .line 1197
    .line 1198
    add-int/lit8 v6, v6, 0x1

    .line 1199
    .line 1200
    goto :goto_e

    .line 1201
    :cond_10
    invoke-virtual {v13}, Lzq8;->r()V

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v13, v14}, Lzq8;->B(Lzq8;)V

    .line 1205
    .line 1206
    .line 1207
    invoke-static {v13, v2}, Lz85;->B(Lzq8;Lg45;)[B

    .line 1208
    .line 1209
    .line 1210
    move-result-object v0

    .line 1211
    iput-object v0, v3, Li45;->p:[B

    .line 1212
    .line 1213
    const/4 v9, 0x0

    .line 1214
    iput-object v9, v3, Li45;->q:[B

    .line 1215
    .line 1216
    :goto_10
    if-eqz p3, :cond_12

    .line 1217
    .line 1218
    iget-object v0, v3, Li45;->p:[B

    .line 1219
    .line 1220
    move-object/from16 v1, p3

    .line 1221
    .line 1222
    iget-object v1, v1, Lj45;->d:[B

    .line 1223
    .line 1224
    invoke-static {v1}, Lms8;->k([B)[B

    .line 1225
    .line 1226
    .line 1227
    move-result-object v1

    .line 1228
    invoke-static {v0, v1}, Lms8;->r([B[B)Z

    .line 1229
    .line 1230
    .line 1231
    move-result v0

    .line 1232
    if-eqz v0, :cond_11

    .line 1233
    .line 1234
    goto :goto_11

    .line 1235
    :cond_11
    const-string v0, "passed in public key does not match private values"

    .line 1236
    .line 1237
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    throw v9

    .line 1241
    :cond_12
    :goto_11
    iget-object v0, v3, Li45;->q:[B

    .line 1242
    .line 1243
    if-eqz v0, :cond_13

    .line 1244
    .line 1245
    goto :goto_12

    .line 1246
    :cond_13
    move/from16 v7, v16

    .line 1247
    .line 1248
    :goto_12
    iput v7, v3, Li45;->r:I

    .line 1249
    .line 1250
    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 6

    .line 1
    iget-object v4, p0, Li45;->k:[B

    .line 2
    .line 3
    iget-object v5, p0, Li45;->n:[B

    .line 4
    .line 5
    iget-object v0, p0, Li45;->c:[B

    .line 6
    .line 7
    iget-object v1, p0, Li45;->d:[B

    .line 8
    .line 9
    iget-object v2, p0, Li45;->e:[B

    .line 10
    .line 11
    iget-object v3, p0, Li45;->f:[B

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lms8;->q([[B)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
