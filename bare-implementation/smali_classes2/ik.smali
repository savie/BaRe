.class public abstract Lik;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Ljava/lang/String;Loy7;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Loy7;->f:Ljava/util/List;

    .line 8
    .line 9
    iget-object v1, p1, Loy7;->h:Lny7;

    .line 10
    .line 11
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v4, "Deleting backup file(s) for package="

    .line 16
    .line 17
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v4, " with params="

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v7, 0x0

    .line 37
    const-string v3, "AppBackupDeleteHelper"

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Liy;->d:Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v3, p1, Loy7;->g:Ljava/util/List;

    .line 54
    .line 55
    invoke-static {v3}, Lji8;->s(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x1

    .line 61
    if-eqz v4, :cond_1b

    .line 62
    .line 63
    instance-of v4, v1, Lly7;

    .line 64
    .line 65
    if-eqz v4, :cond_7

    .line 66
    .line 67
    move-object v4, v1

    .line 68
    check-cast v4, Lly7;

    .line 69
    .line 70
    sget-object v8, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 71
    .line 72
    invoke-static {p0}, Lfk;->b(Ljava/lang/String;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    if-eqz v8, :cond_2

    .line 77
    .line 78
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-nez v9, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    move-object v8, v5

    .line 86
    :goto_0
    if-nez v8, :cond_1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    iget-boolean v9, v4, Lly7;->b:Z

    .line 90
    .line 91
    if-eqz v9, :cond_3

    .line 92
    .line 93
    invoke-static {v7, v8}, Lel1;->N0(ILjava/util/List;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_3

    .line 102
    .line 103
    :cond_2
    :goto_1
    move-object v8, v5

    .line 104
    goto :goto_3

    .line 105
    :cond_3
    iget-boolean v4, v4, Lly7;->a:Z

    .line 106
    .line 107
    if-eqz v4, :cond_6

    .line 108
    .line 109
    new-instance v4, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-eqz v9, :cond_5

    .line 123
    .line 124
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    move-object v10, v9

    .line 129
    check-cast v10, Lhk;

    .line 130
    .line 131
    invoke-virtual {v10}, Lhk;->u()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    if-eqz v10, :cond_4

    .line 136
    .line 137
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isProtectedBackup()Z

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    if-ne v10, v7, :cond_4

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    move-object v8, v4

    .line 149
    :cond_6
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-nez v4, :cond_2

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_7
    instance-of v4, v1, Lmy7;

    .line 157
    .line 158
    if-eqz v4, :cond_1a

    .line 159
    .line 160
    move-object v4, v1

    .line 161
    check-cast v4, Lmy7;

    .line 162
    .line 163
    iget-object v8, v4, Lmy7;->a:Ljava/util/List;

    .line 164
    .line 165
    :goto_3
    if-eqz v8, :cond_17

    .line 166
    .line 167
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_8

    .line 172
    .line 173
    goto/16 :goto_8

    .line 174
    .line 175
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-static {}, Liu;->getEntries()Ljx2;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    if-eqz v9, :cond_9

    .line 185
    .line 186
    move-object v10, v9

    .line 187
    check-cast v10, Ll3;

    .line 188
    .line 189
    invoke-virtual {v10}, Ll3;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    if-eqz v10, :cond_9

    .line 194
    .line 195
    goto/16 :goto_6

    .line 196
    .line 197
    :cond_9
    check-cast v9, Lz3;

    .line 198
    .line 199
    invoke-virtual {v9}, Lz3;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    :cond_a
    move-object v10, v9

    .line 204
    check-cast v10, Lw3;

    .line 205
    .line 206
    invoke-virtual {v10}, Lw3;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-eqz v11, :cond_13

    .line 211
    .line 212
    invoke-virtual {v10}, Lw3;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    check-cast v10, Liu;

    .line 217
    .line 218
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    if-nez v10, :cond_a

    .line 223
    .line 224
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    :cond_b
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    if-eqz v9, :cond_14

    .line 233
    .line 234
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    check-cast v9, Lhk;

    .line 239
    .line 240
    sget-object v10, Liu;->APP:Liu;

    .line 241
    .line 242
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    if-eqz v10, :cond_e

    .line 247
    .line 248
    invoke-virtual {v9}, Lhk;->c()Lq63;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    invoke-virtual {v10}, Lq63;->j()Z

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    if-eqz v10, :cond_c

    .line 257
    .line 258
    sget-object v10, Lj94;->a:Ljava/util/Set;

    .line 259
    .line 260
    sget-object v10, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 261
    .line 262
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    :try_start_0
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    invoke-virtual {v10, p0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .line 272
    .line 273
    move v10, v7

    .line 274
    goto :goto_5

    .line 275
    :catch_0
    move v10, v6

    .line 276
    :goto_5
    invoke-static {p0, v10}, Lj94;->f(Ljava/lang/String;Z)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v9}, Lhk;->c()Lq63;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    invoke-virtual {v10}, Lq63;->f()Z

    .line 284
    .line 285
    .line 286
    move-result v10

    .line 287
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    :cond_c
    invoke-virtual {v9}, Lhk;->C()Lq63;

    .line 295
    .line 296
    .line 297
    move-result-object v10

    .line 298
    invoke-virtual {v10}, Lq63;->j()Z

    .line 299
    .line 300
    .line 301
    move-result v10

    .line 302
    if-eqz v10, :cond_d

    .line 303
    .line 304
    invoke-virtual {v9}, Lhk;->C()Lq63;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    invoke-virtual {v10}, Lq63;->f()Z

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 313
    .line 314
    .line 315
    move-result-object v10

    .line 316
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    :cond_d
    invoke-virtual {v9}, Lhk;->z()Lq63;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    invoke-virtual {v10}, Lq63;->j()Z

    .line 324
    .line 325
    .line 326
    move-result v10

    .line 327
    if-eqz v10, :cond_e

    .line 328
    .line 329
    invoke-virtual {v9}, Lhk;->z()Lq63;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    invoke-virtual {v10}, Lq63;->f()Z

    .line 334
    .line 335
    .line 336
    move-result v10

    .line 337
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 338
    .line 339
    .line 340
    move-result-object v10

    .line 341
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    :cond_e
    sget-object v10, Liu;->DATA:Liu;

    .line 345
    .line 346
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v10

    .line 350
    if-eqz v10, :cond_f

    .line 351
    .line 352
    invoke-virtual {v9}, Lhk;->g()Lq63;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    invoke-virtual {v10}, Lq63;->j()Z

    .line 357
    .line 358
    .line 359
    move-result v10

    .line 360
    if-eqz v10, :cond_f

    .line 361
    .line 362
    invoke-virtual {v9}, Lhk;->g()Lq63;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    invoke-virtual {v10}, Lq63;->f()Z

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 371
    .line 372
    .line 373
    move-result-object v10

    .line 374
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    :cond_f
    sget-object v10, Liu;->EXTDATA:Liu;

    .line 378
    .line 379
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v10

    .line 383
    if-eqz v10, :cond_10

    .line 384
    .line 385
    invoke-virtual {v9}, Lhk;->n()Lq63;

    .line 386
    .line 387
    .line 388
    move-result-object v10

    .line 389
    invoke-virtual {v10}, Lq63;->j()Z

    .line 390
    .line 391
    .line 392
    move-result v10

    .line 393
    if-eqz v10, :cond_10

    .line 394
    .line 395
    invoke-virtual {v9}, Lhk;->n()Lq63;

    .line 396
    .line 397
    .line 398
    move-result-object v10

    .line 399
    invoke-virtual {v10}, Lq63;->f()Z

    .line 400
    .line 401
    .line 402
    move-result v10

    .line 403
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 404
    .line 405
    .line 406
    move-result-object v10

    .line 407
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    :cond_10
    sget-object v10, Liu;->MEDIA:Liu;

    .line 411
    .line 412
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v10

    .line 416
    if-eqz v10, :cond_11

    .line 417
    .line 418
    invoke-virtual {v9}, Lhk;->q()Lq63;

    .line 419
    .line 420
    .line 421
    move-result-object v10

    .line 422
    invoke-virtual {v10}, Lq63;->j()Z

    .line 423
    .line 424
    .line 425
    move-result v10

    .line 426
    if-eqz v10, :cond_11

    .line 427
    .line 428
    invoke-virtual {v9}, Lhk;->q()Lq63;

    .line 429
    .line 430
    .line 431
    move-result-object v10

    .line 432
    invoke-virtual {v10}, Lq63;->f()Z

    .line 433
    .line 434
    .line 435
    move-result v10

    .line 436
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 437
    .line 438
    .line 439
    move-result-object v10

    .line 440
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    :cond_11
    sget-object v10, Liu;->EXPANSION:Liu;

    .line 444
    .line 445
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v10

    .line 449
    if-eqz v10, :cond_12

    .line 450
    .line 451
    invoke-virtual {v9}, Lhk;->m()Lq63;

    .line 452
    .line 453
    .line 454
    move-result-object v10

    .line 455
    invoke-virtual {v10}, Lq63;->j()Z

    .line 456
    .line 457
    .line 458
    move-result v10

    .line 459
    if-eqz v10, :cond_12

    .line 460
    .line 461
    invoke-virtual {v9}, Lhk;->m()Lq63;

    .line 462
    .line 463
    .line 464
    move-result-object v10

    .line 465
    invoke-virtual {v10}, Lq63;->f()Z

    .line 466
    .line 467
    .line 468
    move-result v10

    .line 469
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 470
    .line 471
    .line 472
    move-result-object v10

    .line 473
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    :cond_12
    invoke-virtual {v9}, Lhk;->E()Z

    .line 477
    .line 478
    .line 479
    move-result v10

    .line 480
    if-nez v10, :cond_b

    .line 481
    .line 482
    invoke-virtual {v9}, Lhk;->e()Lq63;

    .line 483
    .line 484
    .line 485
    move-result-object v9

    .line 486
    invoke-virtual {v9}, Lq63;->g()Z

    .line 487
    .line 488
    .line 489
    move-result v9

    .line 490
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 491
    .line 492
    .line 493
    move-result-object v9

    .line 494
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    goto/16 :goto_4

    .line 498
    .line 499
    :cond_13
    :goto_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 504
    .line 505
    .line 506
    move-result v8

    .line 507
    if-eqz v8, :cond_14

    .line 508
    .line 509
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v8

    .line 513
    check-cast v8, Lhk;

    .line 514
    .line 515
    invoke-virtual {v8}, Lhk;->e()Lq63;

    .line 516
    .line 517
    .line 518
    move-result-object v8

    .line 519
    invoke-virtual {v8}, Lq63;->g()Z

    .line 520
    .line 521
    .line 522
    move-result v8

    .line 523
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 524
    .line 525
    .line 526
    move-result-object v8

    .line 527
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    goto :goto_7

    .line 531
    :cond_14
    sget-object v0, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 532
    .line 533
    invoke-static {p0}, Lfk;->b(Ljava/lang/String;)Ljava/util/List;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    if-eqz v0, :cond_15

    .line 538
    .line 539
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-eqz v0, :cond_16

    .line 544
    .line 545
    :cond_15
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 546
    .line 547
    const-string v0, "All backups deleted for package "

    .line 548
    .line 549
    const-string v9, ". Deleting the package directory..."

    .line 550
    .line 551
    invoke-static {v0, p0, v9}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v10

    .line 555
    const/4 v12, 0x4

    .line 556
    const/4 v13, 0x0

    .line 557
    const-string v9, "AppBackupDeleteHelper"

    .line 558
    .line 559
    const/4 v11, 0x0

    .line 560
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    invoke-static {p0, v6}, Lfk;->c(Ljava/lang/String;Z)Lq63;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    invoke-virtual {v0}, Lq63;->g()Z

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 579
    .line 580
    .line 581
    move-result v0

    .line 582
    if-eqz v0, :cond_18

    .line 583
    .line 584
    :cond_17
    :goto_8
    move v0, v7

    .line 585
    goto :goto_9

    .line 586
    :cond_18
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    if-eqz v4, :cond_17

    .line 595
    .line 596
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    check-cast v4, Ljava/lang/Boolean;

    .line 601
    .line 602
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 603
    .line 604
    .line 605
    move-result v4

    .line 606
    if-nez v4, :cond_19

    .line 607
    .line 608
    move v0, v6

    .line 609
    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    goto :goto_a

    .line 617
    :cond_1a
    invoke-static {}, Lq;->j()V

    .line 618
    .line 619
    .line 620
    return-void

    .line 621
    :cond_1b
    :goto_a
    sget-object v0, Lq05;->CLOUD:Lq05;

    .line 622
    .line 623
    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    if-eqz v0, :cond_24

    .line 628
    .line 629
    instance-of v0, v1, Lly7;

    .line 630
    .line 631
    if-eqz v0, :cond_1f

    .line 632
    .line 633
    sget-object v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->Companion:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;

    .line 634
    .line 635
    invoke-virtual {v0, p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;->fetchForPackage(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->getDatabaseError()Lwc2;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    if-eqz v3, :cond_1c

    .line 644
    .line 645
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 646
    .line 647
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->getDatabaseError()Lwc2;

    .line 648
    .line 649
    .line 650
    move-result-object p1

    .line 651
    iget-object p1, p1, Lwc2;->b:Ljava/lang/String;

    .line 652
    .line 653
    const-string v0, "Error while fetching cloud backups for package: "

    .line 654
    .line 655
    const-string v1, ": "

    .line 656
    .line 657
    invoke-static {v0, p0, v1, p1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v10

    .line 661
    const/4 v12, 0x4

    .line 662
    const/4 v13, 0x0

    .line 663
    const-string v9, "AppBackupDeleteHelper"

    .line 664
    .line 665
    const/4 v11, 0x0

    .line 666
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 667
    .line 668
    .line 669
    goto :goto_d

    .line 670
    :cond_1c
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->getAppCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 671
    .line 672
    .line 673
    move-result-object p0

    .line 674
    if-eqz p0, :cond_22

    .line 675
    .line 676
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->hasBackups()Z

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    if-eqz v0, :cond_1d

    .line 681
    .line 682
    move-object v5, p0

    .line 683
    :cond_1d
    if-nez v5, :cond_1e

    .line 684
    .line 685
    goto :goto_d

    .line 686
    :cond_1e
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getBackups()Ljava/util/List;

    .line 687
    .line 688
    .line 689
    move-result-object p0

    .line 690
    check-cast v1, Lly7;

    .line 691
    .line 692
    invoke-static {p0, v1}, Lik;->b(Ljava/util/List;Lly7;)Ljava/util/List;

    .line 693
    .line 694
    .line 695
    move-result-object p0

    .line 696
    goto :goto_b

    .line 697
    :cond_1f
    instance-of p0, v1, Lmy7;

    .line 698
    .line 699
    if-eqz p0, :cond_23

    .line 700
    .line 701
    check-cast v1, Lmy7;

    .line 702
    .line 703
    iget-object p0, v1, Lmy7;->b:Ljava/util/List;

    .line 704
    .line 705
    :goto_b
    if-eqz p0, :cond_21

    .line 706
    .line 707
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    if-eqz v0, :cond_20

    .line 712
    .line 713
    goto :goto_c

    .line 714
    :cond_20
    new-instance v0, Lid1;

    .line 715
    .line 716
    invoke-direct {v0, p0, p1}, Lid1;-><init>(Ljava/util/List;Loy7;)V

    .line 717
    .line 718
    .line 719
    sget-object p0, Ltb1;->a:Ltb1;

    .line 720
    .line 721
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 722
    .line 723
    .line 724
    move-result-object p0

    .line 725
    invoke-virtual {p0, v0}, Ltb1;->b(Lzv1;)Lxh2;

    .line 726
    .line 727
    .line 728
    move-result-object p0

    .line 729
    invoke-virtual {p0}, Lxh2;->c()Ljq6;

    .line 730
    .line 731
    .line 732
    move-result-object p0

    .line 733
    invoke-virtual {p0}, Ljq6;->q()Z

    .line 734
    .line 735
    .line 736
    move-result v6

    .line 737
    goto :goto_d

    .line 738
    :cond_21
    :goto_c
    move v6, v7

    .line 739
    :cond_22
    :goto_d
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 740
    .line 741
    .line 742
    move-result-object p0

    .line 743
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    goto :goto_e

    .line 747
    :cond_23
    invoke-static {}, Lq;->j()V

    .line 748
    .line 749
    .line 750
    return-void

    .line 751
    :cond_24
    :goto_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 752
    .line 753
    .line 754
    move-result p0

    .line 755
    if-eqz p0, :cond_25

    .line 756
    .line 757
    goto :goto_f

    .line 758
    :cond_25
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 759
    .line 760
    .line 761
    move-result-object p0

    .line 762
    :cond_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 763
    .line 764
    .line 765
    move-result p1

    .line 766
    if-eqz p1, :cond_27

    .line 767
    .line 768
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object p1

    .line 772
    check-cast p1, Ljava/lang/Boolean;

    .line 773
    .line 774
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 775
    .line 776
    .line 777
    move-result p1

    .line 778
    if-nez p1, :cond_26

    .line 779
    .line 780
    :cond_27
    :goto_f
    return-void
.end method

.method public static b(Ljava/util/List;Lly7;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p0, :cond_6

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p0, v0

    .line 15
    :goto_0
    if-nez p0, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    iget-boolean v1, p1, Lly7;->b:Z

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-static {v1, p0}, Lel1;->N0(ILjava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    iget-boolean p1, p1, Lly7;->a:Z

    .line 35
    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    new-instance p1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v2, v1

    .line 58
    check-cast v2, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 59
    .line 60
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isProtectedBackup()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    move-object p0, p1

    .line 75
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_6
    :goto_2
    return-object v0
.end method
