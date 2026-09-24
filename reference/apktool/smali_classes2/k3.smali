.class public final synthetic Lk3;
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

    .line 1
    iput p2, p0, Lk3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lk3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lk3;->a:I

    .line 6
    .line 7
    const/4 v3, 0x7

    .line 8
    const v4, 0x7f1305a0

    .line 9
    .line 10
    .line 11
    const-string v5, "0"

    .line 12
    .line 13
    const/16 v6, 0xe

    .line 14
    .line 15
    const/16 v8, 0x8

    .line 16
    .line 17
    const/4 v9, -0x1

    .line 18
    const/4 v11, 0x3

    .line 19
    const/4 v12, 0x1

    .line 20
    const/4 v13, 0x0

    .line 21
    sget-object v14, Lbe8;->a:Lbe8;

    .line 22
    .line 23
    iget-object v0, v0, Lk3;->b:Ljava/lang/Object;

    .line 24
    .line 25
    packed-switch v2, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    check-cast v0, Lyp8;

    .line 29
    .line 30
    check-cast v1, Lqw6;

    .line 31
    .line 32
    iget-object v2, v0, Lyp8;->h:Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object v3, v0, Lyp8;->d:Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object v6, v0, Lyp8;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 37
    .line 38
    iget-object v7, v0, Lyp8;->b:Lcy7;

    .line 39
    .line 40
    iget-object v7, v7, Lcy7;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 41
    .line 42
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    new-instance v7, Ldy7;

    .line 46
    .line 47
    iget-object v9, v0, Lyp8;->a:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 48
    .line 49
    iget-object v15, v0, Lyp8;->g:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-direct {v7, v9, v15}, Ldy7;-><init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;Landroid/widget/TextView;)V

    .line 52
    .line 53
    .line 54
    iget-object v15, v0, Lyp8;->c:Landroid/widget/TextView;

    .line 55
    .line 56
    const/16 v16, 0x0

    .line 57
    .line 58
    const v10, 0x7f1305b2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(I)V

    .line 62
    .line 63
    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    iget-object v10, v1, Lqw6;->a:Lpw6;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move-object/from16 v10, v16

    .line 70
    .line 71
    :goto_0
    check-cast v10, Ltt8;

    .line 72
    .line 73
    const v15, 0x7f1305c9

    .line 74
    .line 75
    .line 76
    if-nez v10, :cond_2

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    invoke-virtual {v1}, Lqw6;->a()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-ne v0, v12, :cond_1

    .line 85
    .line 86
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v9, v15, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Lsz8;->W(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_3

    .line 112
    .line 113
    :cond_2
    invoke-static {v2}, Lsz8;->c0(Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    const v1, 0x7f080214

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v10, Ltt8;->p:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v9, v15, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v10, Lpw6;->g:Lex6;

    .line 147
    .line 148
    new-instance v2, Lhq0;

    .line 149
    .line 150
    invoke-direct {v2, v8, v10, v0}, Lhq0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    new-instance v3, Lur0;

    .line 154
    .line 155
    const/4 v4, 0x4

    .line 156
    invoke-direct {v3, v4, v2}, Lur0;-><init>(ILmt3;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v9, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v10, Lpw6;->d:Lgj5;

    .line 163
    .line 164
    new-instance v2, Lxp8;

    .line 165
    .line 166
    invoke-direct {v2, v7, v12}, Lxp8;-><init>(Ldy7;I)V

    .line 167
    .line 168
    .line 169
    new-instance v3, Lur0;

    .line 170
    .line 171
    invoke-direct {v3, v4, v2}, Lur0;-><init>(ILmt3;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v9, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 175
    .line 176
    .line 177
    iget-object v1, v10, Lpw6;->i:Lex6;

    .line 178
    .line 179
    new-instance v2, Lcz;

    .line 180
    .line 181
    const/16 v3, 0x17

    .line 182
    .line 183
    invoke-direct {v2, v0, v3}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 184
    .line 185
    .line 186
    new-instance v3, Lur0;

    .line 187
    .line 188
    invoke-direct {v3, v4, v2}, Lur0;-><init>(ILmt3;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v9, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, v10, Lpw6;->a:Lcz7;

    .line 195
    .line 196
    check-cast v1, Lbz7;

    .line 197
    .line 198
    iget-boolean v1, v1, Lcz7;->a:Z

    .line 199
    .line 200
    if-eqz v1, :cond_3

    .line 201
    .line 202
    iget-object v1, v0, Lyp8;->f:Lkm5;

    .line 203
    .line 204
    invoke-virtual {v1, v12}, Lkm5;->t(Z)V

    .line 205
    .line 206
    .line 207
    iput-boolean v13, v7, Ldy7;->e:Z

    .line 208
    .line 209
    invoke-virtual {v7}, Ldy7;->d()V

    .line 210
    .line 211
    .line 212
    move-object v2, v7

    .line 213
    goto :goto_2

    .line 214
    :cond_3
    new-instance v17, Llh6;

    .line 215
    .line 216
    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    .line 217
    .line 218
    .line 219
    iget-object v1, v10, Lpw6;->e:Lex6;

    .line 220
    .line 221
    new-instance v15, Lrp3;

    .line 222
    .line 223
    const/16 v20, 0x3

    .line 224
    .line 225
    move-object/from16 v18, v0

    .line 226
    .line 227
    move-object/from16 v19, v7

    .line 228
    .line 229
    move-object/from16 v16, v10

    .line 230
    .line 231
    invoke-direct/range {v15 .. v20}, Lrp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 232
    .line 233
    .line 234
    move-object/from16 v2, v19

    .line 235
    .line 236
    new-instance v3, Lur0;

    .line 237
    .line 238
    invoke-direct {v3, v4, v15}, Lur0;-><init>(ILmt3;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v9, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 242
    .line 243
    .line 244
    :goto_2
    iget-object v1, v10, Lpw6;->c:Lgj5;

    .line 245
    .line 246
    new-instance v3, Le08;

    .line 247
    .line 248
    invoke-direct {v3, v11, v0, v2, v10}, Le08;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    new-instance v0, Lur0;

    .line 252
    .line 253
    invoke-direct {v0, v4, v3}, Lur0;-><init>(ILmt3;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v9, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 257
    .line 258
    .line 259
    :goto_3
    return-object v14

    .line 260
    :pswitch_0
    const/16 v16, 0x0

    .line 261
    .line 262
    check-cast v0, Lyp8;

    .line 263
    .line 264
    check-cast v1, Lqw6;

    .line 265
    .line 266
    iget-object v2, v0, Lyp8;->h:Landroid/widget/TextView;

    .line 267
    .line 268
    iget-object v6, v0, Lyp8;->d:Landroid/widget/TextView;

    .line 269
    .line 270
    iget-object v9, v0, Lyp8;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 271
    .line 272
    iget-object v10, v0, Lyp8;->b:Lcy7;

    .line 273
    .line 274
    iget-object v10, v10, Lcy7;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 275
    .line 276
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 277
    .line 278
    .line 279
    new-instance v10, Ldy7;

    .line 280
    .line 281
    iget-object v15, v0, Lyp8;->a:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 282
    .line 283
    iget-object v7, v0, Lyp8;->g:Landroid/widget/TextView;

    .line 284
    .line 285
    invoke-direct {v10, v15, v7}, Ldy7;-><init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;Landroid/widget/TextView;)V

    .line 286
    .line 287
    .line 288
    iget-object v7, v0, Lyp8;->c:Landroid/widget/TextView;

    .line 289
    .line 290
    const v11, 0x7f1305a3

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(I)V

    .line 294
    .line 295
    .line 296
    if-eqz v1, :cond_4

    .line 297
    .line 298
    iget-object v7, v1, Lqw6;->a:Lpw6;

    .line 299
    .line 300
    move-object/from16 v16, v7

    .line 301
    .line 302
    :cond_4
    move-object/from16 v7, v16

    .line 303
    .line 304
    check-cast v7, Lwp8;

    .line 305
    .line 306
    const v11, 0x7f1305c8

    .line 307
    .line 308
    .line 309
    if-nez v7, :cond_6

    .line 310
    .line 311
    if-eqz v1, :cond_5

    .line 312
    .line 313
    invoke-virtual {v1}, Lqw6;->a()Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-ne v0, v12, :cond_5

    .line 318
    .line 319
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v15, v11, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    goto :goto_4

    .line 328
    :cond_5
    invoke-virtual {v15, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    invoke-static {v2}, Lsz8;->W(Landroid/view/View;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_6

    .line 345
    .line 346
    :cond_6
    invoke-static {v2}, Lsz8;->c0(Landroid/view/View;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 350
    .line 351
    .line 352
    const v1, 0x7f080197

    .line 353
    .line 354
    .line 355
    invoke-virtual {v9, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 356
    .line 357
    .line 358
    iget-object v1, v7, Lwp8;->n:Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {v15, v11, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    .line 378
    .line 379
    iget-object v1, v7, Lpw6;->g:Lex6;

    .line 380
    .line 381
    new-instance v2, Lhq0;

    .line 382
    .line 383
    invoke-direct {v2, v3, v7, v0}, Lhq0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    new-instance v3, Lur0;

    .line 387
    .line 388
    const/4 v4, 0x3

    .line 389
    invoke-direct {v3, v4, v2}, Lur0;-><init>(ILmt3;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1, v15, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 393
    .line 394
    .line 395
    iget-object v1, v7, Lpw6;->d:Lgj5;

    .line 396
    .line 397
    new-instance v2, Lxp8;

    .line 398
    .line 399
    invoke-direct {v2, v10, v13}, Lxp8;-><init>(Ldy7;I)V

    .line 400
    .line 401
    .line 402
    new-instance v3, Lur0;

    .line 403
    .line 404
    invoke-direct {v3, v4, v2}, Lur0;-><init>(ILmt3;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1, v15, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 408
    .line 409
    .line 410
    iget-object v1, v7, Lpw6;->i:Lex6;

    .line 411
    .line 412
    new-instance v2, Lcz;

    .line 413
    .line 414
    const/16 v3, 0x16

    .line 415
    .line 416
    invoke-direct {v2, v0, v3}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 417
    .line 418
    .line 419
    new-instance v3, Lur0;

    .line 420
    .line 421
    invoke-direct {v3, v4, v2}, Lur0;-><init>(ILmt3;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1, v15, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 425
    .line 426
    .line 427
    iget-object v1, v7, Lpw6;->a:Lcz7;

    .line 428
    .line 429
    check-cast v1, Laz7;

    .line 430
    .line 431
    iget-boolean v1, v1, Lcz7;->a:Z

    .line 432
    .line 433
    if-eqz v1, :cond_7

    .line 434
    .line 435
    iget-object v1, v0, Lyp8;->f:Lkm5;

    .line 436
    .line 437
    invoke-virtual {v1, v12}, Lkm5;->t(Z)V

    .line 438
    .line 439
    .line 440
    iput-boolean v13, v10, Ldy7;->e:Z

    .line 441
    .line 442
    invoke-virtual {v10}, Ldy7;->d()V

    .line 443
    .line 444
    .line 445
    move-object v4, v7

    .line 446
    move-object v3, v10

    .line 447
    move-object v2, v15

    .line 448
    const/4 v6, 0x3

    .line 449
    goto :goto_5

    .line 450
    :cond_7
    new-instance v17, Llh6;

    .line 451
    .line 452
    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    .line 453
    .line 454
    .line 455
    iget-object v1, v7, Lpw6;->e:Lex6;

    .line 456
    .line 457
    move-object v2, v15

    .line 458
    new-instance v15, Lrp3;

    .line 459
    .line 460
    const/16 v20, 0x2

    .line 461
    .line 462
    move-object/from16 v18, v0

    .line 463
    .line 464
    move-object/from16 v16, v7

    .line 465
    .line 466
    move-object/from16 v19, v10

    .line 467
    .line 468
    invoke-direct/range {v15 .. v20}, Lrp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 469
    .line 470
    .line 471
    move-object/from16 v4, v16

    .line 472
    .line 473
    move-object/from16 v3, v19

    .line 474
    .line 475
    new-instance v5, Lur0;

    .line 476
    .line 477
    const/4 v6, 0x3

    .line 478
    invoke-direct {v5, v6, v15}, Lur0;-><init>(ILmt3;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v2, v5}, Lzy4;->e(Lfu4;Les5;)V

    .line 482
    .line 483
    .line 484
    :goto_5
    iget-object v1, v4, Lpw6;->c:Lgj5;

    .line 485
    .line 486
    new-instance v5, Le08;

    .line 487
    .line 488
    const/4 v7, 0x2

    .line 489
    invoke-direct {v5, v7, v0, v3, v4}, Le08;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    new-instance v0, Lur0;

    .line 493
    .line 494
    invoke-direct {v0, v6, v5}, Lur0;-><init>(ILmt3;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v2, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 498
    .line 499
    .line 500
    :goto_6
    return-object v14

    .line 501
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;

    .line 502
    .line 503
    check-cast v1, Ljava/lang/Boolean;

    .line 504
    .line 505
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->N:I

    .line 506
    .line 507
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-eqz v1, :cond_8

    .line 512
    .line 513
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setResult(I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 517
    .line 518
    .line 519
    goto :goto_7

    .line 520
    :cond_8
    invoke-virtual {v0, v13}, Landroid/app/Activity;->setResult(I)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 524
    .line 525
    .line 526
    :goto_7
    return-object v14

    .line 527
    :pswitch_2
    check-cast v0, Lm37;

    .line 528
    .line 529
    check-cast v1, Ljava/lang/Boolean;

    .line 530
    .line 531
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    if-nez v1, :cond_9

    .line 536
    .line 537
    invoke-static {}, Lo37;->b()Z

    .line 538
    .line 539
    .line 540
    move-result v1

    .line 541
    if-eqz v1, :cond_9

    .line 542
    .line 543
    invoke-virtual {v0}, Lm37;->q()V

    .line 544
    .line 545
    .line 546
    :cond_9
    return-object v14

    .line 547
    :pswitch_3
    check-cast v0, Lnd6;

    .line 548
    .line 549
    check-cast v1, Lq63;

    .line 550
    .line 551
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    check-cast v0, Lsa1;

    .line 556
    .line 557
    if-nez v0, :cond_a

    .line 558
    .line 559
    goto :goto_8

    .line 560
    :cond_a
    if-eqz v1, :cond_b

    .line 561
    .line 562
    invoke-virtual {v1}, Lq63;->j()Z

    .line 563
    .line 564
    .line 565
    move-result v2

    .line 566
    if-ne v2, v12, :cond_b

    .line 567
    .line 568
    sget v2, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 569
    .line 570
    invoke-static {v0, v1}, Ljd4;->G(Lsa1;Lq63;)V

    .line 571
    .line 572
    .line 573
    goto :goto_8

    .line 574
    :cond_b
    const v1, 0x7f1303be

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    sget-object v2, Lzn4;->a:Lzn4;

    .line 585
    .line 586
    new-instance v2, Lcv;

    .line 587
    .line 588
    invoke-direct {v2, v6, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 592
    .line 593
    .line 594
    :goto_8
    return-object v14

    .line 595
    :pswitch_4
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;

    .line 596
    .line 597
    check-cast v1, Ljava/lang/Boolean;

    .line 598
    .line 599
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->M:I

    .line 604
    .line 605
    if-eqz v1, :cond_c

    .line 606
    .line 607
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setResult(I)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 611
    .line 612
    .line 613
    goto :goto_9

    .line 614
    :cond_c
    invoke-virtual {v0, v13}, Landroid/app/Activity;->setResult(I)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 618
    .line 619
    .line 620
    :goto_9
    return-object v14

    .line 621
    :pswitch_5
    check-cast v0, Lfq5;

    .line 622
    .line 623
    check-cast v1, Ljava/lang/Boolean;

    .line 624
    .line 625
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 626
    .line 627
    .line 628
    move-result v1

    .line 629
    if-eqz v1, :cond_d

    .line 630
    .line 631
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setResult(I)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 635
    .line 636
    .line 637
    goto :goto_a

    .line 638
    :cond_d
    invoke-virtual {v0, v13}, Landroid/app/Activity;->setResult(I)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 642
    .line 643
    .line 644
    :goto_a
    return-object v14

    .line 645
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;

    .line 646
    .line 647
    check-cast v1, Ljava/util/List;

    .line 648
    .line 649
    sget v2, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->N:I

    .line 650
    .line 651
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    new-instance v4, Ljava/util/ArrayList;

    .line 655
    .line 656
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .line 658
    .line 659
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    :cond_e
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 664
    .line 665
    .line 666
    move-result v2

    .line 667
    if-eqz v2, :cond_f

    .line 668
    .line 669
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    move-object v3, v2

    .line 674
    check-cast v3, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 675
    .line 676
    invoke-virtual {v3, v12}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->shouldShowToUser(Z)Z

    .line 677
    .line 678
    .line 679
    move-result v3

    .line 680
    if-eqz v3, :cond_e

    .line 681
    .line 682
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    goto :goto_b

    .line 686
    :cond_f
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->L:Lgv7;

    .line 687
    .line 688
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    check-cast v1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 693
    .line 694
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 695
    .line 696
    .line 697
    move-result v2

    .line 698
    xor-int/2addr v2, v12

    .line 699
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 700
    .line 701
    .line 702
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->M:Lgv7;

    .line 703
    .line 704
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    check-cast v0, Lqo5;

    .line 709
    .line 710
    new-instance v3, Lfm7;

    .line 711
    .line 712
    const/4 v7, 0x0

    .line 713
    const/16 v8, 0x1e

    .line 714
    .line 715
    const/4 v5, 0x0

    .line 716
    const/4 v6, 0x0

    .line 717
    invoke-direct/range {v3 .. v8}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v0, v3, v12}, Lgm7;->w(Lfm7;Z)V

    .line 721
    .line 722
    .line 723
    return-object v14

    .line 724
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 725
    .line 726
    check-cast v1, Ljava/lang/String;

    .line 727
    .line 728
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 729
    .line 730
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->O()Ltb5;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->P()Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 738
    .line 739
    .line 740
    move-result-object v3

    .line 741
    invoke-virtual {v2, v3}, Ltb5;->k(Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->O()Ltb5;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-virtual {v0, v1}, Ltb5;->j(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    return-object v14

    .line 752
    :pswitch_8
    check-cast v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 753
    .line 754
    check-cast v1, Lq63;

    .line 755
    .line 756
    sget-object v2, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 757
    .line 758
    if-eqz v1, :cond_11

    .line 759
    .line 760
    invoke-virtual {v1}, Lq63;->j()Z

    .line 761
    .line 762
    .line 763
    move-result v2

    .line 764
    if-ne v2, v12, :cond_11

    .line 765
    .line 766
    sget-object v2, Lg00;->a:Lg00;

    .line 767
    .line 768
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 769
    .line 770
    .line 771
    move-result-object v2

    .line 772
    const-string v3, "android.hardware.telephony"

    .line 773
    .line 774
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 775
    .line 776
    .line 777
    move-result v2

    .line 778
    if-nez v2, :cond_10

    .line 779
    .line 780
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 781
    .line 782
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    sget-object v2, Lzn4;->a:Lzn4;

    .line 787
    .line 788
    const-string v2, "Feature not supported on this device"

    .line 789
    .line 790
    invoke-static {v1, v2}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    goto :goto_c

    .line 794
    :cond_10
    new-instance v2, Landroid/content/Intent;

    .line 795
    .line 796
    const-class v3, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 797
    .line 798
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 799
    .line 800
    .line 801
    const-string v3, "EXTRA_BACKUP_FILE_PATH"

    .line 802
    .line 803
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 815
    .line 816
    .line 817
    :goto_c
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V()V

    .line 818
    .line 819
    .line 820
    goto :goto_d

    .line 821
    :cond_11
    const v1, 0x7f1303bd

    .line 822
    .line 823
    .line 824
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 829
    .line 830
    .line 831
    sget-object v2, Lzn4;->a:Lzn4;

    .line 832
    .line 833
    new-instance v2, Lcv;

    .line 834
    .line 835
    invoke-direct {v2, v6, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 836
    .line 837
    .line 838
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 839
    .line 840
    .line 841
    :goto_d
    return-object v14

    .line 842
    :pswitch_9
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 843
    .line 844
    check-cast v1, Ljava/lang/Integer;

    .line 845
    .line 846
    sget v2, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->Q:I

    .line 847
    .line 848
    if-eqz v1, :cond_12

    .line 849
    .line 850
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 851
    .line 852
    .line 853
    move-result v1

    .line 854
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 859
    .line 860
    .line 861
    sget-object v2, Lzn4;->a:Lzn4;

    .line 862
    .line 863
    new-instance v2, Lcv;

    .line 864
    .line 865
    invoke-direct {v2, v6, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 866
    .line 867
    .line 868
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 869
    .line 870
    .line 871
    :cond_12
    return-object v14

    .line 872
    :pswitch_a
    check-cast v0, Lg70;

    .line 873
    .line 874
    check-cast v1, Lwf3;

    .line 875
    .line 876
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 877
    .line 878
    .line 879
    invoke-virtual {v0, v1}, Lg70;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    return-object v14

    .line 883
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 884
    .line 885
    check-cast v1, Lvj2;

    .line 886
    .line 887
    sget v2, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 888
    .line 889
    invoke-virtual {v0}, Lzm;->getSupportActionBar()Lnc8;

    .line 890
    .line 891
    .line 892
    move-result-object v2

    .line 893
    if-eqz v2, :cond_13

    .line 894
    .line 895
    iget-object v4, v1, Lvj2;->d:Ljava/lang/String;

    .line 896
    .line 897
    invoke-virtual {v2, v4}, Lnc8;->f0(Ljava/lang/CharSequence;)V

    .line 898
    .line 899
    .line 900
    :cond_13
    invoke-virtual {v0}, Lzm;->getSupportActionBar()Lnc8;

    .line 901
    .line 902
    .line 903
    move-result-object v2

    .line 904
    if-eqz v2, :cond_14

    .line 905
    .line 906
    const v4, 0x7f130093

    .line 907
    .line 908
    .line 909
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v4

    .line 913
    invoke-virtual {v2, v4}, Lnc8;->d0(Ljava/lang/CharSequence;)V

    .line 914
    .line 915
    .line 916
    :cond_14
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->T:Lgv7;

    .line 917
    .line 918
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    check-cast v0, Lgj2;

    .line 923
    .line 924
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 925
    .line 926
    .line 927
    iget-object v2, v0, Lgj2;->m:Lcom/google/android/material/button/MaterialButton;

    .line 928
    .line 929
    iget-object v4, v0, Lgj2;->f:Landroid/widget/TextView;

    .line 930
    .line 931
    iget-object v5, v0, Lgj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 932
    .line 933
    iget-object v6, v0, Lgj2;->l:Lcom/google/android/material/button/MaterialButton;

    .line 934
    .line 935
    iget-object v7, v0, Lgj2;->k:Lcom/google/android/material/button/MaterialButton;

    .line 936
    .line 937
    iget-object v8, v0, Lgj2;->j:Lcom/google/android/material/button/MaterialButton;

    .line 938
    .line 939
    iget-object v9, v0, Lgj2;->b:Lmk2;

    .line 940
    .line 941
    invoke-virtual {v9}, Lmk2;->k()Lji;

    .line 942
    .line 943
    .line 944
    move-result-object v10

    .line 945
    iget-object v11, v0, Lgj2;->c:Landroid/widget/ImageView;

    .line 946
    .line 947
    new-instance v15, Luf1;

    .line 948
    .line 949
    const/4 v3, 0x3

    .line 950
    invoke-direct {v15, v3, v0, v10}, Luf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 951
    .line 952
    .line 953
    invoke-virtual {v11, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 954
    .line 955
    .line 956
    sget-object v3, Lj94;->a:Ljava/util/Set;

    .line 957
    .line 958
    new-instance v3, Lsx3;

    .line 959
    .line 960
    invoke-virtual {v10}, Lji;->getPackageName()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v11

    .line 964
    invoke-virtual {v10}, Lji;->isInstalled()Z

    .line 965
    .line 966
    .line 967
    move-result v15

    .line 968
    invoke-direct {v3, v11, v15}, Lsx3;-><init>(Ljava/lang/String;Z)V

    .line 969
    .line 970
    .line 971
    iget-object v11, v0, Lgj2;->d:Landroid/widget/ImageView;

    .line 972
    .line 973
    iget-boolean v15, v1, Lvj2;->a:Z

    .line 974
    .line 975
    xor-int/lit8 v13, v15, 0x1

    .line 976
    .line 977
    invoke-static {v3, v11, v13, v12}, Lj94;->g(Lsx3;Landroid/widget/ImageView;ZZ)V

    .line 978
    .line 979
    .line 980
    new-instance v3, Lm51;

    .line 981
    .line 982
    const/4 v12, 0x2

    .line 983
    invoke-direct {v3, v12, v10, v0}, Lm51;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 984
    .line 985
    .line 986
    invoke-virtual {v11, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 987
    .line 988
    .line 989
    iget-object v3, v0, Lgj2;->e:Landroid/widget/ImageView;

    .line 990
    .line 991
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v10}, Lji;->isFavorite()Z

    .line 995
    .line 996
    .line 997
    move-result v11

    .line 998
    invoke-static {v3, v11}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 999
    .line 1000
    .line 1001
    invoke-static {v3}, Lsz8;->I(Landroid/view/View;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v11

    .line 1005
    if-eqz v11, :cond_15

    .line 1006
    .line 1007
    iget-boolean v11, v0, Lgj2;->o:Z

    .line 1008
    .line 1009
    if-eqz v11, :cond_15

    .line 1010
    .line 1011
    sget-object v11, Lv53;->a:Lv53;

    .line 1012
    .line 1013
    invoke-static {v3}, Lv53;->a(Landroid/widget/ImageView;)V

    .line 1014
    .line 1015
    .line 1016
    const/4 v3, 0x0

    .line 1017
    iput-boolean v3, v0, Lgj2;->o:Z

    .line 1018
    .line 1019
    :cond_15
    sget-object v3, Ltr;->n0:Lqr;

    .line 1020
    .line 1021
    invoke-static {v5}, Lqr;->c(Landroid/content/Context;)I

    .line 1022
    .line 1023
    .line 1024
    move-result v3

    .line 1025
    invoke-static {v4, v10, v3}, Lqr;->h(Landroid/widget/TextView;Lji;I)V

    .line 1026
    .line 1027
    .line 1028
    new-instance v3, Lh10;

    .line 1029
    .line 1030
    const/4 v11, 0x3

    .line 1031
    invoke-direct {v3, v11, v10, v0}, Lh10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    .line 1036
    .line 1037
    iget-object v3, v0, Lgj2;->g:Landroid/widget/TextView;

    .line 1038
    .line 1039
    invoke-static {v3, v10}, Lqr;->e(Landroid/widget/TextView;Lji;)V

    .line 1040
    .line 1041
    .line 1042
    iget-object v3, v0, Lgj2;->h:Landroid/widget/TextView;

    .line 1043
    .line 1044
    iget-object v4, v1, Lvj2;->e:Ljava/lang/String;

    .line 1045
    .line 1046
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    .line 1048
    .line 1049
    iget-object v3, v0, Lgj2;->i:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 1050
    .line 1051
    invoke-virtual {v5}, Lk28;->v()Z

    .line 1052
    .line 1053
    .line 1054
    move-result v24

    .line 1055
    invoke-static {v10}, Lqr;->a(Lji;)F

    .line 1056
    .line 1057
    .line 1058
    move-result v25

    .line 1059
    invoke-virtual {v10}, Lji;->getLabels()Ljava/util/Set;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v26

    .line 1063
    const/16 v28, 0x0

    .line 1064
    .line 1065
    const/16 v29, 0xfe2

    .line 1066
    .line 1067
    const/16 v23, 0x0

    .line 1068
    .line 1069
    const/16 v27, 0x0

    .line 1070
    .line 1071
    move-object/from16 v22, v3

    .line 1072
    .line 1073
    invoke-static/range {v22 .. v29}, Lqr;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/a;ZFLjava/util/Set;ZLqt3;I)V

    .line 1074
    .line 1075
    .line 1076
    iget-boolean v3, v1, Lvj2;->f:Z

    .line 1077
    .line 1078
    invoke-static {v8, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1079
    .line 1080
    .line 1081
    iget-boolean v1, v1, Lvj2;->b:Z

    .line 1082
    .line 1083
    if-eqz v1, :cond_16

    .line 1084
    .line 1085
    sget-object v1, Lmp6;->a:Lmp6;

    .line 1086
    .line 1087
    invoke-static {}, Lmp6;->f()Z

    .line 1088
    .line 1089
    .line 1090
    move-result v1

    .line 1091
    if-eqz v1, :cond_16

    .line 1092
    .line 1093
    const/4 v1, 0x1

    .line 1094
    goto :goto_e

    .line 1095
    :cond_16
    const/4 v1, 0x0

    .line 1096
    :goto_e
    invoke-static {v7, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1097
    .line 1098
    .line 1099
    if-eqz v15, :cond_17

    .line 1100
    .line 1101
    iget-boolean v1, v9, Lmk2;->f:Z

    .line 1102
    .line 1103
    if-nez v1, :cond_17

    .line 1104
    .line 1105
    const/4 v1, 0x1

    .line 1106
    goto :goto_f

    .line 1107
    :cond_17
    const/4 v1, 0x0

    .line 1108
    :goto_f
    invoke-static {v6, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1109
    .line 1110
    .line 1111
    invoke-static {v2, v13}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1112
    .line 1113
    .line 1114
    new-instance v1, Li10;

    .line 1115
    .line 1116
    const/4 v12, 0x2

    .line 1117
    invoke-direct {v1, v12, v0, v10}, Li10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    .line 1122
    .line 1123
    new-instance v1, Les;

    .line 1124
    .line 1125
    const/4 v3, 0x7

    .line 1126
    invoke-direct {v1, v0, v3}, Les;-><init>(Ljava/lang/Object;I)V

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    .line 1131
    .line 1132
    new-instance v1, Lfj2;

    .line 1133
    .line 1134
    const/4 v3, 0x0

    .line 1135
    invoke-direct {v1, v3, v0, v10}, Lfj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    .line 1140
    .line 1141
    filled-new-array {v8, v7, v6, v2}, [Lcom/google/android/material/button/MaterialButton;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v1

    .line 1145
    invoke-static {v1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v1

    .line 1149
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 1150
    .line 1151
    .line 1152
    move-result v2

    .line 1153
    if-eqz v2, :cond_19

    .line 1154
    .line 1155
    :cond_18
    const/4 v1, 0x0

    .line 1156
    goto :goto_10

    .line 1157
    :cond_19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1162
    .line 1163
    .line 1164
    move-result v2

    .line 1165
    if-eqz v2, :cond_18

    .line 1166
    .line 1167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v2

    .line 1171
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 1172
    .line 1173
    invoke-static {v2}, Lsz8;->I(Landroid/view/View;)Z

    .line 1174
    .line 1175
    .line 1176
    move-result v2

    .line 1177
    if-eqz v2, :cond_1a

    .line 1178
    .line 1179
    const/4 v1, 0x1

    .line 1180
    :goto_10
    iget-object v0, v0, Lgj2;->n:Landroid/view/View;

    .line 1181
    .line 1182
    if-eqz v1, :cond_1b

    .line 1183
    .line 1184
    if-eqz v15, :cond_1b

    .line 1185
    .line 1186
    const/4 v12, 0x1

    .line 1187
    goto :goto_11

    .line 1188
    :cond_1b
    const/4 v12, 0x0

    .line 1189
    :goto_11
    invoke-static {v0, v12}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1190
    .line 1191
    .line 1192
    return-object v14

    .line 1193
    :pswitch_c
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 1194
    .line 1195
    check-cast v1, Ljava/lang/Boolean;

    .line 1196
    .line 1197
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1198
    .line 1199
    .line 1200
    move-result v1

    .line 1201
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 1202
    .line 1203
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->G0:Lgv7;

    .line 1204
    .line 1205
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v2

    .line 1209
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 1210
    .line 1211
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    .line 1215
    .line 1216
    .line 1217
    move-result v3

    .line 1218
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1219
    .line 1220
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1221
    .line 1222
    if-eqz v3, :cond_1c

    .line 1223
    .line 1224
    move v3, v5

    .line 1225
    goto :goto_12

    .line 1226
    :cond_1c
    move v3, v4

    .line 1227
    :goto_12
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1228
    .line 1229
    .line 1230
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->F0:Lgv7;

    .line 1231
    .line 1232
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v0

    .line 1236
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 1237
    .line 1238
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 1242
    .line 1243
    .line 1244
    move-result v1

    .line 1245
    if-eqz v1, :cond_1d

    .line 1246
    .line 1247
    move v4, v5

    .line 1248
    :cond_1d
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1249
    .line 1250
    .line 1251
    return-object v14

    .line 1252
    :pswitch_d
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;

    .line 1253
    .line 1254
    check-cast v1, Lfm7;

    .line 1255
    .line 1256
    sget v2, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->O:I

    .line 1257
    .line 1258
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->N:Lgv7;

    .line 1259
    .line 1260
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v2

    .line 1264
    check-cast v2, Luv1;

    .line 1265
    .line 1266
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1267
    .line 1268
    .line 1269
    const/4 v3, 0x1

    .line 1270
    invoke-virtual {v2, v1, v3}, Lgm7;->w(Lfm7;Z)V

    .line 1271
    .line 1272
    .line 1273
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->M:Lgv7;

    .line 1274
    .line 1275
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v0

    .line 1279
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 1280
    .line 1281
    iget-object v1, v1, Lfm7;->a:Ljava/util/List;

    .line 1282
    .line 1283
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 1284
    .line 1285
    .line 1286
    move-result v1

    .line 1287
    xor-int/2addr v1, v3

    .line 1288
    invoke-static {v0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1289
    .line 1290
    .line 1291
    return-object v14

    .line 1292
    :pswitch_e
    const/16 v16, 0x0

    .line 1293
    .line 1294
    check-cast v0, Llr1;

    .line 1295
    .line 1296
    check-cast v1, Ljava/util/Set;

    .line 1297
    .line 1298
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1299
    .line 1300
    .line 1301
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 1302
    .line 1303
    .line 1304
    move-result v2

    .line 1305
    if-nez v2, :cond_1e

    .line 1306
    .line 1307
    move-object v3, v1

    .line 1308
    goto :goto_13

    .line 1309
    :cond_1e
    move-object/from16 v3, v16

    .line 1310
    .line 1311
    :goto_13
    if-eqz v3, :cond_1f

    .line 1312
    .line 1313
    const/4 v7, 0x0

    .line 1314
    const/16 v8, 0x3f

    .line 1315
    .line 1316
    const/4 v4, 0x0

    .line 1317
    const/4 v5, 0x0

    .line 1318
    const/4 v6, 0x0

    .line 1319
    invoke-static/range {v3 .. v8}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v10

    .line 1323
    move-object/from16 v19, v10

    .line 1324
    .line 1325
    goto :goto_14

    .line 1326
    :cond_1f
    move-object/from16 v19, v16

    .line 1327
    .line 1328
    :goto_14
    invoke-virtual {v0}, Llr1;->r()Lmr1;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v1

    .line 1332
    invoke-virtual {v0}, Llr1;->r()Lmr1;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    invoke-virtual {v0}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v15

    .line 1340
    const v32, 0xfff7

    .line 1341
    .line 1342
    .line 1343
    const/16 v33, 0x0

    .line 1344
    .line 1345
    const/16 v16, 0x0

    .line 1346
    .line 1347
    const/16 v17, 0x0

    .line 1348
    .line 1349
    const/16 v18, 0x0

    .line 1350
    .line 1351
    const/16 v20, 0x0

    .line 1352
    .line 1353
    const/16 v21, 0x0

    .line 1354
    .line 1355
    const/16 v22, 0x0

    .line 1356
    .line 1357
    const/16 v23, 0x0

    .line 1358
    .line 1359
    const/16 v24, 0x0

    .line 1360
    .line 1361
    const/16 v25, 0x0

    .line 1362
    .line 1363
    const/16 v26, 0x0

    .line 1364
    .line 1365
    const/16 v27, 0x0

    .line 1366
    .line 1367
    const/16 v28, 0x0

    .line 1368
    .line 1369
    const/16 v29, 0x0

    .line 1370
    .line 1371
    const/16 v30, 0x0

    .line 1372
    .line 1373
    const/16 v31, 0x0

    .line 1374
    .line 1375
    invoke-static/range {v15 .. v33}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v0

    .line 1379
    invoke-virtual {v1, v0}, Lmr1;->k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V

    .line 1380
    .line 1381
    .line 1382
    return-object v14

    .line 1383
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 1384
    .line 1385
    check-cast v1, Lfm7;

    .line 1386
    .line 1387
    sget v2, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 1388
    .line 1389
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->O:Lgv7;

    .line 1390
    .line 1391
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v0

    .line 1395
    check-cast v0, Lyq1;

    .line 1396
    .line 1397
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1398
    .line 1399
    .line 1400
    const/4 v3, 0x0

    .line 1401
    invoke-virtual {v0, v1, v3}, Lgm7;->w(Lfm7;Z)V

    .line 1402
    .line 1403
    .line 1404
    return-object v14

    .line 1405
    :pswitch_10
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 1406
    .line 1407
    check-cast v1, Lmd1;

    .line 1408
    .line 1409
    sget v2, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 1410
    .line 1411
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1412
    .line 1413
    .line 1414
    iget-object v2, v1, Lmd1;->a:Lqd1;

    .line 1415
    .line 1416
    iget v2, v2, Lqd1;->b:I

    .line 1417
    .line 1418
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v0

    .line 1422
    iget-object v1, v1, Lmd1;->d:Ljava/lang/String;

    .line 1423
    .line 1424
    if-nez v1, :cond_20

    .line 1425
    .line 1426
    const-string v1, ""

    .line 1427
    .line 1428
    :cond_20
    const-string v2, ": "

    .line 1429
    .line 1430
    invoke-static {v0, v2, v1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v0

    .line 1434
    return-object v0

    .line 1435
    :pswitch_11
    check-cast v0, Lil0;

    .line 1436
    .line 1437
    check-cast v1, Ljava/lang/Boolean;

    .line 1438
    .line 1439
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1440
    .line 1441
    .line 1442
    move-result v1

    .line 1443
    if-eqz v1, :cond_21

    .line 1444
    .line 1445
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 1446
    .line 1447
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v3

    .line 1451
    const/4 v6, 0x4

    .line 1452
    const/4 v7, 0x0

    .line 1453
    const-string v4, "onUserSignedOut: User signed out, Un-scheduling background tasks & Restarting app"

    .line 1454
    .line 1455
    const/4 v5, 0x0

    .line 1456
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1457
    .line 1458
    .line 1459
    const-string v0, "onUserSignedOut"

    .line 1460
    .line 1461
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->E(Ljava/lang/String;)V

    .line 1462
    .line 1463
    .line 1464
    :cond_21
    return-object v14

    .line 1465
    :pswitch_12
    const/16 v16, 0x0

    .line 1466
    .line 1467
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 1468
    .line 1469
    check-cast v1, Ljava/lang/Integer;

    .line 1470
    .line 1471
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1472
    .line 1473
    .line 1474
    move-result v1

    .line 1475
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->j0:Lf30;

    .line 1476
    .line 1477
    const-string v3, "mAdapter"

    .line 1478
    .line 1479
    if-eqz v2, :cond_25

    .line 1480
    .line 1481
    invoke-virtual {v2}, Lgm7;->b()I

    .line 1482
    .line 1483
    .line 1484
    move-result v2

    .line 1485
    sub-int/2addr v2, v1

    .line 1486
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->j0:Lf30;

    .line 1487
    .line 1488
    if-eqz v1, :cond_24

    .line 1489
    .line 1490
    iget-object v1, v1, Lgm7;->e:Lfm7;

    .line 1491
    .line 1492
    iget-object v1, v1, Lfm7;->a:Ljava/util/List;

    .line 1493
    .line 1494
    invoke-static {v2, v1}, Lel1;->q1(ILjava/util/List;)Ljava/util/List;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v1

    .line 1498
    new-instance v2, Ljava/util/ArrayList;

    .line 1499
    .line 1500
    const/16 v4, 0xa

    .line 1501
    .line 1502
    invoke-static {v1, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1503
    .line 1504
    .line 1505
    move-result v4

    .line 1506
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1507
    .line 1508
    .line 1509
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v1

    .line 1513
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1514
    .line 1515
    .line 1516
    move-result v4

    .line 1517
    if-eqz v4, :cond_22

    .line 1518
    .line 1519
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v4

    .line 1523
    check-cast v4, Lji;

    .line 1524
    .line 1525
    invoke-virtual {v4}, Lji;->getItemId()Ljava/lang/String;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v4

    .line 1529
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    .line 1531
    .line 1532
    goto :goto_15

    .line 1533
    :cond_22
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->j0:Lf30;

    .line 1534
    .line 1535
    if-eqz v0, :cond_23

    .line 1536
    .line 1537
    invoke-static {v2}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v1

    .line 1541
    invoke-virtual {v0, v1}, Lgm7;->t(Ljava/util/Set;)V

    .line 1542
    .line 1543
    .line 1544
    return-object v14

    .line 1545
    :cond_23
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 1546
    .line 1547
    .line 1548
    throw v16

    .line 1549
    :cond_24
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    throw v16

    .line 1553
    :cond_25
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 1554
    .line 1555
    .line 1556
    throw v16

    .line 1557
    :pswitch_13
    check-cast v0, Lfz;

    .line 1558
    .line 1559
    check-cast v1, Ljava/lang/String;

    .line 1560
    .line 1561
    iget-object v0, v0, Lfz;->l:Landroid/widget/TextView;

    .line 1562
    .line 1563
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1564
    .line 1565
    .line 1566
    return-object v14

    .line 1567
    :pswitch_14
    const/16 v16, 0x0

    .line 1568
    .line 1569
    check-cast v0, Ldt;

    .line 1570
    .line 1571
    check-cast v1, Lvx;

    .line 1572
    .line 1573
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1574
    .line 1575
    .line 1576
    instance-of v2, v1, Lux;

    .line 1577
    .line 1578
    if-eqz v2, :cond_26

    .line 1579
    .line 1580
    invoke-virtual {v0}, Ldt;->Z()Lw45;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v2

    .line 1584
    check-cast v1, Lux;

    .line 1585
    .line 1586
    iget-object v3, v1, Lux;->c:Ljava/lang/String;

    .line 1587
    .line 1588
    invoke-virtual {v2, v3}, Lwa;->setTitle(Ljava/lang/CharSequence;)V

    .line 1589
    .line 1590
    .line 1591
    invoke-virtual {v0}, Ldt;->Z()Lw45;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v2

    .line 1595
    iget-object v3, v1, Lux;->d:Ljava/lang/String;

    .line 1596
    .line 1597
    invoke-virtual {v2, v3}, Lw45;->i(Ljava/lang/CharSequence;)V

    .line 1598
    .line 1599
    .line 1600
    invoke-virtual {v0}, Ldt;->Z()Lw45;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v2

    .line 1604
    iget v3, v1, Lux;->b:I

    .line 1605
    .line 1606
    invoke-virtual {v2, v3}, Lw45;->l(I)V

    .line 1607
    .line 1608
    .line 1609
    invoke-virtual {v0}, Ldt;->Z()Lw45;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v2

    .line 1613
    iget v1, v1, Lux;->a:I

    .line 1614
    .line 1615
    invoke-virtual {v2, v1}, Lw45;->m(I)V

    .line 1616
    .line 1617
    .line 1618
    invoke-virtual {v0}, Ldt;->Z()Lw45;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v1

    .line 1622
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 1623
    .line 1624
    .line 1625
    move-result v1

    .line 1626
    if-nez v1, :cond_27

    .line 1627
    .line 1628
    invoke-virtual {v0}, Ldt;->Z()Lw45;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v1

    .line 1632
    const v2, 0x7f1300f1

    .line 1633
    .line 1634
    .line 1635
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v2

    .line 1639
    new-instance v3, Lys;

    .line 1640
    .line 1641
    const/4 v4, 0x0

    .line 1642
    invoke-direct {v3, v4}, Lys;-><init>(I)V

    .line 1643
    .line 1644
    .line 1645
    iget-object v1, v1, Lwa;->k:Lua;

    .line 1646
    .line 1647
    invoke-virtual {v1, v9, v2, v3}, Lua;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual {v0}, Ldt;->Z()Lw45;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v1

    .line 1654
    invoke-virtual {v1}, Lw45;->show()V

    .line 1655
    .line 1656
    .line 1657
    invoke-virtual {v0}, Ldt;->Z()Lw45;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v0

    .line 1661
    const v1, 0x102000b

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {v0, v1}, Lho;->findViewById(I)Landroid/view/View;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v0

    .line 1668
    check-cast v0, Landroid/widget/TextView;

    .line 1669
    .line 1670
    if-eqz v0, :cond_27

    .line 1671
    .line 1672
    const/high16 v1, 0x41580000    # 13.5f

    .line 1673
    .line 1674
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1675
    .line 1676
    .line 1677
    goto :goto_16

    .line 1678
    :cond_26
    sget-object v2, Ltx;->a:Ltx;

    .line 1679
    .line 1680
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1681
    .line 1682
    .line 1683
    move-result v1

    .line 1684
    if-eqz v1, :cond_28

    .line 1685
    .line 1686
    iget-object v1, v0, Ldt;->c0:Lgv7;

    .line 1687
    .line 1688
    invoke-virtual {v1}, Lgv7;->a()Z

    .line 1689
    .line 1690
    .line 1691
    move-result v1

    .line 1692
    if-eqz v1, :cond_27

    .line 1693
    .line 1694
    invoke-virtual {v0}, Ldt;->Z()Lw45;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v0

    .line 1698
    invoke-virtual {v0}, Lho;->dismiss()V

    .line 1699
    .line 1700
    .line 1701
    :cond_27
    :goto_16
    move-object v10, v14

    .line 1702
    goto :goto_17

    .line 1703
    :cond_28
    invoke-static {}, Lq;->j()V

    .line 1704
    .line 1705
    .line 1706
    move-object/from16 v10, v16

    .line 1707
    .line 1708
    :goto_17
    return-object v10

    .line 1709
    :pswitch_15
    check-cast v0, Ljq;

    .line 1710
    .line 1711
    check-cast v1, Ljava/lang/Long;

    .line 1712
    .line 1713
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 1714
    .line 1715
    .line 1716
    move-result-wide v1

    .line 1717
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v1

    .line 1721
    invoke-virtual {v0, v1}, Ljq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    .line 1723
    .line 1724
    return-object v14

    .line 1725
    :pswitch_16
    check-cast v0, Ll3;

    .line 1726
    .line 1727
    if-ne v1, v0, :cond_29

    .line 1728
    .line 1729
    const-string v0, "(this Collection)"

    .line 1730
    .line 1731
    goto :goto_18

    .line 1732
    :cond_29
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v0

    .line 1736
    :goto_18
    return-object v0

    .line 1737
    :pswitch_data_0
    .packed-switch 0x0
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
