.class public final Lx35;
.super Luu3;


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:[I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lb42;->a:Lb42;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Luu3;-><init>(Lb42;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x10

    .line 7
    .line 8
    new-array v0, v0, [I

    .line 9
    .line 10
    iput-object v0, p0, Lx35;->i:[I

    .line 11
    .line 12
    invoke-static {p0}, Lzh8;->r(Lhl2;)Lff9;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Le42;->a()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lx35;->reset()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static j(III)I
    .locals 0

    .line 1
    and-int/2addr p1, p0

    .line 2
    not-int p0, p0

    .line 3
    and-int/2addr p0, p2

    .line 4
    or-int/2addr p0, p1

    .line 5
    return p0
.end method

.method public static k(III)I
    .locals 0

    .line 1
    and-int/2addr p0, p2

    .line 2
    not-int p2, p2

    .line 3
    and-int/2addr p1, p2

    .line 4
    or-int/2addr p0, p1

    .line 5
    return p0
.end method


# virtual methods
.method public final b(Lxb5;)V
    .locals 0

    .line 1
    check-cast p1, Lx35;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lx35;->l(Lx35;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()I
    .locals 0

    .line 1
    const/16 p0, 0x10

    .line 2
    .line 3
    return p0
.end method

.method public final copy()Lxb5;
    .locals 2

    .line 1
    new-instance v0, Lx35;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Luu3;-><init>(Luu3;)V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    new-array v1, v1, [I

    .line 9
    .line 10
    iput-object v1, v0, Lx35;->i:[I

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lx35;->l(Lx35;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final doFinal([BI)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Luu3;->e()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lx35;->e:I

    .line 5
    .line 6
    invoke-static {p1, v0, p2}, Lxx3;->o([BII)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lx35;->f:I

    .line 10
    .line 11
    add-int/lit8 v1, p2, 0x4

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lxx3;->o([BII)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lx35;->g:I

    .line 17
    .line 18
    add-int/lit8 v1, p2, 0x8

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lxx3;->o([BII)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lx35;->h:I

    .line 24
    .line 25
    add-int/lit8 p2, p2, 0xc

    .line 26
    .line 27
    invoke-static {p1, v0, p2}, Lxx3;->o([BII)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lx35;->reset()V

    .line 31
    .line 32
    .line 33
    const/16 p0, 0x10

    .line 34
    .line 35
    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "MD5"

    .line 2
    .line 3
    return-object p0
.end method

.method public final g()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lx35;->e:I

    .line 4
    .line 5
    iget v2, v0, Lx35;->f:I

    .line 6
    .line 7
    iget v3, v0, Lx35;->g:I

    .line 8
    .line 9
    iget v4, v0, Lx35;->h:I

    .line 10
    .line 11
    invoke-static {v2, v3, v4}, Lx35;->j(III)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    add-int/2addr v5, v1

    .line 16
    iget-object v1, v0, Lx35;->i:[I

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    aget v7, v1, v6

    .line 20
    .line 21
    const v8, -0x28955b88

    .line 22
    .line 23
    .line 24
    const/4 v9, 0x7

    .line 25
    invoke-static {v5, v7, v8, v9, v2}, Leq3;->f(IIIII)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-static {v5, v2, v3}, Lx35;->j(III)I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    add-int/2addr v7, v4

    .line 34
    const/4 v4, 0x1

    .line 35
    aget v8, v1, v4

    .line 36
    .line 37
    const v10, -0x173848aa

    .line 38
    .line 39
    .line 40
    const/16 v11, 0xc

    .line 41
    .line 42
    invoke-static {v7, v8, v10, v11, v5}, Leq3;->f(IIIII)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    invoke-static {v7, v5, v2}, Lx35;->j(III)I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    add-int/2addr v8, v3

    .line 51
    const/4 v3, 0x2

    .line 52
    aget v10, v1, v3

    .line 53
    .line 54
    const v12, 0x242070db

    .line 55
    .line 56
    .line 57
    const/16 v13, 0x11

    .line 58
    .line 59
    invoke-static {v8, v10, v12, v13, v7}, Leq3;->f(IIIII)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    invoke-static {v8, v7, v5}, Lx35;->j(III)I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    add-int/2addr v10, v2

    .line 68
    const/4 v2, 0x3

    .line 69
    aget v12, v1, v2

    .line 70
    .line 71
    const v14, -0x3e423112

    .line 72
    .line 73
    .line 74
    const/16 v15, 0x16

    .line 75
    .line 76
    invoke-static {v10, v12, v14, v15, v8}, Leq3;->f(IIIII)I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    invoke-static {v10, v8, v7}, Lx35;->j(III)I

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    add-int/2addr v12, v5

    .line 85
    const/4 v5, 0x4

    .line 86
    aget v14, v1, v5

    .line 87
    .line 88
    move/from16 v16, v2

    .line 89
    .line 90
    const v2, -0xa83f051

    .line 91
    .line 92
    .line 93
    invoke-static {v12, v14, v2, v9, v10}, Leq3;->f(IIIII)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-static {v2, v10, v8}, Lx35;->j(III)I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    add-int/2addr v12, v7

    .line 102
    const/4 v7, 0x5

    .line 103
    aget v14, v1, v7

    .line 104
    .line 105
    move/from16 v17, v3

    .line 106
    .line 107
    const v3, 0x4787c62a

    .line 108
    .line 109
    .line 110
    invoke-static {v12, v14, v3, v11, v2}, Leq3;->f(IIIII)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-static {v3, v2, v10}, Lx35;->j(III)I

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    add-int/2addr v12, v8

    .line 119
    const/4 v8, 0x6

    .line 120
    aget v14, v1, v8

    .line 121
    .line 122
    move/from16 v18, v4

    .line 123
    .line 124
    const v4, -0x57cfb9ed

    .line 125
    .line 126
    .line 127
    invoke-static {v12, v14, v4, v13, v3}, Leq3;->f(IIIII)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    invoke-static {v4, v3, v2}, Lx35;->j(III)I

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    add-int/2addr v12, v10

    .line 136
    aget v10, v1, v9

    .line 137
    .line 138
    const v14, -0x2b96aff

    .line 139
    .line 140
    .line 141
    invoke-static {v12, v10, v14, v15, v4}, Leq3;->f(IIIII)I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    invoke-static {v10, v4, v3}, Lx35;->j(III)I

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    add-int/2addr v12, v2

    .line 150
    const/16 v2, 0x8

    .line 151
    .line 152
    aget v14, v1, v2

    .line 153
    .line 154
    move/from16 v19, v2

    .line 155
    .line 156
    const v2, 0x698098d8

    .line 157
    .line 158
    .line 159
    invoke-static {v12, v14, v2, v9, v10}, Leq3;->f(IIIII)I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-static {v2, v10, v4}, Lx35;->j(III)I

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    add-int/2addr v12, v3

    .line 168
    const/16 v3, 0x9

    .line 169
    .line 170
    aget v14, v1, v3

    .line 171
    .line 172
    move/from16 v20, v6

    .line 173
    .line 174
    const v6, -0x74bb0851

    .line 175
    .line 176
    .line 177
    invoke-static {v12, v14, v6, v11, v2}, Leq3;->f(IIIII)I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    invoke-static {v6, v2, v10}, Lx35;->j(III)I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    add-int/2addr v12, v4

    .line 186
    const/16 v4, 0xa

    .line 187
    .line 188
    aget v14, v1, v4

    .line 189
    .line 190
    move/from16 v21, v4

    .line 191
    .line 192
    const v4, -0xa44f

    .line 193
    .line 194
    .line 195
    invoke-static {v12, v14, v4, v13, v6}, Leq3;->f(IIIII)I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    invoke-static {v4, v6, v2}, Lx35;->j(III)I

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    add-int/2addr v12, v10

    .line 204
    const/16 v10, 0xb

    .line 205
    .line 206
    aget v14, v1, v10

    .line 207
    .line 208
    move/from16 v22, v8

    .line 209
    .line 210
    const v8, -0x76a32842

    .line 211
    .line 212
    .line 213
    invoke-static {v12, v14, v8, v15, v4}, Leq3;->f(IIIII)I

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    invoke-static {v8, v4, v6}, Lx35;->j(III)I

    .line 218
    .line 219
    .line 220
    move-result v12

    .line 221
    add-int/2addr v12, v2

    .line 222
    aget v2, v1, v11

    .line 223
    .line 224
    const v14, 0x6b901122

    .line 225
    .line 226
    .line 227
    invoke-static {v12, v2, v14, v9, v8}, Leq3;->f(IIIII)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-static {v2, v8, v4}, Lx35;->j(III)I

    .line 232
    .line 233
    .line 234
    move-result v12

    .line 235
    add-int/2addr v12, v6

    .line 236
    const/16 v6, 0xd

    .line 237
    .line 238
    aget v14, v1, v6

    .line 239
    .line 240
    move/from16 v23, v6

    .line 241
    .line 242
    const v6, -0x2678e6d

    .line 243
    .line 244
    .line 245
    invoke-static {v12, v14, v6, v11, v2}, Leq3;->f(IIIII)I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    invoke-static {v6, v2, v8}, Lx35;->j(III)I

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    add-int/2addr v12, v4

    .line 254
    const/16 v4, 0xe

    .line 255
    .line 256
    aget v14, v1, v4

    .line 257
    .line 258
    move/from16 v24, v9

    .line 259
    .line 260
    const v9, -0x5986bc72

    .line 261
    .line 262
    .line 263
    invoke-static {v12, v14, v9, v13, v6}, Leq3;->f(IIIII)I

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    invoke-static {v9, v6, v2}, Lx35;->j(III)I

    .line 268
    .line 269
    .line 270
    move-result v12

    .line 271
    add-int/2addr v12, v8

    .line 272
    const/16 v8, 0xf

    .line 273
    .line 274
    aget v13, v1, v8

    .line 275
    .line 276
    const v14, 0x49b40821

    .line 277
    .line 278
    .line 279
    invoke-static {v12, v13, v14, v15, v9}, Leq3;->f(IIIII)I

    .line 280
    .line 281
    .line 282
    move-result v12

    .line 283
    invoke-static {v12, v9, v6}, Lx35;->k(III)I

    .line 284
    .line 285
    .line 286
    move-result v13

    .line 287
    add-int/2addr v13, v2

    .line 288
    aget v2, v1, v18

    .line 289
    .line 290
    const v14, -0x9e1da9e

    .line 291
    .line 292
    .line 293
    invoke-static {v13, v2, v14, v7, v12}, Leq3;->f(IIIII)I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    invoke-static {v2, v12, v9}, Lx35;->k(III)I

    .line 298
    .line 299
    .line 300
    move-result v13

    .line 301
    add-int/2addr v13, v6

    .line 302
    aget v6, v1, v22

    .line 303
    .line 304
    const v14, -0x3fbf4cc0

    .line 305
    .line 306
    .line 307
    invoke-static {v13, v6, v14, v3, v2}, Leq3;->f(IIIII)I

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    invoke-static {v6, v2, v12}, Lx35;->k(III)I

    .line 312
    .line 313
    .line 314
    move-result v13

    .line 315
    add-int/2addr v13, v9

    .line 316
    aget v9, v1, v10

    .line 317
    .line 318
    const v14, 0x265e5a51

    .line 319
    .line 320
    .line 321
    invoke-static {v13, v9, v14, v4, v6}, Leq3;->f(IIIII)I

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    invoke-static {v9, v6, v2}, Lx35;->k(III)I

    .line 326
    .line 327
    .line 328
    move-result v13

    .line 329
    add-int/2addr v13, v12

    .line 330
    aget v12, v1, v20

    .line 331
    .line 332
    const v14, -0x16493856

    .line 333
    .line 334
    .line 335
    const/16 v15, 0x14

    .line 336
    .line 337
    invoke-static {v13, v12, v14, v15, v9}, Leq3;->f(IIIII)I

    .line 338
    .line 339
    .line 340
    move-result v12

    .line 341
    invoke-static {v12, v9, v6}, Lx35;->k(III)I

    .line 342
    .line 343
    .line 344
    move-result v13

    .line 345
    add-int/2addr v13, v2

    .line 346
    aget v2, v1, v7

    .line 347
    .line 348
    const v14, -0x29d0efa3

    .line 349
    .line 350
    .line 351
    invoke-static {v13, v2, v14, v7, v12}, Leq3;->f(IIIII)I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    invoke-static {v2, v12, v9}, Lx35;->k(III)I

    .line 356
    .line 357
    .line 358
    move-result v13

    .line 359
    add-int/2addr v13, v6

    .line 360
    aget v6, v1, v21

    .line 361
    .line 362
    const v14, 0x2441453

    .line 363
    .line 364
    .line 365
    invoke-static {v13, v6, v14, v3, v2}, Leq3;->f(IIIII)I

    .line 366
    .line 367
    .line 368
    move-result v6

    .line 369
    invoke-static {v6, v2, v12}, Lx35;->k(III)I

    .line 370
    .line 371
    .line 372
    move-result v13

    .line 373
    add-int/2addr v13, v9

    .line 374
    aget v9, v1, v8

    .line 375
    .line 376
    const v14, -0x275e197f

    .line 377
    .line 378
    .line 379
    invoke-static {v13, v9, v14, v4, v6}, Leq3;->f(IIIII)I

    .line 380
    .line 381
    .line 382
    move-result v9

    .line 383
    invoke-static {v9, v6, v2}, Lx35;->k(III)I

    .line 384
    .line 385
    .line 386
    move-result v13

    .line 387
    add-int/2addr v13, v12

    .line 388
    aget v12, v1, v5

    .line 389
    .line 390
    const v14, -0x182c0438

    .line 391
    .line 392
    .line 393
    invoke-static {v13, v12, v14, v15, v9}, Leq3;->f(IIIII)I

    .line 394
    .line 395
    .line 396
    move-result v12

    .line 397
    invoke-static {v12, v9, v6}, Lx35;->k(III)I

    .line 398
    .line 399
    .line 400
    move-result v13

    .line 401
    add-int/2addr v13, v2

    .line 402
    aget v2, v1, v3

    .line 403
    .line 404
    const v14, 0x21e1cde6

    .line 405
    .line 406
    .line 407
    invoke-static {v13, v2, v14, v7, v12}, Leq3;->f(IIIII)I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    invoke-static {v2, v12, v9}, Lx35;->k(III)I

    .line 412
    .line 413
    .line 414
    move-result v13

    .line 415
    add-int/2addr v13, v6

    .line 416
    aget v6, v1, v4

    .line 417
    .line 418
    const v14, -0x3cc8f82a

    .line 419
    .line 420
    .line 421
    invoke-static {v13, v6, v14, v3, v2}, Leq3;->f(IIIII)I

    .line 422
    .line 423
    .line 424
    move-result v6

    .line 425
    invoke-static {v6, v2, v12}, Lx35;->k(III)I

    .line 426
    .line 427
    .line 428
    move-result v13

    .line 429
    add-int/2addr v13, v9

    .line 430
    aget v9, v1, v16

    .line 431
    .line 432
    const v14, -0xb2af279

    .line 433
    .line 434
    .line 435
    invoke-static {v13, v9, v14, v4, v6}, Leq3;->f(IIIII)I

    .line 436
    .line 437
    .line 438
    move-result v9

    .line 439
    invoke-static {v9, v6, v2}, Lx35;->k(III)I

    .line 440
    .line 441
    .line 442
    move-result v13

    .line 443
    add-int/2addr v13, v12

    .line 444
    aget v12, v1, v19

    .line 445
    .line 446
    const v14, 0x455a14ed

    .line 447
    .line 448
    .line 449
    invoke-static {v13, v12, v14, v15, v9}, Leq3;->f(IIIII)I

    .line 450
    .line 451
    .line 452
    move-result v12

    .line 453
    invoke-static {v12, v9, v6}, Lx35;->k(III)I

    .line 454
    .line 455
    .line 456
    move-result v13

    .line 457
    add-int/2addr v13, v2

    .line 458
    aget v2, v1, v23

    .line 459
    .line 460
    const v14, -0x561c16fb

    .line 461
    .line 462
    .line 463
    invoke-static {v13, v2, v14, v7, v12}, Leq3;->f(IIIII)I

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    invoke-static {v2, v12, v9}, Lx35;->k(III)I

    .line 468
    .line 469
    .line 470
    move-result v13

    .line 471
    add-int/2addr v13, v6

    .line 472
    aget v6, v1, v17

    .line 473
    .line 474
    const v14, -0x3105c08

    .line 475
    .line 476
    .line 477
    invoke-static {v13, v6, v14, v3, v2}, Leq3;->f(IIIII)I

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    invoke-static {v6, v2, v12}, Lx35;->k(III)I

    .line 482
    .line 483
    .line 484
    move-result v13

    .line 485
    add-int/2addr v13, v9

    .line 486
    aget v9, v1, v24

    .line 487
    .line 488
    const v14, 0x676f02d9

    .line 489
    .line 490
    .line 491
    invoke-static {v13, v9, v14, v4, v6}, Leq3;->f(IIIII)I

    .line 492
    .line 493
    .line 494
    move-result v9

    .line 495
    invoke-static {v9, v6, v2}, Lx35;->k(III)I

    .line 496
    .line 497
    .line 498
    move-result v13

    .line 499
    add-int/2addr v13, v12

    .line 500
    aget v12, v1, v11

    .line 501
    .line 502
    const v14, -0x72d5b376

    .line 503
    .line 504
    .line 505
    invoke-static {v13, v12, v14, v15, v9}, Leq3;->f(IIIII)I

    .line 506
    .line 507
    .line 508
    move-result v12

    .line 509
    xor-int v13, v12, v9

    .line 510
    .line 511
    xor-int/2addr v13, v6

    .line 512
    add-int/2addr v2, v13

    .line 513
    aget v13, v1, v7

    .line 514
    .line 515
    const v14, -0x5c6be

    .line 516
    .line 517
    .line 518
    invoke-static {v2, v13, v14, v5, v12}, Leq3;->f(IIIII)I

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    xor-int v13, v2, v12

    .line 523
    .line 524
    xor-int/2addr v13, v9

    .line 525
    add-int/2addr v6, v13

    .line 526
    aget v13, v1, v19

    .line 527
    .line 528
    const v14, -0x788e097f

    .line 529
    .line 530
    .line 531
    invoke-static {v6, v13, v14, v10, v2}, Leq3;->f(IIIII)I

    .line 532
    .line 533
    .line 534
    move-result v6

    .line 535
    xor-int v13, v6, v2

    .line 536
    .line 537
    xor-int/2addr v13, v12

    .line 538
    add-int/2addr v9, v13

    .line 539
    aget v13, v1, v10

    .line 540
    .line 541
    const v14, 0x6d9d6122

    .line 542
    .line 543
    .line 544
    const/16 v15, 0x10

    .line 545
    .line 546
    invoke-static {v9, v13, v14, v15, v6}, Leq3;->f(IIIII)I

    .line 547
    .line 548
    .line 549
    move-result v9

    .line 550
    xor-int v13, v9, v6

    .line 551
    .line 552
    xor-int/2addr v13, v2

    .line 553
    add-int/2addr v12, v13

    .line 554
    aget v13, v1, v4

    .line 555
    .line 556
    const v14, -0x21ac7f4

    .line 557
    .line 558
    .line 559
    move/from16 v25, v3

    .line 560
    .line 561
    const/16 v3, 0x17

    .line 562
    .line 563
    invoke-static {v12, v13, v14, v3, v9}, Leq3;->f(IIIII)I

    .line 564
    .line 565
    .line 566
    move-result v12

    .line 567
    xor-int v13, v12, v9

    .line 568
    .line 569
    xor-int/2addr v13, v6

    .line 570
    add-int/2addr v2, v13

    .line 571
    aget v13, v1, v18

    .line 572
    .line 573
    const v14, -0x5b4115bc

    .line 574
    .line 575
    .line 576
    invoke-static {v2, v13, v14, v5, v12}, Leq3;->f(IIIII)I

    .line 577
    .line 578
    .line 579
    move-result v2

    .line 580
    xor-int v13, v2, v12

    .line 581
    .line 582
    xor-int/2addr v13, v9

    .line 583
    add-int/2addr v6, v13

    .line 584
    aget v13, v1, v5

    .line 585
    .line 586
    const v14, 0x4bdecfa9    # 2.9204306E7f

    .line 587
    .line 588
    .line 589
    invoke-static {v6, v13, v14, v10, v2}, Leq3;->f(IIIII)I

    .line 590
    .line 591
    .line 592
    move-result v6

    .line 593
    xor-int v13, v6, v2

    .line 594
    .line 595
    xor-int/2addr v13, v12

    .line 596
    add-int/2addr v9, v13

    .line 597
    aget v13, v1, v24

    .line 598
    .line 599
    const v14, -0x944b4a0

    .line 600
    .line 601
    .line 602
    invoke-static {v9, v13, v14, v15, v6}, Leq3;->f(IIIII)I

    .line 603
    .line 604
    .line 605
    move-result v9

    .line 606
    xor-int v13, v9, v6

    .line 607
    .line 608
    xor-int/2addr v13, v2

    .line 609
    add-int/2addr v12, v13

    .line 610
    aget v13, v1, v21

    .line 611
    .line 612
    const v14, -0x41404390

    .line 613
    .line 614
    .line 615
    invoke-static {v12, v13, v14, v3, v9}, Leq3;->f(IIIII)I

    .line 616
    .line 617
    .line 618
    move-result v12

    .line 619
    xor-int v13, v12, v9

    .line 620
    .line 621
    xor-int/2addr v13, v6

    .line 622
    add-int/2addr v2, v13

    .line 623
    aget v13, v1, v23

    .line 624
    .line 625
    const v14, 0x289b7ec6

    .line 626
    .line 627
    .line 628
    invoke-static {v2, v13, v14, v5, v12}, Leq3;->f(IIIII)I

    .line 629
    .line 630
    .line 631
    move-result v2

    .line 632
    xor-int v13, v2, v12

    .line 633
    .line 634
    xor-int/2addr v13, v9

    .line 635
    add-int/2addr v6, v13

    .line 636
    aget v13, v1, v20

    .line 637
    .line 638
    const v14, -0x155ed806

    .line 639
    .line 640
    .line 641
    invoke-static {v6, v13, v14, v10, v2}, Leq3;->f(IIIII)I

    .line 642
    .line 643
    .line 644
    move-result v6

    .line 645
    xor-int v13, v6, v2

    .line 646
    .line 647
    xor-int/2addr v13, v12

    .line 648
    add-int/2addr v9, v13

    .line 649
    aget v13, v1, v16

    .line 650
    .line 651
    const v14, -0x2b10cf7b

    .line 652
    .line 653
    .line 654
    invoke-static {v9, v13, v14, v15, v6}, Leq3;->f(IIIII)I

    .line 655
    .line 656
    .line 657
    move-result v9

    .line 658
    xor-int v13, v9, v6

    .line 659
    .line 660
    xor-int/2addr v13, v2

    .line 661
    add-int/2addr v12, v13

    .line 662
    aget v13, v1, v22

    .line 663
    .line 664
    const v14, 0x4881d05    # 3.2000097E-36f

    .line 665
    .line 666
    .line 667
    invoke-static {v12, v13, v14, v3, v9}, Leq3;->f(IIIII)I

    .line 668
    .line 669
    .line 670
    move-result v12

    .line 671
    xor-int v13, v12, v9

    .line 672
    .line 673
    xor-int/2addr v13, v6

    .line 674
    add-int/2addr v2, v13

    .line 675
    aget v13, v1, v25

    .line 676
    .line 677
    const v14, -0x262b2fc7

    .line 678
    .line 679
    .line 680
    invoke-static {v2, v13, v14, v5, v12}, Leq3;->f(IIIII)I

    .line 681
    .line 682
    .line 683
    move-result v2

    .line 684
    xor-int v13, v2, v12

    .line 685
    .line 686
    xor-int/2addr v13, v9

    .line 687
    add-int/2addr v6, v13

    .line 688
    aget v13, v1, v11

    .line 689
    .line 690
    const v14, -0x1924661b

    .line 691
    .line 692
    .line 693
    invoke-static {v6, v13, v14, v10, v2}, Leq3;->f(IIIII)I

    .line 694
    .line 695
    .line 696
    move-result v6

    .line 697
    xor-int v13, v6, v2

    .line 698
    .line 699
    xor-int/2addr v13, v12

    .line 700
    add-int/2addr v9, v13

    .line 701
    aget v13, v1, v8

    .line 702
    .line 703
    const v14, 0x1fa27cf8

    .line 704
    .line 705
    .line 706
    invoke-static {v9, v13, v14, v15, v6}, Leq3;->f(IIIII)I

    .line 707
    .line 708
    .line 709
    move-result v9

    .line 710
    xor-int v13, v9, v6

    .line 711
    .line 712
    xor-int/2addr v13, v2

    .line 713
    add-int/2addr v12, v13

    .line 714
    aget v13, v1, v17

    .line 715
    .line 716
    const v14, -0x3b53a99b

    .line 717
    .line 718
    .line 719
    invoke-static {v12, v13, v14, v3, v9}, Leq3;->f(IIIII)I

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    not-int v12, v6

    .line 724
    or-int/2addr v12, v3

    .line 725
    xor-int/2addr v12, v9

    .line 726
    add-int/2addr v2, v12

    .line 727
    aget v12, v1, v20

    .line 728
    .line 729
    const v13, -0xbd6ddbc

    .line 730
    .line 731
    .line 732
    move/from16 v14, v22

    .line 733
    .line 734
    invoke-static {v2, v12, v13, v14, v3}, Leq3;->f(IIIII)I

    .line 735
    .line 736
    .line 737
    move-result v2

    .line 738
    not-int v12, v9

    .line 739
    or-int/2addr v12, v2

    .line 740
    xor-int/2addr v12, v3

    .line 741
    add-int/2addr v6, v12

    .line 742
    aget v12, v1, v24

    .line 743
    .line 744
    const v13, 0x432aff97

    .line 745
    .line 746
    .line 747
    move/from16 v14, v21

    .line 748
    .line 749
    invoke-static {v6, v12, v13, v14, v2}, Leq3;->f(IIIII)I

    .line 750
    .line 751
    .line 752
    move-result v6

    .line 753
    not-int v12, v3

    .line 754
    or-int/2addr v12, v6

    .line 755
    xor-int/2addr v12, v2

    .line 756
    add-int/2addr v9, v12

    .line 757
    aget v4, v1, v4

    .line 758
    .line 759
    const v12, -0x546bdc59

    .line 760
    .line 761
    .line 762
    invoke-static {v9, v4, v12, v8, v6}, Leq3;->f(IIIII)I

    .line 763
    .line 764
    .line 765
    move-result v4

    .line 766
    not-int v9, v2

    .line 767
    or-int/2addr v9, v4

    .line 768
    xor-int/2addr v9, v6

    .line 769
    add-int/2addr v3, v9

    .line 770
    aget v7, v1, v7

    .line 771
    .line 772
    const v9, -0x36c5fc7

    .line 773
    .line 774
    .line 775
    const/16 v12, 0x15

    .line 776
    .line 777
    invoke-static {v3, v7, v9, v12, v4}, Leq3;->f(IIIII)I

    .line 778
    .line 779
    .line 780
    move-result v3

    .line 781
    not-int v7, v6

    .line 782
    or-int/2addr v7, v3

    .line 783
    xor-int/2addr v7, v4

    .line 784
    add-int/2addr v2, v7

    .line 785
    aget v7, v1, v11

    .line 786
    .line 787
    const v9, 0x655b59c3

    .line 788
    .line 789
    .line 790
    const/4 v14, 0x6

    .line 791
    invoke-static {v2, v7, v9, v14, v3}, Leq3;->f(IIIII)I

    .line 792
    .line 793
    .line 794
    move-result v2

    .line 795
    not-int v7, v4

    .line 796
    or-int/2addr v7, v2

    .line 797
    xor-int/2addr v7, v3

    .line 798
    add-int/2addr v6, v7

    .line 799
    aget v7, v1, v16

    .line 800
    .line 801
    const v9, -0x70f3336e

    .line 802
    .line 803
    .line 804
    const/16 v14, 0xa

    .line 805
    .line 806
    invoke-static {v6, v7, v9, v14, v2}, Leq3;->f(IIIII)I

    .line 807
    .line 808
    .line 809
    move-result v6

    .line 810
    not-int v7, v3

    .line 811
    or-int/2addr v7, v6

    .line 812
    xor-int/2addr v7, v2

    .line 813
    add-int/2addr v4, v7

    .line 814
    aget v7, v1, v14

    .line 815
    .line 816
    const v9, -0x100b83

    .line 817
    .line 818
    .line 819
    invoke-static {v4, v7, v9, v8, v6}, Leq3;->f(IIIII)I

    .line 820
    .line 821
    .line 822
    move-result v4

    .line 823
    not-int v7, v2

    .line 824
    or-int/2addr v7, v4

    .line 825
    xor-int/2addr v7, v6

    .line 826
    add-int/2addr v3, v7

    .line 827
    aget v7, v1, v18

    .line 828
    .line 829
    const v9, -0x7a7ba22f

    .line 830
    .line 831
    .line 832
    invoke-static {v3, v7, v9, v12, v4}, Leq3;->f(IIIII)I

    .line 833
    .line 834
    .line 835
    move-result v3

    .line 836
    not-int v7, v6

    .line 837
    or-int/2addr v7, v3

    .line 838
    xor-int/2addr v7, v4

    .line 839
    add-int/2addr v2, v7

    .line 840
    aget v7, v1, v19

    .line 841
    .line 842
    const v9, 0x6fa87e4f

    .line 843
    .line 844
    .line 845
    const/4 v14, 0x6

    .line 846
    invoke-static {v2, v7, v9, v14, v3}, Leq3;->f(IIIII)I

    .line 847
    .line 848
    .line 849
    move-result v2

    .line 850
    not-int v7, v4

    .line 851
    or-int/2addr v7, v2

    .line 852
    xor-int/2addr v7, v3

    .line 853
    add-int/2addr v6, v7

    .line 854
    aget v7, v1, v8

    .line 855
    .line 856
    const v9, -0x1d31920

    .line 857
    .line 858
    .line 859
    const/16 v14, 0xa

    .line 860
    .line 861
    invoke-static {v6, v7, v9, v14, v2}, Leq3;->f(IIIII)I

    .line 862
    .line 863
    .line 864
    move-result v6

    .line 865
    not-int v7, v3

    .line 866
    or-int/2addr v7, v6

    .line 867
    xor-int/2addr v7, v2

    .line 868
    add-int/2addr v4, v7

    .line 869
    const/16 v22, 0x6

    .line 870
    .line 871
    aget v7, v1, v22

    .line 872
    .line 873
    const v9, -0x5cfebcec

    .line 874
    .line 875
    .line 876
    invoke-static {v4, v7, v9, v8, v6}, Leq3;->f(IIIII)I

    .line 877
    .line 878
    .line 879
    move-result v4

    .line 880
    not-int v7, v2

    .line 881
    or-int/2addr v7, v4

    .line 882
    xor-int/2addr v7, v6

    .line 883
    add-int/2addr v3, v7

    .line 884
    aget v7, v1, v23

    .line 885
    .line 886
    const v9, 0x4e0811a1    # 5.7071418E8f

    .line 887
    .line 888
    .line 889
    invoke-static {v3, v7, v9, v12, v4}, Leq3;->f(IIIII)I

    .line 890
    .line 891
    .line 892
    move-result v3

    .line 893
    not-int v7, v6

    .line 894
    or-int/2addr v7, v3

    .line 895
    xor-int/2addr v7, v4

    .line 896
    add-int/2addr v2, v7

    .line 897
    aget v5, v1, v5

    .line 898
    .line 899
    const v7, -0x8ac817e

    .line 900
    .line 901
    .line 902
    const/4 v14, 0x6

    .line 903
    invoke-static {v2, v5, v7, v14, v3}, Leq3;->f(IIIII)I

    .line 904
    .line 905
    .line 906
    move-result v2

    .line 907
    not-int v5, v4

    .line 908
    or-int/2addr v5, v2

    .line 909
    xor-int/2addr v5, v3

    .line 910
    add-int/2addr v6, v5

    .line 911
    aget v5, v1, v10

    .line 912
    .line 913
    const v7, -0x42c50dcb

    .line 914
    .line 915
    .line 916
    const/16 v14, 0xa

    .line 917
    .line 918
    invoke-static {v6, v5, v7, v14, v2}, Leq3;->f(IIIII)I

    .line 919
    .line 920
    .line 921
    move-result v5

    .line 922
    not-int v6, v3

    .line 923
    or-int/2addr v6, v5

    .line 924
    xor-int/2addr v6, v2

    .line 925
    add-int/2addr v4, v6

    .line 926
    aget v6, v1, v17

    .line 927
    .line 928
    const v7, 0x2ad7d2bb

    .line 929
    .line 930
    .line 931
    invoke-static {v4, v6, v7, v8, v5}, Leq3;->f(IIIII)I

    .line 932
    .line 933
    .line 934
    move-result v4

    .line 935
    not-int v6, v2

    .line 936
    or-int/2addr v6, v4

    .line 937
    xor-int/2addr v6, v5

    .line 938
    add-int/2addr v3, v6

    .line 939
    aget v6, v1, v25

    .line 940
    .line 941
    const v7, -0x14792c6f

    .line 942
    .line 943
    .line 944
    invoke-static {v3, v6, v7, v12, v4}, Leq3;->f(IIIII)I

    .line 945
    .line 946
    .line 947
    move-result v3

    .line 948
    iget v6, v0, Lx35;->e:I

    .line 949
    .line 950
    add-int/2addr v6, v2

    .line 951
    iput v6, v0, Lx35;->e:I

    .line 952
    .line 953
    iget v2, v0, Lx35;->f:I

    .line 954
    .line 955
    add-int/2addr v2, v3

    .line 956
    iput v2, v0, Lx35;->f:I

    .line 957
    .line 958
    iget v2, v0, Lx35;->g:I

    .line 959
    .line 960
    add-int/2addr v2, v4

    .line 961
    iput v2, v0, Lx35;->g:I

    .line 962
    .line 963
    iget v2, v0, Lx35;->h:I

    .line 964
    .line 965
    add-int/2addr v2, v5

    .line 966
    iput v2, v0, Lx35;->h:I

    .line 967
    .line 968
    move/from16 v2, v20

    .line 969
    .line 970
    iput v2, v0, Lx35;->j:I

    .line 971
    .line 972
    move v0, v2

    .line 973
    :goto_0
    array-length v3, v1

    .line 974
    if-eq v0, v3, :cond_0

    .line 975
    .line 976
    aput v2, v1, v0

    .line 977
    .line 978
    add-int/lit8 v0, v0, 0x1

    .line 979
    .line 980
    goto :goto_0

    .line 981
    :cond_0
    return-void
.end method

.method public final h(J)V
    .locals 2

    .line 1
    iget v0, p0, Lx35;->j:I

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lx35;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lx35;->i:[I

    .line 11
    .line 12
    long-to-int v0, p1

    .line 13
    aput v0, p0, v1

    .line 14
    .line 15
    const/16 v0, 0x20

    .line 16
    .line 17
    ushr-long/2addr p1, v0

    .line 18
    long-to-int p1, p1

    .line 19
    const/16 p2, 0xf

    .line 20
    .line 21
    aput p1, p0, p2

    .line 22
    .line 23
    return-void
.end method

.method public final i([BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx35;->i:[I

    .line 2
    .line 3
    iget v1, p0, Lx35;->j:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lx35;->j:I

    .line 8
    .line 9
    invoke-static {p1, p2}, Lxx3;->r([BI)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    aput p1, v0, v1

    .line 14
    .line 15
    iget p1, p0, Lx35;->j:I

    .line 16
    .line 17
    const/16 p2, 0x10

    .line 18
    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lx35;->g()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final l(Lx35;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Luu3;->d(Luu3;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lx35;->e:I

    .line 5
    .line 6
    iput v0, p0, Lx35;->e:I

    .line 7
    .line 8
    iget v0, p1, Lx35;->f:I

    .line 9
    .line 10
    iput v0, p0, Lx35;->f:I

    .line 11
    .line 12
    iget v0, p1, Lx35;->g:I

    .line 13
    .line 14
    iput v0, p0, Lx35;->g:I

    .line 15
    .line 16
    iget v0, p1, Lx35;->h:I

    .line 17
    .line 18
    iput v0, p0, Lx35;->h:I

    .line 19
    .line 20
    iget-object v0, p1, Lx35;->i:[I

    .line 21
    .line 22
    iget-object v1, p0, Lx35;->i:[I

    .line 23
    .line 24
    array-length v2, v0

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    iget p1, p1, Lx35;->j:I

    .line 30
    .line 31
    iput p1, p0, Lx35;->j:I

    .line 32
    .line 33
    return-void
.end method

.method public final reset()V
    .locals 4

    .line 1
    invoke-super {p0}, Luu3;->reset()V

    .line 2
    .line 3
    .line 4
    const v0, 0x67452301

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lx35;->e:I

    .line 8
    .line 9
    const v0, -0x10325477

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lx35;->f:I

    .line 13
    .line 14
    const v0, -0x67452302

    .line 15
    .line 16
    .line 17
    iput v0, p0, Lx35;->g:I

    .line 18
    .line 19
    const v0, 0x10325476

    .line 20
    .line 21
    .line 22
    iput v0, p0, Lx35;->h:I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lx35;->j:I

    .line 26
    .line 27
    move v1, v0

    .line 28
    :goto_0
    iget-object v2, p0, Lx35;->i:[I

    .line 29
    .line 30
    array-length v3, v2

    .line 31
    if-eq v1, v3, :cond_0

    .line 32
    .line 33
    aput v0, v2, v1

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method
