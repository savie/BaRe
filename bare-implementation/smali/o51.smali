.class public final Lo51;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lgv7;

.field public final m:Lgv7;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Ldl;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-direct {v0, v1}, Ldl;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lo51;->l:Lgv7;

    .line 17
    .line 18
    new-instance v0, Ll51;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p1, v1}, Ll51;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lgv7;

    .line 25
    .line 26
    invoke-direct {p1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lo51;->m:Lgv7;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Ln51;

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
    iget-object v2, v0, Ln51;->y:Landroid/widget/ImageView;

    .line 14
    .line 15
    iget-object v3, v0, Ln51;->z:Lo51;

    .line 16
    .line 17
    iget-object v4, v3, Lo51;->m:Lgv7;

    .line 18
    .line 19
    iget-object v5, v0, Ln51;->w:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v6, v0, Ln51;->v:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    instance-of v7, v1, Lki7;

    .line 27
    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    move-object v8, v1

    .line 31
    check-cast v8, Lki7;

    .line 32
    .line 33
    invoke-virtual {v8}, Lki7;->isInbox()Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    instance-of v8, v1, Lwg5;

    .line 39
    .line 40
    if-eqz v8, :cond_26

    .line 41
    .line 42
    move-object v8, v1

    .line 43
    check-cast v8, Lwg5;

    .line 44
    .line 45
    invoke-virtual {v8}, Lwg5;->isInbox()Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    :goto_0
    iget-object v9, v0, Lfh6;->a:Landroid/view/View;

    .line 50
    .line 51
    iget-object v10, v0, Ln51;->x:Lcom/google/android/material/card/MaterialCardView;

    .line 52
    .line 53
    iget-object v0, v0, Ln51;->u:Lcom/google/android/material/card/MaterialCardView;

    .line 54
    .line 55
    filled-new-array {v10, v0}, [Lcom/google/android/material/card/MaterialCardView;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-static {v10}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-eqz v11, :cond_8

    .line 72
    .line 73
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    check-cast v11, Lcom/google/android/material/card/MaterialCardView;

    .line 78
    .line 79
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 80
    .line 81
    const/4 v15, -0x2

    .line 82
    invoke-direct {v14, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .line 84
    .line 85
    if-eqz v8, :cond_1

    .line 86
    .line 87
    const/4 v15, 0x0

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    check-cast v15, Ljava/lang/Number;

    .line 94
    .line 95
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v15

    .line 99
    :goto_2
    if-eqz v8, :cond_2

    .line 100
    .line 101
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v16

    .line 105
    check-cast v16, Ljava/lang/Number;

    .line 106
    .line 107
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    move/from16 v13, v16

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_2
    const/4 v13, 0x0

    .line 115
    :goto_3
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    move-object/from16 v16, v4

    .line 120
    .line 121
    instance-of v4, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 122
    .line 123
    if-eqz v4, :cond_3

    .line 124
    .line 125
    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_3
    const/4 v12, 0x0

    .line 129
    :goto_4
    if-eqz v12, :cond_4

    .line 130
    .line 131
    iget v4, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_4
    const/4 v4, 0x0

    .line 135
    :goto_5
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    move/from16 p2, v7

    .line 140
    .line 141
    instance-of v7, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 142
    .line 143
    if-eqz v7, :cond_5

    .line 144
    .line 145
    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_5
    const/4 v12, 0x0

    .line 149
    :goto_6
    if-eqz v12, :cond_6

    .line 150
    .line 151
    iget v7, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_6
    const/4 v7, 0x0

    .line 155
    :goto_7
    invoke-virtual {v14, v15, v4, v13, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 156
    .line 157
    .line 158
    if-eqz v8, :cond_7

    .line 159
    .line 160
    const v4, 0x800003

    .line 161
    .line 162
    .line 163
    goto :goto_8

    .line 164
    :cond_7
    const v4, 0x800005

    .line 165
    .line 166
    .line 167
    :goto_8
    iput v4, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 168
    .line 169
    invoke-virtual {v11, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    move/from16 v7, p2

    .line 173
    .line 174
    move-object/from16 v4, v16

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_8
    move/from16 p2, v7

    .line 178
    .line 179
    if-eqz v8, :cond_9

    .line 180
    .line 181
    const v4, 0x7f0401d7

    .line 182
    .line 183
    .line 184
    goto :goto_9

    .line 185
    :cond_9
    const v4, 0x7f04011e

    .line 186
    .line 187
    .line 188
    :goto_9
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-static {v7, v4}, Lsz8;->y(Landroid/content/Context;I)I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    invoke-virtual {v7, v4}, Landroid/content/Context;->getColor(I)I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    invoke-virtual {v0, v4}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 204
    .line 205
    .line 206
    if-eqz v8, :cond_a

    .line 207
    .line 208
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-static {v0}, Lsz8;->z(Landroid/content/Context;)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    goto :goto_a

    .line 220
    :cond_a
    const/4 v0, -0x1

    .line 221
    :goto_a
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    .line 226
    .line 227
    const/16 v0, 0x8

    .line 228
    .line 229
    const/4 v4, 0x1

    .line 230
    if-eqz p2, :cond_f

    .line 231
    .line 232
    check-cast v1, Lki7;

    .line 233
    .line 234
    invoke-virtual {v1}, Lki7;->getBody()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    if-eqz v3, :cond_c

    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-nez v3, :cond_b

    .line 245
    .line 246
    goto :goto_b

    .line 247
    :cond_b
    const/4 v13, 0x0

    .line 248
    goto :goto_c

    .line 249
    :cond_c
    :goto_b
    move v13, v4

    .line 250
    :goto_c
    xor-int/lit8 v3, v13, 0x1

    .line 251
    .line 252
    invoke-static {v6, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 253
    .line 254
    .line 255
    invoke-static {v6}, Lsz8;->I(Landroid/view/View;)Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-eqz v3, :cond_d

    .line 260
    .line 261
    invoke-virtual {v1}, Lki7;->getBody()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    :cond_d
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    invoke-static {v5}, Lsz8;->I(Landroid/view/View;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_e

    .line 276
    .line 277
    invoke-virtual {v1}, Lki7;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    .line 283
    .line 284
    :cond_e
    invoke-static {v2}, Lsz8;->W(Landroid/view/View;)V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :cond_f
    instance-of v7, v1, Lwg5;

    .line 289
    .line 290
    if-eqz v7, :cond_25

    .line 291
    .line 292
    check-cast v1, Lwg5;

    .line 293
    .line 294
    const/4 v7, 0x0

    .line 295
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Lwg5;->getText()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    invoke-virtual {v1}, Lwg5;->getFile()Lq63;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    if-eqz v8, :cond_10

    .line 307
    .line 308
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    if-nez v10, :cond_11

    .line 313
    .line 314
    :cond_10
    const/4 v10, 0x0

    .line 315
    goto :goto_d

    .line 316
    :cond_11
    const/4 v10, 0x0

    .line 317
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    goto :goto_e

    .line 324
    :goto_d
    if-eqz v9, :cond_12

    .line 325
    .line 326
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Lwg5;->getProperFileName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    new-instance v9, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v11, "File: "

    .line 336
    .line 337
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    .line 349
    .line 350
    new-instance v8, Lm51;

    .line 351
    .line 352
    invoke-direct {v8, v10, v1, v6}, Lm51;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    .line 357
    .line 358
    goto :goto_e

    .line 359
    :cond_12
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 360
    .line 361
    .line 362
    :goto_e
    invoke-virtual {v1}, Lwg5;->getPartItems()Ljava/util/List;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    if-eqz v6, :cond_16

    .line 367
    .line 368
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    :cond_13
    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    .line 374
    .line 375
    move-result v8

    .line 376
    if-eqz v8, :cond_14

    .line 377
    .line 378
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v8

    .line 382
    move-object v9, v8

    .line 383
    check-cast v9, Lxg5;

    .line 384
    .line 385
    invoke-virtual {v9}, Lxg5;->isImage()Z

    .line 386
    .line 387
    .line 388
    move-result v11

    .line 389
    if-eqz v11, :cond_13

    .line 390
    .line 391
    invoke-virtual {v9}, Lxg5;->getCachedFileName()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v9

    .line 395
    if-eqz v9, :cond_13

    .line 396
    .line 397
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 398
    .line 399
    .line 400
    move-result v9

    .line 401
    if-nez v9, :cond_15

    .line 402
    .line 403
    goto :goto_f

    .line 404
    :cond_14
    move-object v8, v7

    .line 405
    :cond_15
    check-cast v8, Lxg5;

    .line 406
    .line 407
    if-eqz v8, :cond_16

    .line 408
    .line 409
    invoke-virtual {v8}, Lxg5;->getCachedFileName()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    goto :goto_10

    .line 414
    :cond_16
    move-object v6, v7

    .line 415
    :goto_10
    if-eqz v6, :cond_17

    .line 416
    .line 417
    iget-object v3, v3, Lo51;->l:Lgv7;

    .line 418
    .line 419
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    check-cast v3, Lq63;

    .line 424
    .line 425
    invoke-virtual {v3, v6}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    goto :goto_11

    .line 430
    :cond_17
    move-object v3, v7

    .line 431
    :goto_11
    if-eqz v3, :cond_18

    .line 432
    .line 433
    invoke-virtual {v3}, Lq63;->j()Z

    .line 434
    .line 435
    .line 436
    move-result v6

    .line 437
    if-ne v6, v4, :cond_18

    .line 438
    .line 439
    move v6, v4

    .line 440
    goto :goto_12

    .line 441
    :cond_18
    move v6, v10

    .line 442
    :goto_12
    invoke-static {v2, v6}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 443
    .line 444
    .line 445
    invoke-static {v2}, Lsz8;->I(Landroid/view/View;)Z

    .line 446
    .line 447
    .line 448
    move-result v6

    .line 449
    if-eqz v6, :cond_23

    .line 450
    .line 451
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    const-string v8, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 456
    .line 457
    invoke-static {v6, v8}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-static {v6}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/a;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    iget-object v6, v6, Lcom/bumptech/glide/a;->e:Lzk6;

    .line 465
    .line 466
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 470
    .line 471
    .line 472
    move-result-object v8

    .line 473
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 474
    .line 475
    .line 476
    move-result-object v9

    .line 477
    if-ne v8, v9, :cond_19

    .line 478
    .line 479
    move v8, v4

    .line 480
    goto :goto_13

    .line 481
    :cond_19
    move v8, v10

    .line 482
    :goto_13
    if-nez v8, :cond_1a

    .line 483
    .line 484
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    invoke-virtual {v6, v4}, Lzk6;->c(Landroid/content/Context;)Lyk6;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    goto/16 :goto_17

    .line 497
    .line 498
    :cond_1a
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 499
    .line 500
    .line 501
    move-result-object v8

    .line 502
    const-string v9, "Unable to obtain a request manager for a view without a Context"

    .line 503
    .line 504
    invoke-static {v8, v9}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 508
    .line 509
    .line 510
    move-result-object v8

    .line 511
    invoke-static {v8}, Lzk6;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 512
    .line 513
    .line 514
    move-result-object v8

    .line 515
    if-nez v8, :cond_1b

    .line 516
    .line 517
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 522
    .line 523
    .line 524
    move-result-object v4

    .line 525
    invoke-virtual {v6, v4}, Lzk6;->c(Landroid/content/Context;)Lyk6;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    goto/16 :goto_17

    .line 530
    .line 531
    :cond_1b
    instance-of v9, v8, Landroidx/fragment/app/u;

    .line 532
    .line 533
    if-eqz v9, :cond_22

    .line 534
    .line 535
    check-cast v8, Landroidx/fragment/app/u;

    .line 536
    .line 537
    iget-object v9, v6, Lzk6;->b:Lk50;

    .line 538
    .line 539
    invoke-virtual {v9}, Ldg7;->clear()V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v8}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 543
    .line 544
    .line 545
    move-result-object v11

    .line 546
    iget-object v11, v11, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 547
    .line 548
    invoke-virtual {v11}, Landroidx/fragment/app/e0;->f()Ljava/util/List;

    .line 549
    .line 550
    .line 551
    move-result-object v11

    .line 552
    invoke-static {v11, v9}, Lzk6;->b(Ljava/util/List;Lk50;)V

    .line 553
    .line 554
    .line 555
    const v11, 0x1020002

    .line 556
    .line 557
    .line 558
    invoke-virtual {v8, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 559
    .line 560
    .line 561
    move-result-object v11

    .line 562
    move-object v12, v7

    .line 563
    move-object v7, v2

    .line 564
    :goto_14
    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v13

    .line 568
    if-nez v13, :cond_1d

    .line 569
    .line 570
    invoke-virtual {v9, v7}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v12

    .line 574
    check-cast v12, Landroidx/fragment/app/o;

    .line 575
    .line 576
    if-eqz v12, :cond_1c

    .line 577
    .line 578
    goto :goto_15

    .line 579
    :cond_1c
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 580
    .line 581
    .line 582
    move-result-object v13

    .line 583
    instance-of v13, v13, Landroid/view/View;

    .line 584
    .line 585
    if-eqz v13, :cond_1d

    .line 586
    .line 587
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 588
    .line 589
    .line 590
    move-result-object v7

    .line 591
    check-cast v7, Landroid/view/View;

    .line 592
    .line 593
    goto :goto_14

    .line 594
    :cond_1d
    :goto_15
    invoke-virtual {v9}, Ldg7;->clear()V

    .line 595
    .line 596
    .line 597
    if-eqz v12, :cond_21

    .line 598
    .line 599
    invoke-virtual {v12}, Landroidx/fragment/app/o;->getContext()Landroid/content/Context;

    .line 600
    .line 601
    .line 602
    move-result-object v7

    .line 603
    const-string v8, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    .line 604
    .line 605
    invoke-static {v7, v8}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 609
    .line 610
    .line 611
    move-result-object v7

    .line 612
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 613
    .line 614
    .line 615
    move-result-object v8

    .line 616
    if-ne v7, v8, :cond_1e

    .line 617
    .line 618
    move v13, v4

    .line 619
    goto :goto_16

    .line 620
    :cond_1e
    move v13, v10

    .line 621
    :goto_16
    if-nez v13, :cond_1f

    .line 622
    .line 623
    invoke-virtual {v12}, Landroidx/fragment/app/o;->getContext()Landroid/content/Context;

    .line 624
    .line 625
    .line 626
    move-result-object v4

    .line 627
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 628
    .line 629
    .line 630
    move-result-object v4

    .line 631
    invoke-virtual {v6, v4}, Lzk6;->c(Landroid/content/Context;)Lyk6;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    goto :goto_17

    .line 636
    :cond_1f
    invoke-virtual {v12}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 637
    .line 638
    .line 639
    move-result-object v4

    .line 640
    if-eqz v4, :cond_20

    .line 641
    .line 642
    iget-object v4, v6, Lzk6;->c:Les3;

    .line 643
    .line 644
    invoke-virtual {v12}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 645
    .line 646
    .line 647
    move-result-object v7

    .line 648
    invoke-interface {v4, v7}, Les3;->c(Landroidx/fragment/app/u;)V

    .line 649
    .line 650
    .line 651
    :cond_20
    invoke-virtual {v12}, Landroidx/fragment/app/o;->getChildFragmentManager()Landroidx/fragment/app/z;

    .line 652
    .line 653
    .line 654
    move-result-object v17

    .line 655
    invoke-virtual {v12}, Landroidx/fragment/app/o;->getContext()Landroid/content/Context;

    .line 656
    .line 657
    .line 658
    move-result-object v14

    .line 659
    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    invoke-static {v4}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/a;

    .line 664
    .line 665
    .line 666
    move-result-object v15

    .line 667
    iget-object v13, v6, Lzk6;->d:Lro;

    .line 668
    .line 669
    invoke-virtual {v12}, Landroidx/fragment/app/o;->getLifecycle()Lhu4;

    .line 670
    .line 671
    .line 672
    move-result-object v16

    .line 673
    invoke-virtual {v12}, Landroidx/fragment/app/o;->isVisible()Z

    .line 674
    .line 675
    .line 676
    move-result v18

    .line 677
    invoke-virtual/range {v13 .. v18}, Lro;->m(Landroid/content/Context;Lcom/bumptech/glide/a;Lhu4;Landroidx/fragment/app/z;Z)Lyk6;

    .line 678
    .line 679
    .line 680
    move-result-object v4

    .line 681
    goto :goto_17

    .line 682
    :cond_21
    invoke-virtual {v6, v8}, Lzk6;->d(Landroidx/fragment/app/u;)Lyk6;

    .line 683
    .line 684
    .line 685
    move-result-object v4

    .line 686
    goto :goto_17

    .line 687
    :cond_22
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 688
    .line 689
    .line 690
    move-result-object v4

    .line 691
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 692
    .line 693
    .line 694
    move-result-object v4

    .line 695
    invoke-virtual {v6, v4}, Lzk6;->c(Landroid/content/Context;)Lyk6;

    .line 696
    .line 697
    .line 698
    move-result-object v4

    .line 699
    :goto_17
    const-class v6, Landroid/graphics/drawable/Drawable;

    .line 700
    .line 701
    invoke-virtual {v4, v6}, Lyk6;->f(Ljava/lang/Class;)Lpk6;

    .line 702
    .line 703
    .line 704
    move-result-object v4

    .line 705
    invoke-virtual {v4, v3}, Lpk6;->D(Ljava/lang/Object;)Lpk6;

    .line 706
    .line 707
    .line 708
    move-result-object v3

    .line 709
    invoke-virtual {v3, v2}, Lpk6;->B(Landroid/widget/ImageView;)V

    .line 710
    .line 711
    .line 712
    :cond_23
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 713
    .line 714
    .line 715
    invoke-static {v5}, Lsz8;->I(Landroid/view/View;)Z

    .line 716
    .line 717
    .line 718
    move-result v0

    .line 719
    if-eqz v0, :cond_24

    .line 720
    .line 721
    invoke-virtual {v1}, Lwg5;->toString()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    .line 727
    .line 728
    :cond_24
    return-void

    .line 729
    :cond_25
    const-string v0, "Unknown type for binding views!"

    .line 730
    .line 731
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    return-void

    .line 735
    :cond_26
    const-string v0, "Unknown type to determine isInbox item!"

    .line 736
    .line 737
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d004d

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 9

    .line 1
    new-instance p2, Ln51;

    .line 2
    .line 3
    const v0, 0x7f0a01b8

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
    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    const v0, 0x7f0a01ba

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v5, v1

    .line 23
    check-cast v5, Lcom/google/android/material/card/MaterialCardView;

    .line 24
    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    const v0, 0x7f0a0290

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move-object v6, v1

    .line 35
    check-cast v6, Landroid/widget/ImageView;

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    const v0, 0x7f0a04f8

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    move-object v7, v1

    .line 47
    check-cast v7, Landroid/widget/TextView;

    .line 48
    .line 49
    if-eqz v7, :cond_0

    .line 50
    .line 51
    const v0, 0x7f0a0532

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    move-object v8, v1

    .line 59
    check-cast v8, Landroid/widget/TextView;

    .line 60
    .line 61
    if-eqz v8, :cond_0

    .line 62
    .line 63
    new-instance v2, Lp51;

    .line 64
    .line 65
    move-object v3, p1

    .line 66
    check-cast v3, Landroid/widget/LinearLayout;

    .line 67
    .line 68
    invoke-direct/range {v2 .. v8}, Lp51;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p0, v2}, Ln51;-><init>(Lo51;Lp51;)V

    .line 72
    .line 73
    .line 74
    return-object p2

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string p1, "Missing required view with ID: "

    .line 84
    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    return-object p0
.end method
