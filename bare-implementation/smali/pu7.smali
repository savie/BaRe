.class public final Lpu7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lez2;

.field public final synthetic b:Z

.field public final synthetic c:Lbv7;


# direct methods
.method public constructor <init>(Lbv7;Lez2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpu7;->c:Lbv7;

    .line 5
    .line 6
    iput-object p2, p0, Lpu7;->a:Lez2;

    .line 7
    .line 8
    iput-boolean p3, p0, Lpu7;->b:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lpu7;->a:Lez2;

    .line 4
    .line 5
    invoke-virtual {v1}, Lez2;->e()Lqc6;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, v2, Lqc6;->a:Lgy5;

    .line 10
    .line 11
    iget-object v4, v2, Lqc6;->b:Loc6;

    .line 12
    .line 13
    iget-object v5, v0, Lpu7;->c:Lbv7;

    .line 14
    .line 15
    iget-object v6, v5, Lbv7;->a:Lua4;

    .line 16
    .line 17
    iget-object v7, v5, Lbv7;->d:Ljava/util/HashMap;

    .line 18
    .line 19
    iget-object v8, v5, Lbv7;->g:Leo5;

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    move-object v13, v3

    .line 23
    move v11, v10

    .line 24
    const/4 v12, 0x0

    .line 25
    :goto_0
    invoke-virtual {v6}, Lua4;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v14

    .line 29
    const/4 v15, 0x1

    .line 30
    if-nez v14, :cond_5

    .line 31
    .line 32
    iget-object v14, v6, Lua4;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v14, Llu7;

    .line 35
    .line 36
    if-eqz v14, :cond_3

    .line 37
    .line 38
    if-eqz v12, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v14, v13}, Llu7;->c(Lgy5;)Lqn5;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    :goto_1
    if-nez v11, :cond_2

    .line 46
    .line 47
    invoke-virtual {v14}, Llu7;->g()Z

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    if-eqz v11, :cond_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    move v11, v10

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    :goto_2
    move v11, v15

    .line 57
    :cond_3
    :goto_3
    invoke-virtual {v13}, Lgy5;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v14

    .line 61
    if-eqz v14, :cond_4

    .line 62
    .line 63
    const-string v14, ""

    .line 64
    .line 65
    invoke-static {v14}, Lm61;->b(Ljava/lang/String;)Lm61;

    .line 66
    .line 67
    .line 68
    move-result-object v14

    .line 69
    goto :goto_4

    .line 70
    :cond_4
    invoke-virtual {v13}, Lgy5;->k()Lm61;

    .line 71
    .line 72
    .line 73
    move-result-object v14

    .line 74
    :goto_4
    invoke-virtual {v6, v14}, Lua4;->f(Lm61;)Lua4;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v13}, Lgy5;->p()Lgy5;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    goto :goto_0

    .line 83
    :cond_5
    iget-object v6, v5, Lbv7;->a:Lua4;

    .line 84
    .line 85
    invoke-virtual {v6, v3}, Lua4;->e(Lgy5;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Llu7;

    .line 90
    .line 91
    if-nez v6, :cond_6

    .line 92
    .line 93
    new-instance v6, Llu7;

    .line 94
    .line 95
    invoke-direct {v6, v8}, Llu7;-><init>(Leo5;)V

    .line 96
    .line 97
    .line 98
    iget-object v13, v5, Lbv7;->a:Lua4;

    .line 99
    .line 100
    invoke-virtual {v13, v3, v6}, Lua4;->i(Lgy5;Ljava/lang/Object;)Lua4;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    iput-object v13, v5, Lbv7;->a:Lua4;

    .line 105
    .line 106
    goto :goto_7

    .line 107
    :cond_6
    if-nez v11, :cond_8

    .line 108
    .line 109
    invoke-virtual {v6}, Llu7;->g()Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eqz v11, :cond_7

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_7
    move v11, v10

    .line 117
    goto :goto_6

    .line 118
    :cond_8
    :goto_5
    move v11, v15

    .line 119
    :goto_6
    if-eqz v12, :cond_9

    .line 120
    .line 121
    goto :goto_7

    .line 122
    :cond_9
    sget-object v12, Lgy5;->d:Lgy5;

    .line 123
    .line 124
    invoke-virtual {v6, v12}, Llu7;->c(Lgy5;)Lqn5;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    :goto_7
    invoke-virtual {v8}, Leo5;->c()V

    .line 129
    .line 130
    .line 131
    if-eqz v12, :cond_a

    .line 132
    .line 133
    new-instance v8, Lgz0;

    .line 134
    .line 135
    iget-object v13, v4, Loc6;->e:Lnb4;

    .line 136
    .line 137
    new-instance v14, Lsb4;

    .line 138
    .line 139
    invoke-direct {v14, v12, v13}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {v8, v14, v15, v10}, Lgz0;-><init>(Lsb4;ZZ)V

    .line 143
    .line 144
    .line 145
    move/from16 v17, v15

    .line 146
    .line 147
    goto/16 :goto_a

    .line 148
    .line 149
    :cond_a
    invoke-virtual {v8, v2}, Leo5;->b(Lqc6;)Lgz0;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    sget-object v12, Lqv2;->e:Lqv2;

    .line 154
    .line 155
    iget-object v13, v5, Lbv7;->a:Lua4;

    .line 156
    .line 157
    invoke-virtual {v13, v3}, Lua4;->l(Lgy5;)Lua4;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    iget-object v13, v13, Lua4;->b:Loa4;

    .line 162
    .line 163
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v14

    .line 171
    if-eqz v14, :cond_c

    .line 172
    .line 173
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    check-cast v14, Ljava/util/Map$Entry;

    .line 178
    .line 179
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v16

    .line 183
    move/from16 v17, v15

    .line 184
    .line 185
    move-object/from16 v15, v16

    .line 186
    .line 187
    check-cast v15, Lua4;

    .line 188
    .line 189
    iget-object v15, v15, Lua4;->a:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v15, Llu7;

    .line 192
    .line 193
    if-eqz v15, :cond_b

    .line 194
    .line 195
    sget-object v9, Lgy5;->d:Lgy5;

    .line 196
    .line 197
    invoke-virtual {v15, v9}, Llu7;->c(Lgy5;)Lqn5;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    if-eqz v9, :cond_b

    .line 202
    .line 203
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    check-cast v14, Lm61;

    .line 208
    .line 209
    invoke-interface {v12, v14, v9}, Lqn5;->O(Lm61;Lqn5;)Lqn5;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    move-object v12, v9

    .line 214
    :cond_b
    move/from16 v15, v17

    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_c
    move/from16 v17, v15

    .line 218
    .line 219
    iget-object v8, v8, Lgz0;->a:Lsb4;

    .line 220
    .line 221
    iget-object v8, v8, Lsb4;->a:Lqn5;

    .line 222
    .line 223
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    :cond_d
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    if-eqz v9, :cond_e

    .line 232
    .line 233
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    check-cast v9, Lhk5;

    .line 238
    .line 239
    iget-object v13, v9, Lhk5;->a:Lm61;

    .line 240
    .line 241
    invoke-interface {v12, v13}, Lqn5;->c0(Lm61;)Z

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    if-nez v13, :cond_d

    .line 246
    .line 247
    iget-object v13, v9, Lhk5;->a:Lm61;

    .line 248
    .line 249
    iget-object v9, v9, Lhk5;->b:Lqn5;

    .line 250
    .line 251
    invoke-interface {v12, v13, v9}, Lqn5;->O(Lm61;Lqn5;)Lqn5;

    .line 252
    .line 253
    .line 254
    move-result-object v9

    .line 255
    move-object v12, v9

    .line 256
    goto :goto_9

    .line 257
    :cond_e
    new-instance v8, Lgz0;

    .line 258
    .line 259
    iget-object v9, v4, Loc6;->e:Lnb4;

    .line 260
    .line 261
    new-instance v13, Lsb4;

    .line 262
    .line 263
    invoke-direct {v13, v12, v9}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 264
    .line 265
    .line 266
    invoke-direct {v8, v13, v10, v10}, Lgz0;-><init>(Lsb4;ZZ)V

    .line 267
    .line 268
    .line 269
    :goto_a
    invoke-virtual {v6, v2}, Llu7;->h(Lqc6;)Lik8;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    if-eqz v9, :cond_f

    .line 274
    .line 275
    move/from16 v10, v17

    .line 276
    .line 277
    :cond_f
    if-nez v10, :cond_10

    .line 278
    .line 279
    invoke-virtual {v4}, Loc6;->d()Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-nez v4, :cond_10

    .line 284
    .line 285
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    xor-int/lit8 v4, v4, 0x1

    .line 290
    .line 291
    const-string v9, "View does not exist but we have a tag"

    .line 292
    .line 293
    invoke-static {v9, v4}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 294
    .line 295
    .line 296
    new-instance v4, Lhx7;

    .line 297
    .line 298
    iget-wide v12, v5, Lbv7;->i:J

    .line 299
    .line 300
    const-wide/16 v14, 0x1

    .line 301
    .line 302
    add-long/2addr v14, v12

    .line 303
    iput-wide v14, v5, Lbv7;->i:J

    .line 304
    .line 305
    invoke-direct {v4, v12, v13}, Lhx7;-><init>(J)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    iget-object v7, v5, Lbv7;->c:Ljava/util/HashMap;

    .line 312
    .line 313
    invoke-virtual {v7, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    :cond_10
    iget-object v4, v5, Lbv7;->b:Lvq;

    .line 317
    .line 318
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    new-instance v7, Lyf1;

    .line 322
    .line 323
    const/16 v9, 0xd

    .line 324
    .line 325
    invoke-direct {v7, v9, v3, v4}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    iget-object v3, v6, Llu7;->a:Ljava/util/HashMap;

    .line 329
    .line 330
    invoke-virtual {v1}, Lez2;->e()Lqc6;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-virtual {v6, v4, v7, v8}, Llu7;->f(Lqc6;Lyf1;Lgz0;)Lik8;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    iget-object v4, v4, Lqc6;->b:Loc6;

    .line 339
    .line 340
    invoke-virtual {v4}, Loc6;->d()Z

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    if-nez v8, :cond_12

    .line 345
    .line 346
    new-instance v8, Ljava/util/HashSet;

    .line 347
    .line 348
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 349
    .line 350
    .line 351
    iget-object v9, v7, Lik8;->c:Lib;

    .line 352
    .line 353
    iget-object v9, v9, Lib;->b:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v9, Lgz0;

    .line 356
    .line 357
    iget-object v9, v9, Lgz0;->a:Lsb4;

    .line 358
    .line 359
    iget-object v9, v9, Lsb4;->a:Lqn5;

    .line 360
    .line 361
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 362
    .line 363
    .line 364
    move-result-object v9

    .line 365
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 366
    .line 367
    .line 368
    move-result v12

    .line 369
    if-eqz v12, :cond_11

    .line 370
    .line 371
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v12

    .line 375
    check-cast v12, Lhk5;

    .line 376
    .line 377
    iget-object v12, v12, Lhk5;->a:Lm61;

    .line 378
    .line 379
    invoke-virtual {v8, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    goto :goto_b

    .line 383
    :cond_11
    iget-object v8, v6, Llu7;->b:Leo5;

    .line 384
    .line 385
    invoke-virtual {v8}, Leo5;->c()V

    .line 386
    .line 387
    .line 388
    :cond_12
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    if-nez v8, :cond_13

    .line 393
    .line 394
    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    :cond_13
    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    iget-object v3, v7, Lik8;->d:Ljava/util/ArrayList;

    .line 401
    .line 402
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    iget-object v3, v7, Lik8;->c:Lib;

    .line 406
    .line 407
    iget-object v3, v3, Lib;->b:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v3, Lgz0;

    .line 410
    .line 411
    new-instance v4, Ljava/util/ArrayList;

    .line 412
    .line 413
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .line 415
    .line 416
    iget-object v8, v3, Lgz0;->a:Lsb4;

    .line 417
    .line 418
    iget-object v9, v8, Lsb4;->a:Lqn5;

    .line 419
    .line 420
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 421
    .line 422
    .line 423
    move-result-object v9

    .line 424
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 425
    .line 426
    .line 427
    move-result v12

    .line 428
    if-eqz v12, :cond_14

    .line 429
    .line 430
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v12

    .line 434
    check-cast v12, Lhk5;

    .line 435
    .line 436
    iget-object v13, v12, Lhk5;->a:Lm61;

    .line 437
    .line 438
    iget-object v12, v12, Lhk5;->b:Lqn5;

    .line 439
    .line 440
    invoke-static {v12}, Lsb4;->d(Lqn5;)Lsb4;

    .line 441
    .line 442
    .line 443
    move-result-object v20

    .line 444
    new-instance v18, Lk31;

    .line 445
    .line 446
    const/16 v22, 0x0

    .line 447
    .line 448
    const/16 v23, 0x0

    .line 449
    .line 450
    const/16 v19, 0x2

    .line 451
    .line 452
    move-object/from16 v21, v13

    .line 453
    .line 454
    invoke-direct/range {v18 .. v23}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 455
    .line 456
    .line 457
    move-object/from16 v12, v18

    .line 458
    .line 459
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    goto :goto_c

    .line 463
    :cond_14
    iget-boolean v3, v3, Lgz0;->b:Z

    .line 464
    .line 465
    if-eqz v3, :cond_15

    .line 466
    .line 467
    new-instance v18, Lk31;

    .line 468
    .line 469
    const/16 v22, 0x0

    .line 470
    .line 471
    const/16 v23, 0x0

    .line 472
    .line 473
    const/16 v19, 0x5

    .line 474
    .line 475
    const/16 v21, 0x0

    .line 476
    .line 477
    move-object/from16 v20, v8

    .line 478
    .line 479
    invoke-direct/range {v18 .. v23}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 480
    .line 481
    .line 482
    move-object/from16 v8, v18

    .line 483
    .line 484
    move-object/from16 v3, v20

    .line 485
    .line 486
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    goto :goto_d

    .line 490
    :cond_15
    move-object v3, v8

    .line 491
    :goto_d
    invoke-virtual {v7, v4, v3, v1}, Lik8;->a(Ljava/util/ArrayList;Lsb4;Lez2;)Ljava/util/ArrayList;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    if-nez v10, :cond_17

    .line 496
    .line 497
    if-nez v11, :cond_17

    .line 498
    .line 499
    iget-boolean v0, v0, Lpu7;->b:Z

    .line 500
    .line 501
    if-nez v0, :cond_17

    .line 502
    .line 503
    invoke-virtual {v6, v2}, Llu7;->h(Lqc6;)Lik8;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    iget-object v3, v2, Lqc6;->a:Lgy5;

    .line 508
    .line 509
    invoke-virtual {v5, v2}, Lbv7;->m(Lqc6;)Lhx7;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    new-instance v6, Lgd;

    .line 514
    .line 515
    invoke-direct {v6, v5, v0}, Lgd;-><init>(Lbv7;Lik8;)V

    .line 516
    .line 517
    .line 518
    iget-object v0, v5, Lbv7;->f:Lav7;

    .line 519
    .line 520
    invoke-static {v2}, Lbv7;->k(Lqc6;)Lqc6;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-interface {v0, v2, v4, v6, v6}, Lav7;->f(Lqc6;Lhx7;Lgd;Lgd;)V

    .line 525
    .line 526
    .line 527
    iget-object v0, v5, Lbv7;->a:Lua4;

    .line 528
    .line 529
    invoke-virtual {v0, v3}, Lua4;->l(Lgy5;)Lua4;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    if-eqz v4, :cond_16

    .line 534
    .line 535
    iget-object v0, v0, Lua4;->a:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v0, Llu7;

    .line 538
    .line 539
    invoke-virtual {v0}, Llu7;->g()Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    xor-int/lit8 v0, v0, 0x1

    .line 544
    .line 545
    const-string v2, "If we\'re adding a query, it shouldn\'t be shadowed"

    .line 546
    .line 547
    invoke-static {v2, v0}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 548
    .line 549
    .line 550
    return-object v1

    .line 551
    :cond_16
    new-instance v2, Lrb;

    .line 552
    .line 553
    const/16 v3, 0x17

    .line 554
    .line 555
    invoke-direct {v2, v5, v3}, Lrb;-><init>(Ljava/lang/Object;I)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 559
    .line 560
    .line 561
    sget-object v3, Lgy5;->d:Lgy5;

    .line 562
    .line 563
    const/4 v4, 0x0

    .line 564
    invoke-virtual {v0, v3, v2, v4}, Lua4;->d(Lgy5;Lta4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    :cond_17
    return-object v1
.end method
