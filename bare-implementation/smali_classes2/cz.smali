.class public final synthetic Lcz;
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

    .line 11
    iput p2, p0, Lcz;->a:I

    iput-object p1, p0, Lcz;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Llh6;Lfp6;)V
    .locals 0

    .line 1
    const/16 p2, 0xf

    .line 2
    .line 3
    iput p2, p0, Lcz;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcz;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcz;->a:I

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    const/4 v7, 0x3

    .line 8
    const/4 v8, 0x2

    .line 9
    const/4 v10, 0x1

    .line 10
    const/4 v11, 0x0

    .line 11
    sget-object v12, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    iget-object v0, v0, Lcz;->b:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v0, Liu8;

    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Lct8;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object v2, Lzs8;->a:Lzs8;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget-object v0, v0, Liu8;->k:Lex6;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lex6;->l(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-object v12

    .line 45
    :pswitch_0
    check-cast v0, Lyp8;

    .line 46
    .line 47
    move-object/from16 v1, p1

    .line 48
    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    iget-object v0, v0, Lyp8;->h:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    return-object v12

    .line 57
    :pswitch_1
    check-cast v0, Lyp8;

    .line 58
    .line 59
    move-object/from16 v1, p1

    .line 60
    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    iget-object v0, v0, Lyp8;->h:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    return-object v12

    .line 69
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 70
    .line 71
    move-object/from16 v1, p1

    .line 72
    .line 73
    check-cast v1, Lyo8;

    .line 74
    .line 75
    sget v2, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->W:I

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->X()Lro8;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-object v2, v2, Lro8;->f:Lso8;

    .line 85
    .line 86
    iget-object v13, v2, Lso8;->d:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v13, Landroid/widget/ImageView;

    .line 89
    .line 90
    iget-object v14, v2, Lso8;->e:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v14, Landroid/widget/ImageView;

    .line 93
    .line 94
    iget-object v15, v2, Lso8;->n:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v15, Landroid/widget/TextView;

    .line 97
    .line 98
    iget-object v3, v2, Lso8;->k:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v3, Landroid/widget/TextView;

    .line 101
    .line 102
    iget-object v4, v2, Lso8;->f:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v4, Landroid/view/View;

    .line 105
    .line 106
    iget-object v5, v2, Lso8;->b:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 109
    .line 110
    invoke-virtual {v5, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    iget-object v2, v2, Lso8;->c:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 116
    .line 117
    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    const v6, 0x7f1301d2

    .line 121
    .line 122
    .line 123
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(I)V

    .line 124
    .line 125
    .line 126
    const v6, 0x7f130074

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 130
    .line 131
    .line 132
    instance-of v6, v1, Lwo8;

    .line 133
    .line 134
    const/16 v20, 0x4

    .line 135
    .line 136
    if-eqz v6, :cond_1

    .line 137
    .line 138
    move/from16 v9, v20

    .line 139
    .line 140
    :goto_1
    const/16 v21, 0x0

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_1
    const/4 v9, 0x0

    .line 144
    goto :goto_1

    .line 145
    :goto_2
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    if-eqz v6, :cond_2

    .line 149
    .line 150
    move/from16 v9, v20

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_2
    move/from16 v9, v21

    .line 154
    .line 155
    :goto_3
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->R:Lgv7;

    .line 159
    .line 160
    invoke-virtual {v9}, Lgv7;->getValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    check-cast v9, Lhz4;

    .line 165
    .line 166
    new-array v7, v7, [Landroid/view/View;

    .line 167
    .line 168
    aput-object v13, v7, v21

    .line 169
    .line 170
    aput-object v14, v7, v10

    .line 171
    .line 172
    aput-object v4, v7, v8

    .line 173
    .line 174
    iget-object v4, v9, Lhz4;->a:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 177
    .line 178
    .line 179
    invoke-static {v4, v7}, Lel1;->L0(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    new-instance v4, Lw18;

    .line 183
    .line 184
    invoke-static {v0}, Lsz8;->z(Landroid/content/Context;)I

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    invoke-direct {v4, v15, v7}, Lw18;-><init>(Landroid/widget/TextView;I)V

    .line 189
    .line 190
    .line 191
    new-instance v7, Lw18;

    .line 192
    .line 193
    invoke-static {v0}, Lsz8;->A(Landroid/content/Context;)I

    .line 194
    .line 195
    .line 196
    move-result v15

    .line 197
    invoke-direct {v7, v3, v15}, Lw18;-><init>(Landroid/widget/TextView;I)V

    .line 198
    .line 199
    .line 200
    filled-new-array {v4, v7}, [Lw18;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    iget-object v4, v9, Lhz4;->b:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 207
    .line 208
    .line 209
    invoke-static {v4, v3}, Lel1;->L0(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    iput-boolean v10, v9, Lhz4;->e:Z

    .line 213
    .line 214
    invoke-virtual {v9, v6}, Lhz4;->a(Z)V

    .line 215
    .line 216
    .line 217
    filled-new-array {v13, v14}, [Landroid/widget/ImageView;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    new-instance v4, Landroid/graphics/ColorMatrix;

    .line 222
    .line 223
    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 224
    .line 225
    .line 226
    if-eqz v6, :cond_3

    .line 227
    .line 228
    const/4 v6, 0x0

    .line 229
    goto :goto_4

    .line 230
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    .line 231
    .line 232
    :goto_4
    invoke-virtual {v4, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 233
    .line 234
    .line 235
    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    .line 236
    .line 237
    invoke-direct {v6, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 238
    .line 239
    .line 240
    move/from16 v4, v21

    .line 241
    .line 242
    :goto_5
    if-ge v4, v8, :cond_4

    .line 243
    .line 244
    aget-object v7, v3, v4

    .line 245
    .line 246
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 247
    .line 248
    .line 249
    add-int/lit8 v4, v4, 0x1

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_4
    sget-object v3, Lwo8;->a:Lwo8;

    .line 253
    .line 254
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    sget-object v4, Le66;->a:Le66;

    .line 259
    .line 260
    if-eqz v3, :cond_7

    .line 261
    .line 262
    new-instance v0, Lq63;

    .line 263
    .line 264
    sget-object v1, Lry5;->u:Ljava/lang/String;

    .line 265
    .line 266
    move/from16 v1, v21

    .line 267
    .line 268
    invoke-static {v1, v11}, Lqy5;->f(ZLzn7;)Lry5;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    iget-object v2, v2, Lry5;->p:Ljava/lang/String;

    .line 273
    .line 274
    const-string v3, "home_wall.wal"

    .line 275
    .line 276
    invoke-static {v2, v3}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-direct {v0, v2, v8}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 281
    .line 282
    .line 283
    new-instance v2, Lq63;

    .line 284
    .line 285
    invoke-static {v1, v11}, Lqy5;->f(ZLzn7;)Lry5;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    iget-object v1, v1, Lry5;->p:Ljava/lang/String;

    .line 290
    .line 291
    const-string v3, "lock_wall.wal"

    .line 292
    .line 293
    invoke-static {v1, v3}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-direct {v2, v1, v8}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0}, Lq63;->j()Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_5

    .line 305
    .line 306
    invoke-virtual {v0}, Lq63;->A()J

    .line 307
    .line 308
    .line 309
    move-result-wide v5

    .line 310
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v28

    .line 318
    invoke-virtual {v0}, Lq63;->z()J

    .line 319
    .line 320
    .line 321
    move-result-wide v24

    .line 322
    invoke-virtual {v0}, Lq63;->A()J

    .line 323
    .line 324
    .line 325
    move-result-wide v26

    .line 326
    new-instance v22, Lyn8;

    .line 327
    .line 328
    const/16 v29, 0x30

    .line 329
    .line 330
    move-object/from16 v23, v0

    .line 331
    .line 332
    invoke-direct/range {v22 .. v29}, Lyn8;-><init>(Lq63;JJLjava/lang/String;I)V

    .line 333
    .line 334
    .line 335
    move-object/from16 v0, v22

    .line 336
    .line 337
    invoke-static {v0, v13, v10, v4}, Ljm1;->d(Lyn8;Landroid/widget/ImageView;ZLe66;)V

    .line 338
    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_5
    move-object/from16 v23, v0

    .line 342
    .line 343
    :goto_6
    sget-object v0, Ltv7;->a:Lgv7;

    .line 344
    .line 345
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Landroid/app/WallpaperManager;

    .line 350
    .line 351
    invoke-virtual {v0, v8}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    const/4 v1, -0x1

    .line 356
    if-eq v0, v1, :cond_6

    .line 357
    .line 358
    invoke-virtual {v2}, Lq63;->j()Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_6

    .line 363
    .line 364
    invoke-virtual {v2}, Lq63;->A()J

    .line 365
    .line 366
    .line 367
    move-result-wide v0

    .line 368
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v26

    .line 376
    invoke-virtual {v2}, Lq63;->z()J

    .line 377
    .line 378
    .line 379
    move-result-wide v22

    .line 380
    invoke-virtual {v2}, Lq63;->A()J

    .line 381
    .line 382
    .line 383
    move-result-wide v24

    .line 384
    new-instance v20, Lyn8;

    .line 385
    .line 386
    const/16 v27, 0x30

    .line 387
    .line 388
    move-object/from16 v21, v2

    .line 389
    .line 390
    invoke-direct/range {v20 .. v27}, Lyn8;-><init>(Lq63;JJLjava/lang/String;I)V

    .line 391
    .line 392
    .line 393
    move-object/from16 v0, v20

    .line 394
    .line 395
    invoke-static {v0, v14, v10, v4}, Ljm1;->d(Lyn8;Landroid/widget/ImageView;ZLe66;)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_7

    .line 399
    .line 400
    :cond_6
    invoke-virtual/range {v23 .. v23}, Lq63;->j()Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-eqz v0, :cond_9

    .line 405
    .line 406
    invoke-virtual/range {v23 .. v23}, Lq63;->A()J

    .line 407
    .line 408
    .line 409
    move-result-wide v0

    .line 410
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v28

    .line 418
    invoke-virtual/range {v23 .. v23}, Lq63;->z()J

    .line 419
    .line 420
    .line 421
    move-result-wide v24

    .line 422
    invoke-virtual/range {v23 .. v23}, Lq63;->A()J

    .line 423
    .line 424
    .line 425
    move-result-wide v26

    .line 426
    new-instance v22, Lyn8;

    .line 427
    .line 428
    const/16 v29, 0x30

    .line 429
    .line 430
    invoke-direct/range {v22 .. v29}, Lyn8;-><init>(Lq63;JJLjava/lang/String;I)V

    .line 431
    .line 432
    .line 433
    move-object/from16 v0, v22

    .line 434
    .line 435
    invoke-static {v0, v14, v10, v4}, Ljm1;->d(Lyn8;Landroid/widget/ImageView;ZLe66;)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_7

    .line 439
    .line 440
    :cond_7
    instance-of v3, v1, Lxo8;

    .line 441
    .line 442
    if-eqz v3, :cond_8

    .line 443
    .line 444
    move-object v3, v1

    .line 445
    check-cast v3, Lxo8;

    .line 446
    .line 447
    iget-object v6, v3, Lxo8;->a:Lrv7;

    .line 448
    .line 449
    iget-object v6, v6, Lrv7;->a:Lq63;

    .line 450
    .line 451
    invoke-virtual {v6}, Lq63;->A()J

    .line 452
    .line 453
    .line 454
    move-result-wide v7

    .line 455
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 456
    .line 457
    .line 458
    move-result v7

    .line 459
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v25

    .line 463
    invoke-virtual {v6}, Lq63;->z()J

    .line 464
    .line 465
    .line 466
    move-result-wide v21

    .line 467
    invoke-virtual {v6}, Lq63;->A()J

    .line 468
    .line 469
    .line 470
    move-result-wide v23

    .line 471
    new-instance v19, Lyn8;

    .line 472
    .line 473
    const/16 v26, 0x30

    .line 474
    .line 475
    move-object/from16 v20, v6

    .line 476
    .line 477
    invoke-direct/range {v19 .. v26}, Lyn8;-><init>(Lq63;JJLjava/lang/String;I)V

    .line 478
    .line 479
    .line 480
    move-object/from16 v6, v19

    .line 481
    .line 482
    invoke-static {v6, v13, v10, v4}, Ljm1;->d(Lyn8;Landroid/widget/ImageView;ZLe66;)V

    .line 483
    .line 484
    .line 485
    iget-object v3, v3, Lxo8;->b:Lrv7;

    .line 486
    .line 487
    iget-object v3, v3, Lrv7;->a:Lq63;

    .line 488
    .line 489
    invoke-virtual {v3}, Lq63;->A()J

    .line 490
    .line 491
    .line 492
    move-result-wide v6

    .line 493
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 494
    .line 495
    .line 496
    move-result v6

    .line 497
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v25

    .line 501
    invoke-virtual {v3}, Lq63;->z()J

    .line 502
    .line 503
    .line 504
    move-result-wide v21

    .line 505
    invoke-virtual {v3}, Lq63;->A()J

    .line 506
    .line 507
    .line 508
    move-result-wide v23

    .line 509
    new-instance v19, Lyn8;

    .line 510
    .line 511
    move-object/from16 v20, v3

    .line 512
    .line 513
    invoke-direct/range {v19 .. v26}, Lyn8;-><init>(Lq63;JJLjava/lang/String;I)V

    .line 514
    .line 515
    .line 516
    move-object/from16 v3, v19

    .line 517
    .line 518
    invoke-static {v3, v14, v10, v4}, Ljm1;->d(Lyn8;Landroid/widget/ImageView;ZLe66;)V

    .line 519
    .line 520
    .line 521
    new-instance v3, Li10;

    .line 522
    .line 523
    const/16 v4, 0x8

    .line 524
    .line 525
    invoke-direct {v3, v4, v0, v1}, Li10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    .line 530
    .line 531
    new-instance v1, Lgs;

    .line 532
    .line 533
    const/16 v2, 0xb

    .line 534
    .line 535
    invoke-direct {v1, v0, v2}, Lgs;-><init>(Ljava/lang/Object;I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    .line 540
    .line 541
    goto :goto_7

    .line 542
    :cond_8
    sget-object v2, Lvo8;->a:Lvo8;

    .line 543
    .line 544
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    if-eqz v1, :cond_a

    .line 549
    .line 550
    const v1, 0x7f1303d3

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    sget-object v2, Lzn4;->a:Lzn4;

    .line 561
    .line 562
    new-instance v2, Lcv;

    .line 563
    .line 564
    const/16 v3, 0xe

    .line 565
    .line 566
    invoke-direct {v2, v3, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 570
    .line 571
    .line 572
    :cond_9
    :goto_7
    move-object v11, v12

    .line 573
    goto :goto_8

    .line 574
    :cond_a
    invoke-static {}, Lq;->j()V

    .line 575
    .line 576
    .line 577
    :goto_8
    return-object v11

    .line 578
    :pswitch_3
    check-cast v0, Loo8;

    .line 579
    .line 580
    move-object/from16 v1, p1

    .line 581
    .line 582
    check-cast v1, Lao8;

    .line 583
    .line 584
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0, v1}, Loo8;->U(Lao8;)V

    .line 588
    .line 589
    .line 590
    return-object v12

    .line 591
    :pswitch_4
    check-cast v0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;

    .line 592
    .line 593
    move-object/from16 v1, p1

    .line 594
    .line 595
    check-cast v1, Ljava/lang/Boolean;

    .line 596
    .line 597
    sget-object v1, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O:Lao8;

    .line 598
    .line 599
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->x(Landroid/content/Context;)V

    .line 600
    .line 601
    .line 602
    return-object v12

    .line 603
    :pswitch_5
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 604
    .line 605
    move-object/from16 v1, p1

    .line 606
    .line 607
    check-cast v1, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 608
    .line 609
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    .line 611
    .line 612
    move-object v2, v0

    .line 613
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 614
    .line 615
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getLocations()Ljava/util/List;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-static {v0}, Lji8;->r(Ljava/util/Collection;)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-eqz v0, :cond_b

    .line 624
    .line 625
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 626
    .line 627
    if-eq v1, v0, :cond_b

    .line 628
    .line 629
    goto :goto_9

    .line 630
    :cond_b
    move-object v1, v11

    .line 631
    :goto_9
    if-eqz v1, :cond_c

    .line 632
    .line 633
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v11

    .line 637
    :cond_c
    move-object v6, v11

    .line 638
    const/16 v9, 0x37

    .line 639
    .line 640
    const/4 v10, 0x0

    .line 641
    const/4 v3, 0x0

    .line 642
    const/4 v4, 0x0

    .line 643
    const/4 v5, 0x0

    .line 644
    const/4 v7, 0x0

    .line 645
    const/4 v8, 0x0

    .line 646
    invoke-static/range {v2 .. v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    return-object v0

    .line 651
    :pswitch_6
    check-cast v0, Lil0;

    .line 652
    .line 653
    move-object/from16 v1, p1

    .line 654
    .line 655
    check-cast v1, Ljava/lang/Boolean;

    .line 656
    .line 657
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    .line 659
    .line 660
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 661
    .line 662
    .line 663
    move-result v1

    .line 664
    if-nez v1, :cond_d

    .line 665
    .line 666
    invoke-virtual {v0}, Lil0;->H()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .line 668
    .line 669
    :catch_0
    :cond_d
    return-object v12

    .line 670
    :pswitch_7
    check-cast v0, Lm37;

    .line 671
    .line 672
    move-object/from16 v1, p1

    .line 673
    .line 674
    check-cast v1, Ljava/lang/String;

    .line 675
    .line 676
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v0}, Lm37;->p()Lq47;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    sget-object v3, Lzn4;->a:Lzn4;

    .line 684
    .line 685
    new-instance v3, Llx;

    .line 686
    .line 687
    invoke-direct {v3, v2, v0, v1}, Llx;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 688
    .line 689
    .line 690
    invoke-static {v3}, Lzn4;->c(Lbt3;)V

    .line 691
    .line 692
    .line 693
    return-object v12

    .line 694
    :pswitch_8
    check-cast v0, Llh6;

    .line 695
    .line 696
    move-object/from16 v1, p1

    .line 697
    .line 698
    check-cast v1, Lzy6;

    .line 699
    .line 700
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 701
    .line 702
    .line 703
    iget-object v1, v1, Lzy6;->a:Ljava/util/List;

    .line 704
    .line 705
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 706
    .line 707
    .line 708
    move-result v3

    .line 709
    if-eqz v3, :cond_e

    .line 710
    .line 711
    goto :goto_b

    .line 712
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .line 716
    .line 717
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 718
    .line 719
    .line 720
    move-result v4

    .line 721
    new-instance v5, Ljava/lang/StringBuilder;

    .line 722
    .line 723
    const-string v6, "extract_warning_count="

    .line 724
    .line 725
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v4

    .line 735
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    const/4 v9, 0x0

    .line 746
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 747
    .line 748
    .line 749
    move-result v4

    .line 750
    if-eqz v4, :cond_10

    .line 751
    .line 752
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v4

    .line 756
    add-int/lit8 v5, v9, 0x1

    .line 757
    .line 758
    if-ltz v9, :cond_f

    .line 759
    .line 760
    check-cast v4, Ljava/lang/String;

    .line 761
    .line 762
    const-string v6, "extract_warning_"

    .line 763
    .line 764
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    const/16 v6, 0x3d

    .line 771
    .line 772
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    move v9, v5

    .line 782
    goto :goto_a

    .line 783
    :cond_f
    invoke-static {}, Lfl1;->F0()V

    .line 784
    .line 785
    .line 786
    throw v11

    .line 787
    :cond_10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    invoke-static {v1}, Lnq7;->J0(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v11

    .line 799
    :goto_b
    iput-object v11, v0, Llh6;->a:Ljava/lang/Object;

    .line 800
    .line 801
    return-object v12

    .line 802
    :pswitch_9
    check-cast v0, Lnd6;

    .line 803
    .line 804
    move-object/from16 v1, p1

    .line 805
    .line 806
    check-cast v1, Lq63;

    .line 807
    .line 808
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    check-cast v0, Lsa1;

    .line 813
    .line 814
    if-nez v0, :cond_11

    .line 815
    .line 816
    goto :goto_c

    .line 817
    :cond_11
    if-eqz v1, :cond_12

    .line 818
    .line 819
    invoke-virtual {v1}, Lq63;->j()Z

    .line 820
    .line 821
    .line 822
    move-result v2

    .line 823
    if-ne v2, v10, :cond_12

    .line 824
    .line 825
    sget v2, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 826
    .line 827
    invoke-static {v0, v1}, Ljd4;->G(Lsa1;Lq63;)V

    .line 828
    .line 829
    .line 830
    goto :goto_c

    .line 831
    :cond_12
    const v1, 0x7f1303bd

    .line 832
    .line 833
    .line 834
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 839
    .line 840
    .line 841
    sget-object v2, Lzn4;->a:Lzn4;

    .line 842
    .line 843
    new-instance v2, Lcv;

    .line 844
    .line 845
    const/16 v3, 0xe

    .line 846
    .line 847
    invoke-direct {v2, v3, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 848
    .line 849
    .line 850
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 851
    .line 852
    .line 853
    :goto_c
    return-object v12

    .line 854
    :pswitch_a
    check-cast v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 855
    .line 856
    move-object/from16 v1, p1

    .line 857
    .line 858
    check-cast v1, Lv76;

    .line 859
    .line 860
    sget v2, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 861
    .line 862
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 863
    .line 864
    .line 865
    iget-object v1, v1, Lv76;->c:Ljava/lang/String;

    .line 866
    .line 867
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v2

    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    .line 872
    .line 873
    const-string v4, "https://play.google.com/store/account/subscriptions?sku="

    .line 874
    .line 875
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    const-string v1, "&package="

    .line 882
    .line 883
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v1

    .line 893
    invoke-static {v0, v1}, Lai8;->k(Landroid/content/Context;Ljava/lang/String;)Z

    .line 894
    .line 895
    .line 896
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 897
    .line 898
    .line 899
    return-object v12

    .line 900
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/d;

    .line 901
    .line 902
    move-object/from16 v1, p1

    .line 903
    .line 904
    check-cast v1, Lc45;

    .line 905
    .line 906
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 907
    .line 908
    .line 909
    iget-boolean v2, v1, Lc45;->b:Z

    .line 910
    .line 911
    if-eqz v2, :cond_13

    .line 912
    .line 913
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 914
    .line 915
    iget-object v4, v0, La55;->b:Ljava/lang/String;

    .line 916
    .line 917
    const/4 v7, 0x4

    .line 918
    const/4 v8, 0x0

    .line 919
    const-string v5, "Anonymous sign in successful"

    .line 920
    .line 921
    const/4 v6, 0x0

    .line 922
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 923
    .line 924
    .line 925
    goto :goto_d

    .line 926
    :cond_13
    iget-object v1, v1, Lc45;->a:Ljava/lang/Exception;

    .line 927
    .line 928
    if-eqz v1, :cond_14

    .line 929
    .line 930
    sget-object v13, Lvr6;->INSTANCE:Lvr6;

    .line 931
    .line 932
    iget-object v14, v0, La55;->b:Ljava/lang/String;

    .line 933
    .line 934
    const/16 v18, 0x8

    .line 935
    .line 936
    const/16 v19, 0x0

    .line 937
    .line 938
    const-string v15, "Anonymous auth failed"

    .line 939
    .line 940
    const/16 v17, 0x0

    .line 941
    .line 942
    move-object/from16 v16, v1

    .line 943
    .line 944
    invoke-static/range {v13 .. v19}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 945
    .line 946
    .line 947
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 948
    .line 949
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    invoke-static/range {v16 .. v16}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v3

    .line 957
    sget-object v4, Lzn4;->a:Lzn4;

    .line 958
    .line 959
    invoke-static {v1, v3}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    goto :goto_d

    .line 963
    :cond_14
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 964
    .line 965
    iget-object v6, v0, La55;->b:Ljava/lang/String;

    .line 966
    .line 967
    const/4 v9, 0x4

    .line 968
    const/4 v10, 0x0

    .line 969
    const-string v7, "Anonymous auth failed"

    .line 970
    .line 971
    const/4 v8, 0x0

    .line 972
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 973
    .line 974
    .line 975
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 976
    .line 977
    .line 978
    if-eqz v2, :cond_15

    .line 979
    .line 980
    sget-object v1, Lorg/swiftapps/swiftbackup/intro/d$b;->SIGNED_IN:Lorg/swiftapps/swiftbackup/intro/d$b;

    .line 981
    .line 982
    goto :goto_e

    .line 983
    :cond_15
    sget-object v1, Lorg/swiftapps/swiftbackup/intro/d$b;->NOT_SIGNED_IN:Lorg/swiftapps/swiftbackup/intro/d$b;

    .line 984
    .line 985
    :goto_e
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/intro/d;->p(Lorg/swiftapps/swiftbackup/intro/d$b;)V

    .line 986
    .line 987
    .line 988
    return-object v12

    .line 989
    :pswitch_c
    check-cast v0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 990
    .line 991
    move-object/from16 v1, p1

    .line 992
    .line 993
    check-cast v1, Ldd1;

    .line 994
    .line 995
    sget-object v2, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 996
    .line 997
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 998
    .line 999
    .line 1000
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 1001
    .line 1002
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v4

    .line 1006
    invoke-virtual {v1}, Ldd1;->getConstant()Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    const-string v5, "Showing previous cloud connect dialog ["

    .line 1011
    .line 1012
    const-string v6, "]"

    .line 1013
    .line 1014
    invoke-static {v5, v2, v6}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v5

    .line 1018
    const/4 v7, 0x4

    .line 1019
    const/4 v8, 0x0

    .line 1020
    const/4 v6, 0x0

    .line 1021
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1022
    .line 1023
    .line 1024
    new-instance v2, Lsr1;

    .line 1025
    .line 1026
    new-instance v3, Lrm;

    .line 1027
    .line 1028
    const/16 v4, 0xb

    .line 1029
    .line 1030
    invoke-direct {v3, v4, v0, v1}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1031
    .line 1032
    .line 1033
    invoke-direct {v2, v0, v1, v3}, Lsr1;-><init>(Landroid/app/Activity;Ldd1;Lrm;)V

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v2, v0, v11}, Lol1;->G(Lzm;Ljava/lang/Integer;)V

    .line 1037
    .line 1038
    .line 1039
    return-object v12

    .line 1040
    :pswitch_d
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 1041
    .line 1042
    move-object/from16 v1, p1

    .line 1043
    .line 1044
    check-cast v1, Lfm7;

    .line 1045
    .line 1046
    sget v2, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 1047
    .line 1048
    if-eqz v1, :cond_17

    .line 1049
    .line 1050
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v2

    .line 1054
    iget-object v3, v1, Lfm7;->a:Ljava/util/List;

    .line 1055
    .line 1056
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1057
    .line 1058
    .line 1059
    move-result v3

    .line 1060
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    const-string v5, "onAdapterState: Folders received = "

    .line 1063
    .line 1064
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v3

    .line 1074
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    .line 1076
    .line 1077
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V:Lcp3;

    .line 1078
    .line 1079
    const/4 v3, 0x0

    .line 1080
    invoke-virtual {v2, v1, v3}, Lgm7;->w(Lfm7;Z)V

    .line 1081
    .line 1082
    .line 1083
    iget-boolean v1, v1, Lfm7;->d:Z

    .line 1084
    .line 1085
    if-eqz v1, :cond_16

    .line 1086
    .line 1087
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->W()Landroidx/recyclerview/widget/RecyclerView;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v1

    .line 1091
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 1092
    .line 1093
    .line 1094
    :cond_16
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->b0()V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v2}, Lgm7;->p()Z

    .line 1098
    .line 1099
    .line 1100
    move-result v1

    .line 1101
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Z(Z)V

    .line 1102
    .line 1103
    .line 1104
    :cond_17
    return-object v12

    .line 1105
    :pswitch_e
    check-cast v0, Ljava/util/HashSet;

    .line 1106
    .line 1107
    move-object/from16 v1, p1

    .line 1108
    .line 1109
    check-cast v1, Ljava/lang/String;

    .line 1110
    .line 1111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1115
    .line 1116
    .line 1117
    move-result v0

    .line 1118
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    return-object v0

    .line 1123
    :pswitch_f
    check-cast v0, Lq63;

    .line 1124
    .line 1125
    move-object/from16 v1, p1

    .line 1126
    .line 1127
    check-cast v1, Ljava/lang/String;

    .line 1128
    .line 1129
    new-instance v2, Ljava/io/File;

    .line 1130
    .line 1131
    invoke-virtual {v0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v0

    .line 1139
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v0

    .line 1146
    return-object v0

    .line 1147
    :pswitch_10
    check-cast v0, Lrj2;

    .line 1148
    .line 1149
    move-object/from16 v1, p1

    .line 1150
    .line 1151
    check-cast v1, Landroid/view/View;

    .line 1152
    .line 1153
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1154
    .line 1155
    .line 1156
    iget-object v0, v0, Lrj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 1157
    .line 1158
    sget-object v2, Liu;->DATA:Liu;

    .line 1159
    .line 1160
    invoke-virtual {v0, v1, v2}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->d0(Landroid/view/View;Liu;)V

    .line 1161
    .line 1162
    .line 1163
    return-object v12

    .line 1164
    :pswitch_11
    check-cast v0, Lx92;

    .line 1165
    .line 1166
    move-object/from16 v1, p1

    .line 1167
    .line 1168
    check-cast v1, Ljava/util/List;

    .line 1169
    .line 1170
    if-eqz v1, :cond_1a

    .line 1171
    .line 1172
    const-string v2, "compact_storage_info"

    .line 1173
    .line 1174
    :try_start_1
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1175
    .line 1176
    if-eqz v3, :cond_18

    .line 1177
    .line 1178
    const/4 v4, 0x0

    .line 1179
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v2

    .line 1183
    goto :goto_f

    .line 1184
    :cond_18
    const-string v2, "prefs"

    .line 1185
    .line 1186
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    throw v11
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1190
    :catch_1
    const/4 v2, 0x0

    .line 1191
    :goto_f
    iget-object v3, v0, Lrl0;->b:Ljk8;

    .line 1192
    .line 1193
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1194
    .line 1195
    .line 1196
    check-cast v3, Ly92;

    .line 1197
    .line 1198
    iget-object v3, v3, Ly92;->f:Lpp0;

    .line 1199
    .line 1200
    iget-object v3, v3, Lpp0;->d:Ljava/lang/Object;

    .line 1201
    .line 1202
    check-cast v3, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 1203
    .line 1204
    new-instance v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 1205
    .line 1206
    invoke-virtual {v0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v5

    .line 1210
    invoke-direct {v4, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v4, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i1(I)V

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 1217
    .line 1218
    .line 1219
    iget-object v3, v0, Lrl0;->b:Ljk8;

    .line 1220
    .line 1221
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1222
    .line 1223
    .line 1224
    check-cast v3, Ly92;

    .line 1225
    .line 1226
    iget-object v3, v3, Ly92;->f:Lpp0;

    .line 1227
    .line 1228
    iget-object v3, v3, Lpp0;->c:Ljava/lang/Object;

    .line 1229
    .line 1230
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 1231
    .line 1232
    new-instance v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 1233
    .line 1234
    invoke-virtual {v0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v5

    .line 1238
    invoke-direct {v4, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual {v4, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i1(I)V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 1245
    .line 1246
    .line 1247
    iget-object v3, v0, Lrl0;->b:Ljk8;

    .line 1248
    .line 1249
    if-eqz v2, :cond_19

    .line 1250
    .line 1251
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1252
    .line 1253
    .line 1254
    check-cast v3, Ly92;

    .line 1255
    .line 1256
    iget-object v3, v3, Ly92;->f:Lpp0;

    .line 1257
    .line 1258
    iget-object v3, v3, Lpp0;->d:Ljava/lang/Object;

    .line 1259
    .line 1260
    check-cast v3, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 1261
    .line 1262
    const/16 v4, 0x8

    .line 1263
    .line 1264
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    .line 1266
    .line 1267
    iget-object v3, v0, Lrl0;->b:Ljk8;

    .line 1268
    .line 1269
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1270
    .line 1271
    .line 1272
    check-cast v3, Ly92;

    .line 1273
    .line 1274
    iget-object v3, v3, Ly92;->f:Lpp0;

    .line 1275
    .line 1276
    iget-object v3, v3, Lpp0;->c:Ljava/lang/Object;

    .line 1277
    .line 1278
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 1279
    .line 1280
    const/4 v4, 0x0

    .line 1281
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1282
    .line 1283
    .line 1284
    iget-object v3, v0, Lrl0;->b:Ljk8;

    .line 1285
    .line 1286
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1287
    .line 1288
    .line 1289
    check-cast v3, Ly92;

    .line 1290
    .line 1291
    iget-object v3, v3, Ly92;->f:Lpp0;

    .line 1292
    .line 1293
    iget-object v3, v3, Lpp0;->c:Ljava/lang/Object;

    .line 1294
    .line 1295
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 1296
    .line 1297
    goto :goto_10

    .line 1298
    :cond_19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1299
    .line 1300
    .line 1301
    check-cast v3, Ly92;

    .line 1302
    .line 1303
    iget-object v3, v3, Ly92;->f:Lpp0;

    .line 1304
    .line 1305
    iget-object v3, v3, Lpp0;->c:Ljava/lang/Object;

    .line 1306
    .line 1307
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 1308
    .line 1309
    const/16 v4, 0x8

    .line 1310
    .line 1311
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1312
    .line 1313
    .line 1314
    iget-object v3, v0, Lrl0;->b:Ljk8;

    .line 1315
    .line 1316
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1317
    .line 1318
    .line 1319
    check-cast v3, Ly92;

    .line 1320
    .line 1321
    iget-object v3, v3, Ly92;->f:Lpp0;

    .line 1322
    .line 1323
    iget-object v3, v3, Lpp0;->d:Ljava/lang/Object;

    .line 1324
    .line 1325
    check-cast v3, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 1326
    .line 1327
    const/4 v4, 0x0

    .line 1328
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    .line 1330
    .line 1331
    iget-object v3, v0, Lrl0;->b:Ljk8;

    .line 1332
    .line 1333
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1334
    .line 1335
    .line 1336
    check-cast v3, Ly92;

    .line 1337
    .line 1338
    iget-object v3, v3, Ly92;->f:Lpp0;

    .line 1339
    .line 1340
    iget-object v3, v3, Lpp0;->d:Ljava/lang/Object;

    .line 1341
    .line 1342
    check-cast v3, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 1343
    .line 1344
    :goto_10
    new-instance v4, Lba2;

    .line 1345
    .line 1346
    invoke-direct {v4, v1, v2}, Lba2;-><init>(Ljava/util/List;Z)V

    .line 1347
    .line 1348
    .line 1349
    new-instance v1, Lmi;

    .line 1350
    .line 1351
    invoke-direct {v1, v8, v4, v0}, Lmi;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1352
    .line 1353
    .line 1354
    iput-object v1, v4, Lba2;->f:Lqt3;

    .line 1355
    .line 1356
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 1357
    .line 1358
    .line 1359
    :cond_1a
    return-object v12

    .line 1360
    :pswitch_12
    check-cast v0, Lb82;

    .line 1361
    .line 1362
    move-object/from16 v1, p1

    .line 1363
    .line 1364
    check-cast v1, Ljava/lang/String;

    .line 1365
    .line 1366
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1367
    .line 1368
    .line 1369
    new-array v2, v10, [C

    .line 1370
    .line 1371
    const/16 v3, 0x2f

    .line 1372
    .line 1373
    const/16 v21, 0x0

    .line 1374
    .line 1375
    aput-char v3, v2, v21

    .line 1376
    .line 1377
    invoke-static {v1, v2}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v1

    .line 1381
    const-string v2, "/"

    .line 1382
    .line 1383
    invoke-static {v2, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v1

    .line 1387
    new-instance v2, Ljava/util/ArrayList;

    .line 1388
    .line 1389
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    .line 1391
    .line 1392
    iget-object v0, v0, Lb82;->h:Lbr2;

    .line 1393
    .line 1394
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v0, v1}, Lbr2;->f(Ljava/lang/String;)Lyq2;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v3

    .line 1401
    iget-object v4, v3, Lyq2;->a:Ljava/util/List;

    .line 1402
    .line 1403
    invoke-static {v4, v2}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 1404
    .line 1405
    .line 1406
    :goto_11
    iget-boolean v4, v3, Lyq2;->c:Z

    .line 1407
    .line 1408
    if-eqz v4, :cond_1d

    .line 1409
    .line 1410
    iget-object v3, v3, Lyq2;->b:Ljava/lang/String;

    .line 1411
    .line 1412
    if-eqz v3, :cond_1b

    .line 1413
    .line 1414
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 1415
    .line 1416
    .line 1417
    move-result v4

    .line 1418
    if-nez v4, :cond_1b

    .line 1419
    .line 1420
    goto :goto_12

    .line 1421
    :cond_1b
    move-object v3, v11

    .line 1422
    :goto_12
    if-eqz v3, :cond_1c

    .line 1423
    .line 1424
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1425
    .line 1426
    .line 1427
    new-instance v4, Lfl4;

    .line 1428
    .line 1429
    invoke-direct {v4}, Lfl4;-><init>()V

    .line 1430
    .line 1431
    .line 1432
    const-string v5, "cursor"

    .line 1433
    .line 1434
    invoke-virtual {v4, v5, v3}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    .line 1436
    .line 1437
    const-string v3, "/2/files/list_folder/continue"

    .line 1438
    .line 1439
    invoke-virtual {v0, v4, v3}, Lbr2;->e(Lfl4;Ljava/lang/String;)Lfl4;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v3

    .line 1443
    invoke-static {v3}, Lbr2;->m(Lfl4;)Lyq2;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v3

    .line 1447
    iget-object v4, v3, Lyq2;->a:Ljava/util/List;

    .line 1448
    .line 1449
    invoke-static {v4, v2}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 1450
    .line 1451
    .line 1452
    goto :goto_11

    .line 1453
    :cond_1c
    const-string v0, "Dropbox returned has_more without a cursor for "

    .line 1454
    .line 1455
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v0

    .line 1459
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 1460
    .line 1461
    .line 1462
    goto/16 :goto_17

    .line 1463
    .line 1464
    :cond_1d
    new-instance v0, Lab1;

    .line 1465
    .line 1466
    new-instance v1, Ljava/util/ArrayList;

    .line 1467
    .line 1468
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v2

    .line 1475
    :cond_1e
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1476
    .line 1477
    .line 1478
    move-result v3

    .line 1479
    if-eqz v3, :cond_25

    .line 1480
    .line 1481
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v3

    .line 1485
    check-cast v3, Lzq2;

    .line 1486
    .line 1487
    instance-of v4, v3, Lvq2;

    .line 1488
    .line 1489
    const-string v5, ""

    .line 1490
    .line 1491
    if-eqz v4, :cond_21

    .line 1492
    .line 1493
    check-cast v3, Lvq2;

    .line 1494
    .line 1495
    iget-object v4, v3, Lvq2;->a:Ljava/lang/String;

    .line 1496
    .line 1497
    iget-object v6, v3, Lvq2;->f:Ljava/lang/String;

    .line 1498
    .line 1499
    if-nez v4, :cond_20

    .line 1500
    .line 1501
    if-nez v6, :cond_1f

    .line 1502
    .line 1503
    goto :goto_14

    .line 1504
    :cond_1f
    move-object v5, v6

    .line 1505
    goto :goto_14

    .line 1506
    :cond_20
    move-object v5, v4

    .line 1507
    :goto_14
    new-instance v4, Lpg1;

    .line 1508
    .line 1509
    iget-object v7, v3, Lvq2;->b:Ljava/lang/String;

    .line 1510
    .line 1511
    invoke-direct {v4, v7, v5}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    .line 1513
    .line 1514
    iget-wide v7, v3, Lvq2;->c:J

    .line 1515
    .line 1516
    iput-wide v7, v4, Lpg1;->c:J

    .line 1517
    .line 1518
    iget-wide v7, v3, Lvq2;->d:J

    .line 1519
    .line 1520
    iput-wide v7, v4, Lpg1;->d:J

    .line 1521
    .line 1522
    iget-wide v7, v3, Lvq2;->e:J

    .line 1523
    .line 1524
    iput-wide v7, v4, Lpg1;->e:J

    .line 1525
    .line 1526
    iput-object v6, v4, Lpg1;->f:Ljava/lang/String;

    .line 1527
    .line 1528
    goto :goto_16

    .line 1529
    :cond_21
    instance-of v4, v3, Lwq2;

    .line 1530
    .line 1531
    if-eqz v4, :cond_24

    .line 1532
    .line 1533
    check-cast v3, Lwq2;

    .line 1534
    .line 1535
    iget-object v4, v3, Lwq2;->a:Ljava/lang/String;

    .line 1536
    .line 1537
    iget-object v6, v3, Lwq2;->c:Ljava/lang/String;

    .line 1538
    .line 1539
    if-nez v4, :cond_23

    .line 1540
    .line 1541
    if-nez v6, :cond_22

    .line 1542
    .line 1543
    goto :goto_15

    .line 1544
    :cond_22
    move-object v5, v6

    .line 1545
    goto :goto_15

    .line 1546
    :cond_23
    move-object v5, v4

    .line 1547
    :goto_15
    new-instance v4, Lpg1;

    .line 1548
    .line 1549
    iget-object v3, v3, Lwq2;->b:Ljava/lang/String;

    .line 1550
    .line 1551
    invoke-direct {v4, v3, v5}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    .line 1553
    .line 1554
    iput-object v6, v4, Lpg1;->f:Ljava/lang/String;

    .line 1555
    .line 1556
    iput-boolean v10, v4, Lpg1;->g:Z

    .line 1557
    .line 1558
    goto :goto_16

    .line 1559
    :cond_24
    move-object v4, v11

    .line 1560
    :goto_16
    if-eqz v4, :cond_1e

    .line 1561
    .line 1562
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    .line 1564
    .line 1565
    goto :goto_13

    .line 1566
    :cond_25
    invoke-direct {v0, v1}, Lab1;-><init>(Ljava/util/List;)V

    .line 1567
    .line 1568
    .line 1569
    move-object v11, v0

    .line 1570
    :goto_17
    return-object v11

    .line 1571
    :pswitch_13
    check-cast v0, Lf62;

    .line 1572
    .line 1573
    move-object/from16 v1, p1

    .line 1574
    .line 1575
    check-cast v1, Ljava/lang/Long;

    .line 1576
    .line 1577
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 1578
    .line 1579
    .line 1580
    move-result-wide v1

    .line 1581
    iget-object v3, v0, Lf62;->c:Ljava/lang/Object;

    .line 1582
    .line 1583
    check-cast v3, Lg62;

    .line 1584
    .line 1585
    iget-object v4, v3, Lag8;->c:Lgz7;

    .line 1586
    .line 1587
    invoke-virtual {v4}, Lgz7;->isRunning()Z

    .line 1588
    .line 1589
    .line 1590
    move-result v4

    .line 1591
    if-nez v4, :cond_26

    .line 1592
    .line 1593
    goto :goto_18

    .line 1594
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1595
    .line 1596
    .line 1597
    move-result-wide v4

    .line 1598
    iget-wide v6, v0, Lf62;->b:J

    .line 1599
    .line 1600
    cmp-long v6, v1, v6

    .line 1601
    .line 1602
    if-gez v6, :cond_27

    .line 1603
    .line 1604
    iget-wide v6, v0, Lf62;->a:J

    .line 1605
    .line 1606
    sub-long v6, v4, v6

    .line 1607
    .line 1608
    const-wide/16 v8, 0x7d0

    .line 1609
    .line 1610
    cmp-long v6, v6, v8

    .line 1611
    .line 1612
    if-ltz v6, :cond_28

    .line 1613
    .line 1614
    :cond_27
    iput-wide v4, v0, Lf62;->a:J

    .line 1615
    .line 1616
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v0

    .line 1620
    invoke-static {v3, v0}, Lag8;->g(Lag8;Ljava/lang/Long;)V

    .line 1621
    .line 1622
    .line 1623
    :cond_28
    :goto_18
    return-object v12

    .line 1624
    :pswitch_14
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 1625
    .line 1626
    move-object/from16 v1, p1

    .line 1627
    .line 1628
    check-cast v1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 1629
    .line 1630
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->T:Lgv7;

    .line 1631
    .line 1632
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v1

    .line 1636
    check-cast v1, Ltq1;

    .line 1637
    .line 1638
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->U()Lmr1;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v2

    .line 1642
    invoke-virtual {v2}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v2

    .line 1646
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getApplyData()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v2

    .line 1650
    invoke-virtual {v1, v2}, Ltq1;->a(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;)V

    .line 1651
    .line 1652
    .line 1653
    new-instance v1, Landroid/content/Intent;

    .line 1654
    .line 1655
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1656
    .line 1657
    .line 1658
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->U()Lmr1;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v2

    .line 1662
    invoke-virtual {v2}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v2

    .line 1666
    const-string v3, "extra_config_settings"

    .line 1667
    .line 1668
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v1

    .line 1672
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1673
    .line 1674
    .line 1675
    const/4 v2, -0x1

    .line 1676
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1677
    .line 1678
    .line 1679
    return-object v12

    .line 1680
    :pswitch_15
    const/16 v21, 0x0

    .line 1681
    .line 1682
    check-cast v0, Ljava/util/ArrayList;

    .line 1683
    .line 1684
    move-object/from16 v1, p1

    .line 1685
    .line 1686
    check-cast v1, Lji;

    .line 1687
    .line 1688
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1689
    .line 1690
    .line 1691
    invoke-virtual {v1}, Lji;->getPackageName()Ljava/lang/String;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v1

    .line 1695
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1696
    .line 1697
    .line 1698
    move-result v2

    .line 1699
    if-eqz v2, :cond_2a

    .line 1700
    .line 1701
    :cond_29
    move/from16 v9, v21

    .line 1702
    .line 1703
    goto :goto_19

    .line 1704
    :cond_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v0

    .line 1708
    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1709
    .line 1710
    .line 1711
    move-result v2

    .line 1712
    if-eqz v2, :cond_29

    .line 1713
    .line 1714
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v2

    .line 1718
    check-cast v2, Lhz;

    .line 1719
    .line 1720
    iget-object v2, v2, Lhz;->b:Lji;

    .line 1721
    .line 1722
    invoke-virtual {v2}, Lji;->getPackageName()Ljava/lang/String;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v2

    .line 1726
    invoke-static {v2, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1727
    .line 1728
    .line 1729
    move-result v2

    .line 1730
    if-eqz v2, :cond_2b

    .line 1731
    .line 1732
    move v9, v10

    .line 1733
    :goto_19
    xor-int/lit8 v0, v9, 0x1

    .line 1734
    .line 1735
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1736
    .line 1737
    .line 1738
    move-result-object v0

    .line 1739
    return-object v0

    .line 1740
    :pswitch_16
    const/16 v21, 0x0

    .line 1741
    .line 1742
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 1743
    .line 1744
    move-object/from16 v1, p1

    .line 1745
    .line 1746
    check-cast v1, Lm97;

    .line 1747
    .line 1748
    sget v2, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 1749
    .line 1750
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1751
    .line 1752
    .line 1753
    sget-object v2, Lx10;->a:[I

    .line 1754
    .line 1755
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 1756
    .line 1757
    .line 1758
    move-result v3

    .line 1759
    aget v2, v2, v3

    .line 1760
    .line 1761
    if-eq v2, v10, :cond_2e

    .line 1762
    .line 1763
    if-eq v2, v8, :cond_2e

    .line 1764
    .line 1765
    if-ne v2, v7, :cond_2d

    .line 1766
    .line 1767
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->l0()Lr20;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v1

    .line 1771
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 1772
    .line 1773
    if-eqz v0, :cond_2c

    .line 1774
    .line 1775
    invoke-virtual {v0}, Lgm7;->l()Ljava/util/List;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v0

    .line 1779
    sget-object v2, Lzn4;->a:Lzn4;

    .line 1780
    .line 1781
    new-instance v2, Lus;

    .line 1782
    .line 1783
    invoke-direct {v2, v0, v1, v11, v10}, Lus;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 1784
    .line 1785
    .line 1786
    invoke-static {v11, v2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 1787
    .line 1788
    .line 1789
    goto :goto_1b

    .line 1790
    :cond_2c
    const-string v0, "mAdapter"

    .line 1791
    .line 1792
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 1793
    .line 1794
    .line 1795
    throw v11

    .line 1796
    :cond_2d
    invoke-static {}, Lq;->j()V

    .line 1797
    .line 1798
    .line 1799
    goto :goto_1c

    .line 1800
    :cond_2e
    sget v2, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 1801
    .line 1802
    sget-object v2, Lm97;->ADD_LABELS:Lm97;

    .line 1803
    .line 1804
    if-ne v1, v2, :cond_2f

    .line 1805
    .line 1806
    move v9, v10

    .line 1807
    goto :goto_1a

    .line 1808
    :cond_2f
    move/from16 v9, v21

    .line 1809
    .line 1810
    :goto_1a
    const/16 v1, 0x64

    .line 1811
    .line 1812
    invoke-static {v0, v1, v11, v9, v8}, Lus2;->E(Lk28;I[Ljava/lang/String;ZI)V

    .line 1813
    .line 1814
    .line 1815
    :goto_1b
    move-object v11, v12

    .line 1816
    :goto_1c
    return-object v11

    .line 1817
    :pswitch_17
    check-cast v0, Lfz;

    .line 1818
    .line 1819
    move-object/from16 v1, p1

    .line 1820
    .line 1821
    check-cast v1, Ljava/lang/Boolean;

    .line 1822
    .line 1823
    iget-object v0, v0, Lfz;->h:Lkm5;

    .line 1824
    .line 1825
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1826
    .line 1827
    .line 1828
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1829
    .line 1830
    .line 1831
    move-result v1

    .line 1832
    invoke-virtual {v0, v1}, Lkm5;->t(Z)V

    .line 1833
    .line 1834
    .line 1835
    return-object v12

    .line 1836
    nop

    .line 1837
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
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
