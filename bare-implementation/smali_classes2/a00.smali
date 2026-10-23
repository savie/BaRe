.class public final La00;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lhz;

.field public final b:Lc40;

.field public final c:Lhk;

.field public final d:Lji;

.field public final e:Lmz;

.field public final f:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public h:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

.field public i:Z

.field public j:Lzc2;

.field public k:Z

.field public final l:Lxz;

.field public final m:Lmk0;

.field public n:Lyk;


# direct methods
.method public constructor <init>(Lhz;Lc40;Lhk;Ljava/lang/String;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, La00;->a:Lhz;

    .line 14
    .line 15
    move-object/from16 v3, p2

    .line 16
    .line 17
    iput-object v3, v0, La00;->b:Lc40;

    .line 18
    .line 19
    iput-object v2, v0, La00;->c:Lhk;

    .line 20
    .line 21
    iget-object v3, v1, Lhz;->b:Lji;

    .line 22
    .line 23
    iput-object v3, v0, La00;->d:Lji;

    .line 24
    .line 25
    iget-object v4, v1, Lhz;->f:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 26
    .line 27
    iget-object v1, v1, Lhz;->c:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {v1}, Lwx3;->o(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x1

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2}, Lhk;->c()Lq63;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Lq63;->j()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Lhk;->c()Lq63;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    iget-object v13, v2, Lhk;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v9, Lrf8;

    .line 58
    .line 59
    sget-object v5, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 60
    .line 61
    if-ne v4, v5, :cond_0

    .line 62
    .line 63
    move v14, v8

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move v14, v7

    .line 66
    :goto_0
    const/4 v11, 0x1

    .line 67
    const/4 v12, 0x1

    .line 68
    invoke-direct/range {v9 .. v14}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    move-object v11, v9

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move-object v11, v6

    .line 74
    :goto_1
    sget-object v5, Liu;->APP:Liu;

    .line 75
    .line 76
    invoke-interface {v1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_3

    .line 81
    .line 82
    invoke-virtual {v2}, Lhk;->C()Lq63;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-virtual {v9}, Lq63;->j()Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eqz v9, :cond_3

    .line 91
    .line 92
    invoke-virtual {v2}, Lhk;->C()Lq63;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    iget-object v9, v2, Lhk;->a:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v12, Lrf8;

    .line 102
    .line 103
    sget-object v10, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 104
    .line 105
    if-ne v4, v10, :cond_2

    .line 106
    .line 107
    move/from16 v17, v8

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    move/from16 v17, v7

    .line 111
    .line 112
    :goto_2
    const/4 v14, 0x2

    .line 113
    const/4 v15, 0x1

    .line 114
    move-object/from16 v16, v9

    .line 115
    .line 116
    invoke-direct/range {v12 .. v17}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_3
    move-object v12, v6

    .line 121
    :goto_3
    invoke-interface {v1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_5

    .line 126
    .line 127
    invoke-virtual {v2}, Lhk;->z()Lq63;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v5}, Lq63;->j()Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_5

    .line 136
    .line 137
    invoke-virtual {v2}, Lhk;->z()Lq63;

    .line 138
    .line 139
    .line 140
    move-result-object v14

    .line 141
    iget-object v5, v2, Lhk;->a:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    new-instance v13, Lrf8;

    .line 147
    .line 148
    sget-object v9, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 149
    .line 150
    if-ne v4, v9, :cond_4

    .line 151
    .line 152
    move/from16 v18, v8

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_4
    move/from16 v18, v7

    .line 156
    .line 157
    :goto_4
    const/4 v15, 0x3

    .line 158
    const/16 v16, 0x1

    .line 159
    .line 160
    move-object/from16 v17, v5

    .line 161
    .line 162
    invoke-direct/range {v13 .. v18}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_5
    move-object v13, v6

    .line 167
    :goto_5
    sget-object v5, Liu;->DATA:Liu;

    .line 168
    .line 169
    invoke-interface {v1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_7

    .line 174
    .line 175
    invoke-virtual {v2}, Lhk;->g()Lq63;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v5}, Lq63;->j()Z

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-eqz v5, :cond_7

    .line 184
    .line 185
    invoke-virtual {v2}, Lhk;->g()Lq63;

    .line 186
    .line 187
    .line 188
    move-result-object v15

    .line 189
    iget-object v5, v2, Lhk;->a:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    new-instance v14, Lrf8;

    .line 195
    .line 196
    sget-object v9, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 197
    .line 198
    if-ne v4, v9, :cond_6

    .line 199
    .line 200
    move/from16 v19, v8

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_6
    move/from16 v19, v7

    .line 204
    .line 205
    :goto_6
    const/16 v16, 0x4

    .line 206
    .line 207
    const/16 v17, 0x1

    .line 208
    .line 209
    move-object/from16 v18, v5

    .line 210
    .line 211
    invoke-direct/range {v14 .. v19}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 212
    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_7
    move-object v14, v6

    .line 216
    :goto_7
    sget-object v5, Liu;->EXTDATA:Liu;

    .line 217
    .line 218
    invoke-interface {v1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    if-eqz v5, :cond_9

    .line 223
    .line 224
    invoke-virtual {v2}, Lhk;->n()Lq63;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-virtual {v5}, Lq63;->j()Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-eqz v5, :cond_9

    .line 233
    .line 234
    invoke-virtual {v2}, Lhk;->n()Lq63;

    .line 235
    .line 236
    .line 237
    move-result-object v16

    .line 238
    iget-object v5, v2, Lhk;->a:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    new-instance v15, Lrf8;

    .line 244
    .line 245
    sget-object v9, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 246
    .line 247
    if-ne v4, v9, :cond_8

    .line 248
    .line 249
    move/from16 v20, v8

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_8
    move/from16 v20, v7

    .line 253
    .line 254
    :goto_8
    const/16 v17, 0x6

    .line 255
    .line 256
    const/16 v18, 0x1

    .line 257
    .line 258
    move-object/from16 v19, v5

    .line 259
    .line 260
    invoke-direct/range {v15 .. v20}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 261
    .line 262
    .line 263
    goto :goto_9

    .line 264
    :cond_9
    move-object v15, v6

    .line 265
    :goto_9
    sget-object v5, Liu;->MEDIA:Liu;

    .line 266
    .line 267
    invoke-interface {v1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-eqz v5, :cond_b

    .line 272
    .line 273
    invoke-virtual {v2}, Lhk;->q()Lq63;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-virtual {v5}, Lq63;->j()Z

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    if-eqz v5, :cond_b

    .line 282
    .line 283
    invoke-virtual {v2}, Lhk;->q()Lq63;

    .line 284
    .line 285
    .line 286
    move-result-object v17

    .line 287
    iget-object v5, v2, Lhk;->a:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    new-instance v16, Lrf8;

    .line 293
    .line 294
    sget-object v9, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 295
    .line 296
    if-ne v4, v9, :cond_a

    .line 297
    .line 298
    move/from16 v21, v8

    .line 299
    .line 300
    goto :goto_a

    .line 301
    :cond_a
    move/from16 v21, v7

    .line 302
    .line 303
    :goto_a
    const/16 v18, 0x7

    .line 304
    .line 305
    const/16 v19, 0x1

    .line 306
    .line 307
    move-object/from16 v20, v5

    .line 308
    .line 309
    invoke-direct/range {v16 .. v21}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 310
    .line 311
    .line 312
    goto :goto_b

    .line 313
    :cond_b
    move-object/from16 v16, v6

    .line 314
    .line 315
    :goto_b
    sget-object v5, Liu;->EXPANSION:Liu;

    .line 316
    .line 317
    invoke-interface {v1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_d

    .line 322
    .line 323
    invoke-virtual {v2}, Lhk;->m()Lq63;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v1}, Lq63;->j()Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_d

    .line 332
    .line 333
    invoke-virtual {v2}, Lhk;->m()Lq63;

    .line 334
    .line 335
    .line 336
    move-result-object v18

    .line 337
    iget-object v1, v2, Lhk;->a:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    new-instance v17, Lrf8;

    .line 343
    .line 344
    sget-object v5, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 345
    .line 346
    if-ne v4, v5, :cond_c

    .line 347
    .line 348
    move/from16 v22, v8

    .line 349
    .line 350
    goto :goto_c

    .line 351
    :cond_c
    move/from16 v22, v7

    .line 352
    .line 353
    :goto_c
    const/16 v19, 0x5

    .line 354
    .line 355
    const/16 v20, 0x1

    .line 356
    .line 357
    move-object/from16 v21, v1

    .line 358
    .line 359
    invoke-direct/range {v17 .. v22}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 360
    .line 361
    .line 362
    goto :goto_d

    .line 363
    :cond_d
    move-object/from16 v17, v6

    .line 364
    .line 365
    :goto_d
    invoke-virtual {v2}, Lhk;->B()Lq63;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v1}, Lq63;->j()Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_f

    .line 374
    .line 375
    invoke-virtual {v2}, Lhk;->B()Lq63;

    .line 376
    .line 377
    .line 378
    move-result-object v19

    .line 379
    iget-object v1, v2, Lhk;->a:Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    new-instance v18, Lrf8;

    .line 385
    .line 386
    sget-object v5, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 387
    .line 388
    if-ne v4, v5, :cond_e

    .line 389
    .line 390
    move/from16 v23, v8

    .line 391
    .line 392
    goto :goto_e

    .line 393
    :cond_e
    move/from16 v23, v7

    .line 394
    .line 395
    :goto_e
    const/16 v20, 0x8

    .line 396
    .line 397
    const/16 v21, 0x1

    .line 398
    .line 399
    move-object/from16 v22, v1

    .line 400
    .line 401
    invoke-direct/range {v18 .. v23}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 402
    .line 403
    .line 404
    goto :goto_f

    .line 405
    :cond_f
    move-object/from16 v18, v6

    .line 406
    .line 407
    :goto_f
    invoke-virtual {v2}, Lhk;->u()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    if-nez v1, :cond_10

    .line 412
    .line 413
    sget-object v1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->Companion:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$a;

    .line 414
    .line 415
    invoke-virtual {v2}, Lhk;->l()J

    .line 416
    .line 417
    .line 418
    move-result-wide v4

    .line 419
    invoke-virtual {v1, v3, v4, v5}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$a;->from(Lji;J)Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    :cond_10
    move-object/from16 v19, v1

    .line 424
    .line 425
    move-object v10, v11

    .line 426
    move-object v11, v12

    .line 427
    move-object v12, v13

    .line 428
    move-object v13, v14

    .line 429
    move-object v14, v15

    .line 430
    move-object/from16 v15, v16

    .line 431
    .line 432
    move-object/from16 v16, v17

    .line 433
    .line 434
    move-object/from16 v17, v18

    .line 435
    .line 436
    filled-new-array/range {v10 .. v17}, [Lrf8;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    move-object v6, v15

    .line 441
    move-object/from16 v2, v16

    .line 442
    .line 443
    move-object v15, v14

    .line 444
    move-object v14, v13

    .line 445
    move-object v13, v12

    .line 446
    move-object v12, v11

    .line 447
    move-object v11, v10

    .line 448
    invoke-static {v1}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    check-cast v1, Ljava/util/ArrayList;

    .line 453
    .line 454
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    const-wide/16 v3, 0x0

    .line 459
    .line 460
    move-wide/from16 v20, v3

    .line 461
    .line 462
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    if-eqz v5, :cond_11

    .line 467
    .line 468
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    check-cast v5, Lrf8;

    .line 473
    .line 474
    invoke-virtual {v5}, Lrf8;->a()J

    .line 475
    .line 476
    .line 477
    move-result-wide v7

    .line 478
    add-long v20, v7, v20

    .line 479
    .line 480
    goto :goto_10

    .line 481
    :cond_11
    filled-new-array {v14, v15, v6, v2}, [Lrf8;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-static {v1}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    check-cast v1, Ljava/util/ArrayList;

    .line 490
    .line 491
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    move-wide/from16 v22, v3

    .line 496
    .line 497
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    if-eqz v3, :cond_12

    .line 502
    .line 503
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    check-cast v3, Lrf8;

    .line 508
    .line 509
    invoke-virtual {v3}, Lrf8;->a()J

    .line 510
    .line 511
    .line 512
    move-result-wide v3

    .line 513
    add-long v22, v3, v22

    .line 514
    .line 515
    goto :goto_11

    .line 516
    :cond_12
    new-instance v10, Lmz;

    .line 517
    .line 518
    move-object/from16 v16, v6

    .line 519
    .line 520
    move-object/from16 v18, v17

    .line 521
    .line 522
    move-object/from16 v17, v2

    .line 523
    .line 524
    invoke-direct/range {v10 .. v23}, Lmz;-><init>(Lrf8;Lrf8;Lrf8;Lrf8;Lrf8;Lrf8;Lrf8;Lrf8;Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;JJ)V

    .line 525
    .line 526
    .line 527
    iput-object v10, v0, La00;->e:Lmz;

    .line 528
    .line 529
    iget-object v1, v0, La00;->c:Lhk;

    .line 530
    .line 531
    invoke-virtual {v1}, Lhk;->u()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    if-nez v1, :cond_13

    .line 536
    .line 537
    sget-object v1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->Companion:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$a;

    .line 538
    .line 539
    iget-object v2, v0, La00;->d:Lji;

    .line 540
    .line 541
    iget-object v3, v0, La00;->c:Lhk;

    .line 542
    .line 543
    invoke-virtual {v3}, Lhk;->l()J

    .line 544
    .line 545
    .line 546
    move-result-wide v3

    .line 547
    invoke-virtual {v1, v2, v3, v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$a;->from(Lji;J)Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    :cond_13
    iput-object v1, v0, La00;->f:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 552
    .line 553
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 554
    .line 555
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 556
    .line 557
    .line 558
    iput-object v1, v0, La00;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 559
    .line 560
    new-instance v1, Lxz;

    .line 561
    .line 562
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 563
    .line 564
    .line 565
    iput-object v1, v0, La00;->l:Lxz;

    .line 566
    .line 567
    new-instance v1, Lmk0;

    .line 568
    .line 569
    iget-object v2, v0, La00;->a:Lhz;

    .line 570
    .line 571
    invoke-direct {v1, v2}, Lmk0;-><init>(Lhz;)V

    .line 572
    .line 573
    .line 574
    iput-object v1, v0, La00;->m:Lmk0;

    .line 575
    .line 576
    return-void
.end method

.method public static final b(La00;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;Lgz;Lrf8;)Lzf8;
    .locals 11

    .line 1
    move-object/from16 v8, p7

    .line 2
    .line 3
    new-instance v0, Lnz;

    .line 4
    .line 5
    move-object v4, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v3, p2

    .line 8
    move-wide v5, p3

    .line 9
    move-object/from16 v7, p5

    .line 10
    .line 11
    move-object/from16 v2, p6

    .line 12
    .line 13
    invoke-direct/range {v0 .. v7}, Lnz;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Lgz;Lkh6;La00;JLkh6;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, La00;->l:Lxz;

    .line 17
    .line 18
    sget-object v2, Lp93;->a:Lp93;

    .line 19
    .line 20
    invoke-virtual {v8}, Lrf8;->a()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 33
    .line 34
    iget-object v5, v8, Lrf8;->h:Ljava/lang/String;

    .line 35
    .line 36
    const-string v6, " ("

    .line 37
    .line 38
    const-string v7, ")"

    .line 39
    .line 40
    const-string v9, "Uploading "

    .line 41
    .line 42
    invoke-static {v9, v5, v6, v2, v7}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v6, 0x4

    .line 47
    const/4 v7, 0x0

    .line 48
    const-string v9, "AppUploadTask"

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    move-object p3, v2

    .line 52
    move-object p1, v3

    .line 53
    move/from16 p5, v6

    .line 54
    .line 55
    move-object/from16 p6, v7

    .line 56
    .line 57
    move-object p2, v9

    .line 58
    move-object p4, v10

    .line 59
    invoke-static/range {p1 .. p6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move-object v2, p1

    .line 63
    sget-object v3, Ltb1;->a:Ltb1;

    .line 64
    .line 65
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3, v8}, Ltb1;->d(Lrf8;)Lag8;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iget-object v6, p0, La00;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 74
    .line 75
    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget-object v6, v8, Lrf8;->f:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz v6, :cond_1

    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-nez v7, :cond_0

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iput-object v6, v3, Lag8;->b:Ljava/lang/String;

    .line 93
    .line 94
    :cond_1
    :goto_0
    new-instance v6, Llm;

    .line 95
    .line 96
    const/4 v7, 0x2

    .line 97
    invoke-direct {v6, v0, v7}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    iput-object v6, v3, Lag8;->g:Lmt3;

    .line 104
    .line 105
    invoke-virtual {v3}, Lag8;->c()Lzf8;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lzf8;->a()Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_2

    .line 114
    .line 115
    invoke-virtual {v8}, Lrf8;->a()J

    .line 116
    .line 117
    .line 118
    move-result-wide v6

    .line 119
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v0, v6}, Lnz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_2
    invoke-virtual {v3}, Lzf8;->c()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    iget-object v0, p0, La00;->d:Lji;

    .line 133
    .line 134
    invoke-virtual {v0}, Lji;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v3}, Lzf8;->b()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const-string v6, ": "

    .line 143
    .line 144
    invoke-static {v0, v6, v4}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object v0, v1, Lxz;->a:Ljava/lang/String;

    .line 149
    .line 150
    iget-boolean v0, v3, Lzf8;->c:Z

    .line 151
    .line 152
    iput-boolean v0, v1, Lxz;->b:Z

    .line 153
    .line 154
    :cond_3
    invoke-virtual {v3}, Lzf8;->a()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_4

    .line 159
    .line 160
    const-string v0, "Uploaded "

    .line 161
    .line 162
    invoke-static {v0, v5}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const/4 v1, 0x4

    .line 167
    const/4 v4, 0x0

    .line 168
    const-string v5, "AppUploadTask"

    .line 169
    .line 170
    const/4 v6, 0x0

    .line 171
    move-object p2, v0

    .line 172
    move p4, v1

    .line 173
    move-object p0, v2

    .line 174
    move-object/from16 p5, v4

    .line 175
    .line 176
    move-object p1, v5

    .line 177
    move-object p3, v6

    .line 178
    invoke-static/range {p0 .. p5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_4
    return-object v3
.end method


# virtual methods
.method public final a(Liu;J)Z
    .locals 7

    .line 1
    iget-object v0, p0, La00;->b:Lc40;

    .line 2
    .line 3
    iget-boolean v0, v0, Lc40;->u:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    iget-object v0, p0, La00;->a:Lhz;

    .line 9
    .line 10
    invoke-virtual {v0}, Lhz;->c()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    move-object v4, v3

    .line 32
    check-cast v4, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 33
    .line 34
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getAppPart()Liu;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-ne v4, p1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v3, v2

    .line 42
    :goto_0
    check-cast v3, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getCloudLimitBytes()J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move-object v0, v2

    .line 56
    :goto_1
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    const-wide/16 v5, 0x0

    .line 61
    .line 62
    cmp-long v0, v3, v5

    .line 63
    .line 64
    if-lez v0, :cond_5

    .line 65
    .line 66
    cmp-long v0, p2, v3

    .line 67
    .line 68
    if-lez v0, :cond_5

    .line 69
    .line 70
    sget-object v0, Lp93;->a:Lp93;

    .line 71
    .line 72
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {v5}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    sub-long/2addr p2, v3

    .line 89
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-static {p2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    sget-object p3, Lvr6;->INSTANCE:Lvr6;

    .line 98
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v4, ": Skipped due to limit set by user (size="

    .line 108
    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v4, ", limit="

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v4, ", diff="

    .line 124
    .line 125
    const-string v6, ")"

    .line 126
    .line 127
    invoke-static {v3, v4, p2, v6}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    sget-object v3, Lvr6$a;->YELLOW:Lvr6$a;

    .line 132
    .line 133
    const-string v4, "AppUploadTask"

    .line 134
    .line 135
    invoke-virtual {p3, v4, p2, v3}, Lvr6;->e(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 136
    .line 137
    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object p3, p0, La00;->l:Lxz;

    .line 144
    .line 145
    iget-object v3, p3, Lxz;->c:Ljava/lang/String;

    .line 146
    .line 147
    if-eqz v3, :cond_4

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-nez v3, :cond_3

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_3
    const-string p0, ", "

    .line 157
    .line 158
    :goto_2
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_4
    :goto_3
    iget-object p0, p0, La00;->d:Lji;

    .line 163
    .line 164
    invoke-virtual {p0}, Lji;->getName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p0, ": "

    .line 177
    .line 178
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    goto :goto_2

    .line 186
    :goto_4
    const/4 p0, 0x0

    .line 187
    invoke-static {p1, p0, v1, v2}, Liu;->toDisplayString$default(Liu;ZILjava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string p1, " ("

    .line 200
    .line 201
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string p1, "/"

    .line 208
    .line 209
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    iput-object p1, p3, Lxz;->c:Ljava/lang/String;

    .line 230
    .line 231
    return p0

    .line 232
    :cond_5
    return v1
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, La00;->l:Lxz;

    .line 2
    .line 3
    iget-object v1, v0, Lxz;->a:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lxz;->c:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lxz;->d:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Lxz;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    :cond_1
    iget-boolean p0, p0, La00;->k:Z

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0
.end method
