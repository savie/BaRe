.class public final synthetic Lg70;
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
    iput p7, p0, Lg70;->a:I

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
    .locals 10

    .line 1
    iget v0, p0, Lg70;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lmt3;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v0, p0

    .line 17
    check-cast v0, Lqf4;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    sget-object p0, Lpf4;->FAILED:Lpf4;

    .line 21
    .line 22
    iget-boolean v1, v0, Lqf4;->h:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v0, Lqf4;->g:Lpf4;

    .line 27
    .line 28
    if-eq v1, p0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object p0, Lpf4;->RUNNING:Lpf4;

    .line 32
    .line 33
    iput-object p0, v0, Lqf4;->g:Lpf4;

    .line 34
    .line 35
    iget-object v1, v0, Lqf4;->e:Ld7;

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ld7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object p0, v0, Lqf4;->a:Lnu;

    .line 41
    .line 42
    new-instance v1, Lkg;

    .line 43
    .line 44
    const/16 v2, 0xb

    .line 45
    .line 46
    invoke-direct {v1, v2, v0, p1}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lnu;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    move v2, v3

    .line 53
    :cond_1
    :goto_0
    monitor-exit v0

    .line 54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0

    .line 62
    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 70
    .line 71
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v0, v0, Lt52;->r:Lm86;

    .line 89
    .line 90
    iget-object v4, v0, Lm86;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v4, Landroid/widget/ImageView;

    .line 93
    .line 94
    iget-object v5, v0, Lm86;->e:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v5, Lcom/google/android/material/card/MaterialCardView;

    .line 97
    .line 98
    iput-boolean v3, p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->M0:Z

    .line 99
    .line 100
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v6}, Ldd1;->getDisplayName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lel1;->l1(Ljava/util/List;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    check-cast v7, Lvi1;

    .line 116
    .line 117
    if-eqz v7, :cond_3

    .line 118
    .line 119
    invoke-static {v7}, Lzh8;->k(Lvi1;)Loq8;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    move-object v7, v1

    .line 125
    :goto_1
    if-eqz v7, :cond_4

    .line 126
    .line 127
    sget-object v8, Loq8;->i:Loq8;

    .line 128
    .line 129
    invoke-virtual {v7, v8}, Loq8;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-nez v8, :cond_4

    .line 134
    .line 135
    iget-object v6, v7, Loq8;->b:Ljava/lang/String;

    .line 136
    .line 137
    :cond_4
    invoke-static {p1}, Lel1;->l1(Ljava/util/List;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    check-cast v7, Lvi1;

    .line 142
    .line 143
    const v8, 0x7f08011c

    .line 144
    .line 145
    .line 146
    if-nez v7, :cond_6

    .line 147
    .line 148
    :cond_5
    move v7, v8

    .line 149
    goto :goto_2

    .line 150
    :cond_6
    invoke-static {v7}, Lzh8;->k(Lvi1;)Loq8;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    sget-object v9, Loq8;->i:Loq8;

    .line 155
    .line 156
    invoke-static {v7, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-nez v9, :cond_5

    .line 161
    .line 162
    iget v7, v7, Loq8;->c:I

    .line 163
    .line 164
    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    .line 166
    .line 167
    if-ne v7, v8, :cond_7

    .line 168
    .line 169
    const v1, 0x7f040137

    .line 170
    .line 171
    .line 172
    invoke-static {p0, v1}, Lsz8;->y(Landroid/content/Context;I)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-static {v1}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    :cond_7
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lm86;->n:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v1, Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-ne v4, v3, :cond_8

    .line 196
    .line 197
    const v4, 0x7f1302fe

    .line 198
    .line 199
    .line 200
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    goto :goto_3

    .line 209
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    const v6, 0x7f130305

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    iget-object v1, v0, Lm86;->k:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v1, Landroid/widget/TextView;

    .line 234
    .line 235
    const v4, 0x7f130304

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    new-instance v1, Lce1;

    .line 246
    .line 247
    invoke-direct {v1, v3, p0, p1}, Lce1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5, v3}, Lcom/google/android/material/card/MaterialCardView;->setClickable(Z)V

    .line 257
    .line 258
    .line 259
    iget-object p1, v0, Lm86;->f:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast p1, Landroid/widget/ProgressBar;

    .line 262
    .line 263
    const/16 v1, 0x8

    .line 264
    .line 265
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    iget-object p1, v0, Lm86;->d:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast p1, Landroid/widget/ImageView;

    .line 271
    .line 272
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    .line 274
    .line 275
    invoke-static {v5}, Lsz8;->I(Landroid/view/View;)Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-nez p1, :cond_9

    .line 280
    .line 281
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    iget-object p1, p1, Lt52;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 286
    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    new-array v0, v2, [Ljava/lang/Class;

    .line 291
    .line 292
    invoke-virtual {p0, p1, v0}, Lil0;->x(Landroid/view/ViewGroup;[Ljava/lang/Class;)V

    .line 293
    .line 294
    .line 295
    :cond_9
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    :goto_4
    sget-object p0, Lbe8;->a:Lbe8;

    .line 299
    .line 300
    return-object p0

    .line 301
    :pswitch_1
    check-cast p1, Lwf3;

    .line 302
    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast p0, Lsa1;

    .line 309
    .line 310
    invoke-virtual {p0, p1}, Lsa1;->P(Lwf3;)V

    .line 311
    .line 312
    .line 313
    sget-object p0, Lbe8;->a:Lbe8;

    .line 314
    .line 315
    return-object p0

    .line 316
    :pswitch_2
    check-cast p1, Lq63;

    .line 317
    .line 318
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast p0, Lh70;

    .line 324
    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    const-string p0, "/"

    .line 329
    .line 330
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-static {p1}, Lh70;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    invoke-static {}, Lyn7;->a()Ljava/util/List;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    new-instance v3, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    if-eqz v4, :cond_c

    .line 356
    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    move-object v5, v4

    .line 362
    check-cast v5, Lzn7;

    .line 363
    .line 364
    invoke-virtual {v5}, Lzn7;->n()Lq63;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-virtual {v5}, Lq63;->v()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    invoke-static {v5}, Lh70;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v6

    .line 380
    if-nez v6, :cond_b

    .line 381
    .line 382
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v6

    .line 386
    if-nez v6, :cond_b

    .line 387
    .line 388
    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-static {p1, v5, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-eqz v5, :cond_a

    .line 397
    .line 398
    :cond_b
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    goto :goto_5

    .line 402
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 407
    .line 408
    .line 409
    move-result p1

    .line 410
    if-nez p1, :cond_d

    .line 411
    .line 412
    move-object p1, v1

    .line 413
    goto :goto_6

    .line 414
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-nez v0, :cond_e

    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_e
    move-object v0, p1

    .line 426
    check-cast v0, Lzn7;

    .line 427
    .line 428
    invoke-virtual {v0}, Lzn7;->n()Lq63;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-static {v0}, Lh70;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    move-object v3, v2

    .line 449
    check-cast v3, Lzn7;

    .line 450
    .line 451
    invoke-virtual {v3}, Lzn7;->n()Lq63;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-static {v3}, Lh70;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 464
    .line 465
    .line 466
    move-result v3

    .line 467
    if-ge v0, v3, :cond_10

    .line 468
    .line 469
    move-object p1, v2

    .line 470
    move v0, v3

    .line 471
    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    if-nez v2, :cond_f

    .line 476
    .line 477
    :goto_6
    check-cast p1, Lzn7;

    .line 478
    .line 479
    if-nez p1, :cond_11

    .line 480
    .line 481
    goto :goto_7

    .line 482
    :cond_11
    sget-object p0, Lry5;->u:Ljava/lang/String;

    .line 483
    .line 484
    invoke-static {p1}, Lqy5;->d(Lzn7;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p0

    .line 488
    new-instance v1, Lq63;

    .line 489
    .line 490
    const-string p1, ".trash/atomic-delete"

    .line 491
    .line 492
    const/4 v0, 0x2

    .line 493
    invoke-direct {v1, p0, p1, v0}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 494
    .line 495
    .line 496
    :goto_7
    return-object v1

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
