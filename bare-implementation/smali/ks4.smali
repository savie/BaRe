.class public abstract Lks4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lib;

.field public static final b:Lib;

.field public static final c:Lib;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    const-string v22, "cl"

    .line 2
    .line 3
    const-string v23, "hd"

    .line 4
    .line 5
    const-string v1, "nm"

    .line 6
    .line 7
    const-string v2, "ind"

    .line 8
    .line 9
    const-string v3, "refId"

    .line 10
    .line 11
    const-string v4, "ty"

    .line 12
    .line 13
    const-string v5, "parent"

    .line 14
    .line 15
    const-string v6, "sw"

    .line 16
    .line 17
    const-string v7, "sh"

    .line 18
    .line 19
    const-string v8, "sc"

    .line 20
    .line 21
    const-string v9, "ks"

    .line 22
    .line 23
    const-string v10, "tt"

    .line 24
    .line 25
    const-string v11, "masksProperties"

    .line 26
    .line 27
    const-string v12, "shapes"

    .line 28
    .line 29
    const-string v13, "t"

    .line 30
    .line 31
    const-string v14, "ef"

    .line 32
    .line 33
    const-string v15, "sr"

    .line 34
    .line 35
    const-string v16, "st"

    .line 36
    .line 37
    const-string v17, "w"

    .line 38
    .line 39
    const-string v18, "h"

    .line 40
    .line 41
    const-string v19, "ip"

    .line 42
    .line 43
    const-string v20, "op"

    .line 44
    .line 45
    const-string v21, "tm"

    .line 46
    .line 47
    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lib;->k([Ljava/lang/String;)Lib;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lks4;->a:Lib;

    .line 56
    .line 57
    const-string v0, "d"

    .line 58
    .line 59
    const-string v1, "a"

    .line 60
    .line 61
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lib;->k([Ljava/lang/String;)Lib;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lks4;->b:Lib;

    .line 70
    .line 71
    const-string v0, "ty"

    .line 72
    .line 73
    const-string v1, "nm"

    .line 74
    .line 75
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lib;->k([Ljava/lang/String;)Lib;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lks4;->c:Lib;

    .line 84
    .line 85
    return-void
.end method

.method public static a(Lcn4;Le25;)Ljs4;
    .locals 51

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    const/4 v8, 0x0

    .line 12
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v10, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v9, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcn4;->b()V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x1

    .line 31
    const-string v6, "UNSET"

    .line 32
    .line 33
    const-wide/16 v13, 0x0

    .line 34
    .line 35
    const-wide/16 v15, -0x1

    .line 36
    .line 37
    move/from16 v29, v2

    .line 38
    .line 39
    move/from16 v22, v4

    .line 40
    .line 41
    move/from16 v24, v22

    .line 42
    .line 43
    move/from16 v25, v24

    .line 44
    .line 45
    move/from16 v26, v25

    .line 46
    .line 47
    move/from16 v27, v26

    .line 48
    .line 49
    move/from16 v28, v27

    .line 50
    .line 51
    move/from16 v31, v28

    .line 52
    .line 53
    move/from16 v34, v5

    .line 54
    .line 55
    move-object/from16 v19, v7

    .line 56
    .line 57
    move/from16 v20, v8

    .line 58
    .line 59
    move/from16 v21, v20

    .line 60
    .line 61
    move/from16 v30, v21

    .line 62
    .line 63
    move/from16 v37, v30

    .line 64
    .line 65
    move-wide/from16 v17, v13

    .line 66
    .line 67
    move-wide v7, v15

    .line 68
    const/4 v11, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v14, 0x0

    .line 71
    const/16 v23, 0x0

    .line 72
    .line 73
    const/16 v32, 0x0

    .line 74
    .line 75
    const/16 v33, 0x0

    .line 76
    .line 77
    const/16 v35, 0x0

    .line 78
    .line 79
    const/16 v36, 0x0

    .line 80
    .line 81
    :goto_0
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    if-eqz v15, :cond_38

    .line 86
    .line 87
    sget-object v15, Lks4;->a:Lib;

    .line 88
    .line 89
    invoke-virtual {v0, v15}, Lcn4;->A(Lib;)I

    .line 90
    .line 91
    .line 92
    move-result v15

    .line 93
    const/16 v16, -0x1

    .line 94
    .line 95
    const/16 v38, 0x0

    .line 96
    .line 97
    const/4 v12, 0x7

    .line 98
    move-object/from16 v39, v13

    .line 99
    .line 100
    packed-switch v15, :pswitch_data_0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcn4;->D()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcn4;->G()V

    .line 107
    .line 108
    .line 109
    move-object/from16 v43, v3

    .line 110
    .line 111
    move v3, v4

    .line 112
    move-object v4, v11

    .line 113
    goto/16 :goto_22

    .line 114
    .line 115
    :pswitch_0
    invoke-virtual {v0}, Lcn4;->n()Z

    .line 116
    .line 117
    .line 118
    move-result v31

    .line 119
    :goto_1
    move-object/from16 v13, v39

    .line 120
    .line 121
    const/high16 v2, 0x3f800000    # 1.0f

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    goto :goto_1

    .line 129
    :pswitch_2
    invoke-static {v0, v1, v4}, Lsz8;->O(Lul4;Le25;Z)Lbc;

    .line 130
    .line 131
    .line 132
    move-result-object v36

    .line 133
    goto :goto_1

    .line 134
    :pswitch_3
    invoke-virtual {v0}, Lcn4;->q()D

    .line 135
    .line 136
    .line 137
    move-result-wide v12

    .line 138
    double-to-float v2, v12

    .line 139
    move/from16 v21, v2

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :pswitch_4
    invoke-virtual {v0}, Lcn4;->q()D

    .line 143
    .line 144
    .line 145
    move-result-wide v12

    .line 146
    double-to-float v2, v12

    .line 147
    move/from16 v20, v2

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :pswitch_5
    invoke-virtual {v0}, Lcn4;->r()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    int-to-float v2, v2

    .line 155
    invoke-static {}, Lmi8;->c()F

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    mul-float/2addr v12, v2

    .line 160
    float-to-int v2, v12

    .line 161
    move/from16 v28, v2

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :pswitch_6
    invoke-virtual {v0}, Lcn4;->r()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    int-to-float v2, v2

    .line 169
    invoke-static {}, Lmi8;->c()F

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    mul-float/2addr v12, v2

    .line 174
    float-to-int v2, v12

    .line 175
    move/from16 v27, v2

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :pswitch_7
    invoke-virtual {v0}, Lcn4;->q()D

    .line 179
    .line 180
    .line 181
    move-result-wide v12

    .line 182
    double-to-float v2, v12

    .line 183
    move/from16 v30, v2

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :pswitch_8
    invoke-virtual {v0}, Lcn4;->q()D

    .line 187
    .line 188
    .line 189
    move-result-wide v12

    .line 190
    double-to-float v2, v12

    .line 191
    move/from16 v29, v2

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :pswitch_9
    invoke-virtual {v0}, Lcn4;->a()V

    .line 195
    .line 196
    .line 197
    new-instance v15, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .line 201
    .line 202
    :goto_2
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 203
    .line 204
    .line 205
    move-result v40

    .line 206
    if-eqz v40, :cond_1a

    .line 207
    .line 208
    invoke-virtual {v0}, Lcn4;->b()V

    .line 209
    .line 210
    .line 211
    :cond_0
    :goto_3
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 212
    .line 213
    .line 214
    move-result v40

    .line 215
    if-eqz v40, :cond_19

    .line 216
    .line 217
    sget-object v13, Lks4;->c:Lib;

    .line 218
    .line 219
    invoke-virtual {v0, v13}, Lcn4;->A(Lib;)I

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    if-eqz v13, :cond_3

    .line 224
    .line 225
    if-eq v13, v5, :cond_2

    .line 226
    .line 227
    invoke-virtual {v0}, Lcn4;->D()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Lcn4;->G()V

    .line 231
    .line 232
    .line 233
    :cond_1
    :goto_4
    move/from16 v42, v12

    .line 234
    .line 235
    goto/16 :goto_10

    .line 236
    .line 237
    :cond_2
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_3
    invoke-virtual {v0}, Lcn4;->r()I

    .line 246
    .line 247
    .line 248
    move-result v13

    .line 249
    const/16 v2, 0x1d

    .line 250
    .line 251
    if-ne v13, v2, :cond_c

    .line 252
    .line 253
    sget-object v2, Lmt0;->a:Lib;

    .line 254
    .line 255
    move-object/from16 v32, v38

    .line 256
    .line 257
    :goto_5
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_0

    .line 262
    .line 263
    sget-object v2, Lmt0;->a:Lib;

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Lcn4;->A(Lib;)I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_4

    .line 270
    .line 271
    invoke-virtual {v0}, Lcn4;->D()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Lcn4;->G()V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_4
    invoke-virtual {v0}, Lcn4;->a()V

    .line 279
    .line 280
    .line 281
    :goto_6
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_b

    .line 286
    .line 287
    invoke-virtual {v0}, Lcn4;->b()V

    .line 288
    .line 289
    .line 290
    move v13, v4

    .line 291
    move-object/from16 v2, v38

    .line 292
    .line 293
    :goto_7
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 294
    .line 295
    .line 296
    move-result v40

    .line 297
    if-eqz v40, :cond_9

    .line 298
    .line 299
    sget-object v4, Lmt0;->b:Lib;

    .line 300
    .line 301
    invoke-virtual {v0, v4}, Lcn4;->A(Lib;)I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    if-eqz v4, :cond_7

    .line 306
    .line 307
    if-eq v4, v5, :cond_5

    .line 308
    .line 309
    invoke-virtual {v0}, Lcn4;->D()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Lcn4;->G()V

    .line 313
    .line 314
    .line 315
    goto :goto_8

    .line 316
    :cond_5
    if-eqz v13, :cond_6

    .line 317
    .line 318
    new-instance v2, Lz28;

    .line 319
    .line 320
    invoke-static {v0, v1, v5}, Lsz8;->O(Lul4;Le25;Z)Lbc;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    invoke-direct {v2, v4, v12}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 325
    .line 326
    .line 327
    :goto_8
    const/4 v4, 0x0

    .line 328
    goto :goto_7

    .line 329
    :cond_6
    invoke-virtual {v0}, Lcn4;->G()V

    .line 330
    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_7
    invoke-virtual {v0}, Lcn4;->r()I

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    if-nez v4, :cond_8

    .line 338
    .line 339
    move v13, v5

    .line 340
    goto :goto_8

    .line 341
    :cond_8
    const/4 v13, 0x0

    .line 342
    goto :goto_8

    .line 343
    :cond_9
    invoke-virtual {v0}, Lcn4;->h()V

    .line 344
    .line 345
    .line 346
    if-eqz v2, :cond_a

    .line 347
    .line 348
    move-object/from16 v32, v2

    .line 349
    .line 350
    :cond_a
    const/4 v4, 0x0

    .line 351
    goto :goto_6

    .line 352
    :cond_b
    invoke-virtual {v0}, Lcn4;->g()V

    .line 353
    .line 354
    .line 355
    const/4 v4, 0x0

    .line 356
    goto :goto_5

    .line 357
    :cond_c
    const/16 v2, 0x19

    .line 358
    .line 359
    if-ne v13, v2, :cond_1

    .line 360
    .line 361
    new-instance v2, Lfq2;

    .line 362
    .line 363
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 364
    .line 365
    .line 366
    :goto_9
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    if-eqz v4, :cond_17

    .line 371
    .line 372
    sget-object v4, Lfq2;->f:Lib;

    .line 373
    .line 374
    invoke-virtual {v0, v4}, Lcn4;->A(Lib;)I

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    if-eqz v4, :cond_d

    .line 379
    .line 380
    invoke-virtual {v0}, Lcn4;->D()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0}, Lcn4;->G()V

    .line 384
    .line 385
    .line 386
    goto :goto_9

    .line 387
    :cond_d
    invoke-virtual {v0}, Lcn4;->a()V

    .line 388
    .line 389
    .line 390
    :goto_a
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    if-eqz v4, :cond_16

    .line 395
    .line 396
    invoke-virtual {v0}, Lcn4;->b()V

    .line 397
    .line 398
    .line 399
    const-string v4, ""

    .line 400
    .line 401
    :goto_b
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 402
    .line 403
    .line 404
    move-result v13

    .line 405
    if-eqz v13, :cond_15

    .line 406
    .line 407
    sget-object v13, Lfq2;->g:Lib;

    .line 408
    .line 409
    invoke-virtual {v0, v13}, Lcn4;->A(Lib;)I

    .line 410
    .line 411
    .line 412
    move-result v13

    .line 413
    if-eqz v13, :cond_14

    .line 414
    .line 415
    if-eq v13, v5, :cond_e

    .line 416
    .line 417
    invoke-virtual {v0}, Lcn4;->D()V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Lcn4;->G()V

    .line 421
    .line 422
    .line 423
    :goto_c
    move/from16 v42, v12

    .line 424
    .line 425
    goto/16 :goto_f

    .line 426
    .line 427
    :cond_e
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 431
    .line 432
    .line 433
    move-result v13

    .line 434
    sparse-switch v13, :sswitch_data_0

    .line 435
    .line 436
    .line 437
    :goto_d
    move/from16 v13, v16

    .line 438
    .line 439
    goto :goto_e

    .line 440
    :sswitch_0
    const-string v13, "Softness"

    .line 441
    .line 442
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v13

    .line 446
    if-nez v13, :cond_f

    .line 447
    .line 448
    goto :goto_d

    .line 449
    :cond_f
    const/4 v13, 0x4

    .line 450
    goto :goto_e

    .line 451
    :sswitch_1
    const-string v13, "Shadow Color"

    .line 452
    .line 453
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v13

    .line 457
    if-nez v13, :cond_10

    .line 458
    .line 459
    goto :goto_d

    .line 460
    :cond_10
    const/4 v13, 0x3

    .line 461
    goto :goto_e

    .line 462
    :sswitch_2
    const-string v13, "Direction"

    .line 463
    .line 464
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v13

    .line 468
    if-nez v13, :cond_11

    .line 469
    .line 470
    goto :goto_d

    .line 471
    :cond_11
    const/4 v13, 0x2

    .line 472
    goto :goto_e

    .line 473
    :sswitch_3
    const-string v13, "Opacity"

    .line 474
    .line 475
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v13

    .line 479
    if-nez v13, :cond_12

    .line 480
    .line 481
    goto :goto_d

    .line 482
    :cond_12
    move v13, v5

    .line 483
    goto :goto_e

    .line 484
    :sswitch_4
    const-string v13, "Distance"

    .line 485
    .line 486
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v13

    .line 490
    if-nez v13, :cond_13

    .line 491
    .line 492
    goto :goto_d

    .line 493
    :cond_13
    const/4 v13, 0x0

    .line 494
    :goto_e
    packed-switch v13, :pswitch_data_1

    .line 495
    .line 496
    .line 497
    invoke-virtual {v0}, Lcn4;->G()V

    .line 498
    .line 499
    .line 500
    goto :goto_c

    .line 501
    :pswitch_a
    invoke-static {v0, v1, v5}, Lsz8;->O(Lul4;Le25;Z)Lbc;

    .line 502
    .line 503
    .line 504
    move-result-object v13

    .line 505
    iput-object v13, v2, Lfq2;->e:Lbc;

    .line 506
    .line 507
    goto :goto_c

    .line 508
    :pswitch_b
    invoke-static/range {p0 .. p1}, Lsz8;->N(Lcn4;Le25;)Lac;

    .line 509
    .line 510
    .line 511
    move-result-object v13

    .line 512
    iput-object v13, v2, Lfq2;->a:Lac;

    .line 513
    .line 514
    goto :goto_c

    .line 515
    :pswitch_c
    move/from16 v42, v12

    .line 516
    .line 517
    const/4 v13, 0x0

    .line 518
    invoke-static {v0, v1, v13}, Lsz8;->O(Lul4;Le25;Z)Lbc;

    .line 519
    .line 520
    .line 521
    move-result-object v12

    .line 522
    iput-object v12, v2, Lfq2;->c:Lbc;

    .line 523
    .line 524
    goto :goto_f

    .line 525
    :pswitch_d
    move/from16 v42, v12

    .line 526
    .line 527
    const/4 v13, 0x0

    .line 528
    invoke-static {v0, v1, v13}, Lsz8;->O(Lul4;Le25;Z)Lbc;

    .line 529
    .line 530
    .line 531
    move-result-object v12

    .line 532
    iput-object v12, v2, Lfq2;->b:Lbc;

    .line 533
    .line 534
    goto :goto_f

    .line 535
    :pswitch_e
    move/from16 v42, v12

    .line 536
    .line 537
    invoke-static {v0, v1, v5}, Lsz8;->O(Lul4;Le25;Z)Lbc;

    .line 538
    .line 539
    .line 540
    move-result-object v12

    .line 541
    iput-object v12, v2, Lfq2;->d:Lbc;

    .line 542
    .line 543
    :goto_f
    move/from16 v12, v42

    .line 544
    .line 545
    goto/16 :goto_b

    .line 546
    .line 547
    :cond_14
    move/from16 v42, v12

    .line 548
    .line 549
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    goto/16 :goto_b

    .line 554
    .line 555
    :cond_15
    move/from16 v42, v12

    .line 556
    .line 557
    invoke-virtual {v0}, Lcn4;->h()V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_a

    .line 561
    .line 562
    :cond_16
    move/from16 v42, v12

    .line 563
    .line 564
    invoke-virtual {v0}, Lcn4;->g()V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_9

    .line 568
    .line 569
    :cond_17
    move/from16 v42, v12

    .line 570
    .line 571
    iget-object v4, v2, Lfq2;->a:Lac;

    .line 572
    .line 573
    if-eqz v4, :cond_18

    .line 574
    .line 575
    iget-object v12, v2, Lfq2;->b:Lbc;

    .line 576
    .line 577
    if-eqz v12, :cond_18

    .line 578
    .line 579
    iget-object v13, v2, Lfq2;->c:Lbc;

    .line 580
    .line 581
    if-eqz v13, :cond_18

    .line 582
    .line 583
    iget-object v5, v2, Lfq2;->d:Lbc;

    .line 584
    .line 585
    if-eqz v5, :cond_18

    .line 586
    .line 587
    iget-object v2, v2, Lfq2;->e:Lbc;

    .line 588
    .line 589
    if-eqz v2, :cond_18

    .line 590
    .line 591
    new-instance v43, Lnz4;

    .line 592
    .line 593
    const/16 v49, 0x3

    .line 594
    .line 595
    move-object/from16 v48, v2

    .line 596
    .line 597
    move-object/from16 v44, v4

    .line 598
    .line 599
    move-object/from16 v47, v5

    .line 600
    .line 601
    move-object/from16 v45, v12

    .line 602
    .line 603
    move-object/from16 v46, v13

    .line 604
    .line 605
    invoke-direct/range {v43 .. v49}, Lnz4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 606
    .line 607
    .line 608
    move-object/from16 v33, v43

    .line 609
    .line 610
    goto :goto_10

    .line 611
    :cond_18
    move-object/from16 v33, v38

    .line 612
    .line 613
    :goto_10
    move/from16 v12, v42

    .line 614
    .line 615
    const/4 v4, 0x0

    .line 616
    const/4 v5, 0x1

    .line 617
    goto/16 :goto_3

    .line 618
    .line 619
    :cond_19
    move/from16 v42, v12

    .line 620
    .line 621
    invoke-virtual {v0}, Lcn4;->h()V

    .line 622
    .line 623
    .line 624
    const/4 v4, 0x0

    .line 625
    const/4 v5, 0x1

    .line 626
    goto/16 :goto_2

    .line 627
    .line 628
    :cond_1a
    invoke-virtual {v0}, Lcn4;->g()V

    .line 629
    .line 630
    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    .line 632
    .line 633
    const-string v4, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    .line 634
    .line 635
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    invoke-virtual {v1, v2}, Le25;->a(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    move-object/from16 v13, v39

    .line 649
    .line 650
    const/high16 v2, 0x3f800000    # 1.0f

    .line 651
    .line 652
    :goto_11
    const/4 v4, 0x0

    .line 653
    const/4 v5, 0x1

    .line 654
    goto/16 :goto_0

    .line 655
    .line 656
    :pswitch_f
    invoke-virtual {v0}, Lcn4;->b()V

    .line 657
    .line 658
    .line 659
    :goto_12
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    if-eqz v2, :cond_27

    .line 664
    .line 665
    sget-object v2, Lks4;->b:Lib;

    .line 666
    .line 667
    invoke-virtual {v0, v2}, Lcn4;->A(Lib;)I

    .line 668
    .line 669
    .line 670
    move-result v2

    .line 671
    if-eqz v2, :cond_26

    .line 672
    .line 673
    const/4 v4, 0x1

    .line 674
    if-eq v2, v4, :cond_1b

    .line 675
    .line 676
    invoke-virtual {v0}, Lcn4;->D()V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v0}, Lcn4;->G()V

    .line 680
    .line 681
    .line 682
    goto :goto_12

    .line 683
    :cond_1b
    invoke-virtual {v0}, Lcn4;->a()V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 687
    .line 688
    .line 689
    move-result v2

    .line 690
    if-eqz v2, :cond_24

    .line 691
    .line 692
    sget-object v2, Llc;->a:Lib;

    .line 693
    .line 694
    invoke-virtual {v0}, Lcn4;->b()V

    .line 695
    .line 696
    .line 697
    move-object/from16 v2, v38

    .line 698
    .line 699
    :goto_13
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 700
    .line 701
    .line 702
    move-result v4

    .line 703
    if-eqz v4, :cond_22

    .line 704
    .line 705
    sget-object v4, Llc;->a:Lib;

    .line 706
    .line 707
    invoke-virtual {v0, v4}, Lcn4;->A(Lib;)I

    .line 708
    .line 709
    .line 710
    move-result v4

    .line 711
    if-eqz v4, :cond_1c

    .line 712
    .line 713
    invoke-virtual {v0}, Lcn4;->D()V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v0}, Lcn4;->G()V

    .line 717
    .line 718
    .line 719
    goto :goto_13

    .line 720
    :cond_1c
    invoke-virtual {v0}, Lcn4;->b()V

    .line 721
    .line 722
    .line 723
    move-object/from16 v43, v38

    .line 724
    .line 725
    move-object/from16 v44, v43

    .line 726
    .line 727
    move-object/from16 v45, v44

    .line 728
    .line 729
    move-object/from16 v46, v45

    .line 730
    .line 731
    :goto_14
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 732
    .line 733
    .line 734
    move-result v2

    .line 735
    if-eqz v2, :cond_21

    .line 736
    .line 737
    sget-object v2, Llc;->b:Lib;

    .line 738
    .line 739
    invoke-virtual {v0, v2}, Lcn4;->A(Lib;)I

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    if-eqz v2, :cond_20

    .line 744
    .line 745
    const/4 v4, 0x1

    .line 746
    if-eq v2, v4, :cond_1f

    .line 747
    .line 748
    const/4 v5, 0x2

    .line 749
    if-eq v2, v5, :cond_1e

    .line 750
    .line 751
    const/4 v12, 0x3

    .line 752
    if-eq v2, v12, :cond_1d

    .line 753
    .line 754
    invoke-virtual {v0}, Lcn4;->D()V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v0}, Lcn4;->G()V

    .line 758
    .line 759
    .line 760
    goto :goto_14

    .line 761
    :cond_1d
    invoke-static {v0, v1, v4}, Lsz8;->O(Lul4;Le25;Z)Lbc;

    .line 762
    .line 763
    .line 764
    move-result-object v46

    .line 765
    goto :goto_14

    .line 766
    :cond_1e
    const/4 v12, 0x3

    .line 767
    invoke-static {v0, v1, v4}, Lsz8;->O(Lul4;Le25;Z)Lbc;

    .line 768
    .line 769
    .line 770
    move-result-object v45

    .line 771
    goto :goto_14

    .line 772
    :cond_1f
    const/4 v5, 0x2

    .line 773
    const/4 v12, 0x3

    .line 774
    invoke-static/range {p0 .. p1}, Lsz8;->N(Lcn4;Le25;)Lac;

    .line 775
    .line 776
    .line 777
    move-result-object v44

    .line 778
    goto :goto_14

    .line 779
    :cond_20
    const/4 v5, 0x2

    .line 780
    const/4 v12, 0x3

    .line 781
    invoke-static/range {p0 .. p1}, Lsz8;->N(Lcn4;Le25;)Lac;

    .line 782
    .line 783
    .line 784
    move-result-object v43

    .line 785
    goto :goto_14

    .line 786
    :cond_21
    const/4 v5, 0x2

    .line 787
    const/4 v12, 0x3

    .line 788
    invoke-virtual {v0}, Lcn4;->h()V

    .line 789
    .line 790
    .line 791
    new-instance v42, Lkc;

    .line 792
    .line 793
    const/16 v47, 0x0

    .line 794
    .line 795
    invoke-direct/range {v42 .. v47}, Lkc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 796
    .line 797
    .line 798
    move-object/from16 v2, v42

    .line 799
    .line 800
    goto :goto_13

    .line 801
    :cond_22
    const/4 v5, 0x2

    .line 802
    const/4 v12, 0x3

    .line 803
    invoke-virtual {v0}, Lcn4;->h()V

    .line 804
    .line 805
    .line 806
    if-nez v2, :cond_23

    .line 807
    .line 808
    move-object v4, v11

    .line 809
    new-instance v11, Lkc;

    .line 810
    .line 811
    const/16 v16, 0x0

    .line 812
    .line 813
    move-object/from16 v13, v38

    .line 814
    .line 815
    move-object/from16 v14, v38

    .line 816
    .line 817
    move-object/from16 v15, v38

    .line 818
    .line 819
    move/from16 v41, v12

    .line 820
    .line 821
    move-object/from16 v12, v38

    .line 822
    .line 823
    const/16 v40, 0x6

    .line 824
    .line 825
    invoke-direct/range {v11 .. v16}, Lkc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 826
    .line 827
    .line 828
    move-object v14, v11

    .line 829
    move/from16 v11, v40

    .line 830
    .line 831
    move/from16 v12, v41

    .line 832
    .line 833
    goto :goto_15

    .line 834
    :cond_23
    move-object v4, v11

    .line 835
    const/4 v11, 0x6

    .line 836
    move-object v14, v2

    .line 837
    goto :goto_15

    .line 838
    :cond_24
    move-object v4, v11

    .line 839
    const/4 v5, 0x2

    .line 840
    const/4 v11, 0x6

    .line 841
    const/4 v12, 0x3

    .line 842
    :goto_15
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 843
    .line 844
    .line 845
    move-result v2

    .line 846
    if-eqz v2, :cond_25

    .line 847
    .line 848
    invoke-virtual {v0}, Lcn4;->G()V

    .line 849
    .line 850
    .line 851
    goto :goto_15

    .line 852
    :cond_25
    invoke-virtual {v0}, Lcn4;->g()V

    .line 853
    .line 854
    .line 855
    :goto_16
    move-object v11, v4

    .line 856
    goto/16 :goto_12

    .line 857
    .line 858
    :cond_26
    move-object v4, v11

    .line 859
    const/4 v5, 0x2

    .line 860
    const/4 v11, 0x6

    .line 861
    const/4 v12, 0x3

    .line 862
    new-instance v2, Ljc;

    .line 863
    .line 864
    sget-object v13, Lsn2;->a:Lsn2;

    .line 865
    .line 866
    const/high16 v5, 0x3f800000    # 1.0f

    .line 867
    .line 868
    const/4 v15, 0x0

    .line 869
    invoke-static {v0, v1, v5, v13, v15}, Lzo4;->a(Lul4;Le25;FLcj8;Z)Ljava/util/ArrayList;

    .line 870
    .line 871
    .line 872
    move-result-object v13

    .line 873
    invoke-direct {v2, v13, v11}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 874
    .line 875
    .line 876
    move-object/from16 v39, v2

    .line 877
    .line 878
    goto :goto_16

    .line 879
    :cond_27
    move-object v4, v11

    .line 880
    const/high16 v5, 0x3f800000    # 1.0f

    .line 881
    .line 882
    invoke-virtual {v0}, Lcn4;->h()V

    .line 883
    .line 884
    .line 885
    move v2, v5

    .line 886
    move-object/from16 v13, v39

    .line 887
    .line 888
    goto/16 :goto_11

    .line 889
    .line 890
    :pswitch_10
    move-object v4, v11

    .line 891
    const/high16 v5, 0x3f800000    # 1.0f

    .line 892
    .line 893
    invoke-virtual {v0}, Lcn4;->a()V

    .line 894
    .line 895
    .line 896
    :cond_28
    :goto_17
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 897
    .line 898
    .line 899
    move-result v2

    .line 900
    if-eqz v2, :cond_29

    .line 901
    .line 902
    invoke-static/range {p0 .. p1}, Luu1;->a(Lcn4;Le25;)Ltu1;

    .line 903
    .line 904
    .line 905
    move-result-object v2

    .line 906
    if-eqz v2, :cond_28

    .line 907
    .line 908
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    goto :goto_17

    .line 912
    :cond_29
    invoke-virtual {v0}, Lcn4;->g()V

    .line 913
    .line 914
    .line 915
    move-object/from16 v43, v3

    .line 916
    .line 917
    const/4 v3, 0x0

    .line 918
    goto/16 :goto_22

    .line 919
    .line 920
    :pswitch_11
    move-object v4, v11

    .line 921
    const/high16 v5, 0x3f800000    # 1.0f

    .line 922
    .line 923
    const/4 v11, 0x6

    .line 924
    const/4 v12, 0x3

    .line 925
    invoke-virtual {v0}, Lcn4;->a()V

    .line 926
    .line 927
    .line 928
    :goto_18
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 929
    .line 930
    .line 931
    move-result v2

    .line 932
    if-eqz v2, :cond_33

    .line 933
    .line 934
    invoke-virtual {v0}, Lcn4;->b()V

    .line 935
    .line 936
    .line 937
    move-object/from16 v2, v38

    .line 938
    .line 939
    move-object v13, v2

    .line 940
    const/4 v5, 0x0

    .line 941
    const/4 v15, 0x0

    .line 942
    :goto_19
    invoke-virtual {v0}, Lcn4;->m()Z

    .line 943
    .line 944
    .line 945
    move-result v40

    .line 946
    if-eqz v40, :cond_32

    .line 947
    .line 948
    invoke-virtual {v0}, Lcn4;->Y()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v12

    .line 952
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 953
    .line 954
    .line 955
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 956
    .line 957
    .line 958
    move-result v40

    .line 959
    sparse-switch v40, :sswitch_data_1

    .line 960
    .line 961
    .line 962
    :goto_1a
    move/from16 v11, v16

    .line 963
    .line 964
    goto :goto_1b

    .line 965
    :sswitch_5
    const-string v11, "mode"

    .line 966
    .line 967
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 968
    .line 969
    .line 970
    move-result v11

    .line 971
    if-nez v11, :cond_2a

    .line 972
    .line 973
    goto :goto_1a

    .line 974
    :cond_2a
    const/4 v11, 0x3

    .line 975
    goto :goto_1b

    .line 976
    :sswitch_6
    const-string v11, "inv"

    .line 977
    .line 978
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 979
    .line 980
    .line 981
    move-result v11

    .line 982
    if-nez v11, :cond_2b

    .line 983
    .line 984
    goto :goto_1a

    .line 985
    :cond_2b
    const/4 v11, 0x2

    .line 986
    goto :goto_1b

    .line 987
    :sswitch_7
    const-string v11, "pt"

    .line 988
    .line 989
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    move-result v11

    .line 993
    if-nez v11, :cond_2c

    .line 994
    .line 995
    goto :goto_1a

    .line 996
    :cond_2c
    const/4 v11, 0x1

    .line 997
    goto :goto_1b

    .line 998
    :sswitch_8
    const-string v11, "o"

    .line 999
    .line 1000
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v11

    .line 1004
    if-nez v11, :cond_2d

    .line 1005
    .line 1006
    goto :goto_1a

    .line 1007
    :cond_2d
    const/4 v11, 0x0

    .line 1008
    :goto_1b
    packed-switch v11, :pswitch_data_2

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v0}, Lcn4;->G()V

    .line 1012
    .line 1013
    .line 1014
    :goto_1c
    move-object/from16 v43, v3

    .line 1015
    .line 1016
    :goto_1d
    const/4 v3, 0x0

    .line 1017
    goto/16 :goto_21

    .line 1018
    .line 1019
    :pswitch_12
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v11

    .line 1023
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 1027
    .line 1028
    .line 1029
    move-result v15

    .line 1030
    sparse-switch v15, :sswitch_data_2

    .line 1031
    .line 1032
    .line 1033
    :goto_1e
    move/from16 v11, v16

    .line 1034
    .line 1035
    goto :goto_1f

    .line 1036
    :sswitch_9
    const-string v15, "s"

    .line 1037
    .line 1038
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1039
    .line 1040
    .line 1041
    move-result v11

    .line 1042
    if-nez v11, :cond_2e

    .line 1043
    .line 1044
    goto :goto_1e

    .line 1045
    :cond_2e
    const/4 v11, 0x3

    .line 1046
    goto :goto_1f

    .line 1047
    :sswitch_a
    const-string v15, "n"

    .line 1048
    .line 1049
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1050
    .line 1051
    .line 1052
    move-result v11

    .line 1053
    if-nez v11, :cond_2f

    .line 1054
    .line 1055
    goto :goto_1e

    .line 1056
    :cond_2f
    const/4 v11, 0x2

    .line 1057
    goto :goto_1f

    .line 1058
    :sswitch_b
    const-string v15, "i"

    .line 1059
    .line 1060
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1061
    .line 1062
    .line 1063
    move-result v11

    .line 1064
    if-nez v11, :cond_30

    .line 1065
    .line 1066
    goto :goto_1e

    .line 1067
    :cond_30
    const/4 v11, 0x1

    .line 1068
    goto :goto_1f

    .line 1069
    :sswitch_c
    const-string v15, "a"

    .line 1070
    .line 1071
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1072
    .line 1073
    .line 1074
    move-result v11

    .line 1075
    if-nez v11, :cond_31

    .line 1076
    .line 1077
    goto :goto_1e

    .line 1078
    :cond_31
    const/4 v11, 0x0

    .line 1079
    :goto_1f
    packed-switch v11, :pswitch_data_3

    .line 1080
    .line 1081
    .line 1082
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    const-string v15, "Unknown mask mode "

    .line 1085
    .line 1086
    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    const-string v12, ". Defaulting to Add."

    .line 1093
    .line 1094
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v11

    .line 1101
    invoke-static {v11}, Lm15;->b(Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    :pswitch_13
    const/4 v11, 0x1

    .line 1105
    goto :goto_20

    .line 1106
    :pswitch_14
    const/4 v11, 0x2

    .line 1107
    goto :goto_20

    .line 1108
    :pswitch_15
    const/4 v11, 0x4

    .line 1109
    goto :goto_20

    .line 1110
    :pswitch_16
    const-string v11, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 1111
    .line 1112
    invoke-virtual {v1, v11}, Le25;->a(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    const/4 v11, 0x3

    .line 1116
    :goto_20
    move-object/from16 v43, v3

    .line 1117
    .line 1118
    move v15, v11

    .line 1119
    goto :goto_1d

    .line 1120
    :pswitch_17
    invoke-virtual {v0}, Lcn4;->n()Z

    .line 1121
    .line 1122
    .line 1123
    move-result v5

    .line 1124
    goto :goto_1c

    .line 1125
    :pswitch_18
    new-instance v2, Lhc;

    .line 1126
    .line 1127
    invoke-static {}, Lmi8;->c()F

    .line 1128
    .line 1129
    .line 1130
    move-result v11

    .line 1131
    sget-object v12, Lyb7;->a:Lyb7;

    .line 1132
    .line 1133
    move-object/from16 v43, v3

    .line 1134
    .line 1135
    const/4 v3, 0x0

    .line 1136
    invoke-static {v0, v1, v11, v12, v3}, Lzo4;->a(Lul4;Le25;FLcj8;Z)Ljava/util/ArrayList;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v11

    .line 1140
    const/4 v12, 0x6

    .line 1141
    invoke-direct {v2, v11, v12}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 1142
    .line 1143
    .line 1144
    goto :goto_21

    .line 1145
    :pswitch_19
    move-object/from16 v43, v3

    .line 1146
    .line 1147
    const/4 v3, 0x0

    .line 1148
    invoke-static/range {p0 .. p1}, Lsz8;->P(Lcn4;Le25;)Ldc;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v11

    .line 1152
    move-object v13, v11

    .line 1153
    :goto_21
    move-object/from16 v3, v43

    .line 1154
    .line 1155
    const/4 v11, 0x6

    .line 1156
    const/4 v12, 0x3

    .line 1157
    goto/16 :goto_19

    .line 1158
    .line 1159
    :cond_32
    move-object/from16 v43, v3

    .line 1160
    .line 1161
    const/4 v3, 0x0

    .line 1162
    invoke-virtual {v0}, Lcn4;->h()V

    .line 1163
    .line 1164
    .line 1165
    new-instance v11, Lq75;

    .line 1166
    .line 1167
    invoke-direct {v11, v15, v2, v13, v5}, Lq75;-><init>(ILhc;Ldc;Z)V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    .line 1172
    .line 1173
    move-object/from16 v3, v43

    .line 1174
    .line 1175
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1176
    .line 1177
    const/4 v11, 0x6

    .line 1178
    const/4 v12, 0x3

    .line 1179
    goto/16 :goto_18

    .line 1180
    .line 1181
    :cond_33
    move-object/from16 v43, v3

    .line 1182
    .line 1183
    const/4 v3, 0x0

    .line 1184
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1185
    .line 1186
    .line 1187
    move-result v2

    .line 1188
    iget v5, v1, Le25;->o:I

    .line 1189
    .line 1190
    add-int/2addr v5, v2

    .line 1191
    iput v5, v1, Le25;->o:I

    .line 1192
    .line 1193
    invoke-virtual {v0}, Lcn4;->g()V

    .line 1194
    .line 1195
    .line 1196
    goto :goto_22

    .line 1197
    :pswitch_1a
    move-object/from16 v43, v3

    .line 1198
    .line 1199
    move v3, v4

    .line 1200
    move-object v4, v11

    .line 1201
    invoke-virtual {v0}, Lcn4;->r()I

    .line 1202
    .line 1203
    .line 1204
    move-result v2

    .line 1205
    const/16 v40, 0x6

    .line 1206
    .line 1207
    invoke-static/range {v40 .. v40}, Ldj7;->C(I)[I

    .line 1208
    .line 1209
    .line 1210
    move-result-object v5

    .line 1211
    array-length v5, v5

    .line 1212
    if-lt v2, v5, :cond_34

    .line 1213
    .line 1214
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1215
    .line 1216
    const-string v11, "Unsupported matte type: "

    .line 1217
    .line 1218
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v2

    .line 1228
    invoke-virtual {v1, v2}, Le25;->a(Ljava/lang/String;)V

    .line 1229
    .line 1230
    .line 1231
    :goto_22
    move-object v11, v4

    .line 1232
    move-object/from16 v13, v39

    .line 1233
    .line 1234
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1235
    .line 1236
    const/4 v5, 0x1

    .line 1237
    :goto_23
    move v4, v3

    .line 1238
    move-object/from16 v3, v43

    .line 1239
    .line 1240
    goto/16 :goto_0

    .line 1241
    .line 1242
    :cond_34
    invoke-static/range {v40 .. v40}, Ldj7;->C(I)[I

    .line 1243
    .line 1244
    .line 1245
    move-result-object v5

    .line 1246
    aget v34, v5, v2

    .line 1247
    .line 1248
    invoke-static/range {v34 .. v34}, Ldj7;->A(I)I

    .line 1249
    .line 1250
    .line 1251
    move-result v2

    .line 1252
    const/4 v12, 0x3

    .line 1253
    if-eq v2, v12, :cond_36

    .line 1254
    .line 1255
    const/4 v5, 0x4

    .line 1256
    if-eq v2, v5, :cond_35

    .line 1257
    .line 1258
    goto :goto_24

    .line 1259
    :cond_35
    const-string v2, "Unsupported matte type: Luma Inverted"

    .line 1260
    .line 1261
    invoke-virtual {v1, v2}, Le25;->a(Ljava/lang/String;)V

    .line 1262
    .line 1263
    .line 1264
    goto :goto_24

    .line 1265
    :cond_36
    const-string v2, "Unsupported matte type: Luma"

    .line 1266
    .line 1267
    invoke-virtual {v1, v2}, Le25;->a(Ljava/lang/String;)V

    .line 1268
    .line 1269
    .line 1270
    :goto_24
    iget v2, v1, Le25;->o:I

    .line 1271
    .line 1272
    const/16 v50, 0x1

    .line 1273
    .line 1274
    add-int/lit8 v2, v2, 0x1

    .line 1275
    .line 1276
    iput v2, v1, Le25;->o:I

    .line 1277
    .line 1278
    :goto_25
    move-object v11, v4

    .line 1279
    :goto_26
    move-object/from16 v13, v39

    .line 1280
    .line 1281
    :goto_27
    move/from16 v5, v50

    .line 1282
    .line 1283
    :goto_28
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1284
    .line 1285
    goto :goto_23

    .line 1286
    :pswitch_1b
    move-object/from16 v43, v3

    .line 1287
    .line 1288
    move v3, v4

    .line 1289
    move/from16 v50, v5

    .line 1290
    .line 1291
    move-object v4, v11

    .line 1292
    invoke-static/range {p0 .. p1}, Lnc;->a(Lcn4;Le25;)Lmc;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v35

    .line 1296
    :goto_29
    move-object/from16 v13, v39

    .line 1297
    .line 1298
    goto :goto_28

    .line 1299
    :pswitch_1c
    move-object/from16 v43, v3

    .line 1300
    .line 1301
    move v3, v4

    .line 1302
    move/from16 v50, v5

    .line 1303
    .line 1304
    move-object v4, v11

    .line 1305
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v2

    .line 1309
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1310
    .line 1311
    .line 1312
    move-result v26

    .line 1313
    goto :goto_29

    .line 1314
    :pswitch_1d
    move-object/from16 v43, v3

    .line 1315
    .line 1316
    move v3, v4

    .line 1317
    move/from16 v50, v5

    .line 1318
    .line 1319
    move-object v4, v11

    .line 1320
    invoke-virtual {v0}, Lcn4;->r()I

    .line 1321
    .line 1322
    .line 1323
    move-result v2

    .line 1324
    int-to-float v2, v2

    .line 1325
    invoke-static {}, Lmi8;->c()F

    .line 1326
    .line 1327
    .line 1328
    move-result v5

    .line 1329
    mul-float/2addr v5, v2

    .line 1330
    float-to-int v2, v5

    .line 1331
    move/from16 v25, v2

    .line 1332
    .line 1333
    goto :goto_26

    .line 1334
    :pswitch_1e
    move-object/from16 v43, v3

    .line 1335
    .line 1336
    move v3, v4

    .line 1337
    move/from16 v50, v5

    .line 1338
    .line 1339
    move-object v4, v11

    .line 1340
    invoke-virtual {v0}, Lcn4;->r()I

    .line 1341
    .line 1342
    .line 1343
    move-result v2

    .line 1344
    int-to-float v2, v2

    .line 1345
    invoke-static {}, Lmi8;->c()F

    .line 1346
    .line 1347
    .line 1348
    move-result v5

    .line 1349
    mul-float/2addr v5, v2

    .line 1350
    float-to-int v2, v5

    .line 1351
    move/from16 v24, v2

    .line 1352
    .line 1353
    goto :goto_26

    .line 1354
    :pswitch_1f
    move-object/from16 v43, v3

    .line 1355
    .line 1356
    move v3, v4

    .line 1357
    move/from16 v50, v5

    .line 1358
    .line 1359
    move-object v4, v11

    .line 1360
    invoke-virtual {v0}, Lcn4;->r()I

    .line 1361
    .line 1362
    .line 1363
    move-result v2

    .line 1364
    int-to-long v7, v2

    .line 1365
    goto :goto_29

    .line 1366
    :pswitch_20
    move-object/from16 v43, v3

    .line 1367
    .line 1368
    move v3, v4

    .line 1369
    move/from16 v50, v5

    .line 1370
    .line 1371
    move-object v4, v11

    .line 1372
    move/from16 v42, v12

    .line 1373
    .line 1374
    invoke-virtual {v0}, Lcn4;->r()I

    .line 1375
    .line 1376
    .line 1377
    move-result v2

    .line 1378
    const/4 v11, 0x6

    .line 1379
    if-ge v2, v11, :cond_37

    .line 1380
    .line 1381
    invoke-static/range {v42 .. v42}, Ldj7;->C(I)[I

    .line 1382
    .line 1383
    .line 1384
    move-result-object v5

    .line 1385
    aget v22, v5, v2

    .line 1386
    .line 1387
    goto :goto_25

    .line 1388
    :cond_37
    move-object v11, v4

    .line 1389
    move-object/from16 v13, v39

    .line 1390
    .line 1391
    move/from16 v22, v42

    .line 1392
    .line 1393
    goto :goto_27

    .line 1394
    :pswitch_21
    move-object/from16 v43, v3

    .line 1395
    .line 1396
    move v3, v4

    .line 1397
    move/from16 v50, v5

    .line 1398
    .line 1399
    move-object v4, v11

    .line 1400
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v23

    .line 1404
    goto :goto_29

    .line 1405
    :pswitch_22
    move-object/from16 v43, v3

    .line 1406
    .line 1407
    move v3, v4

    .line 1408
    move/from16 v50, v5

    .line 1409
    .line 1410
    move-object v4, v11

    .line 1411
    invoke-virtual {v0}, Lcn4;->r()I

    .line 1412
    .line 1413
    .line 1414
    move-result v2

    .line 1415
    int-to-long v11, v2

    .line 1416
    move-wide/from16 v17, v11

    .line 1417
    .line 1418
    move-object/from16 v13, v39

    .line 1419
    .line 1420
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1421
    .line 1422
    move-object v11, v4

    .line 1423
    goto/16 :goto_23

    .line 1424
    .line 1425
    :pswitch_23
    move-object/from16 v43, v3

    .line 1426
    .line 1427
    move v3, v4

    .line 1428
    move/from16 v50, v5

    .line 1429
    .line 1430
    move-object v4, v11

    .line 1431
    invoke-virtual {v0}, Lcn4;->u()Ljava/lang/String;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v6

    .line 1435
    goto/16 :goto_29

    .line 1436
    .line 1437
    :cond_38
    move-object/from16 v43, v3

    .line 1438
    .line 1439
    move-object v4, v11

    .line 1440
    move-object/from16 v39, v13

    .line 1441
    .line 1442
    invoke-virtual {v0}, Lcn4;->h()V

    .line 1443
    .line 1444
    .line 1445
    new-instance v11, Ljava/util/ArrayList;

    .line 1446
    .line 1447
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1448
    .line 1449
    .line 1450
    cmpl-float v0, v20, v37

    .line 1451
    .line 1452
    if-lez v0, :cond_39

    .line 1453
    .line 1454
    new-instance v0, Lwo4;

    .line 1455
    .line 1456
    const/4 v5, 0x0

    .line 1457
    move-object v3, v6

    .line 1458
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v6

    .line 1462
    move-object v12, v4

    .line 1463
    const/4 v4, 0x0

    .line 1464
    move-object v2, v3

    .line 1465
    move-object/from16 v3, v43

    .line 1466
    .line 1467
    move-object v13, v12

    .line 1468
    move-object v12, v2

    .line 1469
    move-object/from16 v2, v43

    .line 1470
    .line 1471
    invoke-direct/range {v0 .. v6}, Lwo4;-><init>(Le25;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    .line 1476
    .line 1477
    goto :goto_2a

    .line 1478
    :cond_39
    move-object v13, v4

    .line 1479
    move-object v12, v6

    .line 1480
    :goto_2a
    cmpl-float v0, v21, v37

    .line 1481
    .line 1482
    if-lez v0, :cond_3a

    .line 1483
    .line 1484
    goto :goto_2b

    .line 1485
    :cond_3a
    iget v0, v1, Le25;->l:F

    .line 1486
    .line 1487
    move/from16 v21, v0

    .line 1488
    .line 1489
    :goto_2b
    new-instance v0, Lwo4;

    .line 1490
    .line 1491
    const/4 v4, 0x0

    .line 1492
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v6

    .line 1496
    move-object/from16 v3, v19

    .line 1497
    .line 1498
    move-object/from16 v2, v19

    .line 1499
    .line 1500
    move/from16 v5, v20

    .line 1501
    .line 1502
    invoke-direct/range {v0 .. v6}, Lwo4;-><init>(Le25;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    .line 1507
    .line 1508
    new-instance v0, Lwo4;

    .line 1509
    .line 1510
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1511
    .line 1512
    .line 1513
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v6

    .line 1517
    move-object/from16 v3, v43

    .line 1518
    .line 1519
    move-object/from16 v1, p1

    .line 1520
    .line 1521
    move/from16 v5, v21

    .line 1522
    .line 1523
    move-object/from16 v2, v43

    .line 1524
    .line 1525
    invoke-direct/range {v0 .. v6}, Lwo4;-><init>(Le25;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1529
    .line 1530
    .line 1531
    const-string v0, ".ai"

    .line 1532
    .line 1533
    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1534
    .line 1535
    .line 1536
    move-result v0

    .line 1537
    if-nez v0, :cond_3b

    .line 1538
    .line 1539
    const-string v0, "ai"

    .line 1540
    .line 1541
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1542
    .line 1543
    .line 1544
    move-result v0

    .line 1545
    if-eqz v0, :cond_3c

    .line 1546
    .line 1547
    :cond_3b
    const-string v0, "Convert your Illustrator layers to shape layers."

    .line 1548
    .line 1549
    invoke-virtual {v1, v0}, Le25;->a(Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    :cond_3c
    new-instance v0, Ljs4;

    .line 1553
    .line 1554
    move-object v2, v1

    .line 1555
    move-object v1, v9

    .line 1556
    move-object/from16 v21, v11

    .line 1557
    .line 1558
    move-object v3, v12

    .line 1559
    move-object/from16 v20, v14

    .line 1560
    .line 1561
    move-wide/from16 v4, v17

    .line 1562
    .line 1563
    move/from16 v6, v22

    .line 1564
    .line 1565
    move-object/from16 v9, v23

    .line 1566
    .line 1567
    move/from16 v12, v24

    .line 1568
    .line 1569
    move/from16 v13, v25

    .line 1570
    .line 1571
    move/from16 v14, v26

    .line 1572
    .line 1573
    move/from16 v17, v27

    .line 1574
    .line 1575
    move/from16 v18, v28

    .line 1576
    .line 1577
    move/from16 v15, v29

    .line 1578
    .line 1579
    move/from16 v16, v30

    .line 1580
    .line 1581
    move/from16 v24, v31

    .line 1582
    .line 1583
    move-object/from16 v25, v32

    .line 1584
    .line 1585
    move-object/from16 v26, v33

    .line 1586
    .line 1587
    move/from16 v22, v34

    .line 1588
    .line 1589
    move-object/from16 v11, v35

    .line 1590
    .line 1591
    move-object/from16 v23, v36

    .line 1592
    .line 1593
    move-object/from16 v19, v39

    .line 1594
    .line 1595
    invoke-direct/range {v0 .. v26}, Ljs4;-><init>(Ljava/util/List;Le25;Ljava/lang/String;JIJLjava/lang/String;Ljava/util/List;Lmc;IIIFFIILjc;Lkc;Ljava/util/List;ILbc;ZLz28;Lnz4;)V

    .line 1596
    .line 1597
    .line 1598
    return-object v0

    .line 1599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch

    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    :sswitch_data_1
    .sparse-switch
        0x6f -> :sswitch_8
        0xe04 -> :sswitch_7
        0x197f1 -> :sswitch_6
        0x3339a3 -> :sswitch_5
    .end sparse-switch

    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_12
    .end packed-switch

    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    :sswitch_data_2
    .sparse-switch
        0x61 -> :sswitch_c
        0x69 -> :sswitch_b
        0x6e -> :sswitch_a
        0x73 -> :sswitch_9
    .end sparse-switch

    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_13
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method
