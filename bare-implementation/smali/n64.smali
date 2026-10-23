.class public final Ln64;
.super Lr4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lcu0;

.field public b:Lk75;

.field public c:Lyc9;

.field public final d:Lge;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lge;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ln64;->d:Lge;

    .line 10
    .line 11
    new-instance v0, Lcu0;

    .line 12
    .line 13
    invoke-direct {v0}, Lcu0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ln64;->a:Lcu0;

    .line 17
    .line 18
    return-void
.end method

.method public static j(Ln64;Lbs2;Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    if-eqz v0, :cond_29

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v1, v1, Ln64;->b:Lk75;

    .line 8
    .line 9
    move-object/from16 v2, p1

    .line 10
    .line 11
    iget-object v2, v2, Lbs2;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lwj7;

    .line 14
    .line 15
    iget-object v3, v2, Lwj7;->a:Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-object v4, v1, Lk75;->a:Lge;

    .line 18
    .line 19
    iget-object v5, v1, Lk75;->a:Lge;

    .line 20
    .line 21
    sget-object v6, Lk75;->h:Ljava/util/Set;

    .line 22
    .line 23
    sget-object v7, Lk75;->i:Ljava/util/Set;

    .line 24
    .line 25
    iget-object v8, v1, Lk75;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    sget-object v9, Lk75;->g:Ljava/util/Set;

    .line 28
    .line 29
    new-instance v10, Lo58;

    .line 30
    .line 31
    new-instance v11, Le51;

    .line 32
    .line 33
    invoke-direct {v11, v0}, Le51;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lzw5;

    .line 37
    .line 38
    const/4 v12, 0x0

    .line 39
    invoke-direct {v0, v12}, Lzw5;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v10, v11, v0}, Lo58;-><init>(Le51;Lzw5;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-boolean v0, v10, Lo58;->e:Z

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    iget-object v0, v10, Lo58;->c:Le88;

    .line 50
    .line 51
    iget-object v11, v10, Lo58;->a:Le51;

    .line 52
    .line 53
    invoke-virtual {v0, v10, v11}, Le88;->d(Lo58;Le51;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, v10, Lo58;->g:Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    const/4 v13, 0x0

    .line 64
    iget-object v14, v10, Lo58;->l:Lw48;

    .line 65
    .line 66
    if-lez v11, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 73
    .line 74
    .line 75
    move-result v15

    .line 76
    invoke-virtual {v0, v12, v15}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iput-object v13, v10, Lo58;->f:Ljava/lang/String;

    .line 80
    .line 81
    iput-object v11, v14, Lw48;->c:Ljava/lang/String;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    iget-object v0, v10, Lo58;->f:Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    iput-object v0, v14, Lw48;->c:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v13, v10, Lo58;->f:Ljava/lang/String;

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    iput-boolean v12, v10, Lo58;->e:Z

    .line 94
    .line 95
    iget-object v14, v10, Lo58;->d:Lqb6;

    .line 96
    .line 97
    :goto_1
    iget v0, v14, Lqb6;->a:I

    .line 98
    .line 99
    const/4 v11, 0x6

    .line 100
    if-ne v11, v0, :cond_3

    .line 101
    .line 102
    goto/16 :goto_13

    .line 103
    .line 104
    :cond_3
    invoke-static {v0}, Ldj7;->A(I)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const/4 v11, 0x1

    .line 109
    const-string v13, "p"

    .line 110
    .line 111
    const-string v12, "pre"

    .line 112
    .line 113
    const/4 v15, 0x2

    .line 114
    if-eq v0, v11, :cond_17

    .line 115
    .line 116
    if-eq v0, v15, :cond_d

    .line 117
    .line 118
    const/4 v12, 0x4

    .line 119
    if-eq v0, v12, :cond_5

    .line 120
    .line 121
    :cond_4
    :goto_2
    move-object/from16 v16, v3

    .line 122
    .line 123
    goto/16 :goto_12

    .line 124
    .line 125
    :cond_5
    move-object v0, v14

    .line 126
    check-cast v0, Lw48;

    .line 127
    .line 128
    iget-boolean v12, v1, Lk75;->e:Z

    .line 129
    .line 130
    if-eqz v12, :cond_6

    .line 131
    .line 132
    iget-object v0, v0, Lw48;->c:Ljava/lang/String;

    .line 133
    .line 134
    :try_start_0
    invoke-virtual {v2, v0}, Lwj7;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_6
    iget-boolean v12, v1, Lk75;->f:Z

    .line 144
    .line 145
    if-eqz v12, :cond_8

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 148
    .line 149
    .line 150
    move-result v12

    .line 151
    if-lez v12, :cond_7

    .line 152
    .line 153
    add-int/lit8 v12, v12, -0x1

    .line 154
    .line 155
    invoke-interface {v2, v12}, Ljava/lang/CharSequence;->charAt(I)C

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    const/16 v13, 0xa

    .line 160
    .line 161
    if-eq v13, v12, :cond_7

    .line 162
    .line 163
    invoke-static {v2, v13}, Lnc8;->d(Ljava/lang/Appendable;C)V

    .line 164
    .line 165
    .line 166
    :cond_7
    const/4 v12, 0x0

    .line 167
    iput-boolean v12, v1, Lk75;->f:Z

    .line 168
    .line 169
    :cond_8
    iget-object v12, v1, Lk75;->b:Lus2;

    .line 170
    .line 171
    iget-object v0, v0, Lw48;->c:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 177
    .line 178
    .line 179
    move-result v12

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 181
    .line 182
    .line 183
    move-result v13

    .line 184
    move/from16 v17, v11

    .line 185
    .line 186
    const/4 v15, 0x0

    .line 187
    const/16 v16, 0x0

    .line 188
    .line 189
    :goto_3
    if-ge v15, v13, :cond_c

    .line 190
    .line 191
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 196
    .line 197
    .line 198
    move-result v18

    .line 199
    if-eqz v18, :cond_9

    .line 200
    .line 201
    move-object/from16 v18, v0

    .line 202
    .line 203
    move/from16 v16, v17

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_9
    if-eqz v16, :cond_a

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 209
    .line 210
    .line 211
    move-result v16

    .line 212
    if-lez v16, :cond_a

    .line 213
    .line 214
    move-object/from16 v18, v0

    .line 215
    .line 216
    add-int/lit8 v0, v16, -0x1

    .line 217
    .line 218
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_b

    .line 227
    .line 228
    const/16 v0, 0x20

    .line 229
    .line 230
    invoke-static {v2, v0}, Lnc8;->d(Ljava/lang/Appendable;C)V

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_a
    move-object/from16 v18, v0

    .line 235
    .line 236
    :cond_b
    :goto_4
    invoke-static {v2, v11}, Lnc8;->d(Ljava/lang/Appendable;C)V

    .line 237
    .line 238
    .line 239
    const/16 v16, 0x0

    .line 240
    .line 241
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 242
    .line 243
    move-object/from16 v0, v18

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_c
    if-eqz v16, :cond_4

    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-ge v12, v0, :cond_4

    .line 253
    .line 254
    const/16 v0, 0x20

    .line 255
    .line 256
    invoke-static {v2, v0}, Lnc8;->d(Ljava/lang/Appendable;C)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_2

    .line 260
    .line 261
    :cond_d
    move/from16 v17, v11

    .line 262
    .line 263
    move-object v0, v14

    .line 264
    check-cast v0, La58;

    .line 265
    .line 266
    iget-object v11, v0, Lc58;->d:Ljava/lang/String;

    .line 267
    .line 268
    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v11

    .line 272
    iget-object v0, v0, Lc58;->d:Ljava/lang/String;

    .line 273
    .line 274
    if-eqz v11, :cond_11

    .line 275
    .line 276
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 277
    .line 278
    .line 279
    move-result v11

    .line 280
    add-int/lit8 v11, v11, -0x1

    .line 281
    .line 282
    :goto_6
    const/4 v12, -0x1

    .line 283
    if-le v11, v12, :cond_f

    .line 284
    .line 285
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v12

    .line 289
    check-cast v12, Lp64;

    .line 290
    .line 291
    iget-object v13, v12, Lq64;->a:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v13

    .line 297
    if-eqz v13, :cond_e

    .line 298
    .line 299
    iget v13, v12, Lq64;->d:I

    .line 300
    .line 301
    if-gez v13, :cond_e

    .line 302
    .line 303
    move-object v13, v12

    .line 304
    goto :goto_7

    .line 305
    :cond_e
    add-int/lit8 v11, v11, -0x1

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_f
    const/4 v13, 0x0

    .line 309
    :goto_7
    if-eqz v13, :cond_4

    .line 310
    .line 311
    iget v0, v13, Lq64;->b:I

    .line 312
    .line 313
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 314
    .line 315
    .line 316
    move-result v11

    .line 317
    if-ne v0, v11, :cond_10

    .line 318
    .line 319
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    invoke-static {v13}, Lge;->A(Lq64;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    if-eqz v0, :cond_10

    .line 327
    .line 328
    :try_start_1
    invoke-virtual {v2, v0}, Lwj7;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    .line 330
    .line 331
    goto :goto_8

    .line 332
    :catch_1
    move-exception v0

    .line 333
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 334
    .line 335
    .line 336
    return-void

    .line 337
    :cond_10
    :goto_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    invoke-virtual {v13}, Lq64;->d()Z

    .line 342
    .line 343
    .line 344
    move-result v11

    .line 345
    if-nez v11, :cond_4

    .line 346
    .line 347
    iput v0, v13, Lq64;->d:I

    .line 348
    .line 349
    goto/16 :goto_2

    .line 350
    .line 351
    :cond_11
    iget-object v11, v1, Lk75;->d:Lo64;

    .line 352
    .line 353
    :goto_9
    if-eqz v11, :cond_12

    .line 354
    .line 355
    iget-object v15, v11, Lq64;->a:Ljava/lang/String;

    .line 356
    .line 357
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v15

    .line 361
    if-nez v15, :cond_12

    .line 362
    .line 363
    invoke-virtual {v11}, Lq64;->d()Z

    .line 364
    .line 365
    .line 366
    move-result v15

    .line 367
    if-nez v15, :cond_12

    .line 368
    .line 369
    iget-object v11, v11, Lo64;->e:Lo64;

    .line 370
    .line 371
    goto :goto_9

    .line 372
    :cond_12
    if-eqz v11, :cond_4

    .line 373
    .line 374
    iget v15, v11, Lq64;->b:I

    .line 375
    .line 376
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v12

    .line 380
    if-eqz v12, :cond_13

    .line 381
    .line 382
    const/4 v12, 0x0

    .line 383
    iput-boolean v12, v1, Lk75;->e:Z

    .line 384
    .line 385
    :cond_13
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 386
    .line 387
    .line 388
    move-result v12

    .line 389
    if-ne v15, v12, :cond_14

    .line 390
    .line 391
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    invoke-static {v11}, Lge;->A(Lq64;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v12

    .line 398
    if-eqz v12, :cond_14

    .line 399
    .line 400
    :try_start_2
    invoke-virtual {v2, v12}, Lwj7;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 401
    .line 402
    .line 403
    goto :goto_a

    .line 404
    :catch_2
    move-exception v0

    .line 405
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 406
    .line 407
    .line 408
    return-void

    .line 409
    :cond_14
    :goto_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 410
    .line 411
    .line 412
    move-result v12

    .line 413
    invoke-virtual {v11, v12}, Lo64;->e(I)V

    .line 414
    .line 415
    .line 416
    iget v12, v11, Lq64;->d:I

    .line 417
    .line 418
    if-ne v15, v12, :cond_15

    .line 419
    .line 420
    goto :goto_b

    .line 421
    :cond_15
    iget-object v12, v11, Lq64;->a:Ljava/lang/String;

    .line 422
    .line 423
    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v12

    .line 427
    iput-boolean v12, v1, Lk75;->f:Z

    .line 428
    .line 429
    :goto_b
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_16

    .line 434
    .line 435
    const/16 v13, 0xa

    .line 436
    .line 437
    invoke-static {v2, v13}, Lnc8;->d(Ljava/lang/Appendable;C)V

    .line 438
    .line 439
    .line 440
    :cond_16
    iget-object v0, v11, Lo64;->e:Lo64;

    .line 441
    .line 442
    iput-object v0, v1, Lk75;->d:Lo64;

    .line 443
    .line 444
    goto/16 :goto_2

    .line 445
    .line 446
    :cond_17
    move/from16 v17, v11

    .line 447
    .line 448
    move-object v0, v14

    .line 449
    check-cast v0, Lb58;

    .line 450
    .line 451
    iget-object v11, v0, Lc58;->d:Ljava/lang/String;

    .line 452
    .line 453
    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v11

    .line 457
    iget-object v15, v0, Lc58;->d:Ljava/lang/String;

    .line 458
    .line 459
    if-eqz v11, :cond_1d

    .line 460
    .line 461
    new-instance v11, Lp64;

    .line 462
    .line 463
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 464
    .line 465
    .line 466
    move-result v12

    .line 467
    invoke-static {v0}, Lk75;->a(Lb58;)Ljava/util/Map;

    .line 468
    .line 469
    .line 470
    move-result-object v13

    .line 471
    invoke-direct {v11, v15, v12, v13}, Lq64;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    .line 472
    .line 473
    .line 474
    iget-boolean v12, v1, Lk75;->f:Z

    .line 475
    .line 476
    if-eqz v12, :cond_19

    .line 477
    .line 478
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 479
    .line 480
    .line 481
    move-result v12

    .line 482
    if-lez v12, :cond_18

    .line 483
    .line 484
    add-int/lit8 v12, v12, -0x1

    .line 485
    .line 486
    invoke-interface {v2, v12}, Ljava/lang/CharSequence;->charAt(I)C

    .line 487
    .line 488
    .line 489
    move-result v12

    .line 490
    const/16 v13, 0xa

    .line 491
    .line 492
    if-eq v13, v12, :cond_18

    .line 493
    .line 494
    invoke-static {v2, v13}, Lnc8;->d(Ljava/lang/Appendable;C)V

    .line 495
    .line 496
    .line 497
    :cond_18
    const/4 v12, 0x0

    .line 498
    iput-boolean v12, v1, Lk75;->f:Z

    .line 499
    .line 500
    :cond_19
    invoke-interface {v6, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v12

    .line 504
    if-nez v12, :cond_1a

    .line 505
    .line 506
    iget-boolean v0, v0, Lc58;->j:Z

    .line 507
    .line 508
    if-eqz v0, :cond_1c

    .line 509
    .line 510
    :cond_1a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    invoke-static {v11}, Lge;->A(Lq64;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    if-eqz v0, :cond_1b

    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 520
    .line 521
    .line 522
    move-result v12

    .line 523
    if-lez v12, :cond_1b

    .line 524
    .line 525
    :try_start_3
    invoke-virtual {v2, v0}, Lwj7;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 526
    .line 527
    .line 528
    goto :goto_c

    .line 529
    :catch_3
    move-exception v0

    .line 530
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 531
    .line 532
    .line 533
    return-void

    .line 534
    :cond_1b
    :goto_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    invoke-virtual {v11}, Lq64;->d()Z

    .line 539
    .line 540
    .line 541
    move-result v12

    .line 542
    if-nez v12, :cond_1c

    .line 543
    .line 544
    iput v0, v11, Lq64;->d:I

    .line 545
    .line 546
    :cond_1c
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    goto/16 :goto_2

    .line 550
    .line 551
    :cond_1d
    iget-object v11, v1, Lk75;->d:Lo64;

    .line 552
    .line 553
    iget-object v11, v11, Lq64;->a:Ljava/lang/String;

    .line 554
    .line 555
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v11

    .line 559
    if-eqz v11, :cond_1e

    .line 560
    .line 561
    iget-object v11, v1, Lk75;->d:Lo64;

    .line 562
    .line 563
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 564
    .line 565
    .line 566
    move-result v13

    .line 567
    invoke-virtual {v11, v13}, Lo64;->e(I)V

    .line 568
    .line 569
    .line 570
    const/16 v13, 0xa

    .line 571
    .line 572
    invoke-static {v2, v13}, Lnc8;->d(Ljava/lang/Appendable;C)V

    .line 573
    .line 574
    .line 575
    iget-object v11, v1, Lk75;->d:Lo64;

    .line 576
    .line 577
    iget-object v11, v11, Lo64;->e:Lo64;

    .line 578
    .line 579
    iput-object v11, v1, Lk75;->d:Lo64;

    .line 580
    .line 581
    goto :goto_d

    .line 582
    :cond_1e
    const-string v11, "li"

    .line 583
    .line 584
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v13

    .line 588
    if-eqz v13, :cond_1f

    .line 589
    .line 590
    iget-object v13, v1, Lk75;->d:Lo64;

    .line 591
    .line 592
    iget-object v13, v13, Lq64;->a:Ljava/lang/String;

    .line 593
    .line 594
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v11

    .line 598
    if-eqz v11, :cond_1f

    .line 599
    .line 600
    iget-object v11, v1, Lk75;->d:Lo64;

    .line 601
    .line 602
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 603
    .line 604
    .line 605
    move-result v13

    .line 606
    invoke-virtual {v11, v13}, Lo64;->e(I)V

    .line 607
    .line 608
    .line 609
    iget-object v11, v1, Lk75;->d:Lo64;

    .line 610
    .line 611
    iget-object v11, v11, Lo64;->e:Lo64;

    .line 612
    .line 613
    iput-object v11, v1, Lk75;->d:Lo64;

    .line 614
    .line 615
    :cond_1f
    :goto_d
    invoke-interface {v7, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v11

    .line 619
    if-eqz v11, :cond_21

    .line 620
    .line 621
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result v11

    .line 625
    iput-boolean v11, v1, Lk75;->e:Z

    .line 626
    .line 627
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 628
    .line 629
    .line 630
    move-result v11

    .line 631
    if-lez v11, :cond_20

    .line 632
    .line 633
    add-int/lit8 v11, v11, -0x1

    .line 634
    .line 635
    invoke-interface {v2, v11}, Ljava/lang/CharSequence;->charAt(I)C

    .line 636
    .line 637
    .line 638
    move-result v11

    .line 639
    const/16 v13, 0xa

    .line 640
    .line 641
    if-eq v13, v11, :cond_20

    .line 642
    .line 643
    invoke-static {v2, v13}, Lnc8;->d(Ljava/lang/Appendable;C)V

    .line 644
    .line 645
    .line 646
    :cond_20
    const/4 v12, 0x0

    .line 647
    goto :goto_e

    .line 648
    :cond_21
    iget-boolean v11, v1, Lk75;->f:Z

    .line 649
    .line 650
    if-eqz v11, :cond_20

    .line 651
    .line 652
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 653
    .line 654
    .line 655
    move-result v11

    .line 656
    if-lez v11, :cond_22

    .line 657
    .line 658
    add-int/lit8 v11, v11, -0x1

    .line 659
    .line 660
    invoke-interface {v2, v11}, Ljava/lang/CharSequence;->charAt(I)C

    .line 661
    .line 662
    .line 663
    move-result v11

    .line 664
    const/16 v13, 0xa

    .line 665
    .line 666
    if-eq v13, v11, :cond_22

    .line 667
    .line 668
    invoke-static {v2, v13}, Lnc8;->d(Ljava/lang/Appendable;C)V

    .line 669
    .line 670
    .line 671
    :cond_22
    const/4 v12, 0x0

    .line 672
    iput-boolean v12, v1, Lk75;->f:Z

    .line 673
    .line 674
    :goto_e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 675
    .line 676
    .line 677
    move-result v11

    .line 678
    invoke-static {v0}, Lk75;->a(Lb58;)Ljava/util/Map;

    .line 679
    .line 680
    .line 681
    move-result-object v13

    .line 682
    iget-object v12, v1, Lk75;->d:Lo64;

    .line 683
    .line 684
    move-object/from16 v16, v3

    .line 685
    .line 686
    new-instance v3, Lo64;

    .line 687
    .line 688
    invoke-direct {v3, v15, v11, v13, v12}, Lo64;-><init>(Ljava/lang/String;ILjava/util/Map;Lo64;)V

    .line 689
    .line 690
    .line 691
    invoke-interface {v6, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    move-result v11

    .line 695
    if-nez v11, :cond_24

    .line 696
    .line 697
    iget-boolean v0, v0, Lc58;->j:Z

    .line 698
    .line 699
    if-eqz v0, :cond_23

    .line 700
    .line 701
    goto :goto_f

    .line 702
    :cond_23
    const/4 v11, 0x0

    .line 703
    goto :goto_10

    .line 704
    :cond_24
    :goto_f
    move/from16 v11, v17

    .line 705
    .line 706
    :goto_10
    if-eqz v11, :cond_26

    .line 707
    .line 708
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 709
    .line 710
    .line 711
    invoke-static {v3}, Lge;->A(Lq64;)Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    if-eqz v0, :cond_25

    .line 716
    .line 717
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 718
    .line 719
    .line 720
    move-result v13

    .line 721
    if-lez v13, :cond_25

    .line 722
    .line 723
    :try_start_4
    invoke-virtual {v2, v0}, Lwj7;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 724
    .line 725
    .line 726
    goto :goto_11

    .line 727
    :catch_4
    move-exception v0

    .line 728
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 729
    .line 730
    .line 731
    return-void

    .line 732
    :cond_25
    :goto_11
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    .line 733
    .line 734
    .line 735
    move-result v0

    .line 736
    invoke-virtual {v3, v0}, Lo64;->e(I)V

    .line 737
    .line 738
    .line 739
    :cond_26
    iget-object v0, v12, Lo64;->f:Ljava/util/ArrayList;

    .line 740
    .line 741
    if-nez v0, :cond_27

    .line 742
    .line 743
    new-instance v0, Ljava/util/ArrayList;

    .line 744
    .line 745
    const/4 v13, 0x2

    .line 746
    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 747
    .line 748
    .line 749
    iput-object v0, v12, Lo64;->f:Ljava/util/ArrayList;

    .line 750
    .line 751
    :cond_27
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    if-nez v11, :cond_28

    .line 755
    .line 756
    iput-object v3, v1, Lk75;->d:Lo64;

    .line 757
    .line 758
    :cond_28
    :goto_12
    invoke-virtual {v14}, Lqb6;->f()Lqb6;

    .line 759
    .line 760
    .line 761
    move-object/from16 v3, v16

    .line 762
    .line 763
    const/4 v12, 0x0

    .line 764
    goto/16 :goto_0

    .line 765
    .line 766
    :cond_29
    :goto_13
    return-void
.end method


# virtual methods
.method public final a(Lbs2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln64;->c:Lyc9;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ln64;->b:Lk75;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p0}, Lyc9;->c0(Lbs2;Lk75;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "Unexpected state, html-renderer is not defined"

    .line 12
    .line 13
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e(Li75;)V
    .locals 4

    .line 1
    iget-object p1, p0, Ln64;->a:Lcu0;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lv94;

    .line 7
    .line 8
    new-instance v1, Llk;

    .line 9
    .line 10
    new-instance v1, Lcz4;

    .line 11
    .line 12
    const/4 v2, 0x7

    .line 13
    invoke-direct {v1, v2}, Lcz4;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcu0;->a(Lix7;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lmv4;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcu0;->a(Lix7;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Llt0;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcu0;->a(Lix7;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lmr7;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {v0, v1}, Lmr7;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcu0;->a(Lix7;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lmr7;

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-direct {v0, v2}, Lmr7;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcu0;->a(Lix7;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lfv2;

    .line 57
    .line 58
    invoke-direct {v0, v2}, Lfv2;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcu0;->a(Lix7;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lxp7;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcu0;->a(Lix7;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lax4;

    .line 73
    .line 74
    invoke-direct {v0, v2}, Lax4;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcu0;->a(Lix7;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lax4;

    .line 81
    .line 82
    invoke-direct {v0, v1}, Lax4;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcu0;->a(Lix7;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lfv2;

    .line 89
    .line 90
    invoke-direct {v0, v1}, Lfv2;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcu0;->a(Lix7;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Ll34;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lcu0;->a(Lix7;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Lk75;

    .line 105
    .line 106
    new-instance v1, Lus2;

    .line 107
    .line 108
    const/16 v3, 0x1c

    .line 109
    .line 110
    invoke-direct {v1, v3}, Lus2;-><init>(I)V

    .line 111
    .line 112
    .line 113
    iget-object v3, p0, Ln64;->d:Lge;

    .line 114
    .line 115
    invoke-direct {v0, v3, v1}, Lk75;-><init>(Lge;Lus2;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Ln64;->b:Lk75;

    .line 119
    .line 120
    iget-object v0, p1, Lcu0;->b:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Ljava/util/HashMap;

    .line 123
    .line 124
    iget-boolean v1, p1, Lcu0;->a:Z

    .line 125
    .line 126
    if-nez v1, :cond_1

    .line 127
    .line 128
    iput-boolean v2, p1, Lcu0;->a:Z

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-lez p1, :cond_0

    .line 135
    .line 136
    new-instance p1, Ll75;

    .line 137
    .line 138
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-direct {p1, v0}, Ll75;-><init>(Ljava/util/Map;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_0
    new-instance p1, Lm75;

    .line 147
    .line 148
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 149
    .line 150
    .line 151
    :goto_0
    iput-object p1, p0, Ln64;->c:Lyc9;

    .line 152
    .line 153
    return-void

    .line 154
    :cond_1
    const-string p0, "Builder has been already built"

    .line 155
    .line 156
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public final i(Lom5;)V
    .locals 2

    .line 1
    new-instance v0, Lm64;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lm64;-><init>(Ln64;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lh64;

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ll64;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ll64;-><init>(Ln64;)V

    .line 14
    .line 15
    .line 16
    const-class p0, Lk64;

    .line 17
    .line 18
    invoke-virtual {p1, p0, v0}, Lom5;->g(Ljava/lang/Class;Lp75;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
