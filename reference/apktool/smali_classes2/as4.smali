.class public final synthetic Las4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Las4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Las4;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Las4;->a:I

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    const v3, 0x7f0a00a9

    .line 8
    .line 9
    .line 10
    const-string v4, "Missing required view with ID: "

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    sget-object v6, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    iget-object v0, v0, Las4;->b:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v0, Las8;

    .line 22
    .line 23
    iget-object v0, v0, Las8;->b:Liu8;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v1, Lzn4;->a:Lzn4;

    .line 29
    .line 30
    new-instance v1, Luv;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-direct {v1, v0, v7, v2}, Luv;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v7, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 37
    .line 38
    .line 39
    return-object v6

    .line 40
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 41
    .line 42
    sget v1, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->W:I

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const v1, 0x7f0d018d

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    const v3, 0x7f0a01a4

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move-object v11, v1

    .line 73
    check-cast v11, Landroidx/core/widget/NestedScrollView;

    .line 74
    .line 75
    if-eqz v11, :cond_1

    .line 76
    .line 77
    const v3, 0x7f0a05e9

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    invoke-static {v1}, Lxp3;->a(Landroid/view/View;)Lxp3;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    const v3, 0x7f0a05ea

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_1

    .line 98
    .line 99
    invoke-static {v1}, Lxp3;->a(Landroid/view/View;)Lxp3;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    const v3, 0x7f0a05eb

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_1

    .line 111
    .line 112
    const v2, 0x7f0a0129

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 120
    .line 121
    if-eqz v3, :cond_0

    .line 122
    .line 123
    const v2, 0x7f0a012a

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 131
    .line 132
    if-eqz v5, :cond_0

    .line 133
    .line 134
    const v2, 0x7f0a0253

    .line 135
    .line 136
    .line 137
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    .line 142
    .line 143
    if-eqz v6, :cond_0

    .line 144
    .line 145
    const v2, 0x7f0a02b8

    .line 146
    .line 147
    .line 148
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Landroid/widget/ImageView;

    .line 153
    .line 154
    if-eqz v6, :cond_0

    .line 155
    .line 156
    const v2, 0x7f0a02b9

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    check-cast v8, Landroid/widget/ImageView;

    .line 164
    .line 165
    if-eqz v8, :cond_0

    .line 166
    .line 167
    const v2, 0x7f0a02fa

    .line 168
    .line 169
    .line 170
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    if-eqz v9, :cond_0

    .line 175
    .line 176
    const v2, 0x7f0a05ae

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    check-cast v14, Landroid/widget/TextView;

    .line 184
    .line 185
    if-eqz v14, :cond_0

    .line 186
    .line 187
    const v2, 0x7f0a05ba

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v15

    .line 194
    check-cast v15, Landroid/widget/TextView;

    .line 195
    .line 196
    if-eqz v15, :cond_0

    .line 197
    .line 198
    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 199
    .line 200
    new-instance v2, Lso8;

    .line 201
    .line 202
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 203
    .line 204
    .line 205
    iput-object v1, v2, Lso8;->a:Ljava/lang/Object;

    .line 206
    .line 207
    iput-object v3, v2, Lso8;->b:Ljava/lang/Object;

    .line 208
    .line 209
    iput-object v5, v2, Lso8;->c:Ljava/lang/Object;

    .line 210
    .line 211
    iput-object v6, v2, Lso8;->d:Ljava/lang/Object;

    .line 212
    .line 213
    iput-object v8, v2, Lso8;->e:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v9, v2, Lso8;->f:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v14, v2, Lso8;->k:Ljava/lang/Object;

    .line 218
    .line 219
    iput-object v15, v2, Lso8;->n:Ljava/lang/Object;

    .line 220
    .line 221
    new-instance v8, Lro8;

    .line 222
    .line 223
    move-object v9, v0

    .line 224
    check-cast v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 225
    .line 226
    move-object v14, v2

    .line 227
    invoke-direct/range {v8 .. v14}, Lro8;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Landroidx/core/widget/NestedScrollView;Lxp3;Lxp3;Lso8;)V

    .line 228
    .line 229
    .line 230
    move-object v7, v8

    .line 231
    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :goto_0
    return-object v7

    .line 264
    :pswitch_1
    check-cast v0, Lrf8;

    .line 265
    .line 266
    iget-object v0, v0, Lrf8;->a:Lq63;

    .line 267
    .line 268
    invoke-virtual {v0}, Lq63;->A()J

    .line 269
    .line 270
    .line 271
    move-result-wide v0

    .line 272
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    return-object v0

    .line 277
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 278
    .line 279
    sget v1, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 280
    .line 281
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->N()Lay7;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    iget-object v1, v1, Lay7;->e:Lfm1;

    .line 286
    .line 287
    iget-object v1, v1, Lfm1;->c:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 290
    .line 291
    invoke-static {v0}, Lsz8;->x(Landroid/content/Context;)I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    const v3, 0x1010031

    .line 296
    .line 297
    .line 298
    invoke-static {v0, v3}, Lsz8;->y(Landroid/content/Context;I)I

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    new-instance v4, Lpw5;

    .line 311
    .line 312
    const-string v5, "Shape Layer 2"

    .line 313
    .line 314
    invoke-direct {v4, v5, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    new-instance v5, Lpw5;

    .line 322
    .line 323
    const-string v6, "Shape Layer 1"

    .line 324
    .line 325
    invoke-direct {v5, v6, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    new-instance v6, Lpw5;

    .line 333
    .line 334
    const-string v7, "Pre-comp 1"

    .line 335
    .line 336
    invoke-direct {v6, v7, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    new-instance v3, Lpw5;

    .line 344
    .line 345
    const-string v7, "Layer 2 Outlines"

    .line 346
    .line 347
    invoke-direct {v3, v7, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    new-instance v2, Lpw5;

    .line 355
    .line 356
    const-string v7, "Layer 1 Outlines"

    .line 357
    .line 358
    invoke-direct {v2, v7, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    filled-new-array {v4, v5, v6, v3, v2}, [Lpw5;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-static {v0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-eqz v2, :cond_2

    .line 382
    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    check-cast v2, Ljava/util/Map$Entry;

    .line 388
    .line 389
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    check-cast v3, Ljava/lang/String;

    .line 394
    .line 395
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    check-cast v2, Ljava/lang/Number;

    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    new-instance v4, Lpo4;

    .line 406
    .line 407
    const-string v5, "**"

    .line 408
    .line 409
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-direct {v4, v3}, Lpo4;-><init>([Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    sget-object v3, Lf35;->F:Landroid/graphics/ColorFilter;

    .line 417
    .line 418
    new-instance v5, Lxx7;

    .line 419
    .line 420
    invoke-direct {v5, v2}, Lxx7;-><init>(I)V

    .line 421
    .line 422
    .line 423
    iget-object v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 424
    .line 425
    new-instance v6, Lc25;

    .line 426
    .line 427
    invoke-direct {v6, v5}, Lc25;-><init>(Lxx7;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v4, v3, v6}, Lc35;->a(Lpo4;Ljava/lang/Object;Lcd;)V

    .line 431
    .line 432
    .line 433
    goto :goto_1

    .line 434
    :cond_2
    return-object v1

    .line 435
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 436
    .line 437
    sget v1, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 438
    .line 439
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    const v1, 0x7f0d017c

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v1, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    if-eqz v1, :cond_3

    .line 455
    .line 456
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 457
    .line 458
    .line 459
    move-result-object v10

    .line 460
    const v3, 0x7f0a00e2

    .line 461
    .line 462
    .line 463
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    move-object v11, v1

    .line 468
    check-cast v11, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 469
    .line 470
    if-eqz v11, :cond_3

    .line 471
    .line 472
    move-object v9, v0

    .line 473
    check-cast v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 474
    .line 475
    const v3, 0x7f0a03a8

    .line 476
    .line 477
    .line 478
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    move-object v12, v1

    .line 483
    check-cast v12, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 484
    .line 485
    if-eqz v12, :cond_3

    .line 486
    .line 487
    const v3, 0x7f0a03bf

    .line 488
    .line 489
    .line 490
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    move-object v13, v1

    .line 495
    check-cast v13, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 496
    .line 497
    if-eqz v13, :cond_3

    .line 498
    .line 499
    new-instance v8, Loo7;

    .line 500
    .line 501
    invoke-direct/range {v8 .. v13}, Loo7;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

    .line 502
    .line 503
    .line 504
    move-object v7, v8

    .line 505
    goto :goto_2

    .line 506
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    :goto_2
    return-object v7

    .line 522
    :pswitch_4
    check-cast v0, Lpa7;

    .line 523
    .line 524
    const-string v1, "folder_backups"

    .line 525
    .line 526
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    return-object v0

    .line 534
    :pswitch_5
    check-cast v0, Lq47;

    .line 535
    .line 536
    sget-object v1, Lc47;->a:Lc47;

    .line 537
    .line 538
    invoke-virtual {v1}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 539
    .line 540
    .line 541
    move-result-object v8

    .line 542
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getMessagesSchedules()Ljava/util/List;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    if-eqz v1, :cond_4

    .line 547
    .line 548
    new-instance v7, Ljava/util/ArrayList;

    .line 549
    .line 550
    invoke-static {v1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 555
    .line 556
    .line 557
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    if-eqz v2, :cond_4

    .line 566
    .line 567
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    move-object v9, v2

    .line 572
    check-cast v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 573
    .line 574
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->isPermissionsGranted()Z

    .line 575
    .line 576
    .line 577
    move-result v15

    .line 578
    const/16 v16, 0x1f

    .line 579
    .line 580
    const/16 v17, 0x0

    .line 581
    .line 582
    const/4 v10, 0x0

    .line 583
    const/4 v11, 0x0

    .line 584
    const/4 v12, 0x0

    .line 585
    const/4 v13, 0x0

    .line 586
    const/4 v14, 0x0

    .line 587
    invoke-static/range {v9 .. v17}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    goto :goto_3

    .line 595
    :cond_4
    move-object/from16 v16, v7

    .line 596
    .line 597
    const/16 v22, 0x1f7f

    .line 598
    .line 599
    const/16 v23, 0x0

    .line 600
    .line 601
    const/4 v9, 0x0

    .line 602
    const/4 v10, 0x0

    .line 603
    const/4 v11, 0x0

    .line 604
    const/4 v12, 0x0

    .line 605
    const/4 v13, 0x0

    .line 606
    const/4 v14, 0x0

    .line 607
    const/4 v15, 0x0

    .line 608
    const/16 v17, 0x0

    .line 609
    .line 610
    const/16 v18, 0x0

    .line 611
    .line 612
    const/16 v19, 0x0

    .line 613
    .line 614
    const/16 v20, 0x0

    .line 615
    .line 616
    const/16 v21, 0x0

    .line 617
    .line 618
    invoke-static/range {v8 .. v23}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    invoke-static {v0, v1}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 623
    .line 624
    .line 625
    return-object v6

    .line 626
    :pswitch_6
    check-cast v0, Lv37;

    .line 627
    .line 628
    sget-object v1, Llr4;->e:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 629
    .line 630
    invoke-static {v1}, Lw13;->g(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;)Ljava/util/ArrayList;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    new-instance v3, Ljava/util/ArrayList;

    .line 635
    .line 636
    invoke-static {v1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 637
    .line 638
    .line 639
    move-result v4

    .line 640
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 648
    .line 649
    .line 650
    move-result v4

    .line 651
    if-eqz v4, :cond_5

    .line 652
    .line 653
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v4

    .line 657
    check-cast v4, Lvq4;

    .line 658
    .line 659
    iget-object v4, v4, Lvq4;->a:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 660
    .line 661
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getItemId()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v4

    .line 665
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    goto :goto_4

    .line 669
    :cond_5
    sget-object v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 670
    .line 671
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    .line 673
    .line 674
    invoke-static {}, Lhr4;->a()Ljava/util/List;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    new-instance v4, Ljava/util/ArrayList;

    .line 679
    .line 680
    invoke-static {v1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 681
    .line 682
    .line 683
    move-result v2

    .line 684
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 685
    .line 686
    .line 687
    check-cast v1, Ljava/util/ArrayList;

    .line 688
    .line 689
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 694
    .line 695
    .line 696
    move-result v2

    .line 697
    if-eqz v2, :cond_6

    .line 698
    .line 699
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v2

    .line 703
    check-cast v2, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 704
    .line 705
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getItemId()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    goto :goto_5

    .line 713
    :cond_6
    invoke-static {v3, v4}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    new-instance v2, Ljava/util/ArrayList;

    .line 718
    .line 719
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 723
    .line 724
    .line 725
    move-result-object v5

    .line 726
    :cond_7
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 727
    .line 728
    .line 729
    move-result v7

    .line 730
    if-eqz v7, :cond_8

    .line 731
    .line 732
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v7

    .line 736
    move-object v8, v7

    .line 737
    check-cast v8, Ljava/lang/String;

    .line 738
    .line 739
    iget-object v9, v0, Lv37;->g:Ljava/util/List;

    .line 740
    .line 741
    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result v8

    .line 745
    if-eqz v8, :cond_7

    .line 746
    .line 747
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    goto :goto_6

    .line 751
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    .line 752
    .line 753
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    :cond_9
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 761
    .line 762
    .line 763
    move-result v7

    .line 764
    if-eqz v7, :cond_a

    .line 765
    .line 766
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v7

    .line 770
    move-object v8, v7

    .line 771
    check-cast v8, Ljava/lang/String;

    .line 772
    .line 773
    iget-object v9, v0, Lv37;->g:Ljava/util/List;

    .line 774
    .line 775
    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    move-result v9

    .line 779
    if-nez v9, :cond_9

    .line 780
    .line 781
    iget-object v9, v0, Lv37;->f:Ljava/util/List;

    .line 782
    .line 783
    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    move-result v8

    .line 787
    if-nez v8, :cond_9

    .line 788
    .line 789
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    goto :goto_7

    .line 793
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    .line 794
    .line 795
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 799
    .line 800
    .line 801
    move-result-object v4

    .line 802
    :cond_b
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 803
    .line 804
    .line 805
    move-result v7

    .line 806
    if-eqz v7, :cond_c

    .line 807
    .line 808
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v7

    .line 812
    move-object v8, v7

    .line 813
    check-cast v8, Ljava/lang/String;

    .line 814
    .line 815
    iget-object v9, v0, Lv37;->g:Ljava/util/List;

    .line 816
    .line 817
    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    move-result v9

    .line 821
    if-nez v9, :cond_b

    .line 822
    .line 823
    iget-object v9, v0, Lv37;->f:Ljava/util/List;

    .line 824
    .line 825
    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    move-result v8

    .line 829
    if-nez v8, :cond_b

    .line 830
    .line 831
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    goto :goto_8

    .line 835
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    .line 836
    .line 837
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    :cond_d
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 845
    .line 846
    .line 847
    move-result v7

    .line 848
    if-eqz v7, :cond_e

    .line 849
    .line 850
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object v7

    .line 854
    move-object v8, v7

    .line 855
    check-cast v8, Ljava/lang/String;

    .line 856
    .line 857
    iget-object v9, v0, Lv37;->f:Ljava/util/List;

    .line 858
    .line 859
    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result v8

    .line 863
    if-eqz v8, :cond_d

    .line 864
    .line 865
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    .line 867
    .line 868
    goto :goto_9

    .line 869
    :cond_e
    new-instance v1, Lu37;

    .line 870
    .line 871
    invoke-direct {v1, v2, v5, v3, v4}, Lu37;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 872
    .line 873
    .line 874
    iget-object v0, v0, Lv37;->h:Lex6;

    .line 875
    .line 876
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 877
    .line 878
    .line 879
    return-object v6

    .line 880
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 881
    .line 882
    sget v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 883
    .line 884
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->N()Ls37;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    iget-object v0, v0, Ls37;->t:Landroid/widget/TextView;

    .line 889
    .line 890
    return-object v0

    .line 891
    :pswitch_8
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 892
    .line 893
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->e(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;)Ljava/util/List;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    return-object v0

    .line 898
    :pswitch_9
    check-cast v0, Lwx6;

    .line 899
    .line 900
    invoke-interface {v0}, Lfu4;->getLifecycle()Lhu4;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    new-instance v2, Lag6;

    .line 905
    .line 906
    invoke-direct {v2, v0}, Lag6;-><init>(Lwx6;)V

    .line 907
    .line 908
    .line 909
    invoke-virtual {v1, v2}, Lhu4;->a(Leu4;)V

    .line 910
    .line 911
    .line 912
    return-object v6

    .line 913
    :pswitch_a
    check-cast v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 914
    .line 915
    sget v1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 916
    .line 917
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->R()Lc56;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    iget-object v0, v0, Lc56;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 922
    .line 923
    return-object v0

    .line 924
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;

    .line 925
    .line 926
    sget v1, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->P:I

    .line 927
    .line 928
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->O()Lp36;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    iget-object v0, v0, Lp36;->c:Lcom/google/android/material/button/MaterialButton;

    .line 933
    .line 934
    return-object v0

    .line 935
    :pswitch_c
    check-cast v0, Landroid/content/Intent;

    .line 936
    .line 937
    sget-object v1, Lcom/pcloud/sdk/AuthorizationActivity;->f:Landroid/net/Uri;

    .line 938
    .line 939
    const-string v1, "com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_RESULT"

    .line 940
    .line 941
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 942
    .line 943
    .line 944
    move-result v2

    .line 945
    if-eqz v2, :cond_f

    .line 946
    .line 947
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    move-object v7, v0

    .line 952
    check-cast v7, Lv80;

    .line 953
    .line 954
    goto :goto_a

    .line 955
    :cond_f
    const-string v0, "Invalid intent provided."

    .line 956
    .line 957
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    :goto_a
    return-object v7

    .line 961
    :pswitch_d
    check-cast v0, Leb2;

    .line 962
    .line 963
    const-class v1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 964
    .line 965
    invoke-virtual {v0, v1}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    check-cast v0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 970
    .line 971
    return-object v0

    .line 972
    :pswitch_e
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 973
    .line 974
    sget v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->T:I

    .line 975
    .line 976
    new-instance v1, Lorg/swiftapps/swiftbackup/settings/h;

    .line 977
    .line 978
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->O()Lbj5;

    .line 979
    .line 980
    .line 981
    move-result-object v2

    .line 982
    iget-object v2, v2, Lbj5;->d:Lcj5;

    .line 983
    .line 984
    invoke-direct {v1, v0, v2}, Lorg/swiftapps/swiftbackup/settings/h;-><init>(Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;Lcj5;)V

    .line 985
    .line 986
    .line 987
    return-object v1

    .line 988
    :pswitch_f
    move-object v1, v0

    .line 989
    check-cast v1, Loi5;

    .line 990
    .line 991
    iget-object v2, v1, Loi5;->x:Lq63;

    .line 992
    .line 993
    :try_start_0
    invoke-virtual {v2}, Lq63;->G()Lxs3;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    .line 999
    .line 1000
    const/4 v5, 0x1

    .line 1001
    goto :goto_b

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    iget-object v1, v1, Loi5;->k:Ljava/lang/String;

    .line 1004
    .line 1005
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v2

    .line 1009
    const-string v3, "Unable to open random writer for "

    .line 1010
    .line 1011
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v2

    .line 1015
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1016
    .line 1017
    .line 1018
    :goto_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    return-object v0

    .line 1023
    :pswitch_10
    check-cast v0, Lcf5;

    .line 1024
    .line 1025
    const-string v1, "compression_level_msgs"

    .line 1026
    .line 1027
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1032
    .line 1033
    .line 1034
    return-object v0

    .line 1035
    :pswitch_11
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 1036
    .line 1037
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 1038
    .line 1039
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->X()Lzx2;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    iget-object v0, v0, Lzx2;->e:Landroid/widget/TextView;

    .line 1044
    .line 1045
    return-object v0

    .line 1046
    :pswitch_12
    check-cast v0, Lis4;

    .line 1047
    .line 1048
    iget-object v1, v0, Lis4;->a:Ljava/lang/String;

    .line 1049
    .line 1050
    iget-object v0, v0, Lis4;->b:Ljava/lang/String;

    .line 1051
    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    .line 1060
    const-string v1, "-"

    .line 1061
    .line 1062
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    return-object v0

    .line 1077
    :pswitch_13
    check-cast v0, Lfs4;

    .line 1078
    .line 1079
    const-string v1, "extra_logging"

    .line 1080
    .line 1081
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v0

    .line 1085
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1086
    .line 1087
    .line 1088
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 1089
    .line 1090
    return-object v0

    .line 1091
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
