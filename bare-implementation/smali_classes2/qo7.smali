.class public final Lqo7;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lil0;


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
    iput-object p1, p0, Lqo7;->l:Lil0;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lpo7;

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
    check-cast v1, Lso7;

    .line 14
    .line 15
    iget-object v2, v0, Lpo7;->C:Lcom/google/android/material/card/MaterialCardView;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-boolean v3, v1, Lso7;->c:Z

    .line 21
    .line 22
    iget-object v4, v1, Lso7;->d:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, v1, Lso7;->b:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 25
    .line 26
    iget-object v6, v1, Lso7;->a:Lzn7;

    .line 27
    .line 28
    iget-object v7, v0, Lpo7;->E:Lqo7;

    .line 29
    .line 30
    invoke-virtual {v7, v1}, Lgm7;->q(Ljl0;)Z

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    iget-object v9, v7, Lqo7;->l:Lil0;

    .line 35
    .line 36
    iget-object v10, v0, Lpo7;->v:Lcom/google/android/material/card/MaterialCardView;

    .line 37
    .line 38
    if-eqz v8, :cond_0

    .line 39
    .line 40
    const v11, 0x7f07005e

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const v11, 0x7f07005d

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    invoke-static {v11}, Ltu0;->v(F)I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    invoke-virtual {v10, v11}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 64
    .line 65
    .line 66
    if-eqz v8, :cond_1

    .line 67
    .line 68
    const v11, 0x7f04014a

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const v11, 0x7f0400bc

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {v12, v11}, Lsz8;->y(Landroid/content/Context;I)I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    invoke-virtual {v12, v11}, Landroid/content/Context;->getColor(I)I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    invoke-virtual {v10, v11}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 91
    .line 92
    .line 93
    iget-object v11, v0, Lpo7;->y:Landroid/widget/TextView;

    .line 94
    .line 95
    iget-object v12, v6, Lzn7;->f:Lgv7;

    .line 96
    .line 97
    invoke-virtual {v12}, Lgv7;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    check-cast v12, Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    if-eqz v8, :cond_2

    .line 107
    .line 108
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {v8}, Lsz8;->x(Landroid/content/Context;)I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static {v8}, Lsz8;->z(Landroid/content/Context;)I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    :goto_2
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    .line 133
    .line 134
    new-instance v8, Landroid/text/SpannableStringBuilder;

    .line 135
    .line 136
    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v11, "vfat"

    .line 140
    .line 141
    invoke-static {v4, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    const v13, 0x7f040147

    .line 146
    .line 147
    .line 148
    const-string v14, "sdfat"

    .line 149
    .line 150
    if-nez v12, :cond_6

    .line 151
    .line 152
    invoke-static {v4, v14}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    if-eqz v12, :cond_3

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_3
    if-eqz v4, :cond_5

    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    if-nez v12, :cond_4

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_4
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 169
    .line 170
    invoke-virtual {v4, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 178
    .line 179
    .line 180
    :cond_5
    :goto_3
    move/from16 p2, v3

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_6
    :goto_4
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-static {v9, v13}, Lsz8;->y(Landroid/content/Context;I)I

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    invoke-virtual {v9, v12}, Landroid/content/Context;->getColor(I)I

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    .line 195
    .line 196
    invoke-direct {v13, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    const-string v15, "FAT32 (Max. file size 4 GB)"

    .line 204
    .line 205
    invoke-virtual {v8, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    .line 209
    .line 210
    .line 211
    move-result v15

    .line 212
    move/from16 p2, v3

    .line 213
    .line 214
    const/16 v3, 0x11

    .line 215
    .line 216
    invoke-virtual {v8, v13, v12, v15, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 217
    .line 218
    .line 219
    :goto_5
    const v3, 0x7f13049e

    .line 220
    .line 221
    .line 222
    if-eqz p2, :cond_8

    .line 223
    .line 224
    sget-boolean v12, Lmp6;->g:Z

    .line 225
    .line 226
    if-nez v12, :cond_8

    .line 227
    .line 228
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    if-lez v12, :cond_7

    .line 233
    .line 234
    invoke-static {v8}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v12

    .line 238
    if-nez v12, :cond_7

    .line 239
    .line 240
    const-string v12, "\n"

    .line 241
    .line 242
    invoke-virtual {v8, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 243
    .line 244
    .line 245
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    const v12, 0x7f0604ae

    .line 249
    .line 250
    .line 251
    invoke-virtual {v9, v12}, Landroid/content/Context;->getColor(I)I

    .line 252
    .line 253
    .line 254
    move-result v12

    .line 255
    invoke-static {v9, v12}, Lio4;->c(Landroid/content/Context;I)I

    .line 256
    .line 257
    .line 258
    move-result v12

    .line 259
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    .line 260
    .line 261
    invoke-direct {v13, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    .line 265
    .line 266
    .line 267
    move-result v12

    .line 268
    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v15

    .line 272
    invoke-virtual {v8, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    .line 276
    .line 277
    .line 278
    move-result v15

    .line 279
    const/16 v3, 0x11

    .line 280
    .line 281
    invoke-virtual {v8, v13, v12, v15, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 282
    .line 283
    .line 284
    :cond_8
    new-instance v3, Landroid/text/SpannedString;

    .line 285
    .line 286
    invoke-direct {v3, v8}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    iget-object v8, v0, Lpo7;->x:Landroid/widget/TextView;

    .line 290
    .line 291
    invoke-virtual {v3}, Landroid/text/SpannedString;->length()I

    .line 292
    .line 293
    .line 294
    move-result v12

    .line 295
    const/4 v15, 0x1

    .line 296
    if-lez v12, :cond_9

    .line 297
    .line 298
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    if-nez v12, :cond_9

    .line 303
    .line 304
    move v12, v15

    .line 305
    goto :goto_6

    .line 306
    :cond_9
    const/4 v12, 0x0

    .line 307
    :goto_6
    invoke-static {v8, v12}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .line 312
    .line 313
    iget-object v3, v0, Lpo7;->D:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 314
    .line 315
    if-eqz v5, :cond_a

    .line 316
    .line 317
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;->getUsedPercent()I

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    goto :goto_7

    .line 322
    :cond_a
    const/4 v8, 0x0

    .line 323
    :goto_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    invoke-static {v3, v8, v15, v15, v15}, Lsz8;->Z(Lkm0;IZZZ)V

    .line 327
    .line 328
    .line 329
    iget-object v3, v0, Lpo7;->w:Landroid/widget/ImageView;

    .line 330
    .line 331
    iget-object v8, v6, Lzn7;->p:Lgv7;

    .line 332
    .line 333
    invoke-virtual {v8}, Lgv7;->getValue()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    check-cast v8, Ljava/lang/Number;

    .line 338
    .line 339
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    .line 345
    .line 346
    iget-object v3, v0, Lpo7;->z:Landroid/widget/TextView;

    .line 347
    .line 348
    if-eqz v5, :cond_b

    .line 349
    .line 350
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;->getUsageString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v8

    .line 354
    if-nez v8, :cond_c

    .line 355
    .line 356
    :cond_b
    iget-object v8, v0, Lfh6;->a:Landroid/view/View;

    .line 357
    .line 358
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    const v12, 0x7f1303d6

    .line 363
    .line 364
    .line 365
    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    :cond_c
    const/4 v12, 0x0

    .line 373
    if-eqz v5, :cond_e

    .line 374
    .line 375
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;->getAppUsage()J

    .line 376
    .line 377
    .line 378
    move-result-wide v16

    .line 379
    const-wide/16 v18, 0x0

    .line 380
    .line 381
    cmp-long v16, v16, v18

    .line 382
    .line 383
    if-ltz v16, :cond_d

    .line 384
    .line 385
    move-object/from16 v16, v5

    .line 386
    .line 387
    goto :goto_8

    .line 388
    :cond_d
    move-object/from16 v16, v12

    .line 389
    .line 390
    :goto_8
    if-eqz v16, :cond_e

    .line 391
    .line 392
    invoke-virtual/range {v16 .. v16}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;->getAppUsageString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v12

    .line 396
    :cond_e
    filled-new-array {v8, v12}, [Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v8

    .line 400
    invoke-static {v8}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 401
    .line 402
    .line 403
    move-result-object v16

    .line 404
    const/16 v20, 0x0

    .line 405
    .line 406
    const/16 v21, 0x3e

    .line 407
    .line 408
    const-string v17, "\n"

    .line 409
    .line 410
    const/16 v18, 0x0

    .line 411
    .line 412
    const/16 v19, 0x0

    .line 413
    .line 414
    invoke-static/range {v16 .. v21}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v8

    .line 418
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    .line 420
    .line 421
    iget-object v3, v0, Lpo7;->A:Landroid/widget/TextView;

    .line 422
    .line 423
    new-instance v8, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    const v12, 0x7f13009c

    .line 429
    .line 430
    .line 431
    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v12

    .line 435
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    if-eqz p2, :cond_f

    .line 439
    .line 440
    const v12, 0x7f13049e

    .line 441
    .line 442
    .line 443
    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v12

    .line 447
    new-instance v13, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    const-string v15, " ("

    .line 450
    .line 451
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v12, ")"

    .line 458
    .line 459
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v12

    .line 466
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    :cond_f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v8

    .line 473
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    .line 475
    .line 476
    iget-object v3, v0, Lpo7;->B:Landroid/widget/TextView;

    .line 477
    .line 478
    sget-object v8, Lry5;->u:Ljava/lang/String;

    .line 479
    .line 480
    invoke-static {v6}, Lqy5;->d(Lzn7;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    .line 486
    .line 487
    invoke-static {v4, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    if-nez v3, :cond_11

    .line 492
    .line 493
    invoke-static {v4, v14}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    if-eqz v3, :cond_10

    .line 498
    .line 499
    goto :goto_9

    .line 500
    :cond_10
    const/4 v13, 0x0

    .line 501
    goto :goto_a

    .line 502
    :cond_11
    :goto_9
    const/4 v13, 0x1

    .line 503
    :goto_a
    invoke-static {v2, v13}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 504
    .line 505
    .line 506
    invoke-static {v2}, Lsz8;->I(Landroid/view/View;)Z

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    if-eqz v3, :cond_12

    .line 511
    .line 512
    const v3, 0x7f040168

    .line 513
    .line 514
    .line 515
    invoke-static {v9, v3}, Lsz8;->y(Landroid/content/Context;I)I

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    invoke-virtual {v2, v3}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 524
    .line 525
    .line 526
    iget-object v2, v0, Lpo7;->u:Lib;

    .line 527
    .line 528
    iget-object v2, v2, Lib;->c:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v2, Landroid/widget/TextView;

    .line 531
    .line 532
    const v3, 0x7f040147

    .line 533
    .line 534
    .line 535
    invoke-static {v9, v3}, Lsz8;->y(Landroid/content/Context;I)I

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    .line 540
    .line 541
    .line 542
    move-result v3

    .line 543
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 544
    .line 545
    .line 546
    :cond_12
    if-eqz v5, :cond_14

    .line 547
    .line 548
    if-eqz p2, :cond_13

    .line 549
    .line 550
    sget-boolean v2, Lmp6;->g:Z

    .line 551
    .line 552
    goto :goto_b

    .line 553
    :cond_13
    const/4 v2, 0x1

    .line 554
    :goto_b
    if-eqz v2, :cond_14

    .line 555
    .line 556
    const/high16 v2, 0x3f800000    # 1.0f

    .line 557
    .line 558
    goto :goto_c

    .line 559
    :cond_14
    const/high16 v2, 0x3f000000    # 0.5f

    .line 560
    .line 561
    :goto_c
    invoke-virtual {v10, v2}, Landroid/view/View;->setAlpha(F)V

    .line 562
    .line 563
    .line 564
    new-instance v2, Ll56;

    .line 565
    .line 566
    const/4 v3, 0x1

    .line 567
    invoke-direct {v2, v1, v7, v0, v3}, Ll56;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lfh6;I)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v10, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    .line 572
    .line 573
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d017d

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Lpo7;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lpo7;-><init>(Lqo7;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
