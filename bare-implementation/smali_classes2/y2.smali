.class public final synthetic Ly2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ly2;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ly2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ly2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ly2;->a:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const v3, 0x7f13042d

    .line 7
    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x6

    .line 13
    const/4 v7, 0x2

    .line 14
    const/16 v8, 0xa

    .line 15
    .line 16
    const/4 v9, 0x1

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    sget-object v12, Lbe8;->a:Lbe8;

    .line 20
    .line 21
    iget-object v13, v0, Ly2;->c:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v0, v0, Ly2;->b:Ljava/lang/Object;

    .line 24
    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    check-cast v0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;

    .line 29
    .line 30
    check-cast v13, Ljava/util/List;

    .line 31
    .line 32
    sget v1, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->S:I

    .line 33
    .line 34
    new-instance v1, Lcv;

    .line 35
    .line 36
    const/16 v2, 0xf

    .line 37
    .line 38
    invoke-direct {v1, v2, v0, v13}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-boolean v2, v2, Ltp8;->h:Z

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-static {v0, v11, v1, v9}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1}, Lcv;->invoke()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :goto_0
    return-object v12

    .line 57
    :pswitch_0
    check-cast v0, Ljava/io/InputStream;

    .line 58
    .line 59
    check-cast v13, Lmt3;

    .line 60
    .line 61
    sget-object v1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 62
    .line 63
    new-instance v2, Ljava/io/InputStreamReader;

    .line 64
    .line 65
    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Ljava/io/BufferedReader;

    .line 69
    .line 70
    const/16 v0, 0x2000

    .line 71
    .line 72
    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 73
    .line 74
    .line 75
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :cond_1
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-interface {v13, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    move-object v2, v0

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    if-nez v0, :cond_1

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 95
    .line 96
    .line 97
    return-object v12

    .line 98
    :goto_2
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    invoke-static {v1, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 105
    .line 106
    check-cast v13, Lw01;

    .line 107
    .line 108
    sget-object v1, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    invoke-virtual {v13}, Lw01;->invoke()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    :goto_3
    return-object v12

    .line 121
    :pswitch_2
    check-cast v0, Lnp3;

    .line 122
    .line 123
    check-cast v13, Ljava/util/List;

    .line 124
    .line 125
    iput-object v13, v0, Lnp3;->f:Ljava/util/List;

    .line 126
    .line 127
    invoke-static {v13}, Lzm5;->C(Ljava/util/List;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {}, Lzm5;->q()Lpw5;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget-object v3, v0, Lnp3;->k:Lpw5;

    .line 136
    .line 137
    invoke-static {v3, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-nez v3, :cond_5

    .line 142
    .line 143
    iput-object v2, v0, Lnp3;->k:Lpw5;

    .line 144
    .line 145
    new-instance v2, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-static {v1, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_4

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Lzk3;

    .line 169
    .line 170
    sget-object v4, Lxe6;->b:Lxe6;

    .line 171
    .line 172
    iget-object v4, v4, Lxe6;->a:Ljava/util/function/Supplier;

    .line 173
    .line 174
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    check-cast v4, Ljava/util/Random;

    .line 179
    .line 180
    invoke-static {v6, v10, v10, v11, v4}, Lnh4;->k(IZZ[CLjava/util/Random;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-static {v3, v4, v5}, Lzk3;->a(Lzk3;Ljava/lang/String;I)Lzk3;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_4
    move-object v14, v2

    .line 193
    goto :goto_5

    .line 194
    :cond_5
    move-object v14, v1

    .line 195
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 196
    .line 197
    .line 198
    move-result-wide v1

    .line 199
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_7

    .line 208
    .line 209
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    move-object v5, v4

    .line 214
    check-cast v5, Lzk3;

    .line 215
    .line 216
    iget-object v5, v5, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 217
    .line 218
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSetupCreationTime()J

    .line 219
    .line 220
    .line 221
    move-result-wide v5

    .line 222
    sub-long v5, v1, v5

    .line 223
    .line 224
    const-wide/16 v7, 0xbb8

    .line 225
    .line 226
    cmp-long v5, v5, v7

    .line 227
    .line 228
    if-gez v5, :cond_6

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_7
    move-object v4, v11

    .line 232
    :goto_6
    check-cast v4, Lzk3;

    .line 233
    .line 234
    iget-object v0, v0, Lnp3;->h:Lex6;

    .line 235
    .line 236
    new-instance v13, Lfm7;

    .line 237
    .line 238
    if-eqz v4, :cond_8

    .line 239
    .line 240
    iget-object v1, v4, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 241
    .line 242
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v11

    .line 246
    :cond_8
    move-object/from16 v17, v11

    .line 247
    .line 248
    const/16 v18, 0xe

    .line 249
    .line 250
    const/4 v15, 0x0

    .line 251
    const/16 v16, 0x0

    .line 252
    .line 253
    invoke-direct/range {v13 .. v18}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v13}, Lex6;->k(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    return-object v12

    .line 260
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 261
    .line 262
    check-cast v13, Ldm3;

    .line 263
    .line 264
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->isValid()Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_9

    .line 269
    .line 270
    move-object v11, v0

    .line 271
    :cond_9
    if-nez v11, :cond_a

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_a
    new-instance v0, Lik3;

    .line 275
    .line 276
    invoke-direct {v0, v13, v11, v10}, Lik3;-><init>(Lkk3;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Z)V

    .line 277
    .line 278
    .line 279
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 280
    .line 281
    .line 282
    new-instance v0, Lo20;

    .line 283
    .line 284
    invoke-direct {v0, v4, v13, v11}, Lo20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 288
    .line 289
    .line 290
    :goto_7
    return-object v12

    .line 291
    :pswitch_4
    check-cast v0, Lmk2;

    .line 292
    .line 293
    check-cast v13, Liu;

    .line 294
    .line 295
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 296
    .line 297
    iget-object v15, v0, La55;->b:Ljava/lang/String;

    .line 298
    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    const-string v4, "Clear requested for part="

    .line 302
    .line 303
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v16

    .line 313
    const/16 v18, 0x4

    .line 314
    .line 315
    const/16 v19, 0x0

    .line 316
    .line 317
    const/16 v17, 0x0

    .line 318
    .line 319
    invoke-static/range {v14 .. v19}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    move-object/from16 v20, v11

    .line 323
    .line 324
    move-object v1, v12

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 326
    .line 327
    .line 328
    move-result-wide v11

    .line 329
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 330
    .line 331
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v3}, Lqo0;->i(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    iget-object v3, v0, Lmk2;->e:Lji;

    .line 346
    .line 347
    const-string v4, "app"

    .line 348
    .line 349
    if-eqz v3, :cond_14

    .line 350
    .line 351
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    invoke-static {v6, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    if-nez v6, :cond_13

    .line 367
    .line 368
    sget-object v6, Lju;->a:[I

    .line 369
    .line 370
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    aget v6, v6, v8

    .line 375
    .line 376
    if-eq v6, v9, :cond_12

    .line 377
    .line 378
    if-eq v6, v7, :cond_e

    .line 379
    .line 380
    if-eq v6, v5, :cond_d

    .line 381
    .line 382
    if-eq v6, v2, :cond_c

    .line 383
    .line 384
    const/4 v2, 0x5

    .line 385
    if-ne v6, v2, :cond_b

    .line 386
    .line 387
    invoke-virtual {v3}, Lji;->getExpansionDir()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    invoke-static {v2}, Lfl1;->B0(Ljava/lang/Object;)Ljava/util/List;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    goto :goto_9

    .line 396
    :cond_b
    invoke-static {}, Lq;->j()V

    .line 397
    .line 398
    .line 399
    :goto_8
    move-object/from16 v11, v20

    .line 400
    .line 401
    goto/16 :goto_c

    .line 402
    .line 403
    :cond_c
    invoke-virtual {v3}, Lji;->getMediaDir()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-static {v2}, Lfl1;->B0(Ljava/lang/Object;)Ljava/util/List;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    goto :goto_9

    .line 412
    :cond_d
    invoke-virtual {v3}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-static {v2}, Lfl1;->B0(Ljava/lang/Object;)Ljava/util/List;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    goto :goto_9

    .line 421
    :cond_e
    invoke-virtual {v3}, Lji;->getDataDir()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-virtual {v3}, Lji;->getDeDataDir()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    filled-new-array {v2, v5}, [Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    invoke-static {v2}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    :goto_9
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    if-eqz v5, :cond_f

    .line 442
    .line 443
    const/16 v18, 0x4

    .line 444
    .line 445
    const/16 v19, 0x0

    .line 446
    .line 447
    const-string v15, "AppPartDeleteHelper"

    .line 448
    .line 449
    const-string v16, "Nothing to clear"

    .line 450
    .line 451
    const/16 v17, 0x0

    .line 452
    .line 453
    invoke-static/range {v14 .. v19}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    goto :goto_b

    .line 457
    :cond_f
    sget-object v5, Lg00;->a:Lg00;

    .line 458
    .line 459
    invoke-virtual {v3}, Lji;->getPackageName()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    invoke-static {v3}, Lg00;->g(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    if-eqz v3, :cond_10

    .line 475
    .line 476
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    check-cast v3, Ljava/lang/String;

    .line 481
    .line 482
    sget-boolean v5, Lq63;->d:Z

    .line 483
    .line 484
    invoke-static {v3}, Lcy0;->g(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    sget-object v13, Lvr6;->INSTANCE:Lvr6;

    .line 488
    .line 489
    const-string v5, "Cleared "

    .line 490
    .line 491
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v15

    .line 495
    const/16 v17, 0x4

    .line 496
    .line 497
    const/16 v18, 0x0

    .line 498
    .line 499
    const-string v14, "AppPartDeleteHelper"

    .line 500
    .line 501
    const/16 v16, 0x0

    .line 502
    .line 503
    invoke-static/range {v13 .. v18}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    goto :goto_a

    .line 507
    :cond_10
    :goto_b
    const-wide/16 v2, 0x1f4

    .line 508
    .line 509
    invoke-static {v11, v12, v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->m(JJ)J

    .line 510
    .line 511
    .line 512
    move-result-wide v2

    .line 513
    invoke-static {v2, v3}, Lai8;->o(J)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0}, Lqo0;->f()V

    .line 517
    .line 518
    .line 519
    sget-object v2, Lg00;->a:Lg00;

    .line 520
    .line 521
    iget-object v0, v0, Lmk2;->e:Lji;

    .line 522
    .line 523
    if-eqz v0, :cond_11

    .line 524
    .line 525
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-static {v0}, Lg00;->F(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    move-object v11, v1

    .line 533
    goto :goto_c

    .line 534
    :cond_11
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    throw v20

    .line 538
    :cond_12
    const-string v0, "APKs are not supposed to be deleted! Use uninstall."

    .line 539
    .line 540
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_8

    .line 544
    .line 545
    :cond_13
    invoke-static {}, Ld6;->o()V

    .line 546
    .line 547
    .line 548
    goto/16 :goto_8

    .line 549
    .line 550
    :goto_c
    return-object v11

    .line 551
    :cond_14
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    throw v20

    .line 555
    :pswitch_5
    move-object/from16 v20, v11

    .line 556
    .line 557
    move-object v1, v12

    .line 558
    check-cast v0, Lpj2;

    .line 559
    .line 560
    check-cast v13, Lyj2;

    .line 561
    .line 562
    move-object/from16 v2, v20

    .line 563
    .line 564
    invoke-virtual {v0, v13, v2}, Lpj2;->a(Lyj2;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    return-object v1

    .line 568
    :pswitch_6
    move-object v2, v11

    .line 569
    move-object v1, v12

    .line 570
    check-cast v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 571
    .line 572
    check-cast v13, Ljava/lang/String;

    .line 573
    .line 574
    sget v3, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 575
    .line 576
    invoke-static {v0, v2, v13, v8}, Lb05;->l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;

    .line 577
    .line 578
    .line 579
    return-object v1

    .line 580
    :pswitch_7
    move-object v1, v12

    .line 581
    check-cast v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 582
    .line 583
    check-cast v13, Lwh;

    .line 584
    .line 585
    sget v2, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 586
    .line 587
    new-instance v2, Lnh;

    .line 588
    .line 589
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    .line 591
    .line 592
    invoke-direct {v2, v0}, Lnh;-><init>(Lzm;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v2, v13}, Lnh;->n(Lk55;)V

    .line 596
    .line 597
    .line 598
    return-object v1

    .line 599
    :pswitch_8
    move-object v1, v12

    .line 600
    move-object v2, v0

    .line 601
    check-cast v2, Lm62;

    .line 602
    .line 603
    check-cast v13, Landroid/net/Uri;

    .line 604
    .line 605
    const-string v6, "readKeyFileFromUri"

    .line 606
    .line 607
    invoke-virtual {v2, v3}, Lqo0;->h(I)V

    .line 608
    .line 609
    .line 610
    :try_start_2
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 611
    .line 612
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-virtual {v0, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 621
    .line 622
    .line 623
    move-result-object v3

    .line 624
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 625
    .line 626
    .line 627
    :try_start_3
    invoke-static {v3}, Lcy0;->E(Ljava/io/InputStream;)[B

    .line 628
    .line 629
    .line 630
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 631
    :try_start_4
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 632
    .line 633
    .line 634
    :try_start_5
    new-instance v3, Lcom/jcraft/jsch/JSch;

    .line 635
    .line 636
    invoke-direct {v3}, Lcom/jcraft/jsch/JSch;-><init>()V

    .line 637
    .line 638
    .line 639
    sget v4, Lcom/jcraft/jsch/KeyPair;->DEFERRED:I

    .line 640
    .line 641
    iget-object v3, v3, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 642
    .line 643
    const/4 v4, 0x0

    .line 644
    invoke-static {v3, v0, v4}, Lcom/jcraft/jsch/KeyPair;->p(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)Lcom/jcraft/jsch/KeyPair;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 645
    .line 646
    .line 647
    :try_start_6
    new-instance v3, Ljava/lang/String;

    .line 648
    .line 649
    sget-object v4, Lf51;->a:Ljava/nio/charset/Charset;

    .line 650
    .line 651
    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 655
    .line 656
    .line 657
    move-result v0

    .line 658
    if-lez v0, :cond_15

    .line 659
    .line 660
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    if-nez v0, :cond_15

    .line 665
    .line 666
    move-object v11, v3

    .line 667
    goto :goto_11

    .line 668
    :catch_0
    move-exception v0

    .line 669
    move-object v7, v0

    .line 670
    goto :goto_f

    .line 671
    :goto_d
    move-object v7, v0

    .line 672
    goto :goto_e

    .line 673
    :catch_1
    move-exception v0

    .line 674
    goto :goto_d

    .line 675
    :goto_e
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 676
    .line 677
    iget-object v5, v2, La55;->b:Ljava/lang/String;

    .line 678
    .line 679
    const/16 v9, 0x8

    .line 680
    .line 681
    const/4 v10, 0x0

    .line 682
    const/4 v8, 0x0

    .line 683
    invoke-static/range {v4 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 687
    .line 688
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    const v3, 0x7f1302d9

    .line 693
    .line 694
    .line 695
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v3

    .line 699
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 700
    .line 701
    .line 702
    sget-object v4, Lzn4;->a:Lzn4;

    .line 703
    .line 704
    new-instance v4, Lcv;

    .line 705
    .line 706
    const/16 v5, 0xe

    .line 707
    .line 708
    invoke-direct {v4, v5, v0, v3}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 709
    .line 710
    .line 711
    invoke-static {v4}, Lzn4;->e(Lbt3;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 712
    .line 713
    .line 714
    goto :goto_10

    .line 715
    :catchall_2
    move-exception v0

    .line 716
    move-object v4, v0

    .line 717
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 718
    :catchall_3
    move-exception v0

    .line 719
    :try_start_8
    invoke-static {v3, v4}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 720
    .line 721
    .line 722
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 723
    :goto_f
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 724
    .line 725
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    sget-object v3, Lzn4;->a:Lzn4;

    .line 730
    .line 731
    const-string v3, "Error while reading the private key file"

    .line 732
    .line 733
    invoke-static {v0, v3}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 737
    .line 738
    iget-object v5, v2, La55;->b:Ljava/lang/String;

    .line 739
    .line 740
    const/16 v9, 0x8

    .line 741
    .line 742
    const/4 v10, 0x0

    .line 743
    const/4 v8, 0x0

    .line 744
    invoke-static/range {v4 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 745
    .line 746
    .line 747
    :cond_15
    :goto_10
    const/4 v11, 0x0

    .line 748
    :goto_11
    invoke-virtual {v2}, Lqo0;->f()V

    .line 749
    .line 750
    .line 751
    iget-object v0, v2, Lm62;->r:Lix6;

    .line 752
    .line 753
    invoke-virtual {v0, v11}, Lix6;->k(Ljava/lang/Object;)V

    .line 754
    .line 755
    .line 756
    return-object v1

    .line 757
    :pswitch_9
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 758
    .line 759
    check-cast v13, Lt22;

    .line 760
    .line 761
    invoke-static {v0, v13}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$deaEx7cFJz8WB4dww9fPUSax2YE(Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    return-object v0

    .line 766
    :pswitch_a
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    .line 767
    .line 768
    check-cast v13, Llh6;

    .line 769
    .line 770
    invoke-static {v0, v13}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->$r8$lambda$nl5Mzv__Z8ZHY3fHuVyEJDFXtdA(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Llh6;)Lbe8;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    return-object v0

    .line 775
    :pswitch_b
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 776
    .line 777
    check-cast v13, Lwv3;

    .line 778
    .line 779
    invoke-static {v0, v13}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$44MsiZlR-CUjGNnZfLkOd0Hys3k(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;Lwv3;)Lbe8;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    return-object v0

    .line 784
    :pswitch_c
    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 785
    .line 786
    check-cast v13, Ljava/security/cert/X509Certificate;

    .line 787
    .line 788
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 789
    .line 790
    .line 791
    move-result-object v1

    .line 792
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    .line 794
    .line 795
    invoke-static {v1}, Lmq8;->a(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v1

    .line 799
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    return-object v0

    .line 804
    :pswitch_d
    move-object v1, v12

    .line 805
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 806
    .line 807
    check-cast v13, Landroid/os/Bundle;

    .line 808
    .line 809
    sget v3, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->Q:I

    .line 810
    .line 811
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 812
    .line 813
    .line 814
    move-result-object v3

    .line 815
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->N()Z

    .line 816
    .line 817
    .line 818
    move-result v5

    .line 819
    iput-boolean v5, v3, Llc1;->k:Z

    .line 820
    .line 821
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    if-eqz v13, :cond_16

    .line 826
    .line 827
    const-string v5, "checked_cloud_constant"

    .line 828
    .line 829
    invoke-virtual {v13, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v5

    .line 833
    goto :goto_12

    .line 834
    :cond_16
    const/4 v5, 0x0

    .line 835
    :goto_12
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 836
    .line 837
    .line 838
    move-result-object v11

    .line 839
    iget-object v11, v11, Llc1;->i:Ldd1;

    .line 840
    .line 841
    invoke-static {v11, v5}, Lcy0;->F(Ldd1;Ljava/lang/String;)Ldd1;

    .line 842
    .line 843
    .line 844
    move-result-object v5

    .line 845
    iput-object v5, v3, Llc1;->i:Ldd1;

    .line 846
    .line 847
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 848
    .line 849
    .line 850
    move-result-object v3

    .line 851
    if-eqz v13, :cond_17

    .line 852
    .line 853
    const-string v5, "connect_activity_launched"

    .line 854
    .line 855
    invoke-virtual {v13, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 856
    .line 857
    .line 858
    move-result v5

    .line 859
    goto :goto_13

    .line 860
    :cond_17
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 861
    .line 862
    .line 863
    move-result-object v5

    .line 864
    iget-boolean v5, v5, Llc1;->j:Z

    .line 865
    .line 866
    :goto_13
    iput-boolean v5, v3, Llc1;->j:Z

    .line 867
    .line 868
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    iget-object v5, v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->M:Lgv7;

    .line 873
    .line 874
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v5

    .line 878
    check-cast v5, Ljava/lang/String;

    .line 879
    .line 880
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 881
    .line 882
    .line 883
    move-result-object v11

    .line 884
    iget-boolean v11, v11, Llc1;->j:Z

    .line 885
    .line 886
    iget-boolean v12, v3, Llc1;->e:Z

    .line 887
    .line 888
    if-eqz v12, :cond_18

    .line 889
    .line 890
    move-object/from16 p0, v1

    .line 891
    .line 892
    move v2, v10

    .line 893
    goto/16 :goto_20

    .line 894
    .line 895
    :cond_18
    iput-boolean v9, v3, Llc1;->e:Z

    .line 896
    .line 897
    invoke-static {}, Ldd1;->getEntries()Ljx2;

    .line 898
    .line 899
    .line 900
    move-result-object v12

    .line 901
    new-instance v13, Ljc1;

    .line 902
    .line 903
    invoke-direct {v13, v10}, Ljc1;-><init>(I)V

    .line 904
    .line 905
    .line 906
    invoke-static {v12, v13}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 907
    .line 908
    .line 909
    move-result-object v12

    .line 910
    new-instance v13, Ljava/util/ArrayList;

    .line 911
    .line 912
    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 913
    .line 914
    .line 915
    new-instance v12, Lhi;

    .line 916
    .line 917
    invoke-direct {v12, v9}, Lhi;-><init>(I)V

    .line 918
    .line 919
    .line 920
    invoke-static {v13, v12}, Lel1;->h1(Ljava/util/ArrayList;Lmt3;)V

    .line 921
    .line 922
    .line 923
    sget-object v12, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 924
    .line 925
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/common/V;->getT()Z

    .line 926
    .line 927
    .line 928
    move-result v12

    .line 929
    if-nez v12, :cond_19

    .line 930
    .line 931
    new-instance v12, Lhc1;

    .line 932
    .line 933
    invoke-direct {v12, v10}, Lhc1;-><init>(I)V

    .line 934
    .line 935
    .line 936
    invoke-static {v13, v12}, Lel1;->h1(Ljava/util/ArrayList;Lmt3;)V

    .line 937
    .line 938
    .line 939
    :cond_19
    new-instance v12, Ljava/util/HashSet;

    .line 940
    .line 941
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 942
    .line 943
    .line 944
    new-instance v14, Ljava/util/ArrayList;

    .line 945
    .line 946
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .line 948
    .line 949
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 950
    .line 951
    .line 952
    move-result-object v13

    .line 953
    :goto_14
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 954
    .line 955
    .line 956
    move-result v15

    .line 957
    if-eqz v15, :cond_1b

    .line 958
    .line 959
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v15

    .line 963
    move-object/from16 v16, v15

    .line 964
    .line 965
    check-cast v16, Ldd1;

    .line 966
    .line 967
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    .line 968
    .line 969
    .line 970
    move-result v16

    .line 971
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 972
    .line 973
    .line 974
    move-result-object v6

    .line 975
    invoke-virtual {v12, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 976
    .line 977
    .line 978
    move-result v6

    .line 979
    if-eqz v6, :cond_1a

    .line 980
    .line 981
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    .line 983
    .line 984
    :cond_1a
    const/4 v6, 0x6

    .line 985
    goto :goto_14

    .line 986
    :cond_1b
    invoke-static {}, Ldd1;->getEntries()Ljx2;

    .line 987
    .line 988
    .line 989
    move-result-object v6

    .line 990
    check-cast v6, Lz3;

    .line 991
    .line 992
    invoke-virtual {v6}, Lz3;->iterator()Ljava/util/Iterator;

    .line 993
    .line 994
    .line 995
    move-result-object v6

    .line 996
    :cond_1c
    move-object v12, v6

    .line 997
    check-cast v12, Lw3;

    .line 998
    .line 999
    invoke-virtual {v12}, Lw3;->hasNext()Z

    .line 1000
    .line 1001
    .line 1002
    move-result v13

    .line 1003
    if-eqz v13, :cond_1d

    .line 1004
    .line 1005
    invoke-virtual {v12}, Lw3;->next()Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v12

    .line 1009
    move-object v13, v12

    .line 1010
    check-cast v13, Ldd1;

    .line 1011
    .line 1012
    invoke-virtual {v13}, Ldd1;->getConstant()Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v13

    .line 1016
    invoke-static {v13, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1017
    .line 1018
    .line 1019
    move-result v13

    .line 1020
    if-eqz v13, :cond_1c

    .line 1021
    .line 1022
    goto :goto_15

    .line 1023
    :cond_1d
    const/4 v12, 0x0

    .line 1024
    :goto_15
    move-object v5, v12

    .line 1025
    check-cast v5, Ldd1;

    .line 1026
    .line 1027
    invoke-static {v14, v5}, Lel1;->M0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 1028
    .line 1029
    .line 1030
    move-result v5

    .line 1031
    if-eqz v5, :cond_1e

    .line 1032
    .line 1033
    goto :goto_16

    .line 1034
    :cond_1e
    const/4 v12, 0x0

    .line 1035
    :goto_16
    check-cast v12, Ldd1;

    .line 1036
    .line 1037
    if-nez v12, :cond_1f

    .line 1038
    .line 1039
    sget-object v5, Ltb1;->a:Ltb1;

    .line 1040
    .line 1041
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v5

    .line 1045
    goto :goto_17

    .line 1046
    :cond_1f
    move-object v5, v12

    .line 1047
    :goto_17
    if-ne v12, v5, :cond_20

    .line 1048
    .line 1049
    move v6, v9

    .line 1050
    goto :goto_18

    .line 1051
    :cond_20
    move v6, v10

    .line 1052
    :goto_18
    iget-object v12, v3, Llc1;->f:Lex6;

    .line 1053
    .line 1054
    new-instance v13, Ljava/util/ArrayList;

    .line 1055
    .line 1056
    invoke-static {v14, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1057
    .line 1058
    .line 1059
    move-result v15

    .line 1060
    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v14

    .line 1067
    :goto_19
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 1068
    .line 1069
    .line 1070
    move-result v15

    .line 1071
    if-eqz v15, :cond_28

    .line 1072
    .line 1073
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v15

    .line 1077
    check-cast v15, Ldd1;

    .line 1078
    .line 1079
    sget-object v4, Ldd1;->S3:Ldd1;

    .line 1080
    .line 1081
    if-eq v15, v4, :cond_22

    .line 1082
    .line 1083
    sget-object v4, Ldd1;->WebDav:Ldd1;

    .line 1084
    .line 1085
    if-ne v15, v4, :cond_21

    .line 1086
    .line 1087
    goto :goto_1a

    .line 1088
    :cond_21
    invoke-virtual {v15}, Ldd1;->getReleaseState()Lxi6;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v4

    .line 1092
    sget-object v2, Lxi6;->ToBeRemoved:Lxi6;

    .line 1093
    .line 1094
    if-eq v4, v2, :cond_22

    .line 1095
    .line 1096
    invoke-virtual {v15}, Ldd1;->getSubtitle()Lbt3;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v2

    .line 1100
    if-eqz v2, :cond_22

    .line 1101
    .line 1102
    invoke-interface {v2}, Lbt3;->invoke()Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v2

    .line 1106
    check-cast v2, Ljava/lang/String;

    .line 1107
    .line 1108
    goto :goto_1b

    .line 1109
    :cond_22
    :goto_1a
    const/4 v2, 0x0

    .line 1110
    :goto_1b
    invoke-virtual {v15}, Ldd1;->getReleaseState()Lxi6;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v4

    .line 1114
    sget-object v19, Lic1;->a:[I

    .line 1115
    .line 1116
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 1117
    .line 1118
    .line 1119
    move-result v4

    .line 1120
    aget v4, v19, v4

    .line 1121
    .line 1122
    if-ne v4, v9, :cond_23

    .line 1123
    .line 1124
    invoke-virtual {v15}, Ldd1;->getSubtitle()Lbt3;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v4

    .line 1128
    if-eqz v4, :cond_23

    .line 1129
    .line 1130
    invoke-interface {v4}, Lbt3;->invoke()Ljava/lang/Object;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v4

    .line 1134
    check-cast v4, Ljava/lang/String;

    .line 1135
    .line 1136
    goto :goto_1c

    .line 1137
    :cond_23
    const/4 v4, 0x0

    .line 1138
    :goto_1c
    sget-object v19, Lic1;->b:[I

    .line 1139
    .line 1140
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 1141
    .line 1142
    .line 1143
    move-result v21

    .line 1144
    aget v10, v19, v21

    .line 1145
    .line 1146
    if-eq v10, v9, :cond_26

    .line 1147
    .line 1148
    if-eq v10, v7, :cond_24

    .line 1149
    .line 1150
    sget-object v10, Lov2;->a:Lov2;

    .line 1151
    .line 1152
    move-object/from16 p0, v1

    .line 1153
    .line 1154
    move-object/from16 v23, v5

    .line 1155
    .line 1156
    move/from16 v27, v6

    .line 1157
    .line 1158
    move/from16 v19, v9

    .line 1159
    .line 1160
    goto/16 :goto_1f

    .line 1161
    .line 1162
    :cond_24
    sget-object v10, Loq8;->m:Ljava/util/ArrayList;

    .line 1163
    .line 1164
    move/from16 v19, v9

    .line 1165
    .line 1166
    new-instance v9, Ljava/util/ArrayList;

    .line 1167
    .line 1168
    invoke-static {v10, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1169
    .line 1170
    .line 1171
    move-result v7

    .line 1172
    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v7

    .line 1179
    :goto_1d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1180
    .line 1181
    .line 1182
    move-result v10

    .line 1183
    if-eqz v10, :cond_25

    .line 1184
    .line 1185
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v10

    .line 1189
    check-cast v10, Loq8;

    .line 1190
    .line 1191
    new-instance v8, Ldc1;

    .line 1192
    .line 1193
    move-object/from16 p0, v1

    .line 1194
    .line 1195
    iget-object v1, v10, Loq8;->b:Ljava/lang/String;

    .line 1196
    .line 1197
    move-object/from16 v23, v5

    .line 1198
    .line 1199
    iget v5, v10, Loq8;->c:I

    .line 1200
    .line 1201
    move/from16 v27, v6

    .line 1202
    .line 1203
    sget-object v6, Loq8;->i:Loq8;

    .line 1204
    .line 1205
    invoke-virtual {v10, v6}, Loq8;->equals(Ljava/lang/Object;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v6

    .line 1209
    xor-int/lit8 v6, v6, 0x1

    .line 1210
    .line 1211
    invoke-direct {v8, v1, v5, v6}, Ldc1;-><init>(Ljava/lang/String;IZ)V

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    .line 1216
    .line 1217
    move-object/from16 v1, p0

    .line 1218
    .line 1219
    move-object/from16 v5, v23

    .line 1220
    .line 1221
    move/from16 v6, v27

    .line 1222
    .line 1223
    const/16 v8, 0xa

    .line 1224
    .line 1225
    goto :goto_1d

    .line 1226
    :cond_25
    move-object/from16 p0, v1

    .line 1227
    .line 1228
    move-object/from16 v23, v5

    .line 1229
    .line 1230
    move/from16 v27, v6

    .line 1231
    .line 1232
    move-object v10, v9

    .line 1233
    goto :goto_1f

    .line 1234
    :cond_26
    move-object/from16 p0, v1

    .line 1235
    .line 1236
    move-object/from16 v23, v5

    .line 1237
    .line 1238
    move/from16 v27, v6

    .line 1239
    .line 1240
    move/from16 v19, v9

    .line 1241
    .line 1242
    sget-object v1, Lxq6;->n:Ljava/util/ArrayList;

    .line 1243
    .line 1244
    new-instance v10, Ljava/util/ArrayList;

    .line 1245
    .line 1246
    const/16 v5, 0xa

    .line 1247
    .line 1248
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1249
    .line 1250
    .line 1251
    move-result v6

    .line 1252
    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v1

    .line 1259
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1260
    .line 1261
    .line 1262
    move-result v6

    .line 1263
    if-eqz v6, :cond_27

    .line 1264
    .line 1265
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v6

    .line 1269
    check-cast v6, Lxq6;

    .line 1270
    .line 1271
    new-instance v7, Ldc1;

    .line 1272
    .line 1273
    iget-object v8, v6, Lxq6;->b:Ljava/lang/String;

    .line 1274
    .line 1275
    iget v9, v6, Lxq6;->c:I

    .line 1276
    .line 1277
    sget-object v22, Lxq6;->n:Ljava/util/ArrayList;

    .line 1278
    .line 1279
    invoke-static/range {v22 .. v22}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v5

    .line 1283
    invoke-virtual {v6, v5}, Lxq6;->equals(Ljava/lang/Object;)Z

    .line 1284
    .line 1285
    .line 1286
    move-result v5

    .line 1287
    xor-int/lit8 v5, v5, 0x1

    .line 1288
    .line 1289
    invoke-direct {v7, v8, v9, v5}, Ldc1;-><init>(Ljava/lang/String;IZ)V

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    .line 1294
    .line 1295
    const/16 v5, 0xa

    .line 1296
    .line 1297
    goto :goto_1e

    .line 1298
    :cond_27
    :goto_1f
    new-instance v1, Lbc1;

    .line 1299
    .line 1300
    invoke-direct {v1, v15, v2, v4, v10}, Lbc1;-><init>(Ldd1;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    .line 1305
    .line 1306
    move/from16 v9, v19

    .line 1307
    .line 1308
    move-object/from16 v5, v23

    .line 1309
    .line 1310
    move/from16 v6, v27

    .line 1311
    .line 1312
    const/4 v2, 0x4

    .line 1313
    const/16 v4, 0x8

    .line 1314
    .line 1315
    const/4 v7, 0x2

    .line 1316
    const/16 v8, 0xa

    .line 1317
    .line 1318
    const/4 v10, 0x0

    .line 1319
    move-object/from16 v1, p0

    .line 1320
    .line 1321
    goto/16 :goto_19

    .line 1322
    .line 1323
    :cond_28
    move-object/from16 p0, v1

    .line 1324
    .line 1325
    move-object/from16 v23, v5

    .line 1326
    .line 1327
    move/from16 v27, v6

    .line 1328
    .line 1329
    invoke-virtual/range {v23 .. v23}, Ldd1;->getConstant()Ljava/lang/String;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v1

    .line 1333
    invoke-static {v1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v23

    .line 1337
    new-instance v21, Lfm7;

    .line 1338
    .line 1339
    const/16 v24, 0x0

    .line 1340
    .line 1341
    const/16 v25, 0x0

    .line 1342
    .line 1343
    const/16 v26, 0x1c

    .line 1344
    .line 1345
    move-object/from16 v22, v13

    .line 1346
    .line 1347
    invoke-direct/range {v21 .. v26}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 1348
    .line 1349
    .line 1350
    move-object/from16 v1, v21

    .line 1351
    .line 1352
    invoke-virtual {v12, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 1353
    .line 1354
    .line 1355
    if-eqz v27, :cond_29

    .line 1356
    .line 1357
    if-nez v11, :cond_29

    .line 1358
    .line 1359
    sget-object v1, Lzn4;->a:Lzn4;

    .line 1360
    .line 1361
    new-instance v1, Lkc1;

    .line 1362
    .line 1363
    const/4 v2, 0x0

    .line 1364
    const/4 v4, 0x0

    .line 1365
    invoke-direct {v1, v3, v4, v2}, Lkc1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 1366
    .line 1367
    .line 1368
    invoke-static {v4, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 1369
    .line 1370
    .line 1371
    goto :goto_20

    .line 1372
    :cond_29
    const/4 v2, 0x0

    .line 1373
    :goto_20
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v1

    .line 1377
    iget-object v1, v1, Llc1;->f:Lex6;

    .line 1378
    .line 1379
    new-instance v3, Lw20;

    .line 1380
    .line 1381
    const/4 v4, 0x4

    .line 1382
    invoke-direct {v3, v0, v4}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 1383
    .line 1384
    .line 1385
    new-instance v4, Lwb1;

    .line 1386
    .line 1387
    invoke-direct {v4, v2, v3}, Lwb1;-><init>(ILmt3;)V

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v1, v0, v4}, Lzy4;->e(Lfu4;Les5;)V

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v1

    .line 1397
    iget-object v1, v1, Llc1;->g:Lix6;

    .line 1398
    .line 1399
    new-instance v3, Lc7;

    .line 1400
    .line 1401
    const/16 v4, 0x8

    .line 1402
    .line 1403
    invoke-direct {v3, v0, v4}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 1404
    .line 1405
    .line 1406
    new-instance v4, Lwb1;

    .line 1407
    .line 1408
    invoke-direct {v4, v2, v3}, Lwb1;-><init>(ILmt3;)V

    .line 1409
    .line 1410
    .line 1411
    invoke-virtual {v1, v0, v4}, Lix6;->e(Lfu4;Les5;)V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v1

    .line 1418
    iget-object v1, v1, Llc1;->h:Lix6;

    .line 1419
    .line 1420
    new-instance v3, Ld7;

    .line 1421
    .line 1422
    const/4 v4, 0x6

    .line 1423
    invoke-direct {v3, v0, v4}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 1424
    .line 1425
    .line 1426
    new-instance v4, Lwb1;

    .line 1427
    .line 1428
    invoke-direct {v4, v2, v3}, Lwb1;-><init>(ILmt3;)V

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {v1, v0, v4}, Lix6;->e(Lfu4;Les5;)V

    .line 1432
    .line 1433
    .line 1434
    return-object p0

    .line 1435
    :pswitch_e
    move-object/from16 p0, v12

    .line 1436
    .line 1437
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 1438
    .line 1439
    check-cast v13, Lq63;

    .line 1440
    .line 1441
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 1442
    .line 1443
    .line 1444
    move-result v1

    .line 1445
    if-eqz v1, :cond_2a

    .line 1446
    .line 1447
    goto :goto_21

    .line 1448
    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1449
    .line 1450
    .line 1451
    move-result-wide v1

    .line 1452
    invoke-static {v1, v2}, Lorg/swiftapps/swiftbackup/common/Const;->i(J)Ljava/lang/String;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v1

    .line 1456
    const/16 v2, 0x2f

    .line 1457
    .line 1458
    const/16 v3, 0x2e

    .line 1459
    .line 1460
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v1

    .line 1464
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1465
    .line 1466
    .line 1467
    const/16 v2, 0x3a

    .line 1468
    .line 1469
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v1

    .line 1473
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1474
    .line 1475
    .line 1476
    const-string v2, "Apps list ("

    .line 1477
    .line 1478
    const-string v3, ")"

    .line 1479
    .line 1480
    invoke-static {v2, v1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v1

    .line 1484
    new-instance v2, Ljf;

    .line 1485
    .line 1486
    const/4 v3, 0x2

    .line 1487
    invoke-direct {v2, v3, v0, v13}, Ljf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1488
    .line 1489
    .line 1490
    const-string v3, "text/html"

    .line 1491
    .line 1492
    invoke-virtual {v0, v3, v1, v2}, Ler6;->V(Ljava/lang/String;Ljava/lang/String;Lmt3;)V

    .line 1493
    .line 1494
    .line 1495
    :goto_21
    return-object p0

    .line 1496
    :pswitch_f
    move-object/from16 p0, v12

    .line 1497
    .line 1498
    check-cast v0, Lrj;

    .line 1499
    .line 1500
    check-cast v13, Loq;

    .line 1501
    .line 1502
    iget-object v1, v0, Lrj;->f:Lji;

    .line 1503
    .line 1504
    invoke-virtual {v1}, Lji;->getPackageName()Ljava/lang/String;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v2

    .line 1508
    iget-object v3, v13, Loq;->a:Ljava/lang/String;

    .line 1509
    .line 1510
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1511
    .line 1512
    .line 1513
    move-result v2

    .line 1514
    if-nez v2, :cond_2b

    .line 1515
    .line 1516
    goto :goto_22

    .line 1517
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1518
    .line 1519
    const-string v4, "onAppEvent: "

    .line 1520
    .line 1521
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v2

    .line 1531
    const-string v3, "AppActionsDialog"

    .line 1532
    .line 1533
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v1}, Lji;->isUninstalledWithoutBackup()Z

    .line 1537
    .line 1538
    .line 1539
    move-result v1

    .line 1540
    if-eqz v1, :cond_2c

    .line 1541
    .line 1542
    sget-object v1, Lzn4;->a:Lzn4;

    .line 1543
    .line 1544
    new-instance v1, Lcj;

    .line 1545
    .line 1546
    const/4 v2, 0x0

    .line 1547
    invoke-direct {v1, v0, v2}, Lcj;-><init>(Lrj;I)V

    .line 1548
    .line 1549
    .line 1550
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 1551
    .line 1552
    .line 1553
    goto :goto_22

    .line 1554
    :cond_2c
    invoke-virtual {v0}, Lrj;->I()V

    .line 1555
    .line 1556
    .line 1557
    :goto_22
    return-object p0

    .line 1558
    :pswitch_10
    move-object/from16 p0, v12

    .line 1559
    .line 1560
    check-cast v0, La3;

    .line 1561
    .line 1562
    check-cast v13, Ljava/util/ArrayList;

    .line 1563
    .line 1564
    invoke-virtual {v0}, La3;->q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v0

    .line 1568
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1569
    .line 1570
    .line 1571
    move-result v1

    .line 1572
    if-eqz v1, :cond_2d

    .line 1573
    .line 1574
    goto :goto_23

    .line 1575
    :cond_2d
    const-string v1, "ChangeLogHelper"

    .line 1576
    .line 1577
    const-string v2, "Showing changelog"

    .line 1578
    .line 1579
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    .line 1581
    .line 1582
    new-instance v1, Lb41;

    .line 1583
    .line 1584
    invoke-direct {v1, v0, v13}, Lb41;-><init>(Lsa1;Ljava/util/ArrayList;)V

    .line 1585
    .line 1586
    .line 1587
    const/4 v2, 0x0

    .line 1588
    invoke-virtual {v1, v0, v2, v2}, Lol1;->F(Lk28;ZZ)V

    .line 1589
    .line 1590
    .line 1591
    iget-object v0, v1, Lol1;->b:Ljava/lang/Object;

    .line 1592
    .line 1593
    check-cast v0, Lho;

    .line 1594
    .line 1595
    if-eqz v0, :cond_2e

    .line 1596
    .line 1597
    new-instance v1, La41;

    .line 1598
    .line 1599
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1603
    .line 1604
    .line 1605
    :cond_2e
    :goto_23
    return-object p0

    .line 1606
    nop

    .line 1607
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
