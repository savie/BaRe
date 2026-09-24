.class public final Lb8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic c:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "recoverEmail"

    .line 12
    .line 13
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "resetPassword"

    .line 22
    .line 23
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "signIn"

    .line 32
    .line 33
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string v6, "verifyEmail"

    .line 42
    .line 43
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x5

    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const-string v6, "verifyBeforeChangeEmail"

    .line 52
    .line 53
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const/4 v5, 0x6

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const-string v6, "revertSecondFactorAddition"

    .line 62
    .line 63
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    :cond_0
    mul-int/2addr v3, v1

    .line 77
    new-array v5, v3, [Ljava/lang/Object;

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    shl-int/2addr v6, v4

    .line 86
    if-le v6, v3, :cond_1

    .line 87
    .line 88
    invoke-static {v3, v6}, Ljb9;->m0(II)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    move v3, v2

    .line 101
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_5

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    check-cast v6, Ljava/util/Map$Entry;

    .line 112
    .line 113
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    add-int/lit8 v8, v3, 0x1

    .line 122
    .line 123
    shl-int/lit8 v9, v8, 0x1

    .line 124
    .line 125
    array-length v10, v5

    .line 126
    if-le v9, v10, :cond_2

    .line 127
    .line 128
    array-length v10, v5

    .line 129
    invoke-static {v10, v9}, Ljb9;->m0(II)I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    :cond_2
    if-eqz v7, :cond_4

    .line 138
    .line 139
    if-eqz v6, :cond_3

    .line 140
    .line 141
    mul-int/lit8 v3, v3, 0x2

    .line 142
    .line 143
    aput-object v7, v5, v3

    .line 144
    .line 145
    add-int/2addr v3, v4

    .line 146
    aput-object v6, v5, v3

    .line 147
    .line 148
    move v3, v8

    .line 149
    goto :goto_0

    .line 150
    :cond_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, "null value in entry: "

    .line 155
    .line 156
    const-string v2, "=null"

    .line 157
    .line 158
    invoke-static {v1, v0, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const-string v1, "null key in entry: null="

    .line 171
    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_5
    if-nez v3, :cond_7

    .line 181
    .line 182
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 183
    goto/16 :goto_10

    .line 184
    .line 185
    :cond_7
    if-ne v3, v4, :cond_8

    .line 186
    .line 187
    aget-object v1, v5, v2

    .line 188
    .line 189
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    aget-object v1, v5, v4

    .line 193
    .line 194
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_8
    array-length v6, v5

    .line 199
    shr-int/2addr v6, v4

    .line 200
    invoke-static {v3, v6}, Lpe4;->O(II)V

    .line 201
    .line 202
    .line 203
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    const v7, 0x2ccccccc

    .line 208
    .line 209
    .line 210
    if-ge v6, v7, :cond_9

    .line 211
    .line 212
    add-int/lit8 v7, v6, -0x1

    .line 213
    .line 214
    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    shl-int/2addr v7, v4

    .line 219
    :goto_2
    int-to-double v8, v7

    .line 220
    const-wide v10, 0x3fe6666666666666L    # 0.7

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    mul-double/2addr v8, v10

    .line 226
    int-to-double v10, v6

    .line 227
    cmpg-double v8, v8, v10

    .line 228
    .line 229
    if-gez v8, :cond_b

    .line 230
    .line 231
    shl-int/lit8 v7, v7, 0x1

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_9
    const/high16 v7, 0x40000000    # 2.0f

    .line 235
    .line 236
    if-ge v6, v7, :cond_a

    .line 237
    .line 238
    move v6, v4

    .line 239
    goto :goto_3

    .line 240
    :cond_a
    move v6, v2

    .line 241
    :goto_3
    if-eqz v6, :cond_1f

    .line 242
    .line 243
    :cond_b
    if-ne v3, v4, :cond_c

    .line 244
    .line 245
    aget-object v3, v5, v2

    .line 246
    .line 247
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    aget-object v3, v5, v4

    .line 251
    .line 252
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move/from16 v16, v1

    .line 256
    .line 257
    move/from16 v17, v2

    .line 258
    .line 259
    const/4 v7, 0x0

    .line 260
    goto/16 :goto_f

    .line 261
    .line 262
    :cond_c
    add-int/lit8 v6, v7, -0x1

    .line 263
    .line 264
    const/16 v8, 0x80

    .line 265
    .line 266
    const/4 v9, 0x3

    .line 267
    const/4 v10, -0x1

    .line 268
    if-gt v7, v8, :cond_12

    .line 269
    .line 270
    new-array v7, v7, [B

    .line 271
    .line 272
    invoke-static {v7, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 273
    .line 274
    .line 275
    move v8, v2

    .line 276
    move v10, v8

    .line 277
    const/4 v11, 0x0

    .line 278
    :goto_4
    if-ge v8, v3, :cond_10

    .line 279
    .line 280
    mul-int/lit8 v12, v8, 0x2

    .line 281
    .line 282
    mul-int/lit8 v13, v10, 0x2

    .line 283
    .line 284
    aget-object v14, v5, v12

    .line 285
    .line 286
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    xor-int/2addr v12, v4

    .line 290
    aget-object v12, v5, v12

    .line 291
    .line 292
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 296
    .line 297
    .line 298
    move-result v15

    .line 299
    invoke-static {v15}, Lnc8;->s0(I)I

    .line 300
    .line 301
    .line 302
    move-result v15

    .line 303
    :goto_5
    and-int/2addr v15, v6

    .line 304
    aget-byte v0, v7, v15

    .line 305
    .line 306
    move/from16 v16, v1

    .line 307
    .line 308
    const/16 v1, 0xff

    .line 309
    .line 310
    and-int/2addr v0, v1

    .line 311
    if-ne v0, v1, :cond_e

    .line 312
    .line 313
    int-to-byte v0, v13

    .line 314
    aput-byte v0, v7, v15

    .line 315
    .line 316
    if-ge v10, v8, :cond_d

    .line 317
    .line 318
    aput-object v14, v5, v13

    .line 319
    .line 320
    xor-int/lit8 v0, v13, 0x1

    .line 321
    .line 322
    aput-object v12, v5, v0

    .line 323
    .line 324
    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_e
    aget-object v1, v5, v0

    .line 328
    .line 329
    invoke-virtual {v14, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_f

    .line 334
    .line 335
    new-instance v11, Lf89;

    .line 336
    .line 337
    xor-int/lit8 v0, v0, 0x1

    .line 338
    .line 339
    aget-object v1, v5, v0

    .line 340
    .line 341
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    invoke-direct {v11, v14, v12, v1}, Lf89;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    aput-object v12, v5, v0

    .line 348
    .line 349
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 350
    .line 351
    move/from16 v1, v16

    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_f
    add-int/lit8 v15, v15, 0x1

    .line 355
    .line 356
    move/from16 v1, v16

    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_10
    move/from16 v16, v1

    .line 360
    .line 361
    if-ne v10, v3, :cond_11

    .line 362
    .line 363
    :goto_7
    move/from16 v17, v2

    .line 364
    .line 365
    goto/16 :goto_f

    .line 366
    .line 367
    :cond_11
    new-array v0, v9, [Ljava/lang/Object;

    .line 368
    .line 369
    aput-object v7, v0, v2

    .line 370
    .line 371
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    aput-object v1, v0, v4

    .line 376
    .line 377
    aput-object v11, v0, v16

    .line 378
    .line 379
    :goto_8
    move-object v7, v0

    .line 380
    goto :goto_7

    .line 381
    :cond_12
    move/from16 v16, v1

    .line 382
    .line 383
    const v0, 0x8000

    .line 384
    .line 385
    .line 386
    if-gt v7, v0, :cond_18

    .line 387
    .line 388
    new-array v7, v7, [S

    .line 389
    .line 390
    invoke-static {v7, v10}, Ljava/util/Arrays;->fill([SS)V

    .line 391
    .line 392
    .line 393
    move v0, v2

    .line 394
    move v1, v0

    .line 395
    const/4 v8, 0x0

    .line 396
    :goto_9
    if-ge v0, v3, :cond_16

    .line 397
    .line 398
    mul-int/lit8 v10, v0, 0x2

    .line 399
    .line 400
    mul-int/lit8 v11, v1, 0x2

    .line 401
    .line 402
    aget-object v12, v5, v10

    .line 403
    .line 404
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    xor-int/2addr v10, v4

    .line 408
    aget-object v10, v5, v10

    .line 409
    .line 410
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 414
    .line 415
    .line 416
    move-result v13

    .line 417
    invoke-static {v13}, Lnc8;->s0(I)I

    .line 418
    .line 419
    .line 420
    move-result v13

    .line 421
    :goto_a
    and-int/2addr v13, v6

    .line 422
    aget-short v14, v7, v13

    .line 423
    .line 424
    const v15, 0xffff

    .line 425
    .line 426
    .line 427
    and-int/2addr v14, v15

    .line 428
    if-ne v14, v15, :cond_14

    .line 429
    .line 430
    int-to-short v14, v11

    .line 431
    aput-short v14, v7, v13

    .line 432
    .line 433
    if-ge v1, v0, :cond_13

    .line 434
    .line 435
    aput-object v12, v5, v11

    .line 436
    .line 437
    xor-int/lit8 v11, v11, 0x1

    .line 438
    .line 439
    aput-object v10, v5, v11

    .line 440
    .line 441
    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 442
    .line 443
    goto :goto_b

    .line 444
    :cond_14
    aget-object v15, v5, v14

    .line 445
    .line 446
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v15

    .line 450
    if-eqz v15, :cond_15

    .line 451
    .line 452
    new-instance v8, Lf89;

    .line 453
    .line 454
    xor-int/lit8 v11, v14, 0x1

    .line 455
    .line 456
    aget-object v13, v5, v11

    .line 457
    .line 458
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    invoke-direct {v8, v12, v10, v13}, Lf89;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    aput-object v10, v5, v11

    .line 465
    .line 466
    :goto_b
    add-int/lit8 v0, v0, 0x1

    .line 467
    .line 468
    goto :goto_9

    .line 469
    :cond_15
    add-int/lit8 v13, v13, 0x1

    .line 470
    .line 471
    goto :goto_a

    .line 472
    :cond_16
    if-ne v1, v3, :cond_17

    .line 473
    .line 474
    goto :goto_7

    .line 475
    :cond_17
    new-array v0, v9, [Ljava/lang/Object;

    .line 476
    .line 477
    aput-object v7, v0, v2

    .line 478
    .line 479
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    aput-object v1, v0, v4

    .line 484
    .line 485
    aput-object v8, v0, v16

    .line 486
    .line 487
    goto :goto_8

    .line 488
    :cond_18
    new-array v7, v7, [I

    .line 489
    .line 490
    invoke-static {v7, v10}, Ljava/util/Arrays;->fill([II)V

    .line 491
    .line 492
    .line 493
    move v0, v2

    .line 494
    move v1, v0

    .line 495
    const/4 v8, 0x0

    .line 496
    :goto_c
    if-ge v0, v3, :cond_1c

    .line 497
    .line 498
    mul-int/lit8 v11, v0, 0x2

    .line 499
    .line 500
    mul-int/lit8 v12, v1, 0x2

    .line 501
    .line 502
    aget-object v13, v5, v11

    .line 503
    .line 504
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    xor-int/2addr v11, v4

    .line 508
    aget-object v11, v5, v11

    .line 509
    .line 510
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 514
    .line 515
    .line 516
    move-result v14

    .line 517
    invoke-static {v14}, Lnc8;->s0(I)I

    .line 518
    .line 519
    .line 520
    move-result v14

    .line 521
    :goto_d
    and-int/2addr v14, v6

    .line 522
    aget v15, v7, v14

    .line 523
    .line 524
    if-ne v15, v10, :cond_1a

    .line 525
    .line 526
    aput v12, v7, v14

    .line 527
    .line 528
    if-ge v1, v0, :cond_19

    .line 529
    .line 530
    aput-object v13, v5, v12

    .line 531
    .line 532
    xor-int/lit8 v12, v12, 0x1

    .line 533
    .line 534
    aput-object v11, v5, v12

    .line 535
    .line 536
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 537
    .line 538
    move/from16 v17, v2

    .line 539
    .line 540
    goto :goto_e

    .line 541
    :cond_1a
    move/from16 v17, v2

    .line 542
    .line 543
    aget-object v2, v5, v15

    .line 544
    .line 545
    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result v2

    .line 549
    if-eqz v2, :cond_1b

    .line 550
    .line 551
    new-instance v8, Lf89;

    .line 552
    .line 553
    xor-int/lit8 v2, v15, 0x1

    .line 554
    .line 555
    aget-object v12, v5, v2

    .line 556
    .line 557
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    invoke-direct {v8, v13, v11, v12}, Lf89;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    aput-object v11, v5, v2

    .line 564
    .line 565
    :goto_e
    add-int/lit8 v0, v0, 0x1

    .line 566
    .line 567
    move/from16 v2, v17

    .line 568
    .line 569
    goto :goto_c

    .line 570
    :cond_1b
    add-int/lit8 v14, v14, 0x1

    .line 571
    .line 572
    move/from16 v2, v17

    .line 573
    .line 574
    goto :goto_d

    .line 575
    :cond_1c
    move/from16 v17, v2

    .line 576
    .line 577
    if-ne v1, v3, :cond_1d

    .line 578
    .line 579
    goto :goto_f

    .line 580
    :cond_1d
    new-array v0, v9, [Ljava/lang/Object;

    .line 581
    .line 582
    aput-object v7, v0, v17

    .line 583
    .line 584
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    aput-object v1, v0, v4

    .line 589
    .line 590
    aput-object v8, v0, v16

    .line 591
    .line 592
    move-object v7, v0

    .line 593
    :goto_f
    nop

    .line 594
    instance-of v0, v7, [Ljava/lang/Object;

    .line 595
    .line 596
    if-eqz v0, :cond_6

    .line 597
    .line 598
    check-cast v7, [Ljava/lang/Object;

    .line 599
    .line 600
    aget-object v0, v7, v16

    .line 601
    .line 602
    check-cast v0, Lf89;

    .line 603
    .line 604
    aget-object v1, v7, v17

    .line 605
    .line 606
    aget-object v1, v7, v4

    .line 607
    .line 608
    check-cast v1, Ljava/lang/Integer;

    .line 609
    .line 610
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 611
    .line 612
    .line 613
    move-result v1

    .line 614
    shl-int/2addr v1, v4

    .line 615
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    :goto_10
    if-nez v0, :cond_1e

    .line 619
    .line 620
    return-void

    .line 621
    :cond_1e
    iget-object v1, v0, Lf89;->a:Ljava/lang/Object;

    .line 622
    .line 623
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    iget-object v3, v0, Lf89;->b:Ljava/lang/Object;

    .line 628
    .line 629
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    iget-object v0, v0, Lf89;->c:Ljava/lang/Object;

    .line 638
    .line 639
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    const-string v4, " and "

    .line 644
    .line 645
    const-string v5, "Multiple entries with same key: "

    .line 646
    .line 647
    const-string v6, "="

    .line 648
    .line 649
    invoke-static {v5, v2, v6, v3, v4}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    invoke-static {v2, v1, v6, v0}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    return-void

    .line 661
    :cond_1f
    const-string v0, "collection too large"

    .line 662
    .line 663
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "apiKey"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lb8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "oobCode"

    .line 11
    .line 12
    invoke-static {p1, v1}, Lb8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "mode"

    .line 17
    .line 18
    invoke-static {p1, v2}, Lb8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-static {v0}, Lly8;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lly8;->e(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lb8;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v2}, Lly8;->e(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "continueUrl"

    .line 40
    .line 41
    invoke-static {p1, v0}, Lb8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    const-string v0, "lang"

    .line 45
    .line 46
    invoke-static {p1, v0}, Lb8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    const-string v0, "tenantId"

    .line 50
    .line 51
    invoke-static {p1, v0}, Lb8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lb8;->b:Ljava/lang/String;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    const-string p0, "apiKey, oobCode and mode are required in a valid action code URL"

    .line 59
    .line 60
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "link"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lly8;->e(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return-object p0

    .line 44
    :catch_0
    :cond_1
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method
