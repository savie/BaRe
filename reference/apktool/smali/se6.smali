.class public final Lse6;
.super Lei0;


# instance fields
.field public final G:[B

.field public final H:[B

.field public final c:[B

.field public final d:[[S

.field public final e:[[S

.field public final f:[[S

.field public final k:[[S

.field public final n:[[[S

.field public final p:[[[S

.field public final q:[[[S

.field public final r:[[[S

.field public final t:[[[S

.field public final x:[[[S

.field public final y:[[[S


# direct methods
.method public constructor <init>(Lre6;[B)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v0, v3, v2}, Lei0;-><init>(ZLre6;)V

    .line 9
    .line 10
    .line 11
    iget-object v4, v2, Lre6;->f:Lq15;

    .line 12
    .line 13
    iget v5, v2, Lre6;->c:I

    .line 14
    .line 15
    iget v6, v2, Lre6;->b:I

    .line 16
    .line 17
    iget v7, v2, Lre6;->a:I

    .line 18
    .line 19
    iget v8, v2, Lre6;->k:I

    .line 20
    .line 21
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    const/16 v10, 0x20

    .line 24
    .line 25
    const/4 v11, 0x3

    .line 26
    const/4 v13, 0x0

    .line 27
    if-ne v8, v11, :cond_5

    .line 28
    .line 29
    invoke-static {v1, v13, v10}, Lms8;->t([BII)[B

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    iput-object v8, v0, Lse6;->G:[B

    .line 34
    .line 35
    const/16 v11, 0x40

    .line 36
    .line 37
    invoke-static {v1, v10, v11}, Lms8;->t([BII)[B

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v0, Lse6;->c:[B

    .line 42
    .line 43
    invoke-static {v1}, Lms8;->k([B)[B

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v8}, Lms8;->k([B)[B

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    new-instance v10, Lqe6;

    .line 52
    .line 53
    invoke-direct {v10, v1, v4}, Lqe6;-><init>([BLq15;)V

    .line 54
    .line 55
    .line 56
    new-instance v11, Lqe6;

    .line 57
    .line 58
    invoke-direct {v11, v8, v4}, Lqe6;-><init>([BLq15;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v10, v6, v5}, Lx13;->p(Lqe6;II)[[S

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v10, v7, v6}, Lx13;->p(Lqe6;II)[[S

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-static {v10, v7, v5}, Lx13;->p(Lqe6;II)[[S

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    invoke-static {v10, v6, v5}, Lx13;->p(Lqe6;II)[[S

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    const/16 v16, 0x0

    .line 78
    .line 79
    invoke-static {v8, v10}, Lbb9;->C([[S[[S)[[S

    .line 80
    .line 81
    .line 82
    move-result-object v15

    .line 83
    invoke-static {v15, v14}, Lbb9;->g([[S[[S)[[S

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    invoke-static {v11, v6, v7, v7, v3}, Lx13;->o(Lqe6;IIIZ)[[[S

    .line 88
    .line 89
    .line 90
    move-result-object v15

    .line 91
    invoke-static {v11, v6, v7, v6, v13}, Lx13;->o(Lqe6;IIIZ)[[[S

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    move-object/from16 p2, v1

    .line 96
    .line 97
    invoke-static {v11, v5, v7, v7, v3}, Lx13;->o(Lqe6;IIIZ)[[[S

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v11, v5, v7, v6, v13}, Lx13;->o(Lqe6;IIIZ)[[[S

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v11, v5, v7, v5, v13}, Lx13;->o(Lqe6;IIIZ)[[[S

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-static {v11, v5, v6, v6, v3}, Lx13;->o(Lqe6;IIIZ)[[[S

    .line 110
    .line 111
    .line 112
    move-result-object v18

    .line 113
    invoke-static {v11, v5, v6, v5, v13}, Lx13;->o(Lqe6;IIIZ)[[[S

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    invoke-static {v4, v1, v15}, Lbb9;->E([[S[[[S[[[S)[[[S

    .line 118
    .line 119
    .line 120
    move-result-object v15

    .line 121
    invoke-static {v4, v2, v12}, Lbb9;->E([[S[[[S[[[S)[[[S

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    invoke-static {v15}, Lx13;->j([[[S)[[[S

    .line 126
    .line 127
    .line 128
    move-result-object v19

    .line 129
    move/from16 v20, v3

    .line 130
    .line 131
    new-array v3, v6, [[[S

    .line 132
    .line 133
    move/from16 v21, v13

    .line 134
    .line 135
    :goto_0
    if-ge v13, v6, :cond_0

    .line 136
    .line 137
    aget-object v22, v15, v13

    .line 138
    .line 139
    move-object/from16 v23, v1

    .line 140
    .line 141
    invoke-static/range {v22 .. v22}, Lbb9;->h([[S)[[S

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    aput-object v1, v3, v13

    .line 146
    .line 147
    invoke-static {v1, v8}, Lbb9;->C([[S[[S)[[S

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    aput-object v1, v3, v13

    .line 152
    .line 153
    move-object/from16 v22, v2

    .line 154
    .line 155
    aget-object v2, v12, v13

    .line 156
    .line 157
    invoke-static {v1, v2}, Lbb9;->g([[S[[S)[[S

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    aput-object v1, v3, v13

    .line 162
    .line 163
    add-int/lit8 v13, v13, 0x1

    .line 164
    .line 165
    move-object/from16 v2, v22

    .line 166
    .line 167
    move-object/from16 v1, v23

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_0
    move-object/from16 v23, v1

    .line 171
    .line 172
    move-object/from16 v22, v2

    .line 173
    .line 174
    new-array v1, v5, [[[S

    .line 175
    .line 176
    new-array v12, v5, [[[S

    .line 177
    .line 178
    new-array v13, v5, [[[S

    .line 179
    .line 180
    new-array v2, v5, [[[S

    .line 181
    .line 182
    invoke-static/range {v23 .. v23}, Lx13;->j([[[S)[[[S

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    move/from16 v15, v21

    .line 187
    .line 188
    :goto_1
    if-ge v15, v5, :cond_4

    .line 189
    .line 190
    aget-object v24, v23, v15

    .line 191
    .line 192
    move-object/from16 v25, v1

    .line 193
    .line 194
    invoke-static/range {v24 .. v24}, Lbb9;->h([[S)[[S

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    move-object/from16 v24, v2

    .line 199
    .line 200
    invoke-static {v1, v8}, Lbb9;->C([[S[[S)[[S

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    aput-object v2, v25, v15

    .line 205
    .line 206
    move-object/from16 v26, v3

    .line 207
    .line 208
    aget-object v3, v22, v15

    .line 209
    .line 210
    invoke-static {v2, v3}, Lbb9;->g([[S[[S)[[S

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    aput-object v2, v25, v15

    .line 215
    .line 216
    invoke-static {v1, v14}, Lbb9;->C([[S[[S)[[S

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    aput-object v1, v12, v15

    .line 221
    .line 222
    aget-object v1, v22, v15

    .line 223
    .line 224
    invoke-static {v1, v10}, Lbb9;->C([[S[[S)[[S

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    aget-object v2, v12, v15

    .line 229
    .line 230
    invoke-static {v2, v1}, Lbb9;->g([[S[[S)[[S

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    aput-object v1, v12, v15

    .line 235
    .line 236
    aget-object v2, v7, v15

    .line 237
    .line 238
    invoke-static {v1, v2}, Lbb9;->g([[S[[S)[[S

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    aput-object v1, v12, v15

    .line 243
    .line 244
    aget-object v1, v23, v15

    .line 245
    .line 246
    invoke-static {v1, v8}, Lbb9;->C([[S[[S)[[S

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    aget-object v2, v22, v15

    .line 251
    .line 252
    invoke-static {v1, v2}, Lbb9;->g([[S[[S)[[S

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-static {v8}, Lbb9;->O([[S)[[S

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-static {v2, v1}, Lbb9;->C([[S[[S)[[S

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    aput-object v1, v13, v15

    .line 265
    .line 266
    aget-object v3, v18, v15

    .line 267
    .line 268
    invoke-static {v1, v3}, Lbb9;->g([[S[[S)[[S

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    aput-object v1, v13, v15

    .line 273
    .line 274
    array-length v3, v1

    .line 275
    move-object/from16 v27, v4

    .line 276
    .line 277
    aget-object v4, v1, v21

    .line 278
    .line 279
    array-length v4, v4

    .line 280
    if-ne v3, v4, :cond_3

    .line 281
    .line 282
    array-length v3, v1

    .line 283
    array-length v4, v1

    .line 284
    move/from16 v28, v3

    .line 285
    .line 286
    move/from16 v29, v4

    .line 287
    .line 288
    const/4 v3, 0x2

    .line 289
    new-array v4, v3, [I

    .line 290
    .line 291
    aput v29, v4, v20

    .line 292
    .line 293
    aput v28, v4, v21

    .line 294
    .line 295
    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    check-cast v3, [[S

    .line 300
    .line 301
    move-object/from16 v28, v3

    .line 302
    .line 303
    move/from16 v4, v21

    .line 304
    .line 305
    :goto_2
    array-length v3, v1

    .line 306
    if-ge v4, v3, :cond_2

    .line 307
    .line 308
    aget-object v3, v28, v4

    .line 309
    .line 310
    aget-object v29, v1, v4

    .line 311
    .line 312
    aget-short v29, v29, v4

    .line 313
    .line 314
    aput-short v29, v3, v4

    .line 315
    .line 316
    add-int/lit8 v3, v4, 0x1

    .line 317
    .line 318
    move-object/from16 v29, v1

    .line 319
    .line 320
    move v1, v3

    .line 321
    move/from16 v30, v1

    .line 322
    .line 323
    :goto_3
    aget-object v3, v29, v21

    .line 324
    .line 325
    array-length v3, v3

    .line 326
    if-ge v1, v3, :cond_1

    .line 327
    .line 328
    aget-object v3, v28, v4

    .line 329
    .line 330
    aget-object v31, v29, v4

    .line 331
    .line 332
    aget-short v31, v31, v1

    .line 333
    .line 334
    aget-object v32, v29, v1

    .line 335
    .line 336
    aget-short v32, v32, v4

    .line 337
    .line 338
    sget-object v33, Liu3;->a:[[B

    .line 339
    .line 340
    move/from16 v33, v1

    .line 341
    .line 342
    xor-int v1, v31, v32

    .line 343
    .line 344
    int-to-short v1, v1

    .line 345
    aput-short v1, v3, v33

    .line 346
    .line 347
    add-int/lit8 v1, v33, 0x1

    .line 348
    .line 349
    goto :goto_3

    .line 350
    :cond_1
    move-object/from16 v1, v29

    .line 351
    .line 352
    move/from16 v4, v30

    .line 353
    .line 354
    goto :goto_2

    .line 355
    :cond_2
    aput-object v28, v13, v15

    .line 356
    .line 357
    aget-object v1, v12, v15

    .line 358
    .line 359
    invoke-static {v2, v1}, Lbb9;->C([[S[[S)[[S

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    aput-object v1, v24, v15

    .line 364
    .line 365
    aget-object v1, v22, v15

    .line 366
    .line 367
    invoke-static {v1}, Lbb9;->O([[S)[[S

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-static {v1, v14}, Lbb9;->C([[S[[S)[[S

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    aget-object v2, v24, v15

    .line 376
    .line 377
    invoke-static {v2, v1}, Lbb9;->g([[S[[S)[[S

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    aput-object v1, v24, v15

    .line 382
    .line 383
    aget-object v1, v18, v15

    .line 384
    .line 385
    invoke-static {v1}, Lbb9;->h([[S)[[S

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-static {v1, v10}, Lbb9;->C([[S[[S)[[S

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    aget-object v2, v24, v15

    .line 394
    .line 395
    invoke-static {v2, v1}, Lbb9;->g([[S[[S)[[S

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    aput-object v1, v24, v15

    .line 400
    .line 401
    aget-object v2, v11, v15

    .line 402
    .line 403
    invoke-static {v1, v2}, Lbb9;->g([[S[[S)[[S

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    aput-object v1, v24, v15

    .line 408
    .line 409
    add-int/lit8 v15, v15, 0x1

    .line 410
    .line 411
    move-object/from16 v2, v24

    .line 412
    .line 413
    move-object/from16 v1, v25

    .line 414
    .line 415
    move-object/from16 v3, v26

    .line 416
    .line 417
    move-object/from16 v4, v27

    .line 418
    .line 419
    goto/16 :goto_1

    .line 420
    .line 421
    :cond_3
    const-string v0, "Computation to upper triangular matrix is not possible!"

    .line 422
    .line 423
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    throw v16

    .line 427
    :cond_4
    move-object/from16 v25, v1

    .line 428
    .line 429
    move-object/from16 v24, v2

    .line 430
    .line 431
    move-object/from16 v26, v3

    .line 432
    .line 433
    move-object/from16 v27, v4

    .line 434
    .line 435
    new-instance v1, Lse6;

    .line 436
    .line 437
    move-object v2, v10

    .line 438
    move-object v10, v6

    .line 439
    move-object v6, v2

    .line 440
    move-object/from16 v2, p1

    .line 441
    .line 442
    move-object/from16 v3, p2

    .line 443
    .line 444
    move-object v5, v8

    .line 445
    move-object v7, v14

    .line 446
    move-object/from16 v8, v19

    .line 447
    .line 448
    move-object/from16 v14, v24

    .line 449
    .line 450
    move-object/from16 v11, v25

    .line 451
    .line 452
    move-object/from16 v9, v26

    .line 453
    .line 454
    invoke-direct/range {v1 .. v14}, Lse6;-><init>(Lre6;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S)V

    .line 455
    .line 456
    .line 457
    move-object/from16 v2, v16

    .line 458
    .line 459
    iput-object v2, v0, Lse6;->H:[B

    .line 460
    .line 461
    iget-object v2, v1, Lse6;->d:[[S

    .line 462
    .line 463
    iput-object v2, v0, Lse6;->d:[[S

    .line 464
    .line 465
    iget-object v2, v1, Lse6;->e:[[S

    .line 466
    .line 467
    iput-object v2, v0, Lse6;->e:[[S

    .line 468
    .line 469
    iget-object v2, v1, Lse6;->f:[[S

    .line 470
    .line 471
    iput-object v2, v0, Lse6;->f:[[S

    .line 472
    .line 473
    iget-object v2, v1, Lse6;->k:[[S

    .line 474
    .line 475
    iput-object v2, v0, Lse6;->k:[[S

    .line 476
    .line 477
    iget-object v2, v1, Lse6;->n:[[[S

    .line 478
    .line 479
    iput-object v2, v0, Lse6;->n:[[[S

    .line 480
    .line 481
    iget-object v2, v1, Lse6;->p:[[[S

    .line 482
    .line 483
    iput-object v2, v0, Lse6;->p:[[[S

    .line 484
    .line 485
    iget-object v2, v1, Lse6;->q:[[[S

    .line 486
    .line 487
    iput-object v2, v0, Lse6;->q:[[[S

    .line 488
    .line 489
    iget-object v2, v1, Lse6;->r:[[[S

    .line 490
    .line 491
    iput-object v2, v0, Lse6;->r:[[[S

    .line 492
    .line 493
    iget-object v2, v1, Lse6;->t:[[[S

    .line 494
    .line 495
    iput-object v2, v0, Lse6;->t:[[[S

    .line 496
    .line 497
    iget-object v2, v1, Lse6;->x:[[[S

    .line 498
    .line 499
    iput-object v2, v0, Lse6;->x:[[[S

    .line 500
    .line 501
    iget-object v1, v1, Lse6;->y:[[[S

    .line 502
    .line 503
    iput-object v1, v0, Lse6;->y:[[[S

    .line 504
    .line 505
    return-void

    .line 506
    :cond_5
    move/from16 v20, v3

    .line 507
    .line 508
    move/from16 v21, v13

    .line 509
    .line 510
    const/4 v3, 0x2

    .line 511
    new-array v2, v3, [I

    .line 512
    .line 513
    aput v5, v2, v20

    .line 514
    .line 515
    aput v6, v2, v21

    .line 516
    .line 517
    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    check-cast v2, [[S

    .line 522
    .line 523
    iput-object v2, v0, Lse6;->d:[[S

    .line 524
    .line 525
    new-array v4, v3, [I

    .line 526
    .line 527
    aput v6, v4, v20

    .line 528
    .line 529
    aput v7, v4, v21

    .line 530
    .line 531
    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    check-cast v4, [[S

    .line 536
    .line 537
    iput-object v4, v0, Lse6;->e:[[S

    .line 538
    .line 539
    new-array v8, v3, [I

    .line 540
    .line 541
    aput v5, v8, v20

    .line 542
    .line 543
    aput v7, v8, v21

    .line 544
    .line 545
    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v8

    .line 549
    check-cast v8, [[S

    .line 550
    .line 551
    iput-object v8, v0, Lse6;->k:[[S

    .line 552
    .line 553
    new-array v12, v3, [I

    .line 554
    .line 555
    aput v5, v12, v20

    .line 556
    .line 557
    aput v6, v12, v21

    .line 558
    .line 559
    invoke-static {v9, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v12

    .line 563
    check-cast v12, [[S

    .line 564
    .line 565
    iput-object v12, v0, Lse6;->f:[[S

    .line 566
    .line 567
    new-array v13, v11, [I

    .line 568
    .line 569
    aput v7, v13, v3

    .line 570
    .line 571
    aput v7, v13, v20

    .line 572
    .line 573
    aput v6, v13, v21

    .line 574
    .line 575
    invoke-static {v9, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v13

    .line 579
    check-cast v13, [[[S

    .line 580
    .line 581
    iput-object v13, v0, Lse6;->n:[[[S

    .line 582
    .line 583
    new-array v14, v11, [I

    .line 584
    .line 585
    aput v6, v14, v3

    .line 586
    .line 587
    aput v7, v14, v20

    .line 588
    .line 589
    aput v6, v14, v21

    .line 590
    .line 591
    invoke-static {v9, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v14

    .line 595
    check-cast v14, [[[S

    .line 596
    .line 597
    iput-object v14, v0, Lse6;->p:[[[S

    .line 598
    .line 599
    new-array v15, v11, [I

    .line 600
    .line 601
    aput v7, v15, v3

    .line 602
    .line 603
    aput v7, v15, v20

    .line 604
    .line 605
    aput v5, v15, v21

    .line 606
    .line 607
    invoke-static {v9, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v15

    .line 611
    check-cast v15, [[[S

    .line 612
    .line 613
    iput-object v15, v0, Lse6;->q:[[[S

    .line 614
    .line 615
    move/from16 v17, v3

    .line 616
    .line 617
    new-array v3, v11, [I

    .line 618
    .line 619
    aput v6, v3, v17

    .line 620
    .line 621
    aput v7, v3, v20

    .line 622
    .line 623
    aput v5, v3, v21

    .line 624
    .line 625
    invoke-static {v9, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    check-cast v3, [[[S

    .line 630
    .line 631
    iput-object v3, v0, Lse6;->r:[[[S

    .line 632
    .line 633
    new-array v10, v11, [I

    .line 634
    .line 635
    aput v5, v10, v17

    .line 636
    .line 637
    aput v7, v10, v20

    .line 638
    .line 639
    aput v5, v10, v21

    .line 640
    .line 641
    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v7

    .line 645
    check-cast v7, [[[S

    .line 646
    .line 647
    iput-object v7, v0, Lse6;->t:[[[S

    .line 648
    .line 649
    new-array v10, v11, [I

    .line 650
    .line 651
    aput v6, v10, v17

    .line 652
    .line 653
    aput v6, v10, v20

    .line 654
    .line 655
    aput v5, v10, v21

    .line 656
    .line 657
    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v10

    .line 661
    check-cast v10, [[[S

    .line 662
    .line 663
    iput-object v10, v0, Lse6;->x:[[[S

    .line 664
    .line 665
    new-array v11, v11, [I

    .line 666
    .line 667
    aput v5, v11, v17

    .line 668
    .line 669
    aput v6, v11, v20

    .line 670
    .line 671
    aput v5, v11, v21

    .line 672
    .line 673
    invoke-static {v9, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v5

    .line 677
    check-cast v5, [[[S

    .line 678
    .line 679
    iput-object v5, v0, Lse6;->y:[[[S

    .line 680
    .line 681
    const/4 v6, 0x0

    .line 682
    iput-object v6, v0, Lse6;->G:[B

    .line 683
    .line 684
    move/from16 v9, v21

    .line 685
    .line 686
    const/16 v6, 0x20

    .line 687
    .line 688
    invoke-static {v1, v9, v6}, Lms8;->t([BII)[B

    .line 689
    .line 690
    .line 691
    move-result-object v6

    .line 692
    iput-object v6, v0, Lse6;->c:[B

    .line 693
    .line 694
    array-length v6, v6

    .line 695
    invoke-static {v2, v1, v6}, Lx13;->L([[S[BI)I

    .line 696
    .line 697
    .line 698
    move-result v2

    .line 699
    add-int/2addr v2, v6

    .line 700
    invoke-static {v4, v1, v2}, Lx13;->L([[S[BI)I

    .line 701
    .line 702
    .line 703
    move-result v4

    .line 704
    add-int/2addr v4, v2

    .line 705
    invoke-static {v8, v1, v4}, Lx13;->L([[S[BI)I

    .line 706
    .line 707
    .line 708
    move-result v2

    .line 709
    add-int/2addr v2, v4

    .line 710
    invoke-static {v12, v1, v2}, Lx13;->L([[S[BI)I

    .line 711
    .line 712
    .line 713
    move-result v4

    .line 714
    add-int/2addr v4, v2

    .line 715
    move/from16 v2, v20

    .line 716
    .line 717
    invoke-static {v13, v1, v4, v2}, Lx13;->M([[[S[BIZ)I

    .line 718
    .line 719
    .line 720
    move-result v6

    .line 721
    add-int/2addr v6, v4

    .line 722
    const/4 v9, 0x0

    .line 723
    invoke-static {v14, v1, v6, v9}, Lx13;->M([[[S[BIZ)I

    .line 724
    .line 725
    .line 726
    move-result v4

    .line 727
    add-int/2addr v4, v6

    .line 728
    invoke-static {v15, v1, v4, v2}, Lx13;->M([[[S[BIZ)I

    .line 729
    .line 730
    .line 731
    move-result v6

    .line 732
    add-int/2addr v6, v4

    .line 733
    invoke-static {v3, v1, v6, v9}, Lx13;->M([[[S[BIZ)I

    .line 734
    .line 735
    .line 736
    move-result v3

    .line 737
    add-int/2addr v3, v6

    .line 738
    invoke-static {v7, v1, v3, v9}, Lx13;->M([[[S[BIZ)I

    .line 739
    .line 740
    .line 741
    move-result v4

    .line 742
    add-int/2addr v4, v3

    .line 743
    invoke-static {v10, v1, v4, v2}, Lx13;->M([[[S[BIZ)I

    .line 744
    .line 745
    .line 746
    move-result v2

    .line 747
    add-int/2addr v2, v4

    .line 748
    invoke-static {v5, v1, v2, v9}, Lx13;->M([[[S[BIZ)I

    .line 749
    .line 750
    .line 751
    move-result v3

    .line 752
    add-int/2addr v3, v2

    .line 753
    array-length v2, v1

    .line 754
    invoke-static {v1, v3, v2}, Lms8;->t([BII)[B

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    iput-object v1, v0, Lse6;->H:[B

    .line 759
    .line 760
    return-void
.end method

.method public constructor <init>(Lre6;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S)V
    .locals 1

    const/4 v0, 0x1

    .line 761
    invoke-direct {p0, v0, p1}, Lei0;-><init>(ZLre6;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lse6;->G:[B

    iput-object p1, p0, Lse6;->H:[B

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lse6;->c:[B

    invoke-static {p3}, Lx13;->i([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lse6;->d:[[S

    invoke-static {p4}, Lx13;->i([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lse6;->e:[[S

    invoke-static {p5}, Lx13;->i([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lse6;->f:[[S

    invoke-static {p6}, Lx13;->i([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lse6;->k:[[S

    invoke-static {p7}, Lx13;->j([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lse6;->n:[[[S

    invoke-static {p8}, Lx13;->j([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lse6;->p:[[[S

    invoke-static {p9}, Lx13;->j([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lse6;->q:[[[S

    invoke-static {p10}, Lx13;->j([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lse6;->r:[[[S

    invoke-static {p11}, Lx13;->j([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lse6;->t:[[[S

    invoke-static {p12}, Lx13;->j([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lse6;->x:[[[S

    invoke-static {p13}, Lx13;->j([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lse6;->y:[[[S

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lei0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lre6;

    .line 4
    .line 5
    iget v0, v0, Lre6;->k:I

    .line 6
    .line 7
    iget-object v1, p0, Lse6;->c:[B

    .line 8
    .line 9
    iget-object v2, p0, Lse6;->G:[B

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    invoke-static {v2, v1}, Lms8;->p([B[B)[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    if-ne v0, v3, :cond_1

    .line 20
    .line 21
    invoke-static {v2, v1}, Lms8;->p([B[B)[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lse6;->d:[[S

    .line 27
    .line 28
    invoke-static {v0}, Lx13;->r([[S)[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Lms8;->p([B[B)[B

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lse6;->e:[[S

    .line 37
    .line 38
    invoke-static {v1}, Lx13;->r([[S)[B

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lms8;->p([B[B)[B

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lse6;->k:[[S

    .line 47
    .line 48
    invoke-static {v1}, Lx13;->r([[S)[B

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lms8;->p([B[B)[B

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lse6;->f:[[S

    .line 57
    .line 58
    invoke-static {v1}, Lx13;->r([[S)[B

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lms8;->p([B[B)[B

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lse6;->n:[[[S

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    invoke-static {v1, v2}, Lx13;->s([[[SZ)[B

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lms8;->p([B[B)[B

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v1, p0, Lse6;->p:[[[S

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-static {v1, v3}, Lx13;->s([[[SZ)[B

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lms8;->p([B[B)[B

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v1, p0, Lse6;->q:[[[S

    .line 89
    .line 90
    invoke-static {v1, v2}, Lx13;->s([[[SZ)[B

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Lms8;->p([B[B)[B

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lse6;->r:[[[S

    .line 99
    .line 100
    invoke-static {v1, v3}, Lx13;->s([[[SZ)[B

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Lms8;->p([B[B)[B

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p0, Lse6;->t:[[[S

    .line 109
    .line 110
    invoke-static {v1, v3}, Lx13;->s([[[SZ)[B

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lms8;->p([B[B)[B

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object v1, p0, Lse6;->x:[[[S

    .line 119
    .line 120
    invoke-static {v1, v2}, Lx13;->s([[[SZ)[B

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lms8;->p([B[B)[B

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v1, p0, Lse6;->y:[[[S

    .line 129
    .line 130
    invoke-static {v1, v3}, Lx13;->s([[[SZ)[B

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Lms8;->p([B[B)[B

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :goto_0
    iget-object p0, p0, Lse6;->H:[B

    .line 139
    .line 140
    invoke-static {v0, p0}, Lms8;->p([B[B)[B

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0
.end method
