.class public final Loz4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loz4;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ldd1;)Ljava/util/List;
    .locals 27

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Lz85;->j(Ldd1;)Lh80;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    sget-object v3, Lov2;->a:Lov2;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_a

    .line 15
    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    move-object/from16 v0, p0

    .line 21
    .line 22
    iget-object v0, v0, Loz4;->a:Landroid/content/Context;

    .line 23
    .line 24
    const-string v6, "connectivity"

    .line 25
    .line 26
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    check-cast v7, Landroid/net/ConnectivityManager;

    .line 34
    .line 35
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    if-nez v7, :cond_1

    .line 40
    .line 41
    goto/16 :goto_a

    .line 42
    .line 43
    :cond_1
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    check-cast v8, Landroid/net/ConnectivityManager;

    .line 51
    .line 52
    invoke-virtual {v8, v7}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    if-nez v8, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v9, 0x1

    .line 60
    invoke-virtual {v8, v9}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-nez v10, :cond_4

    .line 65
    .line 66
    const/4 v10, 0x3

    .line 67
    invoke-virtual {v8, v10}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    :goto_0
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v2, "Skipping scan for "

    .line 79
    .line 80
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ": active network is not Wi-Fi/Ethernet"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    const/4 v14, 0x4

    .line 96
    const/4 v15, 0x0

    .line 97
    const-string v11, "LocalCloudServerDiscovery"

    .line 98
    .line 99
    const/4 v13, 0x0

    .line 100
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-object v3

    .line 104
    :cond_4
    :goto_1
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 112
    .line 113
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-nez v0, :cond_5

    .line 118
    .line 119
    move-object v0, v3

    .line 120
    goto :goto_7

    .line 121
    :cond_5
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    new-instance v6, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    if-eqz v10, :cond_9

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    check-cast v10, Landroid/net/LinkAddress;

    .line 148
    .line 149
    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    instance-of v12, v11, Ljava/net/Inet4Address;

    .line 154
    .line 155
    if-eqz v12, :cond_7

    .line 156
    .line 157
    check-cast v11, Ljava/net/Inet4Address;

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    goto :goto_6

    .line 162
    :cond_7
    const/4 v11, 0x0

    .line 163
    :goto_3
    if-nez v11, :cond_8

    .line 164
    .line 165
    const/4 v10, 0x0

    .line 166
    goto :goto_4

    .line 167
    :cond_8
    invoke-virtual {v10}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    invoke-static {v11, v10}, Lb05;->j(Ljava/net/Inet4Address;I)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    :goto_4
    if-eqz v10, :cond_6

    .line 176
    .line 177
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    if-eqz v10, :cond_a

    .line 195
    .line 196
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    check-cast v10, Ljava/lang/Iterable;

    .line 201
    .line 202
    invoke-static {v10, v0}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 203
    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_a
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 207
    .line 208
    invoke-direct {v6, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v6}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    goto :goto_7

    .line 216
    :goto_6
    new-instance v6, Lbn6;

    .line 217
    .line 218
    invoke-direct {v6, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    move-object v0, v6

    .line 222
    :goto_7
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 223
    .line 224
    .line 225
    move-result-object v13

    .line 226
    if-nez v13, :cond_b

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_b
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 230
    .line 231
    const/16 v15, 0x8

    .line 232
    .line 233
    const/16 v16, 0x0

    .line 234
    .line 235
    const-string v11, "LocalCloudServerDiscovery"

    .line 236
    .line 237
    const-string v12, "Unable to read active network hosts"

    .line 238
    .line 239
    const/4 v14, 0x0

    .line 240
    invoke-static/range {v10 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    move-object v0, v3

    .line 244
    :goto_8
    check-cast v0, Ljava/util/List;

    .line 245
    .line 246
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    if-nez v6, :cond_c

    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_c
    const/4 v0, 0x0

    .line 254
    :goto_9
    if-nez v0, :cond_d

    .line 255
    .line 256
    :goto_a
    return-object v3

    .line 257
    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    const/16 v12, 0xa

    .line 271
    .line 272
    if-eqz v11, :cond_f

    .line 273
    .line 274
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    move-object v14, v11

    .line 279
    check-cast v14, Ljava/lang/String;

    .line 280
    .line 281
    iget-object v11, v2, Lh80;->c:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v11, Ljava/util/List;

    .line 284
    .line 285
    new-instance v13, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-static {v11, v12}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 288
    .line 289
    .line 290
    move-result v12

    .line 291
    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 292
    .line 293
    .line 294
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v11

    .line 298
    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    if-eqz v12, :cond_e

    .line 303
    .line 304
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    check-cast v12, Lxi1;

    .line 309
    .line 310
    move-object v15, v13

    .line 311
    new-instance v13, Lkj1;

    .line 312
    .line 313
    move-object/from16 v16, v15

    .line 314
    .line 315
    iget v15, v12, Lxi1;->b:I

    .line 316
    .line 317
    const/16 p0, 0x0

    .line 318
    .line 319
    iget-object v8, v2, Lh80;->b:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v8, Ldd1;

    .line 322
    .line 323
    iget-object v9, v12, Lxi1;->a:Lfd1;

    .line 324
    .line 325
    iget-object v12, v12, Lxi1;->c:Ljava/lang/String;

    .line 326
    .line 327
    move-object/from16 v17, v16

    .line 328
    .line 329
    move-object/from16 v16, v8

    .line 330
    .line 331
    move-object/from16 v8, v17

    .line 332
    .line 333
    move-object/from16 v17, v9

    .line 334
    .line 335
    move-object/from16 v18, v12

    .line 336
    .line 337
    invoke-direct/range {v13 .. v18}, Lkj1;-><init>(Ljava/lang/String;ILdd1;Lfd1;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-object v13, v8

    .line 344
    const/4 v9, 0x1

    .line 345
    goto :goto_c

    .line 346
    :cond_e
    move-object v8, v13

    .line 347
    const/16 p0, 0x0

    .line 348
    .line 349
    invoke-static {v8, v6}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 350
    .line 351
    .line 352
    const/4 v9, 0x1

    .line 353
    goto :goto_b

    .line 354
    :cond_f
    const/16 p0, 0x0

    .line 355
    .line 356
    sget-object v20, Lvr6;->INSTANCE:Lvr6;

    .line 357
    .line 358
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    new-instance v8, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    const-string v9, "Starting scan for "

    .line 369
    .line 370
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v9, ": hosts="

    .line 377
    .line 378
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v0, ", targets="

    .line 385
    .line 386
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v22

    .line 396
    const/16 v24, 0x4

    .line 397
    .line 398
    const/16 v25, 0x0

    .line 399
    .line 400
    const-string v21, "LocalCloudServerDiscovery"

    .line 401
    .line 402
    const/16 v23, 0x0

    .line 403
    .line 404
    invoke-static/range {v20 .. v25}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    sget-object v0, Lij1;->a:Lgv7;

    .line 408
    .line 409
    invoke-virtual {v7}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-eqz v2, :cond_10

    .line 421
    .line 422
    move-object v2, v3

    .line 423
    const-wide/16 v16, 0x0

    .line 424
    .line 425
    goto/16 :goto_15

    .line 426
    .line 427
    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    .line 428
    .line 429
    invoke-static {v6, v12}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 430
    .line 431
    .line 432
    move-result v9

    .line 433
    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    const/4 v9, 0x0

    .line 441
    move v10, v9

    .line 442
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 443
    .line 444
    .line 445
    move-result v11

    .line 446
    if-eqz v11, :cond_12

    .line 447
    .line 448
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v11

    .line 452
    add-int/lit8 v13, v10, 0x1

    .line 453
    .line 454
    if-ltz v10, :cond_11

    .line 455
    .line 456
    check-cast v11, Lkj1;

    .line 457
    .line 458
    new-instance v14, Lcj1;

    .line 459
    .line 460
    invoke-direct {v14, v10, v11}, Lcj1;-><init>(ILkj1;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move v10, v13

    .line 467
    goto :goto_d

    .line 468
    :cond_11
    invoke-static {}, Lfl1;->F0()V

    .line 469
    .line 470
    .line 471
    throw p0

    .line 472
    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    .line 473
    .line 474
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .line 476
    .line 477
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 478
    .line 479
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 487
    .line 488
    .line 489
    move-result v11

    .line 490
    if-eqz v11, :cond_16

    .line 491
    .line 492
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v11

    .line 496
    check-cast v11, Lcj1;

    .line 497
    .line 498
    iget-object v13, v11, Lcj1;->b:Lkj1;

    .line 499
    .line 500
    iget-object v14, v13, Lkj1;->c:Ldd1;

    .line 501
    .line 502
    sget-object v15, Ldd1;->WebDav:Ldd1;

    .line 503
    .line 504
    if-eq v14, v15, :cond_13

    .line 505
    .line 506
    move-object/from16 v14, p0

    .line 507
    .line 508
    const-wide/16 v16, 0x0

    .line 509
    .line 510
    goto :goto_f

    .line 511
    :cond_13
    new-instance v14, Lej1;

    .line 512
    .line 513
    iget-object v15, v13, Lkj1;->a:Ljava/lang/String;

    .line 514
    .line 515
    const-wide/16 v16, 0x0

    .line 516
    .line 517
    iget v7, v13, Lkj1;->b:I

    .line 518
    .line 519
    iget-object v8, v13, Lkj1;->d:Lfd1;

    .line 520
    .line 521
    invoke-direct {v14, v7, v8, v15}, Lej1;-><init>(ILfd1;Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    :goto_f
    if-eqz v14, :cond_15

    .line 525
    .line 526
    invoke-virtual {v10, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v7

    .line 530
    if-nez v7, :cond_14

    .line 531
    .line 532
    new-instance v7, Ljava/util/ArrayList;

    .line 533
    .line 534
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .line 536
    .line 537
    invoke-interface {v10, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    :cond_14
    check-cast v7, Ljava/util/Collection;

    .line 541
    .line 542
    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    goto :goto_e

    .line 546
    :cond_15
    new-instance v7, Ldj1;

    .line 547
    .line 548
    invoke-static {v11}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    invoke-direct {v7, v8}, Ldj1;-><init>(Ljava/util/List;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    goto :goto_e

    .line 559
    :cond_16
    const-wide/16 v16, 0x0

    .line 560
    .line 561
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    new-instance v7, Ljava/util/ArrayList;

    .line 569
    .line 570
    invoke-static {v2, v12}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 571
    .line 572
    .line 573
    move-result v8

    .line 574
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 575
    .line 576
    .line 577
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 582
    .line 583
    .line 584
    move-result v8

    .line 585
    if-eqz v8, :cond_17

    .line 586
    .line 587
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v8

    .line 591
    check-cast v8, Ljava/util/List;

    .line 592
    .line 593
    new-instance v10, Ldj1;

    .line 594
    .line 595
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    new-instance v11, Lgj1;

    .line 599
    .line 600
    invoke-direct {v11, v9}, Lgj1;-><init>(I)V

    .line 601
    .line 602
    .line 603
    invoke-static {v8, v11}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 604
    .line 605
    .line 606
    move-result-object v8

    .line 607
    invoke-direct {v10, v8}, Ldj1;-><init>(Ljava/util/List;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    goto :goto_10

    .line 614
    :cond_17
    invoke-static {v7, v6}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 615
    .line 616
    .line 617
    new-instance v2, Lqs0;

    .line 618
    .line 619
    const/4 v7, 0x1

    .line 620
    invoke-direct {v2, v7}, Lqs0;-><init>(I)V

    .line 621
    .line 622
    .line 623
    invoke-static {v6, v2}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    const/16 v6, 0x40

    .line 628
    .line 629
    invoke-static {v6, v7, v6}, Ll73;->h(III)I

    .line 630
    .line 631
    .line 632
    move-result v6

    .line 633
    invoke-static {v6}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 634
    .line 635
    .line 636
    move-result-object v6

    .line 637
    new-instance v7, Ljava/util/concurrent/ExecutorCompletionService;

    .line 638
    .line 639
    invoke-direct {v7, v6}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 640
    .line 641
    .line 642
    :try_start_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 643
    .line 644
    .line 645
    move-result-object v8

    .line 646
    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 647
    .line 648
    .line 649
    move-result v10

    .line 650
    if-eqz v10, :cond_18

    .line 651
    .line 652
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v10

    .line 656
    check-cast v10, Ldj1;

    .line 657
    .line 658
    new-instance v11, Lyi1;

    .line 659
    .line 660
    invoke-direct {v11, v9, v10, v0}, Lyi1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v7, v11}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 664
    .line 665
    .line 666
    goto :goto_11

    .line 667
    :catchall_1
    move-exception v0

    .line 668
    goto/16 :goto_1a

    .line 669
    .line 670
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    .line 671
    .line 672
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .line 674
    .line 675
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 676
    .line 677
    .line 678
    move-result-wide v10

    .line 679
    const-wide v13, 0x2cb417800L

    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    add-long/2addr v10, v13

    .line 685
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 686
    .line 687
    .line 688
    move-result v2

    .line 689
    :goto_12
    if-ge v9, v2, :cond_1b

    .line 690
    .line 691
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 692
    .line 693
    .line 694
    move-result-wide v13

    .line 695
    sub-long v13, v10, v13

    .line 696
    .line 697
    cmp-long v8, v13, v16

    .line 698
    .line 699
    if-gtz v8, :cond_19

    .line 700
    .line 701
    goto :goto_13

    .line 702
    :cond_19
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 703
    .line 704
    invoke-virtual {v7, v13, v14, v8}, Ljava/util/concurrent/ExecutorCompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    .line 705
    .line 706
    .line 707
    move-result-object v8

    .line 708
    if-nez v8, :cond_1a

    .line 709
    .line 710
    goto :goto_13

    .line 711
    :cond_1a
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v8

    .line 715
    check-cast v8, Ljava/util/List;

    .line 716
    .line 717
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 718
    .line 719
    .line 720
    invoke-static {v8, v0}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 721
    .line 722
    .line 723
    :goto_13
    add-int/lit8 v9, v9, 0x1

    .line 724
    .line 725
    goto :goto_12

    .line 726
    :cond_1b
    new-instance v2, Ly09;

    .line 727
    .line 728
    const/4 v7, 0x2

    .line 729
    invoke-direct {v2, v7}, Ly09;-><init>(I)V

    .line 730
    .line 731
    .line 732
    invoke-static {v0, v2}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    new-instance v2, Ljava/util/ArrayList;

    .line 737
    .line 738
    invoke-static {v0, v12}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 739
    .line 740
    .line 741
    move-result v7

    .line 742
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 743
    .line 744
    .line 745
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 750
    .line 751
    .line 752
    move-result v7

    .line 753
    if-eqz v7, :cond_1c

    .line 754
    .line 755
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v7

    .line 759
    check-cast v7, Lbj1;

    .line 760
    .line 761
    iget-object v7, v7, Lbj1;->b:Ljj1;

    .line 762
    .line 763
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 764
    .line 765
    .line 766
    goto :goto_14

    .line 767
    :cond_1c
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 768
    .line 769
    .line 770
    :goto_15
    new-instance v0, Ljava/util/ArrayList;

    .line 771
    .line 772
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .line 774
    .line 775
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    :cond_1d
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 780
    .line 781
    .line 782
    move-result v6

    .line 783
    if-eqz v6, :cond_1e

    .line 784
    .line 785
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v6

    .line 789
    move-object v7, v6

    .line 790
    check-cast v7, Ljj1;

    .line 791
    .line 792
    iget-boolean v7, v7, Ljj1;->b:Z

    .line 793
    .line 794
    if-eqz v7, :cond_1d

    .line 795
    .line 796
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    .line 798
    .line 799
    goto :goto_16

    .line 800
    :cond_1e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 801
    .line 802
    .line 803
    move-result-wide v6

    .line 804
    sub-long/2addr v6, v4

    .line 805
    const-wide/32 v4, 0xf4240

    .line 806
    .line 807
    .line 808
    div-long/2addr v6, v4

    .line 809
    cmp-long v2, v6, v16

    .line 810
    .line 811
    if-gez v2, :cond_1f

    .line 812
    .line 813
    move-wide/from16 v25, v16

    .line 814
    .line 815
    goto :goto_17

    .line 816
    :cond_1f
    move-wide/from16 v25, v6

    .line 817
    .line 818
    :goto_17
    new-instance v2, Ljava/util/ArrayList;

    .line 819
    .line 820
    invoke-static {v0, v12}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 821
    .line 822
    .line 823
    move-result v4

    .line 824
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 832
    .line 833
    .line 834
    move-result v4

    .line 835
    if-eqz v4, :cond_20

    .line 836
    .line 837
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v4

    .line 841
    check-cast v4, Ljj1;

    .line 842
    .line 843
    new-instance v18, Lvi1;

    .line 844
    .line 845
    iget-object v5, v4, Ljj1;->a:Lkj1;

    .line 846
    .line 847
    iget-object v6, v5, Lkj1;->c:Ldd1;

    .line 848
    .line 849
    iget-object v7, v5, Lkj1;->d:Lfd1;

    .line 850
    .line 851
    iget-object v8, v5, Lkj1;->a:Ljava/lang/String;

    .line 852
    .line 853
    iget v9, v5, Lkj1;->b:I

    .line 854
    .line 855
    iget-object v5, v5, Lkj1;->e:Ljava/lang/String;

    .line 856
    .line 857
    iget-object v4, v4, Ljj1;->d:Ljava/lang/String;

    .line 858
    .line 859
    move-object/from16 v24, v4

    .line 860
    .line 861
    move-object/from16 v23, v5

    .line 862
    .line 863
    move-object/from16 v19, v6

    .line 864
    .line 865
    move-object/from16 v20, v7

    .line 866
    .line 867
    move-object/from16 v21, v8

    .line 868
    .line 869
    move/from16 v22, v9

    .line 870
    .line 871
    invoke-direct/range {v18 .. v26}, Lvi1;-><init>(Ldd1;Lfd1;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 872
    .line 873
    .line 874
    move-object/from16 v4, v18

    .line 875
    .line 876
    move-wide/from16 v6, v25

    .line 877
    .line 878
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    goto :goto_18

    .line 882
    :cond_20
    move-wide/from16 v6, v25

    .line 883
    .line 884
    new-instance v0, Ljava/util/HashSet;

    .line 885
    .line 886
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 887
    .line 888
    .line 889
    new-instance v8, Ljava/util/ArrayList;

    .line 890
    .line 891
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 895
    .line 896
    .line 897
    move-result-object v2

    .line 898
    :cond_21
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 899
    .line 900
    .line 901
    move-result v4

    .line 902
    if-eqz v4, :cond_22

    .line 903
    .line 904
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v4

    .line 908
    move-object v5, v4

    .line 909
    check-cast v5, Lvi1;

    .line 910
    .line 911
    iget-object v9, v5, Lvi1;->a:Ldd1;

    .line 912
    .line 913
    iget-object v10, v5, Lvi1;->b:Lfd1;

    .line 914
    .line 915
    iget-object v11, v5, Lvi1;->c:Ljava/lang/String;

    .line 916
    .line 917
    iget v5, v5, Lvi1;->d:I

    .line 918
    .line 919
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 920
    .line 921
    .line 922
    move-result-object v5

    .line 923
    filled-new-array {v9, v10, v11, v5}, [Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v5

    .line 927
    invoke-static {v5}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 928
    .line 929
    .line 930
    move-result-object v5

    .line 931
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 932
    .line 933
    .line 934
    move-result v5

    .line 935
    if-eqz v5, :cond_21

    .line 936
    .line 937
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    goto :goto_19

    .line 941
    :cond_22
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 942
    .line 943
    .line 944
    move-result v0

    .line 945
    if-eqz v0, :cond_23

    .line 946
    .line 947
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 948
    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    .line 950
    .line 951
    const-string v2, "No "

    .line 952
    .line 953
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    .line 959
    const-string v1, " server found after "

    .line 960
    .line 961
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    const-string v1, "ms"

    .line 968
    .line 969
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v11

    .line 976
    const/4 v13, 0x4

    .line 977
    const/4 v14, 0x0

    .line 978
    const-string v10, "LocalCloudServerDiscovery"

    .line 979
    .line 980
    const/4 v12, 0x0

    .line 981
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 982
    .line 983
    .line 984
    return-object v3

    .line 985
    :cond_23
    sget-object v15, Lvr6;->INSTANCE:Lvr6;

    .line 986
    .line 987
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 988
    .line 989
    .line 990
    move-result v0

    .line 991
    new-instance v12, Lhi;

    .line 992
    .line 993
    const/4 v2, 0x5

    .line 994
    invoke-direct {v12, v2}, Lhi;-><init>(I)V

    .line 995
    .line 996
    .line 997
    const/16 v13, 0x1f

    .line 998
    .line 999
    const/4 v9, 0x0

    .line 1000
    const/4 v10, 0x0

    .line 1001
    const/4 v11, 0x0

    .line 1002
    invoke-static/range {v8 .. v13}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v2

    .line 1006
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    const-string v4, "Found "

    .line 1009
    .line 1010
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    const-string v0, " "

    .line 1017
    .line 1018
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    .line 1024
    const-string v0, " server candidate(s) after "

    .line 1025
    .line 1026
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    const-string v0, "ms: "

    .line 1033
    .line 1034
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v17

    .line 1044
    const/16 v19, 0x4

    .line 1045
    .line 1046
    const/16 v20, 0x0

    .line 1047
    .line 1048
    const-string v16, "LocalCloudServerDiscovery"

    .line 1049
    .line 1050
    const/16 v18, 0x0

    .line 1051
    .line 1052
    invoke-static/range {v15 .. v20}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1053
    .line 1054
    .line 1055
    return-object v8

    .line 1056
    :goto_1a
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1057
    .line 1058
    .line 1059
    throw v0
.end method
