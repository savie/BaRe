.class public final Lmq;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljz;

.field public final b:Lc40;

.field public final c:Ljava/lang/String;

.field public final d:Lzn7;

.field public final e:Lji;

.field public final f:Lhq;

.field public final g:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

.field public final h:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public i:Z

.field public final j:Lkq;

.field public final k:Lnm6;

.field public l:Lpv;


# direct methods
.method public constructor <init>(Ljz;Lc40;Ljava/lang/String;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Lzn7;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Lmq;->a:Ljz;

    .line 18
    .line 19
    move-object/from16 v2, p2

    .line 20
    .line 21
    iput-object v2, v0, Lmq;->b:Lc40;

    .line 22
    .line 23
    move-object/from16 v2, p3

    .line 24
    .line 25
    iput-object v2, v0, Lmq;->c:Ljava/lang/String;

    .line 26
    .line 27
    move-object/from16 v2, p5

    .line 28
    .line 29
    iput-object v2, v0, Lmq;->d:Lzn7;

    .line 30
    .line 31
    iget-object v2, v1, Ljz;->b:Lji;

    .line 32
    .line 33
    iput-object v2, v0, Lmq;->e:Lji;

    .line 34
    .line 35
    invoke-virtual/range {p4 .. p4}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual/range {p4 .. p4}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    new-instance v4, Lhk;

    .line 44
    .line 45
    invoke-virtual {v2}, Lji;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v5, 0x1

    .line 50
    invoke-direct {v4, v3, v2, v5}, Lhk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v1, Ljz;->c:Ljava/util/List;

    .line 54
    .line 55
    invoke-static {v2}, Lwx3;->o(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/16 v19, 0x0

    .line 60
    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasApk()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_0

    .line 68
    .line 69
    invoke-virtual {v4}, Lhk;->c()Lq63;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v7, Lfo2;

    .line 77
    .line 78
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkLink()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkSize()Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v10

    .line 93
    const/4 v9, 0x1

    .line 94
    invoke-direct/range {v7 .. v12}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    move-object/from16 v7, v19

    .line 99
    .line 100
    :goto_0
    sget-object v3, Liu;->APP:Liu;

    .line 101
    .line 102
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_1

    .line 107
    .line 108
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_1

    .line 113
    .line 114
    invoke-virtual {v4}, Lhk;->C()Lq63;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    new-instance v8, Lfo2;

    .line 122
    .line 123
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSplitsLink()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSplitsSize()Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-static {v5}, Lio4;->h(Ljava/lang/Long;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v11

    .line 138
    const/4 v10, 0x2

    .line 139
    invoke-direct/range {v8 .. v13}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_1
    move-object/from16 v8, v19

    .line 144
    .line 145
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_2

    .line 150
    .line 151
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_2

    .line 156
    .line 157
    invoke-virtual {v4}, Lhk;->z()Lq63;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    new-instance v9, Lfo2;

    .line 165
    .line 166
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSharedLibsLink()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSharedLibsSize()Ljava/lang/Long;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 178
    .line 179
    .line 180
    move-result-wide v12

    .line 181
    const/4 v11, 0x3

    .line 182
    invoke-direct/range {v9 .. v14}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 183
    .line 184
    .line 185
    move-object v10, v9

    .line 186
    goto :goto_2

    .line 187
    :cond_2
    move-object/from16 v10, v19

    .line 188
    .line 189
    :goto_2
    sget-object v3, Liu;->DATA:Liu;

    .line 190
    .line 191
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-eqz v3, :cond_3

    .line 196
    .line 197
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasData()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_3

    .line 202
    .line 203
    invoke-virtual {v4}, Lhk;->g()Lq63;

    .line 204
    .line 205
    .line 206
    move-result-object v16

    .line 207
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    new-instance v11, Lfo2;

    .line 211
    .line 212
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataLink()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v12

    .line 216
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataSize()Ljava/lang/Long;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 224
    .line 225
    .line 226
    move-result-wide v14

    .line 227
    const/4 v13, 0x4

    .line 228
    invoke-direct/range {v11 .. v16}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_3
    move-object/from16 v11, v19

    .line 233
    .line 234
    :goto_3
    sget-object v3, Liu;->EXTDATA:Liu;

    .line 235
    .line 236
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-eqz v3, :cond_4

    .line 241
    .line 242
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasExtData()Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_4

    .line 247
    .line 248
    invoke-virtual {v4}, Lhk;->n()Lq63;

    .line 249
    .line 250
    .line 251
    move-result-object v17

    .line 252
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    new-instance v12, Lfo2;

    .line 256
    .line 257
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataLink()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v13

    .line 261
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataSize()Ljava/lang/Long;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 269
    .line 270
    .line 271
    move-result-wide v15

    .line 272
    const/4 v14, 0x6

    .line 273
    invoke-direct/range {v12 .. v17}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_4
    move-object/from16 v12, v19

    .line 278
    .line 279
    :goto_4
    sget-object v3, Liu;->MEDIA:Liu;

    .line 280
    .line 281
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-eqz v3, :cond_5

    .line 286
    .line 287
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasMedia()Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_5

    .line 292
    .line 293
    invoke-virtual {v4}, Lhk;->q()Lq63;

    .line 294
    .line 295
    .line 296
    move-result-object v18

    .line 297
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    new-instance v13, Lfo2;

    .line 301
    .line 302
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaLink()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v14

    .line 306
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaSize()Ljava/lang/Long;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 314
    .line 315
    .line 316
    move-result-wide v16

    .line 317
    const/4 v15, 0x7

    .line 318
    invoke-direct/range {v13 .. v18}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 319
    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_5
    move-object/from16 v13, v19

    .line 323
    .line 324
    :goto_5
    sget-object v3, Liu;->EXPANSION:Liu;

    .line 325
    .line 326
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_6

    .line 331
    .line 332
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasExpansion()Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-eqz v2, :cond_6

    .line 337
    .line 338
    invoke-virtual {v4}, Lhk;->m()Lq63;

    .line 339
    .line 340
    .line 341
    move-result-object v25

    .line 342
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    new-instance v20, Lfo2;

    .line 346
    .line 347
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpLink()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v21

    .line 351
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpSize()Ljava/lang/Long;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-static {v2}, Lio4;->h(Ljava/lang/Long;)J

    .line 359
    .line 360
    .line 361
    move-result-wide v23

    .line 362
    const/16 v22, 0x5

    .line 363
    .line 364
    invoke-direct/range {v20 .. v25}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 365
    .line 366
    .line 367
    move-object/from16 v14, v20

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_6
    move-object/from16 v14, v19

    .line 371
    .line 372
    :goto_6
    iget-boolean v2, v1, Ljz;->e:Z

    .line 373
    .line 374
    if-nez v2, :cond_7

    .line 375
    .line 376
    iget-boolean v2, v1, Ljz;->f:Z

    .line 377
    .line 378
    if-eqz v2, :cond_b

    .line 379
    .line 380
    :cond_7
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSpecialData()Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-eqz v2, :cond_b

    .line 385
    .line 386
    invoke-virtual {v4}, Lhk;->B()Lq63;

    .line 387
    .line 388
    .line 389
    move-result-object v25

    .line 390
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSpecialDataLink()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    if-eqz v2, :cond_a

    .line 398
    .line 399
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    if-lez v3, :cond_8

    .line 404
    .line 405
    move-object/from16 v21, v2

    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_8
    move-object/from16 v21, v19

    .line 409
    .line 410
    :goto_7
    if-nez v21, :cond_9

    .line 411
    .line 412
    goto :goto_8

    .line 413
    :cond_9
    new-instance v20, Lfo2;

    .line 414
    .line 415
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSpecialDataSize()Ljava/lang/Long;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-static {v2}, Lio4;->h(Ljava/lang/Long;)J

    .line 420
    .line 421
    .line 422
    move-result-wide v23

    .line 423
    const/16 v22, 0x8

    .line 424
    .line 425
    invoke-direct/range {v20 .. v25}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 426
    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_a
    :goto_8
    move-object/from16 v20, v19

    .line 430
    .line 431
    :goto_9
    move-object/from16 v15, v20

    .line 432
    .line 433
    goto :goto_a

    .line 434
    :cond_b
    move-object/from16 v15, v19

    .line 435
    .line 436
    :goto_a
    iget-object v5, v1, Ljz;->b:Lji;

    .line 437
    .line 438
    move-object v9, v8

    .line 439
    move-object v8, v7

    .line 440
    filled-new-array/range {v8 .. v15}, [Lfo2;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    move-object v8, v9

    .line 445
    invoke-static {v1}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    check-cast v1, Ljava/util/ArrayList;

    .line 450
    .line 451
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    move-object/from16 v20, v15

    .line 456
    .line 457
    const-wide/16 v15, 0x0

    .line 458
    .line 459
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    if-eqz v4, :cond_c

    .line 464
    .line 465
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    check-cast v4, Lfo2;

    .line 470
    .line 471
    iget-wide v2, v4, Lfo2;->c:J

    .line 472
    .line 473
    add-long/2addr v15, v2

    .line 474
    goto :goto_b

    .line 475
    :cond_c
    filled-new-array {v11, v12, v13, v14}, [Lfo2;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-static {v1}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    check-cast v1, Ljava/util/ArrayList;

    .line 484
    .line 485
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    const-wide/16 v17, 0x0

    .line 490
    .line 491
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-eqz v2, :cond_d

    .line 496
    .line 497
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    check-cast v2, Lfo2;

    .line 502
    .line 503
    iget-wide v2, v2, Lfo2;->c:J

    .line 504
    .line 505
    add-long v17, v17, v2

    .line 506
    .line 507
    goto :goto_c

    .line 508
    :cond_d
    new-instance v4, Lhq;

    .line 509
    .line 510
    move-object v9, v10

    .line 511
    move-object v10, v11

    .line 512
    move-object v11, v12

    .line 513
    move-object v12, v13

    .line 514
    move-object v13, v14

    .line 515
    move-object/from16 v14, v20

    .line 516
    .line 517
    invoke-direct/range {v4 .. v18}, Lhq;-><init>(Lji;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;Lfo2;Lfo2;Lfo2;Lfo2;Lfo2;Lfo2;Lfo2;Lfo2;JJ)V

    .line 518
    .line 519
    .line 520
    iput-object v4, v0, Lmq;->f:Lhq;

    .line 521
    .line 522
    invoke-virtual/range {p4 .. p4}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    if-eqz v1, :cond_e

    .line 527
    .line 528
    iput-object v1, v0, Lmq;->g:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 529
    .line 530
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 531
    .line 532
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 533
    .line 534
    .line 535
    iput-object v1, v0, Lmq;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 536
    .line 537
    new-instance v1, Lkq;

    .line 538
    .line 539
    invoke-direct {v1, v0}, Lkq;-><init>(Lmq;)V

    .line 540
    .line 541
    .line 542
    iput-object v1, v0, Lmq;->j:Lkq;

    .line 543
    .line 544
    new-instance v1, Lnm6;

    .line 545
    .line 546
    iget-object v2, v0, Lmq;->a:Ljz;

    .line 547
    .line 548
    invoke-direct {v1, v2}, Lnm6;-><init>(Ljz;)V

    .line 549
    .line 550
    .line 551
    iput-object v1, v0, Lmq;->k:Lnm6;

    .line 552
    .line 553
    return-void

    .line 554
    :cond_e
    iget-object v0, v0, Lmq;->e:Lji;

    .line 555
    .line 556
    invoke-virtual {v0}, Lji;->asString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    const-string v1, "CloudMetadata null for "

    .line 561
    .line 562
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    throw v19
.end method


# virtual methods
.method public final a(Lfo2;)Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 6
    .line 7
    invoke-virtual {v1}, Lfo2;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "Checking download for "

    .line 12
    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x0

    .line 19
    const-string v3, "AppDownloadTask"

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v1, Lfo2;->d:Lq63;

    .line 26
    .line 27
    invoke-virtual {v3}, Lq63;->j()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v6, 0x0

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {v3}, Lq63;->A()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    iget-wide v7, v1, Lfo2;->c:J

    .line 39
    .line 40
    cmp-long v3, v3, v7

    .line 41
    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    const/4 v5, 0x0

    .line 46
    const-string v1, "AppDownloadTask"

    .line 47
    .line 48
    move-object v0, v2

    .line 49
    const-string v2, "Skipped downloading, cloud copy available on device"

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return v6

    .line 56
    :cond_0
    iget-object v2, v0, Lmq;->e:Lji;

    .line 57
    .line 58
    invoke-virtual {v2}, Lji;->isInstalled()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v4, 0x1

    .line 63
    if-eqz v3, :cond_11

    .line 64
    .line 65
    invoke-virtual {v2}, Lji;->isInstalled()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_1

    .line 70
    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_1
    const-string v3, "prefs"

    .line 74
    .line 75
    const-string v5, "backup_app_cache"

    .line 76
    .line 77
    const-string v7, "KEY_BACKUP_APP_CACHE"

    .line 78
    .line 79
    const/4 v8, 0x0

    .line 80
    :try_start_0
    sget-object v9, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 81
    .line 82
    if-eqz v9, :cond_2

    .line 83
    .line 84
    invoke-interface {v9, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v8
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    move v7, v6

    .line 94
    :goto_0
    :try_start_1
    sget-object v9, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 95
    .line 96
    if-eqz v9, :cond_3

    .line 97
    .line 98
    invoke-interface {v9, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v8
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :catch_1
    :goto_1
    iget v1, v1, Lfo2;->b:I

    .line 108
    .line 109
    iget-object v3, v0, Lmq;->g:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 110
    .line 111
    packed-switch v1, :pswitch_data_0

    .line 112
    .line 113
    .line 114
    goto/16 :goto_7

    .line 115
    .line 116
    :pswitch_0
    sget-object v10, Liu;->MEDIA:Liu;

    .line 117
    .line 118
    invoke-virtual {v2}, Lji;->getMediaDir()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaBackupDate()Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v12

    .line 130
    invoke-virtual {v2}, Lji;->getSizeInfo()Lqx;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    invoke-virtual {v1}, Lqx;->getMediaSize()J

    .line 137
    .line 138
    .line 139
    move-result-wide v1

    .line 140
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    :cond_4
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    .line 145
    .line 146
    .line 147
    move-result-wide v14

    .line 148
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaSizeMirrored()Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 153
    .line 154
    .line 155
    move-result-wide v16

    .line 156
    iget-object v9, v0, Lmq;->k:Lnm6;

    .line 157
    .line 158
    invoke-virtual/range {v9 .. v17}, Lnm6;->b(Liu;Ljava/lang/String;JJJ)Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    goto/16 :goto_7

    .line 163
    .line 164
    :pswitch_1
    sget-object v6, Liu;->EXTDATA:Liu;

    .line 165
    .line 166
    invoke-virtual {v2}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataBackupDate()Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 175
    .line 176
    .line 177
    move-result-wide v4

    .line 178
    invoke-virtual {v2}, Lji;->getSizeInfo()Lqx;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    if-eqz v2, :cond_5

    .line 183
    .line 184
    invoke-virtual {v2, v7}, Lqx;->getExtDataSize(Z)J

    .line 185
    .line 186
    .line 187
    move-result-wide v7

    .line 188
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    :cond_5
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    .line 193
    .line 194
    .line 195
    move-result-wide v10

    .line 196
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataSizeMirrored()Ljava/lang/Long;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-static {v2}, Lio4;->h(Ljava/lang/Long;)J

    .line 201
    .line 202
    .line 203
    move-result-wide v12

    .line 204
    move-wide v8, v4

    .line 205
    iget-object v5, v0, Lmq;->k:Lnm6;

    .line 206
    .line 207
    move-object v7, v1

    .line 208
    invoke-virtual/range {v5 .. v13}, Lnm6;->b(Liu;Ljava/lang/String;JJJ)Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    goto/16 :goto_7

    .line 213
    .line 214
    :pswitch_2
    sget-object v6, Liu;->EXPANSION:Liu;

    .line 215
    .line 216
    invoke-virtual {v2}, Lji;->getExpansionDir()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpansionBackupDate()Ljava/lang/Long;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 225
    .line 226
    .line 227
    move-result-wide v4

    .line 228
    invoke-virtual {v2}, Lji;->getSizeInfo()Lqx;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    if-eqz v1, :cond_6

    .line 233
    .line 234
    invoke-virtual {v1}, Lqx;->getExternalObbSize()J

    .line 235
    .line 236
    .line 237
    move-result-wide v1

    .line 238
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    :cond_6
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    .line 243
    .line 244
    .line 245
    move-result-wide v10

    .line 246
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpSizeMirrored()Ljava/lang/Long;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 251
    .line 252
    .line 253
    move-result-wide v12

    .line 254
    move-wide v8, v4

    .line 255
    iget-object v5, v0, Lmq;->k:Lnm6;

    .line 256
    .line 257
    invoke-virtual/range {v5 .. v13}, Lnm6;->b(Liu;Ljava/lang/String;JJJ)Z

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    goto/16 :goto_7

    .line 262
    .line 263
    :pswitch_3
    sget-object v6, Liu;->DATA:Liu;

    .line 264
    .line 265
    invoke-virtual {v2}, Lji;->getDataDir()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataBackupDate()Ljava/lang/Long;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 274
    .line 275
    .line 276
    move-result-wide v4

    .line 277
    invoke-virtual {v2}, Lji;->getSizeInfo()Lqx;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    if-eqz v2, :cond_7

    .line 282
    .line 283
    invoke-virtual {v2, v7}, Lqx;->getTotalDataSize(Z)J

    .line 284
    .line 285
    .line 286
    move-result-wide v7

    .line 287
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    :cond_7
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    .line 292
    .line 293
    .line 294
    move-result-wide v10

    .line 295
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataSizeMirrored()Ljava/lang/Long;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-static {v2}, Lio4;->h(Ljava/lang/Long;)J

    .line 300
    .line 301
    .line 302
    move-result-wide v12

    .line 303
    iget-object v0, v0, Lmq;->k:Lnm6;

    .line 304
    .line 305
    move-object v7, v1

    .line 306
    move-wide v8, v4

    .line 307
    move-object v5, v0

    .line 308
    invoke-virtual/range {v5 .. v13}, Lnm6;->b(Liu;Ljava/lang/String;JJJ)Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    goto/16 :goto_7

    .line 313
    .line 314
    :pswitch_4
    invoke-virtual {v2}, Lji;->getSourceDir()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    if-nez v0, :cond_8

    .line 319
    .line 320
    goto/16 :goto_7

    .line 321
    .line 322
    :cond_8
    new-instance v1, Lq63;

    .line 323
    .line 324
    invoke-direct {v1, v0, v4}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Lq63;->A()J

    .line 328
    .line 329
    .line 330
    move-result-wide v7

    .line 331
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkSizeMirrored()Ljava/lang/Long;

    .line 332
    .line 333
    .line 334
    move-result-object v9

    .line 335
    new-instance v10, Lpg;

    .line 336
    .line 337
    invoke-virtual {v2}, Lji;->getVersionName()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    const-string v1, "Empty"

    .line 342
    .line 343
    if-nez v0, :cond_9

    .line 344
    .line 345
    move-object v11, v1

    .line 346
    goto :goto_2

    .line 347
    :cond_9
    move-object v11, v0

    .line 348
    :goto_2
    invoke-virtual {v2}, Lji;->getVersionCode()Ljava/lang/Long;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    const-wide/16 v16, -0x1

    .line 353
    .line 354
    if-eqz v0, :cond_a

    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 357
    .line 358
    .line 359
    move-result-wide v12

    .line 360
    goto :goto_3

    .line 361
    :cond_a
    move-wide/from16 v12, v16

    .line 362
    .line 363
    :goto_3
    invoke-virtual {v2}, Lji;->getSplitSourceDirs()Ljava/util/List;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    if-eqz v0, :cond_c

    .line 368
    .line 369
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-eqz v0, :cond_b

    .line 374
    .line 375
    goto :goto_4

    .line 376
    :cond_b
    move v0, v6

    .line 377
    goto :goto_5

    .line 378
    :cond_c
    :goto_4
    move v0, v4

    .line 379
    :goto_5
    xor-int/lit8 v14, v0, 0x1

    .line 380
    .line 381
    invoke-virtual {v2}, Lji;->getSharedLibsInfos()Ljava/util/List;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    if-eqz v0, :cond_d

    .line 386
    .line 387
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_e

    .line 392
    .line 393
    :cond_d
    move v6, v4

    .line 394
    :cond_e
    xor-int/lit8 v15, v6, 0x1

    .line 395
    .line 396
    invoke-direct/range {v10 .. v15}, Lpg;-><init>(Ljava/lang/String;JZZ)V

    .line 397
    .line 398
    .line 399
    new-instance v18, Lpg;

    .line 400
    .line 401
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionName()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    if-nez v0, :cond_f

    .line 406
    .line 407
    move-object/from16 v19, v1

    .line 408
    .line 409
    goto :goto_6

    .line 410
    :cond_f
    move-object/from16 v19, v0

    .line 411
    .line 412
    :goto_6
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionCode()Ljava/lang/Long;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    if-eqz v0, :cond_10

    .line 417
    .line 418
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 419
    .line 420
    .line 421
    move-result-wide v16

    .line 422
    :cond_10
    move-wide/from16 v20, v16

    .line 423
    .line 424
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    .line 425
    .line 426
    .line 427
    move-result v22

    .line 428
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    .line 429
    .line 430
    .line 431
    move-result v23

    .line 432
    invoke-direct/range {v18 .. v23}, Lpg;-><init>(Ljava/lang/String;JZZ)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    .line 436
    .line 437
    .line 438
    move-result v12

    .line 439
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    .line 440
    .line 441
    .line 442
    move-result v13

    .line 443
    move-object/from16 v11, v18

    .line 444
    .line 445
    invoke-static/range {v7 .. v13}, Leq;->a(JLjava/lang/Long;Lpg;Lrg;ZZ)Z

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    :cond_11
    :goto_7
    return v4

    .line 450
    nop

    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
