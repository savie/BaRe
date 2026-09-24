.class public abstract Lnb7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final a(Lq63;Lq63;Ljava/util/List;Lrt3;[C)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lq63;->j()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    invoke-static {v1}, Lq63;->E(Lq63;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v0, "LegacySevenZipArchive: Unable to create destination dir at "

    .line 27
    .line 28
    invoke-static {v1, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    :goto_0
    sget-object v3, Lov2;->a:Lov2;

    .line 37
    .line 38
    if-nez p2, :cond_2

    .line 39
    .line 40
    move-object v4, v3

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object/from16 v4, p2

    .line 43
    .line 44
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    .line 45
    .line 46
    const/16 v6, 0xa

    .line 47
    .line 48
    invoke-static {v4, v6}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_4

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v6}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_3

    .line 76
    .line 77
    const-string v6, ""

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    invoke-static {v6}, Ljq6;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    :goto_3
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_6

    .line 102
    .line 103
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    move-object v7, v6

    .line 108
    check-cast v7, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-lez v7, :cond_5

    .line 115
    .line 116
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v5

    .line 124
    const/4 v7, 0x1

    .line 125
    invoke-virtual {v0, v7}, Lq63;->l(I)Lc73;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    if-eqz v8, :cond_1b

    .line 130
    .line 131
    :try_start_0
    invoke-static {}, Leb7;->b()Ldb7;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v9, v8, Lc73;->a:Ljava/nio/channels/FileChannel;

    .line 136
    .line 137
    iput-object v9, v0, Ldb7;->t:Ljava/nio/channels/FileChannel;

    .line 138
    .line 139
    if-eqz v2, :cond_a

    .line 140
    .line 141
    array-length v10, v2

    .line 142
    if-nez v10, :cond_7

    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_7
    invoke-virtual {v2}, [C->clone()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, [C

    .line 150
    .line 151
    if-nez v2, :cond_8

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    goto :goto_5

    .line 155
    :cond_8
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 156
    .line 157
    invoke-static {v2}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v10, v2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    if-eqz v10, :cond_9

    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    goto :goto_5

    .line 176
    :cond_9
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    new-array v10, v10, [B

    .line 181
    .line 182
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 183
    .line 184
    .line 185
    move-object v2, v10

    .line 186
    :goto_5
    iput-object v2, v0, Ldb7;->y:[B

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :goto_6
    move-object v1, v0

    .line 190
    goto/16 :goto_14

    .line 191
    .line 192
    :catchall_0
    move-exception v0

    .line 193
    goto :goto_6

    .line 194
    :cond_a
    :goto_7
    invoke-virtual {v0}, Ldb7;->K()Leb7;

    .line 195
    .line 196
    .line 197
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 199
    .line 200
    iget-object v10, v2, Leb7;->c:Lg40;

    .line 201
    .line 202
    iget-object v10, v10, Lg40;->g:[Lwa7;

    .line 203
    .line 204
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    new-instance v10, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    :cond_b
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    if-eqz v12, :cond_c

    .line 229
    .line 230
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    move-object v13, v12

    .line 235
    check-cast v13, Lwa7;

    .line 236
    .line 237
    iget-boolean v13, v13, Lwa7;->c:Z

    .line 238
    .line 239
    if-nez v13, :cond_b

    .line 240
    .line 241
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_8

    .line 245
    :catchall_1
    move-exception v0

    .line 246
    move-object v1, v0

    .line 247
    goto/16 :goto_13

    .line 248
    .line 249
    :cond_c
    new-instance v11, Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    :cond_d
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    if-eqz v12, :cond_e

    .line 263
    .line 264
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    move-object v13, v12

    .line 269
    check-cast v13, Lwa7;

    .line 270
    .line 271
    iget-object v13, v13, Lwa7;->a:Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v13}, Ljq6;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    invoke-static {v13, v4}, Ljq6;->x(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 278
    .line 279
    .line 280
    move-result v13

    .line 281
    if-nez v13, :cond_d

    .line 282
    .line 283
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    goto :goto_9

    .line 287
    :cond_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    const-wide/16 v11, 0x0

    .line 292
    .line 293
    move-wide v13, v11

    .line 294
    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v15

    .line 298
    if-eqz v15, :cond_10

    .line 299
    .line 300
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v15

    .line 304
    check-cast v15, Lwa7;

    .line 305
    .line 306
    move-object/from16 p2, v10

    .line 307
    .line 308
    iget-wide v9, v15, Lwa7;->p:J

    .line 309
    .line 310
    cmp-long v15, v9, v11

    .line 311
    .line 312
    if-gez v15, :cond_f

    .line 313
    .line 314
    move-wide v9, v11

    .line 315
    :cond_f
    add-long/2addr v13, v9

    .line 316
    move-object/from16 v10, p2

    .line 317
    .line 318
    goto :goto_a

    .line 319
    :cond_10
    new-instance v9, Let4;

    .line 320
    .line 321
    move-object/from16 v10, p3

    .line 322
    .line 323
    invoke-direct {v9, v13, v14, v10}, Let4;-><init>(JLrt3;)V

    .line 324
    .line 325
    .line 326
    const/high16 v10, 0x40000

    .line 327
    .line 328
    new-array v10, v10, [B

    .line 329
    .line 330
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    :cond_11
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 335
    .line 336
    .line 337
    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 338
    const-string v12, "LegacySevenZipArchive"

    .line 339
    .line 340
    if-eqz v11, :cond_1a

    .line 341
    .line 342
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v11

    .line 346
    check-cast v11, Lwa7;

    .line 347
    .line 348
    iget-object v13, v11, Lwa7;->a:Ljava/lang/String;

    .line 349
    .line 350
    invoke-static {v13}, Ljq6;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v13

    .line 354
    invoke-static {v13, v4}, Ljq6;->x(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 355
    .line 356
    .line 357
    move-result v14

    .line 358
    if-eqz v14, :cond_12

    .line 359
    .line 360
    goto :goto_b

    .line 361
    :cond_12
    iget-boolean v14, v11, Lwa7;->c:Z

    .line 362
    .line 363
    const/4 v15, 0x2

    .line 364
    if-eqz v14, :cond_14

    .line 365
    .line 366
    new-instance v11, Lq63;

    .line 367
    .line 368
    invoke-direct {v11, v15, v1, v13}, Lq63;-><init>(ILq63;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-static {v11}, Lq63;->E(Lq63;)Z

    .line 372
    .line 373
    .line 374
    move-result v13

    .line 375
    if-nez v13, :cond_11

    .line 376
    .line 377
    invoke-virtual {v11}, Lq63;->x()Z

    .line 378
    .line 379
    .line 380
    move-result v13

    .line 381
    if-eqz v13, :cond_13

    .line 382
    .line 383
    goto :goto_b

    .line 384
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v1, ": Unable to create directory "

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 405
    .line 406
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    throw v1

    .line 414
    :cond_14
    new-instance v14, Lq63;

    .line 415
    .line 416
    invoke-direct {v14, v15, v1, v13}, Lq63;-><init>(ILq63;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v14}, Lq63;->t()Lq63;

    .line 420
    .line 421
    .line 422
    move-result-object v15

    .line 423
    if-eqz v15, :cond_15

    .line 424
    .line 425
    invoke-static {v15}, Lq63;->E(Lq63;)Z

    .line 426
    .line 427
    .line 428
    move-result v15

    .line 429
    if-ne v15, v7, :cond_15

    .line 430
    .line 431
    goto :goto_c

    .line 432
    :cond_15
    invoke-virtual {v14}, Lq63;->t()Lq63;

    .line 433
    .line 434
    .line 435
    move-result-object v15

    .line 436
    if-eqz v15, :cond_19

    .line 437
    .line 438
    invoke-virtual {v15}, Lq63;->x()Z

    .line 439
    .line 440
    .line 441
    move-result v15

    .line 442
    if-ne v15, v7, :cond_19

    .line 443
    .line 444
    :goto_c
    iget-object v15, v11, Lwa7;->r:Ljava/util/List;

    .line 445
    .line 446
    if-eqz v15, :cond_16

    .line 447
    .line 448
    invoke-static {v15}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v15

    .line 452
    goto :goto_d

    .line 453
    :cond_16
    const/4 v15, 0x0

    .line 454
    :goto_d
    if-nez v15, :cond_17

    .line 455
    .line 456
    move-object/from16 v16, v3

    .line 457
    .line 458
    goto :goto_e

    .line 459
    :cond_17
    move-object/from16 v16, v15

    .line 460
    .line 461
    :goto_e
    const-string v17, ","

    .line 462
    .line 463
    new-instance v15, Lnu;

    .line 464
    .line 465
    const/4 v7, 0x7

    .line 466
    invoke-direct {v15, v7}, Lnu;-><init>(I)V

    .line 467
    .line 468
    .line 469
    const/16 v21, 0x1e

    .line 470
    .line 471
    const/16 v18, 0x0

    .line 472
    .line 473
    const/16 v19, 0x0

    .line 474
    .line 475
    move-object/from16 v20, v15

    .line 476
    .line 477
    invoke-static/range {v16 .. v21}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v7

    .line 481
    new-instance v15, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    .line 485
    .line 486
    move-object/from16 p3, v0

    .line 487
    .line 488
    const-string v0, "Extracting "

    .line 489
    .line 490
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    const-string v0, ", methods="

    .line 497
    .line 498
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .line 510
    .line 511
    invoke-virtual {v2, v11}, Leb7;->j(Lwa7;)Ljava/io/InputStream;

    .line 512
    .line 513
    .line 514
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 515
    const/4 v0, 0x1

    .line 516
    :try_start_3
    invoke-virtual {v14, v0}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 517
    .line 518
    .line 519
    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 520
    :goto_f
    :try_start_4
    invoke-virtual {v7, v10}, Ljava/io/InputStream;->read([B)I

    .line 521
    .line 522
    .line 523
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 524
    if-gez v0, :cond_18

    .line 525
    .line 526
    :try_start_5
    invoke-interface {v11}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 527
    .line 528
    .line 529
    :try_start_6
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 530
    .line 531
    .line 532
    move-object/from16 v0, p3

    .line 533
    .line 534
    const/4 v7, 0x1

    .line 535
    goto/16 :goto_b

    .line 536
    .line 537
    :catchall_2
    move-exception v0

    .line 538
    move-object v1, v0

    .line 539
    goto :goto_12

    .line 540
    :cond_18
    const/4 v12, 0x0

    .line 541
    :try_start_7
    invoke-virtual {v11, v10, v12, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 542
    .line 543
    .line 544
    int-to-long v13, v0

    .line 545
    move-wide v15, v13

    .line 546
    iget-wide v12, v9, Let4;->c:J

    .line 547
    .line 548
    add-long/2addr v12, v15

    .line 549
    iput-wide v12, v9, Let4;->c:J

    .line 550
    .line 551
    const/4 v0, 0x0

    .line 552
    invoke-virtual {v9, v0}, Let4;->a(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 553
    .line 554
    .line 555
    goto :goto_f

    .line 556
    :goto_10
    move-object v1, v0

    .line 557
    goto :goto_11

    .line 558
    :catchall_3
    move-exception v0

    .line 559
    goto :goto_10

    .line 560
    :goto_11
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 561
    :catchall_4
    move-exception v0

    .line 562
    :try_start_9
    invoke-static {v11, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 563
    .line 564
    .line 565
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 566
    :goto_12
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 567
    :catchall_5
    move-exception v0

    .line 568
    :try_start_b
    invoke-static {v7, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 569
    .line 570
    .line 571
    throw v0

    .line 572
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    const-string v1, ": Unable to create parent for "

    .line 581
    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 593
    .line 594
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    throw v1

    .line 602
    :cond_1a
    move v0, v7

    .line 603
    invoke-virtual {v9, v0}, Let4;->a(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 604
    .line 605
    .line 606
    :try_start_c
    invoke-virtual {v2}, Leb7;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 607
    .line 608
    .line 609
    invoke-virtual {v8}, Lc73;->close()V

    .line 610
    .line 611
    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 613
    .line 614
    .line 615
    move-result-wide v0

    .line 616
    sub-long/2addr v0, v5

    .line 617
    long-to-double v0, v0

    .line 618
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    div-double/2addr v0, v2

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    const-string v3, "Commons 7z extraction succeeded in "

    .line 627
    .line 628
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    const-string v0, "s"

    .line 635
    .line 636
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .line 645
    .line 646
    return-void

    .line 647
    :goto_13
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 648
    :catchall_6
    move-exception v0

    .line 649
    :try_start_e
    invoke-static {v2, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 650
    .line 651
    .line 652
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 653
    :goto_14
    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 654
    :catchall_7
    move-exception v0

    .line 655
    invoke-static {v8, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 656
    .line 657
    .line 658
    throw v0

    .line 659
    :cond_1b
    const-string v1, "LegacySevenZipArchive: Unable to open archive channel: "

    .line 660
    .line 661
    invoke-static {v0, v1}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    .line 666
    .line 667
    .line 668
    return-void
.end method
