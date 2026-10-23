.class public final Lge1;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lil0;

.field public m:Z


# direct methods
.method public constructor <init>(Lil0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lge1;->l:Lil0;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lfe1;

    .line 6
    .line 7
    move/from16 v2, p2

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lgm7;->m(I)Ljl0;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lmd1;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lgm7;->q(Ljl0;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget-boolean v4, v0, Lge1;->m:Z

    .line 20
    .line 21
    new-instance v5, Ljf;

    .line 22
    .line 23
    const/4 v6, 0x3

    .line 24
    invoke-direct {v5, v6, v1, v0}, Ljf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v1, Lfe1;->v:Lil0;

    .line 28
    .line 29
    iget-object v6, v1, Lfe1;->x:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 30
    .line 31
    iget-object v1, v1, Lfe1;->w:Lxe1;

    .line 32
    .line 33
    iget-object v7, v2, Lmd1;->a:Lqd1;

    .line 34
    .line 35
    iget-object v8, v2, Lmd1;->c:Lrd1;

    .line 36
    .line 37
    invoke-virtual {v2}, Lmd1;->b()Z

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    if-eqz v9, :cond_0

    .line 42
    .line 43
    if-nez v4, :cond_0

    .line 44
    .line 45
    const/4 v9, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v9, 0x0

    .line 48
    :goto_0
    iget-boolean v12, v7, Lqd1;->d:Z

    .line 49
    .line 50
    iget v13, v7, Lqd1;->c:I

    .line 51
    .line 52
    if-eqz v12, :cond_1

    .line 53
    .line 54
    if-nez v4, :cond_1

    .line 55
    .line 56
    const/4 v14, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v14, 0x0

    .line 59
    :goto_1
    iget-object v15, v1, Lxe1;->a:Lcom/google/android/material/listitem/ListItemLayout;

    .line 60
    .line 61
    iget-object v10, v1, Lxe1;->d:Landroid/widget/ImageView;

    .line 62
    .line 63
    iget-object v11, v1, Lxe1;->k:Landroid/widget/TextView;

    .line 64
    .line 65
    if-eqz v12, :cond_2

    .line 66
    .line 67
    if-nez v4, :cond_2

    .line 68
    .line 69
    move/from16 p2, v4

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move/from16 p2, v4

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    :goto_2
    invoke-virtual {v15, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 77
    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v4}, Lcom/google/android/material/card/MaterialCardView;->setCheckable(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v3}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 90
    .line 91
    .line 92
    if-eqz v12, :cond_3

    .line 93
    .line 94
    const/high16 v4, 0x3f800000    # 1.0f

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    const v4, 0x3f0ccccd    # 0.55f

    .line 98
    .line 99
    .line 100
    :goto_3
    invoke-virtual {v6, v4}, Landroid/view/View;->setAlpha(F)V

    .line 101
    .line 102
    .line 103
    const/4 v4, 0x0

    .line 104
    if-eqz v9, :cond_4

    .line 105
    .line 106
    new-instance v14, Lce1;

    .line 107
    .line 108
    const/4 v15, 0x0

    .line 109
    invoke-direct {v14, v15, v5, v2}, Lce1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_4
    const/4 v15, 0x0

    .line 114
    move-object v14, v4

    .line 115
    :goto_4
    invoke-virtual {v6, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    iget-object v6, v1, Lxe1;->b:Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 119
    .line 120
    invoke-virtual {v6, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 124
    .line 125
    .line 126
    xor-int/lit8 v3, p2, 0x1

    .line 127
    .line 128
    invoke-static {v6, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 129
    .line 130
    .line 131
    new-instance v3, Lde1;

    .line 132
    .line 133
    invoke-direct {v3, v9, v5, v2, v15}, Lde1;-><init>(ZLjava/lang/Object;Ljl0;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    iget-object v3, v1, Lxe1;->p:Landroid/widget/TextView;

    .line 140
    .line 141
    iget v5, v7, Lqd1;->b:I

    .line 142
    .line 143
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 144
    .line 145
    .line 146
    iget-object v3, v1, Lxe1;->n:Landroid/widget/TextView;

    .line 147
    .line 148
    if-eqz v12, :cond_5

    .line 149
    .line 150
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    goto :goto_5

    .line 155
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    iget-object v5, v7, Lqd1;->g:Ljava/lang/Integer;

    .line 159
    .line 160
    if-eqz v5, :cond_7

    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    iget-object v6, v7, Lqd1;->h:Ldd1;

    .line 167
    .line 168
    if-eqz v6, :cond_6

    .line 169
    .line 170
    invoke-virtual {v6}, Ldd1;->getDisplayName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_6
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_7
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    :goto_5
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    sget-object v3, Lee1;->a:[I

    .line 205
    .line 206
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    aget v5, v3, v5

    .line 211
    .line 212
    packed-switch v5, :pswitch_data_0

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lq;->j()V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :pswitch_0
    const v5, 0x7f130151

    .line 220
    .line 221
    .line 222
    goto :goto_6

    .line 223
    :pswitch_1
    const v5, 0x7f13014c

    .line 224
    .line 225
    .line 226
    goto :goto_6

    .line 227
    :pswitch_2
    const v5, 0x7f13014d

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :pswitch_3
    const v5, 0x7f13014f

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :pswitch_4
    const v5, 0x7f130150

    .line 236
    .line 237
    .line 238
    goto :goto_6

    .line 239
    :pswitch_5
    const v5, 0x7f13014e

    .line 240
    .line 241
    .line 242
    :goto_6
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    iget-object v6, v2, Lmd1;->f:Ljava/lang/Long;

    .line 250
    .line 251
    if-eqz v6, :cond_9

    .line 252
    .line 253
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    .line 254
    .line 255
    .line 256
    move-result-wide v6

    .line 257
    const-wide/16 v12, 0x3e8

    .line 258
    .line 259
    cmp-long v4, v6, v12

    .line 260
    .line 261
    if-gez v4, :cond_8

    .line 262
    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v6, " ms"

    .line 272
    .line 273
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    goto :goto_7

    .line 281
    :cond_8
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 282
    .line 283
    long-to-double v6, v6

    .line 284
    const-wide v12, 0x408f400000000000L    # 1000.0

    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    div-double/2addr v6, v12

    .line 290
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    const/4 v7, 0x1

    .line 299
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    const-string v7, "%.1f s"

    .line 304
    .line 305
    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    :goto_7
    const-string v6, " - "

    .line 310
    .line 311
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    :cond_9
    if-nez v4, :cond_a

    .line 316
    .line 317
    const-string v4, ""

    .line 318
    .line 319
    :cond_a
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    aget v4, v3, v4

    .line 331
    .line 332
    const v5, 0x7f060023

    .line 333
    .line 334
    .line 335
    packed-switch v4, :pswitch_data_1

    .line 336
    .line 337
    .line 338
    invoke-static {}, Lq;->j()V

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :pswitch_6
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    goto :goto_8

    .line 347
    :pswitch_7
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    goto :goto_8

    .line 352
    :pswitch_8
    invoke-static {v0}, Lsz8;->r(Landroid/content/Context;)I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    goto :goto_8

    .line 357
    :pswitch_9
    invoke-static {v0}, Lsz8;->w(Landroid/content/Context;)I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    goto :goto_8

    .line 362
    :pswitch_a
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    goto :goto_8

    .line 367
    :pswitch_b
    invoke-static {v0}, Lsz8;->A(Landroid/content/Context;)I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    :goto_8
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 372
    .line 373
    .line 374
    iget-object v0, v2, Lmd1;->e:Ljava/lang/String;

    .line 375
    .line 376
    if-nez v0, :cond_b

    .line 377
    .line 378
    iget-object v0, v2, Lmd1;->d:Ljava/lang/String;

    .line 379
    .line 380
    :cond_b
    iget-object v2, v1, Lxe1;->f:Landroid/widget/TextView;

    .line 381
    .line 382
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    .line 384
    .line 385
    if-eqz v0, :cond_d

    .line 386
    .line 387
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_c

    .line 392
    .line 393
    goto :goto_a

    .line 394
    :cond_c
    move v4, v15

    .line 395
    :goto_9
    const/4 v7, 0x1

    .line 396
    goto :goto_b

    .line 397
    :cond_d
    :goto_a
    const/4 v4, 0x1

    .line 398
    goto :goto_9

    .line 399
    :goto_b
    xor-int/lit8 v0, v4, 0x1

    .line 400
    .line 401
    invoke-static {v2, v0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 402
    .line 403
    .line 404
    iget-object v0, v1, Lxe1;->e:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 405
    .line 406
    if-eqz p2, :cond_e

    .line 407
    .line 408
    sget-object v1, Lrd1;->RUNNING:Lrd1;

    .line 409
    .line 410
    if-ne v8, v1, :cond_e

    .line 411
    .line 412
    move v4, v7

    .line 413
    goto :goto_c

    .line 414
    :cond_e
    move v4, v15

    .line 415
    :goto_c
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-nez v1, :cond_f

    .line 420
    .line 421
    move v1, v7

    .line 422
    goto :goto_d

    .line 423
    :cond_f
    move v1, v15

    .line 424
    :goto_d
    if-eq v1, v4, :cond_10

    .line 425
    .line 426
    invoke-static {v0, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 427
    .line 428
    .line 429
    :cond_10
    if-eqz p2, :cond_11

    .line 430
    .line 431
    sget-object v0, Lrd1;->RUNNING:Lrd1;

    .line 432
    .line 433
    if-eq v8, v0, :cond_11

    .line 434
    .line 435
    move v4, v7

    .line 436
    goto :goto_e

    .line 437
    :cond_11
    move v4, v15

    .line 438
    :goto_e
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-nez v0, :cond_12

    .line 443
    .line 444
    move v15, v7

    .line 445
    :cond_12
    if-eq v15, v4, :cond_13

    .line 446
    .line 447
    invoke-static {v10, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 448
    .line 449
    .line 450
    :cond_13
    if-eqz p2, :cond_14

    .line 451
    .line 452
    sget-object v0, Lrd1;->RUNNING:Lrd1;

    .line 453
    .line 454
    if-eq v8, v0, :cond_14

    .line 455
    .line 456
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    aget v0, v3, v0

    .line 461
    .line 462
    const v1, 0x7f08013a

    .line 463
    .line 464
    .line 465
    packed-switch v0, :pswitch_data_2

    .line 466
    .line 467
    .line 468
    invoke-static {}, Lq;->j()V

    .line 469
    .line 470
    .line 471
    return-void

    .line 472
    :pswitch_c
    const v1, 0x7f080113

    .line 473
    .line 474
    .line 475
    goto :goto_f

    .line 476
    :pswitch_d
    const v1, 0x7f080104

    .line 477
    .line 478
    .line 479
    goto :goto_f

    .line 480
    :pswitch_e
    const v1, 0x7f0801fb

    .line 481
    .line 482
    .line 483
    goto :goto_f

    .line 484
    :pswitch_f
    const v1, 0x7f08010a

    .line 485
    .line 486
    .line 487
    :goto_f
    :pswitch_10
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    aget v0, v3, v0

    .line 492
    .line 493
    packed-switch v0, :pswitch_data_3

    .line 494
    .line 495
    .line 496
    invoke-static {}, Lq;->j()V

    .line 497
    .line 498
    .line 499
    return-void

    .line 500
    :pswitch_11
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    goto :goto_10

    .line 512
    :pswitch_12
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    goto :goto_10

    .line 524
    :pswitch_13
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    invoke-static {v0}, Lsz8;->r(Landroid/content/Context;)I

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    goto :goto_10

    .line 536
    :pswitch_14
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    .line 542
    .line 543
    invoke-static {v0}, Lsz8;->w(Landroid/content/Context;)I

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    goto :goto_10

    .line 548
    :pswitch_15
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    .line 554
    .line 555
    invoke-static {v0}, Lsz8;->A(Landroid/content/Context;)I

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    goto :goto_10

    .line 560
    :pswitch_16
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    invoke-static {v0}, Lsz8;->A(Landroid/content/Context;)I

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    :goto_10
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 575
    .line 576
    .line 577
    :cond_14
    return-void

    .line 578
    nop

    .line 579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_c
    .end packed-switch

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0052

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 12

    .line 1
    new-instance p2, Lfe1;

    .line 2
    .line 3
    const v0, 0x7f0a014b

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object v4, v1

    .line 11
    check-cast v4, Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Lcom/google/android/material/listitem/ListItemLayout;

    .line 17
    .line 18
    const v0, 0x7f0a01a4

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/widget/LinearLayout;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const v0, 0x7f0a01a6

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    const v0, 0x7f0a028c

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    move-object v5, v1

    .line 48
    check-cast v5, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 49
    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    const v0, 0x7f0a02cf

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    move-object v6, v1

    .line 60
    check-cast v6, Landroid/widget/ImageView;

    .line 61
    .line 62
    if-eqz v6, :cond_0

    .line 63
    .line 64
    const v0, 0x7f0a03a4

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move-object v7, v1

    .line 72
    check-cast v7, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 73
    .line 74
    if-eqz v7, :cond_0

    .line 75
    .line 76
    const v0, 0x7f0a047d

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/widget/FrameLayout;

    .line 84
    .line 85
    if-eqz v1, :cond_0

    .line 86
    .line 87
    const v0, 0x7f0a0533

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    move-object v8, v1

    .line 95
    check-cast v8, Landroid/widget/TextView;

    .line 96
    .line 97
    if-eqz v8, :cond_0

    .line 98
    .line 99
    const v0, 0x7f0a05a0

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    move-object v9, v1

    .line 107
    check-cast v9, Landroid/widget/TextView;

    .line 108
    .line 109
    if-eqz v9, :cond_0

    .line 110
    .line 111
    const v0, 0x7f0a05ac

    .line 112
    .line 113
    .line 114
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    move-object v10, v1

    .line 119
    check-cast v10, Landroid/widget/TextView;

    .line 120
    .line 121
    if-eqz v10, :cond_0

    .line 122
    .line 123
    const v0, 0x7f0a05ba

    .line 124
    .line 125
    .line 126
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    move-object v11, v1

    .line 131
    check-cast v11, Landroid/widget/TextView;

    .line 132
    .line 133
    if-eqz v11, :cond_0

    .line 134
    .line 135
    new-instance v2, Lxe1;

    .line 136
    .line 137
    invoke-direct/range {v2 .. v11}, Lxe1;-><init>(Lcom/google/android/material/listitem/ListItemLayout;Lorg/swiftapps/swiftbackup/views/MCheckBox;Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;Landroid/widget/ImageView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lge1;->l:Lil0;

    .line 141
    .line 142
    invoke-direct {p2, p0, v2}, Lfe1;-><init>(Lil0;Lxe1;)V

    .line 143
    .line 144
    .line 145
    return-object p2

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    const-string p1, "Missing required view with ID: "

    .line 155
    .line 156
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const/4 p0, 0x0

    .line 164
    return-object p0
.end method
