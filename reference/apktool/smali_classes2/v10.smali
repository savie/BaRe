.class public final synthetic Lv10;
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
    iput p2, p0, Lv10;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lv10;->b:Ljava/lang/Object;

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
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lv10;->a:I

    .line 4
    .line 5
    const-string v2, "editor"

    .line 6
    .line 7
    const-string v4, ""

    .line 8
    .line 9
    const/16 v5, 0xb

    .line 10
    .line 11
    const/16 v6, 0x8

    .line 12
    .line 13
    const/4 v7, 0x2

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    sget-object v10, Lbe8;->a:Lbe8;

    .line 17
    .line 18
    const/4 v11, 0x1

    .line 19
    iget-object v0, v0, Lv10;->b:Ljava/lang/Object;

    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    check-cast v0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 25
    .line 26
    move-object/from16 v1, p1

    .line 27
    .line 28
    check-cast v1, Lfp8;

    .line 29
    .line 30
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->T:Lgv7;

    .line 31
    .line 32
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lto8;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lto8;->i:Lmo8;

    .line 42
    .line 43
    iget-object v7, v0, Lto8;->g:Lcom/google/android/material/button/MaterialButton;

    .line 44
    .line 45
    iget-object v12, v0, Lto8;->f:Landroid/widget/TextView;

    .line 46
    .line 47
    iget-object v13, v0, Lto8;->e:Lzx2;

    .line 48
    .line 49
    iget-object v13, v13, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    iget-object v14, v0, Lto8;->d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 52
    .line 53
    iget-object v15, v0, Lto8;->h:Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    sget-object v3, Lcp8;->a:Lcp8;

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0, v9}, Lto8;->a(Ljava/lang/Integer;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v14, v8}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    move v1, v8

    .line 75
    :goto_0
    const/4 v3, 0x4

    .line 76
    if-ge v1, v3, :cond_0

    .line 77
    .line 78
    new-instance v16, Lyn8;

    .line 79
    .line 80
    new-instance v3, Lq63;

    .line 81
    .line 82
    invoke-direct {v3, v4, v11}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    const/16 v22, 0x0

    .line 86
    .line 87
    const/16 v23, 0x78

    .line 88
    .line 89
    const-wide/16 v18, 0x0

    .line 90
    .line 91
    const-wide/16 v20, 0x0

    .line 92
    .line 93
    move-object/from16 v17, v3

    .line 94
    .line 95
    invoke-direct/range {v16 .. v23}, Lyn8;-><init>(Lq63;JJLjava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    move-object/from16 v3, v16

    .line 99
    .line 100
    iput-boolean v11, v3, Lyn8;->n:Z

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    new-instance v17, Lfm7;

    .line 109
    .line 110
    const/16 v21, 0x0

    .line 111
    .line 112
    const/16 v22, 0x1e

    .line 113
    .line 114
    const/16 v19, 0x0

    .line 115
    .line 116
    const/16 v20, 0x0

    .line 117
    .line 118
    move-object/from16 v18, v0

    .line 119
    .line 120
    invoke-direct/range {v17 .. v22}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    move-object/from16 v0, v17

    .line 124
    .line 125
    invoke-virtual {v2, v0, v8}, Lmo8;->w(Lfm7;Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v15, v6}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :cond_1
    instance-of v3, v1, Lep8;

    .line 137
    .line 138
    if-eqz v3, :cond_2

    .line 139
    .line 140
    check-cast v1, Lep8;

    .line 141
    .line 142
    iget-object v1, v1, Lep8;->a:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v0, v3}, Lto8;->a(Ljava/lang/Integer;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v14, v8}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v15, v8}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    new-instance v16, Lfm7;

    .line 165
    .line 166
    const/16 v20, 0x0

    .line 167
    .line 168
    const/16 v21, 0x1e

    .line 169
    .line 170
    const/16 v18, 0x0

    .line 171
    .line 172
    const/16 v19, 0x0

    .line 173
    .line 174
    move-object/from16 v17, v1

    .line 175
    .line 176
    invoke-direct/range {v16 .. v21}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    move-object/from16 v1, v16

    .line 180
    .line 181
    invoke-virtual {v2, v1, v8}, Lmo8;->w(Lfm7;Z)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lox;

    .line 185
    .line 186
    const/16 v3, 0x18

    .line 187
    .line 188
    invoke-direct {v1, v0, v3}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 189
    .line 190
    .line 191
    iput-object v1, v2, Lgm7;->i:Lmt3;

    .line 192
    .line 193
    new-instance v1, Lof;

    .line 194
    .line 195
    invoke-direct {v1, v0, v5}, Lof;-><init>(Ljava/lang/Object;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v15, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :cond_2
    sget-object v2, Lbp8;->a:Lbp8;

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_3

    .line 210
    .line 211
    invoke-virtual {v0, v9}, Lto8;->a(Ljava/lang/Integer;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v14, v6}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    const v0, 0x7f1303bd

    .line 221
    .line 222
    .line 223
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v15, v6}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :cond_3
    sget-object v2, Lap8;->a:Lap8;

    .line 235
    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_4

    .line 241
    .line 242
    invoke-virtual {v0, v9}, Lto8;->a(Ljava/lang/Integer;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v14, v6}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    const v1, 0x7f13016d

    .line 252
    .line 253
    .line 254
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(I)V

    .line 255
    .line 256
    .line 257
    const v1, 0x7f1301b4

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    new-instance v1, Lzf1;

    .line 267
    .line 268
    invoke-direct {v1, v0, v5}, Lzf1;-><init>(Ljava/lang/Object;I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v15, v6}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_4
    sget-object v2, Lzo8;->a:Lzo8;

    .line 279
    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_5

    .line 285
    .line 286
    invoke-virtual {v0, v9}, Lto8;->a(Ljava/lang/Integer;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v14, v6}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    const v0, 0x7f130581

    .line 296
    .line 297
    .line 298
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v15, v6}, Landroid/view/View;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    goto :goto_1

    .line 308
    :cond_5
    sget-object v2, Ldp8;->a:Ldp8;

    .line 309
    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_6

    .line 315
    .line 316
    invoke-virtual {v0, v9}, Lto8;->a(Ljava/lang/Integer;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v14, v6}, Landroid/view/View;->setVisibility(I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    const v1, 0x7f1303c8

    .line 326
    .line 327
    .line 328
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(I)V

    .line 329
    .line 330
    .line 331
    const v1, 0x7f13049a

    .line 332
    .line 333
    .line 334
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 338
    .line 339
    .line 340
    new-instance v1, Lh00;

    .line 341
    .line 342
    const/16 v2, 0xf

    .line 343
    .line 344
    invoke-direct {v1, v0, v2}, Lh00;-><init>(Ljava/lang/Object;I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v15, v6}, Landroid/view/View;->setVisibility(I)V

    .line 351
    .line 352
    .line 353
    :goto_1
    move-object v9, v10

    .line 354
    goto :goto_2

    .line 355
    :cond_6
    invoke-static {}, Lq;->j()V

    .line 356
    .line 357
    .line 358
    :goto_2
    return-object v9

    .line 359
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 360
    .line 361
    move-object/from16 v1, p1

    .line 362
    .line 363
    check-cast v1, Lfm7;

    .line 364
    .line 365
    sget v2, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->a0:Lgv7;

    .line 371
    .line 372
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    check-cast v2, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 377
    .line 378
    invoke-static {v2}, Lsz8;->W(Landroid/view/View;)V

    .line 379
    .line 380
    .line 381
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->c0:Lgv7;

    .line 382
    .line 383
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Lqo7;

    .line 388
    .line 389
    invoke-virtual {v0, v1, v8}, Lgm7;->w(Lfm7;Z)V

    .line 390
    .line 391
    .line 392
    return-object v10

    .line 393
    :pswitch_1
    check-cast v0, Lq9;

    .line 394
    .line 395
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Lq9;->invoke()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    return-object v0

    .line 403
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 404
    .line 405
    move-object/from16 v1, p1

    .line 406
    .line 407
    check-cast v1, Ljava/util/List;

    .line 408
    .line 409
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    move-object v10, v0

    .line 413
    check-cast v10, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 414
    .line 415
    invoke-static {v1}, Lji8;->v(Ljava/util/Collection;)Z

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-nez v0, :cond_7

    .line 420
    .line 421
    move-object v2, v1

    .line 422
    goto :goto_3

    .line 423
    :cond_7
    move-object v2, v9

    .line 424
    :goto_3
    if-eqz v2, :cond_8

    .line 425
    .line 426
    const/4 v6, 0x0

    .line 427
    const/16 v7, 0x3f

    .line 428
    .line 429
    const/4 v3, 0x0

    .line 430
    const/4 v4, 0x0

    .line 431
    const/4 v5, 0x0

    .line 432
    invoke-static/range {v2 .. v7}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    :cond_8
    move-object v13, v9

    .line 437
    const/16 v17, 0x3b

    .line 438
    .line 439
    const/16 v18, 0x0

    .line 440
    .line 441
    const/4 v11, 0x0

    .line 442
    const/4 v12, 0x0

    .line 443
    const/4 v14, 0x0

    .line 444
    const/4 v15, 0x0

    .line 445
    const/16 v16, 0x0

    .line 446
    .line 447
    invoke-static/range {v10 .. v18}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    return-object v0

    .line 452
    :pswitch_3
    check-cast v0, Lm37;

    .line 453
    .line 454
    move-object/from16 v1, p1

    .line 455
    .line 456
    check-cast v1, Ljava/lang/String;

    .line 457
    .line 458
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0}, Lm37;->p()Lq47;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    sget-object v2, Lzn4;->a:Lzn4;

    .line 466
    .line 467
    new-instance v2, Lg52;

    .line 468
    .line 469
    invoke-direct {v2, v5, v1, v0}, Lg52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    invoke-static {v2}, Lzn4;->c(Lbt3;)V

    .line 473
    .line 474
    .line 475
    return-object v10

    .line 476
    :pswitch_4
    check-cast v0, Lnd6;

    .line 477
    .line 478
    move-object/from16 v1, p1

    .line 479
    .line 480
    check-cast v1, Lq63;

    .line 481
    .line 482
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    check-cast v0, Lsa1;

    .line 487
    .line 488
    if-nez v0, :cond_9

    .line 489
    .line 490
    goto :goto_4

    .line 491
    :cond_9
    if-eqz v1, :cond_a

    .line 492
    .line 493
    invoke-virtual {v1}, Lq63;->j()Z

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    if-ne v2, v11, :cond_a

    .line 498
    .line 499
    sget v2, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->c0:I

    .line 500
    .line 501
    invoke-static {v0, v1}, Lz85;->E(Lsa1;Lq63;)V

    .line 502
    .line 503
    .line 504
    goto :goto_4

    .line 505
    :cond_a
    const v1, 0x7f1303bd

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    sget-object v2, Lzn4;->a:Lzn4;

    .line 516
    .line 517
    new-instance v2, Lcv;

    .line 518
    .line 519
    const/16 v3, 0xe

    .line 520
    .line 521
    invoke-direct {v2, v3, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 522
    .line 523
    .line 524
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 525
    .line 526
    .line 527
    :goto_4
    return-object v10

    .line 528
    :pswitch_5
    check-cast v0, Lif5;

    .line 529
    .line 530
    move-object/from16 v1, p1

    .line 531
    .line 532
    check-cast v1, Ljava/lang/String;

    .line 533
    .line 534
    iget-object v0, v0, Lif5;->h:Landroid/widget/TextView;

    .line 535
    .line 536
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    .line 538
    .line 539
    return-object v10

    .line 540
    :pswitch_6
    move-object v13, v0

    .line 541
    check-cast v13, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 542
    .line 543
    move-object/from16 v0, p1

    .line 544
    .line 545
    check-cast v0, Lxe5;

    .line 546
    .line 547
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 548
    .line 549
    if-eqz v0, :cond_12

    .line 550
    .line 551
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->Y()Loi7;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    iget-object v1, v1, Loi7;->f:Lm86;

    .line 556
    .line 557
    iget-object v2, v1, Lm86;->k:Ljava/lang/Object;

    .line 558
    .line 559
    check-cast v2, Landroid/widget/TextView;

    .line 560
    .line 561
    iget-object v3, v1, Lm86;->e:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v3, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 564
    .line 565
    invoke-virtual {v3, v11}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 566
    .line 567
    .line 568
    iget-object v4, v1, Lm86;->c:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast v4, Lzx2;

    .line 571
    .line 572
    iget-object v5, v4, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 573
    .line 574
    iget-object v12, v4, Lzx2;->d:Landroid/widget/ImageView;

    .line 575
    .line 576
    iget-object v14, v4, Lzx2;->e:Landroid/widget/TextView;

    .line 577
    .line 578
    iget-object v4, v4, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 579
    .line 580
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 581
    .line 582
    .line 583
    iget-object v4, v1, Lm86;->f:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 586
    .line 587
    iget-object v15, v1, Lm86;->d:Ljava/lang/Object;

    .line 588
    .line 589
    check-cast v15, Landroid/widget/ImageView;

    .line 590
    .line 591
    iget-object v1, v1, Lm86;->n:Ljava/lang/Object;

    .line 592
    .line 593
    check-cast v1, Landroid/widget/TextView;

    .line 594
    .line 595
    move/from16 v16, v11

    .line 596
    .line 597
    sget-object v11, Lwe5;->a:Lwe5;

    .line 598
    .line 599
    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v11

    .line 603
    if-eqz v11, :cond_c

    .line 604
    .line 605
    invoke-static {v13, v2, v9}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->b0(Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 606
    .line 607
    .line 608
    new-array v0, v7, [Landroid/view/View;

    .line 609
    .line 610
    aput-object v3, v0, v8

    .line 611
    .line 612
    aput-object v4, v0, v16

    .line 613
    .line 614
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    check-cast v0, [Landroid/view/View;

    .line 619
    .line 620
    array-length v1, v0

    .line 621
    move v2, v8

    .line 622
    :goto_5
    if-ge v2, v1, :cond_b

    .line 623
    .line 624
    aget-object v3, v0, v2

    .line 625
    .line 626
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 627
    .line 628
    .line 629
    add-int/lit8 v2, v2, 0x1

    .line 630
    .line 631
    goto :goto_5

    .line 632
    :cond_b
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 633
    .line 634
    .line 635
    const v0, 0x7f08018b

    .line 636
    .line 637
    .line 638
    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 639
    .line 640
    .line 641
    const v0, 0x7f1303cc

    .line 642
    .line 643
    .line 644
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 645
    .line 646
    .line 647
    goto/16 :goto_9

    .line 648
    .line 649
    :cond_c
    instance-of v11, v0, Lve5;

    .line 650
    .line 651
    if-eqz v11, :cond_11

    .line 652
    .line 653
    check-cast v0, Lve5;

    .line 654
    .line 655
    iget-object v0, v0, Lve5;->a:Ljava/util/ArrayList;

    .line 656
    .line 657
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 658
    .line 659
    .line 660
    move-result v9

    .line 661
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 662
    .line 663
    .line 664
    move-result-object v9

    .line 665
    invoke-static {v13, v2, v9}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->b0(Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 666
    .line 667
    .line 668
    new-array v2, v7, [Landroid/view/View;

    .line 669
    .line 670
    aput-object v3, v2, v8

    .line 671
    .line 672
    aput-object v4, v2, v16

    .line 673
    .line 674
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    check-cast v2, [Landroid/view/View;

    .line 679
    .line 680
    array-length v9, v2

    .line 681
    move v11, v8

    .line 682
    :goto_6
    if-ge v11, v9, :cond_d

    .line 683
    .line 684
    aget-object v12, v2, v11

    .line 685
    .line 686
    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    .line 687
    .line 688
    .line 689
    add-int/lit8 v11, v11, 0x1

    .line 690
    .line 691
    goto :goto_6

    .line 692
    :cond_d
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 696
    .line 697
    .line 698
    move-result v2

    .line 699
    const/4 v5, 0x3

    .line 700
    if-le v2, v5, :cond_e

    .line 701
    .line 702
    move/from16 v2, v16

    .line 703
    .line 704
    goto :goto_7

    .line 705
    :cond_e
    move v2, v8

    .line 706
    :goto_7
    if-eqz v2, :cond_f

    .line 707
    .line 708
    invoke-static {v0, v5}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 709
    .line 710
    .line 711
    move-result-object v6

    .line 712
    new-instance v9, Ljava/util/ArrayList;

    .line 713
    .line 714
    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 715
    .line 716
    .line 717
    goto :goto_8

    .line 718
    :cond_f
    move-object v9, v0

    .line 719
    :goto_8
    new-instance v6, Lee5;

    .line 720
    .line 721
    new-instance v11, Loe5;

    .line 722
    .line 723
    const-string v16, "onBackupItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/model/provider/MessagesBackupItem;)V"

    .line 724
    .line 725
    const/16 v17, 0x0

    .line 726
    .line 727
    const/4 v12, 0x2

    .line 728
    const-class v14, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 729
    .line 730
    move-object/from16 v18, v15

    .line 731
    .line 732
    const-string v15, "onBackupItemMenuClick"

    .line 733
    .line 734
    move-object/from16 v5, v18

    .line 735
    .line 736
    invoke-direct/range {v11 .. v17}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 737
    .line 738
    .line 739
    invoke-direct {v6, v11}, Lee5;-><init>(Lqt3;)V

    .line 740
    .line 741
    .line 742
    new-instance v16, Lfm7;

    .line 743
    .line 744
    const/16 v20, 0x0

    .line 745
    .line 746
    const/16 v21, 0x1e

    .line 747
    .line 748
    const/16 v18, 0x0

    .line 749
    .line 750
    const/16 v19, 0x0

    .line 751
    .line 752
    move-object/from16 v17, v9

    .line 753
    .line 754
    invoke-direct/range {v16 .. v21}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 755
    .line 756
    .line 757
    move-object/from16 v9, v16

    .line 758
    .line 759
    invoke-virtual {v6, v9, v8}, Lgm7;->w(Lfm7;Z)V

    .line 760
    .line 761
    .line 762
    new-instance v8, Lss;

    .line 763
    .line 764
    invoke-direct {v8, v13, v7}, Lss;-><init>(Ljava/lang/Object;I)V

    .line 765
    .line 766
    .line 767
    iput-object v8, v6, Lgm7;->j:Lqt3;

    .line 768
    .line 769
    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 770
    .line 771
    .line 772
    const-class v3, Landroid/widget/TextView;

    .line 773
    .line 774
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 775
    .line 776
    .line 777
    move-result-object v3

    .line 778
    invoke-virtual {v13, v3}, Lil0;->y([Ljava/lang/Class;)V

    .line 779
    .line 780
    .line 781
    if-eqz v2, :cond_10

    .line 782
    .line 783
    const v2, 0x7f0800c7

    .line 784
    .line 785
    .line 786
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 787
    .line 788
    .line 789
    invoke-static {v13}, Lsz8;->A(Landroid/content/Context;)I

    .line 790
    .line 791
    .line 792
    move-result v2

    .line 793
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 794
    .line 795
    .line 796
    move-result-object v2

    .line 797
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 801
    .line 802
    .line 803
    move-result v2

    .line 804
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    .line 805
    .line 806
    .line 807
    move-result v3

    .line 808
    sub-int/2addr v2, v3

    .line 809
    const-string v3, "+"

    .line 810
    .line 811
    invoke-static {v2, v3}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v2

    .line 815
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v2

    .line 819
    const v3, 0x7f130411

    .line 820
    .line 821
    .line 822
    invoke-virtual {v13, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v2

    .line 826
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    .line 828
    .line 829
    new-instance v1, Lfj2;

    .line 830
    .line 831
    const/4 v2, 0x3

    .line 832
    invoke-direct {v1, v2, v13, v0}, Lfj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    .line 837
    .line 838
    goto :goto_9

    .line 839
    :cond_10
    const/4 v2, 0x3

    .line 840
    const v3, 0x7f080128

    .line 841
    .line 842
    .line 843
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 844
    .line 845
    .line 846
    invoke-static {v13}, Lsz8;->r(Landroid/content/Context;)I

    .line 847
    .line 848
    .line 849
    move-result v3

    .line 850
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 851
    .line 852
    .line 853
    move-result-object v3

    .line 854
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 855
    .line 856
    .line 857
    const v3, 0x7f1301e2

    .line 858
    .line 859
    .line 860
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 861
    .line 862
    .line 863
    new-instance v1, Lce1;

    .line 864
    .line 865
    invoke-direct {v1, v2, v13, v0}, Lce1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 869
    .line 870
    .line 871
    goto :goto_9

    .line 872
    :cond_11
    invoke-static {}, Lq;->j()V

    .line 873
    .line 874
    .line 875
    goto :goto_a

    .line 876
    :cond_12
    :goto_9
    move-object v9, v10

    .line 877
    :goto_a
    return-object v9

    .line 878
    :pswitch_7
    move/from16 v16, v11

    .line 879
    .line 880
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 881
    .line 882
    move-object/from16 v1, p1

    .line 883
    .line 884
    check-cast v1, Ljava/lang/Boolean;

    .line 885
    .line 886
    sget v2, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 887
    .line 888
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 889
    .line 890
    .line 891
    move-result v1

    .line 892
    if-eqz v1, :cond_13

    .line 893
    .line 894
    move/from16 v1, v16

    .line 895
    .line 896
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->Y(Z)V

    .line 897
    .line 898
    .line 899
    :cond_13
    return-object v10

    .line 900
    :pswitch_8
    check-cast v0, Lu34;

    .line 901
    .line 902
    move-object/from16 v1, p1

    .line 903
    .line 904
    check-cast v1, Lij5;

    .line 905
    .line 906
    sget-object v2, Lu34;->c:Ll46;

    .line 907
    .line 908
    invoke-virtual {v1}, Lij5;->a()Ljava/util/Map;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    iget-object v4, v1, Lij5;->a:Ljava/util/LinkedHashMap;

    .line 913
    .line 914
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 915
    .line 916
    .line 917
    move-result-object v3

    .line 918
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 919
    .line 920
    .line 921
    move-result-object v3

    .line 922
    const-wide/16 v5, 0x0

    .line 923
    .line 924
    move-wide v10, v5

    .line 925
    :cond_14
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 926
    .line 927
    .line 928
    move-result v7

    .line 929
    if-eqz v7, :cond_17

    .line 930
    .line 931
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v7

    .line 935
    check-cast v7, Ljava/util/Map$Entry;

    .line 936
    .line 937
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v12

    .line 941
    instance-of v12, v12, Ljava/util/Set;

    .line 942
    .line 943
    if-eqz v12, :cond_14

    .line 944
    .line 945
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v12

    .line 949
    check-cast v12, Ll46;

    .line 950
    .line 951
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v7

    .line 955
    check-cast v7, Ljava/util/Set;

    .line 956
    .line 957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 958
    .line 959
    .line 960
    move-result-wide v13

    .line 961
    invoke-virtual {v0, v13, v14}, Lu34;->b(J)Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v13

    .line 965
    invoke-interface {v7, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 966
    .line 967
    .line 968
    move-result v7

    .line 969
    if-eqz v7, :cond_16

    .line 970
    .line 971
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v7

    .line 975
    new-instance v13, Ljava/util/HashSet;

    .line 976
    .line 977
    const/4 v14, 0x1

    .line 978
    invoke-direct {v13, v14}, Ljava/util/HashSet;-><init>(I)V

    .line 979
    .line 980
    .line 981
    aget-object v7, v7, v8

    .line 982
    .line 983
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    invoke-virtual {v13, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 987
    .line 988
    .line 989
    move-result v14

    .line 990
    if-eqz v14, :cond_15

    .line 991
    .line 992
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 993
    .line 994
    .line 995
    move-result-object v7

    .line 996
    invoke-virtual {v1, v12, v7}, Lij5;->c(Ll46;Ljava/lang/Object;)V

    .line 997
    .line 998
    .line 999
    const-wide/16 v12, 0x1

    .line 1000
    .line 1001
    add-long/2addr v10, v12

    .line 1002
    goto :goto_b

    .line 1003
    :cond_15
    const-string v0, "duplicate element: "

    .line 1004
    .line 1005
    invoke-static {v7, v0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    goto :goto_c

    .line 1009
    :cond_16
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v1}, Lij5;->b()V

    .line 1013
    .line 1014
    .line 1015
    invoke-interface {v4, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    goto :goto_b

    .line 1019
    :cond_17
    cmp-long v0, v10, v5

    .line 1020
    .line 1021
    if-nez v0, :cond_18

    .line 1022
    .line 1023
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v1}, Lij5;->b()V

    .line 1027
    .line 1028
    .line 1029
    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    goto :goto_c

    .line 1033
    :cond_18
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    invoke-virtual {v1, v2, v0}, Lij5;->c(Ll46;Ljava/lang/Object;)V

    .line 1038
    .line 1039
    .line 1040
    :goto_c
    return-object v9

    .line 1041
    :pswitch_9
    check-cast v0, Ldy7;

    .line 1042
    .line 1043
    move-object/from16 v1, p1

    .line 1044
    .line 1045
    check-cast v1, Ljava/lang/String;

    .line 1046
    .line 1047
    invoke-virtual {v0, v1}, Ldy7;->a(Ljava/lang/String;)V

    .line 1048
    .line 1049
    .line 1050
    return-object v10

    .line 1051
    :pswitch_a
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 1052
    .line 1053
    move-object/from16 v1, p1

    .line 1054
    .line 1055
    check-cast v1, Ljava/lang/Integer;

    .line 1056
    .line 1057
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 1058
    .line 1059
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1060
    .line 1061
    .line 1062
    return-object v10

    .line 1063
    :pswitch_b
    check-cast v0, Lzn3;

    .line 1064
    .line 1065
    move-object/from16 v1, p1

    .line 1066
    .line 1067
    check-cast v1, Lxp1;

    .line 1068
    .line 1069
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v1}, Lxp1;->getLevel()I

    .line 1073
    .line 1074
    .line 1075
    move-result v1

    .line 1076
    sget-object v3, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 1077
    .line 1078
    if-eqz v3, :cond_19

    .line 1079
    .line 1080
    const-string v2, "compression_level_folders"

    .line 1081
    .line 1082
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v1

    .line 1086
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v0}, Lzn3;->q()V

    .line 1090
    .line 1091
    .line 1092
    return-object v10

    .line 1093
    :cond_19
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 1094
    .line 1095
    .line 1096
    throw v9

    .line 1097
    :pswitch_c
    check-cast v0, Lrj2;

    .line 1098
    .line 1099
    move-object/from16 v1, p1

    .line 1100
    .line 1101
    check-cast v1, Landroid/view/View;

    .line 1102
    .line 1103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1104
    .line 1105
    .line 1106
    iget-object v0, v0, Lrj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 1107
    .line 1108
    sget-object v2, Liu;->EXPANSION:Liu;

    .line 1109
    .line 1110
    invoke-virtual {v0, v1, v2}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->d0(Landroid/view/View;Liu;)V

    .line 1111
    .line 1112
    .line 1113
    return-object v10

    .line 1114
    :pswitch_d
    check-cast v0, Ljava/lang/String;

    .line 1115
    .line 1116
    move-object/from16 v1, p1

    .line 1117
    .line 1118
    check-cast v1, Lbr2;

    .line 1119
    .line 1120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1121
    .line 1122
    .line 1123
    new-instance v2, Lfl4;

    .line 1124
    .line 1125
    invoke-direct {v2}, Lfl4;-><init>()V

    .line 1126
    .line 1127
    .line 1128
    const-string v3, "path"

    .line 1129
    .line 1130
    invoke-virtual {v2, v3, v0}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    const-string v0, "autorename"

    .line 1134
    .line 1135
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1136
    .line 1137
    invoke-virtual {v2, v0, v3}, Lfl4;->s(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1138
    .line 1139
    .line 1140
    const-string v0, "/2/files/create_folder_v2"

    .line 1141
    .line 1142
    invoke-virtual {v1, v2, v0}, Lbr2;->e(Lfl4;Ljava/lang/String;)Lfl4;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v0

    .line 1146
    const-string v1, "metadata"

    .line 1147
    .line 1148
    invoke-virtual {v0, v1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v0

    .line 1152
    if-eqz v0, :cond_1c

    .line 1153
    .line 1154
    instance-of v1, v0, Lfl4;

    .line 1155
    .line 1156
    if-nez v1, :cond_1a

    .line 1157
    .line 1158
    move-object v0, v9

    .line 1159
    goto :goto_d

    .line 1160
    :cond_1a
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    :goto_d
    if-eqz v0, :cond_1c

    .line 1165
    .line 1166
    new-instance v9, Lwq2;

    .line 1167
    .line 1168
    const-string v1, "id"

    .line 1169
    .line 1170
    invoke-static {v0, v1}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v1

    .line 1174
    const-string v2, "name"

    .line 1175
    .line 1176
    invoke-static {v0, v2}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v2

    .line 1180
    if-nez v2, :cond_1b

    .line 1181
    .line 1182
    goto :goto_e

    .line 1183
    :cond_1b
    move-object v4, v2

    .line 1184
    :goto_e
    const-string v2, "path_display"

    .line 1185
    .line 1186
    invoke-static {v0, v2}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v0

    .line 1190
    invoke-direct {v9, v1, v4, v0}, Lwq2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    goto :goto_f

    .line 1194
    :cond_1c
    const-string v0, "Dropbox create_folder_v2 response did not contain folder metadata"

    .line 1195
    .line 1196
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1197
    .line 1198
    .line 1199
    :goto_f
    return-object v9

    .line 1200
    :pswitch_e
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    .line 1201
    .line 1202
    move-object/from16 v1, p1

    .line 1203
    .line 1204
    check-cast v1, Lwv3;

    .line 1205
    .line 1206
    invoke-static {v0, v1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->$r8$lambda$jsxFV4hfKXuy2KU6J4DRhMGwtcM(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lwv3;)Lbe8;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v0

    .line 1210
    return-object v0

    .line 1211
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 1212
    .line 1213
    move-object/from16 v2, p1

    .line 1214
    .line 1215
    check-cast v2, Lji;

    .line 1216
    .line 1217
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1218
    .line 1219
    .line 1220
    new-instance v1, Lhz;

    .line 1221
    .line 1222
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getAppParts()Ljava/util/List;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v3

    .line 1226
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getLocations()Ljava/util/List;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v4

    .line 1230
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v6

    .line 1234
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getCacheBackup()Z

    .line 1235
    .line 1236
    .line 1237
    move-result v7

    .line 1238
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getCompressionLevel()Lxp1;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v8

    .line 1242
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getMultipleBackupStrategy()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v9

    .line 1246
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getBackupLimits()Ljava/util/List;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v10

    .line 1250
    const/4 v5, 0x0

    .line 1251
    invoke-direct/range {v1 .. v10}, Lhz;-><init>(Lji;Ljava/util/List;Ljava/util/List;Lhk;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;ZLxp1;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/util/List;)V

    .line 1252
    .line 1253
    .line 1254
    return-object v1

    .line 1255
    :pswitch_10
    check-cast v0, Lsj1;

    .line 1256
    .line 1257
    move-object/from16 v1, p1

    .line 1258
    .line 1259
    check-cast v1, Ljava/lang/Integer;

    .line 1260
    .line 1261
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1262
    .line 1263
    .line 1264
    move-result v1

    .line 1265
    sget-object v3, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 1266
    .line 1267
    if-eqz v3, :cond_1d

    .line 1268
    .line 1269
    const-string v2, "onedrive_chunk_size"

    .line 1270
    .line 1271
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v1

    .line 1275
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v0}, Lsj1;->v()V

    .line 1279
    .line 1280
    .line 1281
    return-object v10

    .line 1282
    :cond_1d
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    throw v9

    .line 1286
    :pswitch_11
    check-cast v0, Ldd1;

    .line 1287
    .line 1288
    move-object/from16 v1, p1

    .line 1289
    .line 1290
    check-cast v1, Ltn2;

    .line 1291
    .line 1292
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1293
    .line 1294
    .line 1295
    sget-object v2, Lzn4;->a:Lzn4;

    .line 1296
    .line 1297
    new-instance v2, Lq51;

    .line 1298
    .line 1299
    const/4 v14, 0x1

    .line 1300
    invoke-direct {v2, v0, v1, v9, v14}, Lq51;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 1301
    .line 1302
    .line 1303
    invoke-static {v9, v2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 1304
    .line 1305
    .line 1306
    return-object v10

    .line 1307
    :pswitch_12
    check-cast v0, Lpd1;

    .line 1308
    .line 1309
    move-object/from16 v1, p1

    .line 1310
    .line 1311
    check-cast v1, Lmd1;

    .line 1312
    .line 1313
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1314
    .line 1315
    .line 1316
    iget-object v3, v0, Lpd1;->a:Lrd1;

    .line 1317
    .line 1318
    iget-object v4, v0, Lpd1;->b:Ljava/lang/String;

    .line 1319
    .line 1320
    iget-object v6, v0, Lpd1;->c:Ljava/lang/Long;

    .line 1321
    .line 1322
    const/4 v7, 0x3

    .line 1323
    const/4 v2, 0x0

    .line 1324
    const/4 v5, 0x0

    .line 1325
    invoke-static/range {v1 .. v7}, Lmd1;->a(Lmd1;ZLrd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Lmd1;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v0

    .line 1329
    return-object v0

    .line 1330
    :pswitch_13
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 1331
    .line 1332
    move-object/from16 v1, p1

    .line 1333
    .line 1334
    check-cast v1, Lrb1;

    .line 1335
    .line 1336
    sget v1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 1337
    .line 1338
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->V()Lhf1;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v0

    .line 1342
    invoke-virtual {v0}, Lhf1;->n()V

    .line 1343
    .line 1344
    .line 1345
    return-object v10

    .line 1346
    :pswitch_14
    check-cast v0, Lb21;

    .line 1347
    .line 1348
    move-object/from16 v1, p1

    .line 1349
    .line 1350
    check-cast v1, Lqw6;

    .line 1351
    .line 1352
    iget-object v2, v0, Lb21;->h:Landroid/widget/TextView;

    .line 1353
    .line 1354
    iget-object v3, v0, Lb21;->d:Landroid/widget/TextView;

    .line 1355
    .line 1356
    iget-object v4, v0, Lb21;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 1357
    .line 1358
    iget-object v5, v0, Lb21;->b:Lcy7;

    .line 1359
    .line 1360
    iget-object v5, v5, Lcy7;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 1361
    .line 1362
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    .line 1364
    .line 1365
    new-instance v5, Ldy7;

    .line 1366
    .line 1367
    iget-object v11, v0, Lb21;->a:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 1368
    .line 1369
    iget-object v12, v0, Lb21;->g:Landroid/widget/TextView;

    .line 1370
    .line 1371
    invoke-direct {v5, v11, v12}, Ldy7;-><init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;Landroid/widget/TextView;)V

    .line 1372
    .line 1373
    .line 1374
    iget-object v12, v0, Lb21;->c:Landroid/widget/TextView;

    .line 1375
    .line 1376
    const v13, 0x7f1300e3

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 1380
    .line 1381
    .line 1382
    if-eqz v1, :cond_1e

    .line 1383
    .line 1384
    iget-object v9, v1, Lqw6;->a:Lpw6;

    .line 1385
    .line 1386
    :cond_1e
    check-cast v9, Lz11;

    .line 1387
    .line 1388
    const v12, 0x7f1305c1

    .line 1389
    .line 1390
    .line 1391
    if-nez v9, :cond_20

    .line 1392
    .line 1393
    if-eqz v1, :cond_1f

    .line 1394
    .line 1395
    invoke-virtual {v1}, Lqw6;->a()Z

    .line 1396
    .line 1397
    .line 1398
    move-result v0

    .line 1399
    const/4 v14, 0x1

    .line 1400
    if-ne v0, v14, :cond_1f

    .line 1401
    .line 1402
    const-string v0, "0"

    .line 1403
    .line 1404
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v0

    .line 1408
    invoke-virtual {v11, v12, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    goto :goto_10

    .line 1413
    :cond_1f
    const v0, 0x7f1305a0

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {v11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v0

    .line 1420
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1424
    .line 1425
    .line 1426
    invoke-static {v2}, Lsz8;->W(Landroid/view/View;)V

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1430
    .line 1431
    .line 1432
    goto/16 :goto_12

    .line 1433
    .line 1434
    :cond_20
    invoke-static {v2}, Lsz8;->c0(Landroid/view/View;)V

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1438
    .line 1439
    .line 1440
    const v1, 0x7f0800fb

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 1444
    .line 1445
    .line 1446
    iget-object v1, v9, Lz11;->n:Ljava/util/List;

    .line 1447
    .line 1448
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1449
    .line 1450
    .line 1451
    move-result v1

    .line 1452
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v1

    .line 1456
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v1

    .line 1460
    invoke-virtual {v11, v12, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v1

    .line 1464
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1465
    .line 1466
    .line 1467
    iget-object v1, v9, Lpw6;->g:Lex6;

    .line 1468
    .line 1469
    new-instance v2, Lrf;

    .line 1470
    .line 1471
    const/4 v14, 0x1

    .line 1472
    invoke-direct {v2, v14, v9, v0}, Lrf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1473
    .line 1474
    .line 1475
    new-instance v3, Ls30;

    .line 1476
    .line 1477
    invoke-direct {v3, v14, v2}, Ls30;-><init>(ILmt3;)V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v1, v11, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 1481
    .line 1482
    .line 1483
    iget-object v1, v9, Lpw6;->d:Lgj5;

    .line 1484
    .line 1485
    new-instance v2, Lzs;

    .line 1486
    .line 1487
    invoke-direct {v2, v5, v7}, Lzs;-><init>(Ljava/lang/Object;I)V

    .line 1488
    .line 1489
    .line 1490
    new-instance v3, Ls30;

    .line 1491
    .line 1492
    invoke-direct {v3, v14, v2}, Ls30;-><init>(ILmt3;)V

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v1, v11, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 1496
    .line 1497
    .line 1498
    iget-object v1, v9, Lpw6;->i:Lex6;

    .line 1499
    .line 1500
    new-instance v2, Llm;

    .line 1501
    .line 1502
    const/4 v3, 0x7

    .line 1503
    invoke-direct {v2, v0, v3}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 1504
    .line 1505
    .line 1506
    new-instance v3, Ls30;

    .line 1507
    .line 1508
    invoke-direct {v3, v14, v2}, Ls30;-><init>(ILmt3;)V

    .line 1509
    .line 1510
    .line 1511
    invoke-virtual {v1, v11, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 1512
    .line 1513
    .line 1514
    iget-object v1, v9, Lpw6;->a:Lcz7;

    .line 1515
    .line 1516
    check-cast v1, Lzy7;

    .line 1517
    .line 1518
    iget-boolean v1, v1, Lzy7;->c:Z

    .line 1519
    .line 1520
    if-eqz v1, :cond_21

    .line 1521
    .line 1522
    iget-object v1, v0, Lb21;->f:Lkm5;

    .line 1523
    .line 1524
    invoke-virtual {v1, v14}, Lkm5;->t(Z)V

    .line 1525
    .line 1526
    .line 1527
    iput-boolean v8, v5, Ldy7;->e:Z

    .line 1528
    .line 1529
    invoke-virtual {v5}, Ldy7;->d()V

    .line 1530
    .line 1531
    .line 1532
    goto :goto_11

    .line 1533
    :cond_21
    new-instance v1, Llh6;

    .line 1534
    .line 1535
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1536
    .line 1537
    .line 1538
    iget-object v2, v9, Lpw6;->e:Lex6;

    .line 1539
    .line 1540
    new-instance v3, La21;

    .line 1541
    .line 1542
    invoke-direct {v3, v9, v1, v0, v5}, La21;-><init>(Lz11;Llh6;Lb21;Ldy7;)V

    .line 1543
    .line 1544
    .line 1545
    new-instance v1, Ls30;

    .line 1546
    .line 1547
    invoke-direct {v1, v14, v3}, Ls30;-><init>(ILmt3;)V

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {v2, v11, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 1551
    .line 1552
    .line 1553
    :goto_11
    iget-object v1, v9, Lpw6;->c:Lgj5;

    .line 1554
    .line 1555
    new-instance v2, Lkl;

    .line 1556
    .line 1557
    invoke-direct {v2, v0, v5, v9, v14}, Lkl;-><init>(Ljava/lang/Object;Ldy7;Lpw6;I)V

    .line 1558
    .line 1559
    .line 1560
    new-instance v0, Ls30;

    .line 1561
    .line 1562
    invoke-direct {v0, v14, v2}, Ls30;-><init>(ILmt3;)V

    .line 1563
    .line 1564
    .line 1565
    invoke-virtual {v1, v11, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 1566
    .line 1567
    .line 1568
    :goto_12
    return-object v10

    .line 1569
    :pswitch_15
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 1570
    .line 1571
    move-object/from16 v1, p1

    .line 1572
    .line 1573
    check-cast v1, Lrw6;

    .line 1574
    .line 1575
    sget v2, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 1576
    .line 1577
    sget-object v2, Lhy7;->a:Lhy7;

    .line 1578
    .line 1579
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1580
    .line 1581
    .line 1582
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v1

    .line 1586
    invoke-static {v1}, Lhy7;->b(Ljava/util/List;)Z

    .line 1587
    .line 1588
    .line 1589
    invoke-static {v0, v9}, Lhy7;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1590
    .line 1591
    .line 1592
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1593
    .line 1594
    .line 1595
    return-object v10

    .line 1596
    nop

    .line 1597
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
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
