.class public final synthetic Lpx;
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
    iput p2, p0, Lpx;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lpx;->b:Ljava/lang/Object;

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
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lpx;->a:I

    .line 4
    .line 5
    const-string v2, "editor"

    .line 6
    .line 7
    const v3, 0x7f13007f

    .line 8
    .line 9
    .line 10
    const v4, 0x7f13049a

    .line 11
    .line 12
    .line 13
    const/16 v5, 0x8

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x1

    .line 17
    const/4 v9, 0x0

    .line 18
    sget-object v10, Lbe8;->a:Lbe8;

    .line 19
    .line 20
    iget-object v0, v0, Lpx;->b:Ljava/lang/Object;

    .line 21
    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    check-cast v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 26
    .line 27
    move-object/from16 v1, p1

    .line 28
    .line 29
    check-cast v1, Lgu8;

    .line 30
    .line 31
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->U:Lgv7;

    .line 32
    .line 33
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcs8;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, Lcs8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 43
    .line 44
    iget-object v3, v0, Lcs8;->h:Landroid/widget/TextView;

    .line 45
    .line 46
    iget-object v6, v0, Lcs8;->i:Landroid/widget/ImageView;

    .line 47
    .line 48
    iget-object v8, v0, Lcs8;->j:Lcom/google/android/material/button/MaterialButton;

    .line 49
    .line 50
    iget-object v11, v0, Lcs8;->g:Lzx2;

    .line 51
    .line 52
    iget-object v11, v11, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    iget-object v12, v0, Lcs8;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 55
    .line 56
    iget-object v13, v0, Lcs8;->d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 57
    .line 58
    sget-object v14, Lbu8;->a:Lbu8;

    .line 59
    .line 60
    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    if-eqz v14, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0, v9}, Lcs8;->a(Ljava/lang/Integer;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v13, v5}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    sget-object v15, Lvr6;->INSTANCE:Lvr6;

    .line 82
    .line 83
    const/16 v19, 0x4

    .line 84
    .line 85
    const/16 v20, 0x0

    .line 86
    .line 87
    const-string v16, "WifiCardSystem"

    .line 88
    .line 89
    const-string v17, "Wi-Fi backup access unavailable"

    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    invoke-static/range {v15 .. v20}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    const v0, 0x7f080154

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    .line 101
    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 103
    .line 104
    const/16 v1, 0x1e

    .line 105
    .line 106
    if-lt v0, v1, :cond_0

    .line 107
    .line 108
    const v0, 0x7f13049f

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const v0, 0x7f13049e

    .line 113
    .line 114
    .line 115
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :cond_1
    instance-of v14, v1, Leu8;

    .line 121
    .line 122
    const v15, 0x7f080213

    .line 123
    .line 124
    .line 125
    if-eqz v14, :cond_2

    .line 126
    .line 127
    invoke-virtual {v0, v9}, Lcs8;->a(Ljava/lang/Integer;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v13, v5}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    sget-object v16, Lvr6;->INSTANCE:Lvr6;

    .line 140
    .line 141
    check-cast v1, Leu8;

    .line 142
    .line 143
    iget-object v1, v1, Leu8;->a:Lds8;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v2, "Wi-Fi device read failed: "

    .line 150
    .line 151
    invoke-static {v2, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v18

    .line 155
    const/16 v20, 0x4

    .line 156
    .line 157
    const/16 v21, 0x0

    .line 158
    .line 159
    const-string v17, "WifiCardSystem"

    .line 160
    .line 161
    const/16 v19, 0x0

    .line 162
    .line 163
    invoke-static/range {v16 .. v21}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    .line 168
    .line 169
    const v1, 0x7f1305b1

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(I)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Lmf;

    .line 182
    .line 183
    const/16 v2, 0xd

    .line 184
    .line 185
    invoke-direct {v1, v0, v2}, Lmf;-><init>(Ljava/lang/Object;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :cond_2
    sget-object v4, Ldu8;->a:Ldu8;

    .line 194
    .line 195
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_3

    .line 200
    .line 201
    invoke-virtual {v0, v9}, Lcs8;->a(Ljava/lang/Integer;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v13, v7}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v13}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->a0(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_1

    .line 220
    .line 221
    :cond_3
    instance-of v4, v1, Lcu8;

    .line 222
    .line 223
    if-eqz v4, :cond_5

    .line 224
    .line 225
    invoke-virtual {v0, v9}, Lcs8;->a(Ljava/lang/Integer;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v13, v5}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    check-cast v1, Lcu8;

    .line 241
    .line 242
    iget-boolean v0, v1, Lcu8;->a:Z

    .line 243
    .line 244
    if-nez v0, :cond_4

    .line 245
    .line 246
    const-string v0, "WifiCardSystem"

    .line 247
    .line 248
    const-string v1, "setupSystemCard: Wifi disabled"

    .line 249
    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    .line 255
    .line 256
    const v0, 0x7f1305b5

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_4
    const v0, 0x7f080211

    .line 264
    .line 265
    .line 266
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    .line 268
    .line 269
    const v0, 0x7f1303cf

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_5
    instance-of v3, v1, Lfu8;

    .line 277
    .line 278
    if-eqz v3, :cond_6

    .line 279
    .line 280
    move-object v3, v1

    .line 281
    check-cast v3, Lfu8;

    .line 282
    .line 283
    iget-object v3, v3, Lfu8;->a:Ljava/util/List;

    .line 284
    .line 285
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v0, v4}, Lcs8;->a(Ljava/lang/Integer;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v13, v7}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 306
    .line 307
    .line 308
    new-instance v4, Lh71;

    .line 309
    .line 310
    invoke-static {v2, v3}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->V(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;Ljava/util/List;)Ljava/util/ArrayList;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-direct {v4, v2, v3}, Lh71;-><init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;Ljava/util/ArrayList;)V

    .line 315
    .line 316
    .line 317
    new-instance v2, Lcw;

    .line 318
    .line 319
    invoke-direct {v2, v0, v1}, Lcw;-><init>(Lcs8;Lgu8;)V

    .line 320
    .line 321
    .line 322
    iput-object v2, v4, Lh71;->g:Lqt3;

    .line 323
    .line 324
    invoke-virtual {v13, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 325
    .line 326
    .line 327
    iget-object v2, v0, Lcs8;->f:Lcom/google/android/material/button/MaterialButton;

    .line 328
    .line 329
    const v3, 0x7f130090

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 333
    .line 334
    .line 335
    new-instance v3, Lgr;

    .line 336
    .line 337
    const/4 v4, 0x5

    .line 338
    invoke-direct {v3, v4, v0, v1}, Lgr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    .line 343
    .line 344
    :goto_1
    move-object v9, v10

    .line 345
    goto :goto_2

    .line 346
    :cond_6
    invoke-static {}, Lq;->j()V

    .line 347
    .line 348
    .line 349
    :goto_2
    return-object v9

    .line 350
    :pswitch_0
    check-cast v0, Le08;

    .line 351
    .line 352
    move-object/from16 v1, p1

    .line 353
    .line 354
    check-cast v1, Ljava/lang/Long;

    .line 355
    .line 356
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 357
    .line 358
    .line 359
    move-result-wide v1

    .line 360
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Le08;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    return-object v10

    .line 368
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 369
    .line 370
    move-object/from16 v1, p1

    .line 371
    .line 372
    check-cast v1, Lvo7;

    .line 373
    .line 374
    sget v2, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 375
    .line 376
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    instance-of v2, v1, Luo7;

    .line 380
    .line 381
    if-eqz v2, :cond_a

    .line 382
    .line 383
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->e0:Lw45;

    .line 384
    .line 385
    if-nez v2, :cond_8

    .line 386
    .line 387
    new-instance v2, Lw45;

    .line 388
    .line 389
    invoke-direct {v2, v0}, Lw45;-><init>(Lio1;)V

    .line 390
    .line 391
    .line 392
    move-object v3, v1

    .line 393
    check-cast v3, Luo7;

    .line 394
    .line 395
    iget-boolean v4, v3, Luo7;->a:Z

    .line 396
    .line 397
    if-eqz v4, :cond_7

    .line 398
    .line 399
    const v4, 0x7f1301c7

    .line 400
    .line 401
    .line 402
    goto :goto_3

    .line 403
    :cond_7
    const v4, 0x7f130352

    .line 404
    .line 405
    .line 406
    :goto_3
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2, v4}, Lw45;->i(Ljava/lang/CharSequence;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 417
    .line 418
    .line 419
    iget-boolean v3, v3, Luo7;->b:Z

    .line 420
    .line 421
    invoke-virtual {v2, v3}, Lw45;->k(Z)V

    .line 422
    .line 423
    .line 424
    iput v8, v2, Lw45;->r:I

    .line 425
    .line 426
    invoke-virtual {v2, v9}, Lw45;->n(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iput-object v2, v0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->e0:Lw45;

    .line 430
    .line 431
    :cond_8
    check-cast v1, Luo7;

    .line 432
    .line 433
    iget-boolean v0, v1, Luo7;->b:Z

    .line 434
    .line 435
    invoke-virtual {v2, v0}, Lw45;->k(Z)V

    .line 436
    .line 437
    .line 438
    if-nez v0, :cond_9

    .line 439
    .line 440
    iget v0, v1, Luo7;->c:I

    .line 441
    .line 442
    invoke-virtual {v2, v0}, Lw45;->m(I)V

    .line 443
    .line 444
    .line 445
    :cond_9
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    if-nez v0, :cond_b

    .line 450
    .line 451
    invoke-virtual {v2}, Lw45;->show()V

    .line 452
    .line 453
    .line 454
    goto :goto_4

    .line 455
    :cond_a
    sget-object v2, Lto7;->a:Lto7;

    .line 456
    .line 457
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    if-eqz v1, :cond_c

    .line 462
    .line 463
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->e0:Lw45;

    .line 464
    .line 465
    invoke-static {v1}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 466
    .line 467
    .line 468
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->F(Lil0;)V

    .line 469
    .line 470
    .line 471
    :cond_b
    :goto_4
    move-object v9, v10

    .line 472
    goto :goto_5

    .line 473
    :cond_c
    invoke-static {}, Lq;->j()V

    .line 474
    .line 475
    .line 476
    :goto_5
    return-object v9

    .line 477
    :pswitch_2
    check-cast v0, Ljava/util/ArrayList;

    .line 478
    .line 479
    move-object/from16 v1, p1

    .line 480
    .line 481
    check-cast v1, Ljava/lang/String;

    .line 482
    .line 483
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    return-object v0

    .line 495
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 496
    .line 497
    move-object/from16 v1, p1

    .line 498
    .line 499
    check-cast v1, Lgs8;

    .line 500
    .line 501
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 502
    .line 503
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 507
    .line 508
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getItemId()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    iget-object v1, v1, Lgs8;->a:Lds8;

    .line 516
    .line 517
    sget-object v2, Lds8;->ACCESS_UNAVAILABLE:Lds8;

    .line 518
    .line 519
    const-wide/16 v3, 0x0

    .line 520
    .line 521
    if-ne v1, v2, :cond_d

    .line 522
    .line 523
    new-instance v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedWifiPrivilegedAccess;

    .line 524
    .line 525
    invoke-direct {v1, v3, v4, v8, v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedWifiPrivilegedAccess;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 526
    .line 527
    .line 528
    goto :goto_6

    .line 529
    :cond_d
    new-instance v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$FailedWifiDeviceRead;

    .line 530
    .line 531
    invoke-direct {v1, v3, v4, v8, v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$FailedWifiDeviceRead;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 532
    .line 533
    .line 534
    :goto_6
    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 535
    .line 536
    .line 537
    return-object v10

    .line 538
    :pswitch_4
    check-cast v0, Lm37;

    .line 539
    .line 540
    move-object/from16 v1, p1

    .line 541
    .line 542
    check-cast v1, Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0}, Lm37;->p()Lq47;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    new-instance v2, Lj47;

    .line 552
    .line 553
    const/4 v3, -0x1

    .line 554
    invoke-direct {v2, v0, v1, v3}, Lj47;-><init>(Lq47;Ljava/lang/String;I)V

    .line 555
    .line 556
    .line 557
    invoke-static {v2}, Lzn4;->c(Lbt3;)V

    .line 558
    .line 559
    .line 560
    return-object v10

    .line 561
    :pswitch_5
    check-cast v0, Lu10;

    .line 562
    .line 563
    move-object/from16 v1, p1

    .line 564
    .line 565
    check-cast v1, Lcom/google/android/gms/tasks/Task;

    .line 566
    .line 567
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 571
    .line 572
    .line 573
    move-result v2

    .line 574
    if-eqz v2, :cond_e

    .line 575
    .line 576
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 577
    .line 578
    const/4 v15, 0x4

    .line 579
    const/16 v16, 0x0

    .line 580
    .line 581
    const-string v12, "NoGmsClient"

    .line 582
    .line 583
    const-string v13, "firebaseAuthWithGoogle:success"

    .line 584
    .line 585
    const/4 v14, 0x0

    .line 586
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    sget-object v1, Len5;->a:Len5;

    .line 590
    .line 591
    goto :goto_8

    .line 592
    :cond_e
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 597
    .line 598
    if-eqz v1, :cond_f

    .line 599
    .line 600
    invoke-static {v1}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    goto :goto_7

    .line 605
    :cond_f
    move-object v2, v9

    .line 606
    :goto_7
    const-string v4, "firebaseAuthWithGoogle:failure. Exception="

    .line 607
    .line 608
    invoke-static {v4, v2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v13

    .line 612
    const/4 v15, 0x4

    .line 613
    const/16 v16, 0x0

    .line 614
    .line 615
    const-string v12, "NoGmsClient"

    .line 616
    .line 617
    const/4 v14, 0x0

    .line 618
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 619
    .line 620
    .line 621
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 622
    .line 623
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    sget-object v4, Lzn4;->a:Lzn4;

    .line 635
    .line 636
    new-instance v4, Lcv;

    .line 637
    .line 638
    const/16 v5, 0xe

    .line 639
    .line 640
    invoke-direct {v4, v5, v2, v3}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    invoke-static {v4}, Lzn4;->e(Lbt3;)V

    .line 644
    .line 645
    .line 646
    new-instance v2, Ldn5;

    .line 647
    .line 648
    if-eqz v1, :cond_10

    .line 649
    .line 650
    invoke-static {v1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v9

    .line 654
    :cond_10
    invoke-direct {v2, v9}, Ldn5;-><init>(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    move-object v1, v2

    .line 658
    :goto_8
    invoke-virtual {v0, v1}, Lu10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    return-object v10

    .line 662
    :pswitch_6
    move-object v13, v0

    .line 663
    check-cast v13, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 664
    .line 665
    move-object/from16 v0, p1

    .line 666
    .line 667
    check-cast v0, Lue5;

    .line 668
    .line 669
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 670
    .line 671
    if-eqz v0, :cond_1f

    .line 672
    .line 673
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->Y()Loi7;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    iget-object v1, v1, Loi7;->e:Lpi7;

    .line 678
    .line 679
    iget-object v2, v1, Lpi7;->n:Landroid/widget/TextView;

    .line 680
    .line 681
    iget-object v3, v1, Lpi7;->e:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 682
    .line 683
    iget-object v11, v1, Lpi7;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 684
    .line 685
    iget-object v12, v1, Lpi7;->f:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 686
    .line 687
    invoke-virtual {v12, v8}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 688
    .line 689
    .line 690
    iget-object v14, v1, Lpi7;->b:Lzx2;

    .line 691
    .line 692
    iget-object v15, v14, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 693
    .line 694
    iget-object v4, v14, Lzx2;->d:Landroid/widget/ImageView;

    .line 695
    .line 696
    const v6, 0x7f080114

    .line 697
    .line 698
    .line 699
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 700
    .line 701
    .line 702
    iget-object v4, v14, Lzx2;->e:Landroid/widget/TextView;

    .line 703
    .line 704
    iget-object v6, v14, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 705
    .line 706
    iget-object v14, v1, Lpi7;->k:Landroid/widget/RelativeLayout;

    .line 707
    .line 708
    move-object/from16 v17, v12

    .line 709
    .line 710
    iget-object v12, v1, Lpi7;->c:Landroid/widget/ImageView;

    .line 711
    .line 712
    iget-object v1, v1, Lpi7;->p:Landroid/widget/TextView;

    .line 713
    .line 714
    iget-boolean v5, v13, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->R:Z

    .line 715
    .line 716
    if-eqz v5, :cond_11

    .line 717
    .line 718
    iget-boolean v5, v13, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->S:Z

    .line 719
    .line 720
    if-nez v5, :cond_11

    .line 721
    .line 722
    iput-boolean v8, v13, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->S:Z

    .line 723
    .line 724
    const/4 v5, 0x7

    .line 725
    invoke-static {v5}, Lorg/swiftapps/swiftbackup/common/Const;->j(I)Landroid/view/animation/AlphaAnimation;

    .line 726
    .line 727
    .line 728
    move-result-object v5

    .line 729
    invoke-virtual {v2, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 730
    .line 731
    .line 732
    :cond_11
    sget-object v5, Lse5;->a:Lse5;

    .line 733
    .line 734
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v5

    .line 738
    if-eqz v5, :cond_13

    .line 739
    .line 740
    invoke-static {v13, v2, v9}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->a0(Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 744
    .line 745
    .line 746
    const/4 v2, 0x4

    .line 747
    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 748
    .line 749
    .line 750
    :cond_12
    :goto_9
    move/from16 v20, v8

    .line 751
    .line 752
    goto/16 :goto_e

    .line 753
    .line 754
    :cond_13
    instance-of v5, v0, Lpe5;

    .line 755
    .line 756
    if-eqz v5, :cond_14

    .line 757
    .line 758
    move-object v4, v0

    .line 759
    check-cast v4, Lpe5;

    .line 760
    .line 761
    iget-object v4, v4, Lpe5;->a:Ljava/util/ArrayList;

    .line 762
    .line 763
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 764
    .line 765
    .line 766
    move-result v4

    .line 767
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 768
    .line 769
    .line 770
    move-result-object v4

    .line 771
    invoke-static {v13, v2, v4}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->a0(Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 772
    .line 773
    .line 774
    const/16 v2, 0x8

    .line 775
    .line 776
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 783
    .line 784
    .line 785
    const/4 v2, 0x2

    .line 786
    new-array v3, v2, [Landroid/view/View;

    .line 787
    .line 788
    aput-object v17, v3, v7

    .line 789
    .line 790
    aput-object v14, v3, v8

    .line 791
    .line 792
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v3

    .line 796
    check-cast v3, [Landroid/view/View;

    .line 797
    .line 798
    array-length v2, v3

    .line 799
    move v4, v7

    .line 800
    :goto_a
    if-ge v4, v2, :cond_12

    .line 801
    .line 802
    aget-object v5, v3, v4

    .line 803
    .line 804
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 805
    .line 806
    .line 807
    add-int/lit8 v4, v4, 0x1

    .line 808
    .line 809
    goto :goto_a

    .line 810
    :cond_14
    sget-object v5, Lre5;->a:Lre5;

    .line 811
    .line 812
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    move-result v5

    .line 816
    if-eqz v5, :cond_16

    .line 817
    .line 818
    invoke-static {v13, v2, v9}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->a0(Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 819
    .line 820
    .line 821
    const/16 v5, 0x8

    .line 822
    .line 823
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v15, v7}, Landroid/view/View;->setVisibility(I)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 833
    .line 834
    .line 835
    const/4 v2, 0x2

    .line 836
    new-array v3, v2, [Landroid/view/View;

    .line 837
    .line 838
    aput-object v17, v3, v7

    .line 839
    .line 840
    aput-object v14, v3, v8

    .line 841
    .line 842
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    check-cast v3, [Landroid/view/View;

    .line 847
    .line 848
    array-length v2, v3

    .line 849
    move v6, v7

    .line 850
    :goto_b
    if-ge v6, v2, :cond_15

    .line 851
    .line 852
    aget-object v9, v3, v6

    .line 853
    .line 854
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 855
    .line 856
    .line 857
    add-int/lit8 v6, v6, 0x1

    .line 858
    .line 859
    goto :goto_b

    .line 860
    :cond_15
    const v2, 0x7f1303bf

    .line 861
    .line 862
    .line 863
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 864
    .line 865
    .line 866
    goto :goto_9

    .line 867
    :cond_16
    move/from16 v20, v8

    .line 868
    .line 869
    const/16 v5, 0x8

    .line 870
    .line 871
    sget-object v8, Lte5;->a:Lte5;

    .line 872
    .line 873
    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    move-result v8

    .line 877
    if-eqz v8, :cond_18

    .line 878
    .line 879
    invoke-static {v13, v2, v9}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->a0(Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v15, v7}, Landroid/view/View;->setVisibility(I)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 892
    .line 893
    .line 894
    const/4 v2, 0x2

    .line 895
    new-array v3, v2, [Landroid/view/View;

    .line 896
    .line 897
    aput-object v17, v3, v7

    .line 898
    .line 899
    aput-object v14, v3, v20

    .line 900
    .line 901
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v3

    .line 905
    check-cast v3, [Landroid/view/View;

    .line 906
    .line 907
    array-length v2, v3

    .line 908
    move v5, v7

    .line 909
    :goto_c
    if-ge v5, v2, :cond_17

    .line 910
    .line 911
    aget-object v8, v3, v5

    .line 912
    .line 913
    const/16 v9, 0x8

    .line 914
    .line 915
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 916
    .line 917
    .line 918
    add-int/lit8 v5, v5, 0x1

    .line 919
    .line 920
    goto :goto_c

    .line 921
    :cond_17
    const v2, 0x7f1303c8

    .line 922
    .line 923
    .line 924
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 925
    .line 926
    .line 927
    const v2, 0x7f13049a

    .line 928
    .line 929
    .line 930
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 931
    .line 932
    .line 933
    new-instance v2, Ldj;

    .line 934
    .line 935
    const/16 v3, 0xa

    .line 936
    .line 937
    invoke-direct {v2, v13, v3}, Ldj;-><init>(Ljava/lang/Object;I)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    .line 942
    .line 943
    goto :goto_e

    .line 944
    :cond_18
    sget-object v5, Lqe5;->a:Lqe5;

    .line 945
    .line 946
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 947
    .line 948
    .line 949
    move-result v5

    .line 950
    if-eqz v5, :cond_1e

    .line 951
    .line 952
    invoke-static {v13, v2, v9}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->a0(Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 953
    .line 954
    .line 955
    const/16 v2, 0x8

    .line 956
    .line 957
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 958
    .line 959
    .line 960
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {v15, v7}, Landroid/view/View;->setVisibility(I)V

    .line 964
    .line 965
    .line 966
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 967
    .line 968
    .line 969
    const/4 v2, 0x2

    .line 970
    new-array v3, v2, [Landroid/view/View;

    .line 971
    .line 972
    aput-object v17, v3, v7

    .line 973
    .line 974
    aput-object v14, v3, v20

    .line 975
    .line 976
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v3

    .line 980
    check-cast v3, [Landroid/view/View;

    .line 981
    .line 982
    array-length v2, v3

    .line 983
    move v5, v7

    .line 984
    :goto_d
    if-ge v5, v2, :cond_19

    .line 985
    .line 986
    aget-object v8, v3, v5

    .line 987
    .line 988
    const/16 v9, 0x8

    .line 989
    .line 990
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 991
    .line 992
    .line 993
    add-int/lit8 v5, v5, 0x1

    .line 994
    .line 995
    goto :goto_d

    .line 996
    :cond_19
    const v2, 0x7f13016d

    .line 997
    .line 998
    .line 999
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1000
    .line 1001
    .line 1002
    const v2, 0x7f1301b4

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1006
    .line 1007
    .line 1008
    new-instance v2, Lhs;

    .line 1009
    .line 1010
    const/16 v3, 0x9

    .line 1011
    .line 1012
    invoke-direct {v2, v13, v3}, Lhs;-><init>(Ljava/lang/Object;I)V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1016
    .line 1017
    .line 1018
    :goto_e
    instance-of v2, v0, Lpe5;

    .line 1019
    .line 1020
    if-nez v2, :cond_1a

    .line 1021
    .line 1022
    goto/16 :goto_11

    .line 1023
    .line 1024
    :cond_1a
    check-cast v0, Lpe5;

    .line 1025
    .line 1026
    iget-object v0, v0, Lpe5;->a:Ljava/util/ArrayList;

    .line 1027
    .line 1028
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1029
    .line 1030
    .line 1031
    move-result v2

    .line 1032
    const/4 v3, 0x3

    .line 1033
    if-le v2, v3, :cond_1b

    .line 1034
    .line 1035
    move/from16 v8, v20

    .line 1036
    .line 1037
    goto :goto_f

    .line 1038
    :cond_1b
    move v8, v7

    .line 1039
    :goto_f
    if-eqz v8, :cond_1c

    .line 1040
    .line 1041
    invoke-static {v0, v3}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v2

    .line 1045
    new-instance v4, Ljava/util/ArrayList;

    .line 1046
    .line 1047
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1048
    .line 1049
    .line 1050
    move-object/from16 v21, v4

    .line 1051
    .line 1052
    goto :goto_10

    .line 1053
    :cond_1c
    move-object/from16 v21, v0

    .line 1054
    .line 1055
    :goto_10
    new-instance v2, Lee5;

    .line 1056
    .line 1057
    new-instance v11, Ljp3;

    .line 1058
    .line 1059
    move-object/from16 v4, v17

    .line 1060
    .line 1061
    const/16 v17, 0x0

    .line 1062
    .line 1063
    const/16 v18, 0x1

    .line 1064
    .line 1065
    move-object v5, v12

    .line 1066
    const/4 v12, 0x2

    .line 1067
    move-object v6, v14

    .line 1068
    const-class v14, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 1069
    .line 1070
    const-string v15, "onBackupItemMenuClick"

    .line 1071
    .line 1072
    const-string v16, "onBackupItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/model/provider/MessagesBackupItem;)V"

    .line 1073
    .line 1074
    invoke-direct/range {v11 .. v18}, Ljp3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1075
    .line 1076
    .line 1077
    invoke-direct {v2, v11}, Lee5;-><init>(Lqt3;)V

    .line 1078
    .line 1079
    .line 1080
    new-instance v20, Lfm7;

    .line 1081
    .line 1082
    const/16 v24, 0x0

    .line 1083
    .line 1084
    const/16 v25, 0x1e

    .line 1085
    .line 1086
    const/16 v22, 0x0

    .line 1087
    .line 1088
    const/16 v23, 0x0

    .line 1089
    .line 1090
    invoke-direct/range {v20 .. v25}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 1091
    .line 1092
    .line 1093
    move-object/from16 v9, v20

    .line 1094
    .line 1095
    invoke-virtual {v2, v9, v7}, Lgm7;->w(Lfm7;Z)V

    .line 1096
    .line 1097
    .line 1098
    new-instance v7, Lg30;

    .line 1099
    .line 1100
    const/4 v9, 0x2

    .line 1101
    invoke-direct {v7, v13, v9}, Lg30;-><init>(Ljava/lang/Object;I)V

    .line 1102
    .line 1103
    .line 1104
    iput-object v7, v2, Lgm7;->j:Lqt3;

    .line 1105
    .line 1106
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 1107
    .line 1108
    .line 1109
    const-class v2, Landroid/widget/TextView;

    .line 1110
    .line 1111
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v2

    .line 1115
    invoke-virtual {v13, v2}, Lil0;->y([Ljava/lang/Class;)V

    .line 1116
    .line 1117
    .line 1118
    if-eqz v8, :cond_1d

    .line 1119
    .line 1120
    const v2, 0x7f0800c7

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1124
    .line 1125
    .line 1126
    invoke-static {v13}, Lsz8;->A(Landroid/content/Context;)I

    .line 1127
    .line 1128
    .line 1129
    move-result v2

    .line 1130
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v2

    .line 1134
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1138
    .line 1139
    .line 1140
    move-result v2

    .line 1141
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    .line 1142
    .line 1143
    .line 1144
    move-result v3

    .line 1145
    sub-int/2addr v2, v3

    .line 1146
    const-string v3, "+"

    .line 1147
    .line 1148
    invoke-static {v2, v3}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v2

    .line 1152
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v2

    .line 1156
    const v3, 0x7f130411

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v13, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v2

    .line 1163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    .line 1165
    .line 1166
    new-instance v1, Lqi;

    .line 1167
    .line 1168
    const/4 v2, 0x2

    .line 1169
    invoke-direct {v1, v2, v13, v0}, Lqi;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1173
    .line 1174
    .line 1175
    goto :goto_11

    .line 1176
    :cond_1d
    const v2, 0x7f080128

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1180
    .line 1181
    .line 1182
    invoke-static {v13}, Lsz8;->r(Landroid/content/Context;)I

    .line 1183
    .line 1184
    .line 1185
    move-result v2

    .line 1186
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v2

    .line 1190
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1191
    .line 1192
    .line 1193
    const v2, 0x7f1301e2

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1197
    .line 1198
    .line 1199
    new-instance v1, Ler;

    .line 1200
    .line 1201
    invoke-direct {v1, v3, v13, v0}, Ler;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1205
    .line 1206
    .line 1207
    goto :goto_11

    .line 1208
    :cond_1e
    invoke-static {}, Lq;->j()V

    .line 1209
    .line 1210
    .line 1211
    goto :goto_12

    .line 1212
    :cond_1f
    :goto_11
    move-object v9, v10

    .line 1213
    :goto_12
    return-object v9

    .line 1214
    :pswitch_7
    move-object v1, v0

    .line 1215
    check-cast v1, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 1216
    .line 1217
    move-object/from16 v2, p1

    .line 1218
    .line 1219
    check-cast v2, Lry5;

    .line 1220
    .line 1221
    sget v0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->O:I

    .line 1222
    .line 1223
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1224
    .line 1225
    .line 1226
    new-instance v3, Lgp3;

    .line 1227
    .line 1228
    invoke-direct {v3, v1, v2}, Lgp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1229
    .line 1230
    .line 1231
    sget-object v0, Lzn4;->a:Lzn4;

    .line 1232
    .line 1233
    new-instance v0, Lpo3;

    .line 1234
    .line 1235
    const/4 v5, 0x1

    .line 1236
    const/4 v4, 0x0

    .line 1237
    invoke-direct/range {v0 .. v5}, Lpo3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 1238
    .line 1239
    .line 1240
    invoke-static {v4, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 1241
    .line 1242
    .line 1243
    return-object v10

    .line 1244
    :pswitch_8
    move/from16 v20, v8

    .line 1245
    .line 1246
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 1247
    .line 1248
    move-object/from16 v1, p1

    .line 1249
    .line 1250
    check-cast v1, Ljava/lang/Boolean;

    .line 1251
    .line 1252
    sget v2, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 1253
    .line 1254
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1255
    .line 1256
    .line 1257
    move-result v1

    .line 1258
    if-eqz v1, :cond_20

    .line 1259
    .line 1260
    move/from16 v1, v20

    .line 1261
    .line 1262
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->Y(Z)V

    .line 1263
    .line 1264
    .line 1265
    :cond_20
    return-object v10

    .line 1266
    :pswitch_9
    check-cast v0, Lgz3;

    .line 1267
    .line 1268
    move-object/from16 v1, p1

    .line 1269
    .line 1270
    check-cast v1, Lcom/google/android/gms/tasks/Task;

    .line 1271
    .line 1272
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 1276
    .line 1277
    .line 1278
    move-result v2

    .line 1279
    if-eqz v2, :cond_21

    .line 1280
    .line 1281
    iget-object v1, v0, La55;->b:Ljava/lang/String;

    .line 1282
    .line 1283
    const-string v2, "firebaseAuthWithGoogle:success"

    .line 1284
    .line 1285
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    .line 1287
    .line 1288
    iget-object v0, v0, Lgz3;->g:Lix6;

    .line 1289
    .line 1290
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1291
    .line 1292
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 1293
    .line 1294
    .line 1295
    goto :goto_13

    .line 1296
    :cond_21
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v1

    .line 1300
    iget-object v2, v0, La55;->b:Ljava/lang/String;

    .line 1301
    .line 1302
    const-string v4, "signInWithCredential:failure"

    .line 1303
    .line 1304
    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1305
    .line 1306
    .line 1307
    iget-object v0, v0, Lgz3;->i:Lix6;

    .line 1308
    .line 1309
    if-eqz v1, :cond_22

    .line 1310
    .line 1311
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v1

    .line 1315
    if-nez v1, :cond_23

    .line 1316
    .line 1317
    :cond_22
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1318
    .line 1319
    invoke-static {v3}, Ldj7;->g(I)Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v1

    .line 1323
    :cond_23
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 1324
    .line 1325
    .line 1326
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1327
    .line 1328
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v0

    .line 1332
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v1

    .line 1336
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1337
    .line 1338
    .line 1339
    sget-object v2, Lzn4;->a:Lzn4;

    .line 1340
    .line 1341
    invoke-static {v0, v1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 1342
    .line 1343
    .line 1344
    :goto_13
    return-object v10

    .line 1345
    :pswitch_a
    check-cast v0, Ltp3;

    .line 1346
    .line 1347
    move-object/from16 v1, p1

    .line 1348
    .line 1349
    check-cast v1, Ljava/lang/String;

    .line 1350
    .line 1351
    iget-object v0, v0, Ltp3;->k:Landroid/widget/TextView;

    .line 1352
    .line 1353
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    .line 1355
    .line 1356
    return-object v10

    .line 1357
    :pswitch_b
    check-cast v0, Lgm3;

    .line 1358
    .line 1359
    move-object/from16 v1, p1

    .line 1360
    .line 1361
    check-cast v1, Ljava/lang/Long;

    .line 1362
    .line 1363
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 1364
    .line 1365
    .line 1366
    move-result-wide v1

    .line 1367
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v1

    .line 1371
    invoke-virtual {v0, v1}, Lgm3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    .line 1373
    .line 1374
    return-object v10

    .line 1375
    :pswitch_c
    check-cast v0, Lrj2;

    .line 1376
    .line 1377
    move-object/from16 v1, p1

    .line 1378
    .line 1379
    check-cast v1, Landroid/view/View;

    .line 1380
    .line 1381
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1382
    .line 1383
    .line 1384
    iget-object v0, v0, Lrj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 1385
    .line 1386
    sget-object v2, Liu;->MEDIA:Liu;

    .line 1387
    .line 1388
    invoke-virtual {v0, v1, v2}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->d0(Landroid/view/View;Liu;)V

    .line 1389
    .line 1390
    .line 1391
    return-object v10

    .line 1392
    :pswitch_d
    check-cast v0, Lx92;

    .line 1393
    .line 1394
    move-object/from16 v1, p1

    .line 1395
    .line 1396
    check-cast v1, Ljava/util/List;

    .line 1397
    .line 1398
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1399
    .line 1400
    .line 1401
    new-instance v12, Ljava/util/ArrayList;

    .line 1402
    .line 1403
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1404
    .line 1405
    .line 1406
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v1

    .line 1410
    :cond_24
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1411
    .line 1412
    .line 1413
    move-result v2

    .line 1414
    if-eqz v2, :cond_25

    .line 1415
    .line 1416
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v2

    .line 1420
    move-object v3, v2

    .line 1421
    check-cast v3, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 1422
    .line 1423
    invoke-virtual {v3, v7}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->shouldShowToUser(Z)Z

    .line 1424
    .line 1425
    .line 1426
    move-result v3

    .line 1427
    if-eqz v3, :cond_24

    .line 1428
    .line 1429
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    .line 1431
    .line 1432
    goto :goto_14

    .line 1433
    :cond_25
    iget-object v1, v0, Lrl0;->b:Ljk8;

    .line 1434
    .line 1435
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1436
    .line 1437
    .line 1438
    check-cast v1, Ly92;

    .line 1439
    .line 1440
    iget-object v1, v1, Ly92;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 1441
    .line 1442
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1443
    .line 1444
    .line 1445
    move-result v2

    .line 1446
    const/4 v3, 0x1

    .line 1447
    xor-int/2addr v2, v3

    .line 1448
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1449
    .line 1450
    .line 1451
    iget-object v0, v0, Lx92;->k:Lgv7;

    .line 1452
    .line 1453
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v0

    .line 1457
    check-cast v0, Lqo5;

    .line 1458
    .line 1459
    new-instance v11, Lfm7;

    .line 1460
    .line 1461
    const/4 v15, 0x0

    .line 1462
    const/16 v16, 0x1e

    .line 1463
    .line 1464
    const/4 v13, 0x0

    .line 1465
    const/4 v14, 0x0

    .line 1466
    invoke-direct/range {v11 .. v16}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 1467
    .line 1468
    .line 1469
    invoke-virtual {v0, v11, v3}, Lgm7;->w(Lfm7;Z)V

    .line 1470
    .line 1471
    .line 1472
    return-object v10

    .line 1473
    :pswitch_e
    move v3, v8

    .line 1474
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/list/a;

    .line 1475
    .line 1476
    move-object/from16 v1, p1

    .line 1477
    .line 1478
    check-cast v1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 1479
    .line 1480
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/appconfigs/list/a;->l(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;)V

    .line 1481
    .line 1482
    .line 1483
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/appconfigs/list/a;->g:Lex6;

    .line 1484
    .line 1485
    if-eqz v1, :cond_26

    .line 1486
    .line 1487
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;->hasConfigs()Z

    .line 1488
    .line 1489
    .line 1490
    move-result v1

    .line 1491
    if-ne v1, v3, :cond_26

    .line 1492
    .line 1493
    sget-object v1, Lym7;->DATA_RECEIVED:Lym7;

    .line 1494
    .line 1495
    goto :goto_15

    .line 1496
    :cond_26
    sget-object v1, Lym7;->DATA_EMPTY:Lym7;

    .line 1497
    .line 1498
    :goto_15
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 1499
    .line 1500
    .line 1501
    return-object v10

    .line 1502
    :pswitch_f
    check-cast v0, Lsj1;

    .line 1503
    .line 1504
    move-object/from16 v1, p1

    .line 1505
    .line 1506
    check-cast v1, Ljava/lang/Integer;

    .line 1507
    .line 1508
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1509
    .line 1510
    .line 1511
    move-result v1

    .line 1512
    sget-object v3, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 1513
    .line 1514
    if-eqz v3, :cond_27

    .line 1515
    .line 1516
    const-string v2, "nextcloud_chunk_size"

    .line 1517
    .line 1518
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v1

    .line 1522
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1523
    .line 1524
    .line 1525
    invoke-virtual {v0}, Lsj1;->u()V

    .line 1526
    .line 1527
    .line 1528
    return-object v10

    .line 1529
    :cond_27
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 1530
    .line 1531
    .line 1532
    throw v9

    .line 1533
    :pswitch_10
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 1534
    .line 1535
    move-object/from16 v1, p1

    .line 1536
    .line 1537
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 1538
    .line 1539
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1543
    .line 1544
    .line 1545
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1546
    .line 1547
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v0

    .line 1551
    const v2, 0x7f13017b

    .line 1552
    .line 1553
    .line 1554
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v5

    .line 1558
    const/4 v7, 0x0

    .line 1559
    const/16 v8, 0x19ff

    .line 1560
    .line 1561
    const/4 v2, 0x0

    .line 1562
    const/4 v3, 0x0

    .line 1563
    sget-object v4, Lsv2;->a:Lsv2;

    .line 1564
    .line 1565
    const/4 v6, 0x0

    .line 1566
    invoke-static/range {v1 .. v8}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a(Lorg/swiftapps/swiftbackup/cloud/orphans/b;Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;III)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v0

    .line 1570
    return-object v0

    .line 1571
    :pswitch_11
    check-cast v0, Landroid/content/Context;

    .line 1572
    .line 1573
    move-object/from16 v1, p1

    .line 1574
    .line 1575
    check-cast v1, Loy;

    .line 1576
    .line 1577
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1578
    .line 1579
    .line 1580
    const/4 v2, 0x2

    .line 1581
    invoke-static {v1, v0, v9, v2, v9}, Loy;->title$default(Loy;Landroid/content/Context;Lji;ILjava/lang/Object;)Ljava/lang/String;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v0

    .line 1585
    return-object v0

    .line 1586
    :pswitch_12
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/a;

    .line 1587
    .line 1588
    move-object/from16 v1, p1

    .line 1589
    .line 1590
    check-cast v1, Lxp1;

    .line 1591
    .line 1592
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {v1}, Lxp1;->getLevel()I

    .line 1596
    .line 1597
    .line 1598
    move-result v1

    .line 1599
    sget-object v3, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 1600
    .line 1601
    if-eqz v3, :cond_28

    .line 1602
    .line 1603
    const-string v2, "compression_level_app_data"

    .line 1604
    .line 1605
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v1

    .line 1609
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1610
    .line 1611
    .line 1612
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/a;->u()V

    .line 1613
    .line 1614
    .line 1615
    return-object v10

    .line 1616
    :cond_28
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 1617
    .line 1618
    .line 1619
    throw v9

    .line 1620
    nop

    .line 1621
    :pswitch_data_0
    .packed-switch 0x0
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
