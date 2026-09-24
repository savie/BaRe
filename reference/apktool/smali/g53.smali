.class public final Lg53;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final f:[Ls43;

.field public static final k:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/TimeZone;

.field public final c:Ljava/util/Locale;

.field public final transient d:[Ls43;

.field public final transient e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ls43;

    .line 3
    .line 4
    sput-object v0, Lg53;->f:[Ls43;

    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    const/4 v1, 0x7

    .line 9
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lg53;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lg53;->a:Ljava/lang/String;

    .line 9
    .line 10
    move-object/from16 v2, p2

    .line 11
    .line 12
    iput-object v2, v0, Lg53;->b:Ljava/util/TimeZone;

    .line 13
    .line 14
    sget v2, Lk05;->a:I

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    move-object/from16 v2, p3

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    iput-object v2, v0, Lg53;->c:Ljava/util/Locale;

    .line 26
    .line 27
    new-instance v3, Ljava/text/DateFormatSymbols;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 30
    .line 31
    .line 32
    new-instance v4, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    const/4 v11, 0x1

    .line 66
    new-array v12, v11, [I

    .line 67
    .line 68
    const/4 v13, 0x0

    .line 69
    move v14, v13

    .line 70
    :goto_1
    if-ge v14, v10, :cond_25

    .line 71
    .line 72
    aput v14, v12, v13

    .line 73
    .line 74
    new-instance v14, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    aget v15, v12, v13

    .line 80
    .line 81
    move/from16 p2, v11

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    move/from16 p3, v13

    .line 88
    .line 89
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    invoke-static {v13}, Lc51;->a(C)Z

    .line 94
    .line 95
    .line 96
    move-result v16

    .line 97
    move-object/from16 v17, v8

    .line 98
    .line 99
    if-eqz v16, :cond_2

    .line 100
    .line 101
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    :goto_2
    add-int/lit8 v8, v15, 0x1

    .line 105
    .line 106
    move-object/from16 v18, v9

    .line 107
    .line 108
    if-ge v8, v11, :cond_6

    .line 109
    .line 110
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-eq v9, v13, :cond_1

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_1
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move v15, v8

    .line 121
    move-object/from16 v9, v18

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    move-object/from16 v18, v9

    .line 125
    .line 126
    const/16 v8, 0x27

    .line 127
    .line 128
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    move/from16 v9, p3

    .line 132
    .line 133
    :goto_3
    if-ge v15, v11, :cond_6

    .line 134
    .line 135
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    if-ne v13, v8, :cond_4

    .line 140
    .line 141
    add-int/lit8 v8, v15, 0x1

    .line 142
    .line 143
    move/from16 v19, v9

    .line 144
    .line 145
    if-ge v8, v11, :cond_3

    .line 146
    .line 147
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    const/16 v1, 0x27

    .line 152
    .line 153
    if-ne v9, v1, :cond_3

    .line 154
    .line 155
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    move v15, v8

    .line 159
    :goto_4
    move/from16 v9, v19

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_3
    xor-int/lit8 v1, v19, 0x1

    .line 163
    .line 164
    move v9, v1

    .line 165
    goto :goto_5

    .line 166
    :cond_4
    move/from16 v19, v9

    .line 167
    .line 168
    if-nez v19, :cond_5

    .line 169
    .line 170
    invoke-static {v13}, Lc51;->a(C)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_5

    .line 175
    .line 176
    add-int/lit8 v15, v15, -0x1

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_5
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 184
    .line 185
    move-object/from16 v1, p1

    .line 186
    .line 187
    const/16 v8, 0x27

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_6
    :goto_6
    aput v15, v12, p3

    .line 191
    .line 192
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    aget v8, v12, p3

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    if-nez v9, :cond_7

    .line 203
    .line 204
    move/from16 v13, p3

    .line 205
    .line 206
    goto/16 :goto_15

    .line 207
    .line 208
    :cond_7
    move/from16 v11, p3

    .line 209
    .line 210
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    const/16 v11, 0x27

    .line 215
    .line 216
    if-eq v13, v11, :cond_23

    .line 217
    .line 218
    const/16 v11, 0x53

    .line 219
    .line 220
    if-eq v13, v11, :cond_22

    .line 221
    .line 222
    const/16 v11, 0x61

    .line 223
    .line 224
    if-eq v13, v11, :cond_21

    .line 225
    .line 226
    const/16 v11, 0x64

    .line 227
    .line 228
    if-eq v13, v11, :cond_20

    .line 229
    .line 230
    const/16 v11, 0x68

    .line 231
    .line 232
    if-eq v13, v11, :cond_1f

    .line 233
    .line 234
    const/16 v11, 0x6b

    .line 235
    .line 236
    if-eq v13, v11, :cond_1e

    .line 237
    .line 238
    const/16 v11, 0x6d

    .line 239
    .line 240
    if-eq v13, v11, :cond_1d

    .line 241
    .line 242
    const/16 v11, 0x73

    .line 243
    .line 244
    if-eq v13, v11, :cond_1c

    .line 245
    .line 246
    const/16 v11, 0x75

    .line 247
    .line 248
    if-eq v13, v11, :cond_1b

    .line 249
    .line 250
    const/16 v11, 0x77

    .line 251
    .line 252
    if-eq v13, v11, :cond_1a

    .line 253
    .line 254
    const/16 v11, 0x79

    .line 255
    .line 256
    const/4 v14, 0x2

    .line 257
    const/4 v15, 0x4

    .line 258
    if-eq v13, v11, :cond_18

    .line 259
    .line 260
    const/16 v11, 0x7a

    .line 261
    .line 262
    if-eq v13, v11, :cond_16

    .line 263
    .line 264
    packed-switch v13, :pswitch_data_0

    .line 265
    .line 266
    .line 267
    const/4 v11, 0x0

    .line 268
    sget-object v16, Ld53;->a:Ld53;

    .line 269
    .line 270
    sget-object v19, La53;->a:La53;

    .line 271
    .line 272
    packed-switch v13, :pswitch_data_1

    .line 273
    .line 274
    .line 275
    sget-object v16, Lp43;->d:Lp43;

    .line 276
    .line 277
    packed-switch v13, :pswitch_data_2

    .line 278
    .line 279
    .line 280
    const-string v0, "Illegal pattern component: "

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw v11

    .line 290
    :pswitch_0
    move/from16 v1, p2

    .line 291
    .line 292
    if-ne v9, v1, :cond_8

    .line 293
    .line 294
    sget-object v16, Lx43;->c:Lx43;

    .line 295
    .line 296
    :goto_7
    move v9, v1

    .line 297
    move-object/from16 v1, v16

    .line 298
    .line 299
    :goto_8
    const/4 v13, 0x0

    .line 300
    goto/16 :goto_14

    .line 301
    .line 302
    :cond_8
    if-ne v9, v14, :cond_9

    .line 303
    .line 304
    goto :goto_7

    .line 305
    :cond_9
    sget-object v16, Lx43;->b:Lx43;

    .line 306
    .line 307
    goto :goto_7

    .line 308
    :pswitch_1
    move/from16 v1, p2

    .line 309
    .line 310
    if-eq v9, v1, :cond_c

    .line 311
    .line 312
    if-eq v9, v14, :cond_b

    .line 313
    .line 314
    const/4 v1, 0x3

    .line 315
    if-ne v9, v1, :cond_a

    .line 316
    .line 317
    goto :goto_a

    .line 318
    :cond_a
    const-string v0, "invalid number of X"

    .line 319
    .line 320
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v11

    .line 324
    :cond_b
    sget-object v1, Lp43;->c:Lp43;

    .line 325
    .line 326
    :goto_9
    move-object/from16 v16, v1

    .line 327
    .line 328
    goto :goto_a

    .line 329
    :cond_c
    sget-object v1, Lp43;->b:Lp43;

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_d
    :goto_a
    move-object/from16 v1, v16

    .line 333
    .line 334
    :cond_e
    :goto_b
    const/4 v9, 0x1

    .line 335
    goto :goto_8

    .line 336
    :pswitch_2
    invoke-static {v15, v9}, Lg53;->d(II)Lq43;

    .line 337
    .line 338
    .line 339
    move-result-object v16

    .line 340
    goto :goto_a

    .line 341
    :pswitch_3
    if-lt v9, v15, :cond_f

    .line 342
    .line 343
    new-instance v1, Lu43;

    .line 344
    .line 345
    invoke-direct {v1, v14, v6}, Lu43;-><init>(I[Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    goto :goto_b

    .line 349
    :cond_f
    const/4 v1, 0x3

    .line 350
    if-ne v9, v1, :cond_10

    .line 351
    .line 352
    new-instance v1, Lu43;

    .line 353
    .line 354
    invoke-direct {v1, v14, v7}, Lu43;-><init>(I[Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    goto :goto_b

    .line 358
    :cond_10
    if-ne v9, v14, :cond_d

    .line 359
    .line 360
    :goto_c
    move-object/from16 v1, v19

    .line 361
    .line 362
    goto :goto_b

    .line 363
    :pswitch_4
    if-lt v9, v15, :cond_12

    .line 364
    .line 365
    new-instance v1, Lu43;

    .line 366
    .line 367
    new-instance v9, Loz0;

    .line 368
    .line 369
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 370
    .line 371
    .line 372
    move-result-object v13

    .line 373
    invoke-direct {v9, v13, v2}, Loz0;-><init>(Ljava/util/Calendar;Ljava/util/Locale;)V

    .line 374
    .line 375
    .line 376
    iget-object v13, v9, Loz0;->a:Ljava/util/Calendar;

    .line 377
    .line 378
    iget-object v9, v9, Loz0;->b:Ljava/util/Locale;

    .line 379
    .line 380
    const v15, 0x8002

    .line 381
    .line 382
    .line 383
    invoke-virtual {v13, v14, v15, v9}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    .line 384
    .line 385
    .line 386
    move-result-object v9

    .line 387
    if-nez v9, :cond_11

    .line 388
    .line 389
    goto :goto_d

    .line 390
    :cond_11
    invoke-interface {v9}, Ljava/util/Map;->size()I

    .line 391
    .line 392
    .line 393
    move-result v11

    .line 394
    new-array v11, v11, [Ljava/lang/String;

    .line 395
    .line 396
    new-instance v13, Lnz0;

    .line 397
    .line 398
    invoke-direct {v13, v11}, Lnz0;-><init>([Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-interface {v9, v13}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 402
    .line 403
    .line 404
    :goto_d
    invoke-direct {v1, v14, v11}, Lu43;-><init>(I[Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto :goto_b

    .line 408
    :cond_12
    const/4 v1, 0x3

    .line 409
    if-ne v9, v1, :cond_14

    .line 410
    .line 411
    new-instance v1, Lu43;

    .line 412
    .line 413
    new-instance v9, Loz0;

    .line 414
    .line 415
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 416
    .line 417
    .line 418
    move-result-object v13

    .line 419
    invoke-direct {v9, v13, v2}, Loz0;-><init>(Ljava/util/Calendar;Ljava/util/Locale;)V

    .line 420
    .line 421
    .line 422
    iget-object v13, v9, Loz0;->a:Ljava/util/Calendar;

    .line 423
    .line 424
    iget-object v9, v9, Loz0;->b:Ljava/util/Locale;

    .line 425
    .line 426
    const v15, 0x8001

    .line 427
    .line 428
    .line 429
    invoke-virtual {v13, v14, v15, v9}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    .line 430
    .line 431
    .line 432
    move-result-object v9

    .line 433
    if-nez v9, :cond_13

    .line 434
    .line 435
    goto :goto_e

    .line 436
    :cond_13
    invoke-interface {v9}, Ljava/util/Map;->size()I

    .line 437
    .line 438
    .line 439
    move-result v11

    .line 440
    new-array v11, v11, [Ljava/lang/String;

    .line 441
    .line 442
    new-instance v13, Lnz0;

    .line 443
    .line 444
    invoke-direct {v13, v11}, Lnz0;-><init>([Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-interface {v9, v13}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 448
    .line 449
    .line 450
    :goto_e
    invoke-direct {v1, v14, v11}, Lu43;-><init>(I[Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    goto :goto_b

    .line 454
    :cond_14
    if-ne v9, v14, :cond_d

    .line 455
    .line 456
    goto :goto_c

    .line 457
    :pswitch_5
    const/16 v1, 0xa

    .line 458
    .line 459
    invoke-static {v1, v9}, Lg53;->d(II)Lq43;

    .line 460
    .line 461
    .line 462
    move-result-object v16

    .line 463
    goto/16 :goto_a

    .line 464
    .line 465
    :pswitch_6
    const/16 v1, 0xb

    .line 466
    .line 467
    invoke-static {v1, v9}, Lg53;->d(II)Lq43;

    .line 468
    .line 469
    .line 470
    move-result-object v16

    .line 471
    goto/16 :goto_a

    .line 472
    .line 473
    :pswitch_7
    new-instance v1, Lu43;

    .line 474
    .line 475
    const/4 v11, 0x0

    .line 476
    invoke-direct {v1, v11, v5}, Lu43;-><init>(I[Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    move v13, v11

    .line 480
    const/4 v9, 0x1

    .line 481
    goto/16 :goto_14

    .line 482
    .line 483
    :pswitch_8
    const/16 v1, 0x8

    .line 484
    .line 485
    invoke-static {v1, v9}, Lg53;->d(II)Lq43;

    .line 486
    .line 487
    .line 488
    move-result-object v16

    .line 489
    goto/16 :goto_a

    .line 490
    .line 491
    :pswitch_9
    new-instance v1, Lu43;

    .line 492
    .line 493
    if-ge v9, v15, :cond_15

    .line 494
    .line 495
    move-object/from16 v9, v18

    .line 496
    .line 497
    :goto_f
    const/4 v11, 0x7

    .line 498
    goto :goto_10

    .line 499
    :cond_15
    move-object/from16 v9, v17

    .line 500
    .line 501
    goto :goto_f

    .line 502
    :goto_10
    invoke-direct {v1, v11, v9}, Lu43;-><init>(I[Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    goto/16 :goto_b

    .line 506
    .line 507
    :pswitch_a
    const/4 v1, 0x6

    .line 508
    invoke-static {v1, v9}, Lg53;->d(II)Lq43;

    .line 509
    .line 510
    .line 511
    move-result-object v16

    .line 512
    goto/16 :goto_a

    .line 513
    .line 514
    :cond_16
    new-instance v1, Lw43;

    .line 515
    .line 516
    iget-object v11, v0, Lg53;->b:Ljava/util/TimeZone;

    .line 517
    .line 518
    if-lt v9, v15, :cond_17

    .line 519
    .line 520
    const/4 v9, 0x1

    .line 521
    goto :goto_11

    .line 522
    :cond_17
    const/4 v9, 0x0

    .line 523
    :goto_11
    invoke-direct {v1, v9, v2, v11}, Lw43;-><init>(ILjava/util/Locale;Ljava/util/TimeZone;)V

    .line 524
    .line 525
    .line 526
    goto/16 :goto_b

    .line 527
    .line 528
    :cond_18
    :pswitch_b
    if-ne v9, v14, :cond_19

    .line 529
    .line 530
    sget-object v1, Lc53;->a:Lc53;

    .line 531
    .line 532
    goto :goto_12

    .line 533
    :cond_19
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    const/4 v9, 0x1

    .line 538
    invoke-static {v9, v1}, Lg53;->d(II)Lq43;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    :goto_12
    const/16 v9, 0x59

    .line 543
    .line 544
    if-ne v13, v9, :cond_e

    .line 545
    .line 546
    new-instance v9, Lf53;

    .line 547
    .line 548
    invoke-direct {v9, v1}, Lf53;-><init>(Lq43;)V

    .line 549
    .line 550
    .line 551
    move-object v1, v9

    .line 552
    goto/16 :goto_b

    .line 553
    .line 554
    :cond_1a
    const/4 v1, 0x3

    .line 555
    invoke-static {v1, v9}, Lg53;->d(II)Lq43;

    .line 556
    .line 557
    .line 558
    move-result-object v16

    .line 559
    goto/16 :goto_a

    .line 560
    .line 561
    :cond_1b
    new-instance v1, Lo43;

    .line 562
    .line 563
    const/4 v11, 0x7

    .line 564
    invoke-static {v11, v9}, Lg53;->d(II)Lq43;

    .line 565
    .line 566
    .line 567
    move-result-object v9

    .line 568
    invoke-direct {v1, v9}, Lo43;-><init>(Lq43;)V

    .line 569
    .line 570
    .line 571
    goto/16 :goto_b

    .line 572
    .line 573
    :cond_1c
    const/16 v1, 0xd

    .line 574
    .line 575
    invoke-static {v1, v9}, Lg53;->d(II)Lq43;

    .line 576
    .line 577
    .line 578
    move-result-object v16

    .line 579
    goto/16 :goto_a

    .line 580
    .line 581
    :cond_1d
    const/16 v1, 0xc

    .line 582
    .line 583
    invoke-static {v1, v9}, Lg53;->d(II)Lq43;

    .line 584
    .line 585
    .line 586
    move-result-object v16

    .line 587
    goto/16 :goto_a

    .line 588
    .line 589
    :cond_1e
    new-instance v1, Lz43;

    .line 590
    .line 591
    const/16 v11, 0xb

    .line 592
    .line 593
    invoke-static {v11, v9}, Lg53;->d(II)Lq43;

    .line 594
    .line 595
    .line 596
    move-result-object v9

    .line 597
    invoke-direct {v1, v9}, Lz43;-><init>(Lq43;)V

    .line 598
    .line 599
    .line 600
    goto/16 :goto_b

    .line 601
    .line 602
    :cond_1f
    new-instance v1, Ly43;

    .line 603
    .line 604
    const/16 v11, 0xa

    .line 605
    .line 606
    invoke-static {v11, v9}, Lg53;->d(II)Lq43;

    .line 607
    .line 608
    .line 609
    move-result-object v9

    .line 610
    invoke-direct {v1, v9}, Ly43;-><init>(Lq43;)V

    .line 611
    .line 612
    .line 613
    goto/16 :goto_b

    .line 614
    .line 615
    :cond_20
    const/4 v1, 0x5

    .line 616
    invoke-static {v1, v9}, Lg53;->d(II)Lq43;

    .line 617
    .line 618
    .line 619
    move-result-object v16

    .line 620
    goto/16 :goto_a

    .line 621
    .line 622
    :cond_21
    new-instance v1, Lu43;

    .line 623
    .line 624
    const/16 v9, 0x9

    .line 625
    .line 626
    invoke-direct {v1, v9, v3}, Lu43;-><init>(I[Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    goto/16 :goto_b

    .line 630
    .line 631
    :cond_22
    const/16 v1, 0xe

    .line 632
    .line 633
    invoke-static {v1, v9}, Lg53;->d(II)Lq43;

    .line 634
    .line 635
    .line 636
    move-result-object v16

    .line 637
    goto/16 :goto_a

    .line 638
    .line 639
    :cond_23
    move/from16 v9, p2

    .line 640
    .line 641
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 646
    .line 647
    .line 648
    move-result v11

    .line 649
    if-ne v11, v9, :cond_24

    .line 650
    .line 651
    new-instance v11, Ln43;

    .line 652
    .line 653
    const/4 v13, 0x0

    .line 654
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    invoke-direct {v11, v1}, Ln43;-><init>(C)V

    .line 659
    .line 660
    .line 661
    :goto_13
    move-object v1, v11

    .line 662
    goto :goto_14

    .line 663
    :cond_24
    const/4 v13, 0x0

    .line 664
    new-instance v11, Lt43;

    .line 665
    .line 666
    invoke-direct {v11, v1}, Lt43;-><init>(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    goto :goto_13

    .line 670
    :goto_14
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    add-int/lit8 v14, v8, 0x1

    .line 674
    .line 675
    move-object/from16 v1, p1

    .line 676
    .line 677
    move v11, v9

    .line 678
    move-object/from16 v8, v17

    .line 679
    .line 680
    move-object/from16 v9, v18

    .line 681
    .line 682
    goto/16 :goto_1

    .line 683
    .line 684
    :cond_25
    :goto_15
    sget-object v1, Lg53;->f:[Ls43;

    .line 685
    .line 686
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    check-cast v1, [Ls43;

    .line 691
    .line 692
    iput-object v1, v0, Lg53;->d:[Ls43;

    .line 693
    .line 694
    array-length v1, v1

    .line 695
    :goto_16
    add-int/lit8 v1, v1, -0x1

    .line 696
    .line 697
    if-ltz v1, :cond_26

    .line 698
    .line 699
    iget-object v2, v0, Lg53;->d:[Ls43;

    .line 700
    .line 701
    aget-object v2, v2, v1

    .line 702
    .line 703
    invoke-interface {v2}, Ls43;->c()I

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    add-int/2addr v13, v2

    .line 708
    goto :goto_16

    .line 709
    :cond_26
    iput v13, v0, Lg53;->e:I

    .line 710
    .line 711
    return-void

    .line 712
    nop

    .line 713
    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_2
        :pswitch_1
        :pswitch_b
        :pswitch_0
    .end packed-switch
.end method

.method public static a(ILjava/lang/StringBuilder;)V
    .locals 1

    .line 1
    div-int/lit8 v0, p0, 0xa

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x30

    .line 4
    .line 5
    int-to-char v0, v0

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 7
    .line 8
    .line 9
    rem-int/lit8 p0, p0, 0xa

    .line 10
    .line 11
    add-int/lit8 p0, p0, 0x30

    .line 12
    .line 13
    int-to-char p0, p0

    .line 14
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static b(Ljava/lang/StringBuilder;II)V
    .locals 8

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/16 v2, 0x30

    .line 6
    .line 7
    if-ge p1, v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    const/4 v3, 0x3

    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x1

    .line 13
    const/16 v6, 0x3e8

    .line 14
    .line 15
    const/16 v7, 0x64

    .line 16
    .line 17
    if-ge p1, v6, :cond_2

    .line 18
    .line 19
    if-ge p1, v7, :cond_1

    .line 20
    .line 21
    if-ge p1, v1, :cond_0

    .line 22
    .line 23
    move v6, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v6, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v6, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move v6, v4

    .line 30
    :goto_0
    sub-int/2addr p2, v6

    .line 31
    :goto_1
    if-lez p2, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 34
    .line 35
    .line 36
    add-int/lit8 p2, p2, -0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    if-eq v6, v5, :cond_9

    .line 40
    .line 41
    if-eq v6, v0, :cond_7

    .line 42
    .line 43
    if-eq v6, v3, :cond_5

    .line 44
    .line 45
    if-eq v6, v4, :cond_4

    .line 46
    .line 47
    goto :goto_7

    .line 48
    :cond_4
    div-int/lit16 p2, p1, 0x3e8

    .line 49
    .line 50
    add-int/2addr p2, v2

    .line 51
    int-to-char p2, p2

    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 53
    .line 54
    .line 55
    rem-int/lit16 p1, p1, 0x3e8

    .line 56
    .line 57
    :cond_5
    if-lt p1, v7, :cond_6

    .line 58
    .line 59
    div-int/lit8 p2, p1, 0x64

    .line 60
    .line 61
    add-int/2addr p2, v2

    .line 62
    int-to-char p2, p2

    .line 63
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 64
    .line 65
    .line 66
    rem-int/lit8 p1, p1, 0x64

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 70
    .line 71
    .line 72
    :cond_7
    :goto_2
    if-lt p1, v1, :cond_8

    .line 73
    .line 74
    div-int/lit8 p2, p1, 0xa

    .line 75
    .line 76
    add-int/2addr p2, v2

    .line 77
    int-to-char p2, p2

    .line 78
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 79
    .line 80
    .line 81
    rem-int/lit8 p1, p1, 0xa

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 85
    .line 86
    .line 87
    :cond_9
    :goto_3
    add-int/2addr p1, v2

    .line 88
    int-to-char p1, p1

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_a
    new-array v0, v1, [C

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    :goto_4
    if-eqz p1, :cond_b

    .line 97
    .line 98
    add-int/lit8 v3, v1, 0x1

    .line 99
    .line 100
    rem-int/lit8 v4, p1, 0xa

    .line 101
    .line 102
    add-int/2addr v4, v2

    .line 103
    int-to-char v4, v4

    .line 104
    aput-char v4, v0, v1

    .line 105
    .line 106
    div-int/lit8 p1, p1, 0xa

    .line 107
    .line 108
    move v1, v3

    .line 109
    goto :goto_4

    .line 110
    :cond_b
    :goto_5
    if-ge v1, p2, :cond_c

    .line 111
    .line 112
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 113
    .line 114
    .line 115
    add-int/lit8 p2, p2, -0x1

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_c
    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 119
    .line 120
    if-ltz v1, :cond_d

    .line 121
    .line 122
    aget-char p1, v0, v1

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 125
    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_d
    :goto_7
    return-void
.end method

.method public static c(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lv43;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lv43;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lm43;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, p2, p3}, Lm43;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lg53;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;

    .line 18
    .line 19
    return-object p0
.end method

.method public static d(II)Lq43;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lr43;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lr43;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance p1, Lb53;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lb53;-><init>(I)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_1
    new-instance p1, Le53;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Le53;-><init>(I)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lg53;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lg53;

    .line 7
    .line 8
    iget-object v0, p0, Lg53;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p1, Lg53;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lg53;->b:Ljava/util/TimeZone;

    .line 19
    .line 20
    iget-object v1, p1, Lg53;->b:Ljava/util/TimeZone;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lg53;->c:Ljava/util/Locale;

    .line 29
    .line 30
    iget-object p1, p1, Lg53;->c:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lg53;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lg53;->b:Ljava/util/TimeZone;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object p0, p0, Lg53;->c:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/Locale;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    mul-int/lit8 p0, p0, 0xd

    .line 20
    .line 21
    add-int/2addr p0, v1

    .line 22
    mul-int/lit8 p0, p0, 0xd

    .line 23
    .line 24
    add-int/2addr p0, v0

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FastDatePrinter["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lg53;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ","

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lg53;->c:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lg53;->b:Ljava/util/TimeZone;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, "]"

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method
