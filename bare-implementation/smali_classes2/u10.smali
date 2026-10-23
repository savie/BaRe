.class public final synthetic Lu10;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lu10;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lu10;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu10;->a:I

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    sget-object v6, Lbe8;->a:Lbe8;

    .line 11
    .line 12
    iget-object v0, v0, Lu10;->b:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Ljp8;

    .line 22
    .line 23
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->S:Lgv7;

    .line 24
    .line 25
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Luo8;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v7, v0, Luo8;->d:Lzx2;

    .line 35
    .line 36
    iget-object v7, v7, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    iget-object v8, v0, Luo8;->g:Lmo8;

    .line 39
    .line 40
    iget-object v9, v0, Luo8;->c:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 41
    .line 42
    iget-object v10, v0, Luo8;->f:Landroid/widget/RelativeLayout;

    .line 43
    .line 44
    sget-object v11, Lhp8;->a:Lhp8;

    .line 45
    .line 46
    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    const/16 v12, 0x8

    .line 51
    .line 52
    if-eqz v11, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Luo8;->a()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    new-instance v14, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    move v0, v3

    .line 66
    :goto_0
    const/4 v1, 0x4

    .line 67
    if-ge v0, v1, :cond_0

    .line 68
    .line 69
    new-instance v15, Lyn8;

    .line 70
    .line 71
    new-instance v1, Lq63;

    .line 72
    .line 73
    invoke-direct {v1, v2, v4}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    const/16 v21, 0x0

    .line 77
    .line 78
    const/16 v22, 0x78

    .line 79
    .line 80
    const-wide/16 v17, 0x0

    .line 81
    .line 82
    const-wide/16 v19, 0x0

    .line 83
    .line 84
    move-object/from16 v16, v1

    .line 85
    .line 86
    invoke-direct/range {v15 .. v22}, Lyn8;-><init>(Lq63;JJLjava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    iput-boolean v4, v15, Lyn8;->n:Z

    .line 90
    .line 91
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    new-instance v13, Lfm7;

    .line 98
    .line 99
    const/16 v17, 0x0

    .line 100
    .line 101
    const/16 v18, 0x1e

    .line 102
    .line 103
    const/4 v15, 0x0

    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    invoke-direct/range {v13 .. v18}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, v13, v3}, Lmo8;->w(Lfm7;Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    instance-of v2, v1, Lip8;

    .line 120
    .line 121
    if-eqz v2, :cond_2

    .line 122
    .line 123
    invoke-virtual {v0}, Luo8;->a()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    new-instance v13, Lfm7;

    .line 136
    .line 137
    check-cast v1, Lip8;

    .line 138
    .line 139
    iget-object v14, v1, Lip8;->a:Ljava/util/ArrayList;

    .line 140
    .line 141
    const/16 v17, 0x0

    .line 142
    .line 143
    const/16 v18, 0x1e

    .line 144
    .line 145
    const/4 v15, 0x0

    .line 146
    const/16 v16, 0x0

    .line 147
    .line 148
    invoke-direct/range {v13 .. v18}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v13, v3}, Lmo8;->w(Lfm7;Z)V

    .line 152
    .line 153
    .line 154
    new-instance v1, Llm;

    .line 155
    .line 156
    const/16 v2, 0x13

    .line 157
    .line 158
    invoke-direct {v1, v0, v2}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 159
    .line 160
    .line 161
    iput-object v1, v8, Lgm7;->i:Lmt3;

    .line 162
    .line 163
    new-instance v1, Lgs;

    .line 164
    .line 165
    const/16 v2, 0xc

    .line 166
    .line 167
    invoke-direct {v1, v0, v2}, Lgs;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_2
    sget-object v2, Lgp8;->a:Lgp8;

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_3

    .line 181
    .line 182
    invoke-virtual {v0}, Luo8;->a()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    iget-object v0, v0, Luo8;->e:Landroid/widget/TextView;

    .line 192
    .line 193
    const v1, 0x7f1303cc

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    :goto_1
    move-object v5, v6

    .line 203
    goto :goto_2

    .line 204
    :cond_3
    invoke-static {}, Lq;->j()V

    .line 205
    .line 206
    .line 207
    :goto_2
    return-object v5

    .line 208
    :pswitch_0
    check-cast v0, Loo8;

    .line 209
    .line 210
    move-object/from16 v1, p1

    .line 211
    .line 212
    check-cast v1, Lao8;

    .line 213
    .line 214
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->y(Lzm;)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-nez v2, :cond_4

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_4
    invoke-virtual {v0}, Loo8;->V()Lpo8;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    sget-object v2, Lzn4;->a:Lzn4;

    .line 232
    .line 233
    new-instance v2, Lsf;

    .line 234
    .line 235
    const/4 v3, 0x2

    .line 236
    invoke-direct {v2, v0, v1, v5, v3}, Lsf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 237
    .line 238
    .line 239
    invoke-static {v5, v2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 240
    .line 241
    .line 242
    :goto_3
    return-object v6

    .line 243
    :pswitch_1
    check-cast v0, Lm37;

    .line 244
    .line 245
    move-object/from16 v1, p1

    .line 246
    .line 247
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Lm37;->p()Lq47;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    new-instance v2, Lrm;

    .line 257
    .line 258
    const/16 v3, 0xf

    .line 259
    .line 260
    invoke-direct {v2, v3, v0, v1}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v2}, Lzn4;->c(Lbt3;)V

    .line 264
    .line 265
    .line 266
    return-object v6

    .line 267
    :pswitch_2
    check-cast v0, Lmt3;

    .line 268
    .line 269
    move-object/from16 v1, p1

    .line 270
    .line 271
    check-cast v1, Lly6;

    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    new-instance v7, Ldz6;

    .line 277
    .line 278
    iget-wide v8, v1, Lly6;->a:J

    .line 279
    .line 280
    iget-object v10, v1, Lly6;->b:Ljava/lang/Long;

    .line 281
    .line 282
    iget-wide v11, v1, Lly6;->c:J

    .line 283
    .line 284
    iget-boolean v13, v1, Lly6;->d:Z

    .line 285
    .line 286
    invoke-direct/range {v7 .. v13}, Ldz6;-><init>(JLjava/lang/Long;JZ)V

    .line 287
    .line 288
    .line 289
    invoke-interface {v0, v7}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    return-object v6

    .line 293
    :pswitch_3
    check-cast v0, Lnd6;

    .line 294
    .line 295
    move-object/from16 v1, p1

    .line 296
    .line 297
    check-cast v1, Lq63;

    .line 298
    .line 299
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    check-cast v0, Lsa1;

    .line 304
    .line 305
    if-nez v0, :cond_5

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_5
    if-eqz v1, :cond_6

    .line 309
    .line 310
    invoke-virtual {v1}, Lq63;->j()Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-ne v2, v4, :cond_6

    .line 315
    .line 316
    sget v2, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->c0:I

    .line 317
    .line 318
    invoke-static {v0, v1}, Lz85;->E(Lsa1;Lq63;)V

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_6
    const v1, 0x7f1303be

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    sget-object v2, Lzn4;->a:Lzn4;

    .line 333
    .line 334
    new-instance v2, Lcv;

    .line 335
    .line 336
    const/16 v3, 0xe

    .line 337
    .line 338
    invoke-direct {v2, v3, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 342
    .line 343
    .line 344
    :goto_4
    return-object v6

    .line 345
    :pswitch_4
    check-cast v0, Lin5;

    .line 346
    .line 347
    move-object/from16 v1, p1

    .line 348
    .line 349
    check-cast v1, Lfn5;

    .line 350
    .line 351
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 355
    .line 356
    iget-object v8, v0, La55;->b:Ljava/lang/String;

    .line 357
    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    const-string v4, "tokenRequestResult="

    .line 361
    .line 362
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    const/4 v11, 0x4

    .line 373
    const/4 v12, 0x0

    .line 374
    const/4 v10, 0x0

    .line 375
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    sget-object v3, Len5;->a:Len5;

    .line 379
    .line 380
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-eqz v3, :cond_7

    .line 385
    .line 386
    iget-object v0, v0, Lin5;->g:Lix6;

    .line 387
    .line 388
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 389
    .line 390
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    goto :goto_6

    .line 394
    :cond_7
    instance-of v3, v1, Ldn5;

    .line 395
    .line 396
    if-eqz v3, :cond_9

    .line 397
    .line 398
    iget-object v0, v0, Lin5;->h:Lix6;

    .line 399
    .line 400
    check-cast v1, Ldn5;

    .line 401
    .line 402
    iget-object v1, v1, Ldn5;->a:Ljava/lang/String;

    .line 403
    .line 404
    if-nez v1, :cond_8

    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_8
    move-object v2, v1

    .line 408
    :goto_5
    invoke-virtual {v0, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    :goto_6
    move-object v5, v6

    .line 412
    goto :goto_7

    .line 413
    :cond_9
    invoke-static {}, Lq;->j()V

    .line 414
    .line 415
    .line 416
    :goto_7
    return-object v5

    .line 417
    :pswitch_5
    check-cast v0, Ldy7;

    .line 418
    .line 419
    move-object/from16 v1, p1

    .line 420
    .line 421
    check-cast v1, Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {v0, v1}, Ldy7;->a(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    return-object v6

    .line 427
    :pswitch_6
    check-cast v0, Lzr4;

    .line 428
    .line 429
    move-object/from16 v1, p1

    .line 430
    .line 431
    check-cast v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 432
    .line 433
    invoke-virtual {v0, v1}, Lzr4;->k(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;)V

    .line 434
    .line 435
    .line 436
    return-object v6

    .line 437
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 438
    .line 439
    move-object/from16 v1, p1

    .line 440
    .line 441
    check-cast v1, Ljava/lang/Boolean;

    .line 442
    .line 443
    sget v2, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_a

    .line 450
    .line 451
    invoke-virtual {v0, v4}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->Y(Z)V

    .line 452
    .line 453
    .line 454
    :cond_a
    return-object v6

    .line 455
    :pswitch_8
    check-cast v0, Lkp3;

    .line 456
    .line 457
    iget-object v1, v0, Lkp3;->e:Lcp3;

    .line 458
    .line 459
    move-object/from16 v2, p1

    .line 460
    .line 461
    check-cast v2, Lfm7;

    .line 462
    .line 463
    iget-object v7, v2, Lfm7;->e:Ljava/lang/String;

    .line 464
    .line 465
    if-eqz v7, :cond_f

    .line 466
    .line 467
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 468
    .line 469
    .line 470
    move-result v7

    .line 471
    if-nez v7, :cond_b

    .line 472
    .line 473
    goto :goto_a

    .line 474
    :cond_b
    invoke-virtual {v1, v2, v4}, Lgm7;->w(Lfm7;Z)V

    .line 475
    .line 476
    .line 477
    iget-object v1, v2, Lfm7;->a:Ljava/util/List;

    .line 478
    .line 479
    iget-object v2, v2, Lfm7;->e:Ljava/lang/String;

    .line 480
    .line 481
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 486
    .line 487
    .line 488
    move-result v7

    .line 489
    if-eqz v7, :cond_d

    .line 490
    .line 491
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    check-cast v7, Lzk3;

    .line 496
    .line 497
    iget-object v7, v7, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 498
    .line 499
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v7

    .line 503
    invoke-static {v7, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v7

    .line 507
    if-eqz v7, :cond_c

    .line 508
    .line 509
    goto :goto_9

    .line 510
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 511
    .line 512
    goto :goto_8

    .line 513
    :cond_d
    const/4 v3, -0x1

    .line 514
    :goto_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    if-ltz v3, :cond_e

    .line 519
    .line 520
    move-object v5, v1

    .line 521
    :cond_e
    if-eqz v5, :cond_10

    .line 522
    .line 523
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    invoke-virtual {v0}, Lkp3;->k()Landroidx/recyclerview/widget/RecyclerView;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    new-instance v3, Lj00;

    .line 532
    .line 533
    invoke-direct {v3, v0, v1, v4}, Lj00;-><init>(Ljava/lang/Object;II)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 537
    .line 538
    .line 539
    goto :goto_b

    .line 540
    :cond_f
    :goto_a
    invoke-virtual {v1, v2, v3}, Lgm7;->w(Lfm7;Z)V

    .line 541
    .line 542
    .line 543
    :cond_10
    :goto_b
    return-object v6

    .line 544
    :pswitch_9
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 545
    .line 546
    move-object/from16 v1, p1

    .line 547
    .line 548
    check-cast v1, Lto3;

    .line 549
    .line 550
    sget v2, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U:I

    .line 551
    .line 552
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    iget-object v2, v2, Lyo3;->d:Landroidx/viewpager/widget/ViewPager;

    .line 557
    .line 558
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    if-eq v2, v3, :cond_11

    .line 567
    .line 568
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    iget-object v0, v0, Lyo3;->d:Landroidx/viewpager/widget/ViewPager;

    .line 573
    .line 574
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 579
    .line 580
    .line 581
    :cond_11
    return-object v6

    .line 582
    :pswitch_a
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 583
    .line 584
    move-object/from16 v1, p1

    .line 585
    .line 586
    check-cast v1, Lqp3;

    .line 587
    .line 588
    sget v2, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 589
    .line 590
    sget-object v2, Lhy7;->a:Lhy7;

    .line 591
    .line 592
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 593
    .line 594
    .line 595
    const-class v2, Lqp3;

    .line 596
    .line 597
    invoke-static {v2, v1}, Lhy7;->a(Ljava/lang/Class;Lpw6;)V

    .line 598
    .line 599
    .line 600
    invoke-static {v0, v5}, Lhy7;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 601
    .line 602
    .line 603
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 604
    .line 605
    .line 606
    return-object v6

    .line 607
    :pswitch_b
    check-cast v0, Lr87;

    .line 608
    .line 609
    move-object/from16 v1, p1

    .line 610
    .line 611
    check-cast v1, Ldy1;

    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    const-string v2, "FirebaseSessions"

    .line 617
    .line 618
    const-string v3, "CorruptionException in session data DataStore"

    .line 619
    .line 620
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    .line 622
    .line 623
    new-instance v1, Lq87;

    .line 624
    .line 625
    iget-object v0, v0, Lr87;->a:Lb97;

    .line 626
    .line 627
    invoke-virtual {v0, v5}, Lb97;->a(Lu87;)Lu87;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    invoke-direct {v1, v0, v5, v5}, Lq87;-><init>(Lu87;Li38;Ljava/util/Map;)V

    .line 632
    .line 633
    .line 634
    return-object v1

    .line 635
    :pswitch_c
    check-cast v0, Lrj2;

    .line 636
    .line 637
    move-object/from16 v1, p1

    .line 638
    .line 639
    check-cast v1, Landroid/view/View;

    .line 640
    .line 641
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    iget-object v0, v0, Lrj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 645
    .line 646
    sget-object v2, Liu;->EXTDATA:Liu;

    .line 647
    .line 648
    invoke-virtual {v0, v1, v2}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->d0(Landroid/view/View;Liu;)V

    .line 649
    .line 650
    .line 651
    return-object v6

    .line 652
    :pswitch_d
    move-object v7, v0

    .line 653
    check-cast v7, Lx92;

    .line 654
    .line 655
    move-object/from16 v0, p1

    .line 656
    .line 657
    check-cast v0, Lea2;

    .line 658
    .line 659
    if-eqz v0, :cond_12

    .line 660
    .line 661
    iget-object v8, v0, Lea2;->a:Ljava/util/ArrayList;

    .line 662
    .line 663
    iget-object v0, v7, Lrl0;->b:Ljk8;

    .line 664
    .line 665
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    check-cast v0, Ly92;

    .line 669
    .line 670
    iget-object v9, v0, Ly92;->b:Lxc6;

    .line 671
    .line 672
    new-instance v13, Lbh;

    .line 673
    .line 674
    const/16 v0, 0x14

    .line 675
    .line 676
    invoke-direct {v13, v7, v0}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 677
    .line 678
    .line 679
    const/16 v14, 0x30

    .line 680
    .line 681
    const v10, 0x7f13043c

    .line 682
    .line 683
    .line 684
    const v11, 0x7f0800bf

    .line 685
    .line 686
    .line 687
    const/4 v12, 0x0

    .line 688
    invoke-static/range {v7 .. v14}, Lnd6;->j(Lnd6;Ljava/util/List;Lxc6;IIZLbh;I)V

    .line 689
    .line 690
    .line 691
    :cond_12
    return-object v6

    .line 692
    :pswitch_e
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 693
    .line 694
    move-object/from16 v1, p1

    .line 695
    .line 696
    check-cast v1, Ltn2;

    .line 697
    .line 698
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 699
    .line 700
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 701
    .line 702
    .line 703
    sget-object v2, Lzn4;->a:Lzn4;

    .line 704
    .line 705
    new-instance v2, La11;

    .line 706
    .line 707
    invoke-direct {v2, v0, v1, v5, v4}, La11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 708
    .line 709
    .line 710
    invoke-static {v5, v2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 711
    .line 712
    .line 713
    return-object v6

    .line 714
    :pswitch_f
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 715
    .line 716
    move-object/from16 v1, p1

    .line 717
    .line 718
    check-cast v1, Lwv3;

    .line 719
    .line 720
    invoke-static {v0, v1}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$n7aSE3U-rjxKeAFoZqoUaZPIb7o(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;Lwv3;)Lbe8;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    return-object v0

    .line 725
    :pswitch_10
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 726
    .line 727
    move-object/from16 v1, p1

    .line 728
    .line 729
    check-cast v1, Ljava/lang/Integer;

    .line 730
    .line 731
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 732
    .line 733
    .line 734
    sget v1, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 735
    .line 736
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->Q()V

    .line 737
    .line 738
    .line 739
    return-object v6

    .line 740
    :pswitch_11
    check-cast v0, Lsj1;

    .line 741
    .line 742
    move-object/from16 v1, p1

    .line 743
    .line 744
    check-cast v1, Ljava/lang/Integer;

    .line 745
    .line 746
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 747
    .line 748
    .line 749
    move-result v1

    .line 750
    sget-object v2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 751
    .line 752
    if-eqz v2, :cond_13

    .line 753
    .line 754
    const-string v3, "dropbox_chunk_size"

    .line 755
    .line 756
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v0}, Lsj1;->s()V

    .line 764
    .line 765
    .line 766
    return-object v6

    .line 767
    :cond_13
    const-string v0, "editor"

    .line 768
    .line 769
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    throw v5

    .line 773
    :pswitch_12
    check-cast v0, Lx01;

    .line 774
    .line 775
    move-object/from16 v1, p1

    .line 776
    .line 777
    check-cast v1, Ly01;

    .line 778
    .line 779
    if-eqz v1, :cond_15

    .line 780
    .line 781
    iget-object v1, v1, Ly01;->a:Lq63;

    .line 782
    .line 783
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 784
    .line 785
    .line 786
    sget-object v2, Lg00;->a:Lg00;

    .line 787
    .line 788
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    const-string v3, "android.hardware.telephony"

    .line 793
    .line 794
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    if-nez v2, :cond_14

    .line 799
    .line 800
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 801
    .line 802
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    sget-object v1, Lzn4;->a:Lzn4;

    .line 807
    .line 808
    const-string v1, "Feature not supported on this device"

    .line 809
    .line 810
    invoke-static {v0, v1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    goto :goto_c

    .line 814
    :cond_14
    new-instance v2, Landroid/content/Intent;

    .line 815
    .line 816
    const-class v3, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 817
    .line 818
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 819
    .line 820
    .line 821
    const-string v3, "EXTRA_BACKUP_FILE_PATH"

    .line 822
    .line 823
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 832
    .line 833
    .line 834
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 835
    .line 836
    .line 837
    :cond_15
    :goto_c
    return-object v6

    .line 838
    :pswitch_13
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 839
    .line 840
    move-object/from16 v1, p1

    .line 841
    .line 842
    check-cast v1, Lfm7;

    .line 843
    .line 844
    sget v2, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 845
    .line 846
    if-eqz v1, :cond_1b

    .line 847
    .line 848
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    iget-object v4, v1, Lfm7;->a:Ljava/util/List;

    .line 853
    .line 854
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 855
    .line 856
    .line 857
    move-result v4

    .line 858
    new-instance v7, Ljava/lang/StringBuilder;

    .line 859
    .line 860
    const-string v8, "onAdapterState: Apps received = "

    .line 861
    .line 862
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v4

    .line 872
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    .line 874
    .line 875
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->i0:Lgv7;

    .line 876
    .line 877
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v2

    .line 881
    check-cast v2, Lcom/l4digital/fastscroll/FastScroller;

    .line 882
    .line 883
    sget-object v4, Liy;->a:Liy;

    .line 884
    .line 885
    invoke-static {}, Liy;->b()Lsx;

    .line 886
    .line 887
    .line 888
    move-result-object v4

    .line 889
    sget-object v7, Lsx;->Name:Lsx;

    .line 890
    .line 891
    if-ne v4, v7, :cond_16

    .line 892
    .line 893
    const/16 v4, 0x30

    .line 894
    .line 895
    goto :goto_d

    .line 896
    :cond_16
    const/16 v4, 0x20

    .line 897
    .line 898
    :goto_d
    invoke-virtual {v2, v4}, Lcom/l4digital/fastscroll/FastScroller;->setBubbleTextSize(I)V

    .line 899
    .line 900
    .line 901
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 902
    .line 903
    const-string v4, "mAdapter"

    .line 904
    .line 905
    if-eqz v2, :cond_1a

    .line 906
    .line 907
    invoke-virtual {v2, v1, v3}, Lgm7;->w(Lfm7;Z)V

    .line 908
    .line 909
    .line 910
    iget-boolean v1, v1, Lfm7;->d:Z

    .line 911
    .line 912
    if-eqz v1, :cond_17

    .line 913
    .line 914
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->i0()Landroidx/recyclerview/widget/RecyclerView;

    .line 915
    .line 916
    .line 917
    move-result-object v1

    .line 918
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 919
    .line 920
    .line 921
    :cond_17
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 922
    .line 923
    if-eqz v1, :cond_19

    .line 924
    .line 925
    invoke-virtual {v1}, Ll20;->y()V

    .line 926
    .line 927
    .line 928
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 929
    .line 930
    if-eqz v1, :cond_18

    .line 931
    .line 932
    invoke-virtual {v1}, Lgm7;->p()Z

    .line 933
    .line 934
    .line 935
    move-result v1

    .line 936
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0(Z)V

    .line 937
    .line 938
    .line 939
    goto :goto_e

    .line 940
    :cond_18
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    throw v5

    .line 944
    :cond_19
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    throw v5

    .line 948
    :cond_1a
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    throw v5

    .line 952
    :cond_1b
    :goto_e
    return-object v6

    .line 953
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
