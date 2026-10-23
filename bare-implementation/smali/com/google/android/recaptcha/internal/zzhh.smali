.class public final Lcom/google/android/recaptcha/internal/zzhh;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzgx;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzhh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzhh;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzhh;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzhh;->zza:Lcom/google/android/recaptcha/internal/zzhh;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzce;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/Byte;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, p2, Ljava/lang/Byte;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    check-cast p2, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    rem-int/2addr p0, p1

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    instance-of v1, p1, Ljava/lang/Short;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    instance-of v2, p2, Ljava/lang/Short;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    check-cast p1, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    check-cast p2, Ljava/lang/Number;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    rem-int/2addr p0, p1

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_1
    instance-of v2, p1, Ljava/lang/Integer;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    instance-of v3, p2, Ljava/lang/Integer;

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    check-cast p1, Ljava/lang/Number;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    check-cast p2, Ljava/lang/Number;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    rem-int/2addr p0, p1

    .line 74
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_2
    instance-of v3, p1, Ljava/lang/Long;

    .line 80
    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    instance-of v4, p2, Ljava/lang/Long;

    .line 84
    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    check-cast p1, Ljava/lang/Number;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide p0

    .line 93
    check-cast p2, Ljava/lang/Number;

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    rem-long/2addr p0, v0

    .line 100
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :cond_3
    instance-of v4, p1, Ljava/lang/Float;

    .line 106
    .line 107
    if-eqz v4, :cond_4

    .line 108
    .line 109
    instance-of v5, p2, Ljava/lang/Float;

    .line 110
    .line 111
    if-eqz v5, :cond_4

    .line 112
    .line 113
    check-cast p1, Ljava/lang/Number;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    check-cast p2, Ljava/lang/Number;

    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    rem-float/2addr p0, p1

    .line 126
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0

    .line 131
    :cond_4
    instance-of v5, p1, Ljava/lang/Double;

    .line 132
    .line 133
    if-eqz v5, :cond_5

    .line 134
    .line 135
    instance-of v6, p2, Ljava/lang/Double;

    .line 136
    .line 137
    if-eqz v6, :cond_5

    .line 138
    .line 139
    check-cast p1, Ljava/lang/Number;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 142
    .line 143
    .line 144
    move-result-wide p0

    .line 145
    check-cast p2, Ljava/lang/Number;

    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 148
    .line 149
    .line 150
    move-result-wide v0

    .line 151
    rem-double/2addr p0, v0

    .line 152
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0

    .line 157
    :cond_5
    instance-of v6, p1, Ljava/lang/String;

    .line 158
    .line 159
    const/4 v7, 0x0

    .line 160
    if-eqz v6, :cond_9

    .line 161
    .line 162
    instance-of v6, p2, Ljava/lang/Byte;

    .line 163
    .line 164
    if-eqz v6, :cond_7

    .line 165
    .line 166
    check-cast p1, Ljava/lang/String;

    .line 167
    .line 168
    sget-object p0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 169
    .line 170
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    new-instance p1, Ljava/util/ArrayList;

    .line 175
    .line 176
    array-length v0, p0

    .line 177
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .line 179
    .line 180
    :goto_0
    if-ge v7, v0, :cond_6

    .line 181
    .line 182
    aget-byte v1, p0, v7

    .line 183
    .line 184
    move-object v2, p2

    .line 185
    check-cast v2, Ljava/lang/Number;

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    rem-int/2addr v1, v2

    .line 192
    int-to-byte v1, v1

    .line 193
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    add-int/lit8 v7, v7, 0x1

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_6
    invoke-static {p1}, Lel1;->s1(Ljava/util/List;)[B

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    new-instance p1, Ljava/lang/String;

    .line 208
    .line 209
    sget-object p2, Lf51;->a:Ljava/nio/charset/Charset;

    .line 210
    .line 211
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 212
    .line 213
    .line 214
    return-object p1

    .line 215
    :cond_7
    instance-of v6, p2, Ljava/lang/Integer;

    .line 216
    .line 217
    if-eqz v6, :cond_9

    .line 218
    .line 219
    check-cast p1, Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    new-instance p1, Ljava/util/ArrayList;

    .line 226
    .line 227
    array-length v0, p0

    .line 228
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    .line 230
    .line 231
    :goto_1
    if-ge v7, v0, :cond_8

    .line 232
    .line 233
    aget-char v1, p0, v7

    .line 234
    .line 235
    move-object v2, p2

    .line 236
    check-cast v2, Ljava/lang/Number;

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    rem-int/2addr v1, v2

    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    add-int/lit8 v7, v7, 0x1

    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_8
    invoke-static {p1}, Lel1;->u1(Ljava/util/ArrayList;)[I

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    return-object p0

    .line 258
    :cond_9
    if-eqz v0, :cond_b

    .line 259
    .line 260
    instance-of v0, p2, [B

    .line 261
    .line 262
    if-eqz v0, :cond_b

    .line 263
    .line 264
    check-cast p2, [B

    .line 265
    .line 266
    array-length p0, p2

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    .line 271
    .line 272
    move v1, v7

    .line 273
    :goto_2
    if-ge v1, p0, :cond_a

    .line 274
    .line 275
    aget-byte v2, p2, v1

    .line 276
    .line 277
    move-object v3, p1

    .line 278
    check-cast v3, Ljava/lang/Number;

    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    rem-int/2addr v2, v3

    .line 285
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    add-int/lit8 v1, v1, 0x1

    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_a
    new-array p0, v7, [Ljava/lang/Integer;

    .line 296
    .line 297
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    return-object p0

    .line 302
    :cond_b
    if-eqz v1, :cond_d

    .line 303
    .line 304
    instance-of v0, p2, [S

    .line 305
    .line 306
    if-eqz v0, :cond_d

    .line 307
    .line 308
    check-cast p2, [S

    .line 309
    .line 310
    array-length p0, p2

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .line 315
    .line 316
    move v1, v7

    .line 317
    :goto_3
    if-ge v1, p0, :cond_c

    .line 318
    .line 319
    aget-short v2, p2, v1

    .line 320
    .line 321
    move-object v3, p1

    .line 322
    check-cast v3, Ljava/lang/Number;

    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    rem-int/2addr v2, v3

    .line 329
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    add-int/lit8 v1, v1, 0x1

    .line 337
    .line 338
    goto :goto_3

    .line 339
    :cond_c
    new-array p0, v7, [Ljava/lang/Integer;

    .line 340
    .line 341
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    return-object p0

    .line 346
    :cond_d
    if-eqz v2, :cond_f

    .line 347
    .line 348
    instance-of v0, p2, [I

    .line 349
    .line 350
    if-eqz v0, :cond_f

    .line 351
    .line 352
    check-cast p2, [I

    .line 353
    .line 354
    array-length p0, p2

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 358
    .line 359
    .line 360
    move v1, v7

    .line 361
    :goto_4
    if-ge v1, p0, :cond_e

    .line 362
    .line 363
    aget v2, p2, v1

    .line 364
    .line 365
    move-object v3, p1

    .line 366
    check-cast v3, Ljava/lang/Number;

    .line 367
    .line 368
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    rem-int/2addr v2, v3

    .line 373
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    add-int/lit8 v1, v1, 0x1

    .line 381
    .line 382
    goto :goto_4

    .line 383
    :cond_e
    new-array p0, v7, [Ljava/lang/Integer;

    .line 384
    .line 385
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    return-object p0

    .line 390
    :cond_f
    if-eqz v3, :cond_11

    .line 391
    .line 392
    instance-of v0, p2, [J

    .line 393
    .line 394
    if-eqz v0, :cond_11

    .line 395
    .line 396
    check-cast p2, [J

    .line 397
    .line 398
    array-length p0, p2

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 402
    .line 403
    .line 404
    move v1, v7

    .line 405
    :goto_5
    if-ge v1, p0, :cond_10

    .line 406
    .line 407
    aget-wide v2, p2, v1

    .line 408
    .line 409
    move-object v4, p1

    .line 410
    check-cast v4, Ljava/lang/Number;

    .line 411
    .line 412
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 413
    .line 414
    .line 415
    move-result-wide v4

    .line 416
    rem-long/2addr v2, v4

    .line 417
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    add-int/lit8 v1, v1, 0x1

    .line 425
    .line 426
    goto :goto_5

    .line 427
    :cond_10
    new-array p0, v7, [Ljava/lang/Long;

    .line 428
    .line 429
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    return-object p0

    .line 434
    :cond_11
    if-eqz v4, :cond_13

    .line 435
    .line 436
    instance-of v0, p2, [F

    .line 437
    .line 438
    if-eqz v0, :cond_13

    .line 439
    .line 440
    check-cast p2, [F

    .line 441
    .line 442
    array-length p0, p2

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    .line 444
    .line 445
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 446
    .line 447
    .line 448
    move v1, v7

    .line 449
    :goto_6
    if-ge v1, p0, :cond_12

    .line 450
    .line 451
    aget v2, p2, v1

    .line 452
    .line 453
    move-object v3, p1

    .line 454
    check-cast v3, Ljava/lang/Number;

    .line 455
    .line 456
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    rem-float/2addr v2, v3

    .line 461
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    add-int/lit8 v1, v1, 0x1

    .line 469
    .line 470
    goto :goto_6

    .line 471
    :cond_12
    new-array p0, v7, [Ljava/lang/Float;

    .line 472
    .line 473
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object p0

    .line 477
    return-object p0

    .line 478
    :cond_13
    if-eqz v5, :cond_15

    .line 479
    .line 480
    instance-of v0, p2, [D

    .line 481
    .line 482
    if-eqz v0, :cond_15

    .line 483
    .line 484
    check-cast p2, [D

    .line 485
    .line 486
    array-length p0, p2

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    .line 488
    .line 489
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 490
    .line 491
    .line 492
    move v1, v7

    .line 493
    :goto_7
    if-ge v1, p0, :cond_14

    .line 494
    .line 495
    aget-wide v2, p2, v1

    .line 496
    .line 497
    move-object v4, p1

    .line 498
    check-cast v4, Ljava/lang/Number;

    .line 499
    .line 500
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 501
    .line 502
    .line 503
    move-result-wide v4

    .line 504
    rem-double/2addr v2, v4

    .line 505
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    add-int/lit8 v1, v1, 0x1

    .line 513
    .line 514
    goto :goto_7

    .line 515
    :cond_14
    new-array p0, v7, [Ljava/lang/Double;

    .line 516
    .line 517
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    return-object p0

    .line 522
    :cond_15
    instance-of v0, p1, [B

    .line 523
    .line 524
    if-eqz v0, :cond_17

    .line 525
    .line 526
    instance-of v1, p2, Ljava/lang/Byte;

    .line 527
    .line 528
    if-eqz v1, :cond_17

    .line 529
    .line 530
    check-cast p1, [B

    .line 531
    .line 532
    array-length p0, p1

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    .line 534
    .line 535
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 536
    .line 537
    .line 538
    move v1, v7

    .line 539
    :goto_8
    if-ge v1, p0, :cond_16

    .line 540
    .line 541
    aget-byte v2, p1, v1

    .line 542
    .line 543
    move-object v3, p2

    .line 544
    check-cast v3, Ljava/lang/Number;

    .line 545
    .line 546
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    rem-int/2addr v2, v3

    .line 551
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    add-int/lit8 v1, v1, 0x1

    .line 559
    .line 560
    goto :goto_8

    .line 561
    :cond_16
    new-array p0, v7, [Ljava/lang/Integer;

    .line 562
    .line 563
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object p0

    .line 567
    return-object p0

    .line 568
    :cond_17
    instance-of v1, p1, [S

    .line 569
    .line 570
    if-eqz v1, :cond_19

    .line 571
    .line 572
    instance-of v2, p2, Ljava/lang/Short;

    .line 573
    .line 574
    if-eqz v2, :cond_19

    .line 575
    .line 576
    check-cast p1, [S

    .line 577
    .line 578
    array-length p0, p1

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    .line 580
    .line 581
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 582
    .line 583
    .line 584
    move v1, v7

    .line 585
    :goto_9
    if-ge v1, p0, :cond_18

    .line 586
    .line 587
    aget-short v2, p1, v1

    .line 588
    .line 589
    move-object v3, p2

    .line 590
    check-cast v3, Ljava/lang/Number;

    .line 591
    .line 592
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    rem-int/2addr v2, v3

    .line 597
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    add-int/lit8 v1, v1, 0x1

    .line 605
    .line 606
    goto :goto_9

    .line 607
    :cond_18
    new-array p0, v7, [Ljava/lang/Integer;

    .line 608
    .line 609
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object p0

    .line 613
    return-object p0

    .line 614
    :cond_19
    instance-of v2, p1, [I

    .line 615
    .line 616
    if-eqz v2, :cond_1b

    .line 617
    .line 618
    instance-of v3, p2, Ljava/lang/Integer;

    .line 619
    .line 620
    if-eqz v3, :cond_1b

    .line 621
    .line 622
    check-cast p1, [I

    .line 623
    .line 624
    array-length p0, p1

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    .line 626
    .line 627
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 628
    .line 629
    .line 630
    :goto_a
    if-ge v7, p0, :cond_1a

    .line 631
    .line 632
    aget v1, p1, v7

    .line 633
    .line 634
    move-object v2, p2

    .line 635
    check-cast v2, Ljava/lang/Number;

    .line 636
    .line 637
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    rem-int/2addr v1, v2

    .line 642
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    add-int/lit8 v7, v7, 0x1

    .line 650
    .line 651
    goto :goto_a

    .line 652
    :cond_1a
    invoke-static {v0}, Lel1;->u1(Ljava/util/ArrayList;)[I

    .line 653
    .line 654
    .line 655
    move-result-object p0

    .line 656
    return-object p0

    .line 657
    :cond_1b
    instance-of v3, p1, [J

    .line 658
    .line 659
    if-eqz v3, :cond_1d

    .line 660
    .line 661
    instance-of v4, p2, Ljava/lang/Long;

    .line 662
    .line 663
    if-eqz v4, :cond_1d

    .line 664
    .line 665
    check-cast p1, [J

    .line 666
    .line 667
    array-length p0, p1

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    .line 669
    .line 670
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 671
    .line 672
    .line 673
    move v1, v7

    .line 674
    :goto_b
    if-ge v1, p0, :cond_1c

    .line 675
    .line 676
    aget-wide v2, p1, v1

    .line 677
    .line 678
    move-object v4, p2

    .line 679
    check-cast v4, Ljava/lang/Number;

    .line 680
    .line 681
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 682
    .line 683
    .line 684
    move-result-wide v4

    .line 685
    rem-long/2addr v2, v4

    .line 686
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    add-int/lit8 v1, v1, 0x1

    .line 694
    .line 695
    goto :goto_b

    .line 696
    :cond_1c
    new-array p0, v7, [Ljava/lang/Long;

    .line 697
    .line 698
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object p0

    .line 702
    return-object p0

    .line 703
    :cond_1d
    instance-of v4, p1, [F

    .line 704
    .line 705
    if-eqz v4, :cond_1f

    .line 706
    .line 707
    instance-of v5, p2, Ljava/lang/Float;

    .line 708
    .line 709
    if-eqz v5, :cond_1f

    .line 710
    .line 711
    check-cast p1, [F

    .line 712
    .line 713
    array-length p0, p1

    .line 714
    new-instance v0, Ljava/util/ArrayList;

    .line 715
    .line 716
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 717
    .line 718
    .line 719
    move v1, v7

    .line 720
    :goto_c
    if-ge v1, p0, :cond_1e

    .line 721
    .line 722
    aget v2, p1, v1

    .line 723
    .line 724
    move-object v3, p2

    .line 725
    check-cast v3, Ljava/lang/Number;

    .line 726
    .line 727
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 728
    .line 729
    .line 730
    move-result v3

    .line 731
    rem-float/2addr v2, v3

    .line 732
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    add-int/lit8 v1, v1, 0x1

    .line 740
    .line 741
    goto :goto_c

    .line 742
    :cond_1e
    new-array p0, v7, [Ljava/lang/Float;

    .line 743
    .line 744
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object p0

    .line 748
    return-object p0

    .line 749
    :cond_1f
    instance-of v5, p1, [D

    .line 750
    .line 751
    if-eqz v5, :cond_21

    .line 752
    .line 753
    instance-of v6, p2, Ljava/lang/Double;

    .line 754
    .line 755
    if-eqz v6, :cond_21

    .line 756
    .line 757
    check-cast p1, [D

    .line 758
    .line 759
    array-length p0, p1

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    .line 761
    .line 762
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 763
    .line 764
    .line 765
    move v1, v7

    .line 766
    :goto_d
    if-ge v1, p0, :cond_20

    .line 767
    .line 768
    aget-wide v2, p1, v1

    .line 769
    .line 770
    move-object v4, p2

    .line 771
    check-cast v4, Ljava/lang/Number;

    .line 772
    .line 773
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 774
    .line 775
    .line 776
    move-result-wide v4

    .line 777
    rem-double/2addr v2, v4

    .line 778
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    .line 784
    .line 785
    add-int/lit8 v1, v1, 0x1

    .line 786
    .line 787
    goto :goto_d

    .line 788
    :cond_20
    new-array p0, v7, [Ljava/lang/Double;

    .line 789
    .line 790
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object p0

    .line 794
    return-object p0

    .line 795
    :cond_21
    const/16 v6, 0xa

    .line 796
    .line 797
    if-eqz v0, :cond_23

    .line 798
    .line 799
    instance-of v0, p2, [B

    .line 800
    .line 801
    if-eqz v0, :cond_23

    .line 802
    .line 803
    check-cast p1, [B

    .line 804
    .line 805
    array-length v0, p1

    .line 806
    check-cast p2, [B

    .line 807
    .line 808
    array-length v1, p2

    .line 809
    invoke-static {p0, v0, v1}, Lcom/google/android/recaptcha/internal/zzgw;->zza(Lcom/google/android/recaptcha/internal/zzgx;II)V

    .line 810
    .line 811
    .line 812
    invoke-static {v7, v0}, Ll73;->F(II)Lnd4;

    .line 813
    .line 814
    .line 815
    move-result-object p0

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    .line 817
    .line 818
    invoke-static {p0, v6}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 819
    .line 820
    .line 821
    move-result v1

    .line 822
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {p0}, Lld4;->iterator()Ljava/util/Iterator;

    .line 826
    .line 827
    .line 828
    move-result-object p0

    .line 829
    :goto_e
    move-object v1, p0

    .line 830
    check-cast v1, Lmd4;

    .line 831
    .line 832
    iget-boolean v2, v1, Lmd4;->c:Z

    .line 833
    .line 834
    if-eqz v2, :cond_22

    .line 835
    .line 836
    invoke-virtual {v1}, Lmd4;->nextInt()I

    .line 837
    .line 838
    .line 839
    move-result v1

    .line 840
    aget-byte v2, p1, v1

    .line 841
    .line 842
    aget-byte v1, p2, v1

    .line 843
    .line 844
    rem-int/2addr v2, v1

    .line 845
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 846
    .line 847
    .line 848
    move-result-object v1

    .line 849
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    .line 851
    .line 852
    goto :goto_e

    .line 853
    :cond_22
    new-array p0, v7, [Ljava/lang/Integer;

    .line 854
    .line 855
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object p0

    .line 859
    return-object p0

    .line 860
    :cond_23
    if-eqz v1, :cond_25

    .line 861
    .line 862
    instance-of v0, p2, [S

    .line 863
    .line 864
    if-eqz v0, :cond_25

    .line 865
    .line 866
    check-cast p1, [S

    .line 867
    .line 868
    array-length v0, p1

    .line 869
    check-cast p2, [S

    .line 870
    .line 871
    array-length v1, p2

    .line 872
    invoke-static {p0, v0, v1}, Lcom/google/android/recaptcha/internal/zzgw;->zza(Lcom/google/android/recaptcha/internal/zzgx;II)V

    .line 873
    .line 874
    .line 875
    invoke-static {v7, v0}, Ll73;->F(II)Lnd4;

    .line 876
    .line 877
    .line 878
    move-result-object p0

    .line 879
    new-instance v0, Ljava/util/ArrayList;

    .line 880
    .line 881
    invoke-static {p0, v6}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 882
    .line 883
    .line 884
    move-result v1

    .line 885
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {p0}, Lld4;->iterator()Ljava/util/Iterator;

    .line 889
    .line 890
    .line 891
    move-result-object p0

    .line 892
    :goto_f
    move-object v1, p0

    .line 893
    check-cast v1, Lmd4;

    .line 894
    .line 895
    iget-boolean v2, v1, Lmd4;->c:Z

    .line 896
    .line 897
    if-eqz v2, :cond_24

    .line 898
    .line 899
    invoke-virtual {v1}, Lmd4;->nextInt()I

    .line 900
    .line 901
    .line 902
    move-result v1

    .line 903
    aget-short v2, p1, v1

    .line 904
    .line 905
    aget-short v1, p2, v1

    .line 906
    .line 907
    rem-int/2addr v2, v1

    .line 908
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 909
    .line 910
    .line 911
    move-result-object v1

    .line 912
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    goto :goto_f

    .line 916
    :cond_24
    new-array p0, v7, [Ljava/lang/Integer;

    .line 917
    .line 918
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object p0

    .line 922
    return-object p0

    .line 923
    :cond_25
    if-eqz v2, :cond_27

    .line 924
    .line 925
    instance-of v0, p2, [I

    .line 926
    .line 927
    if-eqz v0, :cond_27

    .line 928
    .line 929
    check-cast p1, [I

    .line 930
    .line 931
    array-length v0, p1

    .line 932
    check-cast p2, [I

    .line 933
    .line 934
    array-length v1, p2

    .line 935
    invoke-static {p0, v0, v1}, Lcom/google/android/recaptcha/internal/zzgw;->zza(Lcom/google/android/recaptcha/internal/zzgx;II)V

    .line 936
    .line 937
    .line 938
    invoke-static {v7, v0}, Ll73;->F(II)Lnd4;

    .line 939
    .line 940
    .line 941
    move-result-object p0

    .line 942
    new-instance v0, Ljava/util/ArrayList;

    .line 943
    .line 944
    invoke-static {p0, v6}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 945
    .line 946
    .line 947
    move-result v1

    .line 948
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {p0}, Lld4;->iterator()Ljava/util/Iterator;

    .line 952
    .line 953
    .line 954
    move-result-object p0

    .line 955
    :goto_10
    move-object v1, p0

    .line 956
    check-cast v1, Lmd4;

    .line 957
    .line 958
    iget-boolean v2, v1, Lmd4;->c:Z

    .line 959
    .line 960
    if-eqz v2, :cond_26

    .line 961
    .line 962
    invoke-virtual {v1}, Lmd4;->nextInt()I

    .line 963
    .line 964
    .line 965
    move-result v1

    .line 966
    aget v2, p1, v1

    .line 967
    .line 968
    aget v1, p2, v1

    .line 969
    .line 970
    rem-int/2addr v2, v1

    .line 971
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 972
    .line 973
    .line 974
    move-result-object v1

    .line 975
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    .line 977
    .line 978
    goto :goto_10

    .line 979
    :cond_26
    new-array p0, v7, [Ljava/lang/Integer;

    .line 980
    .line 981
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object p0

    .line 985
    return-object p0

    .line 986
    :cond_27
    if-eqz v3, :cond_29

    .line 987
    .line 988
    instance-of v0, p2, [J

    .line 989
    .line 990
    if-eqz v0, :cond_29

    .line 991
    .line 992
    check-cast p1, [J

    .line 993
    .line 994
    array-length v0, p1

    .line 995
    check-cast p2, [J

    .line 996
    .line 997
    array-length v1, p2

    .line 998
    invoke-static {p0, v0, v1}, Lcom/google/android/recaptcha/internal/zzgw;->zza(Lcom/google/android/recaptcha/internal/zzgx;II)V

    .line 999
    .line 1000
    .line 1001
    invoke-static {v7, v0}, Ll73;->F(II)Lnd4;

    .line 1002
    .line 1003
    .line 1004
    move-result-object p0

    .line 1005
    new-instance v0, Ljava/util/ArrayList;

    .line 1006
    .line 1007
    invoke-static {p0, v6}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1008
    .line 1009
    .line 1010
    move-result v1

    .line 1011
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {p0}, Lld4;->iterator()Ljava/util/Iterator;

    .line 1015
    .line 1016
    .line 1017
    move-result-object p0

    .line 1018
    :goto_11
    move-object v1, p0

    .line 1019
    check-cast v1, Lmd4;

    .line 1020
    .line 1021
    iget-boolean v2, v1, Lmd4;->c:Z

    .line 1022
    .line 1023
    if-eqz v2, :cond_28

    .line 1024
    .line 1025
    invoke-virtual {v1}, Lmd4;->nextInt()I

    .line 1026
    .line 1027
    .line 1028
    move-result v1

    .line 1029
    aget-wide v2, p1, v1

    .line 1030
    .line 1031
    aget-wide v4, p2, v1

    .line 1032
    .line 1033
    rem-long/2addr v2, v4

    .line 1034
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v1

    .line 1038
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    .line 1040
    .line 1041
    goto :goto_11

    .line 1042
    :cond_28
    new-array p0, v7, [Ljava/lang/Long;

    .line 1043
    .line 1044
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object p0

    .line 1048
    return-object p0

    .line 1049
    :cond_29
    if-eqz v4, :cond_2b

    .line 1050
    .line 1051
    instance-of v0, p2, [F

    .line 1052
    .line 1053
    if-eqz v0, :cond_2b

    .line 1054
    .line 1055
    check-cast p1, [F

    .line 1056
    .line 1057
    array-length v0, p1

    .line 1058
    check-cast p2, [F

    .line 1059
    .line 1060
    array-length v1, p2

    .line 1061
    invoke-static {p0, v0, v1}, Lcom/google/android/recaptcha/internal/zzgw;->zza(Lcom/google/android/recaptcha/internal/zzgx;II)V

    .line 1062
    .line 1063
    .line 1064
    invoke-static {v7, v0}, Ll73;->F(II)Lnd4;

    .line 1065
    .line 1066
    .line 1067
    move-result-object p0

    .line 1068
    new-instance v0, Ljava/util/ArrayList;

    .line 1069
    .line 1070
    invoke-static {p0, v6}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1071
    .line 1072
    .line 1073
    move-result v1

    .line 1074
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {p0}, Lld4;->iterator()Ljava/util/Iterator;

    .line 1078
    .line 1079
    .line 1080
    move-result-object p0

    .line 1081
    :goto_12
    move-object v1, p0

    .line 1082
    check-cast v1, Lmd4;

    .line 1083
    .line 1084
    iget-boolean v2, v1, Lmd4;->c:Z

    .line 1085
    .line 1086
    if-eqz v2, :cond_2a

    .line 1087
    .line 1088
    invoke-virtual {v1}, Lmd4;->nextInt()I

    .line 1089
    .line 1090
    .line 1091
    move-result v1

    .line 1092
    aget v2, p1, v1

    .line 1093
    .line 1094
    aget v1, p2, v1

    .line 1095
    .line 1096
    rem-float/2addr v2, v1

    .line 1097
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v1

    .line 1101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    .line 1103
    .line 1104
    goto :goto_12

    .line 1105
    :cond_2a
    new-array p0, v7, [Ljava/lang/Float;

    .line 1106
    .line 1107
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1108
    .line 1109
    .line 1110
    move-result-object p0

    .line 1111
    return-object p0

    .line 1112
    :cond_2b
    if-eqz v5, :cond_2d

    .line 1113
    .line 1114
    instance-of v0, p2, [D

    .line 1115
    .line 1116
    if-eqz v0, :cond_2d

    .line 1117
    .line 1118
    check-cast p1, [D

    .line 1119
    .line 1120
    array-length v0, p1

    .line 1121
    check-cast p2, [D

    .line 1122
    .line 1123
    array-length v1, p2

    .line 1124
    invoke-static {p0, v0, v1}, Lcom/google/android/recaptcha/internal/zzgw;->zza(Lcom/google/android/recaptcha/internal/zzgx;II)V

    .line 1125
    .line 1126
    .line 1127
    invoke-static {v7, v0}, Ll73;->F(II)Lnd4;

    .line 1128
    .line 1129
    .line 1130
    move-result-object p0

    .line 1131
    new-instance v0, Ljava/util/ArrayList;

    .line 1132
    .line 1133
    invoke-static {p0, v6}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1134
    .line 1135
    .line 1136
    move-result v1

    .line 1137
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {p0}, Lld4;->iterator()Ljava/util/Iterator;

    .line 1141
    .line 1142
    .line 1143
    move-result-object p0

    .line 1144
    :goto_13
    move-object v1, p0

    .line 1145
    check-cast v1, Lmd4;

    .line 1146
    .line 1147
    iget-boolean v2, v1, Lmd4;->c:Z

    .line 1148
    .line 1149
    if-eqz v2, :cond_2c

    .line 1150
    .line 1151
    invoke-virtual {v1}, Lmd4;->nextInt()I

    .line 1152
    .line 1153
    .line 1154
    move-result v1

    .line 1155
    aget-wide v2, p1, v1

    .line 1156
    .line 1157
    aget-wide v4, p2, v1

    .line 1158
    .line 1159
    rem-double/2addr v2, v4

    .line 1160
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v1

    .line 1164
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    .line 1166
    .line 1167
    goto :goto_13

    .line 1168
    :cond_2c
    new-array p0, v7, [Ljava/lang/Double;

    .line 1169
    .line 1170
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1171
    .line 1172
    .line 1173
    move-result-object p0

    .line 1174
    return-object p0

    .line 1175
    :cond_2d
    const/4 p0, 0x4

    .line 1176
    const/4 p1, 0x5

    .line 1177
    const/4 p2, 0x0

    .line 1178
    invoke-static {p0, p1, p2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 1179
    .line 1180
    .line 1181
    return-object p2
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzgd;[Lcom/google/android/recaptcha/internal/zzue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzce;
        }
    .end annotation

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x0

    .line 5
    if-ne v0, v1, :cond_4

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    aget-object v1, p3, v1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v4, v1, :cond_0

    .line 24
    .line 25
    move-object v0, v3

    .line 26
    :cond_0
    const/4 v1, 0x5

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    aget-object p3, p3, v4

    .line 34
    .line 35
    invoke-virtual {v5, p3}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-static {p3}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eq v4, v5, :cond_1

    .line 44
    .line 45
    move-object p3, v3

    .line 46
    :cond_1
    if-eqz p3, :cond_2

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p0, v0, p3}, Lcom/google/android/recaptcha/internal/zzhh;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p2, p1, p0}, Lcom/google/android/recaptcha/internal/zzge;->zze(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catch_0
    move-exception p0

    .line 61
    const/4 p1, 0x6

    .line 62
    invoke-static {v2, p1, p0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-static {v2, v1, v3}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    invoke-static {v2, v1, v3}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    const/4 p0, 0x3

    .line 75
    invoke-static {v2, p0, v3}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
