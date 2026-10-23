.class public final Lp45;
.super Lei0;


# instance fields
.field public final c:[B

.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final k:[B

.field public final n:[B

.field public final p:I


# direct methods
.method public constructor <init>(Lo45;[BLr45;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    invoke-direct {v0, v1, v4}, Lei0;-><init>(Ljava/lang/Object;Z)V

    .line 9
    .line 10
    .line 11
    new-instance v5, Lk45;

    .line 12
    .line 13
    iget v1, v1, Lo45;->b:I

    .line 14
    .line 15
    invoke-direct {v5, v1}, Lk45;-><init>(I)V

    .line 16
    .line 17
    .line 18
    array-length v1, v2

    .line 19
    const/4 v8, 0x0

    .line 20
    const/16 v9, 0x20

    .line 21
    .line 22
    iget v10, v5, Lk45;->e:I

    .line 23
    .line 24
    iget v11, v5, Lk45;->f:I

    .line 25
    .line 26
    const/16 v12, 0x40

    .line 27
    .line 28
    if-ne v1, v12, :cond_e

    .line 29
    .line 30
    invoke-static {v2, v8, v9}, Lms8;->t([BII)[B

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    array-length v13, v2

    .line 35
    invoke-static {v2, v9, v13}, Lms8;->t([BII)[B

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-instance v13, Lh26;

    .line 40
    .line 41
    iget-object v14, v5, Lk45;->a:Ll45;

    .line 42
    .line 43
    iget-object v15, v14, Ll45;->a:Lk45;

    .line 44
    .line 45
    invoke-direct {v13, v15}, Lh26;-><init>(Lk45;)V

    .line 46
    .line 47
    .line 48
    move/from16 v20, v4

    .line 49
    .line 50
    new-instance v4, Lh26;

    .line 51
    .line 52
    invoke-direct {v4, v15}, Lh26;-><init>(Lk45;)V

    .line 53
    .line 54
    .line 55
    const/16 p1, 0x2

    .line 56
    .line 57
    new-instance v7, Lh26;

    .line 58
    .line 59
    invoke-direct {v7, v15}, Lh26;-><init>(Lk45;)V

    .line 60
    .line 61
    .line 62
    new-array v12, v12, [B

    .line 63
    .line 64
    iget-object v6, v14, Ll45;->e:Lai5;

    .line 65
    .line 66
    iget v9, v14, Ll45;->b:I

    .line 67
    .line 68
    int-to-byte v8, v9

    .line 69
    move/from16 v17, v8

    .line 70
    .line 71
    array-length v8, v1

    .line 72
    add-int/lit8 v3, v8, 0x1

    .line 73
    .line 74
    new-array v3, v3, [B

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-static {v1, v0, v3, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    .line 79
    .line 80
    aput-byte v17, v3, v8

    .line 81
    .line 82
    iget-object v8, v6, Lai5;->c:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v8, Ljr6;

    .line 85
    .line 86
    iget-object v6, v6, Lai5;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v6, Llr6;

    .line 89
    .line 90
    move-object/from16 v17, v1

    .line 91
    .line 92
    array-length v1, v3

    .line 93
    invoke-virtual {v8, v3, v0, v1}, Lgo4;->update([BII)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v12, v0}, Ljr6;->doFinal([BI)I

    .line 97
    .line 98
    .line 99
    const/16 v1, 0x20

    .line 100
    .line 101
    new-array v3, v1, [B

    .line 102
    .line 103
    new-array v8, v1, [B

    .line 104
    .line 105
    invoke-static {v12, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    .line 107
    .line 108
    invoke-static {v12, v1, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    new-array v0, v9, [Lh26;

    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    :goto_0
    if-ge v1, v9, :cond_0

    .line 115
    .line 116
    new-instance v12, Lh26;

    .line 117
    .line 118
    invoke-direct {v12, v15}, Lh26;-><init>(Lk45;)V

    .line 119
    .line 120
    .line 121
    aput-object v12, v0, v1

    .line 122
    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    iget v1, v14, Ll45;->f:I

    .line 127
    .line 128
    mul-int/lit16 v1, v1, 0xa8

    .line 129
    .line 130
    add-int/lit8 v12, v1, 0x2

    .line 131
    .line 132
    new-array v12, v12, [B

    .line 133
    .line 134
    move-object/from16 v18, v0

    .line 135
    .line 136
    move-object/from16 p2, v2

    .line 137
    .line 138
    const/4 v0, 0x0

    .line 139
    :goto_1
    if-ge v0, v9, :cond_4

    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    :goto_2
    if-ge v2, v9, :cond_3

    .line 143
    .line 144
    move/from16 v23, v10

    .line 145
    .line 146
    int-to-byte v10, v2

    .line 147
    move/from16 v24, v2

    .line 148
    .line 149
    int-to-byte v2, v0

    .line 150
    invoke-virtual {v6}, Lgo4;->reset()V

    .line 151
    .line 152
    .line 153
    move/from16 v25, v0

    .line 154
    .line 155
    const/16 v0, 0x22

    .line 156
    .line 157
    move/from16 v26, v2

    .line 158
    .line 159
    new-array v2, v0, [B

    .line 160
    .line 161
    move/from16 v16, v10

    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    const/16 v10, 0x20

    .line 165
    .line 166
    invoke-static {v3, v0, v2, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    .line 168
    .line 169
    aput-byte v16, v2, v10

    .line 170
    .line 171
    const/16 v10, 0x21

    .line 172
    .line 173
    aput-byte v26, v2, v10

    .line 174
    .line 175
    const/16 v10, 0x22

    .line 176
    .line 177
    invoke-virtual {v6, v2, v0, v10}, Lgo4;->update([BII)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v12, v0, v1}, Llr6;->m([BII)V

    .line 181
    .line 182
    .line 183
    aget-object v2, v18, v25

    .line 184
    .line 185
    iget-object v2, v2, Lh26;->a:[Lg26;

    .line 186
    .line 187
    aget-object v2, v2, v24

    .line 188
    .line 189
    const/16 v10, 0x100

    .line 190
    .line 191
    invoke-static {v2, v0, v10, v12, v1}, Ll45;->a(Lg26;II[BI)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    move v0, v1

    .line 196
    :goto_3
    if-ge v2, v10, :cond_2

    .line 197
    .line 198
    rem-int/lit8 v10, v0, 0x3

    .line 199
    .line 200
    move/from16 v26, v0

    .line 201
    .line 202
    const/4 v0, 0x0

    .line 203
    :goto_4
    if-ge v0, v10, :cond_1

    .line 204
    .line 205
    sub-int v27, v26, v10

    .line 206
    .line 207
    add-int v27, v27, v0

    .line 208
    .line 209
    aget-byte v27, v12, v27

    .line 210
    .line 211
    aput-byte v27, v12, v0

    .line 212
    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_1
    const/16 v0, 0x150

    .line 217
    .line 218
    invoke-virtual {v6, v12, v10, v0}, Llr6;->m([BII)V

    .line 219
    .line 220
    .line 221
    add-int/lit16 v0, v10, 0xa8

    .line 222
    .line 223
    aget-object v10, v18, v25

    .line 224
    .line 225
    iget-object v10, v10, Lh26;->a:[Lg26;

    .line 226
    .line 227
    aget-object v10, v10, v24

    .line 228
    .line 229
    move/from16 v26, v1

    .line 230
    .line 231
    rsub-int v1, v2, 0x100

    .line 232
    .line 233
    invoke-static {v10, v2, v1, v12, v0}, Ll45;->a(Lg26;II[BI)I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    add-int/2addr v2, v1

    .line 238
    move/from16 v1, v26

    .line 239
    .line 240
    const/16 v10, 0x100

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_2
    move/from16 v26, v1

    .line 244
    .line 245
    add-int/lit8 v2, v24, 0x1

    .line 246
    .line 247
    move/from16 v10, v23

    .line 248
    .line 249
    move/from16 v0, v25

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_3
    move/from16 v25, v0

    .line 253
    .line 254
    move/from16 v26, v1

    .line 255
    .line 256
    move/from16 v23, v10

    .line 257
    .line 258
    add-int/lit8 v0, v25, 0x1

    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_4
    move/from16 v23, v10

    .line 262
    .line 263
    const/4 v0, 0x0

    .line 264
    const/4 v1, 0x0

    .line 265
    :goto_5
    iget-object v2, v13, Lh26;->a:[Lg26;

    .line 266
    .line 267
    if-ge v0, v9, :cond_5

    .line 268
    .line 269
    aget-object v2, v2, v0

    .line 270
    .line 271
    invoke-virtual {v2, v1, v8}, Lg26;->b(B[B)V

    .line 272
    .line 273
    .line 274
    add-int/lit8 v1, v1, 0x1

    .line 275
    .line 276
    int-to-byte v1, v1

    .line 277
    add-int/lit8 v0, v0, 0x1

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_5
    const/4 v0, 0x0

    .line 281
    :goto_6
    iget-object v6, v7, Lh26;->a:[Lg26;

    .line 282
    .line 283
    if-ge v0, v9, :cond_6

    .line 284
    .line 285
    aget-object v6, v6, v0

    .line 286
    .line 287
    invoke-virtual {v6, v1, v8}, Lg26;->b(B[B)V

    .line 288
    .line 289
    .line 290
    add-int/lit8 v1, v1, 0x1

    .line 291
    .line 292
    int-to-byte v1, v1

    .line 293
    add-int/lit8 v0, v0, 0x1

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_6
    invoke-virtual {v13}, Lh26;->a()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v7}, Lh26;->a()V

    .line 300
    .line 301
    .line 302
    const/4 v0, 0x0

    .line 303
    :goto_7
    iget-object v1, v4, Lh26;->a:[Lg26;

    .line 304
    .line 305
    if-ge v0, v9, :cond_a

    .line 306
    .line 307
    aget-object v7, v1, v0

    .line 308
    .line 309
    aget-object v8, v18, v0

    .line 310
    .line 311
    new-instance v10, Lg26;

    .line 312
    .line 313
    invoke-direct {v10, v15}, Lg26;-><init>(Lk45;)V

    .line 314
    .line 315
    .line 316
    iget-object v12, v8, Lh26;->a:[Lg26;

    .line 317
    .line 318
    const/16 v22, 0x0

    .line 319
    .line 320
    aget-object v12, v12, v22

    .line 321
    .line 322
    move/from16 v24, v0

    .line 323
    .line 324
    aget-object v0, v2, v22

    .line 325
    .line 326
    invoke-static {v7, v12, v0}, Lg26;->a(Lg26;Lg26;Lg26;)V

    .line 327
    .line 328
    .line 329
    move/from16 v0, v20

    .line 330
    .line 331
    :goto_8
    iget v12, v15, Lk45;->b:I

    .line 332
    .line 333
    if-ge v0, v12, :cond_8

    .line 334
    .line 335
    iget-object v12, v8, Lh26;->a:[Lg26;

    .line 336
    .line 337
    aget-object v12, v12, v0

    .line 338
    .line 339
    move/from16 v25, v0

    .line 340
    .line 341
    aget-object v0, v2, v25

    .line 342
    .line 343
    invoke-static {v10, v12, v0}, Lg26;->a(Lg26;Lg26;Lg26;)V

    .line 344
    .line 345
    .line 346
    const/4 v0, 0x0

    .line 347
    :goto_9
    const/16 v12, 0x100

    .line 348
    .line 349
    if-ge v0, v12, :cond_7

    .line 350
    .line 351
    iget-object v12, v7, Lg26;->a:[S

    .line 352
    .line 353
    aget-short v26, v12, v0

    .line 354
    .line 355
    move/from16 v27, v0

    .line 356
    .line 357
    iget-object v0, v10, Lg26;->a:[S

    .line 358
    .line 359
    aget-short v0, v0, v27

    .line 360
    .line 361
    add-int v0, v26, v0

    .line 362
    .line 363
    int-to-short v0, v0

    .line 364
    aput-short v0, v12, v27

    .line 365
    .line 366
    add-int/lit8 v0, v27, 0x1

    .line 367
    .line 368
    goto :goto_9

    .line 369
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    add-int/lit8 v0, v25, 0x1

    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_8
    invoke-virtual {v7}, Lg26;->c()V

    .line 376
    .line 377
    .line 378
    aget-object v0, v1, v24

    .line 379
    .line 380
    const/4 v1, 0x0

    .line 381
    :goto_a
    const/16 v12, 0x100

    .line 382
    .line 383
    if-ge v1, v12, :cond_9

    .line 384
    .line 385
    iget-object v7, v0, Lg26;->a:[S

    .line 386
    .line 387
    aget-short v7, v7, v1

    .line 388
    .line 389
    mul-int/lit16 v7, v7, 0x549

    .line 390
    .line 391
    invoke-static {v7}, Lwx3;->u(I)S

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    iget-object v8, v0, Lg26;->a:[S

    .line 396
    .line 397
    aput-short v7, v8, v1

    .line 398
    .line 399
    add-int/lit8 v1, v1, 0x1

    .line 400
    .line 401
    goto :goto_a

    .line 402
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    add-int/lit8 v0, v24, 0x1

    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_a
    const/4 v0, 0x0

    .line 409
    :goto_b
    iget v2, v4, Lh26;->b:I

    .line 410
    .line 411
    if-ge v0, v2, :cond_c

    .line 412
    .line 413
    aget-object v2, v1, v0

    .line 414
    .line 415
    aget-object v7, v6, v0

    .line 416
    .line 417
    const/4 v8, 0x0

    .line 418
    const/16 v12, 0x100

    .line 419
    .line 420
    :goto_c
    if-ge v8, v12, :cond_b

    .line 421
    .line 422
    iget-object v9, v2, Lg26;->a:[S

    .line 423
    .line 424
    aget-short v10, v9, v8

    .line 425
    .line 426
    iget-object v15, v7, Lg26;->a:[S

    .line 427
    .line 428
    aget-short v15, v15, v8

    .line 429
    .line 430
    add-int/2addr v10, v15

    .line 431
    int-to-short v10, v10

    .line 432
    aput-short v10, v9, v8

    .line 433
    .line 434
    add-int/lit8 v8, v8, 0x1

    .line 435
    .line 436
    goto :goto_c

    .line 437
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    add-int/lit8 v0, v0, 0x1

    .line 441
    .line 442
    goto :goto_b

    .line 443
    :cond_c
    const/4 v0, 0x0

    .line 444
    :goto_d
    if-ge v0, v2, :cond_d

    .line 445
    .line 446
    aget-object v6, v1, v0

    .line 447
    .line 448
    invoke-virtual {v6}, Lg26;->c()V

    .line 449
    .line 450
    .line 451
    add-int/lit8 v0, v0, 0x1

    .line 452
    .line 453
    goto :goto_d

    .line 454
    :cond_d
    iget v0, v14, Ll45;->c:I

    .line 455
    .line 456
    new-array v0, v0, [B

    .line 457
    .line 458
    invoke-virtual {v4}, Lh26;->b()[B

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    iget v2, v14, Ll45;->d:I

    .line 463
    .line 464
    const/4 v4, 0x0

    .line 465
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    .line 467
    .line 468
    const/16 v1, 0x20

    .line 469
    .line 470
    invoke-static {v3, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v13}, Lh26;->b()[B

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    filled-new-array {v0, v2}, [[B

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    new-array v2, v11, [B

    .line 482
    .line 483
    aget-object v3, v0, v20

    .line 484
    .line 485
    invoke-static {v3, v4, v2, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    .line 487
    .line 488
    new-array v1, v1, [B

    .line 489
    .line 490
    aget-object v3, v0, v4

    .line 491
    .line 492
    iget-object v5, v5, Lk45;->h:Lai5;

    .line 493
    .line 494
    iget-object v5, v5, Lai5;->d:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast v5, Ljr6;

    .line 497
    .line 498
    array-length v6, v3

    .line 499
    invoke-virtual {v5, v3, v4, v6}, Lgo4;->update([BII)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v5, v1, v4}, Ljr6;->doFinal([BI)I

    .line 503
    .line 504
    .line 505
    move/from16 v3, v23

    .line 506
    .line 507
    new-array v5, v3, [B

    .line 508
    .line 509
    aget-object v0, v0, v4

    .line 510
    .line 511
    invoke-static {v0, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    .line 513
    .line 514
    add-int/lit8 v10, v3, -0x20

    .line 515
    .line 516
    invoke-static {v5, v4, v10}, Lms8;->t([BII)[B

    .line 517
    .line 518
    .line 519
    move-result-object v14

    .line 520
    invoke-static {v5, v10, v3}, Lms8;->t([BII)[B

    .line 521
    .line 522
    .line 523
    move-result-object v15

    .line 524
    move-object/from16 v3, p2

    .line 525
    .line 526
    move-object/from16 v0, v17

    .line 527
    .line 528
    invoke-static {v0, v3}, Lms8;->p([B[B)[B

    .line 529
    .line 530
    .line 531
    move-result-object v19

    .line 532
    move-object/from16 v17, v1

    .line 533
    .line 534
    move-object/from16 v16, v2

    .line 535
    .line 536
    move-object/from16 v18, v3

    .line 537
    .line 538
    filled-new-array/range {v14 .. v19}, [[B

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    aget-object v1, v0, p1

    .line 543
    .line 544
    move-object/from16 v4, p0

    .line 545
    .line 546
    iput-object v1, v4, Lp45;->c:[B

    .line 547
    .line 548
    const/4 v1, 0x3

    .line 549
    aget-object v1, v0, v1

    .line 550
    .line 551
    iput-object v1, v4, Lp45;->d:[B

    .line 552
    .line 553
    const/4 v1, 0x4

    .line 554
    aget-object v1, v0, v1

    .line 555
    .line 556
    iput-object v1, v4, Lp45;->e:[B

    .line 557
    .line 558
    const/4 v1, 0x0

    .line 559
    aget-object v2, v0, v1

    .line 560
    .line 561
    iput-object v2, v4, Lp45;->f:[B

    .line 562
    .line 563
    aget-object v2, v0, v20

    .line 564
    .line 565
    iput-object v2, v4, Lp45;->k:[B

    .line 566
    .line 567
    const/4 v2, 0x5

    .line 568
    aget-object v0, v0, v2

    .line 569
    .line 570
    iput-object v0, v4, Lp45;->n:[B

    .line 571
    .line 572
    goto :goto_e

    .line 573
    :cond_e
    move-object v4, v0

    .line 574
    move v1, v8

    .line 575
    move v3, v10

    .line 576
    const/16 p1, 0x2

    .line 577
    .line 578
    invoke-static {v2, v1, v11}, Lms8;->t([BII)[B

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    iput-object v0, v4, Lp45;->c:[B

    .line 583
    .line 584
    add-int v10, v11, v3

    .line 585
    .line 586
    const/16 v16, 0x20

    .line 587
    .line 588
    add-int/lit8 v10, v10, -0x20

    .line 589
    .line 590
    invoke-static {v2, v11, v10}, Lms8;->t([BII)[B

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    iput-object v0, v4, Lp45;->f:[B

    .line 595
    .line 596
    add-int/lit8 v10, v3, -0x20

    .line 597
    .line 598
    add-int/2addr v10, v11

    .line 599
    add-int/lit8 v0, v10, 0x20

    .line 600
    .line 601
    invoke-static {v2, v10, v0}, Lms8;->t([BII)[B

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    iput-object v3, v4, Lp45;->k:[B

    .line 606
    .line 607
    add-int/lit8 v3, v10, 0x40

    .line 608
    .line 609
    invoke-static {v2, v0, v3}, Lms8;->t([BII)[B

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    iput-object v0, v4, Lp45;->d:[B

    .line 614
    .line 615
    add-int/lit8 v10, v10, 0x60

    .line 616
    .line 617
    invoke-static {v2, v3, v10}, Lms8;->t([BII)[B

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    iput-object v0, v4, Lp45;->e:[B

    .line 622
    .line 623
    const/4 v0, 0x0

    .line 624
    iput-object v0, v4, Lp45;->n:[B

    .line 625
    .line 626
    :goto_e
    if-eqz p3, :cond_10

    .line 627
    .line 628
    iget-object v0, v4, Lp45;->f:[B

    .line 629
    .line 630
    move-object/from16 v3, p3

    .line 631
    .line 632
    iget-object v2, v3, Lr45;->c:[B

    .line 633
    .line 634
    invoke-static {v0, v2}, Lms8;->r([B[B)Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-eqz v0, :cond_f

    .line 639
    .line 640
    iget-object v0, v4, Lp45;->k:[B

    .line 641
    .line 642
    iget-object v2, v3, Lr45;->d:[B

    .line 643
    .line 644
    invoke-static {v0, v2}, Lms8;->r([B[B)Z

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    if-eqz v0, :cond_f

    .line 649
    .line 650
    goto :goto_f

    .line 651
    :cond_f
    const-string v0, "passed in public key does not match private values"

    .line 652
    .line 653
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    const/16 v21, 0x0

    .line 657
    .line 658
    throw v21

    .line 659
    :cond_10
    :goto_f
    iget-object v0, v4, Lp45;->n:[B

    .line 660
    .line 661
    if-nez v0, :cond_11

    .line 662
    .line 663
    move/from16 v7, p1

    .line 664
    .line 665
    goto :goto_10

    .line 666
    :cond_11
    move v7, v1

    .line 667
    :goto_10
    iput v7, v4, Lp45;->p:I

    .line 668
    .line 669
    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lp45;->d:[B

    .line 2
    .line 3
    iget-object v1, p0, Lp45;->e:[B

    .line 4
    .line 5
    iget-object v2, p0, Lp45;->c:[B

    .line 6
    .line 7
    iget-object v3, p0, Lp45;->f:[B

    .line 8
    .line 9
    iget-object p0, p0, Lp45;->k:[B

    .line 10
    .line 11
    filled-new-array {v2, v3, p0, v0, v1}, [[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lms8;->q([[B)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
