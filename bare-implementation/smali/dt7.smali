.class public final Ldt7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/util/List;)Lq63;
    .locals 26

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->n()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    move-object/from16 v1, p2

    .line 9
    .line 10
    invoke-static {v0, v1}, Ldt7;->d(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lmp6;->a:Lmp6;

    .line 15
    .line 16
    invoke-static {}, Lmp6;->g()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    sget-object v2, Ld45;->b:Ld45;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    sget-object v2, Lry5;->u:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v3, v4}, Lqy5;->f(ZLzn7;)Lry5;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v2, v2, Lry5;->e:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_0
    new-instance v5, Lq63;

    .line 53
    .line 54
    const-string v6, "SwiftLogger.xml"

    .line 55
    .line 56
    const/4 v7, 0x2

    .line 57
    invoke-direct {v5, v2, v6, v7}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Lq63;->h()Z

    .line 61
    .line 62
    .line 63
    const-string v6, "Failed while writing "

    .line 64
    .line 65
    invoke-static {v5, v6}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    new-instance v8, Ll30;

    .line 70
    .line 71
    const/16 v9, 0xe

    .line 72
    .line 73
    invoke-direct {v8, v9, v5, v0}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const-string v0, "SwiftLoggerExportHelper"

    .line 77
    .line 78
    const/4 v10, 0x1

    .line 79
    const/16 v11, 0x8

    .line 80
    .line 81
    invoke-static {v0, v6, v10, v8, v11}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-static {v0, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_28

    .line 92
    .line 93
    invoke-virtual {v5}, Lq63;->j()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_28

    .line 98
    .line 99
    invoke-virtual {v5}, Lq63;->A()J

    .line 100
    .line 101
    .line 102
    move-result-wide v12

    .line 103
    const-wide/16 v14, 0x0

    .line 104
    .line 105
    cmp-long v0, v12, v14

    .line 106
    .line 107
    if-gtz v0, :cond_1

    .line 108
    .line 109
    goto/16 :goto_1f

    .line 110
    .line 111
    :cond_1
    new-instance v0, Lq63;

    .line 112
    .line 113
    const-string v6, "Logcat.xml"

    .line 114
    .line 115
    invoke-direct {v0, v2, v6, v7}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lq63;->h()Z

    .line 119
    .line 120
    .line 121
    if-eqz p1, :cond_8

    .line 122
    .line 123
    invoke-static {v1, v3, v10, v10}, Lmp6;->d(Lmp6;ZZI)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-nez v6, :cond_2

    .line 128
    .line 129
    invoke-static {}, Lmp6;->f()Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_8

    .line 134
    .line 135
    :cond_2
    invoke-static {v0}, Lio4;->g(Lq63;)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    const/4 v8, 0x5

    .line 143
    const/4 v12, -0x7

    .line 144
    invoke-virtual {v6, v8, v12}, Ljava/util/Calendar;->add(II)V

    .line 145
    .line 146
    .line 147
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 148
    .line 149
    const-string v12, "yyyy-MM-dd hh:mm:ss.mmm"

    .line 150
    .line 151
    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 152
    .line 153
    invoke-direct {v8, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide v12

    .line 160
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v8, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    const-string v12, "logcat -b all -t \""

    .line 173
    .line 174
    const-string v13, "\" > "

    .line 175
    .line 176
    invoke-static {v12, v6, v13, v8}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    filled-new-array {v6}, [Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    sget-object v8, Lip6;->SHIZUKU:Lip6;

    .line 185
    .line 186
    invoke-virtual {v1, v6, v8}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    sget-object v1, Lg00;->a:Lg00;

    .line 190
    .line 191
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 192
    .line 193
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-static {v3, v1}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    if-eqz v1, :cond_7

    .line 206
    .line 207
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 208
    .line 209
    if-eqz v1, :cond_6

    .line 210
    .line 211
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 212
    .line 213
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 214
    .line 215
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 216
    .line 217
    invoke-static {v6, v8, v1, v4, v10}, Lg00;->f(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Lq63;->j()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-nez v1, :cond_3

    .line 225
    .line 226
    sget-object v16, Lvr6;->INSTANCE:Lvr6;

    .line 227
    .line 228
    const/16 v20, 0x4

    .line 229
    .line 230
    const/16 v21, 0x0

    .line 231
    .line 232
    const-string v17, "SwiftLoggerExportHelper"

    .line 233
    .line 234
    const-string v18, "No logcat file created by system"

    .line 235
    .line 236
    const/16 v19, 0x0

    .line 237
    .line 238
    invoke-static/range {v16 .. v21}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_3
    invoke-virtual {v0}, Lq63;->a()Ljava/io/BufferedReader;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    if-eqz v6, :cond_5

    .line 251
    .line 252
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 253
    .line 254
    .line 255
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    if-nez v6, :cond_4

    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_4
    move v6, v3

    .line 260
    goto :goto_2

    .line 261
    :catchall_0
    move-exception v0

    .line 262
    move-object v2, v0

    .line 263
    goto :goto_3

    .line 264
    :cond_5
    :goto_1
    move v6, v10

    .line 265
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 266
    .line 267
    .line 268
    if-eqz v6, :cond_8

    .line 269
    .line 270
    sget-object v16, Lvr6;->INSTANCE:Lvr6;

    .line 271
    .line 272
    const/16 v20, 0x4

    .line 273
    .line 274
    const/16 v21, 0x0

    .line 275
    .line 276
    const-string v17, "SwiftLoggerExportHelper"

    .line 277
    .line 278
    const-string v18, "Logcat empty!"

    .line 279
    .line 280
    const/16 v19, 0x0

    .line 281
    .line 282
    invoke-static/range {v16 .. v21}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    goto :goto_4

    .line 286
    :goto_3
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 287
    :catchall_1
    move-exception v0

    .line 288
    invoke-static {v1, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 289
    .line 290
    .line 291
    throw v0

    .line 292
    :cond_6
    const-string v0, "claimSBDataOwnership: Missing Swift Backup application info"

    .line 293
    .line 294
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    return-object v4

    .line 298
    :cond_7
    const-string v0, "claimSBDataOwnership: Unable to get Swift Backup package info"

    .line 299
    .line 300
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    return-object v4

    .line 304
    :cond_8
    :goto_4
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 305
    .line 306
    const-string v6, "en-IN"

    .line 307
    .line 308
    invoke-static {v6}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    const-string v8, "yyyyMMMdd_hh.mm.ssaa"

    .line 313
    .line 314
    invoke-direct {v1, v8, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 315
    .line 316
    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 318
    .line 319
    .line 320
    move-result-wide v12

    .line 321
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {v1, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    const-string v6, "SwiftLogger_"

    .line 330
    .line 331
    const-string v8, ".7z"

    .line 332
    .line 333
    invoke-static {v6, v1, v8}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    new-instance v6, Lq63;

    .line 338
    .line 339
    invoke-direct {v6, v2, v1, v7}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6}, Lq63;->h()Z

    .line 343
    .line 344
    .line 345
    filled-new-array {v5, v0}, [Lq63;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-static {v0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .line 357
    .line 358
    check-cast v0, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    if-eqz v2, :cond_a

    .line 369
    .line 370
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    move-object v5, v2

    .line 375
    check-cast v5, Lq63;

    .line 376
    .line 377
    invoke-virtual {v5}, Lq63;->j()Z

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    if-eqz v5, :cond_9

    .line 382
    .line 383
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    goto :goto_5

    .line 387
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_b

    .line 392
    .line 393
    sget-object v16, Lvr6;->INSTANCE:Lvr6;

    .line 394
    .line 395
    const/16 v20, 0x4

    .line 396
    .line 397
    const/16 v21, 0x0

    .line 398
    .line 399
    const-string v17, "SwiftLoggerExportHelper"

    .line 400
    .line 401
    const-string v18, "No files to pack!"

    .line 402
    .line 403
    const/16 v19, 0x0

    .line 404
    .line 405
    invoke-static/range {v16 .. v21}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    return-object v4

    .line 409
    :cond_b
    sget-object v0, Lxp1;->FASTEST:Lxp1;

    .line 410
    .line 411
    :try_start_2
    invoke-virtual {v6}, Lq63;->j()Z

    .line 412
    .line 413
    .line 414
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 415
    const-string v5, "CommonsSevenZipPacker"

    .line 416
    .line 417
    if-eqz v2, :cond_c

    .line 418
    .line 419
    :try_start_3
    const-string v2, "pack"

    .line 420
    .line 421
    new-instance v8, Lek;

    .line 422
    .line 423
    const/16 v12, 0xf

    .line 424
    .line 425
    invoke-direct {v8, v6, v12}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 426
    .line 427
    .line 428
    invoke-static {v5, v2, v10, v8, v11}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    goto :goto_6

    .line 432
    :catch_0
    move-exception v0

    .line 433
    move-object v12, v1

    .line 434
    move-wide/from16 v17, v14

    .line 435
    .line 436
    goto/16 :goto_1a

    .line 437
    .line 438
    :cond_c
    :goto_6
    if-nez v0, :cond_d

    .line 439
    .line 440
    sget-object v0, Lxp1;->Companion:Lwp1;

    .line 441
    .line 442
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    :cond_d
    invoke-static {v0}, Lmm1;->e(Lxp1;)Ljava/util/List;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-static {v1}, Lmm1;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 458
    .line 459
    .line 460
    move-result v8

    .line 461
    if-nez v8, :cond_20

    .line 462
    .line 463
    new-instance v8, Ljava/util/ArrayList;

    .line 464
    .line 465
    const/16 v12, 0xa

    .line 466
    .line 467
    invoke-static {v2, v12}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 468
    .line 469
    .line 470
    move-result v13

    .line 471
    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 475
    .line 476
    .line 477
    move-result-object v13

    .line 478
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 479
    .line 480
    .line 481
    move-result v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 482
    if-eqz v16, :cond_e

    .line 483
    .line 484
    :try_start_4
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 488
    move-wide/from16 v17, v14

    .line 489
    .line 490
    :try_start_5
    move-object/from16 v14, v16

    .line 491
    .line 492
    check-cast v14, Lkm1;

    .line 493
    .line 494
    iget-object v14, v14, Lkm1;->b:Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-wide/from16 v14, v17

    .line 500
    .line 501
    goto :goto_7

    .line 502
    :catch_1
    move-exception v0

    .line 503
    :goto_8
    move-object v12, v1

    .line 504
    goto/16 :goto_1a

    .line 505
    .line 506
    :catch_2
    move-exception v0

    .line 507
    move-wide/from16 v17, v14

    .line 508
    .line 509
    goto :goto_8

    .line 510
    :cond_e
    move-wide/from16 v17, v14

    .line 511
    .line 512
    invoke-static {v8}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 513
    .line 514
    .line 515
    move-result-object v8

    .line 516
    invoke-interface {v8}, Ljava/util/Set;->size()I

    .line 517
    .line 518
    .line 519
    move-result v8

    .line 520
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 521
    .line 522
    .line 523
    move-result v13

    .line 524
    if-ne v8, v13, :cond_1f

    .line 525
    .line 526
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 527
    .line 528
    .line 529
    move-result-object v8

    .line 530
    move-wide/from16 v20, v17

    .line 531
    .line 532
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 533
    .line 534
    .line 535
    move-result v13

    .line 536
    if-eqz v13, :cond_10

    .line 537
    .line 538
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v13

    .line 542
    check-cast v13, Lkm1;

    .line 543
    .line 544
    iget-object v14, v13, Lkm1;->a:Lq63;

    .line 545
    .line 546
    invoke-virtual {v14}, Lq63;->y()Z

    .line 547
    .line 548
    .line 549
    move-result v14

    .line 550
    if-eqz v14, :cond_f

    .line 551
    .line 552
    iget-object v13, v13, Lkm1;->a:Lq63;

    .line 553
    .line 554
    invoke-virtual {v13}, Lq63;->A()J

    .line 555
    .line 556
    .line 557
    move-result-wide v13

    .line 558
    goto :goto_a

    .line 559
    :cond_f
    move-wide/from16 v13, v17

    .line 560
    .line 561
    :goto_a
    add-long v20, v20, v13

    .line 562
    .line 563
    goto :goto_9

    .line 564
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 565
    .line 566
    .line 567
    move-result-wide v13

    .line 568
    new-instance v8, Lkh6;

    .line 569
    .line 570
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 571
    .line 572
    .line 573
    iput-wide v13, v8, Lkh6;->a:J

    .line 574
    .line 575
    new-instance v23, Lkh6;

    .line 576
    .line 577
    invoke-direct/range {v23 .. v23}, Ljava/lang/Object;-><init>()V

    .line 578
    .line 579
    .line 580
    new-instance v15, Lkh6;

    .line 581
    .line 582
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 583
    .line 584
    .line 585
    const/high16 v3, 0x40000

    .line 586
    .line 587
    new-array v3, v3, [B

    .line 588
    .line 589
    invoke-virtual {v6}, Lq63;->t()Lq63;

    .line 590
    .line 591
    .line 592
    move-result-object v16

    .line 593
    if-eqz v16, :cond_1e

    .line 594
    .line 595
    invoke-virtual/range {v16 .. v16}, Lq63;->j()Z

    .line 596
    .line 597
    .line 598
    move-result v19

    .line 599
    if-nez v19, :cond_12

    .line 600
    .line 601
    invoke-static/range {v16 .. v16}, Lq63;->E(Lq63;)Z

    .line 602
    .line 603
    .line 604
    move-result v16

    .line 605
    if-eqz v16, :cond_11

    .line 606
    .line 607
    goto :goto_b

    .line 608
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 609
    .line 610
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    const-string v2, ": Failed to create parent dir for "

    .line 617
    .line 618
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 629
    .line 630
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    throw v2

    .line 638
    :cond_12
    :goto_b
    invoke-virtual {v6, v7}, Lq63;->l(I)Lc73;

    .line 639
    .line 640
    .line 641
    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 642
    if-eqz v7, :cond_1d

    .line 643
    .line 644
    iget-object v11, v7, Lc73;->a:Ljava/nio/channels/FileChannel;

    .line 645
    .line 646
    :try_start_6
    new-instance v4, Llb7;

    .line 647
    .line 648
    invoke-direct {v4, v11}, Llb7;-><init>(Ljava/nio/channels/FileChannel;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 649
    .line 650
    .line 651
    :try_start_7
    new-instance v11, Ljava/util/LinkedList;

    .line 652
    .line 653
    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 654
    .line 655
    .line 656
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 661
    .line 662
    .line 663
    move-result v19

    .line 664
    if-eqz v19, :cond_13

    .line 665
    .line 666
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v9

    .line 670
    invoke-virtual {v11, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    const/16 v9, 0xe

    .line 674
    .line 675
    goto :goto_c

    .line 676
    :cond_13
    iput-object v11, v4, Llb7;->q:Ljava/util/List;

    .line 677
    .line 678
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 683
    .line 684
    .line 685
    move-result v9

    .line 686
    if-eqz v9, :cond_16

    .line 687
    .line 688
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v9

    .line 692
    check-cast v9, Lkm1;

    .line 693
    .line 694
    invoke-virtual {v9}, Lkm1;->a()Lwa7;

    .line 695
    .line 696
    .line 697
    move-result-object v11

    .line 698
    iget-object v9, v9, Lkm1;->a:Lq63;

    .line 699
    .line 700
    iget-object v12, v4, Llb7;->b:Ljava/util/ArrayList;

    .line 701
    .line 702
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    invoke-virtual {v9}, Lq63;->y()Z

    .line 706
    .line 707
    .line 708
    move-result v11

    .line 709
    if-eqz v11, :cond_14

    .line 710
    .line 711
    invoke-virtual {v9, v10}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 712
    .line 713
    .line 714
    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 715
    :goto_e
    :try_start_8
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    .line 716
    .line 717
    .line 718
    move-result v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 719
    if-gez v11, :cond_15

    .line 720
    .line 721
    :try_start_9
    invoke-interface {v9}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 722
    .line 723
    .line 724
    :cond_14
    move-object/from16 v25, v0

    .line 725
    .line 726
    move-object v12, v1

    .line 727
    move-object/from16 v19, v8

    .line 728
    .line 729
    move-object/from16 v22, v15

    .line 730
    .line 731
    goto :goto_12

    .line 732
    :catchall_2
    move-exception v0

    .line 733
    move-object v12, v1

    .line 734
    :goto_f
    move-object v1, v0

    .line 735
    goto/16 :goto_18

    .line 736
    .line 737
    :cond_15
    :try_start_a
    invoke-virtual {v4, v3, v11}, Llb7;->h([BI)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 738
    .line 739
    .line 740
    move-object/from16 v25, v0

    .line 741
    .line 742
    move-object v12, v1

    .line 743
    :try_start_b
    iget-wide v0, v15, Lkh6;->a:J

    .line 744
    .line 745
    int-to-long v10, v11

    .line 746
    add-long/2addr v0, v10

    .line 747
    iput-wide v0, v15, Lkh6;->a:J

    .line 748
    .line 749
    const/16 v24, 0x0

    .line 750
    .line 751
    move-object/from16 v19, v8

    .line 752
    .line 753
    move-object/from16 v22, v15

    .line 754
    .line 755
    invoke-static/range {v19 .. v24}, Lmm1;->c(Lkh6;JLkh6;Lkh6;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 756
    .line 757
    .line 758
    move-object v1, v12

    .line 759
    move-object/from16 v8, v19

    .line 760
    .line 761
    move-object/from16 v15, v22

    .line 762
    .line 763
    move-object/from16 v0, v25

    .line 764
    .line 765
    const/4 v10, 0x1

    .line 766
    goto :goto_e

    .line 767
    :catchall_3
    move-exception v0

    .line 768
    :goto_10
    move-object v1, v0

    .line 769
    goto :goto_11

    .line 770
    :catchall_4
    move-exception v0

    .line 771
    move-object v12, v1

    .line 772
    goto :goto_10

    .line 773
    :goto_11
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 774
    :catchall_5
    move-exception v0

    .line 775
    :try_start_d
    invoke-static {v9, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 776
    .line 777
    .line 778
    throw v0

    .line 779
    :catchall_6
    move-exception v0

    .line 780
    goto :goto_f

    .line 781
    :goto_12
    invoke-virtual {v4}, Llb7;->a()V

    .line 782
    .line 783
    .line 784
    move-object v1, v12

    .line 785
    move-object/from16 v8, v19

    .line 786
    .line 787
    move-object/from16 v15, v22

    .line 788
    .line 789
    move-object/from16 v0, v25

    .line 790
    .line 791
    const/4 v10, 0x1

    .line 792
    const/16 v12, 0xa

    .line 793
    .line 794
    goto :goto_d

    .line 795
    :cond_16
    move-object v12, v1

    .line 796
    move-object/from16 v19, v8

    .line 797
    .line 798
    move-object/from16 v22, v15

    .line 799
    .line 800
    invoke-virtual {v4}, Llb7;->b()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 801
    .line 802
    .line 803
    :try_start_e
    invoke-virtual {v4}, Llb7;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 804
    .line 805
    .line 806
    :try_start_f
    invoke-virtual {v7}, Lc73;->close()V

    .line 807
    .line 808
    .line 809
    const/16 v24, 0x1

    .line 810
    .line 811
    invoke-static/range {v19 .. v24}, Lmm1;->c(Lkh6;JLkh6;Lkh6;Z)V

    .line 812
    .line 813
    .line 814
    new-instance v0, Ljava/util/ArrayList;

    .line 815
    .line 816
    const/16 v1, 0xa

    .line 817
    .line 818
    invoke-static {v2, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 819
    .line 820
    .line 821
    move-result v1

    .line 822
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 826
    .line 827
    .line 828
    move-result-object v1

    .line 829
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 830
    .line 831
    .line 832
    move-result v2

    .line 833
    if-eqz v2, :cond_17

    .line 834
    .line 835
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    check-cast v2, Lkm1;

    .line 840
    .line 841
    iget-object v2, v2, Lkm1;->a:Lq63;

    .line 842
    .line 843
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    goto :goto_13

    .line 847
    :catch_3
    move-exception v0

    .line 848
    goto/16 :goto_1a

    .line 849
    .line 850
    :cond_17
    new-instance v1, Ljava/util/HashSet;

    .line 851
    .line 852
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 853
    .line 854
    .line 855
    new-instance v2, Ljava/util/ArrayList;

    .line 856
    .line 857
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    :cond_18
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 865
    .line 866
    .line 867
    move-result v3

    .line 868
    if-eqz v3, :cond_19

    .line 869
    .line 870
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v3

    .line 874
    move-object v4, v3

    .line 875
    check-cast v4, Lq63;

    .line 876
    .line 877
    invoke-virtual {v4}, Lq63;->v()Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v4

    .line 881
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 882
    .line 883
    .line 884
    move-result v4

    .line 885
    if-eqz v4, :cond_18

    .line 886
    .line 887
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    .line 889
    .line 890
    goto :goto_14

    .line 891
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    .line 892
    .line 893
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 897
    .line 898
    .line 899
    move-result-object v1

    .line 900
    :cond_1a
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 901
    .line 902
    .line 903
    move-result v2

    .line 904
    if-eqz v2, :cond_1b

    .line 905
    .line 906
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object v2

    .line 910
    move-object v3, v2

    .line 911
    check-cast v3, Lq63;

    .line 912
    .line 913
    invoke-virtual {v3}, Lq63;->y()Z

    .line 914
    .line 915
    .line 916
    move-result v3

    .line 917
    if-eqz v3, :cond_1a

    .line 918
    .line 919
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    .line 921
    .line 922
    goto :goto_15

    .line 923
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 928
    .line 929
    .line 930
    move-result v1

    .line 931
    if-eqz v1, :cond_1c

    .line 932
    .line 933
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-result-object v1

    .line 937
    check-cast v1, Lq63;

    .line 938
    .line 939
    invoke-virtual {v1}, Lq63;->h()Z

    .line 940
    .line 941
    .line 942
    goto :goto_16

    .line 943
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 944
    .line 945
    .line 946
    move-result-wide v0

    .line 947
    sub-long/2addr v0, v13

    .line 948
    long-to-double v0, v0

    .line 949
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    div-double/2addr v0, v2

    .line 955
    new-instance v2, Ljava/lang/StringBuilder;

    .line 956
    .line 957
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    .line 959
    .line 960
    const-string v3, "7z creation succeeded in "

    .line 961
    .line 962
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    const-string v0, "s"

    .line 969
    .line 970
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    .line 979
    .line 980
    new-instance v0, Lfw5;

    .line 981
    .line 982
    const/16 v1, 0xe

    .line 983
    .line 984
    const/4 v2, 0x1

    .line 985
    const/4 v3, 0x0

    .line 986
    invoke-direct {v0, v2, v3, v3, v1}, Lfw5;-><init>(ZLjava/lang/String;Ljava/lang/Exception;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 987
    .line 988
    .line 989
    goto/16 :goto_1c

    .line 990
    .line 991
    :catchall_7
    move-exception v0

    .line 992
    :goto_17
    move-object v1, v0

    .line 993
    goto :goto_19

    .line 994
    :goto_18
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 995
    :catchall_8
    move-exception v0

    .line 996
    :try_start_11
    invoke-static {v4, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 997
    .line 998
    .line 999
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 1000
    :catchall_9
    move-exception v0

    .line 1001
    move-object v12, v1

    .line 1002
    goto :goto_17

    .line 1003
    :goto_19
    :try_start_12
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 1004
    :catchall_a
    move-exception v0

    .line 1005
    :try_start_13
    invoke-static {v7, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1006
    .line 1007
    .line 1008
    throw v0

    .line 1009
    :cond_1d
    move-object v12, v1

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    const-string v1, ": Unable to open destination archive channel: "

    .line 1019
    .line 1020
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1031
    .line 1032
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1037
    .line 1038
    .line 1039
    throw v1

    .line 1040
    :cond_1e
    move-object v12, v1

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    .line 1048
    .line 1049
    const-string v1, ": Destination has no parent: "

    .line 1050
    .line 1051
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1062
    .line 1063
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v0

    .line 1067
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    throw v1

    .line 1071
    :cond_1f
    move-object v12, v1

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    const-string v1, ": Duplicate archive entry names"

    .line 1081
    .line 1082
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v0

    .line 1089
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1090
    .line 1091
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1096
    .line 1097
    .line 1098
    throw v1

    .line 1099
    :cond_20
    move-object v12, v1

    .line 1100
    move-wide/from16 v17, v14

    .line 1101
    .line 1102
    const-string v0, "CommonsSevenZipPacker: Empty items"

    .line 1103
    .line 1104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1105
    .line 1106
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    throw v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 1110
    :goto_1a
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v1

    .line 1114
    const/4 v2, 0x0

    .line 1115
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1116
    .line 1117
    .line 1118
    move-result v3

    .line 1119
    if-eqz v3, :cond_22

    .line 1120
    .line 1121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v3

    .line 1125
    add-int/lit8 v4, v2, 0x1

    .line 1126
    .line 1127
    if-ltz v2, :cond_21

    .line 1128
    .line 1129
    check-cast v3, Lq63;

    .line 1130
    .line 1131
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 1132
    .line 1133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    const-string v5, "pack: File"

    .line 1136
    .line 1137
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    .line 1143
    const-string v5, "="

    .line 1144
    .line 1145
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v9

    .line 1155
    const/4 v11, 0x4

    .line 1156
    const/4 v12, 0x0

    .line 1157
    const-string v8, "CommonsSevenZipPacker"

    .line 1158
    .line 1159
    const/4 v10, 0x0

    .line 1160
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1161
    .line 1162
    .line 1163
    move v2, v4

    .line 1164
    goto :goto_1b

    .line 1165
    :cond_21
    invoke-static {}, Lfl1;->F0()V

    .line 1166
    .line 1167
    .line 1168
    const/16 v16, 0x0

    .line 1169
    .line 1170
    throw v16

    .line 1171
    :cond_22
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 1172
    .line 1173
    invoke-static {v0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v1

    .line 1177
    const-string v2, "pack: "

    .line 1178
    .line 1179
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v9

    .line 1183
    const/4 v11, 0x4

    .line 1184
    const/4 v12, 0x0

    .line 1185
    const-string v8, "CommonsSevenZipPacker"

    .line 1186
    .line 1187
    const/4 v10, 0x0

    .line 1188
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1189
    .line 1190
    .line 1191
    new-instance v1, Lfw5;

    .line 1192
    .line 1193
    const-string v2, "Error while creating 7z archive"

    .line 1194
    .line 1195
    const/16 v3, 0x8

    .line 1196
    .line 1197
    const/4 v4, 0x0

    .line 1198
    invoke-direct {v1, v4, v2, v0, v3}, Lfw5;-><init>(ZLjava/lang/String;Ljava/lang/Exception;I)V

    .line 1199
    .line 1200
    .line 1201
    move-object v0, v1

    .line 1202
    :goto_1c
    iget-boolean v1, v0, Lfw5;->a:Z

    .line 1203
    .line 1204
    if-nez v1, :cond_25

    .line 1205
    .line 1206
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 1207
    .line 1208
    iget-object v1, v0, Lfw5;->b:Ljava/lang/String;

    .line 1209
    .line 1210
    if-nez v1, :cond_23

    .line 1211
    .line 1212
    const-string v1, "Failed to create SwiftLogger archive"

    .line 1213
    .line 1214
    :cond_23
    move-object v9, v1

    .line 1215
    const/4 v11, 0x4

    .line 1216
    const/4 v12, 0x0

    .line 1217
    const-string v8, "SwiftLoggerExportHelper"

    .line 1218
    .line 1219
    const/4 v10, 0x0

    .line 1220
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1221
    .line 1222
    .line 1223
    iget-object v10, v0, Lfw5;->c:Ljava/lang/Exception;

    .line 1224
    .line 1225
    if-eqz v10, :cond_24

    .line 1226
    .line 1227
    const/16 v12, 0x8

    .line 1228
    .line 1229
    const/4 v13, 0x0

    .line 1230
    const-string v8, "SwiftLoggerExportHelper"

    .line 1231
    .line 1232
    const-string v9, "Packer failed"

    .line 1233
    .line 1234
    const/4 v11, 0x0

    .line 1235
    invoke-static/range {v7 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 1236
    .line 1237
    .line 1238
    :cond_24
    invoke-virtual {v6}, Lq63;->h()Z

    .line 1239
    .line 1240
    .line 1241
    :goto_1d
    const/16 v16, 0x0

    .line 1242
    .line 1243
    return-object v16

    .line 1244
    :cond_25
    invoke-virtual {v6}, Lq63;->j()Z

    .line 1245
    .line 1246
    .line 1247
    move-result v0

    .line 1248
    if-eqz v0, :cond_27

    .line 1249
    .line 1250
    invoke-virtual {v6}, Lq63;->A()J

    .line 1251
    .line 1252
    .line 1253
    move-result-wide v0

    .line 1254
    cmp-long v0, v0, v17

    .line 1255
    .line 1256
    if-gtz v0, :cond_26

    .line 1257
    .line 1258
    goto :goto_1e

    .line 1259
    :cond_26
    return-object v6

    .line 1260
    :cond_27
    :goto_1e
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 1261
    .line 1262
    const-string v0, "Created SwiftLogger archive is missing or empty: "

    .line 1263
    .line 1264
    invoke-static {v6, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v9

    .line 1268
    const/4 v11, 0x4

    .line 1269
    const/4 v12, 0x0

    .line 1270
    const-string v8, "SwiftLoggerExportHelper"

    .line 1271
    .line 1272
    const/4 v10, 0x0

    .line 1273
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v6}, Lq63;->h()Z

    .line 1277
    .line 1278
    .line 1279
    goto :goto_1d

    .line 1280
    :cond_28
    :goto_1f
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 1281
    .line 1282
    const-string v0, "SwiftLogger log file missing or empty: "

    .line 1283
    .line 1284
    invoke-static {v5, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v8

    .line 1288
    const/4 v10, 0x4

    .line 1289
    const/4 v11, 0x0

    .line 1290
    const-string v7, "SwiftLoggerExportHelper"

    .line 1291
    .line 1292
    const/4 v9, 0x0

    .line 1293
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v5}, Lq63;->h()Z

    .line 1297
    .line 1298
    .line 1299
    goto :goto_1d
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-static {p0}, Ldt7;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ldt7;->g(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "\n[SwiftLogger end]"

    .line 10
    .line 11
    invoke-static {v1}, Ldt7;->g(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    const/high16 v0, 0x20000

    .line 17
    .line 18
    if-le v1, v0, :cond_0

    .line 19
    .line 20
    invoke-static {p0, p1}, Ldt7;->e(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    add-int/lit8 v4, v3, 0x1

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    move-object v6, v5

    .line 43
    check-cast v6, Ljv6;

    .line 44
    .line 45
    const/4 v10, 0x3

    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x1

    .line 50
    invoke-static/range {v6 .. v11}, Ljv6;->toString$default(Ljv6;ZZZILjava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v5}, Ldt7;->g(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    add-int/2addr v5, v1

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/lit8 v1, v1, -0x1

    .line 64
    .line 65
    if-ge v3, v1, :cond_1

    .line 66
    .line 67
    const-string v1, "\n"

    .line 68
    .line 69
    invoke-static {v1}, Ldt7;->g(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    add-int/2addr v1, v5

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move v1, v5

    .line 76
    :goto_1
    if-le v1, v0, :cond_2

    .line 77
    .line 78
    invoke-static {p0, p1}, Ldt7;->e(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_2
    move v3, v4

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-static {p0, p1}, Ldt7;->d(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "[DeviceInfo start]\n"

    .line 2
    .line 3
    const-string v1, "\n[DeviceInfo end]\n\n[SwiftLogger start]\n"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ldt7;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    new-instance v5, Lzi1;

    .line 14
    .line 15
    const/16 p0, 0x8

    .line 16
    .line 17
    invoke-direct {v5, p0}, Lzi1;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/16 v6, 0x1e

    .line 21
    .line 22
    const-string v2, "\n"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    move-object v1, p1

    .line 27
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "\n[SwiftLogger end]"

    .line 32
    .line 33
    invoke-static {v0, p0, p1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 14

    .line 1
    invoke-static {p0}, Ldt7;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "[SwiftLogger truncated: older entries omitted]\n"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "\n"

    .line 12
    .line 13
    invoke-static {v0}, Ldt7;->g(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {p0}, Ldt7;->g(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v2, "\n[SwiftLogger end]"

    .line 22
    .line 23
    invoke-static {v2}, Ldt7;->g(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    add-int/2addr v3, v1

    .line 28
    const/high16 v1, 0x20000

    .line 29
    .line 30
    if-lt v3, v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Ldt7;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v5, Lrn6;

    .line 47
    .line 48
    invoke-direct {v5, p1}, Lrn6;-><init>(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Lrn6;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/4 v5, 0x0

    .line 56
    move v6, v5

    .line 57
    :goto_0
    move-object v7, p1

    .line 58
    check-cast v7, Lqn6;

    .line 59
    .line 60
    iget-object v7, v7, Lqn6;->a:Ljava/util/ListIterator;

    .line 61
    .line 62
    invoke-interface {v7}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_8

    .line 67
    .line 68
    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    move-object v8, v7

    .line 73
    check-cast v8, Ljv6;

    .line 74
    .line 75
    const/4 v12, 0x3

    .line 76
    const/4 v13, 0x0

    .line 77
    const/4 v9, 0x0

    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v11, 0x1

    .line 80
    invoke-static/range {v8 .. v13}, Ljv6;->toString$default(Ljv6;ZZZILjava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_1

    .line 89
    .line 90
    move v8, v5

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    move v8, v0

    .line 93
    :goto_1
    invoke-static {v7}, Ldt7;->g(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    add-int v10, v3, v6

    .line 98
    .line 99
    add-int/2addr v10, v8

    .line 100
    add-int/2addr v10, v9

    .line 101
    if-gt v10, v1, :cond_2

    .line 102
    .line 103
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    add-int/2addr v8, v9

    .line 107
    add-int/2addr v6, v8

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    sub-int/2addr v1, v3

    .line 110
    sub-int/2addr v1, v6

    .line 111
    sub-int/2addr v1, v8

    .line 112
    const-string p1, "[SwiftLogger log line truncated]\n"

    .line 113
    .line 114
    invoke-static {p1}, Ldt7;->g(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    sub-int/2addr v1, v0

    .line 119
    if-lez v1, :cond_8

    .line 120
    .line 121
    if-gtz v1, :cond_3

    .line 122
    .line 123
    const-string v7, ""

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_3
    invoke-static {v7}, Ldt7;->g(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-gt v0, v1, :cond_4

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    :goto_2
    if-ge v5, v0, :cond_6

    .line 138
    .line 139
    add-int v3, v5, v0

    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    div-int/lit8 v3, v3, 0x2

    .line 144
    .line 145
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    sub-int/2addr v6, v3

    .line 150
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-static {v6}, Ldt7;->g(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-gt v6, v1, :cond_5

    .line 159
    .line 160
    move v5, v3

    .line 161
    goto :goto_2

    .line 162
    :cond_5
    add-int/lit8 v0, v3, -0x1

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    sub-int/2addr v0, v5

    .line 170
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-ge v0, v1, :cond_7

    .line 175
    .line 176
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_7

    .line 185
    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 187
    .line 188
    :cond_7
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    :goto_3
    invoke-virtual {p1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    :cond_8
    invoke-static {p0}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-nez p1, :cond_9

    .line 208
    .line 209
    new-instance v5, Lpn6;

    .line 210
    .line 211
    invoke-direct {v5, v4}, Lpn6;-><init>(Ljava/util/ArrayList;)V

    .line 212
    .line 213
    .line 214
    const/4 v9, 0x0

    .line 215
    const/16 v10, 0x3e

    .line 216
    .line 217
    const-string v6, "\n"

    .line 218
    .line 219
    const/4 v7, 0x0

    .line 220
    const/4 v8, 0x0

    .line 221
    invoke-static/range {v5 .. v10}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-static {p0}, Ldt7;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Ldt7;->g(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x20000

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v0, :cond_2

    .line 17
    .line 18
    add-int v4, v3, v0

    .line 19
    .line 20
    add-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    div-int/lit8 v4, v4, 0x2

    .line 23
    .line 24
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-static {v5}, Ldt7;->g(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-gt v5, v1, :cond_1

    .line 33
    .line 34
    move v3, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    add-int/lit8 v0, v4, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    if-lez v3, :cond_3

    .line 40
    .line 41
    add-int/lit8 v0, v3, -0x1

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    move v3, v0

    .line 54
    :cond_3
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    array-length p0, p0

    .line 14
    return p0
.end method
