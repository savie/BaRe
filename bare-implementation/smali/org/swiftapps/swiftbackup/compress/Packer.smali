.class public final Lorg/swiftapps/swiftbackup/compress/Packer;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Lq63;Lq63;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lrt3;I)Lfw5;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    and-int/lit8 v0, p6, 0x4

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v0, p2

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v4, p6, 0x8

    .line 14
    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object/from16 v4, p3

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v5, p6, 0x10

    .line 22
    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object/from16 v5, p4

    .line 28
    .line 29
    :goto_2
    and-int/lit8 v6, p6, 0x20

    .line 30
    .line 31
    if-eqz v6, :cond_3

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v6, p5

    .line 36
    .line 37
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const-string v7, "SevenZipPacker"

    .line 44
    .line 45
    new-instance v8, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    if-eqz v0, :cond_8

    .line 51
    .line 52
    new-instance v9, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-eqz v10, :cond_5

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    move-object v11, v10

    .line 72
    check-cast v11, [C

    .line 73
    .line 74
    array-length v11, v11

    .line 75
    if-nez v11, :cond_4

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v10, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    :cond_6
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    if-eqz v11, :cond_7

    .line 101
    .line 102
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    move-object v12, v11

    .line 107
    check-cast v12, [C

    .line 108
    .line 109
    new-instance v13, Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {v13, v12}, Ljava/lang/String;-><init>([C)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_6

    .line 119
    .line 120
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_7
    new-instance v0, Lmb7;

    .line 125
    .line 126
    invoke-direct {v0, v4}, Lmb7;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v10, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    move-object v9, v0

    .line 134
    goto :goto_6

    .line 135
    :cond_8
    const/4 v9, 0x0

    .line 136
    :goto_6
    const-string v11, "password"

    .line 137
    .line 138
    const-string v12, "code:WRONG_PASSWORD"

    .line 139
    .line 140
    const/4 v14, 0x1

    .line 141
    if-eqz v9, :cond_9

    .line 142
    .line 143
    :try_start_0
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_a

    .line 148
    .line 149
    :cond_9
    move-object/from16 p5, v8

    .line 150
    .line 151
    const/4 v3, 0x0

    .line 152
    goto/16 :goto_e

    .line 153
    .line 154
    :cond_a
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_b

    .line 159
    .line 160
    move-object/from16 p5, v8

    .line 161
    .line 162
    const/4 v13, 0x0

    .line 163
    :goto_7
    const/16 v17, 0x0

    .line 164
    .line 165
    goto/16 :goto_c

    .line 166
    .line 167
    :cond_b
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v15

    .line 171
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_10

    .line 176
    .line 177
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    move-object v13, v0

    .line 182
    check-cast v13, [C

    .line 183
    .line 184
    invoke-interface {v9, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 185
    .line 186
    .line 187
    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 188
    :try_start_1
    invoke-static {v1, v2, v5, v6, v13}, Lnb7;->a(Lq63;Lq63;Ljava/util/List;Lrt3;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    .line 190
    .line 191
    move-object/from16 p5, v8

    .line 192
    .line 193
    move v13, v14

    .line 194
    goto :goto_7

    .line 195
    :catch_0
    move-exception v0

    .line 196
    :try_start_2
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    const/16 v17, 0x0

    .line 200
    .line 201
    add-int/lit8 v3, v16, 0x1

    .line 202
    .line 203
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 211
    move-object/from16 p5, v8

    .line 212
    .line 213
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    move-object/from16 p6, v13

    .line 219
    .line 220
    const-string v13, "Failed with password ["

    .line 221
    .line 222
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v3, "/"

    .line 229
    .line 230
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v3, "]: "

    .line 237
    .line 238
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    const/4 v8, 0x1

    .line 256
    invoke-static {v3, v12, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 257
    .line 258
    .line 259
    move-result v10

    .line 260
    if-nez v10, :cond_d

    .line 261
    .line 262
    invoke-static {v3, v11, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-eqz v3, :cond_c

    .line 267
    .line 268
    goto :goto_9

    .line 269
    :cond_c
    const/4 v3, 0x0

    .line 270
    goto :goto_a

    .line 271
    :cond_d
    :goto_9
    const/4 v3, 0x1

    .line 272
    :goto_a
    invoke-static/range {p6 .. p6}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    invoke-static {v0, v8, v4}, Lcz4;->c(Ljava/lang/Exception;Ljava/util/List;Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    if-nez v3, :cond_e

    .line 281
    .line 282
    if-eqz v8, :cond_f

    .line 283
    .line 284
    :cond_e
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v8, "Password error: "

    .line 294
    .line 295
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    :cond_f
    move-object/from16 v8, p5

    .line 309
    .line 310
    const/4 v14, 0x1

    .line 311
    goto/16 :goto_8

    .line 312
    .line 313
    :catch_1
    move-exception v0

    .line 314
    :goto_b
    move-object/from16 v16, v0

    .line 315
    .line 316
    goto/16 :goto_f

    .line 317
    .line 318
    :catch_2
    move-exception v0

    .line 319
    move-object/from16 p5, v8

    .line 320
    .line 321
    goto :goto_b

    .line 322
    :cond_10
    move-object/from16 p5, v8

    .line 323
    .line 324
    const/16 v17, 0x0

    .line 325
    .line 326
    const/4 v13, 0x0

    .line 327
    :goto_c
    if-nez v13, :cond_13

    .line 328
    .line 329
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-nez v0, :cond_13

    .line 334
    .line 335
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    const/4 v2, 0x0

    .line 340
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-eqz v3, :cond_12

    .line 345
    .line 346
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    add-int/lit8 v5, v2, 0x1

    .line 351
    .line 352
    if-ltz v2, :cond_11

    .line 353
    .line 354
    move-object/from16 v21, v3

    .line 355
    .line 356
    check-cast v21, Ljava/lang/Exception;

    .line 357
    .line 358
    sget-object v18, Lvr6;->INSTANCE:Lvr6;

    .line 359
    .line 360
    const-string v19, "SevenZipPacker"

    .line 361
    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    const-string v6, "Error#"

    .line 368
    .line 369
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v20

    .line 379
    const/16 v23, 0x8

    .line 380
    .line 381
    const/16 v24, 0x0

    .line 382
    .line 383
    const/16 v22, 0x0

    .line 384
    .line 385
    invoke-static/range {v18 .. v24}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    move v2, v5

    .line 389
    goto :goto_d

    .line 390
    :cond_11
    invoke-static {}, Lfl1;->F0()V

    .line 391
    .line 392
    .line 393
    throw v17

    .line 394
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    .line 395
    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .line 400
    .line 401
    const-string v3, "Failed extracting file: "

    .line 402
    .line 403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    throw v0

    .line 417
    :cond_13
    new-instance v0, Lfw5;

    .line 418
    .line 419
    move-object/from16 v2, v17

    .line 420
    .line 421
    const/16 v1, 0xe

    .line 422
    .line 423
    invoke-direct {v0, v13, v2, v2, v1}, Lfw5;-><init>(ZLjava/lang/String;Ljava/lang/Exception;I)V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_14

    .line 427
    .line 428
    :goto_e
    invoke-static {v1, v2, v5, v6, v3}, Lnb7;->a(Lq63;Lq63;Ljava/util/List;Lrt3;[C)V

    .line 429
    .line 430
    .line 431
    new-instance v0, Lfw5;

    .line 432
    .line 433
    const/16 v1, 0xe

    .line 434
    .line 435
    const/4 v8, 0x1

    .line 436
    invoke-direct {v0, v8, v3, v3, v1}, Lfw5;-><init>(ZLjava/lang/String;Ljava/lang/Exception;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 437
    .line 438
    .line 439
    return-object v0

    .line 440
    :goto_f
    sget-object v13, Lvr6;->INSTANCE:Lvr6;

    .line 441
    .line 442
    const/16 v18, 0x8

    .line 443
    .line 444
    const/16 v19, 0x0

    .line 445
    .line 446
    const-string v14, "SevenZipPacker"

    .line 447
    .line 448
    const-string v15, "extract"

    .line 449
    .line 450
    const/16 v17, 0x0

    .line 451
    .line 452
    invoke-static/range {v13 .. v19}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    move-object/from16 v0, v16

    .line 456
    .line 457
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    if-eqz v1, :cond_14

    .line 462
    .line 463
    const/4 v1, 0x1

    .line 464
    const/4 v8, 0x1

    .line 465
    goto :goto_11

    .line 466
    :cond_14
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    :cond_15
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    if-eqz v2, :cond_17

    .line 475
    .line 476
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    check-cast v2, Ljava/lang/Exception;

    .line 481
    .line 482
    invoke-static {v2}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    const/4 v8, 0x1

    .line 487
    invoke-static {v2, v12, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    if-nez v3, :cond_15

    .line 492
    .line 493
    invoke-static {v2, v11, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    if-eqz v2, :cond_16

    .line 498
    .line 499
    goto :goto_10

    .line 500
    :cond_16
    const/4 v1, 0x0

    .line 501
    goto :goto_11

    .line 502
    :cond_17
    const/4 v8, 0x1

    .line 503
    move v1, v8

    .line 504
    :goto_11
    if-eqz v1, :cond_18

    .line 505
    .line 506
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 507
    .line 508
    const/4 v14, 0x4

    .line 509
    const/4 v15, 0x0

    .line 510
    const-string v11, "SevenZipPacker"

    .line 511
    .line 512
    const-string v12, "Wrong password"

    .line 513
    .line 514
    const/4 v13, 0x0

    .line 515
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    :cond_18
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    if-eqz v2, :cond_1a

    .line 523
    .line 524
    :cond_19
    move v14, v8

    .line 525
    goto :goto_12

    .line 526
    :cond_1a
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 531
    .line 532
    .line 533
    move-result v3

    .line 534
    if-eqz v3, :cond_19

    .line 535
    .line 536
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    check-cast v3, Ljava/lang/Exception;

    .line 541
    .line 542
    invoke-static {v3, v9, v4}, Lcz4;->c(Ljava/lang/Exception;Ljava/util/List;Ljava/lang/String;)Z

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    if-nez v3, :cond_1b

    .line 547
    .line 548
    const/4 v14, 0x0

    .line 549
    :goto_12
    if-eqz v14, :cond_1c

    .line 550
    .line 551
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 552
    .line 553
    const/4 v6, 0x4

    .line 554
    const/4 v7, 0x0

    .line 555
    const-string v3, "SevenZipPacker"

    .line 556
    .line 557
    const-string v4, "Password hash mismatch"

    .line 558
    .line 559
    const/4 v5, 0x0

    .line 560
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    :cond_1c
    if-eqz v1, :cond_1d

    .line 564
    .line 565
    sget-object v1, Lew5;->PasswordError:Lew5;

    .line 566
    .line 567
    goto :goto_13

    .line 568
    :cond_1d
    if-eqz v14, :cond_1e

    .line 569
    .line 570
    sget-object v1, Lew5;->PasswordMismatchError:Lew5;

    .line 571
    .line 572
    goto :goto_13

    .line 573
    :cond_1e
    sget-object v1, Lew5;->CorruptionError:Lew5;

    .line 574
    .line 575
    :goto_13
    new-instance v2, Lfw5;

    .line 576
    .line 577
    const-string v3, "Error while extracting archive"

    .line 578
    .line 579
    const/4 v4, 0x0

    .line 580
    invoke-direct {v2, v4, v3, v0, v1}, Lfw5;-><init>(ZLjava/lang/String;Ljava/lang/Exception;Lew5;)V

    .line 581
    .line 582
    .line 583
    move-object v0, v2

    .line 584
    :goto_14
    return-object v0
.end method

.method public static b(Lq63;)Li40;
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-static {p0}, Lmz6;->m(Lq63;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x3

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x6

    .line 15
    const/4 v6, 0x1

    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    invoke-static {p0}, Lmz6;->t(Lq63;)Lky6;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-object v0, p0, Lky6;->i:Ljava/util/List;

    .line 23
    .line 24
    new-instance v7, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/16 v8, 0xa

    .line 27
    .line 28
    invoke-static {v0, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-eqz v8, :cond_0

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    check-cast v8, Lxy6;

    .line 50
    .line 51
    iget-object v8, v8, Lxy6;->a:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lky6;->f:Lgy6;

    .line 63
    .line 64
    iget-object p0, p0, Lgy6;->g:Lwy6;

    .line 65
    .line 66
    sget-object v7, Lwy6;->None:Lwy6;

    .line 67
    .line 68
    if-eq p0, v7, :cond_1

    .line 69
    .line 70
    move v4, v6

    .line 71
    :cond_1
    sget-object v7, Lgw5;->a:[I

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    aget p0, v7, p0

    .line 78
    .line 79
    if-eq p0, v6, :cond_4

    .line 80
    .line 81
    if-eq p0, v3, :cond_3

    .line 82
    .line 83
    if-ne p0, v2, :cond_2

    .line 84
    .line 85
    const-string v1, "AEGIS-128X2"

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 89
    .line 90
    .line 91
    return-object v1

    .line 92
    :cond_3
    const-string v1, "AEGIS-256"

    .line 93
    .line 94
    :cond_4
    :goto_1
    new-instance p0, Li40;

    .line 95
    .line 96
    invoke-direct {p0, v5, v0, v4, v1}, Li40;-><init>(ILjava/util/ArrayList;ZLjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_5
    const/16 v0, 0x200

    .line 101
    .line 102
    new-array v7, v0, [B

    .line 103
    .line 104
    invoke-virtual {p0, v4}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    :try_start_0
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    .line 109
    .line 110
    .line 111
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 112
    invoke-interface {v8}, Ljava/io/Closeable;->close()V

    .line 113
    .line 114
    .line 115
    if-lez v9, :cond_23

    .line 116
    .line 117
    if-ne v9, v0, :cond_6

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    :goto_2
    array-length v0, v7

    .line 125
    const/4 v8, 0x4

    .line 126
    const/4 v9, 0x5

    .line 127
    if-ge v0, v5, :cond_7

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_7
    move v0, v4

    .line 131
    :goto_3
    if-ge v0, v5, :cond_15

    .line 132
    .line 133
    aget-byte v10, v7, v0

    .line 134
    .line 135
    sget-object v11, Leb7;->q:[B

    .line 136
    .line 137
    aget-byte v11, v11, v0

    .line 138
    .line 139
    if-eq v10, v11, :cond_14

    .line 140
    .line 141
    :goto_4
    array-length v0, v7

    .line 142
    if-lt v0, v8, :cond_11

    .line 143
    .line 144
    aget-byte v0, v7, v4

    .line 145
    .line 146
    const/16 v10, 0x50

    .line 147
    .line 148
    if-ne v0, v10, :cond_11

    .line 149
    .line 150
    aget-byte v0, v7, v6

    .line 151
    .line 152
    const/16 v10, 0x4b

    .line 153
    .line 154
    if-ne v0, v10, :cond_11

    .line 155
    .line 156
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    const/4 v10, 0x7

    .line 165
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    filled-new-array {v0, v9, v10}, [Ljava/lang/Byte;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    aget-byte v9, v7, v3

    .line 178
    .line 179
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_11

    .line 188
    .line 189
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    const/16 v8, 0x8

    .line 198
    .line 199
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    filled-new-array {v0, v5, v8}, [Ljava/lang/Byte;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    aget-byte v5, v7, v2

    .line 212
    .line 213
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_11

    .line 222
    .line 223
    new-instance v0, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v6}, Lq63;->l(I)Lc73;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    if-eqz v2, :cond_10

    .line 233
    .line 234
    :try_start_1
    iget-object v5, v2, Lc73;->a:Ljava/nio/channels/FileChannel;

    .line 235
    .line 236
    sget-object v7, Lhz8;->L:[B

    .line 237
    .line 238
    new-instance v7, Ldz8;

    .line 239
    .line 240
    invoke-direct {v7}, Ll5;-><init>()V

    .line 241
    .line 242
    .line 243
    iput-boolean v6, v7, Ldz8;->x:Z

    .line 244
    .line 245
    sget-object v8, Ldz8;->y:Ljava/nio/charset/Charset;

    .line 246
    .line 247
    iget-object v9, v7, Ll5;->p:Ljava/nio/charset/Charset;

    .line 248
    .line 249
    sget v10, Lg51;->a:I

    .line 250
    .line 251
    if-nez v8, :cond_8

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_8
    move-object v9, v8

    .line 255
    :goto_5
    iput-object v9, v7, Ll5;->n:Ljava/nio/charset/Charset;

    .line 256
    .line 257
    iput-object v8, v7, Ll5;->p:Ljava/nio/charset/Charset;

    .line 258
    .line 259
    iput-object v5, v7, Ldz8;->t:Ljava/nio/channels/FileChannel;

    .line 260
    .line 261
    invoke-virtual {v7}, Ldz8;->K()Lhz8;

    .line 262
    .line 263
    .line 264
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    :try_start_2
    iget-object v7, v5, Lhz8;->a:Ljava/util/LinkedList;

    .line 266
    .line 267
    invoke-static {v7}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    move v8, v4

    .line 272
    :cond_9
    :goto_6
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    if-eqz v9, :cond_a

    .line 277
    .line 278
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v9

    .line 282
    check-cast v9, Lez8;

    .line 283
    .line 284
    invoke-virtual {v9}, Lez8;->getName()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    iget-object v9, v9, Lez8;->p:Lvu3;

    .line 292
    .line 293
    iget-boolean v9, v9, Lvu3;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    .line 295
    if-eqz v9, :cond_9

    .line 296
    .line 297
    move v8, v6

    .line 298
    goto :goto_6

    .line 299
    :catchall_0
    move-exception p0

    .line 300
    goto :goto_a

    .line 301
    :cond_a
    :try_start_3
    invoke-virtual {v5}, Lhz8;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Lc73;->close()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-nez v2, :cond_e

    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eqz v2, :cond_b

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    if-eqz v5, :cond_d

    .line 329
    .line 330
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    check-cast v5, Ljava/lang/String;

    .line 335
    .line 336
    const-string v7, ".tar"

    .line 337
    .line 338
    invoke-static {v5, v7, v4}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 339
    .line 340
    .line 341
    move-result v5

    .line 342
    if-nez v5, :cond_c

    .line 343
    .line 344
    goto :goto_8

    .line 345
    :cond_d
    :goto_7
    move v4, v6

    .line 346
    :cond_e
    :goto_8
    new-instance v2, Li40;

    .line 347
    .line 348
    if-eqz v4, :cond_f

    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_f
    move v3, v6

    .line 352
    :goto_9
    invoke-direct {v2, v3, v0, v8, v1}, Li40;-><init>(ILjava/util/ArrayList;ZLjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    goto/16 :goto_12

    .line 356
    .line 357
    :catchall_1
    move-exception p0

    .line 358
    goto :goto_b

    .line 359
    :goto_a
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 360
    :catchall_2
    move-exception v0

    .line 361
    :try_start_5
    invoke-static {v5, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 362
    .line 363
    .line 364
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 365
    :goto_b
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 366
    :catchall_3
    move-exception v0

    .line 367
    invoke-static {v2, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 368
    .line 369
    .line 370
    throw v0

    .line 371
    :cond_10
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    const-string v0, "Unable to open archive channel: "

    .line 376
    .line 377
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    return-object v1

    .line 385
    :cond_11
    :try_start_7
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 386
    .line 387
    invoke-static {p0}, Lmz6;->o(Lq63;)Ljava/util/ArrayList;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    new-instance v3, Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    if-eqz v5, :cond_12

    .line 405
    .line 406
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    check-cast v5, Lz17;

    .line 411
    .line 412
    iget-object v5, v5, Lz17;->a:Ljava/lang/String;

    .line 413
    .line 414
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    goto :goto_c

    .line 418
    :cond_12
    new-instance v0, Li40;

    .line 419
    .line 420
    invoke-direct {v0, v2, v3, v4, v1}, Li40;-><init>(ILjava/util/ArrayList;ZLjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 421
    .line 422
    .line 423
    goto :goto_d

    .line 424
    :catchall_4
    move-exception v0

    .line 425
    new-instance v2, Lbn6;

    .line 426
    .line 427
    invoke-direct {v2, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 428
    .line 429
    .line 430
    move-object v0, v2

    .line 431
    :goto_d
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    if-nez v2, :cond_13

    .line 436
    .line 437
    move-object v2, v0

    .line 438
    check-cast v2, Li40;

    .line 439
    .line 440
    goto/16 :goto_12

    .line 441
    .line 442
    :cond_13
    const-string v0, "Unhandled archive format for file="

    .line 443
    .line 444
    invoke-static {p0, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p0

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 449
    .line 450
    invoke-direct {v0, p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    .line 452
    .line 453
    throw v0

    .line 454
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 455
    .line 456
    goto/16 :goto_3

    .line 457
    .line 458
    :cond_15
    new-instance v0, Ljq6;

    .line 459
    .line 460
    invoke-direct {v0, p0}, Ljq6;-><init>(Lq63;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p0, v6}, Lq63;->l(I)Lc73;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    if-eqz v2, :cond_22

    .line 468
    .line 469
    :try_start_8
    invoke-static {}, Leb7;->b()Ldb7;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    iget-object v5, v2, Lc73;->a:Ljava/nio/channels/FileChannel;

    .line 474
    .line 475
    iput-object v5, v3, Ldb7;->t:Ljava/nio/channels/FileChannel;

    .line 476
    .line 477
    invoke-virtual {v3}, Ldb7;->K()Leb7;

    .line 478
    .line 479
    .line 480
    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 481
    :try_start_9
    new-instance v5, Ljava/util/ArrayList;

    .line 482
    .line 483
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .line 485
    .line 486
    new-instance v7, Ljava/util/ArrayList;

    .line 487
    .line 488
    iget-object v10, v3, Leb7;->c:Lg40;

    .line 489
    .line 490
    iget-object v10, v10, Lg40;->g:[Lwa7;

    .line 491
    .line 492
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 493
    .line 494
    .line 495
    move-result-object v10

    .line 496
    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 500
    .line 501
    .line 502
    move-result-object v7

    .line 503
    :cond_16
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 504
    .line 505
    .line 506
    move-result v10

    .line 507
    if-eqz v10, :cond_1b

    .line 508
    .line 509
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v10

    .line 513
    check-cast v10, Lwa7;

    .line 514
    .line 515
    iget-object v11, v10, Lwa7;->a:Ljava/lang/String;

    .line 516
    .line 517
    invoke-static {v11}, Ljq6;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v11

    .line 521
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    iget-object v10, v10, Lwa7;->r:Ljava/util/List;

    .line 525
    .line 526
    if-eqz v10, :cond_17

    .line 527
    .line 528
    invoke-static {v10}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 529
    .line 530
    .line 531
    move-result-object v10

    .line 532
    goto :goto_f

    .line 533
    :cond_17
    move-object v10, v1

    .line 534
    :goto_f
    if-nez v10, :cond_18

    .line 535
    .line 536
    sget-object v10, Lov2;->a:Lov2;

    .line 537
    .line 538
    :cond_18
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 539
    .line 540
    .line 541
    move-result v11

    .line 542
    if-eqz v11, :cond_19

    .line 543
    .line 544
    goto :goto_e

    .line 545
    :cond_19
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 546
    .line 547
    .line 548
    move-result-object v10

    .line 549
    :cond_1a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 550
    .line 551
    .line 552
    move-result v11

    .line 553
    if-eqz v11, :cond_16

    .line 554
    .line 555
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v11

    .line 559
    check-cast v11, Lgb7;

    .line 560
    .line 561
    iget-object v11, v11, Lgb7;->a:Lfb7;

    .line 562
    .line 563
    sget-object v12, Lfb7;->n:Lfb7;

    .line 564
    .line 565
    if-ne v11, v12, :cond_1a

    .line 566
    .line 567
    move v4, v6

    .line 568
    goto :goto_e

    .line 569
    :catchall_5
    move-exception p0

    .line 570
    goto :goto_13

    .line 571
    :cond_1b
    if-nez v4, :cond_1c

    .line 572
    .line 573
    invoke-virtual {v0}, Ljq6;->k()Z

    .line 574
    .line 575
    .line 576
    move-result v4

    .line 577
    :cond_1c
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-eqz v0, :cond_1d

    .line 582
    .line 583
    goto :goto_10

    .line 584
    :cond_1d
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 589
    .line 590
    .line 591
    move-result v6

    .line 592
    if-eqz v6, :cond_1f

    .line 593
    .line 594
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v6

    .line 598
    check-cast v6, Ljava/lang/String;

    .line 599
    .line 600
    const/16 v7, 0x2e

    .line 601
    .line 602
    invoke-static {v6, v7}, Lnq7;->B0(Ljava/lang/String;C)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v6

    .line 606
    const-string v7, "compressed"

    .line 607
    .line 608
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v6

    .line 612
    if-eqz v6, :cond_1e

    .line 613
    .line 614
    move v8, v9

    .line 615
    :cond_1f
    :goto_10
    const-string v0, "7Z AES-256"

    .line 616
    .line 617
    if-eqz v4, :cond_20

    .line 618
    .line 619
    goto :goto_11

    .line 620
    :cond_20
    move-object v0, v1

    .line 621
    :goto_11
    new-instance v6, Li40;

    .line 622
    .line 623
    invoke-direct {v6, v8, v5, v4, v0}, Li40;-><init>(ILjava/util/ArrayList;ZLjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 624
    .line 625
    .line 626
    :try_start_a
    invoke-virtual {v3}, Leb7;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 627
    .line 628
    .line 629
    invoke-virtual {v2}, Lc73;->close()V

    .line 630
    .line 631
    .line 632
    move-object v2, v6

    .line 633
    :goto_12
    iget v0, v2, Li40;->a:I

    .line 634
    .line 635
    if-ltz v0, :cond_21

    .line 636
    .line 637
    return-object v2

    .line 638
    :cond_21
    const-string v0, " ("

    .line 639
    .line 640
    const-string v3, ")"

    .line 641
    .line 642
    const-string v4, "Invalid archive info for file at "

    .line 643
    .line 644
    invoke-static {v4, p0, v0, v2, v3}, Lq;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 645
    .line 646
    .line 647
    return-object v1

    .line 648
    :catchall_6
    move-exception p0

    .line 649
    goto :goto_14

    .line 650
    :goto_13
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 651
    :catchall_7
    move-exception v0

    .line 652
    :try_start_c
    invoke-static {v3, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 653
    .line 654
    .line 655
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 656
    :goto_14
    :try_start_d
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 657
    :catchall_8
    move-exception v0

    .line 658
    invoke-static {v2, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 659
    .line 660
    .line 661
    throw v0

    .line 662
    :cond_22
    const-string v0, "LegacySevenZipArchive: Unable to open archive channel: "

    .line 663
    .line 664
    invoke-static {p0, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object p0

    .line 668
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    return-object v1

    .line 672
    :cond_23
    const-string v0, "Empty archive: "

    .line 673
    .line 674
    invoke-static {p0, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object p0

    .line 678
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 679
    .line 680
    .line 681
    return-object v1

    .line 682
    :catchall_9
    move-exception p0

    .line 683
    :try_start_e
    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 684
    :catchall_a
    move-exception v0

    .line 685
    invoke-static {v8, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 686
    .line 687
    .line 688
    throw v0
.end method

.method public static c(Lq63;)Li40;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/compress/Packer;->b(Lq63;)Li40;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "Error getting archive info for "

    .line 11
    .line 12
    invoke-static {p0, v1}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 17
    .line 18
    const/4 v6, 0x4

    .line 19
    const/4 v7, 0x0

    .line 20
    const-string v3, "Packer"

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const-string p0, "Packer"

    .line 27
    .line 28
    invoke-static {p0, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public static final eh(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, ","

    .line 5
    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x6

    .line 11
    invoke-static {p1, v0, v1}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    invoke-static {p1, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/String;

    .line 76
    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-static {p0, v0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-ne v0, v1, :cond_2

    .line 85
    .line 86
    return v1

    .line 87
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 88
    return p0
.end method

.method public static final vz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    new-instance v0, Ljava/util/zip/ZipFile;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lgl1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lgl1;-><init>(Ljava/util/Enumeration;)V

    .line 32
    .line 33
    .line 34
    new-instance p0, Lj77;

    .line 35
    .line 36
    invoke-direct {p0, v1}, Lj77;-><init>(Ljava/util/Iterator;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lws1;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lws1;-><init>(Lf77;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Lrf;

    .line 45
    .line 46
    const/4 v2, 0x3

    .line 47
    invoke-direct {p0, v2, p1, p2}, Lrf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lme3;

    .line 51
    .line 52
    const/4 p2, 0x1

    .line 53
    invoke-direct {p1, v1, p2, p0}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 54
    .line 55
    .line 56
    new-instance p0, Lle3;

    .line 57
    .line 58
    invoke-direct {p0, p1}, Lle3;-><init>(Lme3;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lle3;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Lle3;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Ljava/util/zip/ZipEntry;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lle3;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    invoke-virtual {p0}, Lle3;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/util/zip/ZipEntry;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 90
    .line 91
    .line 92
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    cmp-long p1, v1, v3

    .line 94
    .line 95
    if-gez p1, :cond_0

    .line 96
    .line 97
    move-wide v1, v3

    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    int-to-long p0, p3

    .line 102
    cmp-long p0, v1, p0

    .line 103
    .line 104
    if-gtz p0, :cond_2

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    const/4 p2, 0x0

    .line 108
    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 109
    .line 110
    .line 111
    return p2

    .line 112
    :cond_3
    :try_start_1
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 113
    .line 114
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 115
    .line 116
    .line 117
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    :catchall_1
    move-exception p1

    .line 120
    invoke-static {v0, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw p1
.end method
