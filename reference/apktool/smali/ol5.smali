.class public abstract Lol5;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lbl5;

.field public final b:Lfl5;

.field public final c:Lhl5;

.field public d:Lks7;

.field public e:Lll5;

.field public f:Lkl5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    invoke-static/range {p1 .. p4}, Lzm5;->J(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1, v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    .line 13
    .line 14
    new-instance v7, Lhl5;

    .line 15
    .line 16
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    iput-boolean v8, v7, Lhl5;->b:Z

    .line 21
    .line 22
    iput-object v7, v0, Lol5;->c:Lhl5;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/16 v9, 0x11

    .line 29
    .line 30
    const/16 v10, 0xf

    .line 31
    .line 32
    filled-new-array {v9, v10}, [I

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    sget-object v3, Ltd6;->L:[I

    .line 37
    .line 38
    move/from16 v5, p4

    .line 39
    .line 40
    invoke-static/range {v1 .. v6}, Ljd4;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lu94;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-instance v5, Lbl5;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v0}, Lol5;->getMaxItemCount()I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    instance-of v12, v0, Lcom/google/android/material/navigationrail/NavigationRailView;

    .line 55
    .line 56
    invoke-direct {v5, v1, v6, v11, v12}, Lbl5;-><init>(Landroid/content/Context;Ljava/lang/Class;IZ)V

    .line 57
    .line 58
    .line 59
    iput-object v5, v0, Lol5;->a:Lbl5;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lol5;->a(Landroid/content/Context;)Lfl5;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    iput-object v6, v0, Lol5;->b:Lfl5;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    invoke-virtual {v6, v11}, Landroid/view/View;->setMinimumHeight(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lol5;->getCollapsedMaxItemCount()I

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    invoke-virtual {v6, v11}, Lfl5;->setCollapsedMaxItemCount(I)V

    .line 79
    .line 80
    .line 81
    iput-object v6, v7, Lhl5;->a:Lfl5;

    .line 82
    .line 83
    const/4 v11, 0x1

    .line 84
    iput v11, v7, Lhl5;->c:I

    .line 85
    .line 86
    invoke-virtual {v6, v7}, Lfl5;->setPresenter(Lhl5;)V

    .line 87
    .line 88
    .line 89
    iget-object v13, v5, Lfc5;->a:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {v5, v7, v13}, Lfc5;->b(Lwc5;Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    invoke-virtual {v7, v13, v5}, Lhl5;->l(Landroid/content/Context;Lfc5;)V

    .line 99
    .line 100
    .line 101
    iget-object v5, v3, Lu94;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v5, Landroid/content/res/TypedArray;

    .line 104
    .line 105
    const/16 v7, 0xb

    .line 106
    .line 107
    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    if-eqz v13, :cond_0

    .line 112
    .line 113
    invoke-virtual {v3, v7}, Lu94;->a(I)Landroid/content/res/ColorStateList;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    invoke-virtual {v6, v13}, Lfl5;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v6}, Lfl5;->c()Landroid/content/res/ColorStateList;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    invoke-virtual {v6, v13}, Lfl5;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 126
    .line 127
    .line 128
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v13

    .line 132
    const v14, 0x7f070439

    .line 133
    .line 134
    .line 135
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    const/16 v14, 0xa

    .line 140
    .line 141
    invoke-virtual {v5, v14, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    invoke-virtual {v0, v13}, Lol5;->setItemIconSize(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 149
    .line 150
    .line 151
    move-result v13

    .line 152
    if-eqz v13, :cond_1

    .line 153
    .line 154
    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    invoke-virtual {v0, v9}, Lol5;->setItemTextAppearanceInactive(I)V

    .line 159
    .line 160
    .line 161
    :cond_1
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-eqz v9, :cond_2

    .line 166
    .line 167
    invoke-virtual {v5, v10, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    invoke-virtual {v0, v9}, Lol5;->setItemTextAppearanceActive(I)V

    .line 172
    .line 173
    .line 174
    :cond_2
    const/4 v9, 0x4

    .line 175
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    if-eqz v10, :cond_3

    .line 180
    .line 181
    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    invoke-virtual {v0, v10}, Lol5;->setHorizontalItemTextAppearanceInactive(I)V

    .line 186
    .line 187
    .line 188
    :cond_3
    const/4 v10, 0x3

    .line 189
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 190
    .line 191
    .line 192
    move-result v13

    .line 193
    if-eqz v13, :cond_4

    .line 194
    .line 195
    invoke-virtual {v5, v10, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    invoke-virtual {v0, v13}, Lol5;->setHorizontalItemTextAppearanceActive(I)V

    .line 200
    .line 201
    .line 202
    :cond_4
    const/16 v13, 0x10

    .line 203
    .line 204
    invoke-virtual {v5, v13, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 205
    .line 206
    .line 207
    move-result v13

    .line 208
    invoke-virtual {v0, v13}, Lol5;->setItemTextAppearanceActiveBoldEnabled(Z)V

    .line 209
    .line 210
    .line 211
    const/16 v13, 0x12

    .line 212
    .line 213
    invoke-virtual {v5, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 214
    .line 215
    .line 216
    move-result v15

    .line 217
    if-eqz v15, :cond_5

    .line 218
    .line 219
    invoke-virtual {v3, v13}, Lu94;->a(I)Landroid/content/res/ColorStateList;

    .line 220
    .line 221
    .line 222
    move-result-object v13

    .line 223
    invoke-virtual {v0, v13}, Lol5;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 224
    .line 225
    .line 226
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 227
    .line 228
    .line 229
    move-result-object v13

    .line 230
    invoke-static {v13}, Ldu;->d(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    .line 231
    .line 232
    .line 233
    move-result-object v15

    .line 234
    if-eqz v13, :cond_6

    .line 235
    .line 236
    if-eqz v15, :cond_8

    .line 237
    .line 238
    :cond_6
    move/from16 v13, p4

    .line 239
    .line 240
    invoke-static {v1, v2, v4, v13}, Ltb7;->h(Landroid/content/Context;Landroid/util/AttributeSet;II)Lsb7;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v2}, Lsb7;->a()Ltb7;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    new-instance v4, Lc95;

    .line 249
    .line 250
    invoke-direct {v4, v2}, Lc95;-><init>(Ltb7;)V

    .line 251
    .line 252
    .line 253
    if-eqz v15, :cond_7

    .line 254
    .line 255
    invoke-virtual {v4, v15}, Lc95;->t(Landroid/content/res/ColorStateList;)V

    .line 256
    .line 257
    .line 258
    :cond_7
    invoke-virtual {v4, v1}, Lc95;->p(Landroid/content/Context;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    .line 263
    .line 264
    :cond_8
    const/16 v2, 0xd

    .line 265
    .line 266
    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-eqz v4, :cond_9

    .line 271
    .line 272
    invoke-virtual {v5, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    invoke-virtual {v0, v2}, Lol5;->setItemPaddingTop(I)V

    .line 277
    .line 278
    .line 279
    :cond_9
    const/16 v2, 0xc

    .line 280
    .line 281
    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_a

    .line 286
    .line 287
    invoke-virtual {v5, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    invoke-virtual {v0, v2}, Lol5;->setItemPaddingBottom(I)V

    .line 292
    .line 293
    .line 294
    :cond_a
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eqz v2, :cond_b

    .line 299
    .line 300
    invoke-virtual {v5, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    invoke-virtual {v0, v2}, Lol5;->setActiveIndicatorLabelPadding(I)V

    .line 305
    .line 306
    .line 307
    :cond_b
    const/4 v2, 0x5

    .line 308
    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-eqz v4, :cond_c

    .line 313
    .line 314
    invoke-virtual {v5, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    invoke-virtual {v0, v4}, Lol5;->setIconLabelHorizontalSpacing(I)V

    .line 319
    .line 320
    .line 321
    :cond_c
    const/4 v4, 0x2

    .line 322
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 323
    .line 324
    .line 325
    move-result v13

    .line 326
    if-eqz v13, :cond_d

    .line 327
    .line 328
    invoke-virtual {v5, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 329
    .line 330
    .line 331
    move-result v13

    .line 332
    int-to-float v13, v13

    .line 333
    invoke-virtual {v0, v13}, Lol5;->setElevation(F)V

    .line 334
    .line 335
    .line 336
    :cond_d
    invoke-static {v1, v3, v11}, Lk55;->l(Landroid/content/Context;Lu94;I)Landroid/content/res/ColorStateList;

    .line 337
    .line 338
    .line 339
    move-result-object v13

    .line 340
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 341
    .line 342
    .line 343
    move-result-object v15

    .line 344
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 345
    .line 346
    .line 347
    move-result-object v15

    .line 348
    invoke-virtual {v15, v13}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 349
    .line 350
    .line 351
    const/16 v13, 0x15

    .line 352
    .line 353
    const/4 v15, -0x1

    .line 354
    invoke-virtual {v5, v13, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 355
    .line 356
    .line 357
    move-result v13

    .line 358
    invoke-virtual {v0, v13}, Lol5;->setLabelVisibilityMode(I)V

    .line 359
    .line 360
    .line 361
    const/16 v13, 0x9

    .line 362
    .line 363
    move/from16 p1, v15

    .line 364
    .line 365
    invoke-virtual {v5, v13, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 366
    .line 367
    .line 368
    move-result v15

    .line 369
    invoke-virtual {v0, v15}, Lol5;->setItemIconGravity(I)V

    .line 370
    .line 371
    .line 372
    const/16 v15, 0x31

    .line 373
    .line 374
    const/16 v7, 0x8

    .line 375
    .line 376
    invoke-virtual {v5, v7, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 377
    .line 378
    .line 379
    move-result v15

    .line 380
    invoke-virtual {v0, v15}, Lol5;->setItemGravity(I)V

    .line 381
    .line 382
    .line 383
    const/4 v15, 0x7

    .line 384
    invoke-virtual {v5, v15, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-eqz v4, :cond_e

    .line 389
    .line 390
    invoke-virtual {v6, v4}, Lfl5;->setItemBackgroundRes(I)V

    .line 391
    .line 392
    .line 393
    goto :goto_1

    .line 394
    :cond_e
    const/16 v4, 0xe

    .line 395
    .line 396
    invoke-static {v1, v3, v4}, Lk55;->l(Landroid/content/Context;Lu94;I)Landroid/content/res/ColorStateList;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-virtual {v0, v4}, Lol5;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 401
    .line 402
    .line 403
    :goto_1
    const/16 v4, 0x16

    .line 404
    .line 405
    invoke-virtual {v5, v4, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    invoke-direct {v0, v4}, Lol5;->setMeasureBottomPaddingFromLabelBaseline(Z)V

    .line 410
    .line 411
    .line 412
    const/16 v4, 0x13

    .line 413
    .line 414
    invoke-virtual {v5, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    invoke-virtual {v0, v4}, Lol5;->setLabelFontScalingEnabled(Z)V

    .line 419
    .line 420
    .line 421
    const/16 v4, 0x14

    .line 422
    .line 423
    invoke-virtual {v5, v4, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    invoke-virtual {v0, v4}, Lol5;->setLabelMaxLines(I)V

    .line 428
    .line 429
    .line 430
    const/4 v4, 0x6

    .line 431
    invoke-virtual {v5, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 432
    .line 433
    .line 434
    move-result v10

    .line 435
    if-eqz v10, :cond_16

    .line 436
    .line 437
    invoke-virtual {v0, v11}, Lol5;->setItemActiveIndicatorEnabled(Z)V

    .line 438
    .line 439
    .line 440
    sget-object v4, Ltd6;->K:[I

    .line 441
    .line 442
    invoke-virtual {v1, v10, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    invoke-virtual {v4, v11, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 447
    .line 448
    .line 449
    move-result v10

    .line 450
    invoke-virtual {v0, v10}, Lol5;->setItemActiveIndicatorWidth(I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v4, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 454
    .line 455
    .line 456
    move-result v11

    .line 457
    invoke-virtual {v0, v11}, Lol5;->setItemActiveIndicatorHeight(I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v4, v14, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 461
    .line 462
    .line 463
    move-result v11

    .line 464
    invoke-virtual {v0, v11}, Lol5;->setItemActiveIndicatorMarginHorizontal(I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v14

    .line 471
    const/4 v8, -0x2

    .line 472
    if-eqz v14, :cond_11

    .line 473
    .line 474
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v9

    .line 478
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v9

    .line 482
    if-eqz v9, :cond_f

    .line 483
    .line 484
    move/from16 v8, p1

    .line 485
    .line 486
    goto :goto_2

    .line 487
    :cond_f
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v9

    .line 491
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v9

    .line 495
    if-eqz v9, :cond_10

    .line 496
    .line 497
    goto :goto_2

    .line 498
    :cond_10
    invoke-virtual {v4, v13, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 499
    .line 500
    .line 501
    move-result v8

    .line 502
    :cond_11
    :goto_2
    invoke-virtual {v0, v8}, Lol5;->setItemActiveIndicatorExpandedWidth(I)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v4, v15, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 506
    .line 507
    .line 508
    move-result v8

    .line 509
    invoke-virtual {v0, v8}, Lol5;->setItemActiveIndicatorExpandedHeight(I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 513
    .line 514
    .line 515
    move-result v7

    .line 516
    invoke-virtual {v0, v7}, Lol5;->setItemActiveIndicatorExpandedMarginHorizontal(I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 520
    .line 521
    .line 522
    move-result-object v7

    .line 523
    const v8, 0x7f0702f2

    .line 524
    .line 525
    .line 526
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 527
    .line 528
    .line 529
    move-result v7

    .line 530
    invoke-virtual {v4, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    const/4 v8, 0x4

    .line 535
    invoke-virtual {v4, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 536
    .line 537
    .line 538
    move-result v7

    .line 539
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 540
    .line 541
    .line 542
    move-result v8

    .line 543
    const/4 v9, 0x1

    .line 544
    if-ne v8, v9, :cond_12

    .line 545
    .line 546
    move v8, v7

    .line 547
    :goto_3
    const/4 v10, 0x6

    .line 548
    const/4 v11, 0x0

    .line 549
    goto :goto_4

    .line 550
    :cond_12
    move v8, v2

    .line 551
    goto :goto_3

    .line 552
    :goto_4
    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 553
    .line 554
    .line 555
    move-result v10

    .line 556
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 557
    .line 558
    .line 559
    move-result v13

    .line 560
    if-ne v13, v9, :cond_13

    .line 561
    .line 562
    :goto_5
    const/4 v7, 0x3

    .line 563
    goto :goto_6

    .line 564
    :cond_13
    move v2, v7

    .line 565
    goto :goto_5

    .line 566
    :goto_6
    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 567
    .line 568
    .line 569
    move-result v7

    .line 570
    iget-object v9, v6, Lfl5;->q0:Landroid/graphics/Rect;

    .line 571
    .line 572
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 573
    .line 574
    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 575
    .line 576
    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 577
    .line 578
    iput v7, v9, Landroid/graphics/Rect;->bottom:I

    .line 579
    .line 580
    iget-object v2, v6, Lfl5;->k:[Ldl5;

    .line 581
    .line 582
    if-eqz v2, :cond_15

    .line 583
    .line 584
    array-length v6, v2

    .line 585
    const/4 v11, 0x0

    .line 586
    :goto_7
    if-ge v11, v6, :cond_15

    .line 587
    .line 588
    aget-object v7, v2, v11

    .line 589
    .line 590
    instance-of v8, v7, Lal5;

    .line 591
    .line 592
    if-eqz v8, :cond_14

    .line 593
    .line 594
    check-cast v7, Lal5;

    .line 595
    .line 596
    invoke-virtual {v7, v9}, Lal5;->setActiveIndicatorExpandedPadding(Landroid/graphics/Rect;)V

    .line 597
    .line 598
    .line 599
    :cond_14
    add-int/lit8 v11, v11, 0x1

    .line 600
    .line 601
    goto :goto_7

    .line 602
    :cond_15
    const/4 v2, 0x2

    .line 603
    invoke-static {v1, v4, v2}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    invoke-virtual {v0, v2}, Lol5;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    .line 608
    .line 609
    .line 610
    const/16 v2, 0xb

    .line 611
    .line 612
    const/4 v11, 0x0

    .line 613
    invoke-virtual {v4, v2, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 614
    .line 615
    .line 616
    move-result v2

    .line 617
    invoke-static {v1, v2, v11}, Ltb7;->g(Landroid/content/Context;II)Lsb7;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    invoke-virtual {v1}, Lsb7;->a()Ltb7;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    invoke-virtual {v0, v1}, Lol5;->setItemActiveIndicatorShapeAppearance(Ltb7;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 629
    .line 630
    .line 631
    goto :goto_8

    .line 632
    :cond_16
    move v11, v8

    .line 633
    :goto_8
    const/16 v1, 0x17

    .line 634
    .line 635
    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    if-eqz v2, :cond_17

    .line 640
    .line 641
    invoke-virtual {v5, v1, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 642
    .line 643
    .line 644
    move-result v1

    .line 645
    iget-object v2, v0, Lol5;->c:Lhl5;

    .line 646
    .line 647
    const/4 v9, 0x1

    .line 648
    iput-boolean v9, v2, Lhl5;->b:Z

    .line 649
    .line 650
    invoke-direct {v0}, Lol5;->getMenuInflater()Landroid/view/MenuInflater;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    iget-object v5, v0, Lol5;->a:Lbl5;

    .line 655
    .line 656
    invoke-virtual {v4, v1, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 657
    .line 658
    .line 659
    iput-boolean v11, v2, Lhl5;->b:Z

    .line 660
    .line 661
    invoke-virtual {v2, v9}, Lhl5;->c(Z)V

    .line 662
    .line 663
    .line 664
    :cond_17
    invoke-virtual {v3}, Lu94;->f()V

    .line 665
    .line 666
    .line 667
    if-nez v12, :cond_18

    .line 668
    .line 669
    iget-object v1, v0, Lol5;->b:Lfl5;

    .line 670
    .line 671
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 672
    .line 673
    .line 674
    :cond_18
    iget-object v1, v0, Lol5;->a:Lbl5;

    .line 675
    .line 676
    new-instance v2, Lnh;

    .line 677
    .line 678
    const/16 v3, 0xa

    .line 679
    .line 680
    invoke-direct {v2, v0, v3}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 681
    .line 682
    .line 683
    iput-object v2, v1, Lfc5;->e:Ldc5;

    .line 684
    .line 685
    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lol5;->d:Lks7;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lks7;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lks7;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lol5;->d:Lks7;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lol5;->d:Lks7;

    .line 17
    .line 18
    return-object p0
.end method

.method private setMeasureBottomPaddingFromLabelBaseline(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setMeasurePaddingFromLabelBaseline(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Lfl5;
.end method

.method public final b(I)Lwk0;
    .locals 6

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const-string v1, " is not a valid view id"

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq p1, v2, :cond_5

    .line 11
    .line 12
    iget-object v3, p0, Lfl5;->N:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lwk0;

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    new-instance v5, Lwk0;

    .line 27
    .line 28
    invoke-direct {v5, v4, v0}, Lwk0;-><init>(Landroid/content/Context;Lxk0;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    move-object v4, v5

    .line 35
    :cond_0
    if-eq p1, v2, :cond_4

    .line 36
    .line 37
    iget-object p0, p0, Lfl5;->k:[Ldl5;

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    array-length v1, p0

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    if-ge v2, v1, :cond_2

    .line 44
    .line 45
    aget-object v3, p0, v2

    .line 46
    .line 47
    instance-of v5, v3, Lal5;

    .line 48
    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    check-cast v3, Lal5;

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-ne v5, p1, :cond_1

    .line 58
    .line 59
    move-object v0, v3

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Lal5;->setBadge(Lwk0;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-object v4

    .line 70
    :cond_4
    invoke-static {p1, v1}, Lx5;->f(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_5
    invoke-static {p1, v1}, Lx5;->f(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method

.method public getActiveIndicatorLabelPadding()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getActiveIndicatorLabelPadding()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getCollapsedMaxItemCount()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lol5;->getMaxItemCount()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public getHorizontalItemTextAppearanceActive()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getHorizontalItemTextAppearanceActive()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getHorizontalItemTextAppearanceInactive()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getHorizontalItemTextAppearanceInactive()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getIconLabelHorizontalSpacing()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getIconLabelHorizontalSpacing()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getItemActiveIndicatorExpandedHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemActiveIndicatorExpandedHeight()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemActiveIndicatorExpandedMarginHorizontal()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemActiveIndicatorExpandedMarginHorizontal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemActiveIndicatorExpandedWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemActiveIndicatorExpandedWidth()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemActiveIndicatorHeight()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemActiveIndicatorMarginHorizontal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemActiveIndicatorShapeAppearance()Ltb7;
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemActiveIndicatorShapeAppearance()Ltb7;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemActiveIndicatorWidth()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getItemBackgroundResource()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemBackgroundRes()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemGravity()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemGravity()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemIconGravity()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemIconGravity()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemIconSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemIconSize()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getIconTintList()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getItemPaddingBottom()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemPaddingBottom()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemPaddingTop()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemPaddingTop()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemRippleColor()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getItemTextAppearanceActive()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemTextAppearanceActive()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemTextAppearanceInactive()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getItemTextColor()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getLabelVisibilityMode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public abstract getMaxItemCount()I
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->a:Lbl5;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMenuView()Lzc5;
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMenuViewGroup()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPresenter()Lhl5;
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->c:Lhl5;

    .line 2
    .line 3
    return-object p0
.end method

.method public getScaleLabelTextWithFont()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getScaleLabelTextWithFont()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getSelectedItemId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfl5;->getSelectedItemId()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lxh8;->E(Landroid/view/ViewGroup;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lnl5;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lnl5;

    .line 10
    .line 11
    iget-object v0, p1, Le3;->a:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lnl5;->c:Landroid/os/Bundle;

    .line 17
    .line 18
    iget-object p0, p0, Lol5;->a:Lbl5;

    .line 19
    .line 20
    iget-object p0, p0, Lfc5;->N:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    const-string v0, "android:menu:presenters"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lwc5;

    .line 58
    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-interface {v2}, Lwc5;->getId()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-lez v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/os/Parcelable;

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-interface {v2, v1}, Lwc5;->h(Landroid/os/Parcelable;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    :goto_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lnl5;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Le3;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, v1, Lnl5;->c:Landroid/os/Bundle;

    .line 16
    .line 17
    iget-object p0, p0, Lol5;->a:Lbl5;

    .line 18
    .line 19
    iget-object p0, p0, Lfc5;->N:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lwc5;

    .line 54
    .line 55
    if-nez v5, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-interface {v5}, Lwc5;->getId()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-lez v4, :cond_1

    .line 66
    .line 67
    invoke-interface {v5}, Lwc5;->m()Landroid/os/Parcelable;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const-string p0, "android:menu:presenters"

    .line 78
    .line 79
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 80
    .line 81
    .line 82
    return-object v1
.end method

.method public setActiveIndicatorLabelPadding(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setActiveIndicatorLabelPadding(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lxh8;->C(Landroid/view/ViewGroup;F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setHorizontalItemTextAppearanceActive(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setHorizontalItemTextAppearanceActive(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHorizontalItemTextAppearanceInactive(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setHorizontalItemTextAppearanceInactive(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIconLabelHorizontalSpacing(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setIconLabelHorizontalSpacing(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemActiveIndicatorEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorExpandedHeight(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemActiveIndicatorExpandedHeight(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorExpandedMarginHorizontal(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemActiveIndicatorExpandedMarginHorizontal(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorExpandedWidth(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemActiveIndicatorExpandedWidth(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemActiveIndicatorHeight(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemActiveIndicatorMarginHorizontal(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Ltb7;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemActiveIndicatorShapeAppearance(Ltb7;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemActiveIndicatorWidth(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemBackgroundRes(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemGravity(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfl5;->getItemGravity()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lfl5;->setItemGravity(I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lol5;->c:Lhl5;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lhl5;->c(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setItemIconGravity(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfl5;->getItemIconGravity()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lfl5;->setItemIconGravity(I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lol5;->c:Lhl5;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lhl5;->c(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemIconSize(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lol5;->setItemIconSize(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemPaddingBottom(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemPaddingTop(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemTextAppearanceActive(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemTextAppearanceActiveBoldEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemTextAppearanceInactive(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLabelFontScalingEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setLabelFontScalingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLabelMaxLines(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl5;->setLabelMaxLines(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lol5;->b:Lfl5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfl5;->getLabelVisibilityMode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lfl5;->setLabelVisibilityMode(I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lol5;->c:Lhl5;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lhl5;->c(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setOnItemReselectedListener(Lkl5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lol5;->f:Lkl5;

    .line 2
    .line 3
    return-void
.end method

.method public setOnItemSelectedListener(Lll5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lol5;->e:Lll5;

    .line 2
    .line 3
    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lol5;->a:Lbl5;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lfc5;->findItem(I)Landroid/view/MenuItem;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lol5;->c:Lhl5;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, p1, v1, v2}, Lfc5;->q(Landroid/view/MenuItem;Lwc5;I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p1}, Landroid/view/MenuItem;->isCheckable()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lol5;->b:Lfl5;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lfl5;->setCheckedItem(Landroid/view/MenuItem;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
