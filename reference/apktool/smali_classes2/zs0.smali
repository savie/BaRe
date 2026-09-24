.class public final Lzs0;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/io/DataInputStream;

.field public final b:Lhy1;

.field public c:Ljava/io/InputStream;

.field public final d:Ls51;

.field public final e:Z

.field public final f:J

.field public final k:J

.field public final n:J

.field public final p:I

.field public q:J

.field public r:Z

.field public final t:[B


# direct methods
.method public constructor <init>(Lwu0;Ls51;ZILv40;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    .line 8
    .line 9
    .line 10
    const-wide/16 v4, -0x1

    .line 11
    .line 12
    iput-wide v4, v0, Lzs0;->f:J

    .line 13
    .line 14
    iput-wide v4, v0, Lzs0;->k:J

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    iput-wide v4, v0, Lzs0;->q:J

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    iput-boolean v6, v0, Lzs0;->r:Z

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    new-array v8, v7, [B

    .line 25
    .line 26
    iput-object v8, v0, Lzs0;->t:[B

    .line 27
    .line 28
    iput-object v2, v0, Lzs0;->d:Ls51;

    .line 29
    .line 30
    move/from16 v8, p3

    .line 31
    .line 32
    iput-boolean v8, v0, Lzs0;->e:Z

    .line 33
    .line 34
    new-instance v8, Ljava/io/DataInputStream;

    .line 35
    .line 36
    invoke-direct {v8, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    .line 38
    .line 39
    iput-object v8, v0, Lzs0;->a:Ljava/io/DataInputStream;

    .line 40
    .line 41
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    if-eqz v9, :cond_18

    .line 46
    .line 47
    add-int/lit8 v10, v9, 0x1

    .line 48
    .line 49
    mul-int/lit8 v10, v10, 0x4

    .line 50
    .line 51
    iput v10, v0, Lzs0;->p:I

    .line 52
    .line 53
    new-array v11, v10, [B

    .line 54
    .line 55
    int-to-byte v9, v9

    .line 56
    aput-byte v9, v11, v6

    .line 57
    .line 58
    add-int/lit8 v9, v10, -0x1

    .line 59
    .line 60
    invoke-virtual {v8, v11, v7, v9}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v8, v10, -0x4

    .line 64
    .line 65
    invoke-static {v6, v11, v8, v8}, Lbb9;->y(I[BII)Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    const-string v9, "XZ Block Header is corrupt"

    .line 70
    .line 71
    if-eqz v8, :cond_17

    .line 72
    .line 73
    aget-byte v8, v11, v7

    .line 74
    .line 75
    and-int/lit8 v12, v8, 0x3c

    .line 76
    .line 77
    const-string v14, "Unsupported options in XZ Block Header"

    .line 78
    .line 79
    if-nez v12, :cond_16

    .line 80
    .line 81
    const/4 v12, 0x3

    .line 82
    and-int/2addr v8, v12

    .line 83
    add-int/lit8 v15, v8, 0x1

    .line 84
    .line 85
    move-wide/from16 v16, v4

    .line 86
    .line 87
    new-array v4, v15, [J

    .line 88
    .line 89
    new-array v5, v15, [[B

    .line 90
    .line 91
    move/from16 v18, v6

    .line 92
    .line 93
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 94
    .line 95
    const/16 p3, 0x0

    .line 96
    .line 97
    add-int/lit8 v13, v10, -0x6

    .line 98
    .line 99
    const/4 v12, 0x2

    .line 100
    invoke-direct {v6, v11, v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 101
    .line 102
    .line 103
    move/from16 v19, v12

    .line 104
    .line 105
    int-to-long v12, v10

    .line 106
    const-wide v20, 0x7ffffffffffffffcL

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    sub-long v20, v20, v12

    .line 112
    .line 113
    :try_start_0
    iget v2, v2, Ls51;->b:I

    .line 114
    .line 115
    int-to-long v12, v2

    .line 116
    sub-long v12, v20, v12

    .line 117
    .line 118
    iput-wide v12, v0, Lzs0;->n:J

    .line 119
    .line 120
    aget-byte v2, v11, v7

    .line 121
    .line 122
    and-int/lit8 v2, v2, 0x40

    .line 123
    .line 124
    if-eqz v2, :cond_1

    .line 125
    .line 126
    move v2, v7

    .line 127
    move v10, v8

    .line 128
    invoke-static {v6}, Lbb9;->r(Ljava/io/InputStream;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v7

    .line 132
    iput-wide v7, v0, Lzs0;->k:J

    .line 133
    .line 134
    cmp-long v16, v7, v16

    .line 135
    .line 136
    if-eqz v16, :cond_0

    .line 137
    .line 138
    cmp-long v12, v7, v12

    .line 139
    .line 140
    if-gtz v12, :cond_0

    .line 141
    .line 142
    iput-wide v7, v0, Lzs0;->n:J

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Lcy1;

    .line 146
    .line 147
    invoke-direct {v0}, Lcy1;-><init>()V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_1
    move v2, v7

    .line 152
    move v10, v8

    .line 153
    :goto_0
    aget-byte v7, v11, v2

    .line 154
    .line 155
    and-int/lit16 v7, v7, 0x80

    .line 156
    .line 157
    if-eqz v7, :cond_2

    .line 158
    .line 159
    invoke-static {v6}, Lbb9;->r(Ljava/io/InputStream;)J

    .line 160
    .line 161
    .line 162
    move-result-wide v7

    .line 163
    iput-wide v7, v0, Lzs0;->f:J

    .line 164
    .line 165
    :cond_2
    move/from16 v7, v18

    .line 166
    .line 167
    :goto_1
    if-ge v7, v15, :cond_4

    .line 168
    .line 169
    invoke-static {v6}, Lbb9;->r(Ljava/io/InputStream;)J

    .line 170
    .line 171
    .line 172
    move-result-wide v11

    .line 173
    aput-wide v11, v4, v7

    .line 174
    .line 175
    invoke-static {v6}, Lbb9;->r(Ljava/io/InputStream;)J

    .line 176
    .line 177
    .line 178
    move-result-wide v11

    .line 179
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    int-to-long v2, v8

    .line 184
    cmp-long v2, v11, v2

    .line 185
    .line 186
    if-gtz v2, :cond_3

    .line 187
    .line 188
    long-to-int v2, v11

    .line 189
    new-array v2, v2, [B

    .line 190
    .line 191
    aput-object v2, v5, v7

    .line 192
    .line 193
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    .line 194
    .line 195
    .line 196
    add-int/lit8 v7, v7, 0x1

    .line 197
    .line 198
    const/4 v2, 0x1

    .line 199
    goto :goto_1

    .line 200
    :cond_3
    new-instance v0, Lcy1;

    .line 201
    .line 202
    invoke-direct {v0}, Lcy1;-><init>()V

    .line 203
    .line 204
    .line 205
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_4
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    :goto_2
    if-lez v2, :cond_6

    .line 211
    .line 212
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->read()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-nez v3, :cond_5

    .line 217
    .line 218
    add-int/lit8 v2, v2, -0x1

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_5
    invoke-static {v14}, Ly5;->h(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p3

    .line 225
    :cond_6
    new-array v2, v15, [Lzc3;

    .line 226
    .line 227
    move/from16 v3, v18

    .line 228
    .line 229
    :goto_3
    if-ge v3, v15, :cond_b

    .line 230
    .line 231
    aget-wide v6, v4, v3

    .line 232
    .line 233
    const-wide/16 v8, 0x21

    .line 234
    .line 235
    cmp-long v8, v6, v8

    .line 236
    .line 237
    if-nez v8, :cond_8

    .line 238
    .line 239
    new-instance v6, Lbq4;

    .line 240
    .line 241
    aget-object v7, v5, v3

    .line 242
    .line 243
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 244
    .line 245
    .line 246
    array-length v8, v7

    .line 247
    const/4 v9, 0x1

    .line 248
    if-ne v8, v9, :cond_7

    .line 249
    .line 250
    aget-byte v7, v7, v18

    .line 251
    .line 252
    and-int/lit16 v8, v7, 0xff

    .line 253
    .line 254
    const/16 v11, 0x25

    .line 255
    .line 256
    if-gt v8, v11, :cond_7

    .line 257
    .line 258
    and-int/lit8 v8, v7, 0x1

    .line 259
    .line 260
    or-int/lit8 v8, v8, 0x2

    .line 261
    .line 262
    ushr-int/lit8 v7, v7, 0x1

    .line 263
    .line 264
    add-int/lit8 v7, v7, 0xb

    .line 265
    .line 266
    shl-int v7, v8, v7

    .line 267
    .line 268
    iput v7, v6, Lbq4;->a:I

    .line 269
    .line 270
    aput-object v6, v2, v3

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_7
    const-string v0, "Unsupported LZMA2 properties"

    .line 274
    .line 275
    invoke-static {v0}, Ly5;->h(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p3

    .line 279
    :cond_8
    const/4 v9, 0x1

    .line 280
    const-wide/16 v11, 0x3

    .line 281
    .line 282
    cmp-long v8, v6, v11

    .line 283
    .line 284
    if-nez v8, :cond_9

    .line 285
    .line 286
    new-instance v6, Lci2;

    .line 287
    .line 288
    aget-object v7, v5, v3

    .line 289
    .line 290
    invoke-direct {v6, v7}, Lci2;-><init>([B)V

    .line 291
    .line 292
    .line 293
    aput-object v6, v2, v3

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_9
    const-wide/16 v11, 0x4

    .line 297
    .line 298
    cmp-long v8, v6, v11

    .line 299
    .line 300
    if-ltz v8, :cond_a

    .line 301
    .line 302
    const-wide/16 v11, 0xb

    .line 303
    .line 304
    cmp-long v8, v6, v11

    .line 305
    .line 306
    if-gtz v8, :cond_a

    .line 307
    .line 308
    new-instance v8, Lag0;

    .line 309
    .line 310
    aget-object v11, v5, v3

    .line 311
    .line 312
    invoke-direct {v8, v6, v7, v11}, Lag0;-><init>(J[B)V

    .line 313
    .line 314
    .line 315
    aput-object v8, v2, v3

    .line 316
    .line 317
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_a
    new-instance v0, Lhf8;

    .line 321
    .line 322
    aget-wide v1, v4, v3

    .line 323
    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string v4, "Unknown Filter ID "

    .line 327
    .line 328
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v0

    .line 342
    :cond_b
    move/from16 v3, v18

    .line 343
    .line 344
    :goto_5
    const-string v4, "Unsupported XZ filter chain"

    .line 345
    .line 346
    if-ge v3, v10, :cond_d

    .line 347
    .line 348
    aget-object v5, v2, v3

    .line 349
    .line 350
    invoke-interface {v5}, Lyc3;->a()Z

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    if-eqz v5, :cond_c

    .line 355
    .line 356
    add-int/lit8 v3, v3, 0x1

    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_c
    invoke-static {v4}, Ly5;->h(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw p3

    .line 363
    :cond_d
    aget-object v3, v2, v10

    .line 364
    .line 365
    invoke-interface {v3}, Lyc3;->c()Z

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    if-eqz v3, :cond_15

    .line 370
    .line 371
    move/from16 v3, v18

    .line 372
    .line 373
    move v5, v3

    .line 374
    :goto_6
    if-ge v3, v15, :cond_f

    .line 375
    .line 376
    aget-object v6, v2, v3

    .line 377
    .line 378
    invoke-interface {v6}, Lyc3;->e()Z

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    if-eqz v6, :cond_e

    .line 383
    .line 384
    add-int/lit8 v5, v5, 0x1

    .line 385
    .line 386
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 387
    .line 388
    goto :goto_6

    .line 389
    :cond_f
    const/4 v3, 0x3

    .line 390
    if-gt v5, v3, :cond_14

    .line 391
    .line 392
    if-ltz p4, :cond_12

    .line 393
    .line 394
    move/from16 v3, v18

    .line 395
    .line 396
    move v6, v3

    .line 397
    :goto_7
    if-ge v6, v15, :cond_10

    .line 398
    .line 399
    aget-object v4, v2, v6

    .line 400
    .line 401
    invoke-interface {v4}, Lzc3;->d()I

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    add-int/2addr v3, v4

    .line 406
    add-int/lit8 v6, v6, 0x1

    .line 407
    .line 408
    goto :goto_7

    .line 409
    :cond_10
    move/from16 v4, p4

    .line 410
    .line 411
    if-gt v3, v4, :cond_11

    .line 412
    .line 413
    goto :goto_8

    .line 414
    :cond_11
    new-instance v0, Lyb5;

    .line 415
    .line 416
    invoke-direct {v0, v3, v4}, Lyb5;-><init>(II)V

    .line 417
    .line 418
    .line 419
    throw v0

    .line 420
    :cond_12
    :goto_8
    new-instance v3, Lhy1;

    .line 421
    .line 422
    invoke-direct {v3, v1}, Lhy1;-><init>(Ljava/io/InputStream;)V

    .line 423
    .line 424
    .line 425
    iput-object v3, v0, Lzs0;->b:Lhy1;

    .line 426
    .line 427
    iput-object v3, v0, Lzs0;->c:Ljava/io/InputStream;

    .line 428
    .line 429
    move v8, v10

    .line 430
    :goto_9
    if-ltz v8, :cond_13

    .line 431
    .line 432
    aget-object v1, v2, v8

    .line 433
    .line 434
    iget-object v3, v0, Lzs0;->c:Ljava/io/InputStream;

    .line 435
    .line 436
    move-object/from16 v4, p5

    .line 437
    .line 438
    invoke-interface {v1, v3, v4}, Lzc3;->b(Ljava/io/InputStream;Lv40;)Ljava/io/InputStream;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    iput-object v1, v0, Lzs0;->c:Ljava/io/InputStream;

    .line 443
    .line 444
    add-int/lit8 v8, v8, -0x1

    .line 445
    .line 446
    goto :goto_9

    .line 447
    :cond_13
    return-void

    .line 448
    :cond_14
    invoke-static {v4}, Ly5;->h(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    throw p3

    .line 452
    :cond_15
    invoke-static {v4}, Ly5;->h(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    throw p3

    .line 456
    :catch_0
    new-instance v0, Lcy1;

    .line 457
    .line 458
    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    throw v0

    .line 462
    :cond_16
    const/16 p3, 0x0

    .line 463
    .line 464
    invoke-static {v14}, Ly5;->h(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw p3

    .line 468
    :cond_17
    new-instance v0, Lcy1;

    .line 469
    .line 470
    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    throw v0

    .line 474
    :cond_18
    new-instance v0, Lqb4;

    .line 475
    .line 476
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 477
    .line 478
    .line 479
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lzs0;->b:Lhy1;

    .line 2
    .line 3
    iget-wide v0, v0, Lhy1;->a:J

    .line 4
    .line 5
    iget-wide v2, p0, Lzs0;->k:J

    .line 6
    .line 7
    const-wide/16 v4, -0x1

    .line 8
    .line 9
    cmp-long v6, v2, v4

    .line 10
    .line 11
    if-eqz v6, :cond_0

    .line 12
    .line 13
    cmp-long v2, v2, v0

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-wide v2, p0, Lzs0;->f:J

    .line 18
    .line 19
    cmp-long v4, v2, v4

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    iget-wide v4, p0, Lzs0;->q:J

    .line 24
    .line 25
    cmp-long v2, v2, v4

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance p0, Lcy1;

    .line 31
    .line 32
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_2
    :goto_0
    const-wide/16 v2, 0x1

    .line 37
    .line 38
    add-long/2addr v2, v0

    .line 39
    const-wide/16 v4, 0x3

    .line 40
    .line 41
    and-long/2addr v0, v4

    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    cmp-long v0, v0, v4

    .line 45
    .line 46
    iget-object v1, p0, Lzs0;->a:Ljava/io/DataInputStream;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    move-wide v0, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    new-instance p0, Lcy1;

    .line 59
    .line 60
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_4
    iget-object v0, p0, Lzs0;->d:Ls51;

    .line 65
    .line 66
    iget v2, v0, Ls51;->b:I

    .line 67
    .line 68
    new-array v2, v2, [B

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 71
    .line 72
    .line 73
    iget-boolean p0, p0, Lzs0;->e:Z

    .line 74
    .line 75
    if-eqz p0, :cond_6

    .line 76
    .line 77
    invoke-virtual {v0}, Ls51;->a()[B

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_5

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    new-instance p0, Lcy1;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v2, "Integrity check ("

    .line 93
    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v0, Ls51;->c:Ljava/lang/String;

    .line 98
    .line 99
    const-string v2, ") does not match"

    .line 100
    .line 101
    invoke-static {v1, v0, v2}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_6
    :goto_1
    return-void
.end method

.method public final available()I
    .locals 0

    .line 1
    iget-object p0, p0, Lzs0;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lzs0;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lzs0;->c:Ljava/io/InputStream;

    .line 8
    .line 9
    return-void
.end method

.method public final read()I
    .locals 3

    const/4 v0, 0x1

    .line 103
    iget-object v1, p0, Lzs0;->t:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lzs0;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final read([BII)I
    .locals 9

    .line 1
    iget-boolean v0, p0, Lzs0;->r:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lzs0;->c:Ljava/io/InputStream;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-lez v0, :cond_6

    .line 15
    .line 16
    iget-boolean v3, p0, Lzs0;->e:Z

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    iget-object v3, p0, Lzs0;->d:Ls51;

    .line 21
    .line 22
    invoke-virtual {v3, p1, p2, v0}, Ls51;->d([BII)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-wide p1, p0, Lzs0;->q:J

    .line 26
    .line 27
    int-to-long v3, v0

    .line 28
    add-long/2addr p1, v3

    .line 29
    iput-wide p1, p0, Lzs0;->q:J

    .line 30
    .line 31
    iget-object v3, p0, Lzs0;->b:Lhy1;

    .line 32
    .line 33
    iget-wide v3, v3, Lhy1;->a:J

    .line 34
    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    cmp-long v7, v3, v5

    .line 38
    .line 39
    if-ltz v7, :cond_5

    .line 40
    .line 41
    iget-wide v7, p0, Lzs0;->n:J

    .line 42
    .line 43
    cmp-long v3, v3, v7

    .line 44
    .line 45
    if-gtz v3, :cond_5

    .line 46
    .line 47
    cmp-long v3, p1, v5

    .line 48
    .line 49
    if-ltz v3, :cond_5

    .line 50
    .line 51
    const-wide/16 v3, -0x1

    .line 52
    .line 53
    iget-wide v5, p0, Lzs0;->f:J

    .line 54
    .line 55
    cmp-long v3, v5, v3

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    cmp-long v3, p1, v5

    .line 60
    .line 61
    if-gtz v3, :cond_5

    .line 62
    .line 63
    :cond_2
    if-lt v0, p3, :cond_3

    .line 64
    .line 65
    cmp-long p1, p1, v5

    .line 66
    .line 67
    if-nez p1, :cond_7

    .line 68
    .line 69
    :cond_3
    iget-object p1, p0, Lzs0;->c:Ljava/io/InputStream;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-ne p1, v1, :cond_4

    .line 76
    .line 77
    invoke-virtual {p0}, Lzs0;->a()V

    .line 78
    .line 79
    .line 80
    iput-boolean v2, p0, Lzs0;->r:Z

    .line 81
    .line 82
    return v0

    .line 83
    :cond_4
    new-instance p0, Lcy1;

    .line 84
    .line 85
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_5
    new-instance p0, Lcy1;

    .line 90
    .line 91
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_6
    if-ne v0, v1, :cond_7

    .line 96
    .line 97
    invoke-virtual {p0}, Lzs0;->a()V

    .line 98
    .line 99
    .line 100
    iput-boolean v2, p0, Lzs0;->r:Z

    .line 101
    .line 102
    :cond_7
    return v0
.end method
