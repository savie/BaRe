.class public final Li56;
.super Lr35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:Lorg/swiftapps/swiftbackup/premium/PremiumActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/premium/PremiumActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr35;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li56;->f:Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lh56;

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v1, v1, Lr35;->d:Ljava/util/List;

    .line 8
    .line 9
    move/from16 v2, p2

    .line 10
    .line 11
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Le56;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Lh56;->v:Lr14;

    .line 21
    .line 22
    iget-object v3, v0, Lh56;->w:Lr14;

    .line 23
    .line 24
    iget-object v4, v0, Lh56;->x:Lr14;

    .line 25
    .line 26
    iget-object v5, v0, Lh56;->y:Lr14;

    .line 27
    .line 28
    filled-new-array {v2, v3, v4, v5}, [Lr14;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x0

    .line 41
    move v4, v3

    .line 42
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_7

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    add-int/lit8 v6, v4, 0x1

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    if-ltz v4, :cond_6

    .line 56
    .line 57
    check-cast v5, Lr14;

    .line 58
    .line 59
    iget-object v8, v1, Le56;->a:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-static {v4, v8}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Lf56;

    .line 66
    .line 67
    const/16 v8, 0x8

    .line 68
    .line 69
    if-nez v4, :cond_0

    .line 70
    .line 71
    iget-object v4, v5, Lr14;->a:Landroid/widget/LinearLayout;

    .line 72
    .line 73
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :cond_0
    iget v9, v4, Lf56;->e:I

    .line 85
    .line 86
    iget-object v10, v5, Lr14;->a:Landroid/widget/LinearLayout;

    .line 87
    .line 88
    iget-object v11, v5, Lr14;->c:Landroid/widget/LinearLayout;

    .line 89
    .line 90
    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    const/4 v12, 0x1

    .line 94
    invoke-virtual {v10, v12}, Landroid/view/View;->setClickable(Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v10, v12}, Landroid/view/View;->setFocusable(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    .line 108
    .line 109
    invoke-direct {v14}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v14, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 113
    .line 114
    .line 115
    const/16 v15, 0x15

    .line 116
    .line 117
    invoke-static {v13, v15}, Ljm1;->a(Landroid/content/Context;I)I

    .line 118
    .line 119
    .line 120
    move-result v15

    .line 121
    int-to-float v15, v15

    .line 122
    invoke-virtual {v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 123
    .line 124
    .line 125
    invoke-static {v13}, Lsz8;->A(Landroid/content/Context;)I

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    const/4 v8, 0x7

    .line 130
    invoke-static {v15, v8}, Lsz8;->U(II)I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    invoke-virtual {v14, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 135
    .line 136
    .line 137
    invoke-static {v13, v12}, Ljm1;->a(Landroid/content/Context;I)I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    invoke-static {v13}, Lsz8;->A(Landroid/content/Context;)I

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    const/16 v15, 0x10

    .line 146
    .line 147
    invoke-static {v13, v15}, Lsz8;->U(II)I

    .line 148
    .line 149
    .line 150
    move-result v13

    .line 151
    invoke-virtual {v14, v8, v13}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v10, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    .line 156
    .line 157
    new-instance v8, Lnq1;

    .line 158
    .line 159
    const/4 v13, 0x2

    .line 160
    invoke-direct {v8, v13, v0, v5, v4}, Lnq1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v10, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    iget-object v5, v5, Lr14;->b:Landroid/widget/TextView;

    .line 167
    .line 168
    iget-object v8, v4, Lf56;->a:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 174
    .line 175
    .line 176
    iget-object v4, v4, Lf56;->d:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    if-eqz v5, :cond_3

    .line 187
    .line 188
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    check-cast v5, Ljava/lang/Number;

    .line 193
    .line 194
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    const/4 v8, -0x5

    .line 199
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    const/16 v13, 0x1e

    .line 211
    .line 212
    invoke-static {v10, v13}, Ljm1;->a(Landroid/content/Context;I)I

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    new-instance v13, Landroid/widget/ImageView;

    .line 217
    .line 218
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object v14

    .line 222
    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 223
    .line 224
    .line 225
    const/high16 v14, 0x40400000    # 3.0f

    .line 226
    .line 227
    invoke-static {v13, v5, v7, v14}, Ly13;->D(Landroid/widget/ImageView;ILjava/lang/CharSequence;F)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-static {v5, v3}, Ljm1;->a(Landroid/content/Context;I)I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    .line 242
    .line 243
    .line 244
    move-result v14

    .line 245
    if-lez v14, :cond_1

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_1
    move-object v8, v7

    .line 249
    :goto_2
    if-eqz v8, :cond_2

    .line 250
    .line 251
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    invoke-static {v8, v5}, Ljm1;->a(Landroid/content/Context;I)I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    :cond_2
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 267
    .line 268
    invoke-direct {v8, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11, v13, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_3
    if-lez v9, :cond_5

    .line 279
    .line 280
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    new-instance v5, Landroid/widget/TextView;

    .line 288
    .line 289
    invoke-direct {v5, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 290
    .line 291
    .line 292
    const-string v7, "+"

    .line 293
    .line 294
    invoke-static {v9, v7}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    const v8, 0x7f130411

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    invoke-static {v4}, Lsz8;->x(Landroid/content/Context;)I

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    .line 318
    .line 319
    const v7, 0x7f090002

    .line 320
    .line 321
    .line 322
    invoke-static {v4, v7}, Lfm6;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    if-nez v7, :cond_4

    .line 327
    .line 328
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 329
    .line 330
    :cond_4
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 331
    .line 332
    .line 333
    const/16 v7, 0x11

    .line 334
    .line 335
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    const v8, 0x7f0704b8

    .line 346
    .line 347
    .line 348
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 349
    .line 350
    .line 351
    move-result v7

    .line 352
    invoke-virtual {v5, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 353
    .line 354
    .line 355
    const/16 v7, 0x8

    .line 356
    .line 357
    invoke-static {v4, v7}, Ljm1;->a(Landroid/content/Context;I)I

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    invoke-static {v4, v7}, Ljm1;->a(Landroid/content/Context;I)I

    .line 362
    .line 363
    .line 364
    move-result v7

    .line 365
    invoke-virtual {v5, v8, v3, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 366
    .line 367
    .line 368
    const/16 v7, 0x2c

    .line 369
    .line 370
    invoke-static {v4, v7}, Ljm1;->a(Landroid/content/Context;I)I

    .line 371
    .line 372
    .line 373
    move-result v7

    .line 374
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 375
    .line 376
    .line 377
    const/16 v7, 0x1c

    .line 378
    .line 379
    invoke-static {v4, v7}, Ljm1;->a(Landroid/content/Context;I)I

    .line 380
    .line 381
    .line 382
    move-result v8

    .line 383
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 384
    .line 385
    .line 386
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    .line 387
    .line 388
    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 392
    .line 393
    .line 394
    const/16 v9, 0xe

    .line 395
    .line 396
    invoke-static {v4, v9}, Ljm1;->a(Landroid/content/Context;I)I

    .line 397
    .line 398
    .line 399
    move-result v9

    .line 400
    int-to-float v9, v9

    .line 401
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 402
    .line 403
    .line 404
    invoke-static {v4}, Lsz8;->x(Landroid/content/Context;)I

    .line 405
    .line 406
    .line 407
    move-result v9

    .line 408
    const/16 v10, 0xc

    .line 409
    .line 410
    invoke-static {v9, v10}, Lsz8;->U(II)I

    .line 411
    .line 412
    .line 413
    move-result v9

    .line 414
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 415
    .line 416
    .line 417
    invoke-static {v4, v12}, Ljm1;->a(Landroid/content/Context;I)I

    .line 418
    .line 419
    .line 420
    move-result v9

    .line 421
    invoke-static {v4}, Lsz8;->x(Landroid/content/Context;)I

    .line 422
    .line 423
    .line 424
    move-result v10

    .line 425
    const/16 v12, 0x1a

    .line 426
    .line 427
    invoke-static {v10, v12}, Lsz8;->U(II)I

    .line 428
    .line 429
    .line 430
    move-result v10

    .line 431
    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v5, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 435
    .line 436
    .line 437
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 438
    .line 439
    const/4 v9, -0x2

    .line 440
    invoke-static {v4, v7}, Ljm1;->a(Landroid/content/Context;I)I

    .line 441
    .line 442
    .line 443
    move-result v7

    .line 444
    invoke-direct {v8, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 445
    .line 446
    .line 447
    const/4 v7, 0x6

    .line 448
    invoke-static {v4, v7}, Ljm1;->a(Landroid/content/Context;I)I

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 459
    .line 460
    .line 461
    :cond_5
    :goto_3
    move v4, v6

    .line 462
    goto/16 :goto_0

    .line 463
    .line 464
    :cond_6
    invoke-static {}, Lfl1;->F0()V

    .line 465
    .line 466
    .line 467
    throw v7

    .line 468
    :cond_7
    return-void
.end method

.method public final k(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d014e

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final l(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Lh56;

    .line 2
    .line 3
    iget-object p0, p0, Li56;->f:Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 4
    .line 5
    invoke-direct {p2, p1, p0}, Lh56;-><init>(Landroid/view/View;Lorg/swiftapps/swiftbackup/premium/PremiumActivity;)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method
