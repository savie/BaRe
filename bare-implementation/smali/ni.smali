.class public abstract Lni;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lji;ZZ)Ljava/util/ArrayList;
    .locals 29

    .line 1
    const v0, 0x7f080169

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v8

    .line 8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lv53;->a:Lv53;

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-object v2, Lv53;->c:Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    new-instance v9, Lki;

    .line 32
    .line 33
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 34
    .line 35
    const v2, 0x7f130237

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Ldj7;->g(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    const v1, 0x7f0600d0

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    move-object v15, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-object v15, v2

    .line 55
    :goto_0
    const/16 v20, 0x0

    .line 56
    .line 57
    const/16 v21, 0x3f38

    .line 58
    .line 59
    const/16 v10, 0xd

    .line 60
    .line 61
    const/4 v12, 0x0

    .line 62
    const/4 v13, 0x0

    .line 63
    const v14, 0x7f080142

    .line 64
    .line 65
    .line 66
    const/16 v16, 0x0

    .line 67
    .line 68
    const/16 v17, 0x0

    .line 69
    .line 70
    const/16 v18, 0x0

    .line 71
    .line 72
    const/16 v19, 0x0

    .line 73
    .line 74
    invoke-direct/range {v9 .. v21}, Lki;-><init>(ILjava/lang/String;Ljava/lang/String;Lqt3;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Boolean;ZI)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    new-instance v10, Lki;

    .line 83
    .line 84
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const v3, 0x7f13008f

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const v4, 0x7f13045a

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    const-string v4, " / "

    .line 107
    .line 108
    invoke-static {v1, v4, v3}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    const/16 v21, 0x0

    .line 113
    .line 114
    const/16 v22, 0x3fb8

    .line 115
    .line 116
    const/16 v11, 0xe

    .line 117
    .line 118
    const/4 v13, 0x0

    .line 119
    const/4 v14, 0x0

    .line 120
    const v15, 0x7f0800ca

    .line 121
    .line 122
    .line 123
    const/16 v16, 0x0

    .line 124
    .line 125
    const/16 v17, 0x0

    .line 126
    .line 127
    const/16 v18, 0x0

    .line 128
    .line 129
    const/16 v19, 0x0

    .line 130
    .line 131
    const/16 v20, 0x0

    .line 132
    .line 133
    invoke-direct/range {v10 .. v22}, Lki;-><init>(ILjava/lang/String;Ljava/lang/String;Lqt3;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Boolean;ZI)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_1
    sget-object v1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 140
    .line 141
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    sget-object v3, Llr4;->a:Llr4;

    .line 146
    .line 147
    invoke-virtual/range {p0 .. p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {v3}, Llr4;->e(Ljava/lang/String;)Ljava/util/Set;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    if-eqz v3, :cond_3

    .line 156
    .line 157
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_2

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_2
    const v4, 0x7f13020f

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_3
    :goto_1
    const v4, 0x7f1304ed

    .line 169
    .line 170
    .line 171
    :goto_2
    new-instance v5, Lli;

    .line 172
    .line 173
    const/4 v14, 0x0

    .line 174
    invoke-direct {v5, v3, v14}, Lli;-><init>(Ljava/lang/Object;I)V

    .line 175
    .line 176
    .line 177
    if-eqz v3, :cond_5

    .line 178
    .line 179
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-eqz v6, :cond_4

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_4
    move-object/from16 v19, v5

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_5
    :goto_3
    move-object/from16 v19, v2

    .line 190
    .line 191
    :goto_4
    invoke-static {v4}, Ldj7;->g(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v17

    .line 195
    const v4, 0x7f080146

    .line 196
    .line 197
    .line 198
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    if-nez v1, :cond_6

    .line 203
    .line 204
    move-object/from16 v22, v4

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_6
    move-object/from16 v22, v2

    .line 208
    .line 209
    :goto_5
    const v4, 0x7f0604a5

    .line 210
    .line 211
    .line 212
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    if-nez v1, :cond_7

    .line 217
    .line 218
    move-object/from16 v23, v4

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_7
    move-object/from16 v23, v2

    .line 222
    .line 223
    :goto_6
    new-instance v15, Lki;

    .line 224
    .line 225
    const/16 v16, 0xb

    .line 226
    .line 227
    const/16 v18, 0x0

    .line 228
    .line 229
    const v20, 0x7f080164

    .line 230
    .line 231
    .line 232
    const/16 v21, 0x0

    .line 233
    .line 234
    const/16 v24, 0x0

    .line 235
    .line 236
    const/16 v25, 0x0

    .line 237
    .line 238
    const/16 v26, 0x0

    .line 239
    .line 240
    const/16 v27, 0x3c98

    .line 241
    .line 242
    invoke-direct/range {v15 .. v27}, Lki;-><init>(ILjava/lang/String;Ljava/lang/String;Lqt3;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Boolean;ZI)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    if-eqz v3, :cond_a

    .line 249
    .line 250
    new-instance v4, Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    :cond_8
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_9

    .line 264
    .line 265
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    check-cast v5, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 270
    .line 271
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    if-eqz v5, :cond_8

    .line 276
    .line 277
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_9
    invoke-static {v4}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    goto :goto_8

    .line 286
    :cond_a
    move-object v3, v2

    .line 287
    :goto_8
    sget-object v4, Lsv2;->a:Lsv2;

    .line 288
    .line 289
    if-nez v3, :cond_b

    .line 290
    .line 291
    move-object v3, v4

    .line 292
    :cond_b
    sget-object v5, Llr4;->a:Llr4;

    .line 293
    .line 294
    invoke-static {}, Llr4;->f()Ljava/util/Set;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    if-nez v5, :cond_c

    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_c
    move-object v4, v5

    .line 302
    :goto_9
    if-eqz v1, :cond_d

    .line 303
    .line 304
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-eqz v5, :cond_e

    .line 309
    .line 310
    :cond_d
    :goto_a
    move-object/from16 v6, p0

    .line 311
    .line 312
    goto/16 :goto_f

    .line 313
    .line 314
    :cond_e
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-eqz v5, :cond_f

    .line 319
    .line 320
    goto :goto_a

    .line 321
    :cond_f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    if-eqz v6, :cond_d

    .line 330
    .line 331
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    check-cast v6, Ljava/lang/String;

    .line 336
    .line 337
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v6

    .line 341
    if-nez v6, :cond_14

    .line 342
    .line 343
    new-instance v3, Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    :cond_10
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-eqz v5, :cond_11

    .line 357
    .line 358
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    check-cast v5, Ljava/lang/String;

    .line 363
    .line 364
    sget-object v6, Llr4;->a:Llr4;

    .line 365
    .line 366
    invoke-static {v5}, Llr4;->c(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    if-eqz v5, :cond_10

    .line 371
    .line 372
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    goto :goto_c

    .line 376
    :cond_11
    invoke-static {v3}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    new-instance v4, Lmi;

    .line 381
    .line 382
    move-object/from16 v6, p0

    .line 383
    .line 384
    invoke-direct {v4, v14, v6, v3}, Lmi;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    if-nez v3, :cond_12

    .line 392
    .line 393
    move-object/from16 v19, v4

    .line 394
    .line 395
    goto :goto_d

    .line 396
    :cond_12
    move-object/from16 v19, v2

    .line 397
    .line 398
    :goto_d
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 399
    .line 400
    const v3, 0x7f13002a

    .line 401
    .line 402
    .line 403
    invoke-static {v3}, Ldj7;->g(I)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v17

    .line 407
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    const v4, 0x7f13041f

    .line 412
    .line 413
    .line 414
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    if-nez v1, :cond_13

    .line 419
    .line 420
    move-object/from16 v18, v3

    .line 421
    .line 422
    goto :goto_e

    .line 423
    :cond_13
    move-object/from16 v18, v2

    .line 424
    .line 425
    :goto_e
    const v1, 0x7f06001e

    .line 426
    .line 427
    .line 428
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object v21

    .line 432
    const v1, 0x7f080177

    .line 433
    .line 434
    .line 435
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v22

    .line 439
    new-instance v15, Lki;

    .line 440
    .line 441
    const/16 v16, 0xc

    .line 442
    .line 443
    const v20, 0x7f080172

    .line 444
    .line 445
    .line 446
    const/16 v23, 0x0

    .line 447
    .line 448
    const/16 v24, 0x0

    .line 449
    .line 450
    const/16 v25, 0x0

    .line 451
    .line 452
    const/16 v26, 0x0

    .line 453
    .line 454
    const/16 v27, 0x3e08

    .line 455
    .line 456
    invoke-direct/range {v15 .. v27}, Lki;-><init>(ILjava/lang/String;Ljava/lang/String;Lqt3;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Boolean;ZI)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    goto :goto_f

    .line 463
    :cond_14
    move-object/from16 v6, p0

    .line 464
    .line 465
    goto/16 :goto_b

    .line 466
    .line 467
    :goto_f
    sget-object v1, Lgs0;->c:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 468
    .line 469
    if-eqz v1, :cond_17

    .line 470
    .line 471
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->getItems()Ljava/util/List;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    if-eqz v1, :cond_17

    .line 476
    .line 477
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    if-eqz v3, :cond_16

    .line 486
    .line 487
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    move-object v4, v3

    .line 492
    check-cast v4, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 493
    .line 494
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    invoke-virtual {v6}, Lji;->getPackageName()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v4

    .line 506
    if-eqz v4, :cond_15

    .line 507
    .line 508
    goto :goto_10

    .line 509
    :cond_16
    move-object v3, v2

    .line 510
    :goto_10
    check-cast v3, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 511
    .line 512
    goto :goto_11

    .line 513
    :cond_17
    move-object v3, v2

    .line 514
    :goto_11
    if-eqz v3, :cond_18

    .line 515
    .line 516
    new-instance v15, Lki;

    .line 517
    .line 518
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 519
    .line 520
    const v1, 0x7f1300f5

    .line 521
    .line 522
    .line 523
    invoke-static {v1}, Ldj7;->g(I)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v17

    .line 527
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getBlackListTypeDisplayString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v18

    .line 531
    const/16 v26, 0x0

    .line 532
    .line 533
    const/16 v27, 0x3fa8

    .line 534
    .line 535
    const/16 v16, 0x15

    .line 536
    .line 537
    const/16 v19, 0x0

    .line 538
    .line 539
    const v20, 0x7f0801c0

    .line 540
    .line 541
    .line 542
    const/16 v21, 0x0

    .line 543
    .line 544
    const/16 v22, 0x0

    .line 545
    .line 546
    const/16 v23, 0x0

    .line 547
    .line 548
    const/16 v24, 0x0

    .line 549
    .line 550
    const/16 v25, 0x0

    .line 551
    .line 552
    invoke-direct/range {v15 .. v27}, Lki;-><init>(ILjava/lang/String;Ljava/lang/String;Lqt3;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Boolean;ZI)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    goto :goto_12

    .line 559
    :cond_18
    new-instance v16, Lki;

    .line 560
    .line 561
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 562
    .line 563
    const v1, 0x7f13002b

    .line 564
    .line 565
    .line 566
    invoke-static {v1}, Ldj7;->g(I)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v18

    .line 570
    const v1, 0x7f080156

    .line 571
    .line 572
    .line 573
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 574
    .line 575
    .line 576
    move-result-object v23

    .line 577
    const/16 v27, 0x0

    .line 578
    .line 579
    const/16 v28, 0x3eb8

    .line 580
    .line 581
    const/16 v17, 0x15

    .line 582
    .line 583
    const/16 v19, 0x0

    .line 584
    .line 585
    const/16 v20, 0x0

    .line 586
    .line 587
    const v21, 0x7f0801c0

    .line 588
    .line 589
    .line 590
    const/16 v22, 0x0

    .line 591
    .line 592
    const/16 v24, 0x0

    .line 593
    .line 594
    const/16 v25, 0x0

    .line 595
    .line 596
    const/16 v26, 0x0

    .line 597
    .line 598
    invoke-direct/range {v16 .. v28}, Lki;-><init>(ILjava/lang/String;Ljava/lang/String;Lqt3;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Boolean;ZI)V

    .line 599
    .line 600
    .line 601
    move-object/from16 v1, v16

    .line 602
    .line 603
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    :goto_12
    invoke-virtual {v6}, Lji;->isInstalled()Z

    .line 607
    .line 608
    .line 609
    move-result v1

    .line 610
    if-eqz v1, :cond_1d

    .line 611
    .line 612
    invoke-virtual {v6}, Lji;->getEnabled()Z

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    if-eqz v1, :cond_1d

    .line 617
    .line 618
    sget-object v1, Lmp6;->a:Lmp6;

    .line 619
    .line 620
    invoke-static {}, Lmp6;->f()Z

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    const v3, 0x7f1300c2

    .line 625
    .line 626
    .line 627
    const v4, 0x7f1303de

    .line 628
    .line 629
    .line 630
    const v5, 0x7f1303f0

    .line 631
    .line 632
    .line 633
    if-eqz v1, :cond_1b

    .line 634
    .line 635
    sget-boolean v1, Lhp0;->a:Z

    .line 636
    .line 637
    invoke-virtual {v6}, Lji;->getPackageName()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    invoke-static {v1}, Lhp0;->b(Ljava/lang/String;)Z

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    xor-int/lit8 v6, v1, 0x1

    .line 649
    .line 650
    if-nez v1, :cond_19

    .line 651
    .line 652
    move v4, v5

    .line 653
    :cond_19
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 654
    .line 655
    invoke-static {v3}, Ldj7;->g(I)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v17

    .line 659
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v18

    .line 667
    sget-boolean v24, Lhp0;->a:Z

    .line 668
    .line 669
    if-nez v24, :cond_1a

    .line 670
    .line 671
    move-object/from16 v22, v8

    .line 672
    .line 673
    goto :goto_13

    .line 674
    :cond_1a
    move-object/from16 v22, v2

    .line 675
    .line 676
    :goto_13
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 677
    .line 678
    .line 679
    move-result-object v25

    .line 680
    new-instance v15, Lki;

    .line 681
    .line 682
    const/16 v16, 0x16

    .line 683
    .line 684
    const/16 v19, 0x0

    .line 685
    .line 686
    const v20, 0x7f0800cb

    .line 687
    .line 688
    .line 689
    const/16 v21, 0x0

    .line 690
    .line 691
    const/16 v23, 0x0

    .line 692
    .line 693
    const/16 v26, 0x0

    .line 694
    .line 695
    const/16 v27, 0x26a8

    .line 696
    .line 697
    invoke-direct/range {v15 .. v27}, Lki;-><init>(ILjava/lang/String;Ljava/lang/String;Lqt3;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Boolean;ZI)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    goto :goto_14

    .line 704
    :cond_1b
    sget-boolean v1, Lhp0;->a:Z

    .line 705
    .line 706
    invoke-virtual {v6}, Lji;->getPackageName()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v1

    .line 710
    invoke-static {v1}, Lhp0;->b(Ljava/lang/String;)Z

    .line 711
    .line 712
    .line 713
    move-result v1

    .line 714
    if-nez v1, :cond_1c

    .line 715
    .line 716
    move v4, v5

    .line 717
    :cond_1c
    new-instance v1, Lki;

    .line 718
    .line 719
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 720
    .line 721
    invoke-static {v3}, Ldj7;->g(I)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v3

    .line 725
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v4

    .line 733
    const/4 v12, 0x0

    .line 734
    const/16 v13, 0x36a8

    .line 735
    .line 736
    const/16 v2, 0x16

    .line 737
    .line 738
    const/4 v5, 0x0

    .line 739
    const v6, 0x7f0800cb

    .line 740
    .line 741
    .line 742
    const/4 v7, 0x0

    .line 743
    const/4 v9, 0x0

    .line 744
    const/4 v10, 0x0

    .line 745
    const/4 v11, 0x0

    .line 746
    invoke-direct/range {v1 .. v13}, Lki;-><init>(ILjava/lang/String;Ljava/lang/String;Lqt3;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Boolean;ZI)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    :cond_1d
    :goto_14
    if-eqz p2, :cond_1f

    .line 753
    .line 754
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 755
    .line 756
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    const-class v2, Landroid/content/pm/ShortcutManager;

    .line 761
    .line 762
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    check-cast v1, Landroid/content/pm/ShortcutManager;

    .line 767
    .line 768
    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    .line 769
    .line 770
    .line 771
    move-result v1

    .line 772
    const/16 v26, 0x1

    .line 773
    .line 774
    if-eqz v1, :cond_1e

    .line 775
    .line 776
    new-instance v15, Lki;

    .line 777
    .line 778
    const v1, 0x7f13002d

    .line 779
    .line 780
    .line 781
    invoke-static {v1}, Ldj7;->g(I)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v17

    .line 785
    const/16 v25, 0x0

    .line 786
    .line 787
    const/16 v27, 0x1fb8

    .line 788
    .line 789
    const/16 v16, 0x1f

    .line 790
    .line 791
    const/16 v18, 0x0

    .line 792
    .line 793
    const/16 v19, 0x0

    .line 794
    .line 795
    const v20, 0x7f0800b6

    .line 796
    .line 797
    .line 798
    const/16 v21, 0x0

    .line 799
    .line 800
    const/16 v22, 0x0

    .line 801
    .line 802
    const/16 v23, 0x0

    .line 803
    .line 804
    const/16 v24, 0x0

    .line 805
    .line 806
    invoke-direct/range {v15 .. v27}, Lki;-><init>(ILjava/lang/String;Ljava/lang/String;Lqt3;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Boolean;ZI)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move v12, v14

    .line 813
    goto :goto_15

    .line 814
    :cond_1e
    move/from16 v12, v26

    .line 815
    .line 816
    :goto_15
    new-instance v1, Lki;

    .line 817
    .line 818
    const v2, 0x7f1304f2

    .line 819
    .line 820
    .line 821
    invoke-static {v2}, Ldj7;->g(I)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    const/4 v11, 0x0

    .line 826
    const/16 v13, 0x1fb8

    .line 827
    .line 828
    const/16 v2, 0x20

    .line 829
    .line 830
    const/4 v4, 0x0

    .line 831
    const/4 v5, 0x0

    .line 832
    const v6, 0x7f0801b9

    .line 833
    .line 834
    .line 835
    const/4 v7, 0x0

    .line 836
    const/4 v8, 0x0

    .line 837
    const/4 v9, 0x0

    .line 838
    const/4 v10, 0x0

    .line 839
    invoke-direct/range {v1 .. v13}, Lki;-><init>(ILjava/lang/String;Ljava/lang/String;Lqt3;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Boolean;ZI)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    .line 844
    .line 845
    :cond_1f
    return-object v0
.end method

.method public static b(Lji;Z)Ljava/util/ArrayList;
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_1a

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lji;->isInstalled()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lji;->getEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Lji;->isLaunchable()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    new-instance v3, Loi;

    .line 45
    .line 46
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 47
    .line 48
    const v2, 0x7f1302ed

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Ldj7;->g(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const/4 v8, 0x0

    .line 56
    const/16 v9, 0x14

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    const/4 v6, 0x0

    .line 60
    const v7, 0x7f080169

    .line 61
    .line 62
    .line 63
    invoke-direct/range {v3 .. v9}, Loi;-><init>(ILjava/lang/String;Ljava/lang/Integer;IZI)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_0
    sget-object v2, Lmp6;->a:Lmp6;

    .line 70
    .line 71
    invoke-static {}, Lmp6;->f()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    invoke-virtual {p0}, Lji;->isInstalled()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 84
    .line 85
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p0}, Lji;->getEnabled()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_1

    .line 94
    .line 95
    const v3, 0x7f1301fd

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const v3, 0x7f130216

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lji;->getEnabled()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    const v2, 0x7f08012c

    .line 116
    .line 117
    .line 118
    :goto_1
    move v8, v2

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    const v2, 0x7f080137

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :goto_2
    const v2, 0x7f0600c4

    .line 125
    .line 126
    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {p0}, Lji;->getEnabled()Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-nez v3, :cond_3

    .line 136
    .line 137
    move-object v7, v2

    .line 138
    goto :goto_3

    .line 139
    :cond_3
    move-object v7, v1

    .line 140
    :goto_3
    new-instance v4, Loi;

    .line 141
    .line 142
    const/4 v9, 0x0

    .line 143
    const/16 v10, 0x10

    .line 144
    .line 145
    const/4 v5, 0x2

    .line 146
    invoke-direct/range {v4 .. v10}, Loi;-><init>(ILjava/lang/String;Ljava/lang/Integer;IZI)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :cond_4
    if-eqz p1, :cond_5

    .line 153
    .line 154
    invoke-virtual {p0}, Lji;->isInstalled()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_5

    .line 159
    .line 160
    invoke-virtual {p0}, Lji;->isBundled()Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-nez p1, :cond_5

    .line 165
    .line 166
    new-instance v2, Loi;

    .line 167
    .line 168
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 169
    .line 170
    const p1, 0x7f13057d

    .line 171
    .line 172
    .line 173
    invoke-static {p1}, Ldj7;->g(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const/4 v7, 0x0

    .line 178
    const/16 v8, 0x14

    .line 179
    .line 180
    const/4 v3, 0x3

    .line 181
    const/4 v5, 0x0

    .line 182
    const v6, 0x7f080126

    .line 183
    .line 184
    .line 185
    invoke-direct/range {v2 .. v8}, Loi;-><init>(ILjava/lang/String;Ljava/lang/Integer;IZI)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    :cond_5
    invoke-static {}, Lmp6;->f()Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_18

    .line 196
    .line 197
    invoke-virtual {p0}, Lji;->isInstalled()Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_18

    .line 202
    .line 203
    invoke-virtual {p0}, Lji;->getEnabled()Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_18

    .line 208
    .line 209
    sget-object p1, Lg00;->a:Lg00;

    .line 210
    .line 211
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-static {p1}, Lg00;->n(Ljava/lang/String;)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    const/4 v2, 0x0

    .line 220
    const/4 v3, 0x1

    .line 221
    if-eqz p1, :cond_14

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    sget-object v4, Lg00;->e:Lgv7;

    .line 228
    .line 229
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    check-cast v4, Ljava/lang/reflect/Method;

    .line 234
    .line 235
    if-nez v4, :cond_6

    .line 236
    .line 237
    :catch_0
    :goto_4
    move-object v4, v1

    .line 238
    goto :goto_6

    .line 239
    :cond_6
    sget-object v5, Lg00;->d:Lgv7;

    .line 240
    .line 241
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    check-cast v5, Le00;

    .line 246
    .line 247
    if-nez v5, :cond_7

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_7
    sget-object v6, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 251
    .line 252
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    const-class v7, Landroid/app/ActivityManager;

    .line 257
    .line 258
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    check-cast v6, Landroid/app/ActivityManager;

    .line 263
    .line 264
    if-nez v6, :cond_8

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_8
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    check-cast v4, Ljava/lang/Integer;

    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    iget v6, v5, Le00;->a:I

    .line 289
    .line 290
    if-eq v4, v6, :cond_b

    .line 291
    .line 292
    iget v6, v5, Le00;->b:I

    .line 293
    .line 294
    if-ne v4, v6, :cond_9

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_9
    iget v5, v5, Le00;->c:I

    .line 298
    .line 299
    if-ne v4, v5, :cond_a

    .line 300
    .line 301
    sget-object v4, Ld00;->NONEXISTENT:Ld00;

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_a
    sget-object v4, Ld00;->OTHER:Ld00;

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_b
    :goto_5
    sget-object v4, Ld00;->PERSISTENT:Ld00;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .line 309
    :goto_6
    if-nez v4, :cond_13

    .line 310
    .line 311
    sget-object v4, Lg42;->G:Lgv7;

    .line 312
    .line 313
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    check-cast v4, Ljava/lang/String;

    .line 318
    .line 319
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    sget-object v4, Lmp6;->a:Lmp6;

    .line 336
    .line 337
    sget-boolean v5, Lmp6;->g:Z

    .line 338
    .line 339
    if-eqz v5, :cond_c

    .line 340
    .line 341
    sget-object v5, Lip6;->SU:Lip6;

    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_c
    invoke-static {}, Lmp6;->g()Z

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    if-eqz v5, :cond_d

    .line 349
    .line 350
    sget-object v5, Lip6;->SHIZUKU:Lip6;

    .line 351
    .line 352
    goto :goto_7

    .line 353
    :cond_d
    sget-object v5, Lip6;->ANY:Lip6;

    .line 354
    .line 355
    :goto_7
    filled-new-array {p1}, [Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-virtual {v4, p1, v5}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-static {p1}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    check-cast p1, Ljava/lang/String;

    .line 368
    .line 369
    if-eqz p1, :cond_12

    .line 370
    .line 371
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    if-nez v4, :cond_e

    .line 376
    .line 377
    goto :goto_9

    .line 378
    :cond_e
    invoke-static {}, Ld00;->getEntries()Ljx2;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    check-cast v4, Lz3;

    .line 383
    .line 384
    invoke-virtual {v4}, Lz3;->iterator()Ljava/util/Iterator;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    :cond_f
    move-object v5, v4

    .line 389
    check-cast v5, Lw3;

    .line 390
    .line 391
    invoke-virtual {v5}, Lw3;->hasNext()Z

    .line 392
    .line 393
    .line 394
    move-result v6

    .line 395
    if-eqz v6, :cond_10

    .line 396
    .line 397
    invoke-virtual {v5}, Lw3;->next()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    move-object v6, v5

    .line 402
    check-cast v6, Ld00;

    .line 403
    .line 404
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    invoke-static {p1, v6, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    if-eqz v6, :cond_f

    .line 413
    .line 414
    move-object v1, v5

    .line 415
    :cond_10
    check-cast v1, Ld00;

    .line 416
    .line 417
    if-nez v1, :cond_11

    .line 418
    .line 419
    sget-object p1, Ld00;->OTHER:Ld00;

    .line 420
    .line 421
    :goto_8
    move-object v4, p1

    .line 422
    goto :goto_a

    .line 423
    :cond_11
    move-object v4, v1

    .line 424
    goto :goto_a

    .line 425
    :cond_12
    :goto_9
    sget-object p1, Ld00;->OTHER:Ld00;

    .line 426
    .line 427
    goto :goto_8

    .line 428
    :cond_13
    :goto_a
    if-nez v4, :cond_15

    .line 429
    .line 430
    :cond_14
    sget-object v4, Ld00;->OTHER:Ld00;

    .line 431
    .line 432
    :cond_15
    sget-object p1, Ld00;->PERSISTENT:Ld00;

    .line 433
    .line 434
    if-ne v4, p1, :cond_16

    .line 435
    .line 436
    goto :goto_b

    .line 437
    :cond_16
    sget-object p1, Ld00;->NONEXISTENT:Ld00;

    .line 438
    .line 439
    if-ne v4, p1, :cond_17

    .line 440
    .line 441
    move v2, v3

    .line 442
    :cond_17
    new-instance v4, Loi;

    .line 443
    .line 444
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 445
    .line 446
    const p1, 0x7f130285

    .line 447
    .line 448
    .line 449
    invoke-static {p1}, Ldj7;->g(I)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v6

    .line 453
    xor-int/lit8 v9, v2, 0x1

    .line 454
    .line 455
    const/4 v10, 0x4

    .line 456
    const/4 v5, 0x4

    .line 457
    const/4 v7, 0x0

    .line 458
    const v8, 0x7f08014e

    .line 459
    .line 460
    .line 461
    invoke-direct/range {v4 .. v10}, Loi;-><init>(ILjava/lang/String;Ljava/lang/Integer;IZI)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    :goto_b
    new-instance v5, Loi;

    .line 468
    .line 469
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 470
    .line 471
    const p1, 0x7f1300ff

    .line 472
    .line 473
    .line 474
    invoke-static {p1}, Ldj7;->g(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v7

    .line 478
    const/4 v10, 0x0

    .line 479
    const/16 v11, 0x14

    .line 480
    .line 481
    const/4 v6, 0x6

    .line 482
    const/4 v8, 0x0

    .line 483
    const v9, 0x7f08010d

    .line 484
    .line 485
    .line 486
    invoke-direct/range {v5 .. v11}, Loi;-><init>(ILjava/lang/String;Ljava/lang/Integer;IZI)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    :cond_18
    new-instance v6, Loi;

    .line 493
    .line 494
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 495
    .line 496
    const p1, 0x7f130410

    .line 497
    .line 498
    .line 499
    invoke-static {p1}, Ldj7;->g(I)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v8

    .line 503
    const/4 v11, 0x0

    .line 504
    const/16 v12, 0x14

    .line 505
    .line 506
    const/4 v7, 0x5

    .line 507
    const/4 v9, 0x0

    .line 508
    const v10, 0x7f080153

    .line 509
    .line 510
    .line 511
    invoke-direct/range {v6 .. v12}, Loi;-><init>(ILjava/lang/String;Ljava/lang/Integer;IZI)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    invoke-virtual {p0}, Lji;->isInstalled()Z

    .line 518
    .line 519
    .line 520
    move-result p0

    .line 521
    if-eqz p0, :cond_19

    .line 522
    .line 523
    new-instance v1, Loi;

    .line 524
    .line 525
    const p0, 0x7f13005a

    .line 526
    .line 527
    .line 528
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    const/4 v6, 0x0

    .line 533
    const/16 v7, 0x14

    .line 534
    .line 535
    const/4 v2, 0x7

    .line 536
    const/4 v4, 0x0

    .line 537
    const v5, 0x7f08015b

    .line 538
    .line 539
    .line 540
    invoke-direct/range {v1 .. v7}, Loi;-><init>(ILjava/lang/String;Ljava/lang/Integer;IZI)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    new-instance v2, Loi;

    .line 547
    .line 548
    const p0, 0x7f1304f5

    .line 549
    .line 550
    .line 551
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v4

    .line 555
    const/4 v7, 0x0

    .line 556
    const/16 v8, 0x14

    .line 557
    .line 558
    const/16 v3, 0x8

    .line 559
    .line 560
    const/4 v5, 0x0

    .line 561
    const v6, 0x7f0801e5

    .line 562
    .line 563
    .line 564
    invoke-direct/range {v2 .. v8}, Loi;-><init>(ILjava/lang/String;Ljava/lang/Integer;IZI)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    :cond_19
    return-object v0

    .line 571
    :cond_1a
    invoke-static {}, Ld6;->o()V

    .line 572
    .line 573
    .line 574
    return-object v1
.end method
