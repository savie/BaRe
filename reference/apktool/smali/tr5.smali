.class public final Ltr5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lq27;


# instance fields
.field public final a:Lcr7;

.field public final b:Lo81;

.field public final c:Lbr7;

.field public final d:Lri2;


# direct methods
.method public constructor <init>(Lri2;Lx44;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lo81;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lxt1;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v4, v3, Lxt1;->a:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v4, Luw5;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v4, v3, Lxt1;->b:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object v6, v3, Lxt1;->d:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-interface {v2}, Lri2;->e()[Ljava/lang/reflect/Constructor;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-interface {v2}, Lri2;->f()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_4a

    .line 45
    .line 46
    array-length v5, v4

    .line 47
    const/4 v7, 0x0

    .line 48
    move v8, v7

    .line 49
    :goto_0
    if-ge v8, v5, :cond_a

    .line 50
    .line 51
    aget-object v10, v4, v8

    .line 52
    .line 53
    invoke-interface {v2}, Lri2;->isPrimitive()Z

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    if-nez v11, :cond_8

    .line 58
    .line 59
    new-instance v11, Lwv0;

    .line 60
    .line 61
    iget-object v12, v3, Lxt1;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v12, Luw5;

    .line 64
    .line 65
    iget-object v13, v3, Lxt1;->d:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v13, Lx44;

    .line 68
    .line 69
    invoke-direct {v11, v10, v12, v13}, Lwv0;-><init>(Ljava/lang/reflect/Constructor;Luw5;Lx44;)V

    .line 70
    .line 71
    .line 72
    iget-object v10, v11, Lwv0;->d:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v10, Lot9;

    .line 75
    .line 76
    iget-object v11, v10, Lot9;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v11, Ljava/lang/reflect/Constructor;

    .line 79
    .line 80
    iget-object v12, v10, Lot9;->b:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v12, Ljava/lang/reflect/Constructor;

    .line 83
    .line 84
    iget-object v13, v10, Lot9;->a:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v13, Lzw5;

    .line 87
    .line 88
    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    sget v14, Lzw5;->b:I

    .line 93
    .line 94
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->size()I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    array-length v11, v11

    .line 99
    if-ne v11, v14, :cond_8

    .line 100
    .line 101
    new-instance v11, Lzw5;

    .line 102
    .line 103
    invoke-direct {v11}, Lzw5;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    if-eqz v14, :cond_1

    .line 111
    .line 112
    new-instance v9, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    new-instance v10, Luf7;

    .line 118
    .line 119
    invoke-direct {v10, v12}, Luf7;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->size()I

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    array-length v11, v11

    .line 131
    if-ne v11, v12, :cond_0

    .line 132
    .line 133
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :cond_0
    move-object/from16 v16, v4

    .line 137
    .line 138
    move/from16 v17, v5

    .line 139
    .line 140
    move/from16 v18, v8

    .line 141
    .line 142
    goto/16 :goto_4

    .line 143
    .line 144
    :cond_1
    new-instance v13, Lvf7;

    .line 145
    .line 146
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v10, v11, v13, v7}, Lot9;->b(Lzw5;Lvf7;I)V

    .line 150
    .line 151
    .line 152
    new-instance v10, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    if-lez v13, :cond_2

    .line 162
    .line 163
    invoke-virtual {v11, v7}, Lzw5;->c(I)Lvf7;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->size()I

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    goto :goto_1

    .line 172
    :cond_2
    move v13, v7

    .line 173
    :goto_1
    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    move v15, v7

    .line 178
    :goto_2
    if-ge v15, v13, :cond_6

    .line 179
    .line 180
    new-instance v7, Luf7;

    .line 181
    .line 182
    invoke-direct {v7, v12}, Luf7;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 183
    .line 184
    .line 185
    const/4 v9, 0x0

    .line 186
    :goto_3
    if-ge v9, v14, :cond_5

    .line 187
    .line 188
    move-object/from16 v16, v4

    .line 189
    .line 190
    invoke-virtual {v11, v9}, Lzw5;->c(I)Lvf7;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v4, v15}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Ltw5;

    .line 199
    .line 200
    move-object/from16 v17, v4

    .line 201
    .line 202
    check-cast v17, Lhz0;

    .line 203
    .line 204
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    move/from16 v17, v5

    .line 208
    .line 209
    move-object v5, v4

    .line 210
    check-cast v5, Lhz0;

    .line 211
    .line 212
    iget-object v5, v5, Lhz0;->b:Ljava/lang/Object;

    .line 213
    .line 214
    move/from16 v18, v8

    .line 215
    .line 216
    iget-object v8, v7, Luf7;->a:Luw5;

    .line 217
    .line 218
    invoke-virtual {v8, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v19

    .line 222
    if-nez v19, :cond_4

    .line 223
    .line 224
    if-eqz v5, :cond_3

    .line 225
    .line 226
    invoke-virtual {v8, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 230
    .line 231
    move-object/from16 v4, v16

    .line 232
    .line 233
    move/from16 v5, v17

    .line 234
    .line 235
    move/from16 v8, v18

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_4
    new-instance v0, Lwt1;

    .line 239
    .line 240
    const-string v1, "Parameter \'%s\' is a duplicate in %s"

    .line 241
    .line 242
    const/4 v2, 0x0

    .line 243
    filled-new-array {v2, v12}, [Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-direct {v0, v1, v2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    throw v0

    .line 251
    :cond_5
    move-object/from16 v16, v4

    .line 252
    .line 253
    move/from16 v17, v5

    .line 254
    .line 255
    move/from16 v18, v8

    .line 256
    .line 257
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    add-int/lit8 v15, v15, 0x1

    .line 261
    .line 262
    const/4 v7, 0x0

    .line 263
    goto :goto_2

    .line 264
    :cond_6
    move-object/from16 v16, v4

    .line 265
    .line 266
    move/from16 v17, v5

    .line 267
    .line 268
    move/from16 v18, v8

    .line 269
    .line 270
    move-object v9, v10

    .line 271
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-eqz v5, :cond_9

    .line 280
    .line 281
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    check-cast v5, Luf7;

    .line 286
    .line 287
    iget-object v7, v5, Luf7;->a:Luw5;

    .line 288
    .line 289
    invoke-virtual {v7}, Ljava/util/AbstractMap;->size()I

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    if-nez v7, :cond_7

    .line 294
    .line 295
    iput-object v5, v3, Lxt1;->c:Ljava/lang/Object;

    .line 296
    .line 297
    :cond_7
    iget-object v7, v3, Lxt1;->a:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v7, Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_8
    move-object/from16 v16, v4

    .line 306
    .line 307
    move/from16 v17, v5

    .line 308
    .line 309
    move/from16 v18, v8

    .line 310
    .line 311
    :cond_9
    add-int/lit8 v8, v18, 0x1

    .line 312
    .line 313
    move-object/from16 v4, v16

    .line 314
    .line 315
    move/from16 v5, v17

    .line 316
    .line 317
    const/4 v7, 0x0

    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :cond_a
    iput-object v3, v0, Lo81;->b:Lxt1;

    .line 321
    .line 322
    new-instance v3, Loe;

    .line 323
    .line 324
    const/16 v4, 0x8

    .line 325
    .line 326
    invoke-direct {v3, v4}, Loe;-><init>(I)V

    .line 327
    .line 328
    .line 329
    iput-object v3, v0, Lo81;->a:Loe;

    .line 330
    .line 331
    iput-object v6, v0, Lo81;->i:Lx44;

    .line 332
    .line 333
    invoke-interface {v2}, Lri2;->d()Leg2;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-interface {v2}, Lri2;->getType()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    :goto_6
    if-eqz v5, :cond_18

    .line 342
    .line 343
    iget-object v7, v0, Lo81;->i:Lx44;

    .line 344
    .line 345
    if-eqz v4, :cond_b

    .line 346
    .line 347
    iget-object v7, v7, Lx44;->c:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v7, Lgp1;

    .line 350
    .line 351
    invoke-virtual {v7, v5}, Lgp1;->e(Ljava/lang/Class;)Lri2;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    goto :goto_7

    .line 356
    :cond_b
    iget-object v7, v7, Lx44;->d:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v7, Lgp1;

    .line 359
    .line 360
    invoke-virtual {v7, v5}, Lgp1;->e(Ljava/lang/Class;)Lri2;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    :goto_7
    invoke-interface {v5}, Lri2;->g()Lkk5;

    .line 365
    .line 366
    .line 367
    move-result-object v7

    .line 368
    invoke-interface {v5}, Lri2;->getNamespace()Ljk5;

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    if-eqz v8, :cond_c

    .line 373
    .line 374
    iget-object v9, v3, Loe;->b:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast v9, Ljava/util/ArrayList;

    .line 377
    .line 378
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    :cond_c
    if-eqz v7, :cond_d

    .line 382
    .line 383
    invoke-interface {v7}, Lkk5;->value()[Ljk5;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    array-length v8, v7

    .line 388
    const/4 v9, 0x0

    .line 389
    :goto_8
    if-ge v9, v8, :cond_d

    .line 390
    .line 391
    aget-object v10, v7, v9

    .line 392
    .line 393
    iget-object v11, v3, Loe;->b:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v11, Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    add-int/lit8 v9, v9, 0x1

    .line 401
    .line 402
    goto :goto_8

    .line 403
    :cond_d
    invoke-interface {v5}, Lri2;->k()Ljava/util/List;

    .line 404
    .line 405
    .line 406
    move-result-object v7

    .line 407
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    :cond_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 412
    .line 413
    .line 414
    move-result v8

    .line 415
    if-eqz v8, :cond_15

    .line 416
    .line 417
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    check-cast v8, Lrf5;

    .line 422
    .line 423
    iget-object v9, v8, Lrf5;->a:[Ljava/lang/annotation/Annotation;

    .line 424
    .line 425
    iget-object v8, v8, Lrf5;->b:Ljava/lang/reflect/Method;

    .line 426
    .line 427
    array-length v10, v9

    .line 428
    const/4 v11, 0x0

    .line 429
    :goto_9
    if-ge v11, v10, :cond_e

    .line 430
    .line 431
    aget-object v12, v9, v11

    .line 432
    .line 433
    instance-of v13, v12, Lem1;

    .line 434
    .line 435
    if-eqz v13, :cond_f

    .line 436
    .line 437
    iget-object v13, v0, Lo81;->c:Lwo1;

    .line 438
    .line 439
    if-nez v13, :cond_f

    .line 440
    .line 441
    invoke-static {v8}, Lo81;->a(Ljava/lang/reflect/Method;)Lwo1;

    .line 442
    .line 443
    .line 444
    move-result-object v13

    .line 445
    iput-object v13, v0, Lo81;->c:Lwo1;

    .line 446
    .line 447
    :cond_f
    instance-of v13, v12, Lsi8;

    .line 448
    .line 449
    if-eqz v13, :cond_10

    .line 450
    .line 451
    iget-object v13, v0, Lo81;->d:Lwo1;

    .line 452
    .line 453
    if-nez v13, :cond_10

    .line 454
    .line 455
    invoke-static {v8}, Lo81;->a(Ljava/lang/reflect/Method;)Lwo1;

    .line 456
    .line 457
    .line 458
    move-result-object v13

    .line 459
    iput-object v13, v0, Lo81;->d:Lwo1;

    .line 460
    .line 461
    :cond_10
    instance-of v13, v12, Lez5;

    .line 462
    .line 463
    if-eqz v13, :cond_11

    .line 464
    .line 465
    iget-object v13, v0, Lo81;->e:Lwo1;

    .line 466
    .line 467
    if-nez v13, :cond_11

    .line 468
    .line 469
    invoke-static {v8}, Lo81;->a(Ljava/lang/reflect/Method;)Lwo1;

    .line 470
    .line 471
    .line 472
    move-result-object v13

    .line 473
    iput-object v13, v0, Lo81;->e:Lwo1;

    .line 474
    .line 475
    :cond_11
    instance-of v13, v12, Lcn1;

    .line 476
    .line 477
    if-eqz v13, :cond_12

    .line 478
    .line 479
    iget-object v13, v0, Lo81;->f:Lwo1;

    .line 480
    .line 481
    if-nez v13, :cond_12

    .line 482
    .line 483
    invoke-static {v8}, Lo81;->a(Ljava/lang/reflect/Method;)Lwo1;

    .line 484
    .line 485
    .line 486
    move-result-object v13

    .line 487
    iput-object v13, v0, Lo81;->f:Lwo1;

    .line 488
    .line 489
    :cond_12
    instance-of v13, v12, Lpj6;

    .line 490
    .line 491
    if-eqz v13, :cond_13

    .line 492
    .line 493
    iget-object v13, v0, Lo81;->g:Lwo1;

    .line 494
    .line 495
    if-nez v13, :cond_13

    .line 496
    .line 497
    invoke-static {v8}, Lo81;->a(Ljava/lang/reflect/Method;)Lwo1;

    .line 498
    .line 499
    .line 500
    move-result-object v13

    .line 501
    iput-object v13, v0, Lo81;->g:Lwo1;

    .line 502
    .line 503
    :cond_13
    instance-of v12, v12, Ljl6;

    .line 504
    .line 505
    if-eqz v12, :cond_14

    .line 506
    .line 507
    iget-object v12, v0, Lo81;->h:Lwo1;

    .line 508
    .line 509
    if-nez v12, :cond_14

    .line 510
    .line 511
    invoke-static {v8}, Lo81;->a(Ljava/lang/reflect/Method;)Lwo1;

    .line 512
    .line 513
    .line 514
    move-result-object v12

    .line 515
    iput-object v12, v0, Lo81;->h:Lwo1;

    .line 516
    .line 517
    :cond_14
    add-int/lit8 v11, v11, 0x1

    .line 518
    .line 519
    goto :goto_9

    .line 520
    :cond_15
    iget-object v7, v0, Lo81;->j:Lno6;

    .line 521
    .line 522
    if-nez v7, :cond_16

    .line 523
    .line 524
    invoke-interface {v5}, Lri2;->getRoot()Lno6;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    iput-object v7, v0, Lo81;->j:Lno6;

    .line 529
    .line 530
    :cond_16
    iget-object v7, v0, Lo81;->k:Lpu5;

    .line 531
    .line 532
    if-nez v7, :cond_17

    .line 533
    .line 534
    invoke-interface {v5}, Lri2;->getOrder()Lpu5;

    .line 535
    .line 536
    .line 537
    move-result-object v7

    .line 538
    iput-object v7, v0, Lo81;->k:Lpu5;

    .line 539
    .line 540
    :cond_17
    invoke-interface {v5}, Lri2;->j()Ljava/lang/Class;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    goto/16 :goto_6

    .line 545
    .line 546
    :cond_18
    invoke-interface {v2}, Lri2;->getNamespace()Ljk5;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    if-eqz v4, :cond_19

    .line 551
    .line 552
    iget-object v5, v3, Loe;->b:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast v5, Ljava/util/ArrayList;

    .line 555
    .line 556
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    iput-object v4, v3, Loe;->c:Ljava/lang/Object;

    .line 560
    .line 561
    :cond_19
    iput-object v0, v1, Ltr5;->b:Lo81;

    .line 562
    .line 563
    new-instance v7, Lcr7;

    .line 564
    .line 565
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 566
    .line 567
    .line 568
    new-instance v0, Ldr;

    .line 569
    .line 570
    invoke-direct {v0, v2, v6}, Ldr;-><init>(Lri2;Lx44;)V

    .line 571
    .line 572
    .line 573
    iput-object v0, v7, Lcr7;->b:Ldr;

    .line 574
    .line 575
    new-instance v3, Lx00;

    .line 576
    .line 577
    invoke-direct {v3, v0, v2, v6}, Lx00;-><init>(Ldr;Lri2;Lx44;)V

    .line 578
    .line 579
    .line 580
    iput-object v3, v7, Lcr7;->c:Lx00;

    .line 581
    .line 582
    new-instance v0, Lyz0;

    .line 583
    .line 584
    invoke-direct {v0}, Lyz0;-><init>()V

    .line 585
    .line 586
    .line 587
    new-instance v3, Ljava/util/ArrayList;

    .line 588
    .line 589
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .line 591
    .line 592
    iput-object v3, v0, Lyz0;->b:Ljava/lang/Object;

    .line 593
    .line 594
    new-instance v3, Lkm5;

    .line 595
    .line 596
    const/4 v4, 0x6

    .line 597
    const/4 v5, 0x0

    .line 598
    invoke-direct {v3, v5, v4}, Lkm5;-><init>(BI)V

    .line 599
    .line 600
    .line 601
    new-instance v3, Ler4;

    .line 602
    .line 603
    const/4 v4, 0x0

    .line 604
    invoke-direct {v3, v4}, Ler4;-><init>(Lq27;)V

    .line 605
    .line 606
    .line 607
    iput-object v3, v0, Lyz0;->d:Ljava/lang/Object;

    .line 608
    .line 609
    new-instance v3, Ler4;

    .line 610
    .line 611
    invoke-direct {v3, v4}, Ler4;-><init>(Lq27;)V

    .line 612
    .line 613
    .line 614
    iput-object v3, v0, Lyz0;->e:Ljava/lang/Object;

    .line 615
    .line 616
    new-instance v3, Ler4;

    .line 617
    .line 618
    invoke-direct {v3, v4}, Ler4;-><init>(Lq27;)V

    .line 619
    .line 620
    .line 621
    iput-object v3, v0, Lyz0;->f:Ljava/lang/Object;

    .line 622
    .line 623
    iput-object v1, v0, Lyz0;->k:Ljava/lang/Object;

    .line 624
    .line 625
    iput-object v2, v0, Lyz0;->n:Ljava/lang/Object;

    .line 626
    .line 627
    iput-object v0, v7, Lcr7;->a:Lyz0;

    .line 628
    .line 629
    new-instance v0, Ldb8;

    .line 630
    .line 631
    const/4 v4, 0x0

    .line 632
    const/4 v5, 0x1

    .line 633
    const/4 v3, 0x0

    .line 634
    invoke-direct/range {v0 .. v5}, Ldb8;-><init>(Lq27;Lri2;Ljava/lang/String;Ljava/lang/String;I)V

    .line 635
    .line 636
    .line 637
    iput-object v0, v7, Lcr7;->k:Ldb8;

    .line 638
    .line 639
    new-instance v0, Ler4;

    .line 640
    .line 641
    invoke-direct {v0, v1}, Ler4;-><init>(Lq27;)V

    .line 642
    .line 643
    .line 644
    iput-object v0, v7, Lcr7;->e:Ler4;

    .line 645
    .line 646
    new-instance v0, Ler4;

    .line 647
    .line 648
    invoke-direct {v0, v1}, Ler4;-><init>(Lq27;)V

    .line 649
    .line 650
    .line 651
    iput-object v0, v7, Lcr7;->f:Ler4;

    .line 652
    .line 653
    new-instance v0, Ler4;

    .line 654
    .line 655
    invoke-direct {v0, v1}, Ler4;-><init>(Lq27;)V

    .line 656
    .line 657
    .line 658
    iput-object v0, v7, Lcr7;->g:Ler4;

    .line 659
    .line 660
    iput-object v1, v7, Lcr7;->h:Ltr5;

    .line 661
    .line 662
    iput-object v6, v7, Lcr7;->i:Lx44;

    .line 663
    .line 664
    iput-object v7, v1, Ltr5;->a:Lcr7;

    .line 665
    .line 666
    iput-object v2, v1, Ltr5;->d:Lri2;

    .line 667
    .line 668
    invoke-interface {v2}, Lri2;->getType()Ljava/lang/Class;

    .line 669
    .line 670
    .line 671
    iget-object v0, v1, Ltr5;->a:Lcr7;

    .line 672
    .line 673
    iget-object v3, v0, Lcr7;->h:Ltr5;

    .line 674
    .line 675
    iget-object v3, v3, Ltr5;->b:Lo81;

    .line 676
    .line 677
    iget-object v3, v3, Lo81;->k:Lpu5;

    .line 678
    .line 679
    if-eqz v3, :cond_1f

    .line 680
    .line 681
    iget-object v4, v0, Lcr7;->c:Lx00;

    .line 682
    .line 683
    iget-object v0, v0, Lcr7;->k:Ldb8;

    .line 684
    .line 685
    iget-object v5, v4, Lx00;->d:Ljava/lang/Object;

    .line 686
    .line 687
    check-cast v5, Lri2;

    .line 688
    .line 689
    iget-object v7, v4, Lx00;->b:Ljava/lang/Object;

    .line 690
    .line 691
    check-cast v7, Ldr;

    .line 692
    .line 693
    invoke-interface {v3}, Lpu5;->elements()[Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v8

    .line 697
    array-length v9, v8

    .line 698
    const/4 v10, 0x0

    .line 699
    :goto_a
    if-ge v10, v9, :cond_1b

    .line 700
    .line 701
    aget-object v11, v8, v10

    .line 702
    .line 703
    invoke-virtual {v7, v11}, Ldr;->b(Ljava/lang/String;)Ls03;

    .line 704
    .line 705
    .line 706
    move-result-object v11

    .line 707
    invoke-interface {v11}, Ls03;->h()Z

    .line 708
    .line 709
    .line 710
    move-result v12

    .line 711
    if-nez v12, :cond_1a

    .line 712
    .line 713
    invoke-virtual {v4, v0, v11}, Lx00;->f(Ldb8;Ls03;)V

    .line 714
    .line 715
    .line 716
    add-int/lit8 v10, v10, 0x1

    .line 717
    .line 718
    goto :goto_a

    .line 719
    :cond_1a
    new-instance v0, Lsf5;

    .line 720
    .line 721
    const-string v1, "Ordered element \'%s\' references an attribute in %s"

    .line 722
    .line 723
    filled-new-array {v11, v5}, [Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    invoke-direct {v0, v1, v2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    .line 729
    .line 730
    throw v0

    .line 731
    :cond_1b
    invoke-interface {v3}, Lpu5;->attributes()[Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    array-length v8, v3

    .line 736
    const/4 v9, 0x0

    .line 737
    :goto_b
    if-ge v9, v8, :cond_1f

    .line 738
    .line 739
    aget-object v10, v3, v9

    .line 740
    .line 741
    invoke-virtual {v7, v10}, Ldr;->b(Ljava/lang/String;)Ls03;

    .line 742
    .line 743
    .line 744
    move-result-object v11

    .line 745
    invoke-interface {v11}, Ls03;->h()Z

    .line 746
    .line 747
    .line 748
    move-result v12

    .line 749
    if-nez v12, :cond_1d

    .line 750
    .line 751
    invoke-interface {v11}, Ls03;->Y()Z

    .line 752
    .line 753
    .line 754
    move-result v12

    .line 755
    if-nez v12, :cond_1c

    .line 756
    .line 757
    goto :goto_c

    .line 758
    :cond_1c
    new-instance v0, Lsf5;

    .line 759
    .line 760
    const-string v1, "Ordered attribute \'%s\' references an element in %s"

    .line 761
    .line 762
    filled-new-array {v11, v5}, [Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    invoke-direct {v0, v1, v2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    .line 768
    .line 769
    throw v0

    .line 770
    :cond_1d
    :goto_c
    invoke-interface {v11}, Ls03;->Y()Z

    .line 771
    .line 772
    .line 773
    move-result v12

    .line 774
    if-nez v12, :cond_1e

    .line 775
    .line 776
    iget-object v11, v4, Lx00;->c:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v11, Lvq3;

    .line 779
    .line 780
    iget-object v11, v11, Lvq3;->a:Lcz4;

    .line 781
    .line 782
    iget-object v11, v0, Ldb8;->b:Ler4;

    .line 783
    .line 784
    const/4 v12, 0x0

    .line 785
    invoke-virtual {v11, v10, v12}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    goto :goto_d

    .line 789
    :cond_1e
    invoke-static {v0, v11}, Lx00;->b(Ldb8;Ls03;)V

    .line 790
    .line 791
    .line 792
    :goto_d
    add-int/lit8 v9, v9, 0x1

    .line 793
    .line 794
    goto :goto_b

    .line 795
    :cond_1f
    invoke-interface {v2}, Lri2;->getType()Ljava/lang/Class;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    invoke-interface {v2}, Lri2;->d()Leg2;

    .line 800
    .line 801
    .line 802
    move-result-object v3

    .line 803
    invoke-virtual {v6, v0, v3}, Lx44;->a(Ljava/lang/Class;Leg2;)Lbu1;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    :cond_20
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 812
    .line 813
    .line 814
    move-result v3

    .line 815
    if-eqz v3, :cond_21

    .line 816
    .line 817
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v3

    .line 821
    check-cast v3, Lau1;

    .line 822
    .line 823
    invoke-interface {v3}, Lau1;->c()Ljava/lang/annotation/Annotation;

    .line 824
    .line 825
    .line 826
    move-result-object v4

    .line 827
    if-eqz v4, :cond_20

    .line 828
    .line 829
    iget-object v5, v1, Ltr5;->a:Lcr7;

    .line 830
    .line 831
    invoke-virtual {v5, v3, v4}, Lcr7;->a(Lau1;Ljava/lang/annotation/Annotation;)V

    .line 832
    .line 833
    .line 834
    goto :goto_e

    .line 835
    :cond_21
    invoke-interface {v2}, Lri2;->getType()Ljava/lang/Class;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-interface {v2}, Lri2;->d()Leg2;

    .line 840
    .line 841
    .line 842
    move-result-object v3

    .line 843
    invoke-virtual {v6, v0, v3}, Lx44;->c(Ljava/lang/Class;Leg2;)Lbu1;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    :cond_22
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 852
    .line 853
    .line 854
    move-result v3

    .line 855
    if-eqz v3, :cond_23

    .line 856
    .line 857
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v3

    .line 861
    check-cast v3, Lau1;

    .line 862
    .line 863
    invoke-interface {v3}, Lau1;->c()Ljava/lang/annotation/Annotation;

    .line 864
    .line 865
    .line 866
    move-result-object v4

    .line 867
    if-eqz v4, :cond_22

    .line 868
    .line 869
    iget-object v5, v1, Ltr5;->a:Lcr7;

    .line 870
    .line 871
    invoke-virtual {v5, v3, v4}, Lcr7;->a(Lau1;Ljava/lang/annotation/Annotation;)V

    .line 872
    .line 873
    .line 874
    goto :goto_f

    .line 875
    :cond_23
    invoke-interface {v2}, Lri2;->getType()Ljava/lang/Class;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    iget-object v3, v1, Ltr5;->a:Lcr7;

    .line 880
    .line 881
    iget-object v4, v3, Lcr7;->d:Lny1;

    .line 882
    .line 883
    const/4 v5, 0x1

    .line 884
    if-nez v4, :cond_2e

    .line 885
    .line 886
    iget-object v4, v3, Lcr7;->a:Lyz0;

    .line 887
    .line 888
    iget-object v6, v4, Lyz0;->n:Ljava/lang/Object;

    .line 889
    .line 890
    check-cast v6, Lri2;

    .line 891
    .line 892
    iget-object v7, v4, Lyz0;->b:Ljava/lang/Object;

    .line 893
    .line 894
    check-cast v7, Ljava/util/ArrayList;

    .line 895
    .line 896
    iget-object v8, v4, Lyz0;->k:Ljava/lang/Object;

    .line 897
    .line 898
    check-cast v8, Ltr5;

    .line 899
    .line 900
    iget-object v9, v4, Lyz0;->c:Ljava/lang/Object;

    .line 901
    .line 902
    check-cast v9, Lny1;

    .line 903
    .line 904
    if-nez v9, :cond_2d

    .line 905
    .line 906
    iget-object v9, v8, Ltr5;->b:Lo81;

    .line 907
    .line 908
    iget-object v9, v9, Lo81;->b:Lxt1;

    .line 909
    .line 910
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 911
    .line 912
    .line 913
    new-instance v10, Ljava/util/ArrayList;

    .line 914
    .line 915
    iget-object v9, v9, Lxt1;->a:Ljava/lang/Object;

    .line 916
    .line 917
    check-cast v9, Ljava/util/ArrayList;

    .line 918
    .line 919
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 923
    .line 924
    .line 925
    move-result-object v9

    .line 926
    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 927
    .line 928
    .line 929
    move-result v10

    .line 930
    if-eqz v10, :cond_27

    .line 931
    .line 932
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v10

    .line 936
    check-cast v10, Luf7;

    .line 937
    .line 938
    new-instance v11, Luf7;

    .line 939
    .line 940
    iget-object v12, v10, Luf7;->b:Ljava/lang/reflect/Constructor;

    .line 941
    .line 942
    iget-object v13, v10, Luf7;->c:Ljava/lang/Class;

    .line 943
    .line 944
    invoke-direct {v11, v12, v13}, Luf7;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V

    .line 945
    .line 946
    .line 947
    iget-object v10, v10, Luf7;->a:Luw5;

    .line 948
    .line 949
    invoke-virtual {v10}, Luw5;->iterator()Ljava/util/Iterator;

    .line 950
    .line 951
    .line 952
    move-result-object v10

    .line 953
    :cond_24
    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 954
    .line 955
    .line 956
    move-result v12

    .line 957
    if-eqz v12, :cond_26

    .line 958
    .line 959
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v12

    .line 963
    check-cast v12, Ltw5;

    .line 964
    .line 965
    invoke-virtual {v4, v12}, Lyz0;->c(Ltw5;)Luq4;

    .line 966
    .line 967
    .line 968
    move-result-object v13

    .line 969
    if-eqz v13, :cond_25

    .line 970
    .line 971
    new-instance v14, Lhz0;

    .line 972
    .line 973
    invoke-direct {v14, v12, v13}, Lhz0;-><init>(Ltw5;Luq4;)V

    .line 974
    .line 975
    .line 976
    goto :goto_12

    .line 977
    :cond_25
    const/4 v14, 0x0

    .line 978
    :goto_12
    if-eqz v14, :cond_24

    .line 979
    .line 980
    iget-object v12, v14, Lhz0;->b:Ljava/lang/Object;

    .line 981
    .line 982
    if-eqz v12, :cond_24

    .line 983
    .line 984
    iget-object v13, v11, Luf7;->a:Luw5;

    .line 985
    .line 986
    invoke-virtual {v13, v12, v14}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    goto :goto_11

    .line 990
    :cond_26
    new-instance v10, Lwf7;

    .line 991
    .line 992
    invoke-direct {v10, v11}, Lwf7;-><init>(Luf7;)V

    .line 993
    .line 994
    .line 995
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    .line 997
    .line 998
    goto :goto_10

    .line 999
    :cond_27
    iget-object v9, v4, Lyz0;->c:Ljava/lang/Object;

    .line 1000
    .line 1001
    check-cast v9, Lny1;

    .line 1002
    .line 1003
    if-nez v9, :cond_29

    .line 1004
    .line 1005
    iget-object v9, v8, Ltr5;->b:Lo81;

    .line 1006
    .line 1007
    iget-object v9, v9, Lo81;->b:Lxt1;

    .line 1008
    .line 1009
    iget-object v9, v9, Lxt1;->c:Ljava/lang/Object;

    .line 1010
    .line 1011
    check-cast v9, Luf7;

    .line 1012
    .line 1013
    invoke-virtual {v8}, Ltr5;->m()Luw5;

    .line 1014
    .line 1015
    .line 1016
    if-eqz v9, :cond_28

    .line 1017
    .line 1018
    new-instance v10, Lwf7;

    .line 1019
    .line 1020
    invoke-direct {v10, v9}, Lwf7;-><init>(Luf7;)V

    .line 1021
    .line 1022
    .line 1023
    goto :goto_13

    .line 1024
    :cond_28
    const/4 v10, 0x0

    .line 1025
    :goto_13
    new-instance v9, Lny1;

    .line 1026
    .line 1027
    const/4 v11, 0x3

    .line 1028
    invoke-direct {v9, v11, v7, v10, v6}, Lny1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1029
    .line 1030
    .line 1031
    iput-object v9, v4, Lyz0;->c:Ljava/lang/Object;

    .line 1032
    .line 1033
    :cond_29
    invoke-virtual {v8}, Ltr5;->m()Luw5;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v7

    .line 1037
    invoke-virtual {v7}, Luw5;->d()Ljava/util/List;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v7

    .line 1041
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v7

    .line 1045
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1046
    .line 1047
    .line 1048
    move-result v8

    .line 1049
    if-eqz v8, :cond_2b

    .line 1050
    .line 1051
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v0

    .line 1055
    check-cast v0, Ltw5;

    .line 1056
    .line 1057
    invoke-virtual {v4, v0}, Lyz0;->c(Ltw5;)Luq4;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    if-eqz v0, :cond_2a

    .line 1062
    .line 1063
    invoke-interface {v0}, Luq4;->k()Lau1;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v0

    .line 1067
    invoke-interface {v0}, Lvb8;->getType()Ljava/lang/Class;

    .line 1068
    .line 1069
    .line 1070
    const/4 v2, 0x0

    .line 1071
    throw v2

    .line 1072
    :cond_2a
    const/4 v2, 0x0

    .line 1073
    new-instance v0, Lwt1;

    .line 1074
    .line 1075
    const-string v1, "Parameter \'%s\' does not have a match in %s"

    .line 1076
    .line 1077
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v2

    .line 1081
    invoke-direct {v0, v1, v2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1082
    .line 1083
    .line 1084
    throw v0

    .line 1085
    :cond_2b
    iget-object v6, v4, Lyz0;->d:Ljava/lang/Object;

    .line 1086
    .line 1087
    check-cast v6, Ler4;

    .line 1088
    .line 1089
    iget-object v7, v4, Lyz0;->e:Ljava/lang/Object;

    .line 1090
    .line 1091
    check-cast v7, Ler4;

    .line 1092
    .line 1093
    iget-object v8, v4, Lyz0;->c:Ljava/lang/Object;

    .line 1094
    .line 1095
    check-cast v8, Lny1;

    .line 1096
    .line 1097
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1098
    .line 1099
    .line 1100
    new-instance v9, Ljava/util/ArrayList;

    .line 1101
    .line 1102
    iget-object v8, v8, Lny1;->b:Ljava/lang/Object;

    .line 1103
    .line 1104
    check-cast v8, Ljava/util/List;

    .line 1105
    .line 1106
    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1107
    .line 1108
    .line 1109
    iget-object v8, v4, Lyz0;->c:Ljava/lang/Object;

    .line 1110
    .line 1111
    check-cast v8, Lny1;

    .line 1112
    .line 1113
    iget-object v10, v8, Lny1;->b:Ljava/lang/Object;

    .line 1114
    .line 1115
    check-cast v10, Ljava/util/List;

    .line 1116
    .line 1117
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 1118
    .line 1119
    .line 1120
    move-result v10

    .line 1121
    if-gt v10, v5, :cond_2c

    .line 1122
    .line 1123
    iget-object v8, v8, Lny1;->c:Ljava/lang/Object;

    .line 1124
    .line 1125
    check-cast v8, Lwf7;

    .line 1126
    .line 1127
    if-eqz v8, :cond_2c

    .line 1128
    .line 1129
    invoke-virtual {v4, v7}, Lyz0;->d(Ler4;)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v4, v6}, Lyz0;->d(Ler4;)V

    .line 1133
    .line 1134
    .line 1135
    :cond_2c
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1136
    .line 1137
    .line 1138
    move-result v8

    .line 1139
    if-nez v8, :cond_2d

    .line 1140
    .line 1141
    invoke-virtual {v4, v7, v9}, Lyz0;->e(Ler4;Ljava/util/ArrayList;)V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v4, v6, v9}, Lyz0;->e(Ler4;Ljava/util/ArrayList;)V

    .line 1145
    .line 1146
    .line 1147
    :cond_2d
    iget-object v4, v4, Lyz0;->c:Ljava/lang/Object;

    .line 1148
    .line 1149
    check-cast v4, Lny1;

    .line 1150
    .line 1151
    iput-object v4, v3, Lcr7;->d:Lny1;

    .line 1152
    .line 1153
    :cond_2e
    iget-object v3, v1, Ltr5;->a:Lcr7;

    .line 1154
    .line 1155
    iget-object v4, v3, Lcr7;->b:Ldr;

    .line 1156
    .line 1157
    iget-object v6, v3, Lcr7;->k:Ldb8;

    .line 1158
    .line 1159
    iget-object v7, v3, Lcr7;->h:Ltr5;

    .line 1160
    .line 1161
    iget-object v8, v7, Ltr5;->b:Lo81;

    .line 1162
    .line 1163
    iget-object v8, v8, Lo81;->k:Lpu5;

    .line 1164
    .line 1165
    iget-object v9, v3, Lcr7;->f:Ler4;

    .line 1166
    .line 1167
    invoke-virtual {v9}, Ler4;->iterator()Ljava/util/Iterator;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v10

    .line 1171
    :goto_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1172
    .line 1173
    .line 1174
    move-result v11

    .line 1175
    if-eqz v11, :cond_32

    .line 1176
    .line 1177
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v11

    .line 1181
    check-cast v11, Luq4;

    .line 1182
    .line 1183
    invoke-interface {v11}, Luq4;->m()[Ljava/lang/String;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v12

    .line 1187
    invoke-interface {v11}, Luq4;->k()Lau1;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v13

    .line 1191
    array-length v14, v12

    .line 1192
    const/4 v15, 0x0

    .line 1193
    :goto_15
    if-ge v15, v14, :cond_31

    .line 1194
    .line 1195
    aget-object v5, v12, v15

    .line 1196
    .line 1197
    invoke-interface {v13}, Lau1;->c()Ljava/lang/annotation/Annotation;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v2

    .line 1201
    invoke-virtual {v9, v5}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v5

    .line 1205
    check-cast v5, Luq4;

    .line 1206
    .line 1207
    move-object/from16 v16, v5

    .line 1208
    .line 1209
    invoke-interface {v11}, Luq4;->isInline()Z

    .line 1210
    .line 1211
    .line 1212
    move-result v5

    .line 1213
    move-object/from16 v17, v8

    .line 1214
    .line 1215
    invoke-interface/range {v16 .. v16}, Luq4;->isInline()Z

    .line 1216
    .line 1217
    .line 1218
    move-result v8

    .line 1219
    if-ne v5, v8, :cond_30

    .line 1220
    .line 1221
    invoke-interface {v11}, Luq4;->isRequired()Z

    .line 1222
    .line 1223
    .line 1224
    move-result v5

    .line 1225
    invoke-interface/range {v16 .. v16}, Luq4;->isRequired()Z

    .line 1226
    .line 1227
    .line 1228
    move-result v8

    .line 1229
    if-ne v5, v8, :cond_2f

    .line 1230
    .line 1231
    add-int/lit8 v15, v15, 0x1

    .line 1232
    .line 1233
    move-object/from16 v2, p1

    .line 1234
    .line 1235
    move-object/from16 v8, v17

    .line 1236
    .line 1237
    const/4 v5, 0x1

    .line 1238
    goto :goto_15

    .line 1239
    :cond_2f
    new-instance v0, Lwt1;

    .line 1240
    .line 1241
    const-string v1, "Required must be consistent in %s for %s"

    .line 1242
    .line 1243
    filled-new-array {v2, v13}, [Ljava/lang/Object;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v2

    .line 1247
    invoke-direct {v0, v1, v2}, Lwt1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1248
    .line 1249
    .line 1250
    throw v0

    .line 1251
    :cond_30
    new-instance v0, Lwt1;

    .line 1252
    .line 1253
    const-string v1, "Inline must be consistent in %s for %s"

    .line 1254
    .line 1255
    filled-new-array {v2, v13}, [Ljava/lang/Object;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v2

    .line 1259
    invoke-direct {v0, v1, v2}, Lwt1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1260
    .line 1261
    .line 1262
    throw v0

    .line 1263
    :cond_31
    move-object/from16 v2, p1

    .line 1264
    .line 1265
    goto :goto_14

    .line 1266
    :cond_32
    move-object/from16 v17, v8

    .line 1267
    .line 1268
    if-eqz v17, :cond_36

    .line 1269
    .line 1270
    invoke-interface/range {v17 .. v17}, Lpu5;->elements()[Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v2

    .line 1274
    array-length v5, v2

    .line 1275
    const/4 v8, 0x0

    .line 1276
    :goto_16
    if-ge v8, v5, :cond_36

    .line 1277
    .line 1278
    aget-object v10, v2, v8

    .line 1279
    .line 1280
    invoke-virtual {v4, v10}, Ldr;->b(Ljava/lang/String;)Ls03;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v11

    .line 1284
    const/4 v12, 0x1

    .line 1285
    const/4 v13, 0x0

    .line 1286
    invoke-interface {v11, v13, v12}, Ls03;->l0(II)Ls03;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v14

    .line 1290
    invoke-interface {v11}, Ls03;->Y()Z

    .line 1291
    .line 1292
    .line 1293
    move-result v12

    .line 1294
    if-eqz v12, :cond_33

    .line 1295
    .line 1296
    invoke-virtual {v6, v14}, Ldb8;->d(Ls03;)Ldb8;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v12

    .line 1300
    goto :goto_17

    .line 1301
    :cond_33
    move-object v12, v6

    .line 1302
    :goto_17
    if-eqz v12, :cond_35

    .line 1303
    .line 1304
    iget-object v13, v12, Ldb8;->d:Lfh5;

    .line 1305
    .line 1306
    invoke-interface {v11}, Ls03;->getLast()Ljava/lang/String;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v14

    .line 1310
    invoke-interface {v11}, Ls03;->getIndex()I

    .line 1311
    .line 1312
    .line 1313
    move-result v11

    .line 1314
    iget-object v12, v12, Ldb8;->c:Ler4;

    .line 1315
    .line 1316
    invoke-virtual {v12, v14}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 1317
    .line 1318
    .line 1319
    move-result v12

    .line 1320
    if-eqz v12, :cond_34

    .line 1321
    .line 1322
    goto :goto_18

    .line 1323
    :cond_34
    invoke-virtual {v13, v14}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 1324
    .line 1325
    .line 1326
    move-result v12

    .line 1327
    if-eqz v12, :cond_35

    .line 1328
    .line 1329
    invoke-virtual {v13, v11, v14}, Lfh5;->d(ILjava/lang/String;)Ldb8;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v11

    .line 1333
    invoke-virtual {v11}, Ldb8;->isEmpty()Z

    .line 1334
    .line 1335
    .line 1336
    move-result v11

    .line 1337
    if-nez v11, :cond_35

    .line 1338
    .line 1339
    :goto_18
    add-int/lit8 v8, v8, 0x1

    .line 1340
    .line 1341
    goto :goto_16

    .line 1342
    :cond_35
    new-instance v1, Lwt1;

    .line 1343
    .line 1344
    const-string v2, "Ordered element \'%s\' missing for %s"

    .line 1345
    .line 1346
    filled-new-array {v10, v0}, [Ljava/lang/Object;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v0

    .line 1350
    invoke-direct {v1, v2, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1351
    .line 1352
    .line 1353
    throw v1

    .line 1354
    :cond_36
    if-eqz v17, :cond_3b

    .line 1355
    .line 1356
    invoke-interface/range {v17 .. v17}, Lpu5;->attributes()[Ljava/lang/String;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v2

    .line 1360
    array-length v5, v2

    .line 1361
    const/4 v8, 0x0

    .line 1362
    :goto_19
    if-ge v8, v5, :cond_3b

    .line 1363
    .line 1364
    aget-object v10, v2, v8

    .line 1365
    .line 1366
    invoke-virtual {v4, v10}, Ldr;->b(Ljava/lang/String;)Ls03;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v11

    .line 1370
    const/4 v12, 0x1

    .line 1371
    const/4 v13, 0x0

    .line 1372
    invoke-interface {v11, v13, v12}, Ls03;->l0(II)Ls03;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v14

    .line 1376
    invoke-interface {v11}, Ls03;->Y()Z

    .line 1377
    .line 1378
    .line 1379
    move-result v15

    .line 1380
    if-eqz v15, :cond_37

    .line 1381
    .line 1382
    invoke-virtual {v6, v14}, Ldb8;->d(Ls03;)Ldb8;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v14

    .line 1386
    goto :goto_1a

    .line 1387
    :cond_37
    move-object v14, v6

    .line 1388
    :goto_1a
    if-eqz v14, :cond_39

    .line 1389
    .line 1390
    invoke-interface {v11}, Ls03;->getLast()Ljava/lang/String;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v15

    .line 1394
    invoke-interface {v11}, Ls03;->Y()Z

    .line 1395
    .line 1396
    .line 1397
    move-result v11

    .line 1398
    iget-object v14, v14, Ldb8;->b:Ler4;

    .line 1399
    .line 1400
    if-nez v11, :cond_38

    .line 1401
    .line 1402
    invoke-virtual {v14, v10}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 1403
    .line 1404
    .line 1405
    move-result v11

    .line 1406
    goto :goto_1b

    .line 1407
    :cond_38
    invoke-virtual {v14, v15}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 1408
    .line 1409
    .line 1410
    move-result v11

    .line 1411
    goto :goto_1b

    .line 1412
    :cond_39
    move v11, v13

    .line 1413
    :goto_1b
    if-eqz v11, :cond_3a

    .line 1414
    .line 1415
    add-int/lit8 v8, v8, 0x1

    .line 1416
    .line 1417
    goto :goto_19

    .line 1418
    :cond_3a
    new-instance v1, Lw70;

    .line 1419
    .line 1420
    const-string v2, "Ordered attribute \'%s\' missing in %s"

    .line 1421
    .line 1422
    filled-new-array {v10, v0}, [Ljava/lang/Object;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v0

    .line 1426
    invoke-direct {v1, v2, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1427
    .line 1428
    .line 1429
    throw v1

    .line 1430
    :cond_3b
    const/4 v12, 0x1

    .line 1431
    const/4 v13, 0x0

    .line 1432
    invoke-virtual {v6}, Ldb8;->isEmpty()Z

    .line 1433
    .line 1434
    .line 1435
    move-result v2

    .line 1436
    if-nez v2, :cond_3c

    .line 1437
    .line 1438
    invoke-virtual {v6, v0}, Ldb8;->g(Ljava/lang/Class;)V

    .line 1439
    .line 1440
    .line 1441
    :cond_3c
    iget-object v2, v6, Ldb8;->r:Luq4;

    .line 1442
    .line 1443
    if-eqz v2, :cond_3d

    .line 1444
    .line 1445
    goto :goto_1c

    .line 1446
    :cond_3d
    iget-object v2, v6, Ldb8;->q:Luq4;

    .line 1447
    .line 1448
    :goto_1c
    const-string v4, "Elements used with %s in %s"

    .line 1449
    .line 1450
    const-string v5, "Paths used with %s in %s"

    .line 1451
    .line 1452
    if-eqz v2, :cond_40

    .line 1453
    .line 1454
    invoke-interface {v2}, Luq4;->p()Z

    .line 1455
    .line 1456
    .line 1457
    move-result v3

    .line 1458
    if-nez v3, :cond_42

    .line 1459
    .line 1460
    invoke-virtual {v9}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 1461
    .line 1462
    .line 1463
    move-result v3

    .line 1464
    if-eqz v3, :cond_3f

    .line 1465
    .line 1466
    invoke-virtual {v6}, Ldb8;->c()Z

    .line 1467
    .line 1468
    .line 1469
    move-result v3

    .line 1470
    if-nez v3, :cond_3e

    .line 1471
    .line 1472
    goto :goto_1e

    .line 1473
    :cond_3e
    new-instance v1, Lsf5;

    .line 1474
    .line 1475
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v0

    .line 1479
    invoke-direct {v1, v5, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1480
    .line 1481
    .line 1482
    throw v1

    .line 1483
    :cond_3f
    new-instance v1, Lsf5;

    .line 1484
    .line 1485
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v0

    .line 1489
    invoke-direct {v1, v4, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1490
    .line 1491
    .line 1492
    throw v1

    .line 1493
    :cond_40
    iget-object v2, v7, Ltr5;->b:Lo81;

    .line 1494
    .line 1495
    iget-object v2, v2, Lo81;->j:Lno6;

    .line 1496
    .line 1497
    if-nez v2, :cond_41

    .line 1498
    .line 1499
    move v7, v12

    .line 1500
    goto :goto_1d

    .line 1501
    :cond_41
    move v7, v13

    .line 1502
    :goto_1d
    if-eqz v7, :cond_42

    .line 1503
    .line 1504
    invoke-virtual {v6}, Ldb8;->isEmpty()Z

    .line 1505
    .line 1506
    .line 1507
    move-result v2

    .line 1508
    iput-boolean v2, v3, Lcr7;->l:Z

    .line 1509
    .line 1510
    :cond_42
    :goto_1e
    iget-object v2, v6, Ldb8;->r:Luq4;

    .line 1511
    .line 1512
    if-eqz v2, :cond_43

    .line 1513
    .line 1514
    goto :goto_1f

    .line 1515
    :cond_43
    iget-object v2, v6, Ldb8;->q:Luq4;

    .line 1516
    .line 1517
    :goto_1f
    if-eqz v2, :cond_48

    .line 1518
    .line 1519
    invoke-interface {v2}, Luq4;->p()Z

    .line 1520
    .line 1521
    .line 1522
    move-result v3

    .line 1523
    if-eqz v3, :cond_48

    .line 1524
    .line 1525
    invoke-interface {v2}, Luq4;->getKey()Ljava/lang/Object;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v3

    .line 1529
    invoke-virtual {v9}, Ler4;->iterator()Ljava/util/Iterator;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v7

    .line 1533
    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1534
    .line 1535
    .line 1536
    move-result v8

    .line 1537
    if-eqz v8, :cond_46

    .line 1538
    .line 1539
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v8

    .line 1543
    check-cast v8, Luq4;

    .line 1544
    .line 1545
    invoke-interface {v8}, Luq4;->getKey()Ljava/lang/Object;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v9

    .line 1549
    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1550
    .line 1551
    .line 1552
    move-result v9

    .line 1553
    if-eqz v9, :cond_45

    .line 1554
    .line 1555
    invoke-interface {v8}, Luq4;->b()Lvb8;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v8

    .line 1559
    invoke-interface {v8}, Lvb8;->getType()Ljava/lang/Class;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v8

    .line 1563
    const-class v9, Ljava/lang/String;

    .line 1564
    .line 1565
    if-eq v8, v9, :cond_44

    .line 1566
    .line 1567
    goto :goto_20

    .line 1568
    :cond_44
    new-instance v1, Lsf5;

    .line 1569
    .line 1570
    const-string v3, "Illegal entry of %s with text annotations on %s in %s"

    .line 1571
    .line 1572
    filled-new-array {v8, v2, v0}, [Ljava/lang/Object;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v0

    .line 1576
    invoke-direct {v1, v3, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1577
    .line 1578
    .line 1579
    throw v1

    .line 1580
    :cond_45
    new-instance v1, Lsf5;

    .line 1581
    .line 1582
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v0

    .line 1586
    invoke-direct {v1, v4, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1587
    .line 1588
    .line 1589
    throw v1

    .line 1590
    :cond_46
    invoke-virtual {v6}, Ldb8;->c()Z

    .line 1591
    .line 1592
    .line 1593
    move-result v3

    .line 1594
    if-nez v3, :cond_47

    .line 1595
    .line 1596
    goto :goto_21

    .line 1597
    :cond_47
    new-instance v1, Lsf5;

    .line 1598
    .line 1599
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v0

    .line 1603
    invoke-direct {v1, v5, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1604
    .line 1605
    .line 1606
    throw v1

    .line 1607
    :cond_48
    :goto_21
    invoke-interface/range {p1 .. p1}, Lri2;->getType()Ljava/lang/Class;

    .line 1608
    .line 1609
    .line 1610
    iget-object v0, v1, Ltr5;->c:Lbr7;

    .line 1611
    .line 1612
    if-nez v0, :cond_49

    .line 1613
    .line 1614
    iget-object v0, v1, Ltr5;->a:Lcr7;

    .line 1615
    .line 1616
    new-instance v2, Lbr7;

    .line 1617
    .line 1618
    iget-object v3, v0, Lcr7;->d:Lny1;

    .line 1619
    .line 1620
    iget-object v4, v0, Lcr7;->k:Ldb8;

    .line 1621
    .line 1622
    iget-object v5, v0, Lcr7;->j:Luq4;

    .line 1623
    .line 1624
    iget-boolean v0, v0, Lcr7;->l:Z

    .line 1625
    .line 1626
    invoke-direct {v2, v3, v4, v5, v0}, Lbr7;-><init>(Lny1;Ldb8;Luq4;Z)V

    .line 1627
    .line 1628
    .line 1629
    iput-object v2, v1, Ltr5;->c:Lbr7;

    .line 1630
    .line 1631
    :cond_49
    const/4 v2, 0x0

    .line 1632
    iput-object v2, v1, Ltr5;->a:Lcr7;

    .line 1633
    .line 1634
    return-void

    .line 1635
    :cond_4a
    new-instance v0, Lwt1;

    .line 1636
    .line 1637
    const-string v1, "Can not construct inner %s"

    .line 1638
    .line 1639
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v2

    .line 1643
    invoke-direct {v0, v1, v2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1644
    .line 1645
    .line 1646
    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->d:Lri2;

    .line 2
    .line 3
    invoke-interface {p0}, Lri2;->a()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b(Lai5;)Lyz0;
    .locals 1

    .line 1
    new-instance v0, Lyz0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lyz0;-><init>(Lq27;Lai5;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final c()Lwo1;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 2
    .line 3
    iget-object p0, p0, Lo81;->h:Lwo1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final d()Lny1;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->c:Lbr7;

    .line 2
    .line 3
    iget-object p0, p0, Lbr7;->a:Lny1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final e()Lxd2;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 2
    .line 3
    iget-object p0, p0, Lo81;->a:Loe;

    .line 4
    .line 5
    return-object p0
.end method

.method public final f()Lwo1;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 2
    .line 3
    iget-object p0, p0, Lo81;->g:Lwo1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final g()Lvj8;
    .locals 1

    .line 1
    iget-object p0, p0, Ltr5;->c:Lbr7;

    .line 2
    .line 3
    iget-object p0, p0, Lbr7;->b:Luq4;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Luq4;->k()Lau1;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-class v0, Lvj8;

    .line 12
    .line 13
    invoke-interface {p0, v0}, Lvb8;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lvj8;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->d:Lri2;

    .line 2
    .line 3
    invoke-interface {p0}, Lri2;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getText()V
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->c:Lbr7;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->d:Lri2;

    .line 2
    .line 3
    invoke-interface {p0}, Lri2;->getType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getVersion()Luq4;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->c:Lbr7;

    .line 2
    .line 3
    iget-object p0, p0, Lbr7;->b:Luq4;

    .line 4
    .line 5
    return-object p0
.end method

.method public final h()Lwo1;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 2
    .line 3
    iget-object p0, p0, Lo81;->e:Lwo1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final i()Lwo1;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 2
    .line 3
    iget-object p0, p0, Lo81;->d:Lwo1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final isPrimitive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->c:Lbr7;

    .line 2
    .line 3
    iget-boolean p0, p0, Lbr7;->d:Z

    .line 4
    .line 5
    return p0
.end method

.method public final j()Ld67;
    .locals 1

    .line 1
    new-instance v0, Lgh5;

    .line 2
    .line 3
    iget-object p0, p0, Ltr5;->c:Lbr7;

    .line 4
    .line 5
    iget-object p0, p0, Lbr7;->c:Ldb8;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lgh5;-><init>(Ldb8;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final k()Lwo1;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 2
    .line 3
    iget-object p0, p0, Lo81;->f:Lwo1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final l()Lwo1;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 2
    .line 3
    iget-object p0, p0, Lo81;->c:Lwo1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final m()Luw5;
    .locals 0

    .line 1
    iget-object p0, p0, Ltr5;->b:Lo81;

    .line 2
    .line 3
    iget-object p0, p0, Lo81;->b:Lxt1;

    .line 4
    .line 5
    iget-object p0, p0, Lxt1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Luw5;

    .line 8
    .line 9
    return-object p0
.end method
