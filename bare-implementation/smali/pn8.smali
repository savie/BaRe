.class public final Lpn8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lq18;


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Lpn8;

.field public static final c:Lyy5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "baggage"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lpn8;->a:Ljava/util/List;

    .line 8
    .line 9
    new-instance v0, Lpn8;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lpn8;->b:Lpn8;

    .line 15
    .line 16
    new-instance v0, Lyy5;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lpn8;->c:Lyy5;

    .line 22
    .line 23
    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lpn8;->c:Lyy5;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, v1, :cond_1e

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    sget-object v5, Lyy5;->b:[Z

    .line 21
    .line 22
    array-length v6, v5

    .line 23
    if-ge v4, v6, :cond_1

    .line 24
    .line 25
    aget-boolean v4, v5, v4

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sget-object v4, Lxz7;->a:Ljava/lang/ThreadLocal;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, [C

    .line 44
    .line 45
    const/16 v7, 0x400

    .line 46
    .line 47
    if-eqz v6, :cond_2

    .line 48
    .line 49
    array-length v8, v6

    .line 50
    if-ge v8, v7, :cond_3

    .line 51
    .line 52
    :cond_2
    new-array v6, v7, [C

    .line 53
    .line 54
    invoke-virtual {v4, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    move v4, v2

    .line 58
    move v7, v4

    .line 59
    :cond_4
    :goto_2
    const/4 v8, 0x0

    .line 60
    const-string v9, "Cannot increase internal buffer any further"

    .line 61
    .line 62
    if-ge v3, v1, :cond_19

    .line 63
    .line 64
    if-ge v3, v1, :cond_18

    .line 65
    .line 66
    add-int/lit8 v10, v3, 0x1

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    const v12, 0xd800

    .line 73
    .line 74
    .line 75
    if-lt v11, v12, :cond_9

    .line 76
    .line 77
    const v12, 0xdfff

    .line 78
    .line 79
    .line 80
    if-le v11, v12, :cond_5

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    const v12, 0xdbff

    .line 84
    .line 85
    .line 86
    if-gt v11, v12, :cond_8

    .line 87
    .line 88
    if-ne v10, v1, :cond_6

    .line 89
    .line 90
    neg-int v11, v11

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    invoke-static {v12}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-eqz v13, :cond_7

    .line 101
    .line 102
    invoke-static {v11, v12}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    goto :goto_3

    .line 107
    :cond_7
    const-string v1, "Expected low surrogate but got char \'"

    .line 108
    .line 109
    invoke-static {v1, v12, v10, v0}, Lz5;->e(Ljava/lang/String;IILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-object v8

    .line 113
    :cond_8
    const-string v1, "Unexpected low surrogate character \'"

    .line 114
    .line 115
    invoke-static {v1, v11, v3, v0}, Lz5;->e(Ljava/lang/String;IILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return-object v8

    .line 119
    :cond_9
    :goto_3
    if-ltz v11, :cond_17

    .line 120
    .line 121
    sget-object v10, Lyy5;->a:[C

    .line 122
    .line 123
    array-length v12, v5

    .line 124
    const/4 v13, 0x1

    .line 125
    const/4 v14, 0x2

    .line 126
    if-ge v11, v12, :cond_a

    .line 127
    .line 128
    aget-boolean v12, v5, v11

    .line 129
    .line 130
    if-eqz v12, :cond_a

    .line 131
    .line 132
    move-object/from16 v16, v8

    .line 133
    .line 134
    :goto_4
    move/from16 v19, v13

    .line 135
    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :cond_a
    const/16 v12, 0x7f

    .line 139
    .line 140
    const/16 v15, 0x25

    .line 141
    .line 142
    move-object/from16 v16, v8

    .line 143
    .line 144
    const/4 v8, 0x3

    .line 145
    if-gt v11, v12, :cond_b

    .line 146
    .line 147
    new-array v8, v8, [C

    .line 148
    .line 149
    aput-char v15, v8, v2

    .line 150
    .line 151
    and-int/lit8 v12, v11, 0xf

    .line 152
    .line 153
    aget-char v12, v10, v12

    .line 154
    .line 155
    aput-char v12, v8, v14

    .line 156
    .line 157
    ushr-int/lit8 v12, v11, 0x4

    .line 158
    .line 159
    aget-char v10, v10, v12

    .line 160
    .line 161
    aput-char v10, v8, v13

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_b
    const/16 v12, 0x7ff

    .line 165
    .line 166
    const/16 v17, 0x5

    .line 167
    .line 168
    move/from16 v18, v8

    .line 169
    .line 170
    const/16 v8, 0xc

    .line 171
    .line 172
    move/from16 v19, v13

    .line 173
    .line 174
    const/4 v13, 0x6

    .line 175
    const/16 v20, 0x4

    .line 176
    .line 177
    const/16 v21, 0x8

    .line 178
    .line 179
    if-gt v11, v12, :cond_c

    .line 180
    .line 181
    new-array v12, v13, [C

    .line 182
    .line 183
    aput-char v15, v12, v2

    .line 184
    .line 185
    aput-char v15, v12, v18

    .line 186
    .line 187
    and-int/lit8 v13, v11, 0xf

    .line 188
    .line 189
    aget-char v13, v10, v13

    .line 190
    .line 191
    aput-char v13, v12, v17

    .line 192
    .line 193
    ushr-int/lit8 v13, v11, 0x4

    .line 194
    .line 195
    and-int/lit8 v13, v13, 0x3

    .line 196
    .line 197
    or-int/lit8 v13, v13, 0x8

    .line 198
    .line 199
    aget-char v13, v10, v13

    .line 200
    .line 201
    aput-char v13, v12, v20

    .line 202
    .line 203
    ushr-int/lit8 v13, v11, 0x6

    .line 204
    .line 205
    and-int/lit8 v13, v13, 0xf

    .line 206
    .line 207
    aget-char v13, v10, v13

    .line 208
    .line 209
    aput-char v13, v12, v14

    .line 210
    .line 211
    ushr-int/lit8 v13, v11, 0xa

    .line 212
    .line 213
    or-int/2addr v8, v13

    .line 214
    aget-char v8, v10, v8

    .line 215
    .line 216
    aput-char v8, v12, v19

    .line 217
    .line 218
    move-object v8, v12

    .line 219
    goto/16 :goto_5

    .line 220
    .line 221
    :cond_c
    const v12, 0xffff

    .line 222
    .line 223
    .line 224
    move/from16 v22, v13

    .line 225
    .line 226
    const/16 v13, 0x9

    .line 227
    .line 228
    const/16 v23, 0x7

    .line 229
    .line 230
    if-gt v11, v12, :cond_d

    .line 231
    .line 232
    new-array v8, v13, [C

    .line 233
    .line 234
    aput-char v15, v8, v2

    .line 235
    .line 236
    const/16 v12, 0x45

    .line 237
    .line 238
    aput-char v12, v8, v19

    .line 239
    .line 240
    aput-char v15, v8, v18

    .line 241
    .line 242
    aput-char v15, v8, v22

    .line 243
    .line 244
    and-int/lit8 v12, v11, 0xf

    .line 245
    .line 246
    aget-char v12, v10, v12

    .line 247
    .line 248
    aput-char v12, v8, v21

    .line 249
    .line 250
    ushr-int/lit8 v12, v11, 0x4

    .line 251
    .line 252
    and-int/lit8 v12, v12, 0x3

    .line 253
    .line 254
    or-int/lit8 v12, v12, 0x8

    .line 255
    .line 256
    aget-char v12, v10, v12

    .line 257
    .line 258
    aput-char v12, v8, v23

    .line 259
    .line 260
    ushr-int/lit8 v12, v11, 0x6

    .line 261
    .line 262
    and-int/lit8 v12, v12, 0xf

    .line 263
    .line 264
    aget-char v12, v10, v12

    .line 265
    .line 266
    aput-char v12, v8, v17

    .line 267
    .line 268
    ushr-int/lit8 v12, v11, 0xa

    .line 269
    .line 270
    and-int/lit8 v12, v12, 0x3

    .line 271
    .line 272
    or-int/lit8 v12, v12, 0x8

    .line 273
    .line 274
    aget-char v12, v10, v12

    .line 275
    .line 276
    aput-char v12, v8, v20

    .line 277
    .line 278
    ushr-int/lit8 v12, v11, 0xc

    .line 279
    .line 280
    aget-char v10, v10, v12

    .line 281
    .line 282
    aput-char v10, v8, v14

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_d
    const v12, 0x10ffff

    .line 286
    .line 287
    .line 288
    if-gt v11, v12, :cond_16

    .line 289
    .line 290
    new-array v8, v8, [C

    .line 291
    .line 292
    aput-char v15, v8, v2

    .line 293
    .line 294
    const/16 v12, 0x46

    .line 295
    .line 296
    aput-char v12, v8, v19

    .line 297
    .line 298
    aput-char v15, v8, v18

    .line 299
    .line 300
    aput-char v15, v8, v22

    .line 301
    .line 302
    aput-char v15, v8, v13

    .line 303
    .line 304
    and-int/lit8 v12, v11, 0xf

    .line 305
    .line 306
    aget-char v12, v10, v12

    .line 307
    .line 308
    const/16 v13, 0xb

    .line 309
    .line 310
    aput-char v12, v8, v13

    .line 311
    .line 312
    ushr-int/lit8 v12, v11, 0x4

    .line 313
    .line 314
    and-int/lit8 v12, v12, 0x3

    .line 315
    .line 316
    or-int/lit8 v12, v12, 0x8

    .line 317
    .line 318
    aget-char v12, v10, v12

    .line 319
    .line 320
    const/16 v13, 0xa

    .line 321
    .line 322
    aput-char v12, v8, v13

    .line 323
    .line 324
    ushr-int/lit8 v12, v11, 0x6

    .line 325
    .line 326
    and-int/lit8 v12, v12, 0xf

    .line 327
    .line 328
    aget-char v12, v10, v12

    .line 329
    .line 330
    aput-char v12, v8, v21

    .line 331
    .line 332
    ushr-int/lit8 v12, v11, 0xa

    .line 333
    .line 334
    and-int/lit8 v12, v12, 0x3

    .line 335
    .line 336
    or-int/lit8 v12, v12, 0x8

    .line 337
    .line 338
    aget-char v12, v10, v12

    .line 339
    .line 340
    aput-char v12, v8, v23

    .line 341
    .line 342
    ushr-int/lit8 v12, v11, 0xc

    .line 343
    .line 344
    and-int/lit8 v12, v12, 0xf

    .line 345
    .line 346
    aget-char v12, v10, v12

    .line 347
    .line 348
    aput-char v12, v8, v17

    .line 349
    .line 350
    ushr-int/lit8 v12, v11, 0x10

    .line 351
    .line 352
    and-int/lit8 v12, v12, 0x3

    .line 353
    .line 354
    or-int/lit8 v12, v12, 0x8

    .line 355
    .line 356
    aget-char v12, v10, v12

    .line 357
    .line 358
    aput-char v12, v8, v20

    .line 359
    .line 360
    ushr-int/lit8 v12, v11, 0x12

    .line 361
    .line 362
    and-int/lit8 v12, v12, 0x7

    .line 363
    .line 364
    aget-char v10, v10, v12

    .line 365
    .line 366
    aput-char v10, v8, v14

    .line 367
    .line 368
    :goto_5
    invoke-static {v11}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    .line 369
    .line 370
    .line 371
    move-result v10

    .line 372
    if-eqz v10, :cond_e

    .line 373
    .line 374
    move v13, v14

    .line 375
    goto :goto_6

    .line 376
    :cond_e
    move/from16 v13, v19

    .line 377
    .line 378
    :goto_6
    add-int/2addr v13, v3

    .line 379
    if-eqz v8, :cond_14

    .line 380
    .line 381
    sub-int v10, v3, v4

    .line 382
    .line 383
    add-int v11, v7, v10

    .line 384
    .line 385
    array-length v12, v8

    .line 386
    add-int/2addr v12, v11

    .line 387
    array-length v14, v6

    .line 388
    if-ge v14, v12, :cond_11

    .line 389
    .line 390
    sub-int v14, v1, v3

    .line 391
    .line 392
    add-int/2addr v14, v12

    .line 393
    add-int/lit8 v14, v14, 0x20

    .line 394
    .line 395
    if-ltz v14, :cond_10

    .line 396
    .line 397
    new-array v9, v14, [C

    .line 398
    .line 399
    if-lez v7, :cond_f

    .line 400
    .line 401
    invoke-static {v6, v2, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    .line 403
    .line 404
    :cond_f
    move-object v6, v9

    .line 405
    goto :goto_7

    .line 406
    :cond_10
    invoke-static {v9}, Le6;->e(Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    return-object v16

    .line 410
    :cond_11
    :goto_7
    if-lez v10, :cond_12

    .line 411
    .line 412
    invoke-virtual {v0, v4, v3, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 413
    .line 414
    .line 415
    move v7, v11

    .line 416
    :cond_12
    array-length v3, v8

    .line 417
    if-lez v3, :cond_13

    .line 418
    .line 419
    array-length v3, v8

    .line 420
    invoke-static {v8, v2, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    .line 422
    .line 423
    array-length v3, v8

    .line 424
    add-int/2addr v7, v3

    .line 425
    :cond_13
    move v4, v13

    .line 426
    :cond_14
    move v3, v13

    .line 427
    :goto_8
    if-ge v3, v1, :cond_4

    .line 428
    .line 429
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 430
    .line 431
    .line 432
    move-result v8

    .line 433
    array-length v9, v5

    .line 434
    if-ge v8, v9, :cond_4

    .line 435
    .line 436
    aget-boolean v8, v5, v8

    .line 437
    .line 438
    if-nez v8, :cond_15

    .line 439
    .line 440
    goto/16 :goto_2

    .line 441
    .line 442
    :cond_15
    add-int/lit8 v3, v3, 0x1

    .line 443
    .line 444
    goto :goto_8

    .line 445
    :cond_16
    const-string v0, "Invalid unicode character value "

    .line 446
    .line 447
    invoke-static {v11, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    return-object v16

    .line 455
    :cond_17
    move-object/from16 v16, v8

    .line 456
    .line 457
    const-string v0, "Trailing high surrogate at end of input"

    .line 458
    .line 459
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    return-object v16

    .line 463
    :cond_18
    move-object/from16 v16, v8

    .line 464
    .line 465
    const-string v0, "Index exceeds specified range"

    .line 466
    .line 467
    invoke-static {v0}, La6;->d(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    return-object v16

    .line 471
    :cond_19
    move-object/from16 v16, v8

    .line 472
    .line 473
    sub-int v3, v1, v4

    .line 474
    .line 475
    if-lez v3, :cond_1d

    .line 476
    .line 477
    add-int/2addr v3, v7

    .line 478
    array-length v5, v6

    .line 479
    if-ge v5, v3, :cond_1c

    .line 480
    .line 481
    if-ltz v3, :cond_1b

    .line 482
    .line 483
    new-array v5, v3, [C

    .line 484
    .line 485
    if-lez v7, :cond_1a

    .line 486
    .line 487
    invoke-static {v6, v2, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    .line 489
    .line 490
    :cond_1a
    move-object v6, v5

    .line 491
    goto :goto_9

    .line 492
    :cond_1b
    invoke-static {v9}, Le6;->e(Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    return-object v16

    .line 496
    :cond_1c
    :goto_9
    invoke-virtual {v0, v4, v1, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 497
    .line 498
    .line 499
    move v7, v3

    .line 500
    :cond_1d
    new-instance v0, Ljava/lang/String;

    .line 501
    .line 502
    invoke-direct {v0, v6, v2, v7}, Ljava/lang/String;-><init>([CII)V

    .line 503
    .line 504
    .line 505
    :cond_1e
    return-object v0
.end method

.method public static f(Ljava/lang/String;Ls40;)V
    .locals 10

    .line 1
    new-instance v0, Lbl2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lbl2;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, v0, Lbl2;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lbt2;

    .line 9
    .line 10
    iget-object v1, v0, Lbl2;->f:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lbt2;

    .line 13
    .line 14
    iget-object v2, v0, Lbl2;->d:Ljava/io/Serializable;

    .line 15
    .line 16
    check-cast v2, Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    const/4 v5, 0x2

    .line 24
    const/4 v6, 0x1

    .line 25
    if-ge v4, v3, :cond_a

    .line 26
    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    iget-boolean v8, v0, Lbl2;->c:Z

    .line 32
    .line 33
    const/16 v9, 0x2c

    .line 34
    .line 35
    if-eqz v8, :cond_0

    .line 36
    .line 37
    if-ne v7, v9, :cond_9

    .line 38
    .line 39
    add-int/lit8 v5, v4, 0x1

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Lbl2;->d(I)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_0
    iget v8, v0, Lbl2;->a:I

    .line 47
    .line 48
    if-eq v7, v9, :cond_6

    .line 49
    .line 50
    const/16 v9, 0x3b

    .line 51
    .line 52
    if-eq v7, v9, :cond_5

    .line 53
    .line 54
    const/16 v9, 0x3d

    .line 55
    .line 56
    if-eq v7, v9, :cond_3

    .line 57
    .line 58
    invoke-static {v8}, Ldj7;->A(I)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    if-eq v5, v6, :cond_1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    invoke-virtual {v1, v7, v4}, Lbt2;->a(CI)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    xor-int/2addr v5, v6

    .line 72
    iput-boolean v5, v0, Lbl2;->c:Z

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual {p0, v7, v4}, Lbt2;->a(CI)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    xor-int/2addr v5, v6

    .line 80
    iput-boolean v5, v0, Lbl2;->c:Z

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    if-ne v8, v6, :cond_9

    .line 84
    .line 85
    invoke-virtual {p0, v4, v2}, Lbt2;->b(ILjava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_4

    .line 90
    .line 91
    add-int/lit8 v6, v4, 0x1

    .line 92
    .line 93
    iput v5, v0, Lbl2;->a:I

    .line 94
    .line 95
    iput v6, v0, Lbl2;->b:I

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    iput-boolean v6, v0, Lbl2;->c:Z

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    if-ne v8, v5, :cond_9

    .line 102
    .line 103
    invoke-virtual {v1, v4, v2}, Lbt2;->b(ILjava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    xor-int/2addr v5, v6

    .line 108
    iput-boolean v5, v0, Lbl2;->c:Z

    .line 109
    .line 110
    add-int/lit8 v5, v4, 0x1

    .line 111
    .line 112
    const/4 v6, 0x3

    .line 113
    iput v6, v0, Lbl2;->a:I

    .line 114
    .line 115
    iput v5, v0, Lbl2;->b:I

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_6
    invoke-static {v8}, Ldj7;->A(I)I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eq v7, v6, :cond_8

    .line 123
    .line 124
    if-eq v7, v5, :cond_7

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_7
    iget v5, v0, Lbl2;->b:I

    .line 128
    .line 129
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    iput-object v5, v0, Lbl2;->g:Ljava/lang/Object;

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_8
    invoke-virtual {v1, v4, v2}, Lbt2;->b(ILjava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    :goto_1
    iget-object v5, p0, Lbt2;->g:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v6, v1, Lbt2;->g:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v7, v0, Lbl2;->g:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v7, Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {p1, v5, v6, v7}, Lbl2;->c(Ls40;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    add-int/lit8 v5, v4, 0x1

    .line 155
    .line 156
    invoke-virtual {v0, v5}, Lbl2;->d(I)V

    .line 157
    .line 158
    .line 159
    :cond_9
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_a
    iget v3, v0, Lbl2;->a:I

    .line 164
    .line 165
    invoke-static {v3}, Ldj7;->A(I)I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eq v3, v6, :cond_c

    .line 170
    .line 171
    if-eq v3, v5, :cond_b

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_b
    iget v0, v0, Lbl2;->b:I

    .line 175
    .line 176
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object p0, p0, Lbt2;->g:Ljava/lang/String;

    .line 185
    .line 186
    iget-object v1, v1, Lbt2;->g:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {p1, p0, v1, v0}, Lbl2;->c(Ls40;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_c
    iget-boolean v0, v0, Lbl2;->c:Z

    .line 193
    .line 194
    if-nez v0, :cond_d

    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-virtual {v1, v0, v2}, Lbt2;->b(ILjava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    iget-object p0, p0, Lbt2;->g:Ljava/lang/String;

    .line 204
    .line 205
    iget-object v0, v1, Lbt2;->g:Ljava/lang/String;

    .line 206
    .line 207
    const/4 v1, 0x0

    .line 208
    invoke-static {p1, p0, v0, v1}, Lbl2;->c(Ls40;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_d
    :goto_3
    return-void
.end method


# virtual methods
.method public final a(Lt40;Ljava/util/HashMap;Lr18;)V
    .locals 1

    .line 1
    sget-object p0, Lx13;->a:Llh9;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lt40;->b(Llh9;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzk0;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p0, Lfa4;->b:Lfa4;

    .line 13
    .line 14
    :goto_0
    invoke-interface {p0}, Lzk0;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lon8;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lon8;-><init>(Ljava/lang/StringBuilder;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v0}, Lzk0;->forEach(Lon8;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_2

    .line 39
    .line 40
    const-string p0, ""

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    add-int/lit8 p0, p0, -0x1

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    const-string p1, "baggage"

    .line 63
    .line 64
    invoke-interface {p3, p2, p1, p0}, Lr18;->set(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_2
    return-void
.end method

.method public final b()Ljava/util/Collection;
    .locals 0

    .line 1
    sget-object p0, Lpn8;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Lt40;Ljava/lang/Object;Lp18;)Lt40;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lxs4;->b:Lev1;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p0, Lt40;->b:Lt40;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const-string p0, "baggage"

    .line 12
    .line 13
    invoke-interface {p3, p2, p0}, Lp18;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    :goto_0
    return-object p1

    .line 27
    :cond_2
    sget-object p2, Lfa4;->b:Lfa4;

    .line 28
    .line 29
    new-instance p2, Ls40;

    .line 30
    .line 31
    const/4 p3, 0x1

    .line 32
    invoke-direct {p2, p3}, Ls40;-><init>(I)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-static {p0, p2}, Lpn8;->f(Ljava/lang/String;Ls40;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    iget-object p0, p2, Ls40;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance p2, Lfa4;

    .line 45
    .line 46
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-direct {p2, p0, p3}, Lha4;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p2, p1}, Lva4;->a(Lt40;)Lt40;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :catch_0
    return-object p1
.end method
