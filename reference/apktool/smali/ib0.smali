.class public final Lib0;
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
    iput p2, p0, Lib0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lib0;->b:Ljava/lang/Object;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lib0;->a:I

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x1

    .line 11
    const/4 v8, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lib0;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lq19;

    .line 18
    .line 19
    iget-object v0, v0, Lq19;->n:Lw86;

    .line 20
    .line 21
    new-instance v1, Lhs1;

    .line 22
    .line 23
    invoke-direct {v1, v5, v6, v6}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lw86;->b(Lhs1;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    iget-object v0, v0, Lib0;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lnr8;

    .line 33
    .line 34
    iget-object v1, v0, Lnr8;->j:Lu00;

    .line 35
    .line 36
    iget-boolean v2, v0, Lnr8;->b:Z

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    iget-boolean v2, v0, Lnr8;->c:Z

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Lu00;->e()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    const-string v2, "timed out on connect"

    .line 51
    .line 52
    new-array v3, v8, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {v1, v2, v6, v3}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v0, v0, Lnr8;->a:Lc00;

    .line 58
    .line 59
    iget-object v0, v0, Lc00;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lar8;

    .line 62
    .line 63
    invoke-virtual {v0}, Lar8;->a()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :pswitch_1
    iget-object v0, v0, Lib0;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lo88;

    .line 70
    .line 71
    iget-object v1, v0, Lo88;->f:Landroid/view/Window$Callback;

    .line 72
    .line 73
    invoke-virtual {v0}, Lo88;->x0()Landroid/view/Menu;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    instance-of v2, v0, Lfc5;

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    move-object v2, v0

    .line 82
    check-cast v2, Lfc5;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move-object v2, v6

    .line 86
    :goto_0
    if-eqz v2, :cond_3

    .line 87
    .line 88
    invoke-virtual {v2}, Lfc5;->w()V

    .line 89
    .line 90
    .line 91
    :cond_3
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 92
    .line 93
    .line 94
    invoke-interface {v1, v8, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_4

    .line 99
    .line 100
    invoke-interface {v1, v8, v6, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    :goto_1
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    :cond_5
    if-eqz v2, :cond_6

    .line 113
    .line 114
    invoke-virtual {v2}, Lfc5;->v()V

    .line 115
    .line 116
    .line 117
    :cond_6
    return-void

    .line 118
    :goto_2
    if-eqz v2, :cond_7

    .line 119
    .line 120
    invoke-virtual {v2}, Lfc5;->v()V

    .line 121
    .line 122
    .line 123
    :cond_7
    throw v0

    .line 124
    :pswitch_2
    iget-object v0, v0, Lib0;->b:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lpw2;

    .line 129
    .line 130
    iget-object v0, v0, Lpw2;->k:Lcom/google/android/material/internal/CheckableImageButton;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_3
    iget-object v0, v0, Lib0;->b:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, Lib;

    .line 142
    .line 143
    iget-object v0, v0, Lib;->c:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v0, Landroid/widget/TextView;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_4
    iget-object v1, v0, Lib0;->b:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, Li35;

    .line 158
    .line 159
    iget-object v1, v1, Li35;->d:Lg35;

    .line 160
    .line 161
    if-nez v1, :cond_8

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_8
    iget-object v1, v0, Lib0;->b:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v1, Li35;

    .line 167
    .line 168
    iget-object v1, v1, Li35;->d:Lg35;

    .line 169
    .line 170
    iget-object v2, v1, Lg35;->a:Ljava/lang/Object;

    .line 171
    .line 172
    iget-object v0, v0, Lib0;->b:Ljava/lang/Object;

    .line 173
    .line 174
    move-object v3, v0

    .line 175
    check-cast v3, Li35;

    .line 176
    .line 177
    if-eqz v2, :cond_a

    .line 178
    .line 179
    monitor-enter v3

    .line 180
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 181
    .line 182
    iget-object v1, v3, Li35;->a:Ljava/util/LinkedHashSet;

    .line 183
    .line 184
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_9

    .line 196
    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    check-cast v1, Le35;

    .line 202
    .line 203
    invoke-interface {v1, v2}, Le35;->onResult(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :catchall_1
    move-exception v0

    .line 208
    goto :goto_4

    .line 209
    :cond_9
    monitor-exit v3

    .line 210
    goto :goto_6

    .line 211
    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 212
    throw v0

    .line 213
    :cond_a
    iget-object v0, v1, Lg35;->b:Ljava/lang/Throwable;

    .line 214
    .line 215
    monitor-enter v3

    .line 216
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    .line 217
    .line 218
    iget-object v2, v3, Li35;->b:Ljava/util/LinkedHashSet;

    .line 219
    .line 220
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_b

    .line 228
    .line 229
    const-string v1, "Lottie encountered an error but no failure listener was added:"

    .line 230
    .line 231
    invoke-static {v1, v0}, Lm15;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 232
    .line 233
    .line 234
    monitor-exit v3

    .line 235
    goto :goto_6

    .line 236
    :catchall_2
    move-exception v0

    .line 237
    goto :goto_7

    .line 238
    :cond_b
    :try_start_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_c

    .line 247
    .line 248
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    check-cast v2, Le35;

    .line 253
    .line 254
    invoke-interface {v2, v0}, Le35;->onResult(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_c
    monitor-exit v3

    .line 259
    :goto_6
    return-void

    .line 260
    :goto_7
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 261
    throw v0

    .line 262
    :pswitch_5
    iget-object v0, v0, Lib0;->b:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v0, Lcom/warkiz/widget/IndicatorSeekBar;

    .line 265
    .line 266
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :pswitch_6
    iget-object v0, v0, Lib0;->b:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v0, Lyq3;

    .line 273
    .line 274
    iget-object v0, v0, Lyq3;->d:Landroid/view/View;

    .line 275
    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    if-eqz v0, :cond_d

    .line 281
    .line 282
    invoke-interface {v0, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 283
    .line 284
    .line 285
    :cond_d
    return-void

    .line 286
    :pswitch_7
    iget-object v0, v0, Lib0;->b:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v0, Lr53;

    .line 289
    .line 290
    iget-object v1, v0, Lr53;->z:Landroid/animation/ValueAnimator;

    .line 291
    .line 292
    iget v2, v0, Lr53;->A:I

    .line 293
    .line 294
    const/4 v3, 0x2

    .line 295
    if-eq v2, v7, :cond_e

    .line 296
    .line 297
    if-eq v2, v3, :cond_f

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_e
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 301
    .line 302
    .line 303
    :cond_f
    iput v4, v0, Lr53;->A:I

    .line 304
    .line 305
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    check-cast v0, Ljava/lang/Float;

    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    new-array v2, v3, [F

    .line 316
    .line 317
    aput v0, v2, v8

    .line 318
    .line 319
    const/4 v0, 0x0

    .line 320
    aput v0, v2, v7

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 323
    .line 324
    .line 325
    const-wide/16 v2, 0x1f4

    .line 326
    .line 327
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 331
    .line 332
    .line 333
    :goto_8
    return-void

    .line 334
    :pswitch_8
    iget-object v0, v0, Lib0;->b:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v0, Lws2;

    .line 337
    .line 338
    invoke-virtual {v0}, Lws2;->p()V

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :pswitch_9
    iget-object v0, v0, Lib0;->b:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v0, Lqp2;

    .line 345
    .line 346
    iget-object v1, v0, Lqp2;->i:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 347
    .line 348
    iget-object v2, v0, Lqp2;->g:Lgl8;

    .line 349
    .line 350
    iget v2, v2, Lgl8;->o:I

    .line 351
    .line 352
    iget v3, v0, Lqp2;->f:I

    .line 353
    .line 354
    if-ne v3, v4, :cond_10

    .line 355
    .line 356
    move v5, v7

    .line 357
    goto :goto_9

    .line 358
    :cond_10
    move v5, v8

    .line 359
    :goto_9
    const/4 v6, 0x5

    .line 360
    if-eqz v5, :cond_12

    .line 361
    .line 362
    invoke-virtual {v1, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    if-eqz v9, :cond_11

    .line 367
    .line 368
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 369
    .line 370
    .line 371
    move-result v10

    .line 372
    neg-int v10, v10

    .line 373
    goto :goto_a

    .line 374
    :cond_11
    move v10, v8

    .line 375
    :goto_a
    add-int/2addr v10, v2

    .line 376
    goto :goto_b

    .line 377
    :cond_12
    invoke-virtual {v1, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 382
    .line 383
    .line 384
    move-result v10

    .line 385
    sub-int/2addr v10, v2

    .line 386
    :goto_b
    if-eqz v9, :cond_18

    .line 387
    .line 388
    if-eqz v5, :cond_13

    .line 389
    .line 390
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-lt v2, v10, :cond_14

    .line 395
    .line 396
    :cond_13
    if-nez v5, :cond_18

    .line 397
    .line 398
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    if-le v2, v10, :cond_18

    .line 403
    .line 404
    :cond_14
    invoke-virtual {v1, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->f(Landroid/view/View;)I

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    if-nez v2, :cond_18

    .line 409
    .line 410
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    check-cast v2, Lnp2;

    .line 415
    .line 416
    iget-object v0, v0, Lqp2;->g:Lgl8;

    .line 417
    .line 418
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    invoke-virtual {v0, v9, v10, v5}, Lgl8;->r(Landroid/view/View;II)Z

    .line 423
    .line 424
    .line 425
    iput-boolean v7, v2, Lnp2;->c:Z

    .line 426
    .line 427
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 428
    .line 429
    .line 430
    if-ne v3, v4, :cond_15

    .line 431
    .line 432
    move v4, v6

    .line 433
    :cond_15
    invoke-virtual {v1, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    if-eqz v0, :cond_16

    .line 438
    .line 439
    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    .line 440
    .line 441
    .line 442
    :cond_16
    iget-boolean v0, v1, Landroidx/drawerlayout/widget/DrawerLayout;->I:Z

    .line 443
    .line 444
    if-nez v0, :cond_18

    .line 445
    .line 446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 447
    .line 448
    .line 449
    move-result-wide v9

    .line 450
    const/4 v15, 0x0

    .line 451
    const/16 v16, 0x0

    .line 452
    .line 453
    const/4 v13, 0x3

    .line 454
    const/4 v14, 0x0

    .line 455
    move-wide v11, v9

    .line 456
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    :goto_c
    if-ge v8, v2, :cond_17

    .line 465
    .line 466
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 471
    .line 472
    .line 473
    add-int/lit8 v8, v8, 0x1

    .line 474
    .line 475
    goto :goto_c

    .line 476
    :cond_17
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 477
    .line 478
    .line 479
    iput-boolean v7, v1, Landroidx/drawerlayout/widget/DrawerLayout;->I:Z

    .line 480
    .line 481
    :cond_18
    return-void

    .line 482
    :pswitch_a
    iget-object v0, v0, Lib0;->b:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast v0, Lkm0;

    .line 485
    .line 486
    invoke-virtual {v0}, Lkm0;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    check-cast v1, Lgp2;

    .line 491
    .line 492
    invoke-virtual {v1, v8, v8, v7}, Lgp2;->d(ZZZ)Z

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0}, Lkm0;->getProgressDrawable()Lqk2;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    if-eqz v1, :cond_19

    .line 500
    .line 501
    invoke-virtual {v0}, Lkm0;->getProgressDrawable()Lqk2;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    if-nez v1, :cond_1b

    .line 510
    .line 511
    :cond_19
    invoke-virtual {v0}, Lkm0;->getIndeterminateDrawable()Lmb4;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    if-eqz v1, :cond_1a

    .line 516
    .line 517
    invoke-virtual {v0}, Lkm0;->getIndeterminateDrawable()Lmb4;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    if-nez v1, :cond_1b

    .line 526
    .line 527
    :cond_1a
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 528
    .line 529
    .line 530
    :cond_1b
    iput-wide v2, v0, Lkm0;->f:J

    .line 531
    .line 532
    return-void

    .line 533
    :pswitch_b
    iget-object v1, v0, Lib0;->b:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v1, Lqy4;

    .line 536
    .line 537
    iget-object v4, v1, Lqy4;->c:Lbq2;

    .line 538
    .line 539
    iget-object v5, v1, Lqy4;->a:Lhb0;

    .line 540
    .line 541
    iget-boolean v6, v1, Lqy4;->G:Z

    .line 542
    .line 543
    if-nez v6, :cond_1c

    .line 544
    .line 545
    goto/16 :goto_e

    .line 546
    .line 547
    :cond_1c
    iget-boolean v6, v1, Lqy4;->x:Z

    .line 548
    .line 549
    if-eqz v6, :cond_1d

    .line 550
    .line 551
    iput-boolean v8, v1, Lqy4;->x:Z

    .line 552
    .line 553
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 554
    .line 555
    .line 556
    move-result-wide v6

    .line 557
    iput-wide v6, v5, Lhb0;->e:J

    .line 558
    .line 559
    iput-wide v2, v5, Lhb0;->g:J

    .line 560
    .line 561
    iput-wide v6, v5, Lhb0;->f:J

    .line 562
    .line 563
    const/high16 v2, 0x3f000000    # 0.5f

    .line 564
    .line 565
    iput v2, v5, Lhb0;->h:F

    .line 566
    .line 567
    :cond_1d
    iget-wide v2, v5, Lhb0;->g:J

    .line 568
    .line 569
    const-wide/16 v6, 0x0

    .line 570
    .line 571
    cmp-long v2, v2, v6

    .line 572
    .line 573
    if-lez v2, :cond_1e

    .line 574
    .line 575
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 576
    .line 577
    .line 578
    move-result-wide v2

    .line 579
    iget-wide v9, v5, Lhb0;->g:J

    .line 580
    .line 581
    iget v11, v5, Lhb0;->i:I

    .line 582
    .line 583
    int-to-long v11, v11

    .line 584
    add-long/2addr v9, v11

    .line 585
    cmp-long v2, v2, v9

    .line 586
    .line 587
    if-lez v2, :cond_1e

    .line 588
    .line 589
    goto :goto_d

    .line 590
    :cond_1e
    invoke-virtual {v1}, Lqy4;->e()Z

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    if-nez v2, :cond_1f

    .line 595
    .line 596
    :goto_d
    iput-boolean v8, v1, Lqy4;->G:Z

    .line 597
    .line 598
    goto :goto_e

    .line 599
    :cond_1f
    iget-boolean v2, v1, Lqy4;->y:Z

    .line 600
    .line 601
    if-eqz v2, :cond_20

    .line 602
    .line 603
    iput-boolean v8, v1, Lqy4;->y:Z

    .line 604
    .line 605
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 606
    .line 607
    .line 608
    move-result-wide v9

    .line 609
    const/4 v15, 0x0

    .line 610
    const/16 v16, 0x0

    .line 611
    .line 612
    const/4 v13, 0x3

    .line 613
    const/4 v14, 0x0

    .line 614
    move-wide v11, v9

    .line 615
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-virtual {v4, v2}, Lbq2;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 620
    .line 621
    .line 622
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 623
    .line 624
    .line 625
    :cond_20
    iget-wide v2, v5, Lhb0;->f:J

    .line 626
    .line 627
    cmp-long v2, v2, v6

    .line 628
    .line 629
    if-eqz v2, :cond_21

    .line 630
    .line 631
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 632
    .line 633
    .line 634
    move-result-wide v2

    .line 635
    invoke-virtual {v5, v2, v3}, Lhb0;->a(J)F

    .line 636
    .line 637
    .line 638
    move-result v6

    .line 639
    const/high16 v7, -0x3f800000    # -4.0f

    .line 640
    .line 641
    mul-float/2addr v7, v6

    .line 642
    mul-float/2addr v7, v6

    .line 643
    const/high16 v8, 0x40800000    # 4.0f

    .line 644
    .line 645
    mul-float/2addr v6, v8

    .line 646
    add-float/2addr v6, v7

    .line 647
    iget-wide v7, v5, Lhb0;->f:J

    .line 648
    .line 649
    sub-long v7, v2, v7

    .line 650
    .line 651
    iput-wide v2, v5, Lhb0;->f:J

    .line 652
    .line 653
    long-to-float v2, v7

    .line 654
    mul-float/2addr v2, v6

    .line 655
    iget v3, v5, Lhb0;->d:F

    .line 656
    .line 657
    mul-float/2addr v2, v3

    .line 658
    float-to-int v2, v2

    .line 659
    iget-object v1, v1, Lqy4;->I:Lbq2;

    .line 660
    .line 661
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 662
    .line 663
    .line 664
    sget-object v1, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 665
    .line 666
    invoke-virtual {v4, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 667
    .line 668
    .line 669
    goto :goto_e

    .line 670
    :cond_21
    const-string v0, "Cannot compute scroll delta before calling start()"

    .line 671
    .line 672
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    :goto_e
    return-void

    .line 676
    nop

    .line 677
    :pswitch_data_0
    .packed-switch 0x0
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
