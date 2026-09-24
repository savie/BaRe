.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/CacheInterceptor$Companion;
    }
.end annotation


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 30

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v2, Lokhttp3/internal/cache/CacheStrategy;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, v1, v3}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    .line 15
    .line 16
    .line 17
    iget-object v4, v1, Lokhttp3/Request;->f:Lokhttp3/CacheControl;

    .line 18
    .line 19
    if-nez v4, :cond_1a

    .line 20
    .line 21
    sget v4, Lokhttp3/CacheControl;->n:I

    .line 22
    .line 23
    iget-object v4, v1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Lokhttp3/Headers;->size()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    move-object v11, v3

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v10, 0x1

    .line 35
    const/4 v12, 0x0

    .line 36
    const/4 v13, 0x0

    .line 37
    const/4 v14, -0x1

    .line 38
    const/4 v15, -0x1

    .line 39
    const/16 v16, 0x0

    .line 40
    .line 41
    const/16 v17, 0x0

    .line 42
    .line 43
    const/16 v18, 0x0

    .line 44
    .line 45
    const/16 v19, -0x1

    .line 46
    .line 47
    const/16 v20, -0x1

    .line 48
    .line 49
    const/16 v21, 0x0

    .line 50
    .line 51
    const/16 v22, 0x0

    .line 52
    .line 53
    const/16 v23, 0x0

    .line 54
    .line 55
    :goto_0
    if-ge v9, v6, :cond_18

    .line 56
    .line 57
    const/16 p0, 0x1

    .line 58
    .line 59
    invoke-virtual {v4, v9}, Lokhttp3/Headers;->e(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v4, v9}, Lokhttp3/Headers;->g(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string v3, "Cache-Control"

    .line 68
    .line 69
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    if-eqz v11, :cond_0

    .line 76
    .line 77
    :goto_1
    const/4 v10, 0x0

    .line 78
    goto :goto_2

    .line 79
    :cond_0
    move-object v11, v5

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    const-string v3, "Pragma"

    .line 82
    .line 83
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_17

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :goto_2
    const/4 v3, 0x0

    .line 91
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-ge v3, v7, :cond_17

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    move v8, v3

    .line 102
    :goto_4
    if-ge v8, v7, :cond_3

    .line 103
    .line 104
    move-object/from16 v26, v2

    .line 105
    .line 106
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    move-object/from16 v27, v4

    .line 111
    .line 112
    const-string v4, "=,;"

    .line 113
    .line 114
    invoke-static {v4, v2}, Lnq7;->a0(Ljava/lang/CharSequence;C)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 122
    .line 123
    move-object/from16 v2, v26

    .line 124
    .line 125
    move-object/from16 v4, v27

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_3
    move-object/from16 v26, v2

    .line 129
    .line 130
    move-object/from16 v27, v4

    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    :goto_5
    invoke-virtual {v5, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v2}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eq v8, v3, :cond_a

    .line 153
    .line 154
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    const/16 v4, 0x2c

    .line 159
    .line 160
    if-eq v3, v4, :cond_a

    .line 161
    .line 162
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    const/16 v4, 0x3b

    .line 167
    .line 168
    if-ne v3, v4, :cond_4

    .line 169
    .line 170
    goto/16 :goto_a

    .line 171
    .line 172
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 173
    .line 174
    sget-object v3, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    :goto_6
    if-ge v8, v3, :cond_6

    .line 181
    .line 182
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    const/16 v7, 0x20

    .line 187
    .line 188
    if-eq v4, v7, :cond_5

    .line 189
    .line 190
    const/16 v7, 0x9

    .line 191
    .line 192
    if-eq v4, v7, :cond_5

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    :goto_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-ge v8, v3, :cond_7

    .line 207
    .line 208
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    const/16 v4, 0x22

    .line 213
    .line 214
    if-ne v3, v4, :cond_7

    .line 215
    .line 216
    add-int/lit8 v8, v8, 0x1

    .line 217
    .line 218
    const/4 v3, 0x4

    .line 219
    invoke-static {v4, v8, v3, v5}, Lnq7;->g0(CIILjava/lang/CharSequence;)I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    add-int/lit8 v3, v3, 0x1

    .line 228
    .line 229
    goto :goto_b

    .line 230
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    move v4, v8

    .line 235
    :goto_8
    if-ge v4, v3, :cond_9

    .line 236
    .line 237
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    move/from16 v28, v3

    .line 242
    .line 243
    const-string v3, ",;"

    .line 244
    .line 245
    invoke-static {v3, v7}, Lnq7;->a0(Ljava/lang/CharSequence;C)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_8

    .line 250
    .line 251
    goto :goto_9

    .line 252
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 253
    .line 254
    move/from16 v3, v28

    .line 255
    .line 256
    goto :goto_8

    .line 257
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    :goto_9
    invoke-virtual {v5, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-static {v3}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    move/from16 v29, v4

    .line 274
    .line 275
    move-object v4, v3

    .line 276
    move/from16 v3, v29

    .line 277
    .line 278
    goto :goto_b

    .line 279
    :cond_a
    :goto_a
    add-int/lit8 v8, v8, 0x1

    .line 280
    .line 281
    move v3, v8

    .line 282
    const/4 v4, 0x0

    .line 283
    :goto_b
    const-string v7, "no-cache"

    .line 284
    .line 285
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    if-eqz v7, :cond_c

    .line 290
    .line 291
    move/from16 v12, p0

    .line 292
    .line 293
    :cond_b
    :goto_c
    move-object/from16 v2, v26

    .line 294
    .line 295
    move-object/from16 v4, v27

    .line 296
    .line 297
    goto/16 :goto_3

    .line 298
    .line 299
    :cond_c
    const-string v7, "no-store"

    .line 300
    .line 301
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-eqz v7, :cond_d

    .line 306
    .line 307
    move/from16 v13, p0

    .line 308
    .line 309
    goto :goto_c

    .line 310
    :cond_d
    const-string v7, "max-age"

    .line 311
    .line 312
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    if-eqz v7, :cond_e

    .line 317
    .line 318
    const/4 v7, -0x1

    .line 319
    invoke-static {v7, v4}, Lokhttp3/internal/_UtilCommonKt;->o(ILjava/lang/String;)I

    .line 320
    .line 321
    .line 322
    move-result v14

    .line 323
    goto :goto_c

    .line 324
    :cond_e
    const/4 v7, -0x1

    .line 325
    const-string v8, "s-maxage"

    .line 326
    .line 327
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result v8

    .line 331
    if-eqz v8, :cond_f

    .line 332
    .line 333
    invoke-static {v7, v4}, Lokhttp3/internal/_UtilCommonKt;->o(ILjava/lang/String;)I

    .line 334
    .line 335
    .line 336
    move-result v15

    .line 337
    goto :goto_c

    .line 338
    :cond_f
    const-string v7, "private"

    .line 339
    .line 340
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    if-eqz v7, :cond_10

    .line 345
    .line 346
    move/from16 v16, p0

    .line 347
    .line 348
    goto :goto_c

    .line 349
    :cond_10
    const-string v7, "public"

    .line 350
    .line 351
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    move-result v7

    .line 355
    if-eqz v7, :cond_11

    .line 356
    .line 357
    move/from16 v17, p0

    .line 358
    .line 359
    goto :goto_c

    .line 360
    :cond_11
    const-string v7, "must-revalidate"

    .line 361
    .line 362
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    if-eqz v7, :cond_12

    .line 367
    .line 368
    move/from16 v18, p0

    .line 369
    .line 370
    goto :goto_c

    .line 371
    :cond_12
    const-string v7, "max-stale"

    .line 372
    .line 373
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 374
    .line 375
    .line 376
    move-result v7

    .line 377
    if-eqz v7, :cond_13

    .line 378
    .line 379
    const v2, 0x7fffffff

    .line 380
    .line 381
    .line 382
    invoke-static {v2, v4}, Lokhttp3/internal/_UtilCommonKt;->o(ILjava/lang/String;)I

    .line 383
    .line 384
    .line 385
    move-result v19

    .line 386
    goto :goto_c

    .line 387
    :cond_13
    const-string v7, "min-fresh"

    .line 388
    .line 389
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result v7

    .line 393
    if-eqz v7, :cond_14

    .line 394
    .line 395
    const/4 v7, -0x1

    .line 396
    invoke-static {v7, v4}, Lokhttp3/internal/_UtilCommonKt;->o(ILjava/lang/String;)I

    .line 397
    .line 398
    .line 399
    move-result v20

    .line 400
    goto :goto_c

    .line 401
    :cond_14
    const/4 v7, -0x1

    .line 402
    const-string v4, "only-if-cached"

    .line 403
    .line 404
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    if-eqz v4, :cond_15

    .line 409
    .line 410
    move/from16 v21, p0

    .line 411
    .line 412
    goto :goto_c

    .line 413
    :cond_15
    const-string v4, "no-transform"

    .line 414
    .line 415
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    if-eqz v4, :cond_16

    .line 420
    .line 421
    move/from16 v22, p0

    .line 422
    .line 423
    goto/16 :goto_c

    .line 424
    .line 425
    :cond_16
    const-string v4, "immutable"

    .line 426
    .line 427
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-eqz v2, :cond_b

    .line 432
    .line 433
    move/from16 v23, p0

    .line 434
    .line 435
    goto/16 :goto_c

    .line 436
    .line 437
    :cond_17
    move-object/from16 v26, v2

    .line 438
    .line 439
    move-object/from16 v27, v4

    .line 440
    .line 441
    const/4 v7, -0x1

    .line 442
    add-int/lit8 v9, v9, 0x1

    .line 443
    .line 444
    move-object/from16 v2, v26

    .line 445
    .line 446
    move-object/from16 v4, v27

    .line 447
    .line 448
    const/4 v3, 0x0

    .line 449
    goto/16 :goto_0

    .line 450
    .line 451
    :cond_18
    move-object/from16 v26, v2

    .line 452
    .line 453
    if-nez v10, :cond_19

    .line 454
    .line 455
    const/16 v24, 0x0

    .line 456
    .line 457
    goto :goto_d

    .line 458
    :cond_19
    move-object/from16 v24, v11

    .line 459
    .line 460
    :goto_d
    new-instance v11, Lokhttp3/CacheControl;

    .line 461
    .line 462
    invoke-direct/range {v11 .. v24}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    .line 463
    .line 464
    .line 465
    iput-object v11, v1, Lokhttp3/Request;->f:Lokhttp3/CacheControl;

    .line 466
    .line 467
    move-object v4, v11

    .line 468
    goto :goto_e

    .line 469
    :cond_1a
    move-object/from16 v26, v2

    .line 470
    .line 471
    :goto_e
    iget-boolean v1, v4, Lokhttp3/CacheControl;->j:Z

    .line 472
    .line 473
    if-eqz v1, :cond_1b

    .line 474
    .line 475
    new-instance v2, Lokhttp3/internal/cache/CacheStrategy;

    .line 476
    .line 477
    const/4 v1, 0x0

    .line 478
    invoke-direct {v2, v1, v1}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    .line 479
    .line 480
    .line 481
    goto :goto_f

    .line 482
    :cond_1b
    move-object/from16 v2, v26

    .line 483
    .line 484
    :goto_f
    iget-object v1, v2, Lokhttp3/internal/cache/CacheStrategy;->a:Lokhttp3/Request;

    .line 485
    .line 486
    iget-object v2, v2, Lokhttp3/internal/cache/CacheStrategy;->b:Lokhttp3/Response;

    .line 487
    .line 488
    if-nez v1, :cond_1c

    .line 489
    .line 490
    if-nez v2, :cond_1c

    .line 491
    .line 492
    new-instance v1, Lokhttp3/Response$Builder;

    .line 493
    .line 494
    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    .line 495
    .line 496
    .line 497
    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    iput-object v0, v1, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 503
    .line 504
    sget-object v0, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    .line 505
    .line 506
    iput-object v0, v1, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    .line 507
    .line 508
    const/16 v0, 0x1f8

    .line 509
    .line 510
    iput v0, v1, Lokhttp3/Response$Builder;->c:I

    .line 511
    .line 512
    const-string v0, "Unsatisfiable Request (only-if-cached)"

    .line 513
    .line 514
    iput-object v0, v1, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    .line 515
    .line 516
    const-wide/16 v2, -0x1

    .line 517
    .line 518
    iput-wide v2, v1, Lokhttp3/Response$Builder;->l:J

    .line 519
    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 521
    .line 522
    .line 523
    move-result-wide v2

    .line 524
    iput-wide v2, v1, Lokhttp3/Response$Builder;->m:J

    .line 525
    .line 526
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    return-object v0

    .line 531
    :cond_1c
    const-string v3, "cacheResponse"

    .line 532
    .line 533
    if-nez v1, :cond_1d

    .line 534
    .line 535
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2}, Lokhttp3/Response;->g()Lokhttp3/Response$Builder;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-static {v2}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    invoke-static {v3, v1}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 547
    .line 548
    .line 549
    iput-object v1, v0, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    .line 550
    .line 551
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    return-object v0

    .line 556
    :cond_1d
    invoke-virtual {v0, v1}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    const-string v1, "networkResponse"

    .line 561
    .line 562
    if-eqz v2, :cond_28

    .line 563
    .line 564
    iget v4, v0, Lokhttp3/Response;->d:I

    .line 565
    .line 566
    const/16 v5, 0x130

    .line 567
    .line 568
    if-ne v4, v5, :cond_27

    .line 569
    .line 570
    invoke-virtual {v2}, Lokhttp3/Response;->g()Lokhttp3/Response$Builder;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    iget-object v5, v2, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 575
    .line 576
    iget-object v6, v0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 577
    .line 578
    new-instance v7, Lokhttp3/Headers$Builder;

    .line 579
    .line 580
    invoke-direct {v7}, Lokhttp3/Headers$Builder;-><init>()V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    .line 584
    .line 585
    .line 586
    move-result v8

    .line 587
    const/4 v9, 0x0

    .line 588
    :goto_10
    const-string v10, "Content-Type"

    .line 589
    .line 590
    const-string v11, "Content-Encoding"

    .line 591
    .line 592
    const-string v12, "Content-Length"

    .line 593
    .line 594
    if-ge v9, v8, :cond_23

    .line 595
    .line 596
    invoke-virtual {v5, v9}, Lokhttp3/Headers;->e(I)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v13

    .line 600
    invoke-virtual {v5, v9}, Lokhttp3/Headers;->g(I)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v14

    .line 604
    const-string v15, "Warning"

    .line 605
    .line 606
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 607
    .line 608
    .line 609
    move-result v15

    .line 610
    if-eqz v15, :cond_1e

    .line 611
    .line 612
    const-string v15, "1"

    .line 613
    .line 614
    move-object/from16 v16, v5

    .line 615
    .line 616
    const/4 v5, 0x0

    .line 617
    invoke-static {v14, v15, v5}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 618
    .line 619
    .line 620
    move-result v15

    .line 621
    if-eqz v15, :cond_1f

    .line 622
    .line 623
    goto :goto_12

    .line 624
    :cond_1e
    move-object/from16 v16, v5

    .line 625
    .line 626
    const/4 v5, 0x0

    .line 627
    :cond_1f
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 628
    .line 629
    .line 630
    move-result v12

    .line 631
    if-nez v12, :cond_21

    .line 632
    .line 633
    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 634
    .line 635
    .line 636
    move-result v11

    .line 637
    if-nez v11, :cond_21

    .line 638
    .line 639
    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 640
    .line 641
    .line 642
    move-result v10

    .line 643
    if-eqz v10, :cond_20

    .line 644
    .line 645
    goto :goto_11

    .line 646
    :cond_20
    invoke-static {v13}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->a(Ljava/lang/String;)Z

    .line 647
    .line 648
    .line 649
    move-result v10

    .line 650
    if-eqz v10, :cond_21

    .line 651
    .line 652
    invoke-virtual {v6, v13}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v10

    .line 656
    if-nez v10, :cond_22

    .line 657
    .line 658
    :cond_21
    :goto_11
    invoke-static {v7, v13, v14}, Lokhttp3/internal/_HeadersCommonKt;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    :cond_22
    :goto_12
    add-int/lit8 v9, v9, 0x1

    .line 662
    .line 663
    move-object/from16 v5, v16

    .line 664
    .line 665
    goto :goto_10

    .line 666
    :cond_23
    const/4 v5, 0x0

    .line 667
    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    .line 668
    .line 669
    .line 670
    move-result v8

    .line 671
    :goto_13
    if-ge v5, v8, :cond_26

    .line 672
    .line 673
    invoke-virtual {v6, v5}, Lokhttp3/Headers;->e(I)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v9

    .line 677
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 678
    .line 679
    .line 680
    move-result v13

    .line 681
    if-nez v13, :cond_25

    .line 682
    .line 683
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 684
    .line 685
    .line 686
    move-result v13

    .line 687
    if-nez v13, :cond_25

    .line 688
    .line 689
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 690
    .line 691
    .line 692
    move-result v13

    .line 693
    if-eqz v13, :cond_24

    .line 694
    .line 695
    goto :goto_14

    .line 696
    :cond_24
    invoke-static {v9}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->a(Ljava/lang/String;)Z

    .line 697
    .line 698
    .line 699
    move-result v13

    .line 700
    if-eqz v13, :cond_25

    .line 701
    .line 702
    invoke-virtual {v6, v5}, Lokhttp3/Headers;->g(I)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v13

    .line 706
    invoke-static {v7, v9, v13}, Lokhttp3/internal/_HeadersCommonKt;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    :cond_25
    :goto_14
    add-int/lit8 v5, v5, 0x1

    .line 710
    .line 711
    goto :goto_13

    .line 712
    :cond_26
    invoke-virtual {v7}, Lokhttp3/Headers$Builder;->b()Lokhttp3/Headers;

    .line 713
    .line 714
    .line 715
    move-result-object v5

    .line 716
    invoke-virtual {v5}, Lokhttp3/Headers;->f()Lokhttp3/Headers$Builder;

    .line 717
    .line 718
    .line 719
    move-result-object v5

    .line 720
    iput-object v5, v4, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 721
    .line 722
    iget-wide v5, v0, Lokhttp3/Response;->t:J

    .line 723
    .line 724
    iput-wide v5, v4, Lokhttp3/Response$Builder;->l:J

    .line 725
    .line 726
    iget-wide v5, v0, Lokhttp3/Response;->x:J

    .line 727
    .line 728
    iput-wide v5, v4, Lokhttp3/Response$Builder;->m:J

    .line 729
    .line 730
    invoke-static {v2}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    invoke-static {v3, v2}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 735
    .line 736
    .line 737
    iput-object v2, v4, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    .line 738
    .line 739
    invoke-static {v0}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    invoke-static {v1, v2}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 744
    .line 745
    .line 746
    iput-object v2, v4, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    .line 747
    .line 748
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 749
    .line 750
    .line 751
    iget-object v0, v0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 752
    .line 753
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 754
    .line 755
    .line 756
    const/16 v25, 0x0

    .line 757
    .line 758
    throw v25

    .line 759
    :cond_27
    const/16 v25, 0x0

    .line 760
    .line 761
    iget-object v4, v2, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 762
    .line 763
    invoke-static {v4}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    .line 764
    .line 765
    .line 766
    goto :goto_15

    .line 767
    :cond_28
    const/16 v25, 0x0

    .line 768
    .line 769
    :goto_15
    invoke-virtual {v0}, Lokhttp3/Response;->g()Lokhttp3/Response$Builder;

    .line 770
    .line 771
    .line 772
    move-result-object v4

    .line 773
    if-eqz v2, :cond_29

    .line 774
    .line 775
    invoke-static {v2}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    goto :goto_16

    .line 780
    :cond_29
    move-object/from16 v2, v25

    .line 781
    .line 782
    :goto_16
    invoke-static {v3, v2}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 783
    .line 784
    .line 785
    iput-object v2, v4, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    .line 786
    .line 787
    invoke-static {v0}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    invoke-static {v1, v0}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 792
    .line 793
    .line 794
    iput-object v0, v4, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    .line 795
    .line 796
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    return-object v0
.end method
