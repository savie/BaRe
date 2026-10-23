.class public abstract Lo25;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lib;

.field public static final b:Lib;

.field public static final c:Lib;

.field public static final d:Lib;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v9, "chars"

    .line 2
    .line 3
    const-string v10, "markers"

    .line 4
    .line 5
    const-string v0, "w"

    .line 6
    .line 7
    const-string v1, "h"

    .line 8
    .line 9
    const-string v2, "ip"

    .line 10
    .line 11
    const-string v3, "op"

    .line 12
    .line 13
    const-string v4, "fr"

    .line 14
    .line 15
    const-string v5, "v"

    .line 16
    .line 17
    const-string v6, "layers"

    .line 18
    .line 19
    const-string v7, "assets"

    .line 20
    .line 21
    const-string v8, "fonts"

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lib;->k([Ljava/lang/String;)Lib;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lo25;->a:Lib;

    .line 32
    .line 33
    const-string v5, "p"

    .line 34
    .line 35
    const-string v6, "u"

    .line 36
    .line 37
    const-string v1, "id"

    .line 38
    .line 39
    const-string v2, "layers"

    .line 40
    .line 41
    const-string v3, "w"

    .line 42
    .line 43
    const-string v4, "h"

    .line 44
    .line 45
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Lib;->k([Ljava/lang/String;)Lib;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lo25;->b:Lib;

    .line 54
    .line 55
    const-string v0, "list"

    .line 56
    .line 57
    filled-new-array {v0}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lib;->k([Ljava/lang/String;)Lib;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lo25;->c:Lib;

    .line 66
    .line 67
    const-string v0, "tm"

    .line 68
    .line 69
    const-string v1, "dr"

    .line 70
    .line 71
    const-string v2, "cm"

    .line 72
    .line 73
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lib;->k([Ljava/lang/String;)Lib;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lo25;->d:Lib;

    .line 82
    .line 83
    return-void
.end method

.method public static a(Lcn4;)Le25;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lmi8;->c()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-instance v2, Lv15;

    .line 8
    .line 9
    invoke-direct {v2}, Lv15;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v4, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v5, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v6, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v7, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v8, Lyj7;

    .line 38
    .line 39
    invoke-direct {v8}, Lyj7;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v9, Le25;

    .line 43
    .line 44
    invoke-direct {v9}, Le25;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcn4;->b()V

    .line 48
    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v12, 0x0

    .line 52
    const/4 v13, 0x0

    .line 53
    const/4 v14, 0x0

    .line 54
    const/4 v15, 0x0

    .line 55
    :goto_0
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 56
    .line 57
    .line 58
    move-result v16

    .line 59
    if-eqz v16, :cond_2a

    .line 60
    .line 61
    sget-object v11, Lo25;->a:Lib;

    .line 62
    .line 63
    invoke-virtual {v0, v11}, Lcn4;->A(Lib;)I

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    move/from16 v17, v1

    .line 68
    .line 69
    const/16 v19, 0x0

    .line 70
    .line 71
    packed-switch v11, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcn4;->D()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcn4;->G()V

    .line 78
    .line 79
    .line 80
    move-object/from16 v26, v6

    .line 81
    .line 82
    move-object/from16 v25, v7

    .line 83
    .line 84
    move-object/from16 v27, v8

    .line 85
    .line 86
    move-object v6, v9

    .line 87
    move/from16 v24, v10

    .line 88
    .line 89
    move/from16 v21, v14

    .line 90
    .line 91
    move/from16 v22, v15

    .line 92
    .line 93
    goto/16 :goto_16

    .line 94
    .line 95
    :pswitch_0
    invoke-virtual {v0}, Lcn4;->a()V

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-eqz v11, :cond_4

    .line 103
    .line 104
    invoke-virtual {v0}, Lcn4;->b()V

    .line 105
    .line 106
    .line 107
    move-object/from16 v11, v19

    .line 108
    .line 109
    const/16 v21, 0x0

    .line 110
    .line 111
    const/16 v22, 0x0

    .line 112
    .line 113
    :goto_2
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 114
    .line 115
    .line 116
    move-result v18

    .line 117
    if-eqz v18, :cond_3

    .line 118
    .line 119
    sget-object v1, Lo25;->d:Lib;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcn4;->A(Lib;)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    move/from16 v24, v10

    .line 128
    .line 129
    const/4 v10, 0x1

    .line 130
    if-eq v1, v10, :cond_1

    .line 131
    .line 132
    const/4 v10, 0x2

    .line 133
    if-eq v1, v10, :cond_0

    .line 134
    .line 135
    invoke-virtual {v0}, Lcn4;->D()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcn4;->G()V

    .line 139
    .line 140
    .line 141
    :goto_3
    move/from16 v10, v24

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_0
    move v1, v14

    .line 145
    move v10, v15

    .line 146
    invoke-virtual {v0}, Lcn4;->q()D

    .line 147
    .line 148
    .line 149
    move-result-wide v14

    .line 150
    double-to-float v14, v14

    .line 151
    move v15, v10

    .line 152
    move/from16 v22, v14

    .line 153
    .line 154
    :goto_4
    move/from16 v10, v24

    .line 155
    .line 156
    move v14, v1

    .line 157
    goto :goto_2

    .line 158
    :cond_1
    move v1, v14

    .line 159
    move v10, v15

    .line 160
    invoke-virtual {v0}, Lcn4;->q()D

    .line 161
    .line 162
    .line 163
    move-result-wide v14

    .line 164
    double-to-float v14, v14

    .line 165
    move v15, v10

    .line 166
    move/from16 v21, v14

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_2
    move/from16 v24, v10

    .line 170
    .line 171
    move v1, v14

    .line 172
    move v10, v15

    .line 173
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    goto :goto_3

    .line 178
    :cond_3
    move/from16 v24, v10

    .line 179
    .line 180
    move v1, v14

    .line 181
    move v10, v15

    .line 182
    invoke-virtual {v0}, Lcn4;->h()V

    .line 183
    .line 184
    .line 185
    new-instance v14, Lg75;

    .line 186
    .line 187
    move/from16 v15, v21

    .line 188
    .line 189
    move/from16 v21, v1

    .line 190
    .line 191
    move/from16 v1, v22

    .line 192
    .line 193
    invoke-direct {v14, v11, v15, v1}, Lg75;-><init>(Ljava/lang/String;FF)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move v15, v10

    .line 200
    move/from16 v14, v21

    .line 201
    .line 202
    move/from16 v10, v24

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_4
    move/from16 v24, v10

    .line 206
    .line 207
    move/from16 v21, v14

    .line 208
    .line 209
    move v10, v15

    .line 210
    invoke-virtual {v0}, Lcn4;->g()V

    .line 211
    .line 212
    .line 213
    :goto_5
    move-object/from16 v26, v6

    .line 214
    .line 215
    move-object/from16 v25, v7

    .line 216
    .line 217
    move-object/from16 v27, v8

    .line 218
    .line 219
    move-object v6, v9

    .line 220
    move/from16 v22, v10

    .line 221
    .line 222
    goto/16 :goto_16

    .line 223
    .line 224
    :pswitch_1
    move/from16 v24, v10

    .line 225
    .line 226
    move/from16 v21, v14

    .line 227
    .line 228
    move v10, v15

    .line 229
    invoke-virtual {v0}, Lcn4;->a()V

    .line 230
    .line 231
    .line 232
    :goto_6
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_f

    .line 237
    .line 238
    sget-object v1, Lzp3;->a:Lib;

    .line 239
    .line 240
    new-instance v1, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Lcn4;->b()V

    .line 246
    .line 247
    .line 248
    const-wide/16 v14, 0x0

    .line 249
    .line 250
    move-wide/from16 v28, v14

    .line 251
    .line 252
    move-object/from16 v30, v19

    .line 253
    .line 254
    move-object/from16 v31, v30

    .line 255
    .line 256
    const/16 v27, 0x0

    .line 257
    .line 258
    :goto_7
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 259
    .line 260
    .line 261
    move-result v11

    .line 262
    if-eqz v11, :cond_e

    .line 263
    .line 264
    sget-object v11, Lzp3;->a:Lib;

    .line 265
    .line 266
    invoke-virtual {v0, v11}, Lcn4;->A(Lib;)I

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    if-eqz v11, :cond_d

    .line 271
    .line 272
    const/4 v14, 0x1

    .line 273
    if-eq v11, v14, :cond_c

    .line 274
    .line 275
    const/4 v14, 0x2

    .line 276
    if-eq v11, v14, :cond_b

    .line 277
    .line 278
    const/4 v14, 0x3

    .line 279
    if-eq v11, v14, :cond_a

    .line 280
    .line 281
    const/4 v14, 0x4

    .line 282
    if-eq v11, v14, :cond_9

    .line 283
    .line 284
    const/4 v14, 0x5

    .line 285
    if-eq v11, v14, :cond_5

    .line 286
    .line 287
    invoke-virtual {v0}, Lcn4;->D()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Lcn4;->G()V

    .line 291
    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_5
    invoke-virtual {v0}, Lcn4;->b()V

    .line 295
    .line 296
    .line 297
    :goto_8
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 298
    .line 299
    .line 300
    move-result v11

    .line 301
    if-eqz v11, :cond_8

    .line 302
    .line 303
    sget-object v11, Lzp3;->b:Lib;

    .line 304
    .line 305
    invoke-virtual {v0, v11}, Lcn4;->A(Lib;)I

    .line 306
    .line 307
    .line 308
    move-result v11

    .line 309
    if-eqz v11, :cond_6

    .line 310
    .line 311
    invoke-virtual {v0}, Lcn4;->D()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Lcn4;->G()V

    .line 315
    .line 316
    .line 317
    goto :goto_8

    .line 318
    :cond_6
    invoke-virtual {v0}, Lcn4;->a()V

    .line 319
    .line 320
    .line 321
    :goto_9
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 322
    .line 323
    .line 324
    move-result v11

    .line 325
    if-eqz v11, :cond_7

    .line 326
    .line 327
    invoke-static {v0, v9}, Luu1;->a(Lcn4;Le25;)Ltu1;

    .line 328
    .line 329
    .line 330
    move-result-object v11

    .line 331
    check-cast v11, Lbc7;

    .line 332
    .line 333
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_7
    invoke-virtual {v0}, Lcn4;->g()V

    .line 338
    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_8
    invoke-virtual {v0}, Lcn4;->h()V

    .line 342
    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_9
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v31

    .line 349
    goto :goto_7

    .line 350
    :cond_a
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v30

    .line 354
    goto :goto_7

    .line 355
    :cond_b
    invoke-virtual {v0}, Lcn4;->q()D

    .line 356
    .line 357
    .line 358
    move-result-wide v28

    .line 359
    goto :goto_7

    .line 360
    :cond_c
    invoke-virtual {v0}, Lcn4;->q()D

    .line 361
    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_d
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    const/4 v14, 0x0

    .line 369
    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    .line 370
    .line 371
    .line 372
    move-result v27

    .line 373
    goto :goto_7

    .line 374
    :cond_e
    invoke-virtual {v0}, Lcn4;->h()V

    .line 375
    .line 376
    .line 377
    new-instance v25, Lyp3;

    .line 378
    .line 379
    move-object/from16 v26, v1

    .line 380
    .line 381
    invoke-direct/range {v25 .. v31}, Lyp3;-><init>(Ljava/util/ArrayList;CDLjava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    move-object/from16 v1, v25

    .line 385
    .line 386
    invoke-virtual {v1}, Lyp3;->hashCode()I

    .line 387
    .line 388
    .line 389
    move-result v11

    .line 390
    invoke-virtual {v8, v11, v1}, Lyj7;->b(ILjava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_6

    .line 394
    .line 395
    :cond_f
    invoke-virtual {v0}, Lcn4;->g()V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_5

    .line 399
    .line 400
    :pswitch_2
    move/from16 v24, v10

    .line 401
    .line 402
    move/from16 v21, v14

    .line 403
    .line 404
    move v10, v15

    .line 405
    invoke-virtual {v0}, Lcn4;->b()V

    .line 406
    .line 407
    .line 408
    :goto_a
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-eqz v1, :cond_17

    .line 413
    .line 414
    sget-object v1, Lo25;->c:Lib;

    .line 415
    .line 416
    invoke-virtual {v0, v1}, Lcn4;->A(Lib;)I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_10

    .line 421
    .line 422
    invoke-virtual {v0}, Lcn4;->D()V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Lcn4;->G()V

    .line 426
    .line 427
    .line 428
    goto :goto_a

    .line 429
    :cond_10
    invoke-virtual {v0}, Lcn4;->a()V

    .line 430
    .line 431
    .line 432
    :goto_b
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-eqz v1, :cond_16

    .line 437
    .line 438
    sget-object v1, Laq3;->a:Lib;

    .line 439
    .line 440
    invoke-virtual {v0}, Lcn4;->b()V

    .line 441
    .line 442
    .line 443
    move-object/from16 v1, v19

    .line 444
    .line 445
    move-object v11, v1

    .line 446
    move-object v14, v11

    .line 447
    :goto_c
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 448
    .line 449
    .line 450
    move-result v15

    .line 451
    if-eqz v15, :cond_15

    .line 452
    .line 453
    sget-object v15, Laq3;->a:Lib;

    .line 454
    .line 455
    invoke-virtual {v0, v15}, Lcn4;->A(Lib;)I

    .line 456
    .line 457
    .line 458
    move-result v15

    .line 459
    if-eqz v15, :cond_14

    .line 460
    .line 461
    move/from16 v22, v10

    .line 462
    .line 463
    const/4 v10, 0x1

    .line 464
    if-eq v15, v10, :cond_13

    .line 465
    .line 466
    const/4 v10, 0x2

    .line 467
    if-eq v15, v10, :cond_12

    .line 468
    .line 469
    const/4 v10, 0x3

    .line 470
    if-eq v15, v10, :cond_11

    .line 471
    .line 472
    invoke-virtual {v0}, Lcn4;->D()V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0}, Lcn4;->G()V

    .line 476
    .line 477
    .line 478
    :goto_d
    move/from16 v10, v22

    .line 479
    .line 480
    goto :goto_c

    .line 481
    :cond_11
    invoke-virtual {v0}, Lcn4;->q()D

    .line 482
    .line 483
    .line 484
    goto :goto_d

    .line 485
    :cond_12
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v14

    .line 489
    goto :goto_d

    .line 490
    :cond_13
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v11

    .line 494
    goto :goto_d

    .line 495
    :cond_14
    move/from16 v22, v10

    .line 496
    .line 497
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    goto :goto_c

    .line 502
    :cond_15
    move/from16 v22, v10

    .line 503
    .line 504
    invoke-virtual {v0}, Lcn4;->h()V

    .line 505
    .line 506
    .line 507
    new-instance v10, Lvp3;

    .line 508
    .line 509
    invoke-direct {v10, v1, v11, v14}, Lvp3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move/from16 v10, v22

    .line 516
    .line 517
    goto :goto_b

    .line 518
    :cond_16
    move/from16 v22, v10

    .line 519
    .line 520
    invoke-virtual {v0}, Lcn4;->g()V

    .line 521
    .line 522
    .line 523
    goto :goto_a

    .line 524
    :cond_17
    move/from16 v22, v10

    .line 525
    .line 526
    invoke-virtual {v0}, Lcn4;->h()V

    .line 527
    .line 528
    .line 529
    move-object/from16 v26, v6

    .line 530
    .line 531
    move-object/from16 v25, v7

    .line 532
    .line 533
    move-object/from16 v27, v8

    .line 534
    .line 535
    move-object v6, v9

    .line 536
    goto/16 :goto_16

    .line 537
    .line 538
    :pswitch_3
    move/from16 v24, v10

    .line 539
    .line 540
    move/from16 v21, v14

    .line 541
    .line 542
    move/from16 v22, v15

    .line 543
    .line 544
    invoke-virtual {v0}, Lcn4;->a()V

    .line 545
    .line 546
    .line 547
    :goto_e
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    if-eqz v1, :cond_21

    .line 552
    .line 553
    new-instance v1, Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .line 557
    .line 558
    new-instance v10, Lv15;

    .line 559
    .line 560
    invoke-direct {v10}, Lv15;-><init>()V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0}, Lcn4;->b()V

    .line 564
    .line 565
    .line 566
    move-object/from16 v25, v7

    .line 567
    .line 568
    move-object/from16 v7, v19

    .line 569
    .line 570
    move-object v15, v7

    .line 571
    const/4 v11, 0x0

    .line 572
    const/4 v14, 0x0

    .line 573
    :goto_f
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 574
    .line 575
    .line 576
    move-result v26

    .line 577
    if-eqz v26, :cond_1f

    .line 578
    .line 579
    move-object/from16 v26, v6

    .line 580
    .line 581
    sget-object v6, Lo25;->b:Lib;

    .line 582
    .line 583
    invoke-virtual {v0, v6}, Lcn4;->A(Lib;)I

    .line 584
    .line 585
    .line 586
    move-result v6

    .line 587
    if-eqz v6, :cond_1e

    .line 588
    .line 589
    move-object/from16 v27, v8

    .line 590
    .line 591
    const/4 v8, 0x1

    .line 592
    if-eq v6, v8, :cond_1c

    .line 593
    .line 594
    const/4 v8, 0x2

    .line 595
    if-eq v6, v8, :cond_1b

    .line 596
    .line 597
    const/4 v8, 0x3

    .line 598
    if-eq v6, v8, :cond_1a

    .line 599
    .line 600
    const/4 v8, 0x4

    .line 601
    if-eq v6, v8, :cond_19

    .line 602
    .line 603
    const/4 v8, 0x5

    .line 604
    if-eq v6, v8, :cond_18

    .line 605
    .line 606
    invoke-virtual {v0}, Lcn4;->D()V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0}, Lcn4;->G()V

    .line 610
    .line 611
    .line 612
    move-object/from16 v18, v9

    .line 613
    .line 614
    goto :goto_12

    .line 615
    :cond_18
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    :goto_10
    move-object/from16 v6, v26

    .line 619
    .line 620
    move-object/from16 v8, v27

    .line 621
    .line 622
    goto :goto_f

    .line 623
    :cond_19
    const/4 v8, 0x5

    .line 624
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v15

    .line 628
    goto :goto_10

    .line 629
    :cond_1a
    const/4 v8, 0x5

    .line 630
    invoke-virtual {v0}, Lcn4;->r()I

    .line 631
    .line 632
    .line 633
    move-result v14

    .line 634
    goto :goto_10

    .line 635
    :cond_1b
    const/4 v8, 0x5

    .line 636
    invoke-virtual {v0}, Lcn4;->r()I

    .line 637
    .line 638
    .line 639
    move-result v11

    .line 640
    goto :goto_10

    .line 641
    :cond_1c
    const/4 v8, 0x5

    .line 642
    invoke-virtual {v0}, Lcn4;->a()V

    .line 643
    .line 644
    .line 645
    :goto_11
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 646
    .line 647
    .line 648
    move-result v6

    .line 649
    if-eqz v6, :cond_1d

    .line 650
    .line 651
    invoke-static {v0, v9}, Lks4;->a(Lcn4;Le25;)Ljs4;

    .line 652
    .line 653
    .line 654
    move-result-object v6

    .line 655
    move-object/from16 v18, v9

    .line 656
    .line 657
    iget-wide v8, v6, Ljs4;->d:J

    .line 658
    .line 659
    invoke-virtual {v10, v6, v8, v9}, Lv15;->e(Ljava/lang/Object;J)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-object/from16 v9, v18

    .line 666
    .line 667
    const/4 v8, 0x5

    .line 668
    goto :goto_11

    .line 669
    :cond_1d
    move-object/from16 v18, v9

    .line 670
    .line 671
    invoke-virtual {v0}, Lcn4;->g()V

    .line 672
    .line 673
    .line 674
    :goto_12
    move-object/from16 v9, v18

    .line 675
    .line 676
    goto :goto_10

    .line 677
    :cond_1e
    move-object/from16 v27, v8

    .line 678
    .line 679
    move-object/from16 v18, v9

    .line 680
    .line 681
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v7

    .line 685
    move-object/from16 v6, v26

    .line 686
    .line 687
    goto :goto_f

    .line 688
    :cond_1f
    move-object/from16 v26, v6

    .line 689
    .line 690
    move-object/from16 v27, v8

    .line 691
    .line 692
    move-object/from16 v18, v9

    .line 693
    .line 694
    invoke-virtual {v0}, Lcn4;->h()V

    .line 695
    .line 696
    .line 697
    if-eqz v15, :cond_20

    .line 698
    .line 699
    new-instance v1, Ld35;

    .line 700
    .line 701
    invoke-direct {v1, v7, v11, v14, v15}, Ld35;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    goto :goto_13

    .line 708
    :cond_20
    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    :goto_13
    move-object/from16 v9, v18

    .line 712
    .line 713
    move-object/from16 v7, v25

    .line 714
    .line 715
    move-object/from16 v6, v26

    .line 716
    .line 717
    move-object/from16 v8, v27

    .line 718
    .line 719
    goto/16 :goto_e

    .line 720
    .line 721
    :cond_21
    move-object/from16 v26, v6

    .line 722
    .line 723
    move-object/from16 v25, v7

    .line 724
    .line 725
    move-object/from16 v27, v8

    .line 726
    .line 727
    move-object/from16 v18, v9

    .line 728
    .line 729
    invoke-virtual {v0}, Lcn4;->g()V

    .line 730
    .line 731
    .line 732
    move-object/from16 v6, v18

    .line 733
    .line 734
    goto/16 :goto_16

    .line 735
    .line 736
    :pswitch_4
    move-object/from16 v26, v6

    .line 737
    .line 738
    move-object/from16 v25, v7

    .line 739
    .line 740
    move-object/from16 v27, v8

    .line 741
    .line 742
    move-object/from16 v18, v9

    .line 743
    .line 744
    move/from16 v24, v10

    .line 745
    .line 746
    move/from16 v21, v14

    .line 747
    .line 748
    move/from16 v22, v15

    .line 749
    .line 750
    invoke-virtual {v0}, Lcn4;->a()V

    .line 751
    .line 752
    .line 753
    const/4 v1, 0x0

    .line 754
    :goto_14
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 755
    .line 756
    .line 757
    move-result v6

    .line 758
    if-eqz v6, :cond_24

    .line 759
    .line 760
    move-object/from16 v6, v18

    .line 761
    .line 762
    invoke-static {v0, v6}, Lks4;->a(Lcn4;Le25;)Ljs4;

    .line 763
    .line 764
    .line 765
    move-result-object v7

    .line 766
    iget v8, v7, Ljs4;->e:I

    .line 767
    .line 768
    const/4 v10, 0x3

    .line 769
    if-ne v8, v10, :cond_22

    .line 770
    .line 771
    add-int/lit8 v1, v1, 0x1

    .line 772
    .line 773
    :cond_22
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    iget-wide v8, v7, Ljs4;->d:J

    .line 777
    .line 778
    invoke-virtual {v2, v7, v8, v9}, Lv15;->e(Ljava/lang/Object;J)V

    .line 779
    .line 780
    .line 781
    const/4 v8, 0x4

    .line 782
    if-le v1, v8, :cond_23

    .line 783
    .line 784
    new-instance v7, Ljava/lang/StringBuilder;

    .line 785
    .line 786
    const-string v8, "You have "

    .line 787
    .line 788
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    const-string v8, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    .line 795
    .line 796
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v7

    .line 803
    invoke-static {v7}, Lm15;->b(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    :cond_23
    move-object/from16 v18, v6

    .line 807
    .line 808
    goto :goto_14

    .line 809
    :cond_24
    move-object/from16 v6, v18

    .line 810
    .line 811
    invoke-virtual {v0}, Lcn4;->g()V

    .line 812
    .line 813
    .line 814
    goto :goto_16

    .line 815
    :pswitch_5
    move-object/from16 v26, v6

    .line 816
    .line 817
    move-object/from16 v25, v7

    .line 818
    .line 819
    move-object/from16 v27, v8

    .line 820
    .line 821
    move-object v6, v9

    .line 822
    move/from16 v24, v10

    .line 823
    .line 824
    move/from16 v21, v14

    .line 825
    .line 826
    move/from16 v22, v15

    .line 827
    .line 828
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v1

    .line 832
    const-string v7, "\\."

    .line 833
    .line 834
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    const/16 v16, 0x0

    .line 839
    .line 840
    aget-object v7, v1, v16

    .line 841
    .line 842
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 843
    .line 844
    .line 845
    move-result v7

    .line 846
    const/16 v23, 0x1

    .line 847
    .line 848
    aget-object v8, v1, v23

    .line 849
    .line 850
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 851
    .line 852
    .line 853
    move-result v8

    .line 854
    const/16 v20, 0x2

    .line 855
    .line 856
    aget-object v1, v1, v20

    .line 857
    .line 858
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 859
    .line 860
    .line 861
    move-result v1

    .line 862
    const/4 v14, 0x4

    .line 863
    if-ge v7, v14, :cond_25

    .line 864
    .line 865
    goto :goto_15

    .line 866
    :cond_25
    if-le v7, v14, :cond_26

    .line 867
    .line 868
    goto :goto_16

    .line 869
    :cond_26
    if-ge v8, v14, :cond_27

    .line 870
    .line 871
    goto :goto_15

    .line 872
    :cond_27
    if-le v8, v14, :cond_28

    .line 873
    .line 874
    goto :goto_16

    .line 875
    :cond_28
    if-ltz v1, :cond_29

    .line 876
    .line 877
    goto :goto_16

    .line 878
    :cond_29
    :goto_15
    const-string v1, "Lottie only supports bodymovin >= 4.4.0"

    .line 879
    .line 880
    invoke-virtual {v6, v1}, Le25;->a(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    :goto_16
    move-object v9, v6

    .line 884
    move/from16 v1, v17

    .line 885
    .line 886
    move/from16 v14, v21

    .line 887
    .line 888
    move/from16 v15, v22

    .line 889
    .line 890
    move/from16 v10, v24

    .line 891
    .line 892
    :goto_17
    move-object/from16 v7, v25

    .line 893
    .line 894
    move-object/from16 v6, v26

    .line 895
    .line 896
    move-object/from16 v8, v27

    .line 897
    .line 898
    goto/16 :goto_0

    .line 899
    .line 900
    :pswitch_6
    move-object/from16 v26, v6

    .line 901
    .line 902
    move-object/from16 v25, v7

    .line 903
    .line 904
    move-object/from16 v27, v8

    .line 905
    .line 906
    move-object v6, v9

    .line 907
    move/from16 v21, v14

    .line 908
    .line 909
    move/from16 v22, v15

    .line 910
    .line 911
    invoke-virtual {v0}, Lcn4;->q()D

    .line 912
    .line 913
    .line 914
    move-result-wide v7

    .line 915
    double-to-float v10, v7

    .line 916
    :goto_18
    move/from16 v1, v17

    .line 917
    .line 918
    goto :goto_17

    .line 919
    :pswitch_7
    move-object/from16 v26, v6

    .line 920
    .line 921
    move-object/from16 v25, v7

    .line 922
    .line 923
    move-object/from16 v27, v8

    .line 924
    .line 925
    move-object v6, v9

    .line 926
    move/from16 v24, v10

    .line 927
    .line 928
    move/from16 v21, v14

    .line 929
    .line 930
    invoke-virtual {v0}, Lcn4;->q()D

    .line 931
    .line 932
    .line 933
    move-result-wide v7

    .line 934
    double-to-float v1, v7

    .line 935
    const v7, 0x3c23d70a    # 0.01f

    .line 936
    .line 937
    .line 938
    sub-float v15, v1, v7

    .line 939
    .line 940
    goto :goto_18

    .line 941
    :pswitch_8
    move-object/from16 v26, v6

    .line 942
    .line 943
    move-object/from16 v25, v7

    .line 944
    .line 945
    move-object/from16 v27, v8

    .line 946
    .line 947
    move-object v6, v9

    .line 948
    move/from16 v24, v10

    .line 949
    .line 950
    move/from16 v22, v15

    .line 951
    .line 952
    invoke-virtual {v0}, Lcn4;->q()D

    .line 953
    .line 954
    .line 955
    move-result-wide v7

    .line 956
    double-to-float v14, v7

    .line 957
    goto :goto_18

    .line 958
    :pswitch_9
    move-object/from16 v26, v6

    .line 959
    .line 960
    move-object/from16 v25, v7

    .line 961
    .line 962
    move-object/from16 v27, v8

    .line 963
    .line 964
    move-object v6, v9

    .line 965
    move/from16 v24, v10

    .line 966
    .line 967
    move/from16 v21, v14

    .line 968
    .line 969
    move/from16 v22, v15

    .line 970
    .line 971
    invoke-virtual {v0}, Lcn4;->r()I

    .line 972
    .line 973
    .line 974
    move-result v13

    .line 975
    :goto_19
    move/from16 v1, v17

    .line 976
    .line 977
    move-object/from16 v6, v26

    .line 978
    .line 979
    goto/16 :goto_0

    .line 980
    .line 981
    :pswitch_a
    move-object/from16 v26, v6

    .line 982
    .line 983
    move-object/from16 v25, v7

    .line 984
    .line 985
    move-object/from16 v27, v8

    .line 986
    .line 987
    move-object v6, v9

    .line 988
    move/from16 v24, v10

    .line 989
    .line 990
    move/from16 v21, v14

    .line 991
    .line 992
    move/from16 v22, v15

    .line 993
    .line 994
    invoke-virtual {v0}, Lcn4;->r()I

    .line 995
    .line 996
    .line 997
    move-result v12

    .line 998
    goto :goto_19

    .line 999
    :cond_2a
    move/from16 v17, v1

    .line 1000
    .line 1001
    move-object/from16 v26, v6

    .line 1002
    .line 1003
    move-object/from16 v25, v7

    .line 1004
    .line 1005
    move-object/from16 v27, v8

    .line 1006
    .line 1007
    move-object v6, v9

    .line 1008
    move/from16 v24, v10

    .line 1009
    .line 1010
    move/from16 v21, v14

    .line 1011
    .line 1012
    move/from16 v22, v15

    .line 1013
    .line 1014
    int-to-float v0, v12

    .line 1015
    mul-float v0, v0, v17

    .line 1016
    .line 1017
    float-to-int v0, v0

    .line 1018
    int-to-float v1, v13

    .line 1019
    mul-float v1, v1, v17

    .line 1020
    .line 1021
    float-to-int v1, v1

    .line 1022
    new-instance v7, Landroid/graphics/Rect;

    .line 1023
    .line 1024
    const/4 v14, 0x0

    .line 1025
    invoke-direct {v7, v14, v14, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1026
    .line 1027
    .line 1028
    iput-object v7, v6, Le25;->j:Landroid/graphics/Rect;

    .line 1029
    .line 1030
    move/from16 v1, v21

    .line 1031
    .line 1032
    iput v1, v6, Le25;->k:F

    .line 1033
    .line 1034
    move/from16 v10, v22

    .line 1035
    .line 1036
    iput v10, v6, Le25;->l:F

    .line 1037
    .line 1038
    move/from16 v10, v24

    .line 1039
    .line 1040
    iput v10, v6, Le25;->m:F

    .line 1041
    .line 1042
    iput-object v3, v6, Le25;->i:Ljava/util/ArrayList;

    .line 1043
    .line 1044
    iput-object v2, v6, Le25;->h:Lv15;

    .line 1045
    .line 1046
    iput-object v4, v6, Le25;->c:Ljava/util/HashMap;

    .line 1047
    .line 1048
    iput-object v5, v6, Le25;->d:Ljava/util/HashMap;

    .line 1049
    .line 1050
    move-object/from16 v0, v27

    .line 1051
    .line 1052
    iput-object v0, v6, Le25;->g:Lyj7;

    .line 1053
    .line 1054
    move-object/from16 v0, v26

    .line 1055
    .line 1056
    iput-object v0, v6, Le25;->e:Ljava/util/HashMap;

    .line 1057
    .line 1058
    move-object/from16 v0, v25

    .line 1059
    .line 1060
    iput-object v0, v6, Le25;->f:Ljava/util/ArrayList;

    .line 1061
    .line 1062
    return-object v6

    .line 1063
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
