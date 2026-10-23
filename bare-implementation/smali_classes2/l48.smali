.class public abstract Ll48;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll48;->a:Ljava/security/SecureRandom;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;Lty3;Lj48;)Lk48;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    sget-object v2, Lrs9;->c:[B

    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    move-object/from16 v4, p0

    .line 12
    .line 13
    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const/4 v6, 0x3

    .line 18
    const/16 v7, 0x10

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x1

    .line 22
    const/4 v10, 0x2

    .line 23
    if-eqz v5, :cond_a

    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    rem-int/2addr v0, v10

    .line 30
    if-nez v0, :cond_9

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    div-int/2addr v0, v10

    .line 37
    new-array v4, v0, [B

    .line 38
    .line 39
    :goto_0
    if-ge v8, v0, :cond_1

    .line 40
    .line 41
    mul-int/lit8 v11, v8, 0x2

    .line 42
    .line 43
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v12

    .line 47
    invoke-static {v12, v7}, Ljava/lang/Character;->digit(CI)I

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    add-int/2addr v11, v9

    .line 52
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    invoke-static {v11, v7}, Ljava/lang/Character;->digit(CI)I

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    const/4 v13, -0x1

    .line 61
    if-eq v12, v13, :cond_0

    .line 62
    .line 63
    if-eq v11, v13, :cond_0

    .line 64
    .line 65
    shl-int/lit8 v12, v12, 0x4

    .line 66
    .line 67
    add-int/2addr v12, v11

    .line 68
    int-to-byte v11, v12

    .line 69
    aput-byte v11, v4, v8

    .line 70
    .line 71
    add-int/lit8 v8, v8, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const-string v0, "Invalid hex string"

    .line 75
    .line 76
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v3

    .line 80
    :cond_1
    :try_start_0
    new-instance v0, Lp96;

    .line 81
    .line 82
    invoke-direct {v0, v4}, Lp96;-><init>([B)V

    .line 83
    .line 84
    .line 85
    move-object v5, v3

    .line 86
    :goto_1
    iget v7, v0, Lp96;->b:I

    .line 87
    .line 88
    iget-object v8, v0, Lp96;->a:[B

    .line 89
    .line 90
    array-length v8, v8

    .line 91
    if-ge v7, v8, :cond_3

    .line 92
    .line 93
    invoke-virtual {v0}, Lp96;->c()J

    .line 94
    .line 95
    .line 96
    move-result-wide v7

    .line 97
    ushr-long v11, v7, v6

    .line 98
    .line 99
    long-to-int v9, v11

    .line 100
    const-wide/16 v11, 0x7

    .line 101
    .line 102
    and-long/2addr v7, v11

    .line 103
    long-to-int v7, v7

    .line 104
    if-ne v9, v10, :cond_2

    .line 105
    .line 106
    invoke-virtual {v0, v7}, Lp96;->b(I)[B

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {v0, v7}, Lp96;->e(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    if-eqz v5, :cond_4

    .line 116
    .line 117
    invoke-virtual {v1, v5, v2}, Lty3;->c([B[B)[B

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v1, Ljh6;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance v2, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    new-instance v5, Lp96;

    .line 132
    .line 133
    invoke-direct {v5, v0}, Lp96;-><init>([B)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Ll96;

    .line 137
    .line 138
    invoke-direct {v0, v1, v2}, Ll96;-><init>(Ljh6;Ljava/util/ArrayList;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v0}, Lp96;->a(Lrt3;)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Lk48;

    .line 145
    .line 146
    iget v1, v1, Ljh6;->a:I

    .line 147
    .line 148
    invoke-direct {v0, v1, v2}, Lk48;-><init>(ILjava/util/List;)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :catch_0
    move-exception v0

    .line 153
    goto :goto_2

    .line 154
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 155
    .line 156
    const-string v1, "Missing encrypted keyset"

    .line 157
    .line 158
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_2
    :try_start_1
    new-instance v1, Ljh6;

    .line 163
    .line 164
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 165
    .line 166
    .line 167
    new-instance v2, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    new-instance v5, Lp96;

    .line 173
    .line 174
    invoke-direct {v5, v4}, Lp96;-><init>([B)V

    .line 175
    .line 176
    .line 177
    new-instance v4, Ll96;

    .line 178
    .line 179
    invoke-direct {v4, v1, v2}, Ll96;-><init>(Ljh6;Ljava/util/ArrayList;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5, v4}, Lp96;->a(Lrt3;)V

    .line 183
    .line 184
    .line 185
    new-instance v4, Lk48;

    .line 186
    .line 187
    iget v1, v1, Ljh6;->a:I

    .line 188
    .line 189
    invoke-direct {v4, v1, v2}, Lk48;-><init>(ILjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    .line 191
    .line 192
    move-object v0, v4

    .line 193
    :goto_3
    iget-object v1, v0, Lk48;->b:Ljava/util/List;

    .line 194
    .line 195
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-nez v2, :cond_8

    .line 200
    .line 201
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_7

    .line 210
    .line 211
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Li48;

    .line 216
    .line 217
    iget-object v4, v2, Li48;->a:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual/range {p3 .. p3}, Lj48;->getTypeUrl()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_6

    .line 228
    .line 229
    iget-object v2, v2, Li48;->b:[B

    .line 230
    .line 231
    array-length v2, v2

    .line 232
    invoke-virtual/range {p3 .. p3}, Lj48;->getKeySizeBytes()I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-ne v2, v4, :cond_5

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_5
    const-string v0, "Unexpected key size"

    .line 240
    .line 241
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    return-object v3

    .line 245
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 246
    .line 247
    iget-object v1, v2, Li48;->a:Ljava/lang/String;

    .line 248
    .line 249
    const-string v2, "Unexpected key type: "

    .line 250
    .line 251
    invoke-static {v2, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v0

    .line 259
    :cond_7
    invoke-virtual {v0}, Lk48;->a()Li48;

    .line 260
    .line 261
    .line 262
    return-object v0

    .line 263
    :cond_8
    const-string v0, "Empty keyset"

    .line 264
    .line 265
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    return-object v3

    .line 269
    :catch_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 270
    .line 271
    const-string v2, "Cannot read encrypted keyset"

    .line 272
    .line 273
    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    .line 275
    .line 276
    throw v1

    .line 277
    :cond_9
    const-string v0, "Expected even-length hex string"

    .line 278
    .line 279
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    return-object v3

    .line 283
    :cond_a
    const/4 v5, 0x4

    .line 284
    new-array v11, v5, [B

    .line 285
    .line 286
    move v15, v8

    .line 287
    :goto_5
    sget-object v12, Ll48;->a:Ljava/security/SecureRandom;

    .line 288
    .line 289
    if-nez v15, :cond_b

    .line 290
    .line 291
    invoke-virtual {v12, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 292
    .line 293
    .line 294
    aget-byte v12, v11, v8

    .line 295
    .line 296
    and-int/lit8 v12, v12, 0x7f

    .line 297
    .line 298
    shl-int/lit8 v12, v12, 0x18

    .line 299
    .line 300
    aget-byte v13, v11, v9

    .line 301
    .line 302
    and-int/lit16 v13, v13, 0xff

    .line 303
    .line 304
    shl-int/2addr v13, v7

    .line 305
    or-int/2addr v12, v13

    .line 306
    aget-byte v13, v11, v10

    .line 307
    .line 308
    and-int/lit16 v13, v13, 0xff

    .line 309
    .line 310
    shl-int/lit8 v13, v13, 0x8

    .line 311
    .line 312
    or-int/2addr v12, v13

    .line 313
    aget-byte v13, v11, v6

    .line 314
    .line 315
    and-int/lit16 v13, v13, 0xff

    .line 316
    .line 317
    or-int v15, v12, v13

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lj48;->getKeySizeBytes()I

    .line 321
    .line 322
    .line 323
    move-result v11

    .line 324
    new-array v14, v11, [B

    .line 325
    .line 326
    invoke-virtual {v12, v14}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 327
    .line 328
    .line 329
    new-instance v11, Lk48;

    .line 330
    .line 331
    new-instance v12, Li48;

    .line 332
    .line 333
    invoke-virtual/range {p3 .. p3}, Lj48;->getTypeUrl()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v13

    .line 337
    const/16 v16, 0x1

    .line 338
    .line 339
    const/16 v17, 0x1

    .line 340
    .line 341
    invoke-direct/range {v12 .. v17}, Li48;-><init>(Ljava/lang/String;[BIII)V

    .line 342
    .line 343
    .line 344
    invoke-static {v12}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 345
    .line 346
    .line 347
    move-result-object v12

    .line 348
    invoke-direct {v11, v15, v12}, Lk48;-><init>(ILjava/util/List;)V

    .line 349
    .line 350
    .line 351
    new-instance v13, Lm1;

    .line 352
    .line 353
    invoke-direct {v13}, Lm1;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v13, v9, v15}, Lm1;->q(II)V

    .line 357
    .line 358
    .line 359
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 360
    .line 361
    .line 362
    move-result-object v12

    .line 363
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v14

    .line 367
    if-eqz v14, :cond_e

    .line 368
    .line 369
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v14

    .line 373
    check-cast v14, Li48;

    .line 374
    .line 375
    new-instance v15, Lm1;

    .line 376
    .line 377
    invoke-direct {v15}, Lm1;-><init>()V

    .line 378
    .line 379
    .line 380
    move-object/from16 v16, v3

    .line 381
    .line 382
    new-instance v3, Lm1;

    .line 383
    .line 384
    invoke-direct {v3}, Lm1;-><init>()V

    .line 385
    .line 386
    .line 387
    move/from16 v17, v7

    .line 388
    .line 389
    iget-object v7, v14, Li48;->a:Ljava/lang/String;

    .line 390
    .line 391
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 392
    .line 393
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3, v5, v9}, Lm1;->h([BI)V

    .line 404
    .line 405
    .line 406
    iget-object v5, v14, Li48;->a:Ljava/lang/String;

    .line 407
    .line 408
    sget-object v7, Lj48;->AES_SIV:Lj48;

    .line 409
    .line 410
    invoke-virtual {v7}, Lj48;->getTypeUrl()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    invoke-static {v5, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    if-eqz v6, :cond_c

    .line 419
    .line 420
    goto :goto_7

    .line 421
    :cond_c
    sget-object v7, Lj48;->AES_GCM:Lj48;

    .line 422
    .line 423
    invoke-virtual {v7}, Lj48;->getTypeUrl()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    invoke-static {v5, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v6

    .line 431
    if-eqz v6, :cond_d

    .line 432
    .line 433
    :goto_7
    new-instance v5, Lm1;

    .line 434
    .line 435
    invoke-direct {v5}, Lm1;-><init>()V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v5, v9, v8}, Lm1;->q(II)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v7}, Lj48;->getKeyValueFieldNumber()I

    .line 442
    .line 443
    .line 444
    move-result v6

    .line 445
    iget-object v7, v14, Li48;->b:[B

    .line 446
    .line 447
    invoke-virtual {v5, v7, v6}, Lm1;->h([BI)V

    .line 448
    .line 449
    .line 450
    iget-object v5, v5, Lm1;->a:Ljava/io/ByteArrayOutputStream;

    .line 451
    .line 452
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v3, v5, v10}, Lm1;->h([BI)V

    .line 460
    .line 461
    .line 462
    const/4 v6, 0x3

    .line 463
    invoke-virtual {v3, v6, v9}, Lm1;->q(II)V

    .line 464
    .line 465
    .line 466
    iget-object v3, v3, Lm1;->a:Ljava/io/ByteArrayOutputStream;

    .line 467
    .line 468
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v15, v3, v9}, Lm1;->h([BI)V

    .line 476
    .line 477
    .line 478
    iget v3, v14, Li48;->d:I

    .line 479
    .line 480
    invoke-virtual {v15, v10, v3}, Lm1;->q(II)V

    .line 481
    .line 482
    .line 483
    iget v3, v14, Li48;->c:I

    .line 484
    .line 485
    invoke-virtual {v15, v6, v3}, Lm1;->q(II)V

    .line 486
    .line 487
    .line 488
    iget v3, v14, Li48;->e:I

    .line 489
    .line 490
    const/4 v7, 0x4

    .line 491
    invoke-virtual {v15, v7, v3}, Lm1;->q(II)V

    .line 492
    .line 493
    .line 494
    iget-object v3, v15, Lm1;->a:Ljava/io/ByteArrayOutputStream;

    .line 495
    .line 496
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v13, v3, v10}, Lm1;->h([BI)V

    .line 504
    .line 505
    .line 506
    move v5, v7

    .line 507
    move-object/from16 v3, v16

    .line 508
    .line 509
    move/from16 v7, v17

    .line 510
    .line 511
    goto/16 :goto_6

    .line 512
    .line 513
    :cond_d
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 514
    .line 515
    const-string v1, "Unsupported key type: "

    .line 516
    .line 517
    invoke-static {v1, v5}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    throw v0

    .line 525
    :cond_e
    move-object/from16 v16, v3

    .line 526
    .line 527
    move/from16 v17, v7

    .line 528
    .line 529
    iget-object v3, v13, Lm1;->a:Ljava/io/ByteArrayOutputStream;

    .line 530
    .line 531
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    .line 537
    .line 538
    :try_start_2
    invoke-virtual {v1, v3, v2}, Lty3;->e([B[B)[B

    .line 539
    .line 540
    .line 541
    move-result-object v1
    :try_end_2
    .catch Ljava/security/ProviderException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 542
    goto :goto_8

    .line 543
    :catch_2
    invoke-static {}, Lus2;->v()V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v1, v3, v2}, Lty3;->e([B[B)[B

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    goto :goto_8

    .line 551
    :catch_3
    invoke-static {}, Lus2;->v()V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v1, v3, v2}, Lty3;->e([B[B)[B

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    :goto_8
    new-instance v2, Lm1;

    .line 559
    .line 560
    invoke-direct {v2}, Lm1;-><init>()V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v2, v1, v10}, Lm1;->h([BI)V

    .line 564
    .line 565
    .line 566
    iget-object v1, v2, Lm1;->a:Ljava/io/ByteArrayOutputStream;

    .line 567
    .line 568
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    new-instance v3, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    array-length v4, v1

    .line 582
    mul-int/2addr v4, v10

    .line 583
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 584
    .line 585
    .line 586
    array-length v4, v1

    .line 587
    :goto_9
    if-ge v8, v4, :cond_f

    .line 588
    .line 589
    aget-byte v5, v1, v8

    .line 590
    .line 591
    and-int/lit16 v5, v5, 0xff

    .line 592
    .line 593
    div-int/lit8 v6, v5, 0x10

    .line 594
    .line 595
    const-string v7, "0123456789abcdef"

    .line 596
    .line 597
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 598
    .line 599
    .line 600
    move-result v6

    .line 601
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    rem-int/lit8 v5, v5, 0x10

    .line 605
    .line 606
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 607
    .line 608
    .line 609
    move-result v5

    .line 610
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    add-int/lit8 v8, v8, 0x1

    .line 614
    .line 615
    goto :goto_9

    .line 616
    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    if-eqz v0, :cond_10

    .line 629
    .line 630
    return-object v11

    .line 631
    :cond_10
    const-string v0, "Failed to write encrypted keyset"

    .line 632
    .line 633
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    return-object v16
.end method
