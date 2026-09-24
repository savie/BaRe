.class public final synthetic Ljk2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lmk2;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lmk2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljk2;->a:Lmk2;

    .line 5
    .line 6
    iput-boolean p2, p0, Ljk2;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ljk2;->a:Lmk2;

    .line 4
    .line 5
    iget-object v2, v1, Lmk2;->e:Lji;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_1a

    .line 9
    .line 10
    invoke-virtual {v2}, Lji;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    iget-object v5, v1, Lmk2;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 17
    .line 18
    .line 19
    move-result-wide v5

    .line 20
    iget-boolean v0, v0, Ljk2;->b:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lak2;

    .line 25
    .line 26
    const/4 v7, 0x2

    .line 27
    invoke-direct {v0, v7, v3}, Lak2;-><init>(ILjava/util/List;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v5, v6, v4, v0}, Lmk2;->n(Lmk2;JLjava/lang/String;Lak2;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v2}, Lji;->getLocalBackups()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_18

    .line 38
    .line 39
    new-instance v7, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_17

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    check-cast v8, Lgm;

    .line 59
    .line 60
    sget-object v9, Liz4;->Companion:Liz4$a;

    .line 61
    .line 62
    invoke-virtual {v9, v8}, Liz4$a;->init(Lgm;)Liz4;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    invoke-virtual {v11}, Liz4;->hasBackups()Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-nez v8, :cond_1

    .line 71
    .line 72
    move-object v10, v3

    .line 73
    move-object/from16 v29, v10

    .line 74
    .line 75
    move-object/from16 v30, v4

    .line 76
    .line 77
    goto/16 :goto_15

    .line 78
    .line 79
    :cond_1
    invoke-virtual {v11}, Liz4;->getTotalSize()J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    sget-object v10, Lp93;->a:Lp93;

    .line 84
    .line 85
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-static {v8}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v11}, Liz4;->getDateBackupUpdatedString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    const-string v10, ")"

    .line 98
    .line 99
    const-string v12, " ("

    .line 100
    .line 101
    const-string v13, ": "

    .line 102
    .line 103
    if-eqz v9, :cond_3

    .line 104
    .line 105
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-nez v9, :cond_2

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    sget-object v9, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 113
    .line 114
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    const v14, 0x7f130588

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-virtual {v11}, Liz4;->getDateBackupUpdatedString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    new-instance v15, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    :goto_1
    move-object/from16 v25, v8

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_3
    :goto_2
    invoke-virtual {v11}, Liz4;->getDateBackupString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    invoke-static {v9, v12, v8, v10}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    goto :goto_1

    .line 168
    :goto_3
    invoke-virtual {v11}, Liz4;->getBackupVersion()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    const v9, 0x7f1303bc

    .line 173
    .line 174
    .line 175
    const v14, 0x7f13059f

    .line 176
    .line 177
    .line 178
    if-eqz v8, :cond_4

    .line 179
    .line 180
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-nez v8, :cond_5

    .line 185
    .line 186
    :cond_4
    move-object/from16 v29, v3

    .line 187
    .line 188
    move-object/from16 v30, v4

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_5
    sget-object v8, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 192
    .line 193
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v8, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    invoke-virtual {v11}, Liz4;->getBackupVersion()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v15

    .line 205
    move-object/from16 v29, v3

    .line 206
    .line 207
    move-object/from16 v30, v4

    .line 208
    .line 209
    invoke-virtual {v11}, Liz4;->getBackupVersionCode()J

    .line 210
    .line 211
    .line 212
    move-result-wide v3

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-static {v3, v4, v10, v2}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    :goto_4
    move-object/from16 v27, v2

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :goto_5
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 238
    .line 239
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    goto :goto_4

    .line 248
    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v11}, Liz4;->getBackupVersion()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    if-eqz v2, :cond_7

    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-nez v2, :cond_6

    .line 262
    .line 263
    goto :goto_8

    .line 264
    :cond_6
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 265
    .line 266
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v11}, Liz4;->getBackupVersion()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-static {v2, v13, v3}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    :goto_7
    move-object/from16 v26, v2

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_7
    :goto_8
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 286
    .line 287
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    goto :goto_7

    .line 296
    :goto_9
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v11}, Liz4;->getTotalApkSize()J

    .line 300
    .line 301
    .line 302
    move-result-wide v2

    .line 303
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    const-wide/16 v8, 0x0

    .line 308
    .line 309
    cmp-long v2, v2, v8

    .line 310
    .line 311
    if-lez v2, :cond_8

    .line 312
    .line 313
    goto :goto_a

    .line 314
    :cond_8
    move-object/from16 v4, v29

    .line 315
    .line 316
    :goto_a
    if-eqz v4, :cond_9

    .line 317
    .line 318
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    move-object v12, v2

    .line 323
    goto :goto_b

    .line 324
    :cond_9
    move-object/from16 v12, v29

    .line 325
    .line 326
    :goto_b
    invoke-virtual {v11}, Liz4;->hasSplitApks()Z

    .line 327
    .line 328
    .line 329
    move-result v13

    .line 330
    invoke-virtual {v11}, Liz4;->hasSharedLibs()Z

    .line 331
    .line 332
    .line 333
    move-result v14

    .line 334
    invoke-virtual {v11}, Liz4;->getDataSize()J

    .line 335
    .line 336
    .line 337
    move-result-wide v2

    .line 338
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    cmp-long v2, v2, v8

    .line 343
    .line 344
    if-lez v2, :cond_a

    .line 345
    .line 346
    goto :goto_c

    .line 347
    :cond_a
    move-object/from16 v4, v29

    .line 348
    .line 349
    :goto_c
    const-string v2, " \ud83d\udd12"

    .line 350
    .line 351
    if-eqz v4, :cond_c

    .line 352
    .line 353
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-static {v3}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {v11}, Liz4;->isDataEncrypted()Z

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    if-eqz v4, :cond_b

    .line 366
    .line 367
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    move-object v15, v3

    .line 375
    goto :goto_d

    .line 376
    :cond_c
    move-object/from16 v15, v29

    .line 377
    .line 378
    :goto_d
    invoke-virtual {v11}, Liz4;->isDataEncrypted()Z

    .line 379
    .line 380
    .line 381
    move-result v16

    .line 382
    invoke-virtual {v11}, Liz4;->getDataEncryptionInfo()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v17

    .line 386
    invoke-virtual {v11}, Liz4;->getExtDataSize()J

    .line 387
    .line 388
    .line 389
    move-result-wide v3

    .line 390
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 391
    .line 392
    .line 393
    move-result-object v10

    .line 394
    cmp-long v3, v3, v8

    .line 395
    .line 396
    if-lez v3, :cond_d

    .line 397
    .line 398
    goto :goto_e

    .line 399
    :cond_d
    move-object/from16 v10, v29

    .line 400
    .line 401
    :goto_e
    if-eqz v10, :cond_f

    .line 402
    .line 403
    invoke-static {v10}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-static {v3}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    invoke-virtual {v11}, Liz4;->isExtDataEncrypted()Z

    .line 412
    .line 413
    .line 414
    move-result v4

    .line 415
    if-eqz v4, :cond_e

    .line 416
    .line 417
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    :cond_e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    move-object/from16 v18, v3

    .line 425
    .line 426
    goto :goto_f

    .line 427
    :cond_f
    move-object/from16 v18, v29

    .line 428
    .line 429
    :goto_f
    invoke-virtual {v11}, Liz4;->isExtDataEncrypted()Z

    .line 430
    .line 431
    .line 432
    move-result v19

    .line 433
    invoke-virtual {v11}, Liz4;->getExtDataEncryptionInfo()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v20

    .line 437
    invoke-virtual {v11}, Liz4;->getMediaSize()J

    .line 438
    .line 439
    .line 440
    move-result-wide v3

    .line 441
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 442
    .line 443
    .line 444
    move-result-object v10

    .line 445
    cmp-long v3, v3, v8

    .line 446
    .line 447
    if-lez v3, :cond_10

    .line 448
    .line 449
    goto :goto_10

    .line 450
    :cond_10
    move-object/from16 v10, v29

    .line 451
    .line 452
    :goto_10
    if-eqz v10, :cond_12

    .line 453
    .line 454
    invoke-static {v10}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    invoke-static {v3}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    invoke-virtual {v11}, Liz4;->isMediaEncrypted()Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-eqz v4, :cond_11

    .line 467
    .line 468
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    :cond_11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    move-object/from16 v21, v2

    .line 476
    .line 477
    goto :goto_11

    .line 478
    :cond_12
    move-object/from16 v21, v29

    .line 479
    .line 480
    :goto_11
    invoke-virtual {v11}, Liz4;->isMediaEncrypted()Z

    .line 481
    .line 482
    .line 483
    move-result v22

    .line 484
    invoke-virtual {v11}, Liz4;->getMediaEncryptionInfo()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v23

    .line 488
    invoke-virtual {v11}, Liz4;->getExpansionSize()J

    .line 489
    .line 490
    .line 491
    move-result-wide v2

    .line 492
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    cmp-long v2, v2, v8

    .line 497
    .line 498
    if-lez v2, :cond_13

    .line 499
    .line 500
    goto :goto_12

    .line 501
    :cond_13
    move-object/from16 v4, v29

    .line 502
    .line 503
    :goto_12
    if-eqz v4, :cond_14

    .line 504
    .line 505
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    move-object/from16 v24, v2

    .line 510
    .line 511
    goto :goto_13

    .line 512
    :cond_14
    move-object/from16 v24, v29

    .line 513
    .line 514
    :goto_13
    invoke-virtual {v11}, Liz4;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    const/4 v3, 0x0

    .line 519
    if-eqz v2, :cond_15

    .line 520
    .line 521
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isProtectedBackup()Z

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    const/4 v4, 0x1

    .line 526
    if-ne v2, v4, :cond_15

    .line 527
    .line 528
    const/16 v28, 0x1

    .line 529
    .line 530
    goto :goto_14

    .line 531
    :cond_15
    move/from16 v28, v3

    .line 532
    .line 533
    :goto_14
    new-instance v10, Lzj2;

    .line 534
    .line 535
    invoke-direct/range {v10 .. v28}, Lzj2;-><init>(Liz4;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 536
    .line 537
    .line 538
    :goto_15
    if-eqz v10, :cond_16

    .line 539
    .line 540
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    :cond_16
    move-object/from16 v3, v29

    .line 544
    .line 545
    move-object/from16 v4, v30

    .line 546
    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :cond_17
    move-object v3, v7

    .line 550
    :goto_16
    move-object/from16 v30, v4

    .line 551
    .line 552
    goto :goto_17

    .line 553
    :cond_18
    move-object/from16 v29, v3

    .line 554
    .line 555
    goto :goto_16

    .line 556
    :goto_17
    if-nez v3, :cond_19

    .line 557
    .line 558
    sget-object v3, Lov2;->a:Lov2;

    .line 559
    .line 560
    :cond_19
    new-instance v0, Lak2;

    .line 561
    .line 562
    const/4 v4, 0x1

    .line 563
    invoke-direct {v0, v4, v3}, Lak2;-><init>(ILjava/util/List;)V

    .line 564
    .line 565
    .line 566
    move-object/from16 v2, v30

    .line 567
    .line 568
    invoke-static {v1, v5, v6, v2, v0}, Lmk2;->n(Lmk2;JLjava/lang/String;Lak2;)V

    .line 569
    .line 570
    .line 571
    sget-object v0, Lbe8;->a:Lbe8;

    .line 572
    .line 573
    return-object v0

    .line 574
    :cond_1a
    move-object/from16 v29, v3

    .line 575
    .line 576
    const-string v0, "app"

    .line 577
    .line 578
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    throw v29
.end method
