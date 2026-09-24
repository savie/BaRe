.class public final synthetic Loh1;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p7, p0, Loh1;->a:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Loh1;->a:I

    .line 4
    .line 5
    const/16 v2, 0xe

    .line 6
    .line 7
    const v3, 0x7f1300f1

    .line 8
    .line 9
    .line 10
    const v4, 0x7f140160

    .line 11
    .line 12
    .line 13
    const/4 v5, -0x1

    .line 14
    const/16 v6, 0x8

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x1

    .line 18
    const/4 v9, 0x0

    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p1

    .line 23
    .line 24
    check-cast v1, Ljava/util/List;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v11, v0

    .line 32
    check-cast v11, Lls8;

    .line 33
    .line 34
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lll1;

    .line 43
    .line 44
    invoke-direct {v2, v1}, Lll1;-><init>(Ljava/lang/Iterable;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lw20;

    .line 48
    .line 49
    const/16 v3, 0x18

    .line 50
    .line 51
    invoke-direct {v1, v0, v3}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lme3;

    .line 55
    .line 56
    invoke-direct {v0, v2, v8, v1}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 57
    .line 58
    .line 59
    new-instance v9, Lk00;

    .line 60
    .line 61
    const-class v12, Lls8;

    .line 62
    .line 63
    const-string v13, "mapConfiguration"

    .line 64
    .line 65
    const-string v14, "mapConfiguration(Landroid/net/wifi/WifiConfiguration;)Lorg/swiftapps/swiftbackup/model/WifiItem;"

    .line 66
    .line 67
    const/4 v15, 0x0

    .line 68
    const/16 v16, 0x5

    .line 69
    .line 70
    const/4 v10, 0x1

    .line 71
    invoke-direct/range {v9 .. v16}, Lk00;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lq98;

    .line 75
    .line 76
    invoke-direct {v1, v0, v9}, Lq98;-><init>(Lf77;Lmt3;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v0, Ljc1;

    .line 85
    .line 86
    invoke-direct {v0, v6}, Ljc1;-><init>(I)V

    .line 87
    .line 88
    .line 89
    new-instance v2, Ll77;

    .line 90
    .line 91
    invoke-direct {v2, v1, v0}, Ll77;-><init>(Lf77;Ljava/util/Comparator;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Lh77;->C0(Lf77;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0

    .line 99
    :pswitch_0
    move-object/from16 v1, p1

    .line 100
    .line 101
    check-cast v1, Lrq0;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 109
    .line 110
    sget v2, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    sget-object v2, Lsv2;->a:Lsv2;

    .line 116
    .line 117
    instance-of v3, v1, Lmq0;

    .line 118
    .line 119
    if-nez v3, :cond_1

    .line 120
    .line 121
    instance-of v3, v1, Loq0;

    .line 122
    .line 123
    if-eqz v3, :cond_0

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->S:Lwa;

    .line 127
    .line 128
    invoke-static {v3}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    :goto_0
    sget-object v3, Lpq0;->a:Lpq0;

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_2

    .line 138
    .line 139
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->R()Lc56;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iget-object v1, v1, Lc56;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 144
    .line 145
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->R()Lc56;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iget-object v1, v1, Lc56;->f:Landroid/widget/FrameLayout;

    .line 153
    .line 154
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->O()Landroid/widget/ProgressBar;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->P()Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->N()Lcom/google/android/material/button/MaterialButton;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_8

    .line 179
    .line 180
    :cond_2
    sget-object v3, Lmq0;->a:Lmq0;

    .line 181
    .line 182
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_3

    .line 187
    .line 188
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->R()Lc56;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iget-object v1, v1, Lc56;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 193
    .line 194
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->R()Lc56;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iget-object v1, v1, Lc56;->f:Landroid/widget/FrameLayout;

    .line 202
    .line 203
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->O()Landroid/widget/ProgressBar;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->P()Landroidx/recyclerview/widget/RecyclerView;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->N()Lcom/google/android/material/button/MaterialButton;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    const v1, 0x7f1300c6

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->S(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_8

    .line 241
    .line 242
    :cond_3
    instance-of v3, v1, Loq0;

    .line 243
    .line 244
    if-eqz v3, :cond_4

    .line 245
    .line 246
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->R()Lc56;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    iget-object v2, v2, Lc56;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 251
    .line 252
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->R()Lc56;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    iget-object v2, v2, Lc56;->f:Landroid/widget/FrameLayout;

    .line 260
    .line 261
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->O()Landroid/widget/ProgressBar;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->P()Landroidx/recyclerview/widget/RecyclerView;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->N()Lcom/google/android/material/button/MaterialButton;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    const v2, 0x7f13054a

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    check-cast v1, Loq0;

    .line 296
    .line 297
    iget-object v1, v1, Loq0;->a:Ljava/lang/String;

    .line 298
    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v2, "\n\nMessage:\n"

    .line 308
    .line 309
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->S(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_8

    .line 323
    .line 324
    :cond_4
    instance-of v3, v1, Lnq0;

    .line 325
    .line 326
    if-eqz v3, :cond_14

    .line 327
    .line 328
    iget-boolean v3, v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->T:Z

    .line 329
    .line 330
    if-eqz v3, :cond_5

    .line 331
    .line 332
    move-object v3, v1

    .line 333
    check-cast v3, Lnq0;

    .line 334
    .line 335
    iget-boolean v3, v3, Lnq0;->b:Z

    .line 336
    .line 337
    if-eqz v3, :cond_5

    .line 338
    .line 339
    move v7, v8

    .line 340
    :cond_5
    iput-boolean v7, v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->T:Z

    .line 341
    .line 342
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->O()Landroid/widget/ProgressBar;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 347
    .line 348
    .line 349
    check-cast v1, Lnq0;

    .line 350
    .line 351
    iget-boolean v3, v1, Lnq0;->b:Z

    .line 352
    .line 353
    invoke-virtual {v0, v3}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->U(Z)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->Q()Lbb4;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    iget-object v4, v4, Lgm7;->e:Lfm7;

    .line 361
    .line 362
    iget-object v4, v4, Lfm7;->b:Ljava/util/Set;

    .line 363
    .line 364
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->Q()Lbb4;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    iget-object v1, v1, Lnq0;->a:Lfm7;

    .line 369
    .line 370
    invoke-virtual {v5, v1, v8}, Lgm7;->w(Lfm7;Z)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->Q()Lbb4;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    iget-object v1, v1, Lgm7;->e:Lfm7;

    .line 378
    .line 379
    iget-object v1, v1, Lfm7;->a:Ljava/util/List;

    .line 380
    .line 381
    new-instance v5, Ljava/util/ArrayList;

    .line 382
    .line 383
    const/16 v6, 0xa

    .line 384
    .line 385
    invoke-static {v1, v6}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 386
    .line 387
    .line 388
    move-result v6

    .line 389
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 390
    .line 391
    .line 392
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 397
    .line 398
    .line 399
    move-result v6

    .line 400
    if-eqz v6, :cond_6

    .line 401
    .line 402
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    check-cast v6, Lxa4;

    .line 407
    .line 408
    invoke-virtual {v6}, Lxa4;->getItemId()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    goto :goto_1

    .line 416
    :cond_6
    invoke-static {v5}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    new-instance v5, Ljava/util/ArrayList;

    .line 421
    .line 422
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .line 424
    .line 425
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    if-eqz v6, :cond_8

    .line 434
    .line 435
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    move-object v7, v6

    .line 440
    check-cast v7, Ljava/lang/String;

    .line 441
    .line 442
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v7

    .line 446
    if-eqz v7, :cond_7

    .line 447
    .line 448
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    goto :goto_2

    .line 452
    :cond_8
    invoke-static {v5}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    iget-object v5, v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->U:Ljava/lang/String;

    .line 457
    .line 458
    if-eqz v5, :cond_a

    .line 459
    .line 460
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    if-eqz v1, :cond_9

    .line 465
    .line 466
    goto :goto_3

    .line 467
    :cond_9
    move-object v5, v9

    .line 468
    :goto_3
    if-eqz v5, :cond_a

    .line 469
    .line 470
    invoke-static {v5}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    goto :goto_4

    .line 475
    :cond_a
    move-object v1, v9

    .line 476
    :goto_4
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->Q()Lbb4;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    iget-object v5, v5, Lgm7;->e:Lfm7;

    .line 481
    .line 482
    iget-object v5, v5, Lfm7;->a:Ljava/util/List;

    .line 483
    .line 484
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 489
    .line 490
    .line 491
    move-result v6

    .line 492
    if-eqz v6, :cond_c

    .line 493
    .line 494
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v6

    .line 498
    move-object v7, v6

    .line 499
    check-cast v7, Lxa4;

    .line 500
    .line 501
    invoke-virtual {v7}, Lxa4;->isPurchased()Z

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    if-eqz v7, :cond_b

    .line 506
    .line 507
    goto :goto_5

    .line 508
    :cond_c
    move-object v6, v9

    .line 509
    :goto_5
    check-cast v6, Lxa4;

    .line 510
    .line 511
    if-eqz v6, :cond_d

    .line 512
    .line 513
    invoke-virtual {v6}, Lxa4;->getItemId()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    if-eqz v5, :cond_d

    .line 518
    .line 519
    invoke-static {v5}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    goto :goto_6

    .line 524
    :cond_d
    move-object v5, v9

    .line 525
    :goto_6
    if-eqz v3, :cond_e

    .line 526
    .line 527
    iget-boolean v6, v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->T:Z

    .line 528
    .line 529
    if-nez v6, :cond_e

    .line 530
    .line 531
    if-nez v5, :cond_10

    .line 532
    .line 533
    goto :goto_7

    .line 534
    :cond_e
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 535
    .line 536
    .line 537
    move-result v6

    .line 538
    if-nez v6, :cond_f

    .line 539
    .line 540
    move-object v2, v4

    .line 541
    goto :goto_7

    .line 542
    :cond_f
    if-nez v1, :cond_12

    .line 543
    .line 544
    if-eqz v3, :cond_11

    .line 545
    .line 546
    if-nez v5, :cond_10

    .line 547
    .line 548
    goto :goto_7

    .line 549
    :cond_10
    move-object v2, v5

    .line 550
    goto :goto_7

    .line 551
    :cond_11
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->Q()Lbb4;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-virtual {v1}, Lbb4;->y()Lxa4;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    if-eqz v1, :cond_13

    .line 560
    .line 561
    invoke-virtual {v1}, Lxa4;->getItemId()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    if-eqz v1, :cond_13

    .line 566
    .line 567
    invoke-static {v1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    goto :goto_7

    .line 572
    :cond_12
    move-object v2, v1

    .line 573
    :cond_13
    :goto_7
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->Q()Lbb4;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-virtual {v1, v2}, Lgm7;->t(Ljava/util/Set;)V

    .line 578
    .line 579
    .line 580
    iput-object v9, v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->U:Ljava/lang/String;

    .line 581
    .line 582
    invoke-virtual {v0, v3}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->T(Z)V

    .line 583
    .line 584
    .line 585
    goto :goto_8

    .line 586
    :cond_14
    instance-of v2, v1, Lqq0;

    .line 587
    .line 588
    if-eqz v2, :cond_16

    .line 589
    .line 590
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->R()Lc56;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    iget-object v2, v2, Lc56;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 595
    .line 596
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->R()Lc56;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    iget-object v2, v2, Lc56;->f:Landroid/widget/FrameLayout;

    .line 604
    .line 605
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->O()Landroid/widget/ProgressBar;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->N()Lcom/google/android/material/button/MaterialButton;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 620
    .line 621
    .line 622
    check-cast v1, Lqq0;

    .line 623
    .line 624
    iget-boolean v1, v1, Lqq0;->a:Z

    .line 625
    .line 626
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->U(Z)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->P()Landroidx/recyclerview/widget/RecyclerView;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 634
    .line 635
    .line 636
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->R:Lgv7;

    .line 637
    .line 638
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    check-cast v1, Ld56;

    .line 643
    .line 644
    iget-object v2, v1, Ld56;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 645
    .line 646
    sget-object v3, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 647
    .line 648
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 649
    .line 650
    .line 651
    move-result v3

    .line 652
    xor-int/2addr v3, v8

    .line 653
    invoke-static {v2, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 654
    .line 655
    .line 656
    iget-object v2, v1, Ld56;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 657
    .line 658
    invoke-static {v2}, Lsz8;->I(Landroid/view/View;)Z

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    if-eqz v2, :cond_15

    .line 663
    .line 664
    const-string v2, "You are using Swift Backup on ROM without built-in Google apps.\n\nTo use premium on this ROM:\n\n1. Purchase Swift Backup\'s \'Lifetime\' plan using a supported ROM with working Google Play Store.\n\n2. Share the purchasing Google account email id with us at support@swiftapps.org and we\'ll activate premium for that account within 24 hrs.\n\nIMPORTANT:\n- On any ROM without Google apps, you can only use premium if you sign-in in Swift Backup with the Google account with which you purchased the \'Lifetime\' plan.\n- Make sure you purchase the \'Lifetime\' plan using the Google account you want to use in Swift Backup."

    .line 665
    .line 666
    iget-object v1, v1, Ld56;->b:Landroid/widget/TextView;

    .line 667
    .line 668
    new-instance v3, Lf75;

    .line 669
    .line 670
    const/16 v4, 0x3e

    .line 671
    .line 672
    invoke-direct {v3, v0, v4}, Lf75;-><init>(Lk28;I)V

    .line 673
    .line 674
    .line 675
    iget-object v0, v3, Lf75;->e:Lbp0;

    .line 676
    .line 677
    invoke-virtual {v0, v2}, Lbp0;->e(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    .line 683
    .line 684
    :cond_15
    :goto_8
    sget-object v9, Lbe8;->a:Lbe8;

    .line 685
    .line 686
    goto :goto_9

    .line 687
    :cond_16
    invoke-static {}, Lq;->j()V

    .line 688
    .line 689
    .line 690
    :goto_9
    return-object v9

    .line 691
    :pswitch_1
    move-object/from16 v1, p1

    .line 692
    .line 693
    check-cast v1, Ljava/lang/Throwable;

    .line 694
    .line 695
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 696
    .line 697
    check-cast v0, Lsh4;

    .line 698
    .line 699
    invoke-virtual {v0, v1}, Lsh4;->q(Ljava/lang/Throwable;)V

    .line 700
    .line 701
    .line 702
    sget-object v0, Lbe8;->a:Lbe8;

    .line 703
    .line 704
    return-object v0

    .line 705
    :pswitch_2
    move-object/from16 v1, p1

    .line 706
    .line 707
    check-cast v1, Ljava/util/Set;

    .line 708
    .line 709
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast v0, Lkg4;

    .line 715
    .line 716
    iget-object v2, v0, Lkg4;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 717
    .line 718
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 719
    .line 720
    .line 721
    :try_start_0
    iget-object v0, v0, Lkg4;->c:Ljava/util/LinkedHashMap;

    .line 722
    .line 723
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-static {v0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 728
    .line 729
    .line 730
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 732
    .line 733
    .line 734
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    :cond_17
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 739
    .line 740
    .line 741
    move-result v2

    .line 742
    if-eqz v2, :cond_1c

    .line 743
    .line 744
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v2

    .line 748
    check-cast v2, Lfs5;

    .line 749
    .line 750
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    .line 752
    .line 753
    sget-object v3, Lsv2;->a:Lsv2;

    .line 754
    .line 755
    iget-object v4, v2, Lfs5;->b:[I

    .line 756
    .line 757
    array-length v5, v4

    .line 758
    if-eqz v5, :cond_1b

    .line 759
    .line 760
    if-eq v5, v8, :cond_1a

    .line 761
    .line 762
    new-instance v3, Lw97;

    .line 763
    .line 764
    invoke-direct {v3}, Lw97;-><init>()V

    .line 765
    .line 766
    .line 767
    array-length v5, v4

    .line 768
    move v6, v7

    .line 769
    move v9, v6

    .line 770
    :goto_b
    if-ge v6, v5, :cond_19

    .line 771
    .line 772
    aget v10, v4, v6

    .line 773
    .line 774
    add-int/lit8 v11, v9, 0x1

    .line 775
    .line 776
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 777
    .line 778
    .line 779
    move-result-object v10

    .line 780
    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v10

    .line 784
    if-eqz v10, :cond_18

    .line 785
    .line 786
    iget-object v10, v2, Lfs5;->c:[Ljava/lang/String;

    .line 787
    .line 788
    aget-object v9, v10, v9

    .line 789
    .line 790
    invoke-virtual {v3, v9}, Lw97;->add(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    :cond_18
    add-int/lit8 v6, v6, 0x1

    .line 794
    .line 795
    move v9, v11

    .line 796
    goto :goto_b

    .line 797
    :cond_19
    invoke-static {v3}, Lsz8;->e(Lw97;)Lw97;

    .line 798
    .line 799
    .line 800
    move-result-object v3

    .line 801
    goto :goto_c

    .line 802
    :cond_1a
    aget v4, v4, v7

    .line 803
    .line 804
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 805
    .line 806
    .line 807
    move-result-object v4

    .line 808
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result v4

    .line 812
    if-eqz v4, :cond_1b

    .line 813
    .line 814
    iget-object v3, v2, Lfs5;->d:Ljava/util/Set;

    .line 815
    .line 816
    :cond_1b
    :goto_c
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 817
    .line 818
    .line 819
    move-result v4

    .line 820
    if-nez v4, :cond_17

    .line 821
    .line 822
    iget-object v2, v2, Lfs5;->a:Ljg4;

    .line 823
    .line 824
    invoke-virtual {v2, v3}, Ljg4;->a(Ljava/util/Set;)V

    .line 825
    .line 826
    .line 827
    goto :goto_a

    .line 828
    :cond_1c
    sget-object v0, Lbe8;->a:Lbe8;

    .line 829
    .line 830
    return-object v0

    .line 831
    :catchall_0
    move-exception v0

    .line 832
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 833
    .line 834
    .line 835
    throw v0

    .line 836
    :pswitch_3
    move-object/from16 v1, p1

    .line 837
    .line 838
    check-cast v1, Lof4;

    .line 839
    .line 840
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    .line 842
    .line 843
    iget-object v5, v1, Lof4;->b:Ljava/lang/Exception;

    .line 844
    .line 845
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 846
    .line 847
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/d;

    .line 848
    .line 849
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 850
    .line 851
    .line 852
    iget-object v2, v1, Lof4;->a:Lzn7;

    .line 853
    .line 854
    if-eqz v2, :cond_1d

    .line 855
    .line 856
    invoke-virtual {v2}, Lzn7;->u()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v9

    .line 860
    :cond_1d
    sget-boolean v3, Lmp6;->g:Z

    .line 861
    .line 862
    sget-boolean v4, Lq63;->d:Z

    .line 863
    .line 864
    sget-boolean v6, Lq63;->e:Z

    .line 865
    .line 866
    const-string v7, "; mainDir="

    .line 867
    .line 868
    new-instance v8, Ljava/lang/StringBuilder;

    .line 869
    .line 870
    const-string v10, "Unable to prepare required backup directories; exception="

    .line 871
    .line 872
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    invoke-static {v1}, Lji8;->A(Lof4;)Lho7;

    .line 876
    .line 877
    .line 878
    move-result-object v10

    .line 879
    iget-object v10, v10, Lho7;->a:Ljava/lang/String;

    .line 880
    .line 881
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 882
    .line 883
    .line 884
    move-result-object v11

    .line 885
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v11

    .line 889
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    const-string v11, "; root="

    .line 893
    .line 894
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    const-string v3, "; forceRoot="

    .line 901
    .line 902
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    const-string v3, "; useSaf="

    .line 909
    .line 910
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    if-eqz v2, :cond_1e

    .line 917
    .line 918
    const-string v3, "; storage="

    .line 919
    .line 920
    invoke-static {v8, v3, v9, v7, v10}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    const-string v3, "; rootDir="

    .line 924
    .line 925
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    invoke-virtual {v2}, Lzn7;->n()Lq63;

    .line 929
    .line 930
    .line 931
    move-result-object v3

    .line 932
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v3

    .line 936
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    const-string v3, "; removable="

    .line 940
    .line 941
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    iget-boolean v3, v2, Lzn7;->b:Z

    .line 945
    .line 946
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    const-string v3, "; usb="

    .line 950
    .line 951
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    iget-boolean v2, v2, Lzn7;->c:Z

    .line 955
    .line 956
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    .line 959
    goto :goto_d

    .line 960
    :cond_1e
    if-eqz v10, :cond_1f

    .line 961
    .line 962
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    :cond_1f
    :goto_d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v4

    .line 972
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 973
    .line 974
    iget-object v3, v0, La55;->b:Ljava/lang/String;

    .line 975
    .line 976
    const/16 v7, 0x8

    .line 977
    .line 978
    const/4 v8, 0x0

    .line 979
    const/4 v6, 0x0

    .line 980
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 981
    .line 982
    .line 983
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/intro/d;->n:Lex6;

    .line 984
    .line 985
    invoke-static {v1}, Lji8;->A(Lof4;)Lho7;

    .line 986
    .line 987
    .line 988
    move-result-object v1

    .line 989
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 990
    .line 991
    .line 992
    sget-object v0, Lbe8;->a:Lbe8;

    .line 993
    .line 994
    return-object v0

    .line 995
    :pswitch_4
    move-object/from16 v1, p1

    .line 996
    .line 997
    check-cast v1, Lmt3;

    .line 998
    .line 999
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1000
    .line 1001
    .line 1002
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 1003
    .line 1004
    move-object v2, v0

    .line 1005
    check-cast v2, Lqf4;

    .line 1006
    .line 1007
    monitor-enter v2

    .line 1008
    :try_start_1
    sget-object v0, Lpf4;->IDLE:Lpf4;

    .line 1009
    .line 1010
    iget-boolean v3, v2, Lqf4;->h:Z

    .line 1011
    .line 1012
    if-nez v3, :cond_21

    .line 1013
    .line 1014
    iget-object v3, v2, Lqf4;->g:Lpf4;

    .line 1015
    .line 1016
    if-eq v3, v0, :cond_20

    .line 1017
    .line 1018
    goto :goto_e

    .line 1019
    :cond_20
    sget-object v0, Lpf4;->RUNNING:Lpf4;

    .line 1020
    .line 1021
    iput-object v0, v2, Lqf4;->g:Lpf4;

    .line 1022
    .line 1023
    iget-object v3, v2, Lqf4;->e:Ld7;

    .line 1024
    .line 1025
    invoke-virtual {v3, v0}, Ld7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    iget-object v0, v2, Lqf4;->a:Lnu;

    .line 1029
    .line 1030
    new-instance v3, Lkg;

    .line 1031
    .line 1032
    const/16 v4, 0xb

    .line 1033
    .line 1034
    invoke-direct {v3, v4, v2, v1}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v0, v3}, Lnu;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1038
    .line 1039
    .line 1040
    move v7, v8

    .line 1041
    :cond_21
    :goto_e
    monitor-exit v2

    .line 1042
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v0

    .line 1046
    return-object v0

    .line 1047
    :catchall_1
    move-exception v0

    .line 1048
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1049
    throw v0

    .line 1050
    :pswitch_5
    move-object/from16 v1, p1

    .line 1051
    .line 1052
    check-cast v1, Ljava/lang/Number;

    .line 1053
    .line 1054
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 1055
    .line 1056
    .line 1057
    move-result-wide v1

    .line 1058
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 1059
    .line 1060
    check-cast v0, Lpu3;

    .line 1061
    .line 1062
    invoke-virtual {v0}, Lpu3;->i()V

    .line 1063
    .line 1064
    .line 1065
    iget-object v3, v0, Lag8;->a:Lrf8;

    .line 1066
    .line 1067
    iget-object v3, v3, Lrf8;->a:Lq63;

    .line 1068
    .line 1069
    sget-boolean v4, Lq63;->d:Z

    .line 1070
    .line 1071
    invoke-virtual {v3, v8}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v3

    .line 1075
    :goto_f
    const-wide/16 v6, 0x0

    .line 1076
    .line 1077
    cmp-long v4, v1, v6

    .line 1078
    .line 1079
    if-lez v4, :cond_24

    .line 1080
    .line 1081
    :try_start_3
    invoke-virtual {v3, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 1082
    .line 1083
    .line 1084
    move-result-wide v8

    .line 1085
    cmp-long v4, v8, v6

    .line 1086
    .line 1087
    if-lez v4, :cond_22

    .line 1088
    .line 1089
    sub-long/2addr v1, v8

    .line 1090
    goto :goto_f

    .line 1091
    :cond_22
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 1092
    .line 1093
    .line 1094
    move-result v4

    .line 1095
    if-eq v4, v5, :cond_23

    .line 1096
    .line 1097
    const-wide/16 v6, -0x1

    .line 1098
    .line 1099
    add-long/2addr v1, v6

    .line 1100
    goto :goto_f

    .line 1101
    :cond_23
    new-instance v0, Ljava/io/EOFException;

    .line 1102
    .line 1103
    const-string v1, "Unexpected EOF while seeking Google Drive upload input"

    .line 1104
    .line 1105
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    throw v0

    .line 1109
    :cond_24
    iput-object v3, v0, Lpu3;->l:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1110
    .line 1111
    return-object v3

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    invoke-static {v3}, Lf13;->a(Ljava/io/Closeable;)V

    .line 1114
    .line 1115
    .line 1116
    throw v0

    .line 1117
    :pswitch_6
    move-object/from16 v1, p1

    .line 1118
    .line 1119
    check-cast v1, Lcc3;

    .line 1120
    .line 1121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1122
    .line 1123
    .line 1124
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 1125
    .line 1126
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;

    .line 1127
    .line 1128
    sget v6, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N:I

    .line 1129
    .line 1130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1131
    .line 1132
    .line 1133
    sget-object v6, Lac3;->a:Lac3;

    .line 1134
    .line 1135
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1136
    .line 1137
    .line 1138
    move-result v10

    .line 1139
    if-nez v10, :cond_2d

    .line 1140
    .line 1141
    sget-object v10, Lyb3;->a:Lyb3;

    .line 1142
    .line 1143
    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v10

    .line 1147
    if-eqz v10, :cond_25

    .line 1148
    .line 1149
    goto/16 :goto_10

    .line 1150
    .line 1151
    :cond_25
    sget-object v10, Lbc3;->a:Lbc3;

    .line 1152
    .line 1153
    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1154
    .line 1155
    .line 1156
    move-result v10

    .line 1157
    if-eqz v10, :cond_2a

    .line 1158
    .line 1159
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->P()V

    .line 1160
    .line 1161
    .line 1162
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->M:Lwa;

    .line 1163
    .line 1164
    if-eqz v1, :cond_26

    .line 1165
    .line 1166
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 1167
    .line 1168
    .line 1169
    move-result v1

    .line 1170
    if-ne v1, v8, :cond_26

    .line 1171
    .line 1172
    goto/16 :goto_11

    .line 1173
    .line 1174
    :cond_26
    const v1, 0x7f0d009d

    .line 1175
    .line 1176
    .line 1177
    invoke-static {v0, v1, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v1

    .line 1181
    const v2, 0x7f0a020c

    .line 1182
    .line 1183
    .line 1184
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v6

    .line 1188
    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1189
    .line 1190
    if-eqz v6, :cond_29

    .line 1191
    .line 1192
    new-instance v2, Ll39;

    .line 1193
    .line 1194
    check-cast v1, Landroid/widget/FrameLayout;

    .line 1195
    .line 1196
    const/4 v10, 0x4

    .line 1197
    invoke-direct {v2, v10, v1, v6}, Ll39;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1198
    .line 1199
    .line 1200
    const/16 v10, 0x91

    .line 1201
    .line 1202
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setInputType(I)V

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->O()Lec3;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v10

    .line 1209
    iget-object v10, v10, Lec3;->j:Ljava/lang/String;

    .line 1210
    .line 1211
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    .line 1213
    .line 1214
    new-instance v10, Lhv1;

    .line 1215
    .line 1216
    invoke-direct {v10, v0, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 1217
    .line 1218
    .line 1219
    new-instance v11, Ls35;

    .line 1220
    .line 1221
    invoke-direct {v11, v0, v4, v10, v9}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 1222
    .line 1223
    .line 1224
    iget-object v4, v11, Lva;->b:Ljava/lang/Object;

    .line 1225
    .line 1226
    check-cast v4, Lra;

    .line 1227
    .line 1228
    iput-boolean v7, v4, Lra;->m:Z

    .line 1229
    .line 1230
    const v9, 0x7f13023b

    .line 1231
    .line 1232
    .line 1233
    invoke-virtual {v11, v9}, Lv75;->v(I)V

    .line 1234
    .line 1235
    .line 1236
    iput-object v1, v4, Lra;->s:Landroid/view/View;

    .line 1237
    .line 1238
    new-instance v1, Ltb3;

    .line 1239
    .line 1240
    invoke-direct {v1, v7, v0, v2}, Ltb3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1241
    .line 1242
    .line 1243
    const v2, 0x7f1303e6

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v11, v2, v1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1247
    .line 1248
    .line 1249
    new-instance v1, Luq1;

    .line 1250
    .line 1251
    const/4 v2, 0x2

    .line 1252
    invoke-direct {v1, v0, v2}, Luq1;-><init>(Ljava/lang/Object;I)V

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v11, v3, v1}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v11}, Ls35;->m()Lwa;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v1

    .line 1262
    if-nez v1, :cond_27

    .line 1263
    .line 1264
    goto/16 :goto_11

    .line 1265
    .line 1266
    :cond_27
    iput-object v1, v0, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->M:Lwa;

    .line 1267
    .line 1268
    new-instance v2, Lub3;

    .line 1269
    .line 1270
    invoke-direct {v2, v0, v7}, Lub3;-><init>(Lil0;I)V

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v1, v5}, Lwa;->f(I)Landroid/widget/Button;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v1

    .line 1280
    invoke-virtual {v6}, Llo;->getText()Landroid/text/Editable;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v2

    .line 1284
    if-eqz v2, :cond_28

    .line 1285
    .line 1286
    invoke-static {v2}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v2

    .line 1290
    if-eqz v2, :cond_28

    .line 1291
    .line 1292
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 1293
    .line 1294
    .line 1295
    move-result v2

    .line 1296
    if-lez v2, :cond_28

    .line 1297
    .line 1298
    move v7, v8

    .line 1299
    :cond_28
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1300
    .line 1301
    .line 1302
    new-instance v2, Lwb3;

    .line 1303
    .line 1304
    invoke-direct {v2, v0, v1}, Lwb3;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;Landroid/widget/Button;)V

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    .line 1314
    .line 1315
    .line 1316
    move-result v0

    .line 1317
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1318
    .line 1319
    .line 1320
    goto :goto_11

    .line 1321
    :cond_29
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v0

    .line 1325
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v0

    .line 1329
    const-string v1, "Missing required view with ID: "

    .line 1330
    .line 1331
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v0

    .line 1335
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1336
    .line 1337
    .line 1338
    goto :goto_12

    .line 1339
    :cond_2a
    sget-object v3, Lxb3;->a:Lxb3;

    .line 1340
    .line 1341
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1342
    .line 1343
    .line 1344
    move-result v3

    .line 1345
    if-eqz v3, :cond_2b

    .line 1346
    .line 1347
    sget-object v1, Ldd1;->Filen:Ldd1;

    .line 1348
    .line 1349
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1350
    .line 1351
    .line 1352
    new-instance v2, Landroid/content/Intent;

    .line 1353
    .line 1354
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1355
    .line 1356
    .line 1357
    const-string v3, "org.swiftapps.swiftbackup.cloud.connect.extra.CLOUD_CONSTANT"

    .line 1358
    .line 1359
    invoke-virtual {v1}, Ldd1;->getConstant()Ljava/lang/String;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v1

    .line 1363
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v1

    .line 1367
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual {v0, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1371
    .line 1372
    .line 1373
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1374
    .line 1375
    .line 1376
    goto :goto_11

    .line 1377
    :cond_2b
    sget-object v3, Lzb3;->a:Lzb3;

    .line 1378
    .line 1379
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1380
    .line 1381
    .line 1382
    move-result v1

    .line 1383
    if-eqz v1, :cond_2c

    .line 1384
    .line 1385
    const v1, 0x7f13010d

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v1

    .line 1392
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1393
    .line 1394
    .line 1395
    sget-object v4, Lzn4;->a:Lzn4;

    .line 1396
    .line 1397
    new-instance v4, Lcv;

    .line 1398
    .line 1399
    invoke-direct {v4, v2, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1400
    .line 1401
    .line 1402
    invoke-static {v4}, Lzn4;->e(Lbt3;)V

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->O()Lec3;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v0

    .line 1409
    iget-object v0, v0, Lec3;->e:Lex6;

    .line 1410
    .line 1411
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v1

    .line 1415
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1416
    .line 1417
    .line 1418
    move-result v1

    .line 1419
    if-eqz v1, :cond_2e

    .line 1420
    .line 1421
    invoke-virtual {v0, v6}, Lex6;->k(Ljava/lang/Object;)V

    .line 1422
    .line 1423
    .line 1424
    goto :goto_11

    .line 1425
    :cond_2c
    invoke-static {}, Lq;->j()V

    .line 1426
    .line 1427
    .line 1428
    goto :goto_12

    .line 1429
    :cond_2d
    :goto_10
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->P()V

    .line 1430
    .line 1431
    .line 1432
    :cond_2e
    :goto_11
    sget-object v9, Lbe8;->a:Lbe8;

    .line 1433
    .line 1434
    :goto_12
    return-object v9

    .line 1435
    :pswitch_7
    move-object/from16 v1, p1

    .line 1436
    .line 1437
    check-cast v1, Lwh1;

    .line 1438
    .line 1439
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1440
    .line 1441
    .line 1442
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 1443
    .line 1444
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 1445
    .line 1446
    sget v5, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->S:I

    .line 1447
    .line 1448
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1449
    .line 1450
    .line 1451
    instance-of v5, v1, Lsh1;

    .line 1452
    .line 1453
    if-eqz v5, :cond_2f

    .line 1454
    .line 1455
    new-instance v2, Lhv1;

    .line 1456
    .line 1457
    invoke-direct {v2, v0, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 1458
    .line 1459
    .line 1460
    new-instance v5, Ls35;

    .line 1461
    .line 1462
    invoke-direct {v5, v0, v4, v2, v9}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 1463
    .line 1464
    .line 1465
    const v2, 0x7f130171

    .line 1466
    .line 1467
    .line 1468
    invoke-virtual {v5, v2}, Lv75;->v(I)V

    .line 1469
    .line 1470
    .line 1471
    check-cast v1, Lsh1;

    .line 1472
    .line 1473
    iget v2, v1, Lsh1;->b:I

    .line 1474
    .line 1475
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v2

    .line 1479
    sget-object v4, Lp93;->a:Lp93;

    .line 1480
    .line 1481
    iget-wide v6, v1, Lsh1;->c:J

    .line 1482
    .line 1483
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v4

    .line 1487
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v4

    .line 1491
    iget-object v1, v1, Lsh1;->a:Ljava/lang/String;

    .line 1492
    .line 1493
    filled-new-array {v2, v4, v1}, [Ljava/lang/Object;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v1

    .line 1497
    const v2, 0x7f130170

    .line 1498
    .line 1499
    .line 1500
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v1

    .line 1504
    iget-object v2, v5, Lva;->b:Ljava/lang/Object;

    .line 1505
    .line 1506
    check-cast v2, Lra;

    .line 1507
    .line 1508
    iput-object v1, v2, Lra;->f:Ljava/lang/CharSequence;

    .line 1509
    .line 1510
    new-instance v1, Lf21;

    .line 1511
    .line 1512
    invoke-direct {v1, v0, v8}, Lf21;-><init>(Ljava/lang/Object;I)V

    .line 1513
    .line 1514
    .line 1515
    const v0, 0x7f130174

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {v5, v0, v1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual {v5, v3, v9}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 1525
    .line 1526
    .line 1527
    goto/16 :goto_13

    .line 1528
    .line 1529
    :cond_2f
    instance-of v3, v1, Luh1;

    .line 1530
    .line 1531
    if-eqz v3, :cond_30

    .line 1532
    .line 1533
    check-cast v1, Luh1;

    .line 1534
    .line 1535
    iget v2, v1, Luh1;->a:I

    .line 1536
    .line 1537
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v2

    .line 1541
    iget v1, v1, Luh1;->b:I

    .line 1542
    .line 1543
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v1

    .line 1547
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v1

    .line 1551
    const v2, 0x7f130173

    .line 1552
    .line 1553
    .line 1554
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v1

    .line 1558
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1559
    .line 1560
    .line 1561
    sget-object v2, Lzn4;->a:Lzn4;

    .line 1562
    .line 1563
    new-instance v2, Ll30;

    .line 1564
    .line 1565
    const/16 v3, 0xf

    .line 1566
    .line 1567
    invoke-direct {v2, v3, v0, v1}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1568
    .line 1569
    .line 1570
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 1571
    .line 1572
    .line 1573
    goto :goto_13

    .line 1574
    :cond_30
    instance-of v3, v1, Lth1;

    .line 1575
    .line 1576
    if-eqz v3, :cond_31

    .line 1577
    .line 1578
    new-instance v2, Lhv1;

    .line 1579
    .line 1580
    invoke-direct {v2, v0, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 1581
    .line 1582
    .line 1583
    new-instance v3, Ls35;

    .line 1584
    .line 1585
    invoke-direct {v3, v0, v4, v2, v9}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 1586
    .line 1587
    .line 1588
    const v2, 0x7f130222

    .line 1589
    .line 1590
    .line 1591
    invoke-virtual {v3, v2}, Lv75;->v(I)V

    .line 1592
    .line 1593
    .line 1594
    check-cast v1, Lth1;

    .line 1595
    .line 1596
    iget-object v1, v1, Lth1;->a:Ljava/lang/String;

    .line 1597
    .line 1598
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v1

    .line 1602
    const v2, 0x7f130172

    .line 1603
    .line 1604
    .line 1605
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v0

    .line 1609
    iget-object v1, v3, Lva;->b:Ljava/lang/Object;

    .line 1610
    .line 1611
    check-cast v1, Lra;

    .line 1612
    .line 1613
    iput-object v0, v1, Lra;->f:Ljava/lang/CharSequence;

    .line 1614
    .line 1615
    const v0, 0x7f130299

    .line 1616
    .line 1617
    .line 1618
    invoke-virtual {v3, v0, v9}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1619
    .line 1620
    .line 1621
    invoke-virtual {v3}, Ls35;->m()Lwa;

    .line 1622
    .line 1623
    .line 1624
    goto :goto_13

    .line 1625
    :cond_31
    instance-of v3, v1, Lvh1;

    .line 1626
    .line 1627
    if-eqz v3, :cond_32

    .line 1628
    .line 1629
    check-cast v1, Lvh1;

    .line 1630
    .line 1631
    iget v1, v1, Lvh1;->a:I

    .line 1632
    .line 1633
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v1

    .line 1637
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1638
    .line 1639
    .line 1640
    sget-object v3, Lzn4;->a:Lzn4;

    .line 1641
    .line 1642
    new-instance v3, Lcv;

    .line 1643
    .line 1644
    invoke-direct {v3, v2, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1645
    .line 1646
    .line 1647
    invoke-static {v3}, Lzn4;->e(Lbt3;)V

    .line 1648
    .line 1649
    .line 1650
    :goto_13
    sget-object v9, Lbe8;->a:Lbe8;

    .line 1651
    .line 1652
    goto :goto_14

    .line 1653
    :cond_32
    invoke-static {}, Lq;->j()V

    .line 1654
    .line 1655
    .line 1656
    :goto_14
    return-object v9

    .line 1657
    :pswitch_data_0
    .packed-switch 0x0
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
