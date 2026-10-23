.class public final synthetic Ljf;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ljf;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ljf;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ljf;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ljf;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    sget-object v4, Lbe8;->a:Lbe8;

    .line 8
    .line 9
    iget-object v5, v0, Ljf;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v0, v0, Ljf;->b:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Lop3;

    .line 18
    .line 19
    check-cast v5, Liz6;

    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Lz84;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v2, Lmz6;->a:Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-static {v0, v5, v1}, Lmz6;->d(Lop3;Liz6;Lz84;)Lez6;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :pswitch_0
    check-cast v0, Llh6;

    .line 36
    .line 37
    check-cast v5, Ltp3;

    .line 38
    .line 39
    iget-object v1, v5, Ltp3;->i:Landroid/widget/TextView;

    .line 40
    .line 41
    iget-object v3, v5, Ltp3;->h:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 42
    .line 43
    move-object/from16 v7, p1

    .line 44
    .line 45
    check-cast v7, Lr62;

    .line 46
    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    iget-object v8, v7, Lr62;->b:Ljava/lang/Integer;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-object v8, v2

    .line 53
    :goto_0
    if-eqz v7, :cond_1

    .line 54
    .line 55
    iget-object v2, v7, Lr62;->a:Ljava/lang/String;

    .line 56
    .line 57
    :cond_1
    iget-object v7, v0, Llh6;->a:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-static {v2, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    iput-object v2, v0, Llh6;->a:Ljava/lang/Object;

    .line 64
    .line 65
    if-eqz v8, :cond_3

    .line 66
    .line 67
    invoke-static {v3}, Lsz8;->c0(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lsz8;->c0(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    if-nez v7, :cond_2

    .line 74
    .line 75
    invoke-virtual {v3, v6}, Lkm0;->setProgress(I)V

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-static {v3, v0, v7}, Lsz8;->b0(Lkm0;IZ)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-static {v5, v0}, Ltp3;->a(Ltp3;I)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-static {v3}, Lsz8;->X(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Lsz8;->X(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v6}, Lkm0;->setProgress(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {v5, v6}, Ltp3;->a(Ltp3;I)V

    .line 103
    .line 104
    .line 105
    :goto_1
    return-object v4

    .line 106
    :pswitch_1
    check-cast v0, Lqj2;

    .line 107
    .line 108
    check-cast v5, Lzj2;

    .line 109
    .line 110
    move-object/from16 v7, p1

    .line 111
    .line 112
    check-cast v7, Landroid/view/View;

    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object v6, v0, Lqj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 118
    .line 119
    sget-object v8, Liu;->APP:Liu;

    .line 120
    .line 121
    iget-object v0, v5, Lzj2;->a:Liz4;

    .line 122
    .line 123
    invoke-virtual {v0}, Liz4;->getBackup()Lgm;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v9, v0, Lgm;->a:Lhk;

    .line 128
    .line 129
    const/4 v10, 0x0

    .line 130
    const/4 v11, 0x0

    .line 131
    invoke-virtual/range {v6 .. v11}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->c0(Landroid/view/View;Liu;Lhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-object v4

    .line 135
    :pswitch_2
    check-cast v0, Lqo5;

    .line 136
    .line 137
    check-cast v5, Lx92;

    .line 138
    .line 139
    move-object/from16 v1, p1

    .line 140
    .line 141
    check-cast v1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->isLinkOnly()Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-eqz v6, :cond_4

    .line 151
    .line 152
    iget-object v0, v0, Lgm7;->d:Ljava/lang/String;

    .line 153
    .line 154
    new-instance v6, Lg52;

    .line 155
    .line 156
    invoke-direct {v6, v3, v5, v1}, Lg52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    const/16 v1, 0xa

    .line 160
    .line 161
    invoke-static {v0, v2, v3, v6, v1}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    sget v0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;->O:I

    .line 166
    .line 167
    invoke-virtual {v5}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->getTitle()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    if-eqz v1, :cond_6

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_5

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_5
    new-instance v3, Landroid/content/Intent;

    .line 192
    .line 193
    const-class v5, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;

    .line 194
    .line 195
    invoke-direct {v3, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .line 197
    .line 198
    const-string v5, "extra_title"

    .line 199
    .line 200
    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    const-string v3, "extra_message"

    .line 205
    .line 206
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 214
    .line 215
    .line 216
    :cond_6
    :goto_2
    return-object v4

    .line 217
    :pswitch_3
    check-cast v0, Lfe1;

    .line 218
    .line 219
    check-cast v5, Lge1;

    .line 220
    .line 221
    move-object/from16 v1, p1

    .line 222
    .line 223
    check-cast v1, Lmd1;

    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Lfh6;->b()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    const/4 v2, -0x1

    .line 233
    if-eq v0, v2, :cond_7

    .line 234
    .line 235
    iget-object v2, v5, Lgm7;->j:Lqt3;

    .line 236
    .line 237
    if-eqz v2, :cond_7

    .line 238
    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-interface {v2, v1, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    :cond_7
    return-object v4

    .line 247
    :pswitch_4
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 248
    .line 249
    check-cast v5, Lq63;

    .line 250
    .line 251
    move-object/from16 v1, p1

    .line 252
    .line 253
    check-cast v1, Ltn2;

    .line 254
    .line 255
    sget-object v3, Lzn4;->a:Lzn4;

    .line 256
    .line 257
    new-instance v3, Lc20;

    .line 258
    .line 259
    invoke-direct {v3, v0, v1, v5, v2}, Lc20;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;Ltn2;Lq63;Ljv1;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v2, v3}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 263
    .line 264
    .line 265
    return-object v4

    .line 266
    :pswitch_5
    move-object v9, v0

    .line 267
    check-cast v9, Lfz;

    .line 268
    .line 269
    check-cast v5, Lrw6;

    .line 270
    .line 271
    move-object/from16 v0, p1

    .line 272
    .line 273
    check-cast v0, Lqw6;

    .line 274
    .line 275
    iget-object v1, v9, Lfz;->j:Landroid/widget/TextView;

    .line 276
    .line 277
    iget-object v7, v9, Lfz;->i:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 278
    .line 279
    iget-object v8, v9, Lfz;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 280
    .line 281
    iget-object v10, v9, Lfz;->l:Landroid/widget/TextView;

    .line 282
    .line 283
    iget-object v11, v9, Lfz;->f:Landroid/widget/TextView;

    .line 284
    .line 285
    iget-object v12, v9, Lfz;->e:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 286
    .line 287
    iget-object v13, v9, Lfz;->d:Landroid/widget/TextView;

    .line 288
    .line 289
    iget-object v14, v9, Lfz;->b:Lcy7;

    .line 290
    .line 291
    iget-object v14, v14, Lcy7;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 292
    .line 293
    invoke-virtual {v14, v6}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .line 295
    .line 296
    new-instance v14, Ldy7;

    .line 297
    .line 298
    iget-object v15, v9, Lfz;->a:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 299
    .line 300
    iget-object v2, v9, Lfz;->k:Landroid/widget/TextView;

    .line 301
    .line 302
    invoke-direct {v14, v15, v2}, Ldy7;-><init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;Landroid/widget/TextView;)V

    .line 303
    .line 304
    .line 305
    iget-object v2, v5, Lrw6;->d:Lvq;

    .line 306
    .line 307
    move-object v5, v10

    .line 308
    new-instance v10, Lih6;

    .line 309
    .line 310
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 311
    .line 312
    .line 313
    move/from16 v20, v3

    .line 314
    .line 315
    new-instance v3, Lih6;

    .line 316
    .line 317
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 318
    .line 319
    .line 320
    if-eqz v2, :cond_8

    .line 321
    .line 322
    iget-object v6, v2, Lvq;->c:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v6, Ljava/lang/String;

    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_8
    const/4 v6, 0x0

    .line 328
    :goto_3
    if-eqz v6, :cond_a

    .line 329
    .line 330
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    if-nez v6, :cond_9

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_9
    const/4 v6, 0x0

    .line 338
    goto :goto_5

    .line 339
    :cond_a
    :goto_4
    move/from16 v6, v20

    .line 340
    .line 341
    :goto_5
    xor-int/lit8 v6, v6, 0x1

    .line 342
    .line 343
    move-object/from16 p1, v1

    .line 344
    .line 345
    iget-object v1, v9, Lfz;->c:Landroid/widget/TextView;

    .line 346
    .line 347
    move-object/from16 v21, v4

    .line 348
    .line 349
    if-eqz v2, :cond_d

    .line 350
    .line 351
    iget-object v4, v2, Lvq;->b:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v4, Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .line 357
    .line 358
    iget-object v1, v2, Lvq;->c:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast v1, Ljava/lang/String;

    .line 361
    .line 362
    invoke-static {v13, v6}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    .line 367
    .line 368
    iget-object v1, v2, Lvq;->d:Ljava/lang/Object;

    .line 369
    .line 370
    move-object/from16 v16, v1

    .line 371
    .line 372
    check-cast v16, Ljava/util/Set;

    .line 373
    .line 374
    if-eqz v16, :cond_b

    .line 375
    .line 376
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-eqz v1, :cond_c

    .line 381
    .line 382
    :cond_b
    move-object v2, v14

    .line 383
    move-object v4, v15

    .line 384
    goto :goto_6

    .line 385
    :cond_c
    sget-object v1, Ltr;->n0:Lqr;

    .line 386
    .line 387
    new-instance v13, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 388
    .line 389
    const/4 v1, 0x0

    .line 390
    invoke-direct {v13, v15, v1}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 391
    .line 392
    .line 393
    move-object v1, v14

    .line 394
    invoke-virtual {v15}, Lk28;->v()Z

    .line 395
    .line 396
    .line 397
    move-result v14

    .line 398
    const/16 v18, 0x0

    .line 399
    .line 400
    const/16 v19, 0xfc0

    .line 401
    .line 402
    move-object v2, v15

    .line 403
    const/high16 v15, 0x3f800000    # 1.0f

    .line 404
    .line 405
    const/16 v17, 0x0

    .line 406
    .line 407
    move-object v4, v2

    .line 408
    move-object v2, v1

    .line 409
    invoke-static/range {v12 .. v19}, Lqr;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/a;ZFLjava/util/Set;ZLqt3;I)V

    .line 410
    .line 411
    .line 412
    :goto_6
    const/16 v6, 0x8

    .line 413
    .line 414
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 415
    .line 416
    .line 417
    goto :goto_7

    .line 418
    :cond_d
    move-object v2, v14

    .line 419
    move-object v4, v15

    .line 420
    const/16 v6, 0x8

    .line 421
    .line 422
    const v14, 0x7f130079

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(I)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 432
    .line 433
    .line 434
    :goto_7
    invoke-static {v10, v3, v9}, Lfz;->b(Lih6;Lih6;Lfz;)V

    .line 435
    .line 436
    .line 437
    if-eqz v0, :cond_e

    .line 438
    .line 439
    iget-object v1, v0, Lqw6;->a:Lpw6;

    .line 440
    .line 441
    goto :goto_8

    .line 442
    :cond_e
    const/4 v1, 0x0

    .line 443
    :goto_8
    check-cast v1, Lc40;

    .line 444
    .line 445
    const v6, 0x7f1305b9

    .line 446
    .line 447
    .line 448
    if-nez v1, :cond_10

    .line 449
    .line 450
    if-eqz v0, :cond_f

    .line 451
    .line 452
    invoke-virtual {v0}, Lqw6;->a()Z

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    move/from16 v1, v20

    .line 457
    .line 458
    if-ne v0, v1, :cond_f

    .line 459
    .line 460
    const-string v0, "0"

    .line 461
    .line 462
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {v4, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    goto :goto_9

    .line 471
    :cond_f
    const v0, 0x7f1305a0

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    .line 483
    .line 484
    invoke-static {v5}, Lsz8;->W(Landroid/view/View;)V

    .line 485
    .line 486
    .line 487
    const/16 v6, 0x8

    .line 488
    .line 489
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 490
    .line 491
    .line 492
    invoke-static {v7}, Lsz8;->W(Landroid/view/View;)V

    .line 493
    .line 494
    .line 495
    invoke-static/range {p1 .. p1}, Lsz8;->W(Landroid/view/View;)V

    .line 496
    .line 497
    .line 498
    goto/16 :goto_a

    .line 499
    .line 500
    :cond_10
    invoke-static {v5}, Lsz8;->c0(Landroid/view/View;)V

    .line 501
    .line 502
    .line 503
    const/4 v0, 0x0

    .line 504
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 505
    .line 506
    .line 507
    invoke-static {v7}, Lsz8;->X(Landroid/view/View;)V

    .line 508
    .line 509
    .line 510
    invoke-static/range {p1 .. p1}, Lsz8;->X(Landroid/view/View;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1}, Lpw6;->g()Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-eqz v0, :cond_11

    .line 518
    .line 519
    iget-object v0, v1, Lc40;->m:Ljava/util/List;

    .line 520
    .line 521
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-virtual {v4, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    .line 539
    .line 540
    :cond_11
    iget-object v0, v1, Lc40;->o:Lex6;

    .line 541
    .line 542
    new-instance v5, Lmm;

    .line 543
    .line 544
    const/4 v6, 0x1

    .line 545
    invoke-direct {v5, v6, v1, v9}, Lmm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    new-instance v6, Lez;

    .line 549
    .line 550
    const/4 v13, 0x0

    .line 551
    invoke-direct {v6, v13, v5}, Lez;-><init>(ILmt3;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0, v4, v6}, Lzy4;->e(Lfu4;Les5;)V

    .line 555
    .line 556
    .line 557
    iget-object v0, v1, Lpw6;->g:Lex6;

    .line 558
    .line 559
    new-instance v7, Lyy;

    .line 560
    .line 561
    const/4 v12, 0x0

    .line 562
    move-object v8, v1

    .line 563
    move-object v11, v3

    .line 564
    invoke-direct/range {v7 .. v12}, Lyy;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;I)V

    .line 565
    .line 566
    .line 567
    new-instance v1, Lez;

    .line 568
    .line 569
    invoke-direct {v1, v13, v7}, Lez;-><init>(ILmt3;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v4, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 573
    .line 574
    .line 575
    iget-object v0, v8, Lpw6;->h:Lex6;

    .line 576
    .line 577
    new-instance v1, Lzy;

    .line 578
    .line 579
    invoke-direct {v1, v8, v9, v11, v10}, Lzy;-><init>(Lc40;Lfz;Lih6;Lih6;)V

    .line 580
    .line 581
    .line 582
    new-instance v3, Lez;

    .line 583
    .line 584
    invoke-direct {v3, v13, v1}, Lez;-><init>(ILmt3;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0, v4, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 588
    .line 589
    .line 590
    new-instance v0, Llh6;

    .line 591
    .line 592
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 593
    .line 594
    .line 595
    iget-object v1, v8, Lpw6;->d:Lgj5;

    .line 596
    .line 597
    new-instance v3, Le7;

    .line 598
    .line 599
    const/4 v6, 0x1

    .line 600
    invoke-direct {v3, v2, v6}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 601
    .line 602
    .line 603
    new-instance v5, Lez;

    .line 604
    .line 605
    invoke-direct {v5, v13, v3}, Lez;-><init>(ILmt3;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v1, v4, v5}, Lzy4;->e(Lfu4;Les5;)V

    .line 609
    .line 610
    .line 611
    iget-object v1, v8, Lpw6;->i:Lex6;

    .line 612
    .line 613
    new-instance v3, Lk3;

    .line 614
    .line 615
    const/4 v5, 0x3

    .line 616
    invoke-direct {v3, v9, v5}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 617
    .line 618
    .line 619
    new-instance v5, Lez;

    .line 620
    .line 621
    invoke-direct {v5, v13, v3}, Lez;-><init>(ILmt3;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v1, v4, v5}, Lzy4;->e(Lfu4;Les5;)V

    .line 625
    .line 626
    .line 627
    iget-object v1, v8, Lpw6;->e:Lex6;

    .line 628
    .line 629
    new-instance v3, Laz;

    .line 630
    .line 631
    invoke-direct {v3, v0, v8, v2, v9}, Laz;-><init>(Llh6;Lc40;Ldy7;Lfz;)V

    .line 632
    .line 633
    .line 634
    new-instance v0, Lez;

    .line 635
    .line 636
    invoke-direct {v0, v13, v3}, Lez;-><init>(ILmt3;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v1, v4, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 640
    .line 641
    .line 642
    new-instance v0, Llh6;

    .line 643
    .line 644
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 645
    .line 646
    .line 647
    iget-object v1, v8, Lpw6;->f:Lex6;

    .line 648
    .line 649
    new-instance v3, Lbz;

    .line 650
    .line 651
    invoke-direct {v3, v13, v0, v9}, Lbz;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    new-instance v0, Lez;

    .line 655
    .line 656
    invoke-direct {v0, v13, v3}, Lez;-><init>(ILmt3;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v1, v4, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 660
    .line 661
    .line 662
    iget-object v0, v8, Lpw6;->j:Lgj5;

    .line 663
    .line 664
    new-instance v1, Lcz;

    .line 665
    .line 666
    invoke-direct {v1, v9, v13}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 667
    .line 668
    .line 669
    new-instance v3, Lez;

    .line 670
    .line 671
    invoke-direct {v3, v13, v1}, Lez;-><init>(ILmt3;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0, v4, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 675
    .line 676
    .line 677
    iget-object v0, v8, Lpw6;->c:Lgj5;

    .line 678
    .line 679
    new-instance v1, Ldz;

    .line 680
    .line 681
    invoke-direct {v1, v13, v9, v8, v2}, Ldz;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 682
    .line 683
    .line 684
    new-instance v2, Lez;

    .line 685
    .line 686
    invoke-direct {v2, v13, v1}, Lez;-><init>(ILmt3;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v0, v4, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 690
    .line 691
    .line 692
    :goto_a
    return-object v21

    .line 693
    :pswitch_6
    move-object/from16 v21, v4

    .line 694
    .line 695
    check-cast v0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 696
    .line 697
    check-cast v5, Lzf;

    .line 698
    .line 699
    move-object/from16 v1, p1

    .line 700
    .line 701
    check-cast v1, Lar;

    .line 702
    .line 703
    sget v2, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->Q:I

    .line 704
    .line 705
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->O()Lmg;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v0, v5}, Lmg;->j(Lzf;)V

    .line 716
    .line 717
    .line 718
    new-instance v1, Lhg;

    .line 719
    .line 720
    invoke-virtual {v0}, Lmg;->l()Lbg;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    iget-object v3, v5, Lzf;->d:Ljava/lang/String;

    .line 725
    .line 726
    invoke-direct {v1, v2, v3}, Lhg;-><init>(Lbg;Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v0, v1}, Lmg;->o(Lig;)V

    .line 730
    .line 731
    .line 732
    return-object v21

    .line 733
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
