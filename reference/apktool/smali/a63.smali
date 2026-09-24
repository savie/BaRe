.class public final La63;
.super Lh3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La63;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lun2;Lke;)Lgt0;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget v1, v1, La63;->a:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/16 v3, 0x20

    .line 9
    .line 10
    const/16 v4, 0x9

    .line 11
    .line 12
    const/16 v5, 0x2d

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lun2;->a:Ljava/lang/CharSequence;

    .line 20
    .line 21
    invoke-virtual/range {p2 .. p2}, Lke;->a()Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_e

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    const-string v10, "|"

    .line 32
    .line 33
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    if-eqz v9, :cond_e

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    const-string v10, "\n"

    .line 44
    .line 45
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    if-nez v9, :cond_e

    .line 50
    .line 51
    iget v9, v0, Lun2;->b:I

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    invoke-interface {v1, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v9, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    move v10, v7

    .line 67
    move v11, v10

    .line 68
    move v12, v11

    .line 69
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    if-ge v10, v13, :cond_c

    .line 74
    .line 75
    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    .line 76
    .line 77
    .line 78
    move-result v13

    .line 79
    if-eq v13, v4, :cond_b

    .line 80
    .line 81
    if-eq v13, v3, :cond_b

    .line 82
    .line 83
    const/16 v14, 0x3a

    .line 84
    .line 85
    if-eq v13, v5, :cond_2

    .line 86
    .line 87
    if-eq v13, v14, :cond_2

    .line 88
    .line 89
    const/16 v11, 0x7c

    .line 90
    .line 91
    if-eq v13, v11, :cond_0

    .line 92
    .line 93
    goto/16 :goto_5

    .line 94
    .line 95
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 96
    .line 97
    add-int/lit8 v12, v12, 0x1

    .line 98
    .line 99
    if-le v12, v8, :cond_1

    .line 100
    .line 101
    goto/16 :goto_5

    .line 102
    .line 103
    :cond_1
    move v11, v8

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    if-nez v12, :cond_3

    .line 106
    .line 107
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    if-nez v12, :cond_3

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_3
    if-ne v13, v14, :cond_4

    .line 115
    .line 116
    add-int/lit8 v10, v10, 0x1

    .line 117
    .line 118
    move v12, v8

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    move v12, v7

    .line 121
    :goto_1
    move v13, v7

    .line 122
    :goto_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    if-ge v10, v15, :cond_5

    .line 127
    .line 128
    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    .line 129
    .line 130
    .line 131
    move-result v15

    .line 132
    if-ne v15, v5, :cond_5

    .line 133
    .line 134
    add-int/lit8 v10, v10, 0x1

    .line 135
    .line 136
    move v13, v8

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    if-nez v13, :cond_6

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_6
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    if-ge v10, v13, :cond_7

    .line 146
    .line 147
    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    .line 148
    .line 149
    .line 150
    move-result v13

    .line 151
    if-ne v13, v14, :cond_7

    .line 152
    .line 153
    add-int/lit8 v10, v10, 0x1

    .line 154
    .line 155
    move v13, v8

    .line 156
    goto :goto_3

    .line 157
    :cond_7
    move v13, v7

    .line 158
    :goto_3
    if-eqz v12, :cond_8

    .line 159
    .line 160
    if-eqz v13, :cond_8

    .line 161
    .line 162
    sget-object v12, Lkw7;->b:Lkw7;

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_8
    if-eqz v12, :cond_9

    .line 166
    .line 167
    sget-object v12, Lkw7;->a:Lkw7;

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_9
    if-eqz v13, :cond_a

    .line 171
    .line 172
    sget-object v12, Lkw7;->c:Lkw7;

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_a
    const/4 v12, 0x0

    .line 176
    :goto_4
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move v12, v7

    .line 180
    goto :goto_0

    .line 181
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_c
    if-nez v11, :cond_d

    .line 185
    .line 186
    :goto_5
    const/4 v9, 0x0

    .line 187
    :cond_d
    if-eqz v9, :cond_e

    .line 188
    .line 189
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_e

    .line 194
    .line 195
    invoke-static {v2}, Liw7;->i(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-lt v2, v3, :cond_e

    .line 208
    .line 209
    new-instance v2, Liw7;

    .line 210
    .line 211
    invoke-direct {v2, v9, v1}, Liw7;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 212
    .line 213
    .line 214
    new-array v1, v8, [Lg3;

    .line 215
    .line 216
    aput-object v2, v1, v7

    .line 217
    .line 218
    new-instance v6, Lgt0;

    .line 219
    .line 220
    invoke-direct {v6, v1}, Lgt0;-><init>([Lg3;)V

    .line 221
    .line 222
    .line 223
    iget v0, v0, Lun2;->b:I

    .line 224
    .line 225
    iput v0, v6, Lgt0;->b:I

    .line 226
    .line 227
    iput-boolean v8, v6, Lgt0;->d:Z

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_e
    const/4 v6, 0x0

    .line 231
    :goto_6
    return-object v6

    .line 232
    :pswitch_0
    move-object/from16 v1, p2

    .line 233
    .line 234
    iget-object v9, v1, Lke;->b:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v9, Lg3;

    .line 237
    .line 238
    iget v10, v0, Lun2;->g:I

    .line 239
    .line 240
    if-lt v10, v2, :cond_f

    .line 241
    .line 242
    goto/16 :goto_10

    .line 243
    .line 244
    :cond_f
    iget v11, v0, Lun2;->e:I

    .line 245
    .line 246
    iget v12, v0, Lun2;->c:I

    .line 247
    .line 248
    add-int/2addr v12, v10

    .line 249
    invoke-virtual {v1}, Lke;->a()Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    if-eqz v1, :cond_10

    .line 254
    .line 255
    move v1, v8

    .line 256
    goto :goto_7

    .line 257
    :cond_10
    move v1, v7

    .line 258
    :goto_7
    iget-object v10, v0, Lun2;->a:Ljava/lang/CharSequence;

    .line 259
    .line 260
    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    .line 261
    .line 262
    .line 263
    move-result v13

    .line 264
    const/16 v14, 0x2a

    .line 265
    .line 266
    if-eq v13, v14, :cond_15

    .line 267
    .line 268
    const/16 v14, 0x2b

    .line 269
    .line 270
    if-eq v13, v14, :cond_15

    .line 271
    .line 272
    if-eq v13, v5, :cond_15

    .line 273
    .line 274
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    move v14, v7

    .line 279
    move v13, v11

    .line 280
    :goto_8
    if-ge v13, v5, :cond_14

    .line 281
    .line 282
    invoke-interface {v10, v13}, Ljava/lang/CharSequence;->charAt(I)C

    .line 283
    .line 284
    .line 285
    move-result v15

    .line 286
    const/16 v6, 0x29

    .line 287
    .line 288
    if-eq v15, v6, :cond_12

    .line 289
    .line 290
    const/16 v6, 0x2e

    .line 291
    .line 292
    if-eq v15, v6, :cond_12

    .line 293
    .line 294
    packed-switch v15, :pswitch_data_1

    .line 295
    .line 296
    .line 297
    goto :goto_9

    .line 298
    :pswitch_1
    add-int/lit8 v14, v14, 0x1

    .line 299
    .line 300
    if-le v14, v4, :cond_11

    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_11
    add-int/lit8 v13, v13, 0x1

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_12
    if-lt v14, v8, :cond_14

    .line 307
    .line 308
    add-int/lit8 v5, v13, 0x1

    .line 309
    .line 310
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    if-ge v5, v6, :cond_13

    .line 315
    .line 316
    invoke-interface {v10, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    if-eq v6, v4, :cond_13

    .line 321
    .line 322
    if-eq v6, v3, :cond_13

    .line 323
    .line 324
    goto :goto_9

    .line 325
    :cond_13
    invoke-interface {v10, v11, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    new-instance v13, Lqu5;

    .line 334
    .line 335
    invoke-direct {v13}, Lon5;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    iput v6, v13, Lqu5;->g:I

    .line 343
    .line 344
    iput-char v15, v13, Lqu5;->h:C

    .line 345
    .line 346
    new-instance v6, Leo2;

    .line 347
    .line 348
    invoke-direct {v6, v13, v5}, Leo2;-><init>(Llw4;I)V

    .line 349
    .line 350
    .line 351
    goto :goto_a

    .line 352
    :cond_14
    :goto_9
    const/4 v6, 0x0

    .line 353
    goto :goto_a

    .line 354
    :cond_15
    add-int/lit8 v5, v11, 0x1

    .line 355
    .line 356
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    if-ge v5, v6, :cond_16

    .line 361
    .line 362
    invoke-interface {v10, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    if-eq v6, v4, :cond_16

    .line 367
    .line 368
    if-eq v6, v3, :cond_16

    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_16
    new-instance v6, Lfx0;

    .line 372
    .line 373
    invoke-direct {v6}, Lon5;-><init>()V

    .line 374
    .line 375
    .line 376
    iput-char v13, v6, Lfx0;->g:C

    .line 377
    .line 378
    new-instance v13, Leo2;

    .line 379
    .line 380
    invoke-direct {v13, v6, v5}, Leo2;-><init>(Llw4;I)V

    .line 381
    .line 382
    .line 383
    move-object v6, v13

    .line 384
    :goto_a
    if-nez v6, :cond_17

    .line 385
    .line 386
    goto :goto_e

    .line 387
    :cond_17
    iget-object v5, v6, Leo2;->b:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v5, Llw4;

    .line 390
    .line 391
    iget v6, v6, Leo2;->a:I

    .line 392
    .line 393
    sub-int v11, v6, v11

    .line 394
    .line 395
    add-int/2addr v11, v12

    .line 396
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 397
    .line 398
    .line 399
    move-result v12

    .line 400
    move v13, v11

    .line 401
    :goto_b
    if-ge v6, v12, :cond_1a

    .line 402
    .line 403
    invoke-interface {v10, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 404
    .line 405
    .line 406
    move-result v14

    .line 407
    if-ne v14, v4, :cond_18

    .line 408
    .line 409
    rem-int/lit8 v14, v13, 0x4

    .line 410
    .line 411
    rsub-int/lit8 v14, v14, 0x4

    .line 412
    .line 413
    add-int/2addr v14, v13

    .line 414
    move v13, v14

    .line 415
    goto :goto_c

    .line 416
    :cond_18
    if-ne v14, v3, :cond_19

    .line 417
    .line 418
    add-int/lit8 v13, v13, 0x1

    .line 419
    .line 420
    :goto_c
    add-int/lit8 v6, v6, 0x1

    .line 421
    .line 422
    goto :goto_b

    .line 423
    :cond_19
    move v3, v8

    .line 424
    goto :goto_d

    .line 425
    :cond_1a
    move v3, v7

    .line 426
    :goto_d
    if-eqz v1, :cond_1c

    .line 427
    .line 428
    instance-of v1, v5, Lqu5;

    .line 429
    .line 430
    if-eqz v1, :cond_1b

    .line 431
    .line 432
    move-object v1, v5

    .line 433
    check-cast v1, Lqu5;

    .line 434
    .line 435
    iget v1, v1, Lqu5;->g:I

    .line 436
    .line 437
    if-eq v1, v8, :cond_1b

    .line 438
    .line 439
    goto :goto_e

    .line 440
    :cond_1b
    if-nez v3, :cond_1c

    .line 441
    .line 442
    :goto_e
    const/4 v1, 0x0

    .line 443
    goto :goto_f

    .line 444
    :cond_1c
    if-eqz v3, :cond_1d

    .line 445
    .line 446
    sub-int v1, v13, v11

    .line 447
    .line 448
    if-le v1, v2, :cond_1e

    .line 449
    .line 450
    :cond_1d
    add-int/lit8 v13, v11, 0x1

    .line 451
    .line 452
    :cond_1e
    new-instance v1, Lir0;

    .line 453
    .line 454
    invoke-direct {v1, v5, v13}, Lir0;-><init>(Llw4;I)V

    .line 455
    .line 456
    .line 457
    :goto_f
    if-nez v1, :cond_1f

    .line 458
    .line 459
    :goto_10
    const/4 v6, 0x0

    .line 460
    goto/16 :goto_13

    .line 461
    .line 462
    :cond_1f
    iget-object v2, v1, Lir0;->c:Ljava/lang/Object;

    .line 463
    .line 464
    check-cast v2, Llw4;

    .line 465
    .line 466
    iget v1, v1, Lir0;->b:I

    .line 467
    .line 468
    new-instance v3, Lhx4;

    .line 469
    .line 470
    iget v0, v0, Lun2;->c:I

    .line 471
    .line 472
    sub-int v0, v1, v0

    .line 473
    .line 474
    invoke-direct {v3, v0}, Lhx4;-><init>(I)V

    .line 475
    .line 476
    .line 477
    instance-of v0, v9, Lmw4;

    .line 478
    .line 479
    if-eqz v0, :cond_23

    .line 480
    .line 481
    check-cast v9, Lmw4;

    .line 482
    .line 483
    iget-object v0, v9, Lmw4;->a:Llw4;

    .line 484
    .line 485
    instance-of v4, v0, Lfx0;

    .line 486
    .line 487
    if-eqz v4, :cond_20

    .line 488
    .line 489
    instance-of v4, v2, Lfx0;

    .line 490
    .line 491
    if-eqz v4, :cond_20

    .line 492
    .line 493
    check-cast v0, Lfx0;

    .line 494
    .line 495
    iget-char v0, v0, Lfx0;->g:C

    .line 496
    .line 497
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    move-object v4, v2

    .line 502
    check-cast v4, Lfx0;

    .line 503
    .line 504
    iget-char v4, v4, Lfx0;->g:C

    .line 505
    .line 506
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    goto :goto_11

    .line 515
    :cond_20
    instance-of v4, v0, Lqu5;

    .line 516
    .line 517
    if-eqz v4, :cond_21

    .line 518
    .line 519
    instance-of v4, v2, Lqu5;

    .line 520
    .line 521
    if-eqz v4, :cond_21

    .line 522
    .line 523
    check-cast v0, Lqu5;

    .line 524
    .line 525
    iget-char v0, v0, Lqu5;->h:C

    .line 526
    .line 527
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    move-object v4, v2

    .line 532
    check-cast v4, Lqu5;

    .line 533
    .line 534
    iget-char v4, v4, Lqu5;->h:C

    .line 535
    .line 536
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 537
    .line 538
    .line 539
    move-result-object v4

    .line 540
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    goto :goto_11

    .line 545
    :cond_21
    move v0, v7

    .line 546
    :goto_11
    if-nez v0, :cond_22

    .line 547
    .line 548
    goto :goto_12

    .line 549
    :cond_22
    new-array v0, v8, [Lg3;

    .line 550
    .line 551
    aput-object v3, v0, v7

    .line 552
    .line 553
    new-instance v6, Lgt0;

    .line 554
    .line 555
    invoke-direct {v6, v0}, Lgt0;-><init>([Lg3;)V

    .line 556
    .line 557
    .line 558
    iput v1, v6, Lgt0;->c:I

    .line 559
    .line 560
    goto :goto_13

    .line 561
    :cond_23
    :goto_12
    new-instance v0, Lmw4;

    .line 562
    .line 563
    invoke-direct {v0, v2}, Lmw4;-><init>(Llw4;)V

    .line 564
    .line 565
    .line 566
    iput-boolean v8, v2, Llw4;->f:Z

    .line 567
    .line 568
    const/4 v2, 0x2

    .line 569
    new-array v2, v2, [Lg3;

    .line 570
    .line 571
    aput-object v0, v2, v7

    .line 572
    .line 573
    aput-object v3, v2, v8

    .line 574
    .line 575
    new-instance v6, Lgt0;

    .line 576
    .line 577
    invoke-direct {v6, v2}, Lgt0;-><init>([Lg3;)V

    .line 578
    .line 579
    .line 580
    iput v1, v6, Lgt0;->c:I

    .line 581
    .line 582
    :goto_13
    return-object v6

    .line 583
    :pswitch_2
    iget v1, v0, Lun2;->g:I

    .line 584
    .line 585
    if-lt v1, v2, :cond_24

    .line 586
    .line 587
    goto/16 :goto_1b

    .line 588
    .line 589
    :cond_24
    iget v2, v0, Lun2;->e:I

    .line 590
    .line 591
    iget-object v0, v0, Lun2;->a:Ljava/lang/CharSequence;

    .line 592
    .line 593
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    move v4, v2

    .line 598
    move v5, v7

    .line 599
    move v6, v5

    .line 600
    :goto_14
    const/16 v9, 0x7e

    .line 601
    .line 602
    const/16 v10, 0x60

    .line 603
    .line 604
    if-ge v4, v3, :cond_27

    .line 605
    .line 606
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 607
    .line 608
    .line 609
    move-result v11

    .line 610
    if-eq v11, v10, :cond_26

    .line 611
    .line 612
    if-eq v11, v9, :cond_25

    .line 613
    .line 614
    goto :goto_16

    .line 615
    :cond_25
    add-int/lit8 v6, v6, 0x1

    .line 616
    .line 617
    goto :goto_15

    .line 618
    :cond_26
    add-int/lit8 v5, v5, 0x1

    .line 619
    .line 620
    :goto_15
    add-int/lit8 v4, v4, 0x1

    .line 621
    .line 622
    goto :goto_14

    .line 623
    :cond_27
    :goto_16
    const/4 v3, 0x3

    .line 624
    if-lt v5, v3, :cond_2b

    .line 625
    .line 626
    if-nez v6, :cond_2b

    .line 627
    .line 628
    add-int v3, v2, v5

    .line 629
    .line 630
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    :goto_17
    const/4 v6, -0x1

    .line 635
    if-ge v3, v4, :cond_29

    .line 636
    .line 637
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 638
    .line 639
    .line 640
    move-result v9

    .line 641
    if-ne v9, v10, :cond_28

    .line 642
    .line 643
    goto :goto_18

    .line 644
    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 645
    .line 646
    goto :goto_17

    .line 647
    :cond_29
    move v3, v6

    .line 648
    :goto_18
    if-eq v3, v6, :cond_2a

    .line 649
    .line 650
    goto :goto_19

    .line 651
    :cond_2a
    new-instance v0, Lb63;

    .line 652
    .line 653
    invoke-direct {v0, v5, v1, v10}, Lb63;-><init>(IIC)V

    .line 654
    .line 655
    .line 656
    goto :goto_1a

    .line 657
    :cond_2b
    if-lt v6, v3, :cond_2c

    .line 658
    .line 659
    if-nez v5, :cond_2c

    .line 660
    .line 661
    new-instance v0, Lb63;

    .line 662
    .line 663
    invoke-direct {v0, v6, v1, v9}, Lb63;-><init>(IIC)V

    .line 664
    .line 665
    .line 666
    goto :goto_1a

    .line 667
    :cond_2c
    :goto_19
    const/4 v0, 0x0

    .line 668
    :goto_1a
    if-eqz v0, :cond_2d

    .line 669
    .line 670
    new-array v1, v8, [Lg3;

    .line 671
    .line 672
    aput-object v0, v1, v7

    .line 673
    .line 674
    new-instance v6, Lgt0;

    .line 675
    .line 676
    invoke-direct {v6, v1}, Lgt0;-><init>([Lg3;)V

    .line 677
    .line 678
    .line 679
    iget-object v0, v0, Lb63;->a:Lz53;

    .line 680
    .line 681
    iget v0, v0, Lz53;->g:I

    .line 682
    .line 683
    add-int/2addr v2, v0

    .line 684
    iput v2, v6, Lgt0;->b:I

    .line 685
    .line 686
    goto :goto_1c

    .line 687
    :cond_2d
    :goto_1b
    const/4 v6, 0x0

    .line 688
    :goto_1c
    return-object v6

    .line 689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
