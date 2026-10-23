.class public final Lm24;
.super Lop4;


# instance fields
.field public final b:I

.field public final c:Z

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:J

.field public final k:J


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;JJZ)V
    .locals 2

    const/4 v0, 0x1

    .line 826
    invoke-direct {p0, v0}, Ln60;-><init>(Z)V

    const-wide/16 v0, 0x0

    .line 827
    iput-wide v0, p0, Lm24;->k:J

    iput p1, p0, Lm24;->b:I

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lm24;->d:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lm24;->e:Ljava/util/List;

    iput-wide p4, p0, Lm24;->k:J

    iput-wide p6, p0, Lm24;->f:J

    iput-boolean p8, p0, Lm24;->c:Z

    return-void
.end method

.method public constructor <init>(Lqp4;JJ)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {v1, v0}, Ln60;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    iput-wide v2, v1, Lm24;->k:J

    .line 10
    .line 11
    iput v0, v1, Lm24;->b:I

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iput-object v2, v1, Lm24;->d:Ljava/util/List;

    .line 18
    .line 19
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 20
    .line 21
    iput-object v2, v1, Lm24;->e:Ljava/util/List;

    .line 22
    .line 23
    move-wide/from16 v2, p2

    .line 24
    .line 25
    iput-wide v2, v1, Lm24;->k:J

    .line 26
    .line 27
    move-wide/from16 v4, p4

    .line 28
    .line 29
    iput-wide v4, v1, Lm24;->f:J

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    iput-boolean v4, v1, Lm24;->c:Z

    .line 33
    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v5, v1, Lm24;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    new-array v7, v6, [J

    .line 43
    .line 44
    monitor-enter p0

    .line 45
    monitor-exit p0

    .line 46
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    sub-int/2addr v8, v0

    .line 51
    :goto_0
    if-ltz v8, :cond_0

    .line 52
    .line 53
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    check-cast v9, Lqp4;

    .line 58
    .line 59
    iget-object v9, v9, Lqp4;->c:Lup4;

    .line 60
    .line 61
    iget v9, v9, Lup4;->c:I

    .line 62
    .line 63
    shl-int v10, v0, v9

    .line 64
    .line 65
    sub-int/2addr v10, v0

    .line 66
    int-to-long v10, v10

    .line 67
    and-long/2addr v10, v2

    .line 68
    aput-wide v10, v7, v8

    .line 69
    .line 70
    ushr-long/2addr v2, v9

    .line 71
    add-int/lit8 v8, v8, -0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    new-array v2, v2, [Lqp4;

    .line 79
    .line 80
    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, [Lqp4;

    .line 85
    .line 86
    iget-object v3, v1, Lm24;->e:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    new-array v8, v8, [Lsp4;

    .line 93
    .line 94
    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, [Lsp4;

    .line 99
    .line 100
    iget-object v8, v1, Lm24;->d:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    check-cast v8, Lqp4;

    .line 107
    .line 108
    aget-object v9, v2, v4

    .line 109
    .line 110
    invoke-virtual {v9}, Lqp4;->d()I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    sub-int/2addr v9, v0

    .line 115
    int-to-long v9, v9

    .line 116
    aget-wide v11, v7, v4

    .line 117
    .line 118
    cmp-long v9, v9, v11

    .line 119
    .line 120
    if-eqz v9, :cond_1

    .line 121
    .line 122
    iget-object v9, v8, Lqp4;->c:Lup4;

    .line 123
    .line 124
    iget-object v10, v8, Lqp4;->d:Llp4;

    .line 125
    .line 126
    long-to-int v11, v11

    .line 127
    iget-object v12, v8, Lqp4;->b:[B

    .line 128
    .line 129
    invoke-static {v12}, Lms8;->k([B)[B

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    iget-object v8, v8, Lqp4;->f:[B

    .line 134
    .line 135
    invoke-static {v8}, Lms8;->k([B)[B

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-static {v9, v10, v11, v12, v8}, Lod2;->j(Lup4;Llp4;I[B[B)Lqp4;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    aput-object v8, v2, v4

    .line 144
    .line 145
    move v8, v0

    .line 146
    goto :goto_1

    .line 147
    :cond_1
    move v8, v4

    .line 148
    :goto_1
    move v9, v0

    .line 149
    :goto_2
    if-ge v9, v6, :cond_d

    .line 150
    .line 151
    add-int/lit8 v10, v9, -0x1

    .line 152
    .line 153
    aget-object v11, v2, v10

    .line 154
    .line 155
    iget-object v12, v11, Lqp4;->d:Llp4;

    .line 156
    .line 157
    iget v12, v12, Llp4;->b:I

    .line 158
    .line 159
    const/16 v13, 0x10

    .line 160
    .line 161
    new-array v14, v13, [B

    .line 162
    .line 163
    new-array v15, v12, [B

    .line 164
    .line 165
    new-instance v13, Li67;

    .line 166
    .line 167
    iget-object v0, v11, Lqp4;->b:[B

    .line 168
    .line 169
    invoke-static {v0}, Lms8;->k([B)[B

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v4, v11, Lqp4;->f:[B

    .line 174
    .line 175
    invoke-static {v4}, Lms8;->k([B)[B

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    iget-object v11, v11, Lqp4;->d:Llp4;

    .line 180
    .line 181
    invoke-static {v11}, Lxh8;->o(Llp4;)Lhl2;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    invoke-direct {v13, v0, v4, v11}, Li67;-><init>([B[BLhl2;)V

    .line 186
    .line 187
    .line 188
    move-object/from16 p2, v2

    .line 189
    .line 190
    move-object/from16 p3, v3

    .line 191
    .line 192
    aget-wide v2, v7, v10

    .line 193
    .line 194
    long-to-int v0, v2

    .line 195
    iput v0, v13, Li67;->d:I

    .line 196
    .line 197
    const/4 v0, -0x2

    .line 198
    iput v0, v13, Li67;->e:I

    .line 199
    .line 200
    const/4 v0, 0x1

    .line 201
    const/4 v2, 0x0

    .line 202
    invoke-virtual {v13, v2, v0, v15}, Li67;->a(IZ[B)V

    .line 203
    .line 204
    .line 205
    new-array v3, v12, [B

    .line 206
    .line 207
    invoke-virtual {v13, v2, v2, v3}, Li67;->a(IZ[B)V

    .line 208
    .line 209
    .line 210
    const/16 v4, 0x10

    .line 211
    .line 212
    invoke-static {v3, v2, v14, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    .line 214
    .line 215
    add-int/lit8 v2, v6, -0x1

    .line 216
    .line 217
    if-ge v9, v2, :cond_3

    .line 218
    .line 219
    aget-wide v2, v7, v9

    .line 220
    .line 221
    aget-object v4, p2, v9

    .line 222
    .line 223
    invoke-virtual {v4}, Lqp4;->d()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    sub-int/2addr v4, v0

    .line 228
    int-to-long v11, v4

    .line 229
    cmp-long v0, v2, v11

    .line 230
    .line 231
    if-nez v0, :cond_2

    .line 232
    .line 233
    :goto_3
    const/4 v0, 0x1

    .line 234
    goto :goto_4

    .line 235
    :cond_2
    const/4 v0, 0x0

    .line 236
    goto :goto_4

    .line 237
    :cond_3
    aget-wide v2, v7, v9

    .line 238
    .line 239
    aget-object v0, p2, v9

    .line 240
    .line 241
    invoke-virtual {v0}, Lqp4;->d()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    int-to-long v11, v0

    .line 246
    cmp-long v0, v2, v11

    .line 247
    .line 248
    if-nez v0, :cond_2

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :goto_4
    aget-object v2, p2, v9

    .line 252
    .line 253
    iget-object v2, v2, Lqp4;->b:[B

    .line 254
    .line 255
    invoke-static {v2}, Lms8;->k([B)[B

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-static {v14, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_5

    .line 264
    .line 265
    aget-object v2, p2, v9

    .line 266
    .line 267
    iget-object v2, v2, Lqp4;->f:[B

    .line 268
    .line 269
    invoke-static {v2}, Lms8;->k([B)[B

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-static {v15, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_5

    .line 278
    .line 279
    if-nez v0, :cond_4

    .line 280
    .line 281
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    check-cast v0, Lqp4;

    .line 286
    .line 287
    iget-object v0, v0, Lqp4;->c:Lup4;

    .line 288
    .line 289
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    check-cast v2, Lqp4;

    .line 294
    .line 295
    iget-object v2, v2, Lqp4;->d:Llp4;

    .line 296
    .line 297
    aget-wide v3, v7, v9

    .line 298
    .line 299
    long-to-int v3, v3

    .line 300
    invoke-static {v0, v2, v3, v14, v15}, Lod2;->j(Lup4;Llp4;I[B[B)Lqp4;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    aput-object v0, p2, v9

    .line 305
    .line 306
    move-object/from16 v17, v5

    .line 307
    .line 308
    move/from16 p1, v6

    .line 309
    .line 310
    move-object/from16 v19, v7

    .line 311
    .line 312
    move/from16 v20, v9

    .line 313
    .line 314
    const/4 v8, 0x1

    .line 315
    :goto_5
    const/16 v16, 0x1

    .line 316
    .line 317
    goto/16 :goto_c

    .line 318
    .line 319
    :cond_4
    move-object/from16 v17, v5

    .line 320
    .line 321
    move/from16 p1, v6

    .line 322
    .line 323
    move-object/from16 v19, v7

    .line 324
    .line 325
    move/from16 v20, v9

    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_5
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    check-cast v0, Lqp4;

    .line 333
    .line 334
    iget-object v0, v0, Lqp4;->c:Lup4;

    .line 335
    .line 336
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    check-cast v2, Lqp4;

    .line 341
    .line 342
    iget-object v2, v2, Lqp4;->d:Llp4;

    .line 343
    .line 344
    aget-wide v3, v7, v9

    .line 345
    .line 346
    long-to-int v3, v3

    .line 347
    invoke-static {v0, v2, v3, v14, v15}, Lod2;->j(Lup4;Llp4;I[B[B)Lqp4;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    aput-object v0, p2, v9

    .line 352
    .line 353
    aget-object v2, p2, v10

    .line 354
    .line 355
    invoke-virtual {v0}, Lqp4;->f()Lrp4;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lrp4;->b()[B

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    iget-object v3, v2, Lqp4;->c:Lup4;

    .line 364
    .line 365
    iget v3, v3, Lup4;->c:I

    .line 366
    .line 367
    invoke-virtual {v2}, Lqp4;->d()I

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    monitor-enter v2

    .line 372
    :try_start_1
    iget v8, v2, Lqp4;->q:I

    .line 373
    .line 374
    iget v11, v2, Lqp4;->e:I

    .line 375
    .line 376
    if-ge v8, v11, :cond_c

    .line 377
    .line 378
    iget-object v11, v2, Lqp4;->d:Llp4;

    .line 379
    .line 380
    iget-object v12, v2, Lqp4;->b:[B

    .line 381
    .line 382
    iget-object v13, v2, Lqp4;->f:[B

    .line 383
    .line 384
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    :try_start_2
    iget v14, v2, Lqp4;->q:I

    .line 386
    .line 387
    const/16 v16, 0x1

    .line 388
    .line 389
    add-int/lit8 v14, v14, 0x1

    .line 390
    .line 391
    iput v14, v2, Lqp4;->q:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 392
    .line 393
    :try_start_3
    monitor-exit v2

    .line 394
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    shl-int v14, v16, v3

    .line 396
    .line 397
    add-int/2addr v14, v4

    .line 398
    new-array v4, v3, [[B

    .line 399
    .line 400
    const/4 v15, 0x0

    .line 401
    :goto_6
    if-ge v15, v3, :cond_6

    .line 402
    .line 403
    shl-int v17, v16, v15

    .line 404
    .line 405
    div-int v17, v14, v17

    .line 406
    .line 407
    move/from16 p1, v3

    .line 408
    .line 409
    xor-int/lit8 v3, v17, 0x1

    .line 410
    .line 411
    invoke-virtual {v2, v3}, Lqp4;->b(I)[B

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    aput-object v3, v4, v15

    .line 416
    .line 417
    add-int/lit8 v15, v15, 0x1

    .line 418
    .line 419
    move/from16 v3, p1

    .line 420
    .line 421
    const/16 v16, 0x1

    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_6
    iget-object v2, v2, Lqp4;->c:Lup4;

    .line 425
    .line 426
    iget v3, v11, Llp4;->b:I

    .line 427
    .line 428
    new-array v14, v3, [B

    .line 429
    .line 430
    new-instance v15, Li67;

    .line 431
    .line 432
    move-object/from16 v17, v5

    .line 433
    .line 434
    iget-object v5, v11, Llp4;->f:Lf1;

    .line 435
    .line 436
    invoke-static {v3, v5}, Lxh8;->f(ILf1;)Lhl2;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    invoke-direct {v15, v12, v13, v5}, Li67;-><init>([B[BLhl2;)V

    .line 441
    .line 442
    .line 443
    iput v8, v15, Li67;->d:I

    .line 444
    .line 445
    const/4 v5, -0x3

    .line 446
    iput v5, v15, Li67;->e:I

    .line 447
    .line 448
    const/4 v5, 0x0

    .line 449
    invoke-virtual {v15, v5, v5, v14}, Li67;->a(IZ[B)V

    .line 450
    .line 451
    .line 452
    iget-object v15, v11, Llp4;->f:Lf1;

    .line 453
    .line 454
    iget v5, v11, Llp4;->b:I

    .line 455
    .line 456
    invoke-static {v5, v15}, Lxh8;->f(ILf1;)Lhl2;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    array-length v15, v12

    .line 461
    move/from16 p1, v6

    .line 462
    .line 463
    const/4 v6, 0x0

    .line 464
    invoke-interface {v5, v12, v6, v15}, Lhl2;->update([BII)V

    .line 465
    .line 466
    .line 467
    invoke-static {v8, v5}, Lnc8;->q0(ILhl2;)V

    .line 468
    .line 469
    .line 470
    const/16 v15, -0x7f

    .line 471
    .line 472
    invoke-interface {v5, v15}, Lhl2;->a(B)V

    .line 473
    .line 474
    .line 475
    invoke-interface {v5, v15}, Lhl2;->a(B)V

    .line 476
    .line 477
    .line 478
    invoke-interface {v5, v14, v6, v3}, Lhl2;->update([BII)V

    .line 479
    .line 480
    .line 481
    array-length v3, v0

    .line 482
    invoke-interface {v5, v0, v6, v3}, Lhl2;->update([BII)V

    .line 483
    .line 484
    .line 485
    const/16 v0, 0x22

    .line 486
    .line 487
    new-array v0, v0, [B

    .line 488
    .line 489
    invoke-interface {v5, v0, v6}, Lhl2;->doFinal([BI)I

    .line 490
    .line 491
    .line 492
    iget v3, v11, Llp4;->b:I

    .line 493
    .line 494
    iget v5, v11, Llp4;->d:I

    .line 495
    .line 496
    iget v6, v11, Llp4;->c:I

    .line 497
    .line 498
    mul-int v15, v5, v3

    .line 499
    .line 500
    new-array v15, v15, [B

    .line 501
    .line 502
    move-object/from16 p5, v0

    .line 503
    .line 504
    iget-object v0, v11, Llp4;->f:Lf1;

    .line 505
    .line 506
    invoke-static {v3, v0}, Lxh8;->f(ILf1;)Lhl2;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    move/from16 v18, v6

    .line 511
    .line 512
    new-instance v6, Li67;

    .line 513
    .line 514
    move-object/from16 v19, v7

    .line 515
    .line 516
    iget-object v7, v11, Llp4;->f:Lf1;

    .line 517
    .line 518
    move/from16 v20, v9

    .line 519
    .line 520
    iget v9, v11, Llp4;->b:I

    .line 521
    .line 522
    invoke-static {v9, v7}, Lxh8;->f(ILf1;)Lhl2;

    .line 523
    .line 524
    .line 525
    move-result-object v7

    .line 526
    invoke-direct {v6, v12, v13, v7}, Li67;-><init>([B[BLhl2;)V

    .line 527
    .line 528
    .line 529
    iput v8, v6, Li67;->d:I

    .line 530
    .line 531
    const/16 v16, 0x1

    .line 532
    .line 533
    shl-int v7, v16, v18

    .line 534
    .line 535
    add-int/lit8 v7, v7, -0x1

    .line 536
    .line 537
    const/4 v9, 0x0

    .line 538
    const/4 v13, 0x0

    .line 539
    :goto_7
    mul-int/lit8 v21, v3, 0x8

    .line 540
    .line 541
    move/from16 v22, v7

    .line 542
    .line 543
    div-int v7, v21, v18

    .line 544
    .line 545
    const/16 v21, 0x8

    .line 546
    .line 547
    if-ge v9, v7, :cond_7

    .line 548
    .line 549
    add-int v13, v13, v22

    .line 550
    .line 551
    mul-int v7, v9, v18

    .line 552
    .line 553
    div-int/lit8 v7, v7, 0x8

    .line 554
    .line 555
    div-int v21, v21, v18

    .line 556
    .line 557
    move/from16 v23, v7

    .line 558
    .line 559
    not-int v7, v9

    .line 560
    const/16 v16, 0x1

    .line 561
    .line 562
    add-int/lit8 v21, v21, -0x1

    .line 563
    .line 564
    and-int v7, v7, v21

    .line 565
    .line 566
    mul-int v7, v7, v18

    .line 567
    .line 568
    aget-byte v21, p5, v23

    .line 569
    .line 570
    ushr-int v7, v21, v7

    .line 571
    .line 572
    and-int v7, v7, v22

    .line 573
    .line 574
    sub-int/2addr v13, v7

    .line 575
    add-int/lit8 v9, v9, 0x1

    .line 576
    .line 577
    move/from16 v7, v22

    .line 578
    .line 579
    goto :goto_7

    .line 580
    :cond_7
    iget v7, v11, Llp4;->e:I

    .line 581
    .line 582
    shl-int v7, v13, v7

    .line 583
    .line 584
    ushr-int/lit8 v9, v7, 0x8

    .line 585
    .line 586
    and-int/lit16 v9, v9, 0xff

    .line 587
    .line 588
    int-to-byte v9, v9

    .line 589
    aput-byte v9, p5, v3

    .line 590
    .line 591
    add-int/lit8 v9, v3, 0x1

    .line 592
    .line 593
    int-to-byte v7, v7

    .line 594
    aput-byte v7, p5, v9

    .line 595
    .line 596
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 597
    .line 598
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 599
    .line 600
    .line 601
    :try_start_4
    invoke-virtual {v7, v12}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 602
    .line 603
    .line 604
    ushr-int/lit8 v9, v8, 0x18

    .line 605
    .line 606
    int-to-byte v9, v9

    .line 607
    invoke-virtual {v7, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 608
    .line 609
    .line 610
    ushr-int/lit8 v9, v8, 0x10

    .line 611
    .line 612
    int-to-byte v9, v9

    .line 613
    invoke-virtual {v7, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 614
    .line 615
    .line 616
    ushr-int/lit8 v9, v8, 0x8

    .line 617
    .line 618
    int-to-byte v9, v9

    .line 619
    invoke-virtual {v7, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 620
    .line 621
    .line 622
    int-to-byte v9, v8

    .line 623
    invoke-virtual {v7, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 624
    .line 625
    .line 626
    add-int/lit8 v9, v3, 0x17

    .line 627
    .line 628
    :goto_8
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 629
    .line 630
    .line 631
    move-result v12

    .line 632
    if-ge v12, v9, :cond_8

    .line 633
    .line 634
    const/4 v12, 0x0

    .line 635
    invoke-virtual {v7, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 636
    .line 637
    .line 638
    goto :goto_8

    .line 639
    :cond_8
    const/4 v12, 0x0

    .line 640
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 641
    .line 642
    .line 643
    move-result-object v7

    .line 644
    iput v12, v6, Li67;->e:I

    .line 645
    .line 646
    const/4 v12, 0x0

    .line 647
    :goto_9
    if-ge v12, v5, :cond_b

    .line 648
    .line 649
    int-to-short v13, v12

    .line 650
    move/from16 v23, v5

    .line 651
    .line 652
    ushr-int/lit8 v5, v13, 0x8

    .line 653
    .line 654
    int-to-byte v5, v5

    .line 655
    const/16 v24, 0x14

    .line 656
    .line 657
    aput-byte v5, v7, v24

    .line 658
    .line 659
    const/16 v5, 0x15

    .line 660
    .line 661
    int-to-byte v13, v13

    .line 662
    aput-byte v13, v7, v5

    .line 663
    .line 664
    add-int/lit8 v5, v23, -0x1

    .line 665
    .line 666
    if-ge v12, v5, :cond_9

    .line 667
    .line 668
    const/4 v5, 0x1

    .line 669
    goto :goto_a

    .line 670
    :cond_9
    const/4 v5, 0x0

    .line 671
    :goto_a
    const/16 v13, 0x17

    .line 672
    .line 673
    invoke-virtual {v6, v13, v5, v7}, Li67;->a(IZ[B)V

    .line 674
    .line 675
    .line 676
    mul-int v5, v12, v18

    .line 677
    .line 678
    div-int/lit8 v5, v5, 0x8

    .line 679
    .line 680
    div-int v24, v21, v18

    .line 681
    .line 682
    not-int v13, v12

    .line 683
    const/16 v16, 0x1

    .line 684
    .line 685
    add-int/lit8 v24, v24, -0x1

    .line 686
    .line 687
    and-int v13, v13, v24

    .line 688
    .line 689
    mul-int v13, v13, v18

    .line 690
    .line 691
    aget-byte v5, p5, v5

    .line 692
    .line 693
    ushr-int/2addr v5, v13

    .line 694
    and-int v5, v5, v22

    .line 695
    .line 696
    const/4 v13, 0x0

    .line 697
    :goto_b
    if-ge v13, v5, :cond_a

    .line 698
    .line 699
    const/16 v24, 0x16

    .line 700
    .line 701
    move/from16 v25, v5

    .line 702
    .line 703
    int-to-byte v5, v13

    .line 704
    aput-byte v5, v7, v24

    .line 705
    .line 706
    const/4 v5, 0x0

    .line 707
    invoke-interface {v0, v7, v5, v9}, Lhl2;->update([BII)V

    .line 708
    .line 709
    .line 710
    const/16 v5, 0x17

    .line 711
    .line 712
    invoke-interface {v0, v7, v5}, Lhl2;->doFinal([BI)I

    .line 713
    .line 714
    .line 715
    add-int/lit8 v13, v13, 0x1

    .line 716
    .line 717
    move/from16 v5, v25

    .line 718
    .line 719
    goto :goto_b

    .line 720
    :cond_a
    const/16 v5, 0x17

    .line 721
    .line 722
    mul-int v13, v3, v12

    .line 723
    .line 724
    invoke-static {v7, v5, v15, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 725
    .line 726
    .line 727
    add-int/lit8 v12, v12, 0x1

    .line 728
    .line 729
    move/from16 v5, v23

    .line 730
    .line 731
    goto :goto_9

    .line 732
    :cond_b
    const/16 v16, 0x1

    .line 733
    .line 734
    new-instance v0, Lmp4;

    .line 735
    .line 736
    invoke-direct {v0, v11, v14, v15}, Lmp4;-><init>(Llp4;[B[B)V

    .line 737
    .line 738
    .line 739
    new-instance v3, Lsp4;

    .line 740
    .line 741
    invoke-direct {v3, v8, v0, v2, v4}, Lsp4;-><init>(ILmp4;Lup4;[[B)V

    .line 742
    .line 743
    .line 744
    aput-object v3, p3, v10

    .line 745
    .line 746
    move/from16 v8, v16

    .line 747
    .line 748
    :goto_c
    add-int/lit8 v9, v20, 0x1

    .line 749
    .line 750
    move/from16 v6, p1

    .line 751
    .line 752
    move-object/from16 v2, p2

    .line 753
    .line 754
    move-object/from16 v3, p3

    .line 755
    .line 756
    move/from16 v0, v16

    .line 757
    .line 758
    move-object/from16 v5, v17

    .line 759
    .line 760
    move-object/from16 v7, v19

    .line 761
    .line 762
    const/4 v4, 0x0

    .line 763
    goto/16 :goto_2

    .line 764
    .line 765
    :catch_0
    move-exception v0

    .line 766
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    invoke-static {v1, v0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 771
    .line 772
    .line 773
    const/4 v0, 0x0

    .line 774
    throw v0

    .line 775
    :catchall_0
    move-exception v0

    .line 776
    goto :goto_d

    .line 777
    :catchall_1
    move-exception v0

    .line 778
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 779
    :try_start_6
    throw v0

    .line 780
    :cond_c
    new-instance v0, Lvz2;

    .line 781
    .line 782
    const-string v1, "ots private key exhausted"

    .line 783
    .line 784
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    throw v0

    .line 788
    :goto_d
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 789
    throw v0

    .line 790
    :cond_d
    move-object/from16 p2, v2

    .line 791
    .line 792
    move-object/from16 p3, v3

    .line 793
    .line 794
    if-eqz v8, :cond_e

    .line 795
    .line 796
    monitor-enter p0

    .line 797
    :try_start_7
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    iput-object v0, v1, Lm24;->d:Ljava/util/List;

    .line 806
    .line 807
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    iput-object v0, v1, Lm24;->e:Ljava/util/List;

    .line 816
    .line 817
    monitor-exit p0

    .line 818
    return-void

    .line 819
    :catchall_2
    move-exception v0

    .line 820
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 821
    throw v0

    .line 822
    :cond_e
    return-void

    .line 823
    :catchall_3
    move-exception v0

    .line 824
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 825
    throw v0
.end method

.method public static a(Ljava/lang/Object;)Lm24;
    .locals 12

    .line 1
    instance-of v0, p0, Lm24;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lm24;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    check-cast v0, Ljava/io/DataInputStream;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    .line 27
    .line 28
    .line 29
    move-result-wide v7

    .line 30
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    .line 31
    .line 32
    .line 33
    move-result-wide v9

    .line 34
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 35
    .line 36
    .line 37
    move-result v11

    .line 38
    new-instance v5, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v6, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    move v1, v0

    .line 50
    :goto_0
    if-ge v1, v4, :cond_1

    .line 51
    .line 52
    invoke-static {p0}, Lqp4;->e(Ljava/lang/Object;)Lqp4;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    :goto_1
    add-int/lit8 v1, v4, -0x1

    .line 63
    .line 64
    if-ge v0, v1, :cond_2

    .line 65
    .line 66
    invoke-static {p0}, Lsp4;->a(Ljava/lang/Object;)Lsp4;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    new-instance v3, Lm24;

    .line 77
    .line 78
    invoke-direct/range {v3 .. v11}, Lm24;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;JJZ)V

    .line 79
    .line 80
    .line 81
    return-object v3

    .line 82
    :cond_3
    const-string p0, "unknown version for hss private key"

    .line 83
    .line 84
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_4
    instance-of v0, p0, [B

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    .line 93
    .line 94
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 95
    .line 96
    move-object v3, p0

    .line 97
    check-cast v3, [B

    .line 98
    .line 99
    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 100
    .line 101
    .line 102
    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    .line 104
    .line 105
    :try_start_1
    invoke-static {v2}, Lm24;->a(Ljava/lang/Object;)Lm24;

    .line 106
    .line 107
    .line 108
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 110
    .line 111
    .line 112
    return-object p0

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    move-object p0, v0

    .line 115
    move-object v1, v2

    .line 116
    goto :goto_2

    .line 117
    :catch_0
    :try_start_2
    invoke-static {p0}, Lqp4;->e(Ljava/lang/Object;)Lqp4;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    new-instance v3, Lm24;

    .line 122
    .line 123
    invoke-virtual {v4}, Lqp4;->d()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    int-to-long v5, p0

    .line 128
    iget p0, v4, Lqp4;->e:I

    .line 129
    .line 130
    int-to-long v7, p0

    .line 131
    invoke-direct/range {v3 .. v8}, Lm24;-><init>(Lqp4;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 135
    .line 136
    .line 137
    return-object v3

    .line 138
    :catchall_1
    move-exception v0

    .line 139
    move-object p0, v0

    .line 140
    :goto_2
    if-eqz v1, :cond_5

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 143
    .line 144
    .line 145
    :cond_5
    throw p0

    .line 146
    :cond_6
    instance-of v0, p0, Ljava/io/InputStream;

    .line 147
    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    check-cast p0, Ljava/io/InputStream;

    .line 151
    .line 152
    invoke-static {p0}, Liz1;->v(Ljava/io/InputStream;)[B

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {p0}, Lm24;->a(Ljava/lang/Object;)Lm24;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0

    .line 161
    :cond_7
    const-string v0, "cannot parse "

    .line 162
    .line 163
    invoke-static {p0, v0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-object v1
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lm24;->getEncoded()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lm24;->a(Ljava/lang/Object;)Lm24;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_7

    .line 7
    .line 8
    const-class v1, Lm24;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lm24;

    .line 18
    .line 19
    iget v1, p0, Lm24;->b:I

    .line 20
    .line 21
    iget v2, p1, Lm24;->b:I

    .line 22
    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    return v0

    .line 26
    :cond_2
    iget-boolean v1, p0, Lm24;->c:Z

    .line 27
    .line 28
    iget-boolean v2, p1, Lm24;->c:Z

    .line 29
    .line 30
    if-eq v1, v2, :cond_3

    .line 31
    .line 32
    return v0

    .line 33
    :cond_3
    iget-wide v1, p0, Lm24;->f:J

    .line 34
    .line 35
    iget-wide v3, p1, Lm24;->f:J

    .line 36
    .line 37
    cmp-long v1, v1, v3

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    return v0

    .line 42
    :cond_4
    iget-wide v1, p0, Lm24;->k:J

    .line 43
    .line 44
    iget-wide v3, p1, Lm24;->k:J

    .line 45
    .line 46
    cmp-long v1, v1, v3

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    return v0

    .line 51
    :cond_5
    iget-object v1, p0, Lm24;->d:Ljava/util/List;

    .line 52
    .line 53
    iget-object v2, p1, Lm24;->d:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_6

    .line 60
    .line 61
    return v0

    .line 62
    :cond_6
    iget-object p0, p0, Lm24;->e:Ljava/util/List;

    .line 63
    .line 64
    iget-object p1, p1, Lm24;->e:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0

    .line 71
    :cond_7
    :goto_0
    return v0
.end method

.method public final declared-synchronized getEncoded()[B
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lty3;

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    invoke-direct {v0, v1}, Lty3;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lty3;->g(I)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lm24;->b:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lty3;->g(I)V

    .line 15
    .line 16
    .line 17
    iget-wide v1, p0, Lm24;->k:J

    .line 18
    .line 19
    const/16 v3, 0x20

    .line 20
    .line 21
    ushr-long v4, v1, v3

    .line 22
    .line 23
    long-to-int v4, v4

    .line 24
    invoke-virtual {v0, v4}, Lty3;->g(I)V

    .line 25
    .line 26
    .line 27
    long-to-int v1, v1

    .line 28
    invoke-virtual {v0, v1}, Lty3;->g(I)V

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lm24;->f:J

    .line 32
    .line 33
    ushr-long v3, v1, v3

    .line 34
    .line 35
    long-to-int v3, v3

    .line 36
    invoke-virtual {v0, v3}, Lty3;->g(I)V

    .line 37
    .line 38
    .line 39
    long-to-int v1, v1

    .line 40
    invoke-virtual {v0, v1}, Lty3;->g(I)V

    .line 41
    .line 42
    .line 43
    iget-boolean v1, p0, Lm24;->c:Z

    .line 44
    .line 45
    iget-object v2, v0, Lty3;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Ljava/io/ByteArrayOutputStream;

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lm24;->d:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lqp4;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lty3;->a(Lwv2;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto :goto_2

    .line 76
    :cond_0
    iget-object v1, p0, Lm24;->e:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_1

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lsp4;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Lty3;->a(Lwv2;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    iget-object v0, v0, Lty3;->a:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 103
    .line 104
    .line 105
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    .line 107
    return-object v0

    .line 108
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    throw v0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Lm24;->b:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-boolean v1, p0, Lm24;->c:Z

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Lm24;->d:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr v1, v0

    .line 17
    mul-int/lit8 v1, v1, 0x1f

    .line 18
    .line 19
    iget-object v0, p0, Lm24;->e:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/2addr v0, v1

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-wide v1, p0, Lm24;->f:J

    .line 29
    .line 30
    const/16 v3, 0x20

    .line 31
    .line 32
    ushr-long v4, v1, v3

    .line 33
    .line 34
    xor-long/2addr v1, v4

    .line 35
    long-to-int v1, v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget-wide v1, p0, Lm24;->k:J

    .line 40
    .line 41
    ushr-long v3, v1, v3

    .line 42
    .line 43
    xor-long/2addr v1, v3

    .line 44
    long-to-int p0, v1

    .line 45
    add-int/2addr v0, p0

    .line 46
    return v0
.end method
