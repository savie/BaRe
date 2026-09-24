.class public final Lac1;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lil0;

.field public final m:Lxf;


# direct methods
.method public constructor <init>(Lil0;Lxf;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lac1;->l:Lil0;

    .line 6
    .line 7
    iput-object p2, p0, Lac1;->m:Lxf;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lzb1;

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    move/from16 v2, p2

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lgm7;->m(I)Ljl0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lbc1;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v2, v1, Lbc1;->d:Ljava/util/List;

    .line 19
    .line 20
    iget-object v3, v1, Lbc1;->a:Ldd1;

    .line 21
    .line 22
    iget-object v4, v0, Lzb1;->D:Lac1;

    .line 23
    .line 24
    invoke-virtual {v4, v1}, Lgm7;->q(Ljl0;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    iget-object v6, v0, Lzb1;->v:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    invoke-virtual {v6, v7}, Lcom/google/android/material/card/MaterialCardView;->setCheckable(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v5}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v8, v0, Lzb1;->w:Landroid/widget/TextView;

    .line 38
    .line 39
    new-instance v9, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ldd1;->getDisplayName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ldd1;->getReleaseState()Lxi6;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    sget-object v11, Lxi6;->Production:Lxi6;

    .line 56
    .line 57
    invoke-virtual {v10, v11}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    if-gez v10, :cond_0

    .line 62
    .line 63
    invoke-virtual {v3}, Ldd1;->getReleaseState()Lxi6;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    invoke-virtual {v10}, Lxi6;->getDisplayString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    new-instance v11, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v12, " ("

    .line 74
    .line 75
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v10, ")"

    .line 82
    .line 83
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :cond_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    iget-object v8, v0, Lzb1;->x:Landroid/widget/TextView;

    .line 101
    .line 102
    iget-object v9, v1, Lbc1;->b:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v9, :cond_2

    .line 105
    .line 106
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    if-nez v11, :cond_1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    const/4 v11, 0x0

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    :goto_0
    move v11, v7

    .line 116
    :goto_1
    xor-int/2addr v11, v7

    .line 117
    invoke-static {v8, v11}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 118
    .line 119
    .line 120
    invoke-static {v8}, Lsz8;->I(Landroid/view/View;)Z

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    if-eqz v11, :cond_3

    .line 125
    .line 126
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object v8, v0, Lzb1;->y:Landroid/widget/TextView;

    .line 130
    .line 131
    iget-object v9, v1, Lbc1;->c:Ljava/lang/String;

    .line 132
    .line 133
    if-eqz v9, :cond_5

    .line 134
    .line 135
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    if-nez v11, :cond_4

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    const/4 v11, 0x0

    .line 143
    goto :goto_3

    .line 144
    :cond_5
    :goto_2
    move v11, v7

    .line 145
    :goto_3
    xor-int/2addr v11, v7

    .line 146
    invoke-static {v8, v11}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 147
    .line 148
    .line 149
    invoke-static {v8}, Lsz8;->I(Landroid/view/View;)Z

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    if-eqz v11, :cond_6

    .line 154
    .line 155
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    :cond_6
    iget-object v8, v0, Lzb1;->z:Landroid/widget/ImageView;

    .line 159
    .line 160
    invoke-virtual {v3}, Ldd1;->getBrandingIconRes()I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    if-eqz v8, :cond_7

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-eqz v9, :cond_9

    .line 183
    .line 184
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    check-cast v9, Ldc1;

    .line 189
    .line 190
    iget-boolean v9, v9, Ldc1;->c:Z

    .line 191
    .line 192
    if-eqz v9, :cond_8

    .line 193
    .line 194
    if-nez v5, :cond_9

    .line 195
    .line 196
    move v8, v7

    .line 197
    goto :goto_5

    .line 198
    :cond_9
    :goto_4
    const/4 v8, 0x0

    .line 199
    :goto_5
    iget-object v9, v0, Lzb1;->A:Lcom/google/android/flexbox/FlexboxLayout;

    .line 200
    .line 201
    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 202
    .line 203
    .line 204
    invoke-static {v9, v8}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 205
    .line 206
    .line 207
    if-nez v8, :cond_b

    .line 208
    .line 209
    :cond_a
    const/4 v13, 0x0

    .line 210
    goto/16 :goto_8

    .line 211
    .line 212
    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    const v12, 0x7f070499

    .line 217
    .line 218
    .line 219
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    const v13, 0x7f0704ab

    .line 228
    .line 229
    .line 230
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 231
    .line 232
    .line 233
    move-result v12

    .line 234
    new-instance v13, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v14

    .line 243
    :cond_c
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v15

    .line 247
    if-eqz v15, :cond_d

    .line 248
    .line 249
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    move-object v10, v15

    .line 254
    check-cast v10, Ldc1;

    .line 255
    .line 256
    iget-boolean v10, v10, Ldc1;->c:Z

    .line 257
    .line 258
    if-eqz v10, :cond_c

    .line 259
    .line 260
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_d
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v13

    .line 272
    if-eqz v13, :cond_a

    .line 273
    .line 274
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v13

    .line 278
    check-cast v13, Ldc1;

    .line 279
    .line 280
    new-instance v14, Landroid/widget/ImageView;

    .line 281
    .line 282
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 283
    .line 284
    .line 285
    move-result-object v15

    .line 286
    invoke-direct {v14, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 287
    .line 288
    .line 289
    iget v15, v13, Ldc1;->b:I

    .line 290
    .line 291
    iget-object v13, v13, Ldc1;->a:Ljava/lang/String;

    .line 292
    .line 293
    const/high16 v11, 0x40000000    # 2.0f

    .line 294
    .line 295
    invoke-static {v14, v15, v13, v11}, Ly13;->D(Landroid/widget/ImageView;ILjava/lang/CharSequence;F)V

    .line 296
    .line 297
    .line 298
    new-instance v11, Lsh3;

    .line 299
    .line 300
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    .line 301
    .line 302
    invoke-direct {v13, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 303
    .line 304
    .line 305
    invoke-direct {v11, v13}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    .line 307
    .line 308
    iput v7, v11, Lsh3;->a:I

    .line 309
    .line 310
    const/4 v13, 0x0

    .line 311
    iput v13, v11, Lsh3;->b:F

    .line 312
    .line 313
    const/high16 v13, 0x3f800000    # 1.0f

    .line 314
    .line 315
    iput v13, v11, Lsh3;->c:F

    .line 316
    .line 317
    const/4 v15, -0x1

    .line 318
    iput v15, v11, Lsh3;->d:I

    .line 319
    .line 320
    const/high16 v13, -0x40800000    # -1.0f

    .line 321
    .line 322
    iput v13, v11, Lsh3;->e:F

    .line 323
    .line 324
    iput v15, v11, Lsh3;->f:I

    .line 325
    .line 326
    iput v15, v11, Lsh3;->k:I

    .line 327
    .line 328
    const v13, 0xffffff

    .line 329
    .line 330
    .line 331
    iput v13, v11, Lsh3;->n:I

    .line 332
    .line 333
    iput v13, v11, Lsh3;->p:I

    .line 334
    .line 335
    const/4 v13, 0x0

    .line 336
    invoke-virtual {v11, v13, v12, v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v14, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 343
    .line 344
    .line 345
    goto :goto_7

    .line 346
    :goto_8
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 347
    .line 348
    .line 349
    move-result v8

    .line 350
    if-nez v8, :cond_e

    .line 351
    .line 352
    if-eqz v5, :cond_e

    .line 353
    .line 354
    move v10, v7

    .line 355
    goto :goto_9

    .line 356
    :cond_e
    move v10, v13

    .line 357
    :goto_9
    iget-object v8, v0, Lzb1;->B:Lorg/swiftapps/swiftbackup/views/ProviderChipGroup;

    .line 358
    .line 359
    invoke-static {v8, v10}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 360
    .line 361
    .line 362
    if-nez v10, :cond_f

    .line 363
    .line 364
    sget-object v2, Lov2;->a:Lov2;

    .line 365
    .line 366
    invoke-virtual {v8, v2}, Lorg/swiftapps/swiftbackup/views/ProviderChipGroup;->setChips(Ljava/util/List;)V

    .line 367
    .line 368
    .line 369
    goto :goto_b

    .line 370
    :cond_f
    new-instance v9, Ljava/util/ArrayList;

    .line 371
    .line 372
    const/16 v10, 0xa

    .line 373
    .line 374
    invoke-static {v2, v10}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 375
    .line 376
    .line 377
    move-result v10

    .line 378
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    .line 380
    .line 381
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 386
    .line 387
    .line 388
    move-result v10

    .line 389
    if-eqz v10, :cond_10

    .line 390
    .line 391
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v10

    .line 395
    check-cast v10, Ldc1;

    .line 396
    .line 397
    new-instance v11, Lha6;

    .line 398
    .line 399
    iget-object v12, v10, Ldc1;->a:Ljava/lang/String;

    .line 400
    .line 401
    iget v10, v10, Ldc1;->b:I

    .line 402
    .line 403
    invoke-direct {v11, v12, v10}, Lha6;-><init>(Ljava/lang/String;I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    goto :goto_a

    .line 410
    :cond_10
    invoke-virtual {v8, v9}, Lorg/swiftapps/swiftbackup/views/ProviderChipGroup;->setChips(Ljava/util/List;)V

    .line 411
    .line 412
    .line 413
    :goto_b
    iget-object v2, v0, Lzb1;->C:Lcom/google/android/material/button/MaterialButton;

    .line 414
    .line 415
    invoke-static {v2, v5}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3}, Ldd1;->getSupportsCurrentAndroidSdk()Z

    .line 419
    .line 420
    .line 421
    move-result v8

    .line 422
    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    .line 426
    .line 427
    .line 428
    move-result v8

    .line 429
    if-eqz v8, :cond_11

    .line 430
    .line 431
    if-eqz v5, :cond_11

    .line 432
    .line 433
    new-instance v5, Lh10;

    .line 434
    .line 435
    invoke-direct {v5, v7, v4, v1}, Lh10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    goto :goto_c

    .line 439
    :cond_11
    const/4 v5, 0x0

    .line 440
    :goto_c
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3}, Ldd1;->getSupportsCurrentAndroidSdk()Z

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    iget-object v3, v0, Lfh6;->a:Landroid/view/View;

    .line 448
    .line 449
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v6, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 453
    .line 454
    .line 455
    if-eqz v2, :cond_12

    .line 456
    .line 457
    const/high16 v11, 0x3f800000    # 1.0f

    .line 458
    .line 459
    goto :goto_d

    .line 460
    :cond_12
    const/high16 v11, 0x3f000000    # 0.5f

    .line 461
    .line 462
    :goto_d
    invoke-virtual {v6, v11}, Landroid/view/View;->setAlpha(F)V

    .line 463
    .line 464
    .line 465
    new-instance v3, Lyb1;

    .line 466
    .line 467
    invoke-direct {v3, v2, v4, v1, v0}, Lyb1;-><init>(ZLac1;Lbc1;Lzb1;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    .line 472
    .line 473
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0050

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 12

    .line 1
    new-instance p2, Lzb1;

    .line 2
    .line 3
    const v0, 0x7f0a00f3

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
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

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
    const v0, 0x7f0a01a6

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const v0, 0x7f0a028c

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v5, v1

    .line 37
    check-cast v5, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    const v0, 0x7f0a02b7

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v6, v1

    .line 49
    check-cast v6, Landroid/widget/ImageView;

    .line 50
    .line 51
    if-eqz v6, :cond_0

    .line 52
    .line 53
    const v0, 0x7f0a0415

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v7, v1

    .line 61
    check-cast v7, Lorg/swiftapps/swiftbackup/views/ProviderChipGroup;

    .line 62
    .line 63
    if-eqz v7, :cond_0

    .line 64
    .line 65
    const v0, 0x7f0a0416

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move-object v8, v1

    .line 73
    check-cast v8, Lcom/google/android/flexbox/FlexboxLayout;

    .line 74
    .line 75
    if-eqz v8, :cond_0

    .line 76
    .line 77
    const v0, 0x7f0a05ac

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    move-object v9, v1

    .line 85
    check-cast v9, Landroid/widget/TextView;

    .line 86
    .line 87
    if-eqz v9, :cond_0

    .line 88
    .line 89
    const v0, 0x7f0a05ba

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    move-object v10, v1

    .line 97
    check-cast v10, Landroid/widget/TextView;

    .line 98
    .line 99
    if-eqz v10, :cond_0

    .line 100
    .line 101
    const v0, 0x7f0a05ca

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    move-object v11, v1

    .line 109
    check-cast v11, Landroid/widget/TextView;

    .line 110
    .line 111
    if-eqz v11, :cond_0

    .line 112
    .line 113
    new-instance v2, Lcc1;

    .line 114
    .line 115
    invoke-direct/range {v2 .. v11}, Lcc1;-><init>(Lcom/google/android/material/listitem/ListItemLayout;Lcom/google/android/material/button/MaterialButton;Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;Landroid/widget/ImageView;Lorg/swiftapps/swiftbackup/views/ProviderChipGroup;Lcom/google/android/flexbox/FlexboxLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p2, p0, v2}, Lzb1;-><init>(Lac1;Lcc1;)V

    .line 119
    .line 120
    .line 121
    return-object p2

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string p1, "Missing required view with ID: "

    .line 131
    .line 132
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const/4 p0, 0x0

    .line 140
    return-object p0
.end method
