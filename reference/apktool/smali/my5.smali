.class public final Lmy5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ls03;


# instance fields
.field public final a:Lbq1;

.field public final b:Lbq1;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/lang/StringBuilder;

.field public final k:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public final p:Lcz4;

.field public final q:Z

.field public final r:[C

.field public final t:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lvb8;Lvq3;)V
    .locals 17

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
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lbq1;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v3, v0, Lmy5;->a:Lbq1;

    .line 16
    .line 17
    new-instance v3, Lbq1;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v3, v0, Lmy5;->b:Lbq1;

    .line 23
    .line 24
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v3, v0, Lmy5;->c:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v4, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v4, v0, Lmy5;->d:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance v5, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v5, v0, Lmy5;->e:Ljava/util/ArrayList;

    .line 44
    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v6, v0, Lmy5;->f:Ljava/lang/StringBuilder;

    .line 51
    .line 52
    move-object/from16 v6, p3

    .line 53
    .line 54
    iget-object v6, v6, Lvq3;->a:Lcz4;

    .line 55
    .line 56
    iput-object v6, v0, Lmy5;->p:Lcz4;

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    iput v7, v0, Lmy5;->t:I

    .line 66
    .line 67
    new-array v8, v7, [C

    .line 68
    .line 69
    iput-object v8, v0, Lmy5;->r:[C

    .line 70
    .line 71
    invoke-virtual {v1, v6, v7, v8, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object v7, v0, Lmy5;->r:[C

    .line 75
    .line 76
    iget v8, v0, Lmy5;->y:I

    .line 77
    .line 78
    aget-char v9, v7, v8

    .line 79
    .line 80
    const/16 v10, 0x2f

    .line 81
    .line 82
    if-eq v9, v10, :cond_20

    .line 83
    .line 84
    const/16 v11, 0x2e

    .line 85
    .line 86
    const/4 v12, 0x1

    .line 87
    if-ne v9, v11, :cond_3

    .line 88
    .line 89
    array-length v9, v7

    .line 90
    if-le v9, v12, :cond_2

    .line 91
    .line 92
    add-int/2addr v8, v12

    .line 93
    aget-char v7, v7, v8

    .line 94
    .line 95
    if-ne v7, v10, :cond_1

    .line 96
    .line 97
    iput v8, v0, Lmy5;->y:I

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Lsf5;

    .line 101
    .line 102
    const-string v3, "Path \'%s\' in %s has an illegal syntax"

    .line 103
    .line 104
    filled-new-array/range {p1 .. p2}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-direct {v0, v3, v1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :cond_2
    :goto_0
    iget v7, v0, Lmy5;->y:I

    .line 113
    .line 114
    add-int/2addr v7, v12

    .line 115
    iput v7, v0, Lmy5;->y:I

    .line 116
    .line 117
    iput v7, v0, Lmy5;->x:I

    .line 118
    .line 119
    :cond_3
    :goto_1
    iget v7, v0, Lmy5;->y:I

    .line 120
    .line 121
    iget v8, v0, Lmy5;->t:I

    .line 122
    .line 123
    const/16 v9, 0x3a

    .line 124
    .line 125
    const/16 v14, 0x40

    .line 126
    .line 127
    if-ge v7, v8, :cond_19

    .line 128
    .line 129
    iget-boolean v8, v0, Lmy5;->q:Z

    .line 130
    .line 131
    if-nez v8, :cond_18

    .line 132
    .line 133
    iget-object v8, v0, Lmy5;->p:Lcz4;

    .line 134
    .line 135
    iget-object v15, v0, Lmy5;->r:[C

    .line 136
    .line 137
    aget-char v15, v15, v7

    .line 138
    .line 139
    if-eq v15, v10, :cond_17

    .line 140
    .line 141
    const/16 v6, 0x2d

    .line 142
    .line 143
    const/16 v10, 0x5f

    .line 144
    .line 145
    const/4 v11, 0x0

    .line 146
    if-ne v15, v14, :cond_a

    .line 147
    .line 148
    add-int/lit8 v7, v7, 0x1

    .line 149
    .line 150
    iput v7, v0, Lmy5;->y:I

    .line 151
    .line 152
    :cond_4
    :goto_2
    iget v13, v0, Lmy5;->y:I

    .line 153
    .line 154
    iget v14, v0, Lmy5;->t:I

    .line 155
    .line 156
    if-ge v13, v14, :cond_6

    .line 157
    .line 158
    iget-object v14, v0, Lmy5;->r:[C

    .line 159
    .line 160
    add-int/lit8 v15, v13, 0x1

    .line 161
    .line 162
    iput v15, v0, Lmy5;->y:I

    .line 163
    .line 164
    aget-char v13, v14, v13

    .line 165
    .line 166
    invoke-static {v13}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 167
    .line 168
    .line 169
    move-result v14

    .line 170
    if-nez v14, :cond_4

    .line 171
    .line 172
    if-eq v13, v10, :cond_4

    .line 173
    .line 174
    if-eq v13, v6, :cond_4

    .line 175
    .line 176
    if-ne v13, v9, :cond_5

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_5
    new-instance v0, Lsf5;

    .line 180
    .line 181
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const-string v2, "Illegal character \'%s\' in attribute for \'%s\' in %s"

    .line 190
    .line 191
    invoke-direct {v0, v2, v1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :cond_6
    if-le v13, v7, :cond_9

    .line 196
    .line 197
    iput-boolean v12, v0, Lmy5;->q:Z

    .line 198
    .line 199
    sub-int/2addr v13, v7

    .line 200
    new-instance v6, Ljava/lang/String;

    .line 201
    .line 202
    iget-object v9, v0, Lmy5;->r:[C

    .line 203
    .line 204
    invoke-direct {v6, v9, v7, v13}, Ljava/lang/String;-><init>([CII)V

    .line 205
    .line 206
    .line 207
    if-lez v13, :cond_7

    .line 208
    .line 209
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    :cond_7
    move/from16 v16, v12

    .line 219
    .line 220
    :cond_8
    const/4 v10, 0x0

    .line 221
    goto/16 :goto_9

    .line 222
    .line 223
    :cond_9
    new-instance v0, Lsf5;

    .line 224
    .line 225
    const-string v3, "Attribute reference in \'%s\' for %s is empty"

    .line 226
    .line 227
    filled-new-array/range {p1 .. p2}, [Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-direct {v0, v3, v1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :cond_a
    const/4 v15, 0x0

    .line 236
    :goto_3
    iget v11, v0, Lmy5;->y:I

    .line 237
    .line 238
    move/from16 v16, v12

    .line 239
    .line 240
    iget v12, v0, Lmy5;->t:I

    .line 241
    .line 242
    if-ge v11, v12, :cond_14

    .line 243
    .line 244
    iget-object v12, v0, Lmy5;->r:[C

    .line 245
    .line 246
    add-int/lit8 v13, v11, 0x1

    .line 247
    .line 248
    iput v13, v0, Lmy5;->y:I

    .line 249
    .line 250
    aget-char v11, v12, v11

    .line 251
    .line 252
    invoke-static {v11}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    if-nez v12, :cond_13

    .line 257
    .line 258
    if-eq v11, v10, :cond_13

    .line 259
    .line 260
    if-eq v11, v6, :cond_13

    .line 261
    .line 262
    if-ne v11, v9, :cond_b

    .line 263
    .line 264
    goto/16 :goto_6

    .line 265
    .line 266
    :cond_b
    if-ne v11, v14, :cond_c

    .line 267
    .line 268
    iget v6, v0, Lmy5;->y:I

    .line 269
    .line 270
    add-int/lit8 v6, v6, -0x1

    .line 271
    .line 272
    iput v6, v0, Lmy5;->y:I

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_c
    const/16 v6, 0x5b

    .line 276
    .line 277
    if-ne v11, v6, :cond_11

    .line 278
    .line 279
    iget-object v10, v0, Lmy5;->r:[C

    .line 280
    .line 281
    iget v11, v0, Lmy5;->y:I

    .line 282
    .line 283
    add-int/lit8 v11, v11, -0x1

    .line 284
    .line 285
    aget-char v10, v10, v11

    .line 286
    .line 287
    if-ne v10, v6, :cond_e

    .line 288
    .line 289
    const/4 v6, 0x0

    .line 290
    :goto_4
    iget v10, v0, Lmy5;->y:I

    .line 291
    .line 292
    iget v11, v0, Lmy5;->t:I

    .line 293
    .line 294
    if-ge v10, v11, :cond_f

    .line 295
    .line 296
    iget-object v11, v0, Lmy5;->r:[C

    .line 297
    .line 298
    add-int/lit8 v12, v10, 0x1

    .line 299
    .line 300
    iput v12, v0, Lmy5;->y:I

    .line 301
    .line 302
    aget-char v10, v11, v10

    .line 303
    .line 304
    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    if-nez v11, :cond_d

    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_d
    mul-int/lit8 v6, v6, 0xa

    .line 312
    .line 313
    add-int/2addr v6, v10

    .line 314
    add-int/lit8 v6, v6, -0x30

    .line 315
    .line 316
    goto :goto_4

    .line 317
    :cond_e
    const/4 v6, 0x0

    .line 318
    :cond_f
    :goto_5
    iget-object v10, v0, Lmy5;->r:[C

    .line 319
    .line 320
    iget v11, v0, Lmy5;->y:I

    .line 321
    .line 322
    add-int/lit8 v12, v11, 0x1

    .line 323
    .line 324
    iput v12, v0, Lmy5;->y:I

    .line 325
    .line 326
    add-int/lit8 v11, v11, -0x1

    .line 327
    .line 328
    aget-char v10, v10, v11

    .line 329
    .line 330
    const/16 v11, 0x5d

    .line 331
    .line 332
    if-ne v10, v11, :cond_10

    .line 333
    .line 334
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    goto :goto_7

    .line 342
    :cond_10
    new-instance v0, Lsf5;

    .line 343
    .line 344
    const-string v3, "Invalid index for path \'%s\' in %s"

    .line 345
    .line 346
    filled-new-array/range {p1 .. p2}, [Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-direct {v0, v3, v1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    throw v0

    .line 354
    :cond_11
    const/16 v6, 0x2f

    .line 355
    .line 356
    if-ne v11, v6, :cond_12

    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_12
    new-instance v0, Lsf5;

    .line 360
    .line 361
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    const-string v2, "Illegal character \'%s\' in element for \'%s\' in %s"

    .line 370
    .line 371
    invoke-direct {v0, v2, v1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    throw v0

    .line 375
    :cond_13
    :goto_6
    add-int/lit8 v15, v15, 0x1

    .line 376
    .line 377
    move/from16 v12, v16

    .line 378
    .line 379
    goto/16 :goto_3

    .line 380
    .line 381
    :cond_14
    :goto_7
    new-instance v6, Ljava/lang/String;

    .line 382
    .line 383
    iget-object v10, v0, Lmy5;->r:[C

    .line 384
    .line 385
    invoke-direct {v6, v10, v7, v15}, Ljava/lang/String;-><init>([CII)V

    .line 386
    .line 387
    .line 388
    if-lez v15, :cond_8

    .line 389
    .line 390
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    const/4 v10, 0x0

    .line 395
    if-lez v7, :cond_15

    .line 396
    .line 397
    invoke-virtual {v6, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v11

    .line 401
    add-int/lit8 v7, v7, 0x1

    .line 402
    .line 403
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    goto :goto_8

    .line 408
    :cond_15
    const/4 v11, 0x0

    .line 409
    :goto_8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 423
    .line 424
    .line 425
    move-result v7

    .line 426
    if-le v6, v7, :cond_16

    .line 427
    .line 428
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    :cond_16
    move v6, v10

    .line 436
    move/from16 v12, v16

    .line 437
    .line 438
    const/16 v10, 0x2f

    .line 439
    .line 440
    goto/16 :goto_1

    .line 441
    .line 442
    :cond_17
    new-instance v0, Lsf5;

    .line 443
    .line 444
    const-string v3, "Invalid path expression \'%s\' in %s"

    .line 445
    .line 446
    filled-new-array/range {p1 .. p2}, [Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-direct {v0, v3, v1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    throw v0

    .line 454
    :cond_18
    new-instance v0, Lsf5;

    .line 455
    .line 456
    const-string v3, "Path \'%s\' in %s references an invalid attribute"

    .line 457
    .line 458
    filled-new-array/range {p1 .. p2}, [Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-direct {v0, v3, v1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    throw v0

    .line 466
    :cond_19
    move v10, v6

    .line 467
    move/from16 v16, v12

    .line 468
    .line 469
    add-int/lit8 v7, v7, -0x1

    .line 470
    .line 471
    iget-object v1, v0, Lmy5;->r:[C

    .line 472
    .line 473
    array-length v2, v1

    .line 474
    if-lt v7, v2, :cond_1a

    .line 475
    .line 476
    iput v7, v0, Lmy5;->y:I

    .line 477
    .line 478
    goto :goto_a

    .line 479
    :cond_1a
    aget-char v1, v1, v7

    .line 480
    .line 481
    const/16 v6, 0x2f

    .line 482
    .line 483
    if-ne v1, v6, :cond_1b

    .line 484
    .line 485
    iput v7, v0, Lmy5;->y:I

    .line 486
    .line 487
    :cond_1b
    :goto_a
    iget-object v1, v0, Lmy5;->f:Ljava/lang/StringBuilder;

    .line 488
    .line 489
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    add-int/lit8 v6, v2, -0x1

    .line 494
    .line 495
    :goto_b
    if-ge v10, v2, :cond_1f

    .line 496
    .line 497
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v7

    .line 501
    check-cast v7, Ljava/lang/String;

    .line 502
    .line 503
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v8

    .line 507
    check-cast v8, Ljava/lang/String;

    .line 508
    .line 509
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v11

    .line 513
    check-cast v11, Ljava/lang/Integer;

    .line 514
    .line 515
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 516
    .line 517
    .line 518
    move-result v11

    .line 519
    const/16 v12, 0x2f

    .line 520
    .line 521
    if-lez v10, :cond_1c

    .line 522
    .line 523
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    :cond_1c
    iget-boolean v13, v0, Lmy5;->q:Z

    .line 527
    .line 528
    if-eqz v13, :cond_1d

    .line 529
    .line 530
    if-ne v10, v6, :cond_1d

    .line 531
    .line 532
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const/16 v7, 0x5b

    .line 539
    .line 540
    const/16 v11, 0x5d

    .line 541
    .line 542
    goto :goto_c

    .line 543
    :cond_1d
    if-eqz v7, :cond_1e

    .line 544
    .line 545
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    :cond_1e
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    const/16 v7, 0x5b

    .line 555
    .line 556
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    const/16 v11, 0x5d

    .line 563
    .line 564
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    :goto_c
    add-int/lit8 v10, v10, 0x1

    .line 568
    .line 569
    goto :goto_b

    .line 570
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    iput-object v1, v0, Lmy5;->k:Ljava/lang/String;

    .line 575
    .line 576
    return-void

    .line 577
    :cond_20
    new-instance v0, Lsf5;

    .line 578
    .line 579
    const-string v3, "Path \'%s\' in %s references document root"

    .line 580
    .line 581
    filled-new-array/range {p1 .. p2}, [Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    invoke-direct {v0, v3, v1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    throw v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method


# virtual methods
.method public final Y()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lmy5;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-le p0, v0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final a()Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lmy5;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Ls03;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lmy5;->l0(II)Ls03;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lmy5;->k:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lmy5;->e(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lmy5;->b:Lbq1;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lmy5;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, p1, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object p0

    .line 29
    :cond_1
    return-object v2

    .line 30
    :cond_2
    iget-object p0, p0, Lmy5;->p:Lcz4;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmy5;->p:Lcz4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lmy5;->e(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    return-object p2

    .line 13
    :cond_0
    const-string p0, "/@"

    .line 14
    .line 15
    invoke-static {p1, p0, p2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lmy5;->p:Lcz4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lmy5;->e(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-static {p1}, Lmy5;->e(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    return-object p2

    .line 20
    :cond_1
    const-string p0, "/"

    .line 21
    .line 22
    const-string v0, "[1]"

    .line 23
    .line 24
    invoke-static {p1, p0, p2, v0}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lmy5;->k:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lmy5;->e(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lmy5;->a:Lbq1;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lmy5;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, p1, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object p0

    .line 29
    :cond_1
    return-object v2

    .line 30
    :cond_2
    iget-object p0, p0, Lmy5;->p:Lcz4;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public final getFirst()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lmy5;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Ljava/lang/String;

    .line 9
    .line 10
    return-object p0
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget-object p0, p0, Lmy5;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getLast()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lmy5;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Ljava/lang/String;

    .line 9
    .line 10
    return-object p0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lmy5;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Ljava/lang/String;

    .line 9
    .line 10
    return-object p0
.end method

.method public final h()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmy5;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmy5;->k:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lmy5;->e(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lmy5;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final l0(II)Ls03;
    .locals 1

    .line 1
    iget-object v0, p0, Lmy5;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    sub-int/2addr v0, p2

    .line 10
    if-lt v0, p1, :cond_0

    .line 11
    .line 12
    new-instance p2, Lly5;

    .line 13
    .line 14
    invoke-direct {p2, p0, p1, v0}, Lly5;-><init>(Lmy5;II)V

    .line 15
    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_0
    new-instance p2, Lly5;

    .line 19
    .line 20
    invoke-direct {p2, p0, p1, p1}, Lly5;-><init>(Lmy5;II)V

    .line 21
    .line 22
    .line 23
    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lmy5;->y:I

    .line 2
    .line 3
    iget v1, p0, Lmy5;->x:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget-object v2, p0, Lmy5;->n:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p0, Lmy5;->r:[C

    .line 13
    .line 14
    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lmy5;->n:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lmy5;->n:Ljava/lang/String;

    .line 20
    .line 21
    return-object p0
.end method
