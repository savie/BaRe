.class public abstract Lqq;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Ljava/util/List;ZLcd3;Lfe3;Ltd3;Lfd3;Lld3;Lqd3;Lid3;Lzd3;)Ljava/util/ArrayList;
    .locals 20

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    move-object/from16 v4, p8

    .line 10
    .line 11
    move-object/from16 v5, p9

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lai8;->b()V

    .line 41
    .line 42
    .line 43
    sget-object v6, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 44
    .line 45
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-static {v6}, Lai8;->i(Landroid/content/Context;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const-string v7, "prefs"

    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    if-eqz v6, :cond_0

    .line 57
    .line 58
    sget-object v6, Ltb1;->a:Ltb1;

    .line 59
    .line 60
    invoke-static {}, Lqb1;->m()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_0

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_0
    const-string v6, "key_filter_app_synced"

    .line 68
    .line 69
    sget-object v9, Lce3;->All:Lce3;

    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    :try_start_0
    sget-object v10, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 76
    .line 77
    if-eqz v10, :cond_1

    .line 78
    .line 79
    invoke-interface {v10, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-static {v7}, Lpe4;->F(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v8
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    :goto_0
    if-eqz v9, :cond_4

    .line 89
    .line 90
    invoke-static {}, Lce3;->getEntries()Ljx2;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Lz3;

    .line 95
    .line 96
    invoke-virtual {v6}, Lz3;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    :cond_2
    move-object v10, v6

    .line 101
    check-cast v10, Lw3;

    .line 102
    .line 103
    invoke-virtual {v10}, Lw3;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-eqz v11, :cond_3

    .line 108
    .line 109
    invoke-virtual {v10}, Lw3;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    move-object v11, v10

    .line 114
    check-cast v11, Lce3;

    .line 115
    .line 116
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-static {v11, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    if-eqz v11, :cond_2

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    move-object v10, v8

    .line 128
    :goto_1
    check-cast v10, Lce3;

    .line 129
    .line 130
    if-nez v10, :cond_5

    .line 131
    .line 132
    :cond_4
    sget-object v10, Lce3;->All:Lce3;

    .line 133
    .line 134
    :cond_5
    invoke-virtual {v10}, Lce3;->isApplied()Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_6

    .line 139
    .line 140
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 141
    .line 142
    const/4 v15, 0x4

    .line 143
    const/16 v16, 0x0

    .line 144
    .line 145
    const-string v12, "AppFilterHelper"

    .line 146
    .line 147
    const-string v13, "Drive or network not connected!!! Resetting sync filter mode."

    .line 148
    .line 149
    const/4 v14, 0x0

    .line 150
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10}, Lce3;->reset()V

    .line 154
    .line 155
    .line 156
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 157
    .line 158
    invoke-static {}, Lde3;->e()Lce3;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v6}, Lce3;->isApplied()Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_7

    .line 167
    .line 168
    invoke-static {}, Lde3;->e()Lce3;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    move-object/from16 v9, p0

    .line 173
    .line 174
    invoke-static {v9, v6}, Lqq;->b(Ljava/util/List;Lce3;)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    goto :goto_3

    .line 179
    :cond_7
    move-object/from16 v9, p0

    .line 180
    .line 181
    move-object v6, v9

    .line 182
    :goto_3
    sget-object v9, Ltd3;->Selected:Ltd3;

    .line 183
    .line 184
    move-object/from16 v10, p4

    .line 185
    .line 186
    if-ne v10, v9, :cond_12

    .line 187
    .line 188
    sget-object v9, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 189
    .line 190
    if-eqz v9, :cond_11

    .line 191
    .line 192
    const-string v7, "selected_labels_filter"

    .line 193
    .line 194
    sget-object v11, Lsv2;->a:Lsv2;

    .line 195
    .line 196
    invoke-interface {v9, v7, v11}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    if-nez v7, :cond_8

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_8
    move-object v11, v7

    .line 204
    :goto_4
    new-instance v7, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    :cond_9
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    if-eqz v11, :cond_a

    .line 218
    .line 219
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    check-cast v11, Ljava/lang/String;

    .line 224
    .line 225
    sget-object v12, Llr4;->a:Llr4;

    .line 226
    .line 227
    invoke-static {v11}, Llr4;->c(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    if-eqz v11, :cond_9

    .line 232
    .line 233
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    if-nez v9, :cond_b

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_b
    move-object v7, v8

    .line 245
    :goto_6
    if-eqz v7, :cond_c

    .line 246
    .line 247
    invoke-static {v7}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    goto :goto_7

    .line 252
    :cond_c
    move-object v7, v8

    .line 253
    :goto_7
    if-eqz v7, :cond_f

    .line 254
    .line 255
    new-instance v9, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    :cond_d
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v11

    .line 268
    if-eqz v11, :cond_e

    .line 269
    .line 270
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v11

    .line 274
    check-cast v11, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 275
    .line 276
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v11

    .line 280
    if-eqz v11, :cond_d

    .line 281
    .line 282
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_e
    invoke-static {v9}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    goto :goto_9

    .line 291
    :cond_f
    move-object v7, v8

    .line 292
    :goto_9
    if-eqz v7, :cond_10

    .line 293
    .line 294
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    if-eqz v9, :cond_13

    .line 299
    .line 300
    :cond_10
    invoke-virtual {v10}, Ltd3;->reset()V

    .line 301
    .line 302
    .line 303
    goto :goto_a

    .line 304
    :cond_11
    invoke-static {v7}, Lpe4;->F(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v8

    .line 308
    :cond_12
    move-object v7, v8

    .line 309
    :cond_13
    :goto_a
    new-instance v9, Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    if-eqz v11, :cond_48

    .line 323
    .line 324
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v11

    .line 328
    move-object v12, v11

    .line 329
    check-cast v12, Lji;

    .line 330
    .line 331
    invoke-virtual {v12}, Lji;->isBundled()Z

    .line 332
    .line 333
    .line 334
    move-result v13

    .line 335
    sget-object v14, Lpq;->a:[I

    .line 336
    .line 337
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 338
    .line 339
    .line 340
    move-result v15

    .line 341
    aget v14, v14, v15

    .line 342
    .line 343
    move-object/from16 v16, v8

    .line 344
    .line 345
    const/4 v8, 0x2

    .line 346
    const/4 v15, 0x1

    .line 347
    if-eq v14, v15, :cond_16

    .line 348
    .line 349
    if-eq v14, v8, :cond_15

    .line 350
    .line 351
    const/4 v8, 0x3

    .line 352
    if-ne v14, v8, :cond_14

    .line 353
    .line 354
    goto :goto_c

    .line 355
    :cond_14
    invoke-static {}, Lq;->j()V

    .line 356
    .line 357
    .line 358
    return-object v16

    .line 359
    :cond_15
    if-nez v13, :cond_17

    .line 360
    .line 361
    goto/16 :goto_15

    .line 362
    .line 363
    :cond_16
    if-eqz v13, :cond_17

    .line 364
    .line 365
    goto/16 :goto_15

    .line 366
    .line 367
    :cond_17
    :goto_c
    invoke-virtual/range {p2 .. p2}, Lcd3;->hasSystem()Z

    .line 368
    .line 369
    .line 370
    move-result v8

    .line 371
    const/4 v14, 0x4

    .line 372
    if-eqz v8, :cond_1b

    .line 373
    .line 374
    sget-object v8, Lpq;->b:[I

    .line 375
    .line 376
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    .line 377
    .line 378
    .line 379
    move-result v17

    .line 380
    aget v8, v8, v17

    .line 381
    .line 382
    if-eq v8, v15, :cond_1b

    .line 383
    .line 384
    const/4 v15, 0x2

    .line 385
    if-eq v8, v15, :cond_1a

    .line 386
    .line 387
    const/4 v15, 0x3

    .line 388
    if-eq v8, v15, :cond_19

    .line 389
    .line 390
    if-ne v8, v14, :cond_18

    .line 391
    .line 392
    if-eqz v13, :cond_1b

    .line 393
    .line 394
    invoke-virtual {v12}, Lji;->isLabelledOrFavorites()Z

    .line 395
    .line 396
    .line 397
    move-result v8

    .line 398
    if-nez v8, :cond_1b

    .line 399
    .line 400
    goto/16 :goto_15

    .line 401
    .line 402
    :cond_18
    invoke-static {}, Lq;->j()V

    .line 403
    .line 404
    .line 405
    return-object v16

    .line 406
    :cond_19
    if-eqz v13, :cond_1b

    .line 407
    .line 408
    invoke-virtual {v12}, Lji;->isUpdatedSystemApp()Z

    .line 409
    .line 410
    .line 411
    move-result v8

    .line 412
    if-nez v8, :cond_1b

    .line 413
    .line 414
    goto/16 :goto_15

    .line 415
    .line 416
    :cond_1a
    if-eqz v13, :cond_1b

    .line 417
    .line 418
    invoke-virtual {v12}, Lji;->isLaunchable()Z

    .line 419
    .line 420
    .line 421
    move-result v8

    .line 422
    if-nez v8, :cond_1b

    .line 423
    .line 424
    goto/16 :goto_15

    .line 425
    .line 426
    :cond_1b
    sget-object v8, Lpq;->c:[I

    .line 427
    .line 428
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 429
    .line 430
    .line 431
    move-result v13

    .line 432
    aget v8, v8, v13

    .line 433
    .line 434
    const/4 v13, 0x1

    .line 435
    if-eq v8, v13, :cond_22

    .line 436
    .line 437
    const/4 v15, 0x2

    .line 438
    if-eq v8, v15, :cond_1e

    .line 439
    .line 440
    const/4 v15, 0x3

    .line 441
    if-eq v8, v15, :cond_1d

    .line 442
    .line 443
    if-ne v8, v14, :cond_1c

    .line 444
    .line 445
    invoke-virtual {v12}, Lji;->hasLabels()Z

    .line 446
    .line 447
    .line 448
    move-result v8

    .line 449
    if-eqz v8, :cond_22

    .line 450
    .line 451
    goto/16 :goto_15

    .line 452
    .line 453
    :cond_1c
    invoke-static {}, Lq;->j()V

    .line 454
    .line 455
    .line 456
    return-object v16

    .line 457
    :cond_1d
    invoke-virtual {v12}, Lji;->hasLabels()Z

    .line 458
    .line 459
    .line 460
    move-result v8

    .line 461
    if-nez v8, :cond_22

    .line 462
    .line 463
    goto/16 :goto_15

    .line 464
    .line 465
    :cond_1e
    if-eqz v7, :cond_22

    .line 466
    .line 467
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 468
    .line 469
    .line 470
    move-result v8

    .line 471
    if-eqz v8, :cond_1f

    .line 472
    .line 473
    goto :goto_d

    .line 474
    :cond_1f
    invoke-virtual {v12}, Lji;->getLabels()Ljava/util/Set;

    .line 475
    .line 476
    .line 477
    move-result-object v8

    .line 478
    if-eqz v8, :cond_46

    .line 479
    .line 480
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 481
    .line 482
    .line 483
    move-result v13

    .line 484
    if-eqz v13, :cond_20

    .line 485
    .line 486
    goto/16 :goto_15

    .line 487
    .line 488
    :cond_20
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    :cond_21
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 493
    .line 494
    .line 495
    move-result v13

    .line 496
    if-eqz v13, :cond_46

    .line 497
    .line 498
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v13

    .line 502
    check-cast v13, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 503
    .line 504
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v13

    .line 508
    invoke-static {v7, v13}, Lel1;->M0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v13

    .line 512
    if-eqz v13, :cond_21

    .line 513
    .line 514
    :cond_22
    :goto_d
    invoke-virtual {v1}, Lfd3;->isApplied()Z

    .line 515
    .line 516
    .line 517
    move-result v8

    .line 518
    if-eqz v8, :cond_26

    .line 519
    .line 520
    invoke-virtual {v12}, Lji;->getLocalBackups()Ljava/util/List;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    if-eqz v8, :cond_24

    .line 525
    .line 526
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 527
    .line 528
    .line 529
    move-result v8

    .line 530
    if-eqz v8, :cond_23

    .line 531
    .line 532
    goto :goto_e

    .line 533
    :cond_23
    const/4 v13, 0x0

    .line 534
    goto :goto_f

    .line 535
    :cond_24
    :goto_e
    const/4 v13, 0x1

    .line 536
    :goto_f
    sget-object v8, Lfd3;->BackedUp:Lfd3;

    .line 537
    .line 538
    if-ne v1, v8, :cond_25

    .line 539
    .line 540
    if-eqz v13, :cond_25

    .line 541
    .line 542
    goto/16 :goto_15

    .line 543
    .line 544
    :cond_25
    sget-object v8, Lfd3;->NotBackedUp:Lfd3;

    .line 545
    .line 546
    if-ne v1, v8, :cond_26

    .line 547
    .line 548
    if-nez v13, :cond_26

    .line 549
    .line 550
    goto/16 :goto_15

    .line 551
    .line 552
    :cond_26
    invoke-virtual {v2}, Lld3;->isApplied()Z

    .line 553
    .line 554
    .line 555
    move-result v8

    .line 556
    if-eqz v8, :cond_28

    .line 557
    .line 558
    invoke-virtual {v12}, Lji;->isFavorite()Z

    .line 559
    .line 560
    .line 561
    move-result v8

    .line 562
    sget-object v13, Lld3;->Favorites:Lld3;

    .line 563
    .line 564
    if-ne v2, v13, :cond_27

    .line 565
    .line 566
    if-nez v8, :cond_27

    .line 567
    .line 568
    goto/16 :goto_15

    .line 569
    .line 570
    :cond_27
    sget-object v13, Lld3;->NotFavorites:Lld3;

    .line 571
    .line 572
    if-ne v2, v13, :cond_28

    .line 573
    .line 574
    if-eqz v8, :cond_28

    .line 575
    .line 576
    goto/16 :goto_15

    .line 577
    .line 578
    :cond_28
    invoke-virtual {v3}, Lqd3;->isApplied()Z

    .line 579
    .line 580
    .line 581
    move-result v8

    .line 582
    if-eqz v8, :cond_2a

    .line 583
    .line 584
    invoke-virtual {v12}, Lji;->isInstalled()Z

    .line 585
    .line 586
    .line 587
    move-result v8

    .line 588
    sget-object v13, Lqd3;->Installed:Lqd3;

    .line 589
    .line 590
    if-ne v3, v13, :cond_29

    .line 591
    .line 592
    if-nez v8, :cond_29

    .line 593
    .line 594
    goto/16 :goto_15

    .line 595
    .line 596
    :cond_29
    sget-object v13, Lqd3;->NotInstalled:Lqd3;

    .line 597
    .line 598
    if-ne v3, v13, :cond_2a

    .line 599
    .line 600
    if-eqz v8, :cond_2a

    .line 601
    .line 602
    goto/16 :goto_15

    .line 603
    .line 604
    :cond_2a
    invoke-virtual {v4}, Lid3;->isApplied()Z

    .line 605
    .line 606
    .line 607
    move-result v8

    .line 608
    if-eqz v8, :cond_2c

    .line 609
    .line 610
    invoke-virtual {v12}, Lji;->getEnabled()Z

    .line 611
    .line 612
    .line 613
    move-result v8

    .line 614
    sget-object v13, Lid3;->Enabled:Lid3;

    .line 615
    .line 616
    if-ne v4, v13, :cond_2b

    .line 617
    .line 618
    if-nez v8, :cond_2b

    .line 619
    .line 620
    goto/16 :goto_15

    .line 621
    .line 622
    :cond_2b
    sget-object v13, Lid3;->Disabled:Lid3;

    .line 623
    .line 624
    if-ne v4, v13, :cond_2c

    .line 625
    .line 626
    if-eqz v8, :cond_2c

    .line 627
    .line 628
    goto/16 :goto_15

    .line 629
    .line 630
    :cond_2c
    invoke-virtual {v5}, Lzd3;->isApplied()Z

    .line 631
    .line 632
    .line 633
    move-result v8

    .line 634
    if-eqz v8, :cond_47

    .line 635
    .line 636
    sget-object v8, Lzd3;->BackupOld:Lzd3;

    .line 637
    .line 638
    if-ne v5, v8, :cond_2d

    .line 639
    .line 640
    invoke-static {v12, v0}, Lqq;->f(Lji;Z)Z

    .line 641
    .line 642
    .line 643
    move-result v8

    .line 644
    if-nez v8, :cond_2d

    .line 645
    .line 646
    goto/16 :goto_15

    .line 647
    .line 648
    :cond_2d
    sget-object v8, Lzd3;->BackupNew:Lzd3;

    .line 649
    .line 650
    if-ne v5, v8, :cond_30

    .line 651
    .line 652
    invoke-virtual {v12}, Lji;->getVersionCode()Ljava/lang/Long;

    .line 653
    .line 654
    .line 655
    move-result-object v8

    .line 656
    invoke-virtual {v12}, Lji;->isInstalled()Z

    .line 657
    .line 658
    .line 659
    move-result v13

    .line 660
    if-eqz v13, :cond_46

    .line 661
    .line 662
    if-nez v8, :cond_2e

    .line 663
    .line 664
    goto/16 :goto_15

    .line 665
    .line 666
    :cond_2e
    if-eqz v0, :cond_2f

    .line 667
    .line 668
    invoke-virtual {v12}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 669
    .line 670
    .line 671
    move-result-object v13

    .line 672
    if-eqz v13, :cond_46

    .line 673
    .line 674
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getLatestBackup()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 675
    .line 676
    .line 677
    move-result-object v13

    .line 678
    if-eqz v13, :cond_46

    .line 679
    .line 680
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 681
    .line 682
    .line 683
    move-result-object v13

    .line 684
    if-eqz v13, :cond_46

    .line 685
    .line 686
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasApk()Z

    .line 687
    .line 688
    .line 689
    move-result v14

    .line 690
    if-eqz v14, :cond_46

    .line 691
    .line 692
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 693
    .line 694
    .line 695
    move-result-wide v14

    .line 696
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionCode()Ljava/lang/Long;

    .line 697
    .line 698
    .line 699
    move-result-object v8

    .line 700
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    .line 701
    .line 702
    .line 703
    move-result-wide v18

    .line 704
    cmp-long v8, v14, v18

    .line 705
    .line 706
    if-gez v8, :cond_46

    .line 707
    .line 708
    goto :goto_10

    .line 709
    :cond_2f
    invoke-static {v12}, Lqq;->d(Lji;)Ljava/lang/Long;

    .line 710
    .line 711
    .line 712
    move-result-object v13

    .line 713
    if-eqz v13, :cond_46

    .line 714
    .line 715
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 716
    .line 717
    .line 718
    move-result-wide v13

    .line 719
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 720
    .line 721
    .line 722
    move-result-wide v18

    .line 723
    cmp-long v8, v13, v18

    .line 724
    .line 725
    if-lez v8, :cond_46

    .line 726
    .line 727
    :cond_30
    :goto_10
    sget-object v8, Lzd3;->MultipleBackups:Lzd3;

    .line 728
    .line 729
    if-ne v5, v8, :cond_34

    .line 730
    .line 731
    if-eqz v0, :cond_32

    .line 732
    .line 733
    invoke-virtual {v12}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 734
    .line 735
    .line 736
    move-result-object v8

    .line 737
    if-eqz v8, :cond_46

    .line 738
    .line 739
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getBackups()Ljava/util/List;

    .line 740
    .line 741
    .line 742
    move-result-object v8

    .line 743
    if-nez v8, :cond_31

    .line 744
    .line 745
    goto/16 :goto_15

    .line 746
    .line 747
    :cond_31
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 748
    .line 749
    .line 750
    move-result v8

    .line 751
    const/4 v13, 0x1

    .line 752
    if-le v8, v13, :cond_46

    .line 753
    .line 754
    goto :goto_11

    .line 755
    :cond_32
    const/4 v13, 0x1

    .line 756
    invoke-virtual {v12}, Lji;->getLocalBackups()Ljava/util/List;

    .line 757
    .line 758
    .line 759
    move-result-object v8

    .line 760
    if-nez v8, :cond_33

    .line 761
    .line 762
    goto/16 :goto_15

    .line 763
    .line 764
    :cond_33
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 765
    .line 766
    .line 767
    move-result v8

    .line 768
    if-le v8, v13, :cond_46

    .line 769
    .line 770
    :cond_34
    :goto_11
    sget-object v8, Lzd3;->ProtectedBackups:Lzd3;

    .line 771
    .line 772
    if-ne v5, v8, :cond_3c

    .line 773
    .line 774
    if-eqz v0, :cond_38

    .line 775
    .line 776
    invoke-virtual {v12}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 777
    .line 778
    .line 779
    move-result-object v8

    .line 780
    if-eqz v8, :cond_46

    .line 781
    .line 782
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getBackups()Ljava/util/List;

    .line 783
    .line 784
    .line 785
    move-result-object v8

    .line 786
    if-nez v8, :cond_35

    .line 787
    .line 788
    goto/16 :goto_15

    .line 789
    .line 790
    :cond_35
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 791
    .line 792
    .line 793
    move-result v13

    .line 794
    if-eqz v13, :cond_36

    .line 795
    .line 796
    goto/16 :goto_15

    .line 797
    .line 798
    :cond_36
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 799
    .line 800
    .line 801
    move-result-object v8

    .line 802
    :cond_37
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 803
    .line 804
    .line 805
    move-result v13

    .line 806
    if-eqz v13, :cond_46

    .line 807
    .line 808
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v13

    .line 812
    check-cast v13, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 813
    .line 814
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 815
    .line 816
    .line 817
    move-result-object v13

    .line 818
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isProtectedBackup()Z

    .line 819
    .line 820
    .line 821
    move-result v13

    .line 822
    if-eqz v13, :cond_37

    .line 823
    .line 824
    goto :goto_12

    .line 825
    :cond_38
    invoke-virtual {v12}, Lji;->getLocalBackups()Ljava/util/List;

    .line 826
    .line 827
    .line 828
    move-result-object v8

    .line 829
    if-nez v8, :cond_39

    .line 830
    .line 831
    goto/16 :goto_15

    .line 832
    .line 833
    :cond_39
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 834
    .line 835
    .line 836
    move-result v13

    .line 837
    if-eqz v13, :cond_3a

    .line 838
    .line 839
    goto/16 :goto_15

    .line 840
    .line 841
    :cond_3a
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 842
    .line 843
    .line 844
    move-result-object v8

    .line 845
    :cond_3b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 846
    .line 847
    .line 848
    move-result v13

    .line 849
    if-eqz v13, :cond_46

    .line 850
    .line 851
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v13

    .line 855
    check-cast v13, Lgm;

    .line 856
    .line 857
    iget-object v13, v13, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 858
    .line 859
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isProtectedBackup()Z

    .line 860
    .line 861
    .line 862
    move-result v13

    .line 863
    if-eqz v13, :cond_3b

    .line 864
    .line 865
    :cond_3c
    :goto_12
    sget-object v8, Lzd3;->BackupsWithNotes:Lzd3;

    .line 866
    .line 867
    if-ne v5, v8, :cond_44

    .line 868
    .line 869
    if-eqz v0, :cond_40

    .line 870
    .line 871
    invoke-virtual {v12}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 872
    .line 873
    .line 874
    move-result-object v8

    .line 875
    if-eqz v8, :cond_46

    .line 876
    .line 877
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getBackups()Ljava/util/List;

    .line 878
    .line 879
    .line 880
    move-result-object v8

    .line 881
    if-nez v8, :cond_3d

    .line 882
    .line 883
    goto/16 :goto_15

    .line 884
    .line 885
    :cond_3d
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 886
    .line 887
    .line 888
    move-result v13

    .line 889
    if-eqz v13, :cond_3e

    .line 890
    .line 891
    goto/16 :goto_15

    .line 892
    .line 893
    :cond_3e
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 894
    .line 895
    .line 896
    move-result-object v8

    .line 897
    :cond_3f
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 898
    .line 899
    .line 900
    move-result v13

    .line 901
    if-eqz v13, :cond_46

    .line 902
    .line 903
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    move-result-object v13

    .line 907
    check-cast v13, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 908
    .line 909
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 910
    .line 911
    .line 912
    move-result-object v13

    .line 913
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getNote()Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v13

    .line 917
    if-eqz v13, :cond_3f

    .line 918
    .line 919
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 920
    .line 921
    .line 922
    move-result v13

    .line 923
    if-nez v13, :cond_44

    .line 924
    .line 925
    goto :goto_13

    .line 926
    :cond_40
    invoke-virtual {v12}, Lji;->getLocalBackups()Ljava/util/List;

    .line 927
    .line 928
    .line 929
    move-result-object v8

    .line 930
    if-nez v8, :cond_41

    .line 931
    .line 932
    goto :goto_15

    .line 933
    :cond_41
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 934
    .line 935
    .line 936
    move-result v13

    .line 937
    if-eqz v13, :cond_42

    .line 938
    .line 939
    goto :goto_15

    .line 940
    :cond_42
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 941
    .line 942
    .line 943
    move-result-object v8

    .line 944
    :cond_43
    :goto_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 945
    .line 946
    .line 947
    move-result v13

    .line 948
    if-eqz v13, :cond_46

    .line 949
    .line 950
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v13

    .line 954
    check-cast v13, Lgm;

    .line 955
    .line 956
    iget-object v13, v13, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 957
    .line 958
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getNote()Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v13

    .line 962
    if-eqz v13, :cond_43

    .line 963
    .line 964
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 965
    .line 966
    .line 967
    move-result v13

    .line 968
    if-nez v13, :cond_44

    .line 969
    .line 970
    goto :goto_14

    .line 971
    :cond_44
    sget-object v8, Lzd3;->InstalledFromGooglePlay:Lzd3;

    .line 972
    .line 973
    if-ne v5, v8, :cond_45

    .line 974
    .line 975
    invoke-virtual {v12}, Lji;->isBundled()Z

    .line 976
    .line 977
    .line 978
    move-result v8

    .line 979
    if-nez v8, :cond_46

    .line 980
    .line 981
    invoke-virtual {v12, v0}, Lji;->isInstalledFromGooglePlay(Z)Z

    .line 982
    .line 983
    .line 984
    move-result v8

    .line 985
    if-nez v8, :cond_45

    .line 986
    .line 987
    goto :goto_15

    .line 988
    :cond_45
    sget-object v8, Lzd3;->NotInstalledFromGooglePlay:Lzd3;

    .line 989
    .line 990
    if-ne v5, v8, :cond_47

    .line 991
    .line 992
    invoke-virtual {v12}, Lji;->isBundled()Z

    .line 993
    .line 994
    .line 995
    move-result v8

    .line 996
    if-nez v8, :cond_46

    .line 997
    .line 998
    invoke-virtual {v12, v0}, Lji;->isInstalledFromGooglePlay(Z)Z

    .line 999
    .line 1000
    .line 1001
    move-result v8

    .line 1002
    if-eqz v8, :cond_47

    .line 1003
    .line 1004
    :cond_46
    :goto_15
    move-object/from16 v8, v16

    .line 1005
    .line 1006
    goto/16 :goto_b

    .line 1007
    .line 1008
    :cond_47
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    .line 1010
    .line 1011
    goto :goto_15

    .line 1012
    :cond_48
    return-object v9
.end method

.method public static b(Ljava/util/List;Lce3;)Ljava/util/List;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lce3;->isApplied()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_c

    .line 13
    .line 14
    invoke-static {}, Lre3;->c()Lzc2;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v0, v2}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v3, v0, Lxe3;

    .line 24
    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    check-cast v0, Lxe3;

    .line 28
    .line 29
    iget-object v0, v0, Lxe3;->n:Leb2;

    .line 30
    .line 31
    invoke-virtual {v0}, Leb2;->b()Ldb2;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v4, v0, Ldb2;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v4, Ljava/util/Iterator;

    .line 43
    .line 44
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lhk5;

    .line 55
    .line 56
    new-instance v6, Leb2;

    .line 57
    .line 58
    iget-object v7, v0, Ldb2;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v7, Leb2;

    .line 61
    .line 62
    iget-object v7, v7, Leb2;->b:Lzc2;

    .line 63
    .line 64
    iget-object v8, v5, Lhk5;->a:Lm61;

    .line 65
    .line 66
    iget-object v8, v8, Lm61;->a:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v7, v8}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    iget-object v5, v5, Lhk5;->b:Lqn5;

    .line 73
    .line 74
    invoke-static {v5}, Lsb4;->d(Lqn5;)Lsb4;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-direct {v6, v7, v5}, Leb2;-><init>(Lzc2;Lsb4;)V

    .line 79
    .line 80
    .line 81
    sget-object v5, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->Companion:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;->fromSnapshot(Leb2;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_1

    .line 88
    .line 89
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getLatestBackup()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isValidCloudDetails()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    move-object v5, v1

    .line 105
    :goto_1
    if-eqz v5, :cond_0

    .line 106
    .line 107
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    move-object v1, v3

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    instance-of v3, v0, Lwe3;

    .line 114
    .line 115
    if-eqz v3, :cond_b

    .line 116
    .line 117
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 118
    .line 119
    check-cast v0, Lwe3;

    .line 120
    .line 121
    iget-object v0, v0, Lwe3;->n:Lwc2;

    .line 122
    .line 123
    iget-object v0, v0, Lwc2;->b:Ljava/lang/String;

    .line 124
    .line 125
    const-string v3, "getSyncedApps.Error: "

    .line 126
    .line 127
    invoke-static {v3, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    const/4 v8, 0x4

    .line 132
    const/4 v9, 0x0

    .line 133
    const-string v5, "AppFilterHelper"

    .line 134
    .line 135
    const/4 v7, 0x0

    .line 136
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 140
    .line 141
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const v3, 0x7f130581

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    sget-object v4, Lzn4;->a:Lzn4;

    .line 156
    .line 157
    invoke-static {v0, v3}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_2
    if-eqz v1, :cond_a

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_4

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_4
    sget-object v0, Lce3;->Synced:Lce3;

    .line 170
    .line 171
    const/4 v3, 0x0

    .line 172
    if-ne p1, v0, :cond_5

    .line 173
    .line 174
    move p1, v2

    .line 175
    goto :goto_3

    .line 176
    :cond_5
    move p1, v3

    .line 177
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    :cond_6
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_9

    .line 191
    .line 192
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    move-object v5, v4

    .line 197
    check-cast v5, Lji;

    .line 198
    .line 199
    invoke-static {v5, v1}, Lqq;->e(Lji;Ljava/util/ArrayList;)Z

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-eqz p1, :cond_7

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_7
    if-nez v5, :cond_8

    .line 207
    .line 208
    move v5, v2

    .line 209
    goto :goto_5

    .line 210
    :cond_8
    move v5, v3

    .line 211
    :goto_5
    if-eqz v5, :cond_6

    .line 212
    .line 213
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_9
    return-object v0

    .line 218
    :cond_a
    :goto_6
    return-object p0

    .line 219
    :cond_b
    invoke-static {}, Lq;->j()V

    .line 220
    .line 221
    .line 222
    return-object v1

    .line 223
    :cond_c
    const-string p0, "Sync mode must not be "

    .line 224
    .line 225
    const-string v0, "!!!"

    .line 226
    .line 227
    invoke-static {p1, v0, p0}, Ld6;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return-object v1
.end method

.method public static c(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lod3;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    instance-of v3, v2, Lde3;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-interface {v2}, Lod3;->a()Lnd3;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Lnd3;->isApplied()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    :goto_1
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .line 46
    .line 47
    const/16 p1, 0xa

    .line 48
    .line 49
    invoke-static {v0, p1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lod3;

    .line 71
    .line 72
    invoke-interface {v0}, Lod3;->a()Lnd3;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    .line 84
    .line 85
    return-object p1
.end method

.method public static d(Lji;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lji;->getLocalBackups()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    invoke-static {p0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lgm;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lgm;->a:Lhk;

    .line 17
    .line 18
    invoke-virtual {v0}, Lhk;->c()Lq63;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lq63;->j()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getVersionCode()Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lhk;->c()Lq63;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-static {p0, v0}, Lng;->a(Lq63;Z)Lrg;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lrg;->c()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :cond_1
    return-object p0

    .line 54
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public static e(Lji;Ljava/util/ArrayList;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getLatestBackup()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    return p0

    .line 50
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 51
    return p0
.end method

.method public static f(Lji;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lji;->getVersionCode()Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lji;->isInstalled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getLatestBackup()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasApk()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionCode()Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lio4;->h(Ljava/lang/Long;)J

    .line 52
    .line 53
    .line 54
    move-result-wide p0

    .line 55
    cmp-long p0, v0, p0

    .line 56
    .line 57
    if-lez p0, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p0}, Lqq;->d(Lji;)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide p0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    cmp-long p0, p0, v0

    .line 75
    .line 76
    if-gez p0, :cond_2

    .line 77
    .line 78
    :goto_0
    const/4 p0, 0x1

    .line 79
    return p0

    .line 80
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 81
    return p0
.end method
