.class public final synthetic Lyc;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lyc;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lyc;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lyc;->a:I

    .line 4
    .line 5
    iget-object v0, v0, Lyc;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v0, Lcom/google/android/material/timepicker/ClockFaceView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->p()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast v0, Lj95;

    .line 17
    .line 18
    iget-object v0, v0, Lj95;->Q:Ln38;

    .line 19
    .line 20
    instance-of v1, v0, Lv38;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Lv38;

    .line 25
    .line 26
    invoke-virtual {v0}, Lv38;->g()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_1
    check-cast v0, Lqk3;

    .line 31
    .line 32
    invoke-virtual {v0}, Lu35;->dismiss()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_2
    check-cast v0, Lpg3;

    .line 37
    .line 38
    invoke-virtual {v0}, Lpg3;->a()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_3
    check-cast v0, Lcom/l4digital/fastscroll/FastScroller;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/l4digital/fastscroll/FastScroller;->a(Lcom/l4digital/fastscroll/FastScroller;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_4
    check-cast v0, Ldd;

    .line 49
    .line 50
    iget-object v0, v0, Ldd;->c:Lz28;

    .line 51
    .line 52
    iget-object v0, v0, Lz28;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Ldd;

    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    iget-object v3, v0, Ldd;->b:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    const/4 v6, 0x0

    .line 67
    move v7, v6

    .line 68
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-ge v7, v8, :cond_11

    .line 73
    .line 74
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    check-cast v8, Lgk7;

    .line 79
    .line 80
    if-nez v8, :cond_2

    .line 81
    .line 82
    :cond_1
    :goto_1
    move v14, v7

    .line 83
    goto/16 :goto_b

    .line 84
    .line 85
    :cond_2
    iget-object v10, v0, Ldd;->a:Ldg7;

    .line 86
    .line 87
    invoke-virtual {v10, v8}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    check-cast v11, Ljava/lang/Long;

    .line 92
    .line 93
    if-nez v11, :cond_3

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide v11

    .line 100
    cmp-long v11, v11, v4

    .line 101
    .line 102
    if-gez v11, :cond_1

    .line 103
    .line 104
    invoke-virtual {v10, v8}, Ldg7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :goto_2
    iget-wide v10, v8, Lgk7;->i:J

    .line 108
    .line 109
    const-wide/16 v12, 0x0

    .line 110
    .line 111
    cmp-long v14, v10, v12

    .line 112
    .line 113
    if-nez v14, :cond_4

    .line 114
    .line 115
    iput-wide v1, v8, Lgk7;->i:J

    .line 116
    .line 117
    iget v9, v8, Lgk7;->b:F

    .line 118
    .line 119
    invoke-virtual {v8, v9}, Lgk7;->d(F)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    sub-long v10, v1, v10

    .line 124
    .line 125
    iput-wide v1, v8, Lgk7;->i:J

    .line 126
    .line 127
    invoke-static {}, Lgk7;->b()Ldd;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    iget v14, v14, Ldd;->g:F

    .line 132
    .line 133
    const/4 v15, 0x0

    .line 134
    cmpl-float v16, v14, v15

    .line 135
    .line 136
    if-nez v16, :cond_5

    .line 137
    .line 138
    const-wide/32 v10, 0x7fffffff

    .line 139
    .line 140
    .line 141
    :goto_3
    move-wide/from16 v21, v10

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_5
    long-to-float v10, v10

    .line 145
    div-float/2addr v10, v14

    .line 146
    float-to-long v10, v10

    .line 147
    goto :goto_3

    .line 148
    :goto_4
    iget-boolean v10, v8, Lgk7;->o:Z

    .line 149
    .line 150
    iget v11, v8, Lgk7;->n:F

    .line 151
    .line 152
    const v14, 0x7f7fffff    # Float.MAX_VALUE

    .line 153
    .line 154
    .line 155
    if-eqz v10, :cond_7

    .line 156
    .line 157
    cmpl-float v10, v11, v14

    .line 158
    .line 159
    if-eqz v10, :cond_6

    .line 160
    .line 161
    iget-object v10, v8, Lgk7;->m:Lhk7;

    .line 162
    .line 163
    float-to-double v12, v11

    .line 164
    iput-wide v12, v10, Lhk7;->i:D

    .line 165
    .line 166
    iput v14, v8, Lgk7;->n:F

    .line 167
    .line 168
    :cond_6
    iget-object v10, v8, Lgk7;->m:Lhk7;

    .line 169
    .line 170
    iget-wide v10, v10, Lhk7;->i:D

    .line 171
    .line 172
    double-to-float v10, v10

    .line 173
    iput v10, v8, Lgk7;->b:F

    .line 174
    .line 175
    iput v15, v8, Lgk7;->a:F

    .line 176
    .line 177
    iput-boolean v6, v8, Lgk7;->o:Z

    .line 178
    .line 179
    move v14, v7

    .line 180
    :goto_5
    const/4 v9, 0x1

    .line 181
    goto/16 :goto_7

    .line 182
    .line 183
    :cond_7
    cmpl-float v10, v11, v14

    .line 184
    .line 185
    iget-object v11, v8, Lgk7;->m:Lhk7;

    .line 186
    .line 187
    iget v12, v8, Lgk7;->b:F

    .line 188
    .line 189
    iget v13, v8, Lgk7;->a:F

    .line 190
    .line 191
    if-eqz v10, :cond_8

    .line 192
    .line 193
    float-to-double v9, v12

    .line 194
    float-to-double v12, v13

    .line 195
    const-wide/16 v16, 0x2

    .line 196
    .line 197
    div-long v28, v21, v16

    .line 198
    .line 199
    move-wide/from16 v24, v9

    .line 200
    .line 201
    move-object/from16 v23, v11

    .line 202
    .line 203
    move-wide/from16 v26, v12

    .line 204
    .line 205
    invoke-virtual/range {v23 .. v29}, Lhk7;->c(DDJ)Lvr2;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    iget-object v10, v8, Lgk7;->m:Lhk7;

    .line 210
    .line 211
    iget v11, v8, Lgk7;->n:F

    .line 212
    .line 213
    float-to-double v11, v11

    .line 214
    iput-wide v11, v10, Lhk7;->i:D

    .line 215
    .line 216
    iput v14, v8, Lgk7;->n:F

    .line 217
    .line 218
    iget v11, v9, Lvr2;->a:F

    .line 219
    .line 220
    float-to-double v11, v11

    .line 221
    iget v9, v9, Lvr2;->b:F

    .line 222
    .line 223
    float-to-double v13, v9

    .line 224
    move-object/from16 v23, v10

    .line 225
    .line 226
    move-wide/from16 v24, v11

    .line 227
    .line 228
    move-wide/from16 v26, v13

    .line 229
    .line 230
    invoke-virtual/range {v23 .. v29}, Lhk7;->c(DDJ)Lvr2;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    iget v10, v9, Lvr2;->a:F

    .line 235
    .line 236
    iput v10, v8, Lgk7;->b:F

    .line 237
    .line 238
    iget v9, v9, Lvr2;->b:F

    .line 239
    .line 240
    iput v9, v8, Lgk7;->a:F

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_8
    move-object/from16 v16, v11

    .line 244
    .line 245
    float-to-double v9, v12

    .line 246
    float-to-double v11, v13

    .line 247
    move-wide/from16 v17, v9

    .line 248
    .line 249
    move-wide/from16 v19, v11

    .line 250
    .line 251
    invoke-virtual/range {v16 .. v22}, Lhk7;->c(DDJ)Lvr2;

    .line 252
    .line 253
    .line 254
    move-result-object v9

    .line 255
    iget v10, v9, Lvr2;->a:F

    .line 256
    .line 257
    iput v10, v8, Lgk7;->b:F

    .line 258
    .line 259
    iget v9, v9, Lvr2;->b:F

    .line 260
    .line 261
    iput v9, v8, Lgk7;->a:F

    .line 262
    .line 263
    :goto_6
    iget v9, v8, Lgk7;->b:F

    .line 264
    .line 265
    iget v10, v8, Lgk7;->h:F

    .line 266
    .line 267
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    iput v9, v8, Lgk7;->b:F

    .line 272
    .line 273
    iget v10, v8, Lgk7;->g:F

    .line 274
    .line 275
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    .line 276
    .line 277
    .line 278
    move-result v9

    .line 279
    iput v9, v8, Lgk7;->b:F

    .line 280
    .line 281
    iget v10, v8, Lgk7;->a:F

    .line 282
    .line 283
    iget-object v11, v8, Lgk7;->m:Lhk7;

    .line 284
    .line 285
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 289
    .line 290
    .line 291
    move-result v10

    .line 292
    float-to-double v12, v10

    .line 293
    move v14, v7

    .line 294
    iget-wide v6, v11, Lhk7;->e:D

    .line 295
    .line 296
    cmpg-double v6, v12, v6

    .line 297
    .line 298
    if-gez v6, :cond_9

    .line 299
    .line 300
    iget-wide v6, v11, Lhk7;->i:D

    .line 301
    .line 302
    double-to-float v6, v6

    .line 303
    sub-float/2addr v9, v6

    .line 304
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    float-to-double v6, v6

    .line 309
    iget-wide v11, v11, Lhk7;->d:D

    .line 310
    .line 311
    cmpg-double v6, v6, v11

    .line 312
    .line 313
    if-gez v6, :cond_9

    .line 314
    .line 315
    iget-object v6, v8, Lgk7;->m:Lhk7;

    .line 316
    .line 317
    iget-wide v6, v6, Lhk7;->i:D

    .line 318
    .line 319
    double-to-float v6, v6

    .line 320
    iput v6, v8, Lgk7;->b:F

    .line 321
    .line 322
    iput v15, v8, Lgk7;->a:F

    .line 323
    .line 324
    goto/16 :goto_5

    .line 325
    .line 326
    :cond_9
    const/4 v9, 0x0

    .line 327
    :goto_7
    iget v6, v8, Lgk7;->b:F

    .line 328
    .line 329
    iget v7, v8, Lgk7;->g:F

    .line 330
    .line 331
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    iput v6, v8, Lgk7;->b:F

    .line 336
    .line 337
    iget v7, v8, Lgk7;->h:F

    .line 338
    .line 339
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    .line 340
    .line 341
    .line 342
    move-result v6

    .line 343
    iput v6, v8, Lgk7;->b:F

    .line 344
    .line 345
    invoke-virtual {v8, v6}, Lgk7;->d(F)V

    .line 346
    .line 347
    .line 348
    if-eqz v9, :cond_10

    .line 349
    .line 350
    iget-object v6, v8, Lgk7;->k:Ljava/util/ArrayList;

    .line 351
    .line 352
    const/4 v10, 0x0

    .line 353
    iput-boolean v10, v8, Lgk7;->f:Z

    .line 354
    .line 355
    invoke-static {}, Lgk7;->b()Ldd;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    iget-object v9, v7, Ldd;->a:Ldg7;

    .line 360
    .line 361
    invoke-virtual {v9, v8}, Ldg7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    iget-object v9, v7, Ldd;->b:Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 367
    .line 368
    .line 369
    move-result v11

    .line 370
    if-ltz v11, :cond_a

    .line 371
    .line 372
    const/4 v12, 0x0

    .line 373
    invoke-virtual {v9, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    const/4 v9, 0x1

    .line 377
    iput-boolean v9, v7, Ldd;->f:Z

    .line 378
    .line 379
    :cond_a
    const-wide/16 v11, 0x0

    .line 380
    .line 381
    iput-wide v11, v8, Lgk7;->i:J

    .line 382
    .line 383
    const/4 v10, 0x0

    .line 384
    iput-boolean v10, v8, Lgk7;->c:Z

    .line 385
    .line 386
    const/4 v7, 0x0

    .line 387
    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 388
    .line 389
    .line 390
    move-result v9

    .line 391
    if-ge v7, v9, :cond_e

    .line 392
    .line 393
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v9

    .line 397
    if-eqz v9, :cond_d

    .line 398
    .line 399
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v9

    .line 403
    check-cast v9, Lgm0;

    .line 404
    .line 405
    iget v11, v8, Lgk7;->b:F

    .line 406
    .line 407
    iget-object v9, v9, Lgm0;->a:Lkm0;

    .line 408
    .line 409
    invoke-virtual {v9}, Lkm0;->getProgressDrawable()Lqk2;

    .line 410
    .line 411
    .line 412
    move-result-object v11

    .line 413
    if-eqz v11, :cond_d

    .line 414
    .line 415
    invoke-virtual {v9}, Lkm0;->getProgressDrawable()Lqk2;

    .line 416
    .line 417
    .line 418
    move-result-object v11

    .line 419
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 420
    .line 421
    .line 422
    move-result v11

    .line 423
    const/16 v12, 0x2710

    .line 424
    .line 425
    if-ne v11, v12, :cond_d

    .line 426
    .line 427
    iget-object v11, v9, Lkm0;->x:Lib0;

    .line 428
    .line 429
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 430
    .line 431
    .line 432
    move-result v12

    .line 433
    if-eqz v12, :cond_b

    .line 434
    .line 435
    iget-object v11, v9, Lkm0;->t:Lhm0;

    .line 436
    .line 437
    invoke-virtual {v9, v11}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 438
    .line 439
    .line 440
    goto :goto_9

    .line 441
    :cond_b
    invoke-virtual {v9, v11}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 442
    .line 443
    .line 444
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 445
    .line 446
    .line 447
    move-result-wide v12

    .line 448
    move-object/from16 v16, v11

    .line 449
    .line 450
    iget-wide v10, v9, Lkm0;->f:J

    .line 451
    .line 452
    sub-long/2addr v12, v10

    .line 453
    iget v10, v9, Lkm0;->e:I

    .line 454
    .line 455
    int-to-long v10, v10

    .line 456
    cmp-long v17, v12, v10

    .line 457
    .line 458
    if-ltz v17, :cond_c

    .line 459
    .line 460
    invoke-virtual/range {v16 .. v16}, Lib0;->run()V

    .line 461
    .line 462
    .line 463
    goto :goto_9

    .line 464
    :cond_c
    sub-long/2addr v10, v12

    .line 465
    move-object/from16 v12, v16

    .line 466
    .line 467
    invoke-virtual {v9, v12, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 468
    .line 469
    .line 470
    :cond_d
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 471
    .line 472
    goto :goto_8

    .line 473
    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 474
    .line 475
    .line 476
    move-result v7

    .line 477
    const/4 v9, 0x1

    .line 478
    sub-int/2addr v7, v9

    .line 479
    :goto_a
    if-ltz v7, :cond_10

    .line 480
    .line 481
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v8

    .line 485
    if-nez v8, :cond_f

    .line 486
    .line 487
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    :cond_f
    add-int/lit8 v7, v7, -0x1

    .line 491
    .line 492
    goto :goto_a

    .line 493
    :cond_10
    :goto_b
    add-int/lit8 v7, v14, 0x1

    .line 494
    .line 495
    const/4 v6, 0x0

    .line 496
    goto/16 :goto_0

    .line 497
    .line 498
    :cond_11
    iget-boolean v1, v0, Ldd;->f:Z

    .line 499
    .line 500
    if-eqz v1, :cond_15

    .line 501
    .line 502
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    const/4 v9, 0x1

    .line 507
    sub-int/2addr v1, v9

    .line 508
    :goto_c
    if-ltz v1, :cond_13

    .line 509
    .line 510
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    if-nez v2, :cond_12

    .line 515
    .line 516
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    :cond_12
    add-int/lit8 v1, v1, -0x1

    .line 520
    .line 521
    goto :goto_c

    .line 522
    :cond_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    if-nez v1, :cond_14

    .line 527
    .line 528
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 529
    .line 530
    const/16 v2, 0x21

    .line 531
    .line 532
    if-lt v1, v2, :cond_14

    .line 533
    .line 534
    iget-object v1, v0, Ldd;->h:Lad;

    .line 535
    .line 536
    invoke-virtual {v1}, Lad;->a()Z

    .line 537
    .line 538
    .line 539
    :cond_14
    const/4 v10, 0x0

    .line 540
    iput-boolean v10, v0, Ldd;->f:Z

    .line 541
    .line 542
    :cond_15
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    if-lez v1, :cond_16

    .line 547
    .line 548
    iget-object v1, v0, Ldd;->e:Lcd;

    .line 549
    .line 550
    iget-object v0, v0, Ldd;->d:Lyc;

    .line 551
    .line 552
    iget-object v1, v1, Lcd;->b:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast v1, Landroid/view/Choreographer;

    .line 555
    .line 556
    new-instance v2, Lbd;

    .line 557
    .line 558
    invoke-direct {v2, v0}, Lbd;-><init>(Ljava/lang/Runnable;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 562
    .line 563
    .line 564
    :cond_16
    return-void

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
