.class public final Lw35;
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
    iput-object v0, p0, Lw35;->i:[I

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
    invoke-virtual {p0}, Lw35;->reset()V

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
    .locals 1

    .line 1
    or-int v0, p1, p2

    .line 2
    .line 3
    and-int/2addr p0, v0

    .line 4
    and-int/2addr p1, p2

    .line 5
    or-int/2addr p0, p1

    .line 6
    return p0
.end method

.method public static m(II)I
    .locals 1

    .line 1
    shl-int v0, p0, p1

    .line 2
    .line 3
    rsub-int/lit8 p1, p1, 0x20

    .line 4
    .line 5
    ushr-int/2addr p0, p1

    .line 6
    or-int/2addr p0, v0

    .line 7
    return p0
.end method


# virtual methods
.method public final b(Lxb5;)V
    .locals 0

    .line 1
    check-cast p1, Lw35;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lw35;->l(Lw35;)V

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
    new-instance v0, Lw35;

    .line 2
    .line 3
    iget-object v1, p0, Luu3;->a:Lb42;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Luu3;-><init>(Lb42;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x10

    .line 9
    .line 10
    new-array v1, v1, [I

    .line 11
    .line 12
    iput-object v1, v0, Lw35;->i:[I

    .line 13
    .line 14
    invoke-static {v0}, Lzh8;->r(Lhl2;)Lff9;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Le42;->a()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lw35;->l(Lw35;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final doFinal([BI)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Luu3;->e()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lw35;->e:I

    .line 5
    .line 6
    invoke-static {p1, v0, p2}, Lxx3;->o([BII)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lw35;->f:I

    .line 10
    .line 11
    add-int/lit8 v1, p2, 0x4

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lxx3;->o([BII)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lw35;->g:I

    .line 17
    .line 18
    add-int/lit8 v1, p2, 0x8

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lxx3;->o([BII)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lw35;->h:I

    .line 24
    .line 25
    add-int/lit8 p2, p2, 0xc

    .line 26
    .line 27
    invoke-static {p1, v0, p2}, Lxx3;->o([BII)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lw35;->reset()V

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
    const-string p0, "MD4"

    .line 2
    .line 3
    return-object p0
.end method

.method public final g()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lw35;->e:I

    .line 4
    .line 5
    iget v2, v0, Lw35;->f:I

    .line 6
    .line 7
    iget v3, v0, Lw35;->g:I

    .line 8
    .line 9
    iget v4, v0, Lw35;->h:I

    .line 10
    .line 11
    invoke-static {v2, v3, v4}, Lw35;->j(III)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    add-int/2addr v5, v1

    .line 16
    iget-object v1, v0, Lw35;->i:[I

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    aget v7, v1, v6

    .line 20
    .line 21
    add-int/2addr v5, v7

    .line 22
    const/4 v7, 0x3

    .line 23
    invoke-static {v5, v7}, Lw35;->m(II)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-static {v5, v2, v3}, Lw35;->j(III)I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    add-int/2addr v8, v4

    .line 32
    const/4 v4, 0x1

    .line 33
    aget v9, v1, v4

    .line 34
    .line 35
    add-int/2addr v8, v9

    .line 36
    const/4 v9, 0x7

    .line 37
    invoke-static {v8, v9}, Lw35;->m(II)I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    invoke-static {v8, v5, v2}, Lw35;->j(III)I

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    add-int/2addr v10, v3

    .line 46
    const/4 v3, 0x2

    .line 47
    aget v11, v1, v3

    .line 48
    .line 49
    add-int/2addr v10, v11

    .line 50
    const/16 v11, 0xb

    .line 51
    .line 52
    invoke-static {v10, v11}, Lw35;->m(II)I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    invoke-static {v10, v8, v5}, Lw35;->j(III)I

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    add-int/2addr v12, v2

    .line 61
    aget v2, v1, v7

    .line 62
    .line 63
    add-int/2addr v12, v2

    .line 64
    const/16 v2, 0x13

    .line 65
    .line 66
    invoke-static {v12, v2}, Lw35;->m(II)I

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    invoke-static {v12, v10, v8}, Lw35;->j(III)I

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    add-int/2addr v13, v5

    .line 75
    const/4 v5, 0x4

    .line 76
    aget v14, v1, v5

    .line 77
    .line 78
    add-int/2addr v13, v14

    .line 79
    invoke-static {v13, v7}, Lw35;->m(II)I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    invoke-static {v13, v12, v10}, Lw35;->j(III)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    add-int/2addr v14, v8

    .line 88
    const/4 v8, 0x5

    .line 89
    aget v15, v1, v8

    .line 90
    .line 91
    add-int/2addr v14, v15

    .line 92
    invoke-static {v14, v9}, Lw35;->m(II)I

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    invoke-static {v14, v13, v12}, Lw35;->j(III)I

    .line 97
    .line 98
    .line 99
    move-result v15

    .line 100
    add-int/2addr v15, v10

    .line 101
    const/4 v10, 0x6

    .line 102
    aget v16, v1, v10

    .line 103
    .line 104
    add-int v15, v15, v16

    .line 105
    .line 106
    invoke-static {v15, v11}, Lw35;->m(II)I

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    invoke-static {v15, v14, v13}, Lw35;->j(III)I

    .line 111
    .line 112
    .line 113
    move-result v16

    .line 114
    add-int v16, v16, v12

    .line 115
    .line 116
    aget v12, v1, v9

    .line 117
    .line 118
    add-int v12, v16, v12

    .line 119
    .line 120
    invoke-static {v12, v2}, Lw35;->m(II)I

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    invoke-static {v12, v15, v14}, Lw35;->j(III)I

    .line 125
    .line 126
    .line 127
    move-result v16

    .line 128
    add-int v16, v16, v13

    .line 129
    .line 130
    const/16 v13, 0x8

    .line 131
    .line 132
    aget v17, v1, v13

    .line 133
    .line 134
    move/from16 v18, v3

    .line 135
    .line 136
    add-int v3, v16, v17

    .line 137
    .line 138
    invoke-static {v3, v7}, Lw35;->m(II)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-static {v3, v12, v15}, Lw35;->j(III)I

    .line 143
    .line 144
    .line 145
    move-result v16

    .line 146
    add-int v16, v16, v14

    .line 147
    .line 148
    const/16 v14, 0x9

    .line 149
    .line 150
    aget v17, v1, v14

    .line 151
    .line 152
    move/from16 v19, v4

    .line 153
    .line 154
    add-int v4, v16, v17

    .line 155
    .line 156
    invoke-static {v4, v9}, Lw35;->m(II)I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    invoke-static {v4, v3, v12}, Lw35;->j(III)I

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    add-int v16, v16, v15

    .line 165
    .line 166
    const/16 v15, 0xa

    .line 167
    .line 168
    aget v17, v1, v15

    .line 169
    .line 170
    move/from16 v20, v5

    .line 171
    .line 172
    add-int v5, v16, v17

    .line 173
    .line 174
    invoke-static {v5, v11}, Lw35;->m(II)I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    invoke-static {v5, v4, v3}, Lw35;->j(III)I

    .line 179
    .line 180
    .line 181
    move-result v16

    .line 182
    add-int v16, v16, v12

    .line 183
    .line 184
    aget v12, v1, v11

    .line 185
    .line 186
    add-int v12, v16, v12

    .line 187
    .line 188
    invoke-static {v12, v2}, Lw35;->m(II)I

    .line 189
    .line 190
    .line 191
    move-result v12

    .line 192
    invoke-static {v12, v5, v4}, Lw35;->j(III)I

    .line 193
    .line 194
    .line 195
    move-result v16

    .line 196
    add-int v16, v16, v3

    .line 197
    .line 198
    const/16 v3, 0xc

    .line 199
    .line 200
    aget v17, v1, v3

    .line 201
    .line 202
    move/from16 v21, v3

    .line 203
    .line 204
    add-int v3, v16, v17

    .line 205
    .line 206
    invoke-static {v3, v7}, Lw35;->m(II)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    invoke-static {v3, v12, v5}, Lw35;->j(III)I

    .line 211
    .line 212
    .line 213
    move-result v16

    .line 214
    add-int v16, v16, v4

    .line 215
    .line 216
    const/16 v4, 0xd

    .line 217
    .line 218
    aget v17, v1, v4

    .line 219
    .line 220
    move/from16 v22, v10

    .line 221
    .line 222
    add-int v10, v16, v17

    .line 223
    .line 224
    invoke-static {v10, v9}, Lw35;->m(II)I

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    invoke-static {v10, v3, v12}, Lw35;->j(III)I

    .line 229
    .line 230
    .line 231
    move-result v16

    .line 232
    add-int v16, v16, v5

    .line 233
    .line 234
    const/16 v5, 0xe

    .line 235
    .line 236
    aget v17, v1, v5

    .line 237
    .line 238
    move/from16 v23, v5

    .line 239
    .line 240
    add-int v5, v16, v17

    .line 241
    .line 242
    invoke-static {v5, v11}, Lw35;->m(II)I

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    invoke-static {v5, v10, v3}, Lw35;->j(III)I

    .line 247
    .line 248
    .line 249
    move-result v16

    .line 250
    add-int v16, v16, v12

    .line 251
    .line 252
    const/16 v12, 0xf

    .line 253
    .line 254
    aget v17, v1, v12

    .line 255
    .line 256
    move/from16 v24, v9

    .line 257
    .line 258
    add-int v9, v16, v17

    .line 259
    .line 260
    invoke-static {v9, v2}, Lw35;->m(II)I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    invoke-static {v2, v5, v10}, Lw35;->k(III)I

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    add-int/2addr v9, v3

    .line 269
    aget v3, v1, v6

    .line 270
    .line 271
    move/from16 v16, v13

    .line 272
    .line 273
    const v13, 0x5a827999

    .line 274
    .line 275
    .line 276
    invoke-static {v9, v3, v13, v7}, Leq3;->e(IIII)I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    invoke-static {v3, v2, v5}, Lw35;->k(III)I

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    add-int/2addr v9, v10

    .line 285
    aget v10, v1, v20

    .line 286
    .line 287
    invoke-static {v9, v10, v13, v8}, Leq3;->e(IIII)I

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    invoke-static {v9, v3, v2}, Lw35;->k(III)I

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    add-int/2addr v10, v5

    .line 296
    aget v5, v1, v16

    .line 297
    .line 298
    invoke-static {v10, v5, v13, v14}, Leq3;->e(IIII)I

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    invoke-static {v5, v9, v3}, Lw35;->k(III)I

    .line 303
    .line 304
    .line 305
    move-result v10

    .line 306
    add-int/2addr v10, v2

    .line 307
    aget v2, v1, v21

    .line 308
    .line 309
    invoke-static {v10, v2, v13, v4}, Leq3;->e(IIII)I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    invoke-static {v2, v5, v9}, Lw35;->k(III)I

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    add-int/2addr v10, v3

    .line 318
    aget v3, v1, v19

    .line 319
    .line 320
    invoke-static {v10, v3, v13, v7}, Leq3;->e(IIII)I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    invoke-static {v3, v2, v5}, Lw35;->k(III)I

    .line 325
    .line 326
    .line 327
    move-result v10

    .line 328
    add-int/2addr v10, v9

    .line 329
    aget v9, v1, v8

    .line 330
    .line 331
    invoke-static {v10, v9, v13, v8}, Leq3;->e(IIII)I

    .line 332
    .line 333
    .line 334
    move-result v9

    .line 335
    invoke-static {v9, v3, v2}, Lw35;->k(III)I

    .line 336
    .line 337
    .line 338
    move-result v10

    .line 339
    add-int/2addr v10, v5

    .line 340
    aget v5, v1, v14

    .line 341
    .line 342
    invoke-static {v10, v5, v13, v14}, Leq3;->e(IIII)I

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    invoke-static {v5, v9, v3}, Lw35;->k(III)I

    .line 347
    .line 348
    .line 349
    move-result v10

    .line 350
    add-int/2addr v10, v2

    .line 351
    aget v2, v1, v4

    .line 352
    .line 353
    invoke-static {v10, v2, v13, v4}, Leq3;->e(IIII)I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    invoke-static {v2, v5, v9}, Lw35;->k(III)I

    .line 358
    .line 359
    .line 360
    move-result v10

    .line 361
    add-int/2addr v10, v3

    .line 362
    aget v3, v1, v18

    .line 363
    .line 364
    invoke-static {v10, v3, v13, v7}, Leq3;->e(IIII)I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    invoke-static {v3, v2, v5}, Lw35;->k(III)I

    .line 369
    .line 370
    .line 371
    move-result v10

    .line 372
    add-int/2addr v10, v9

    .line 373
    aget v9, v1, v22

    .line 374
    .line 375
    invoke-static {v10, v9, v13, v8}, Leq3;->e(IIII)I

    .line 376
    .line 377
    .line 378
    move-result v9

    .line 379
    invoke-static {v9, v3, v2}, Lw35;->k(III)I

    .line 380
    .line 381
    .line 382
    move-result v10

    .line 383
    add-int/2addr v10, v5

    .line 384
    aget v5, v1, v15

    .line 385
    .line 386
    invoke-static {v10, v5, v13, v14}, Leq3;->e(IIII)I

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    invoke-static {v5, v9, v3}, Lw35;->k(III)I

    .line 391
    .line 392
    .line 393
    move-result v10

    .line 394
    add-int/2addr v10, v2

    .line 395
    aget v2, v1, v23

    .line 396
    .line 397
    invoke-static {v10, v2, v13, v4}, Leq3;->e(IIII)I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    invoke-static {v2, v5, v9}, Lw35;->k(III)I

    .line 402
    .line 403
    .line 404
    move-result v10

    .line 405
    add-int/2addr v10, v3

    .line 406
    aget v3, v1, v7

    .line 407
    .line 408
    invoke-static {v10, v3, v13, v7}, Leq3;->e(IIII)I

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    invoke-static {v3, v2, v5}, Lw35;->k(III)I

    .line 413
    .line 414
    .line 415
    move-result v10

    .line 416
    add-int/2addr v10, v9

    .line 417
    aget v9, v1, v24

    .line 418
    .line 419
    invoke-static {v10, v9, v13, v8}, Leq3;->e(IIII)I

    .line 420
    .line 421
    .line 422
    move-result v9

    .line 423
    invoke-static {v9, v3, v2}, Lw35;->k(III)I

    .line 424
    .line 425
    .line 426
    move-result v10

    .line 427
    add-int/2addr v10, v5

    .line 428
    aget v5, v1, v11

    .line 429
    .line 430
    invoke-static {v10, v5, v13, v14}, Leq3;->e(IIII)I

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    invoke-static {v5, v9, v3}, Lw35;->k(III)I

    .line 435
    .line 436
    .line 437
    move-result v10

    .line 438
    add-int/2addr v10, v2

    .line 439
    aget v2, v1, v12

    .line 440
    .line 441
    invoke-static {v10, v2, v13, v4}, Leq3;->e(IIII)I

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    xor-int v10, v2, v5

    .line 446
    .line 447
    xor-int/2addr v10, v9

    .line 448
    add-int/2addr v3, v10

    .line 449
    aget v10, v1, v6

    .line 450
    .line 451
    const v13, 0x6ed9eba1

    .line 452
    .line 453
    .line 454
    invoke-static {v3, v10, v13, v7}, Leq3;->e(IIII)I

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    xor-int v10, v3, v2

    .line 459
    .line 460
    xor-int/2addr v10, v5

    .line 461
    add-int/2addr v9, v10

    .line 462
    aget v10, v1, v16

    .line 463
    .line 464
    invoke-static {v9, v10, v13, v14}, Leq3;->e(IIII)I

    .line 465
    .line 466
    .line 467
    move-result v9

    .line 468
    xor-int v10, v9, v3

    .line 469
    .line 470
    xor-int/2addr v10, v2

    .line 471
    add-int/2addr v5, v10

    .line 472
    aget v10, v1, v20

    .line 473
    .line 474
    invoke-static {v5, v10, v13, v11}, Leq3;->e(IIII)I

    .line 475
    .line 476
    .line 477
    move-result v5

    .line 478
    xor-int v10, v5, v9

    .line 479
    .line 480
    xor-int/2addr v10, v3

    .line 481
    add-int/2addr v2, v10

    .line 482
    aget v10, v1, v21

    .line 483
    .line 484
    invoke-static {v2, v10, v13, v12}, Leq3;->e(IIII)I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    xor-int v10, v2, v5

    .line 489
    .line 490
    xor-int/2addr v10, v9

    .line 491
    add-int/2addr v3, v10

    .line 492
    aget v10, v1, v18

    .line 493
    .line 494
    invoke-static {v3, v10, v13, v7}, Leq3;->e(IIII)I

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    xor-int v10, v3, v2

    .line 499
    .line 500
    xor-int/2addr v10, v5

    .line 501
    add-int/2addr v9, v10

    .line 502
    aget v10, v1, v15

    .line 503
    .line 504
    invoke-static {v9, v10, v13, v14}, Leq3;->e(IIII)I

    .line 505
    .line 506
    .line 507
    move-result v9

    .line 508
    xor-int v10, v9, v3

    .line 509
    .line 510
    xor-int/2addr v10, v2

    .line 511
    add-int/2addr v5, v10

    .line 512
    aget v10, v1, v22

    .line 513
    .line 514
    invoke-static {v5, v10, v13, v11}, Leq3;->e(IIII)I

    .line 515
    .line 516
    .line 517
    move-result v5

    .line 518
    xor-int v10, v5, v9

    .line 519
    .line 520
    xor-int/2addr v10, v3

    .line 521
    add-int/2addr v2, v10

    .line 522
    aget v10, v1, v23

    .line 523
    .line 524
    invoke-static {v2, v10, v13, v12}, Leq3;->e(IIII)I

    .line 525
    .line 526
    .line 527
    move-result v2

    .line 528
    xor-int v10, v2, v5

    .line 529
    .line 530
    xor-int/2addr v10, v9

    .line 531
    add-int/2addr v3, v10

    .line 532
    aget v10, v1, v19

    .line 533
    .line 534
    invoke-static {v3, v10, v13, v7}, Leq3;->e(IIII)I

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    xor-int v10, v3, v2

    .line 539
    .line 540
    xor-int/2addr v10, v5

    .line 541
    add-int/2addr v9, v10

    .line 542
    aget v10, v1, v14

    .line 543
    .line 544
    invoke-static {v9, v10, v13, v14}, Leq3;->e(IIII)I

    .line 545
    .line 546
    .line 547
    move-result v9

    .line 548
    xor-int v10, v9, v3

    .line 549
    .line 550
    xor-int/2addr v10, v2

    .line 551
    add-int/2addr v5, v10

    .line 552
    aget v8, v1, v8

    .line 553
    .line 554
    invoke-static {v5, v8, v13, v11}, Leq3;->e(IIII)I

    .line 555
    .line 556
    .line 557
    move-result v5

    .line 558
    xor-int v8, v5, v9

    .line 559
    .line 560
    xor-int/2addr v8, v3

    .line 561
    add-int/2addr v2, v8

    .line 562
    aget v4, v1, v4

    .line 563
    .line 564
    invoke-static {v2, v4, v13, v12}, Leq3;->e(IIII)I

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    xor-int v4, v2, v5

    .line 569
    .line 570
    xor-int/2addr v4, v9

    .line 571
    add-int/2addr v3, v4

    .line 572
    aget v4, v1, v7

    .line 573
    .line 574
    invoke-static {v3, v4, v13, v7}, Leq3;->e(IIII)I

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    xor-int v4, v3, v2

    .line 579
    .line 580
    xor-int/2addr v4, v5

    .line 581
    add-int/2addr v9, v4

    .line 582
    aget v4, v1, v11

    .line 583
    .line 584
    invoke-static {v9, v4, v13, v14}, Leq3;->e(IIII)I

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    xor-int v7, v4, v3

    .line 589
    .line 590
    xor-int/2addr v7, v2

    .line 591
    add-int/2addr v5, v7

    .line 592
    aget v7, v1, v24

    .line 593
    .line 594
    invoke-static {v5, v7, v13, v11}, Leq3;->e(IIII)I

    .line 595
    .line 596
    .line 597
    move-result v5

    .line 598
    xor-int v7, v5, v4

    .line 599
    .line 600
    xor-int/2addr v7, v3

    .line 601
    add-int/2addr v2, v7

    .line 602
    aget v7, v1, v12

    .line 603
    .line 604
    invoke-static {v2, v7, v13, v12}, Leq3;->e(IIII)I

    .line 605
    .line 606
    .line 607
    move-result v2

    .line 608
    iget v7, v0, Lw35;->e:I

    .line 609
    .line 610
    add-int/2addr v7, v3

    .line 611
    iput v7, v0, Lw35;->e:I

    .line 612
    .line 613
    iget v3, v0, Lw35;->f:I

    .line 614
    .line 615
    add-int/2addr v3, v2

    .line 616
    iput v3, v0, Lw35;->f:I

    .line 617
    .line 618
    iget v2, v0, Lw35;->g:I

    .line 619
    .line 620
    add-int/2addr v2, v5

    .line 621
    iput v2, v0, Lw35;->g:I

    .line 622
    .line 623
    iget v2, v0, Lw35;->h:I

    .line 624
    .line 625
    add-int/2addr v2, v4

    .line 626
    iput v2, v0, Lw35;->h:I

    .line 627
    .line 628
    iput v6, v0, Lw35;->j:I

    .line 629
    .line 630
    move v0, v6

    .line 631
    :goto_0
    array-length v2, v1

    .line 632
    if-eq v0, v2, :cond_0

    .line 633
    .line 634
    aput v6, v1, v0

    .line 635
    .line 636
    add-int/lit8 v0, v0, 0x1

    .line 637
    .line 638
    goto :goto_0

    .line 639
    :cond_0
    return-void
.end method

.method public final h(J)V
    .locals 2

    .line 1
    iget v0, p0, Lw35;->j:I

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lw35;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lw35;->i:[I

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
    iget-object v0, p0, Lw35;->i:[I

    .line 2
    .line 3
    iget v1, p0, Lw35;->j:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lw35;->j:I

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
    iget p1, p0, Lw35;->j:I

    .line 16
    .line 17
    const/16 p2, 0x10

    .line 18
    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lw35;->g()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final l(Lw35;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Luu3;->d(Luu3;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lw35;->e:I

    .line 5
    .line 6
    iput v0, p0, Lw35;->e:I

    .line 7
    .line 8
    iget v0, p1, Lw35;->f:I

    .line 9
    .line 10
    iput v0, p0, Lw35;->f:I

    .line 11
    .line 12
    iget v0, p1, Lw35;->g:I

    .line 13
    .line 14
    iput v0, p0, Lw35;->g:I

    .line 15
    .line 16
    iget v0, p1, Lw35;->h:I

    .line 17
    .line 18
    iput v0, p0, Lw35;->h:I

    .line 19
    .line 20
    iget-object v0, p1, Lw35;->i:[I

    .line 21
    .line 22
    iget-object v1, p0, Lw35;->i:[I

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
    iget p1, p1, Lw35;->j:I

    .line 30
    .line 31
    iput p1, p0, Lw35;->j:I

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
    iput v0, p0, Lw35;->e:I

    .line 8
    .line 9
    const v0, -0x10325477

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lw35;->f:I

    .line 13
    .line 14
    const v0, -0x67452302

    .line 15
    .line 16
    .line 17
    iput v0, p0, Lw35;->g:I

    .line 18
    .line 19
    const v0, 0x10325476

    .line 20
    .line 21
    .line 22
    iput v0, p0, Lw35;->h:I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lw35;->j:I

    .line 26
    .line 27
    move v1, v0

    .line 28
    :goto_0
    iget-object v2, p0, Lw35;->i:[I

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
