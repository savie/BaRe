.class public final synthetic Lgr;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lgr;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lgr;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lgr;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lgr;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, v0, Lgr;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v0, v0, Lgr;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v0, Lcs8;

    .line 15
    .line 16
    check-cast v4, Lgu8;

    .line 17
    .line 18
    check-cast v4, Lfu8;

    .line 19
    .line 20
    iget-object v1, v4, Lfu8;->a:Ljava/util/List;

    .line 21
    .line 22
    iget-object v2, v0, Lcs8;->k:Lgv7;

    .line 23
    .line 24
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ldj0;

    .line 29
    .line 30
    new-instance v4, Lrb;

    .line 31
    .line 32
    const/16 v5, 0x19

    .line 33
    .line 34
    invoke-direct {v4, v0, v5}, Lrb;-><init>(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v6, Ljj0;

    .line 44
    .line 45
    iget-object v0, v2, Ldj0;->a:Lil0;

    .line 46
    .line 47
    const v5, 0x7f1304da

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    const/16 v11, 0x1c

    .line 59
    .line 60
    const-string v7, "locations"

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    invoke-direct/range {v6 .. v11}, Ljj0;-><init>(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)V

    .line 64
    .line 65
    .line 66
    new-instance v7, Lli0;

    .line 67
    .line 68
    sget-object v5, Lq05;->DEVICE:Lq05;

    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    const v9, 0x7f1301fa

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const v10, 0x7f080129

    .line 85
    .line 86
    .line 87
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    const/4 v10, 0x5

    .line 92
    invoke-virtual {v5, v10}, Lq05;->isCheckedInExpansion(I)Z

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    const/4 v14, 0x0

    .line 97
    const/16 v15, 0xd4

    .line 98
    .line 99
    move v5, v10

    .line 100
    const/4 v10, 0x0

    .line 101
    const/4 v12, 0x0

    .line 102
    invoke-direct/range {v7 .. v15}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 103
    .line 104
    .line 105
    iget-object v8, v6, Ljj0;->c:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    new-instance v9, Lli0;

    .line 111
    .line 112
    sget-object v7, Lq05;->CLOUD:Lq05;

    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    const v11, 0x7f130106

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    const v12, 0x7f080114

    .line 129
    .line 130
    .line 131
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    invoke-virtual {v7, v5}, Lq05;->isCheckedInExpansion(I)Z

    .line 136
    .line 137
    .line 138
    move-result v15

    .line 139
    const/16 v16, 0x0

    .line 140
    .line 141
    const/16 v17, 0xd4

    .line 142
    .line 143
    const/4 v12, 0x0

    .line 144
    invoke-direct/range {v9 .. v17}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    new-instance v5, Lmj0;

    .line 151
    .line 152
    filled-new-array {v6}, [Ljj0;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-static {v6}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-direct {v5, v6, v3}, Lmj0;-><init>(Ljava/util/ArrayList;Z)V

    .line 161
    .line 162
    .line 163
    new-instance v3, Llj0;

    .line 164
    .line 165
    invoke-direct {v3, v0}, Llj0;-><init>(Lil0;)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Llh;

    .line 169
    .line 170
    invoke-direct {v0, v4, v2, v1, v5}, Llh;-><init>(Lrb;Ldj0;Ljava/util/List;Lmj0;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v5, v0}, Llj0;->j(Lpj0;Lbt3;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_0
    check-cast v0, Lpb7;

    .line 178
    .line 179
    check-cast v4, Ljava/lang/String;

    .line 180
    .line 181
    iget-object v1, v0, Lpb7;->g:Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {v1, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_0

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_0
    iput-object v4, v0, Lpb7;->g:Ljava/lang/String;

    .line 191
    .line 192
    iget-object v1, v0, Lpb7;->h:Lgj;

    .line 193
    .line 194
    if-eqz v1, :cond_1

    .line 195
    .line 196
    invoke-virtual {v1}, Lgj;->invoke()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    :cond_1
    invoke-virtual {v0}, Lhg6;->e()V

    .line 200
    .line 201
    .line 202
    :goto_0
    return-void

    .line 203
    :pswitch_1
    check-cast v0, Lj57;

    .line 204
    .line 205
    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 206
    .line 207
    iget-object v0, v0, Lj57;->n:Lcz;

    .line 208
    .line 209
    if-eqz v0, :cond_2

    .line 210
    .line 211
    iget-object v1, v4, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->q:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 212
    .line 213
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    :cond_2
    return-void

    .line 221
    :pswitch_2
    check-cast v0, Lq54;

    .line 222
    .line 223
    check-cast v4, Lzc6;

    .line 224
    .line 225
    const/16 v1, 0xdff

    .line 226
    .line 227
    invoke-static {v4, v2, v3, v1}, Lzc6;->q(Lzc6;ZZI)Lzc6;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Lq54;->r(Lzc6;)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 236
    .line 237
    move-object v7, v4

    .line 238
    check-cast v7, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 239
    .line 240
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U:Lgv7;

    .line 241
    .line 242
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Lj30;

    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    iget-object v1, v0, Lj30;->R:Lgv7;

    .line 252
    .line 253
    iget-object v4, v0, Lj30;->S:Lgv7;

    .line 254
    .line 255
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    new-instance v13, Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getValidSettings()Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    if-eqz v5, :cond_7

    .line 268
    .line 269
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    if-eqz v6, :cond_3

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_3
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    if-eqz v6, :cond_7

    .line 285
    .line 286
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    check-cast v6, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 291
    .line 292
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getAppParts()Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    if-eqz v6, :cond_5

    .line 297
    .line 298
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    if-eqz v8, :cond_5

    .line 303
    .line 304
    goto :goto_1

    .line 305
    :cond_5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 310
    .line 311
    .line 312
    move-result v8

    .line 313
    if-eqz v8, :cond_4

    .line 314
    .line 315
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    check-cast v8, Liu;

    .line 320
    .line 321
    invoke-virtual {v8}, Liu;->getBackupReq()Lsk0;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    invoke-virtual {v8}, Lsk0;->isPossible()Z

    .line 326
    .line 327
    .line 328
    move-result v8

    .line 329
    if-nez v8, :cond_6

    .line 330
    .line 331
    move v10, v2

    .line 332
    goto :goto_3

    .line 333
    :cond_7
    :goto_2
    move v10, v3

    .line 334
    :goto_3
    new-instance v5, Lk30;

    .line 335
    .line 336
    const-string v6, "Backup"

    .line 337
    .line 338
    const v8, 0x7f13008f

    .line 339
    .line 340
    .line 341
    const v9, 0x7f080104

    .line 342
    .line 343
    .line 344
    const v11, 0x7f1304a6

    .line 345
    .line 346
    .line 347
    const v12, 0x7f080101

    .line 348
    .line 349
    .line 350
    invoke-direct/range {v5 .. v12}, Lk30;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/Config;IIZII)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getValidSettings()Ljava/util/List;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    if-eqz v5, :cond_c

    .line 361
    .line 362
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    if-eqz v6, :cond_8

    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    if-eqz v6, :cond_c

    .line 378
    .line 379
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    check-cast v6, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 384
    .line 385
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getAppParts()Ljava/util/List;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    if-eqz v6, :cond_a

    .line 390
    .line 391
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 392
    .line 393
    .line 394
    move-result v8

    .line 395
    if-eqz v8, :cond_a

    .line 396
    .line 397
    goto :goto_4

    .line 398
    :cond_a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 403
    .line 404
    .line 405
    move-result v8

    .line 406
    if-eqz v8, :cond_9

    .line 407
    .line 408
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    check-cast v8, Liu;

    .line 413
    .line 414
    invoke-virtual {v8}, Liu;->getBackupReq()Lsk0;

    .line 415
    .line 416
    .line 417
    move-result-object v8

    .line 418
    invoke-virtual {v8}, Lsk0;->isPossible()Z

    .line 419
    .line 420
    .line 421
    move-result v8

    .line 422
    if-nez v8, :cond_b

    .line 423
    .line 424
    move v10, v2

    .line 425
    goto :goto_6

    .line 426
    :cond_c
    :goto_5
    move v10, v3

    .line 427
    :goto_6
    new-instance v5, Lk30;

    .line 428
    .line 429
    const-string v6, "Restore"

    .line 430
    .line 431
    const v8, 0x7f13045a

    .line 432
    .line 433
    .line 434
    const v9, 0x7f0801ab

    .line 435
    .line 436
    .line 437
    const v11, 0x7f1304a7

    .line 438
    .line 439
    .line 440
    const v12, 0x7f0801ab

    .line 441
    .line 442
    .line 443
    invoke-direct/range {v5 .. v12}, Lk30;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/Config;IIZII)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    check-cast v5, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 454
    .line 455
    invoke-virtual {v5, v2}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    check-cast v1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 463
    .line 464
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    check-cast v2, Li30;

    .line 469
    .line 470
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    check-cast v1, Li30;

    .line 478
    .line 479
    new-instance v2, Lg30;

    .line 480
    .line 481
    invoke-direct {v2, v0, v3}, Lg30;-><init>(Ljava/lang/Object;I)V

    .line 482
    .line 483
    .line 484
    iput-object v2, v1, Lgm7;->j:Lqt3;

    .line 485
    .line 486
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    check-cast v1, Li30;

    .line 491
    .line 492
    new-instance v8, Lfm7;

    .line 493
    .line 494
    const/4 v12, 0x0

    .line 495
    move-object v9, v13

    .line 496
    const/16 v13, 0x1e

    .line 497
    .line 498
    const/4 v10, 0x0

    .line 499
    const/4 v11, 0x0

    .line 500
    invoke-direct/range {v8 .. v13}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v8, v3}, Lgm7;->w(Lfm7;Z)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0}, Lu35;->show()V

    .line 507
    .line 508
    .line 509
    return-void

    .line 510
    :pswitch_4
    check-cast v0, Ltr;

    .line 511
    .line 512
    check-cast v4, Lji;

    .line 513
    .line 514
    iget-object v1, v0, Ltr;->A:Lqt3;

    .line 515
    .line 516
    invoke-virtual {v0}, Lfh6;->b()I

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-interface {v1, v0, v4}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    return-void

    .line 528
    nop

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
