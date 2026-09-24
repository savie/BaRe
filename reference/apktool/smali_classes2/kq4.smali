.class public final Lkq4;
.super Lgq4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final m:Lzp4;

.field public final n:Lye6;

.field public final o:Ljq4;

.field public final p:Lhq4;

.field public final q:Lhq4;


# direct methods
.method public constructor <init>(Lzp4;Lye6;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p5}, Lgq4;-><init>(I)V

    .line 2
    .line 3
    .line 4
    new-instance p5, Lhq4;

    .line 5
    .line 6
    invoke-direct {p5, p0}, Lhq4;-><init>(Lkq4;)V

    .line 7
    .line 8
    .line 9
    iput-object p5, p0, Lkq4;->p:Lhq4;

    .line 10
    .line 11
    new-instance p5, Lhq4;

    .line 12
    .line 13
    invoke-direct {p5, p0}, Lhq4;-><init>(Lkq4;)V

    .line 14
    .line 15
    .line 16
    iput-object p5, p0, Lkq4;->q:Lhq4;

    .line 17
    .line 18
    iput-object p1, p0, Lkq4;->m:Lzp4;

    .line 19
    .line 20
    iput-object p2, p0, Lkq4;->n:Lye6;

    .line 21
    .line 22
    new-instance p1, Ljq4;

    .line 23
    .line 24
    invoke-direct {p1, p0, p3, p4}, Ljq4;-><init>(Lkq4;II)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lkq4;->o:Ljq4;

    .line 28
    .line 29
    invoke-virtual {p0}, Lkq4;->a()V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-super {p0}, Lgq4;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lkq4;->o:Ljq4;

    .line 6
    .line 7
    iget-object v1, v1, Ljq4;->c:[Liq4;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-ge v0, v2, :cond_0

    .line 11
    .line 12
    aget-object v1, v1, v0

    .line 13
    .line 14
    iget-object v1, v1, Lol1;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, [S

    .line 17
    .line 18
    invoke-static {v1}, Ly13;->o([S)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lkq4;->p:Lhq4;

    .line 25
    .line 26
    invoke-virtual {v0}, Ly23;->d()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lkq4;->q:Lhq4;

    .line 30
    .line 31
    invoke-virtual {p0}, Ly23;->d()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final b()V
    .locals 13

    .line 1
    iget-object v0, p0, Lkq4;->m:Lzp4;

    .line 2
    .line 3
    iget v1, v0, Lzp4;->g:I

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    iget v2, v0, Lzp4;->h:I

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lzp4;->a(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    iget v1, v0, Lzp4;->d:I

    .line 13
    .line 14
    iget v2, v0, Lzp4;->f:I

    .line 15
    .line 16
    iget-object v3, p0, Lkq4;->n:Lye6;

    .line 17
    .line 18
    if-ge v1, v2, :cond_14

    .line 19
    .line 20
    iget v2, p0, Lgq4;->a:I

    .line 21
    .line 22
    and-int/2addr v1, v2

    .line 23
    iget-object v2, p0, Lgq4;->d:[[S

    .line 24
    .line 25
    iget-object v4, p0, Lgq4;->c:Ldm7;

    .line 26
    .line 27
    iget v5, v4, Ldm7;->a:I

    .line 28
    .line 29
    aget-object v2, v2, v5

    .line 30
    .line 31
    invoke-virtual {v3, v1, v2}, Lye6;->R(I[S)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v5, 0x7

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    if-nez v2, :cond_7

    .line 39
    .line 40
    iget-object v1, p0, Lkq4;->o:Ljq4;

    .line 41
    .line 42
    iget-object v2, v1, Ljq4;->d:Lkq4;

    .line 43
    .line 44
    iget-object v2, v2, Lkq4;->m:Lzp4;

    .line 45
    .line 46
    iget v3, v2, Lzp4;->d:I

    .line 47
    .line 48
    add-int/lit8 v4, v3, -0x1

    .line 49
    .line 50
    if-gtz v3, :cond_1

    .line 51
    .line 52
    iget v8, v2, Lzp4;->b:I

    .line 53
    .line 54
    add-int/2addr v4, v8

    .line 55
    :cond_1
    iget-object v2, v2, Lzp4;->a:[B

    .line 56
    .line 57
    aget-byte v2, v2, v4

    .line 58
    .line 59
    and-int/lit16 v2, v2, 0xff

    .line 60
    .line 61
    invoke-virtual {v1, v2, v3}, Lto4;->a(II)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iget-object v1, v1, Ljq4;->c:[Liq4;

    .line 66
    .line 67
    aget-object v1, v1, v2

    .line 68
    .line 69
    iget-object v2, v1, Lol1;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, [S

    .line 72
    .line 73
    iget-object v1, v1, Liq4;->e:Ljq4;

    .line 74
    .line 75
    iget-object v1, v1, Ljq4;->d:Lkq4;

    .line 76
    .line 77
    iget-object v8, v1, Lkq4;->n:Lye6;

    .line 78
    .line 79
    iget-object v9, v1, Lkq4;->m:Lzp4;

    .line 80
    .line 81
    iget-object v10, v1, Lgq4;->c:Ldm7;

    .line 82
    .line 83
    iget v3, v10, Ldm7;->a:I

    .line 84
    .line 85
    const/16 v11, 0x100

    .line 86
    .line 87
    if-ge v3, v5, :cond_3

    .line 88
    .line 89
    :cond_2
    shl-int/lit8 v1, v6, 0x1

    .line 90
    .line 91
    invoke-virtual {v8, v6, v2}, Lye6;->R(I[S)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    or-int v6, v1, v3

    .line 96
    .line 97
    if-lt v6, v11, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    iget-object v1, v1, Lgq4;->b:[I

    .line 101
    .line 102
    aget v1, v1, v7

    .line 103
    .line 104
    iget v3, v9, Lzp4;->d:I

    .line 105
    .line 106
    sub-int v4, v3, v1

    .line 107
    .line 108
    sub-int/2addr v4, v6

    .line 109
    if-lt v1, v3, :cond_4

    .line 110
    .line 111
    iget v1, v9, Lzp4;->b:I

    .line 112
    .line 113
    add-int/2addr v4, v1

    .line 114
    :cond_4
    iget-object v1, v9, Lzp4;->a:[B

    .line 115
    .line 116
    aget-byte v1, v1, v4

    .line 117
    .line 118
    and-int/lit16 v1, v1, 0xff

    .line 119
    .line 120
    move v4, v6

    .line 121
    move v3, v11

    .line 122
    :cond_5
    shl-int/2addr v1, v6

    .line 123
    and-int v5, v1, v3

    .line 124
    .line 125
    add-int v12, v3, v5

    .line 126
    .line 127
    add-int/2addr v12, v4

    .line 128
    invoke-virtual {v8, v12, v2}, Lye6;->R(I[S)I

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    shl-int/2addr v4, v6

    .line 133
    or-int/2addr v4, v12

    .line 134
    rsub-int/lit8 v12, v12, 0x0

    .line 135
    .line 136
    not-int v5, v5

    .line 137
    xor-int/2addr v5, v12

    .line 138
    and-int/2addr v3, v5

    .line 139
    if-lt v4, v11, :cond_5

    .line 140
    .line 141
    move v6, v4

    .line 142
    :goto_1
    int-to-byte v1, v6

    .line 143
    iget-object v2, v9, Lzp4;->a:[B

    .line 144
    .line 145
    iget v3, v9, Lzp4;->d:I

    .line 146
    .line 147
    add-int/lit8 v4, v3, 0x1

    .line 148
    .line 149
    iput v4, v9, Lzp4;->d:I

    .line 150
    .line 151
    aput-byte v1, v2, v3

    .line 152
    .line 153
    iget v1, v9, Lzp4;->e:I

    .line 154
    .line 155
    if-ge v1, v4, :cond_6

    .line 156
    .line 157
    iput v4, v9, Lzp4;->e:I

    .line 158
    .line 159
    :cond_6
    invoke-virtual {v10}, Ldm7;->a()V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_7
    iget-object v2, p0, Lgq4;->e:[S

    .line 165
    .line 166
    iget v8, v4, Ldm7;->a:I

    .line 167
    .line 168
    invoke-virtual {v3, v8, v2}, Lye6;->R(I[S)I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    const/4 v8, 0x2

    .line 173
    const/4 v9, 0x3

    .line 174
    iget-object v10, p0, Lgq4;->b:[I

    .line 175
    .line 176
    if-nez v2, :cond_e

    .line 177
    .line 178
    invoke-virtual {v4}, Ldm7;->c()V

    .line 179
    .line 180
    .line 181
    aget v2, v10, v8

    .line 182
    .line 183
    aput v2, v10, v9

    .line 184
    .line 185
    aget v2, v10, v6

    .line 186
    .line 187
    aput v2, v10, v8

    .line 188
    .line 189
    aget v2, v10, v7

    .line 190
    .line 191
    aput v2, v10, v6

    .line 192
    .line 193
    iget-object v2, p0, Lkq4;->p:Lhq4;

    .line 194
    .line 195
    invoke-virtual {v2, v1}, Lhq4;->f(I)I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    const/4 v1, 0x6

    .line 200
    if-ge v2, v1, :cond_8

    .line 201
    .line 202
    add-int/lit8 v9, v2, -0x2

    .line 203
    .line 204
    :cond_8
    iget-object v1, p0, Lgq4;->j:[[S

    .line 205
    .line 206
    aget-object v1, v1, v9

    .line 207
    .line 208
    invoke-virtual {v3, v1}, Lye6;->S([S)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    const/4 v4, 0x4

    .line 213
    if-ge v1, v4, :cond_9

    .line 214
    .line 215
    aput v1, v10, v7

    .line 216
    .line 217
    goto/16 :goto_8

    .line 218
    .line 219
    :cond_9
    shr-int/lit8 v4, v1, 0x1

    .line 220
    .line 221
    add-int/lit8 v5, v4, -0x1

    .line 222
    .line 223
    and-int/lit8 v9, v1, 0x1

    .line 224
    .line 225
    or-int/2addr v8, v9

    .line 226
    shl-int v11, v8, v5

    .line 227
    .line 228
    aput v11, v10, v7

    .line 229
    .line 230
    const/16 v5, 0xe

    .line 231
    .line 232
    if-ge v1, v5, :cond_b

    .line 233
    .line 234
    add-int/lit8 v1, v1, -0x4

    .line 235
    .line 236
    iget-object v4, p0, Lgq4;->k:[[S

    .line 237
    .line 238
    aget-object v1, v4, v1

    .line 239
    .line 240
    move v4, v6

    .line 241
    move v5, v7

    .line 242
    move v8, v5

    .line 243
    :goto_2
    invoke-virtual {v3, v4, v1}, Lye6;->R(I[S)I

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    shl-int/2addr v4, v6

    .line 248
    or-int/2addr v4, v9

    .line 249
    add-int/lit8 v12, v8, 0x1

    .line 250
    .line 251
    shl-int v8, v9, v8

    .line 252
    .line 253
    or-int/2addr v5, v8

    .line 254
    array-length v8, v1

    .line 255
    if-lt v4, v8, :cond_a

    .line 256
    .line 257
    or-int v1, v11, v5

    .line 258
    .line 259
    aput v1, v10, v7

    .line 260
    .line 261
    goto/16 :goto_8

    .line 262
    .line 263
    :cond_a
    move v8, v12

    .line 264
    goto :goto_2

    .line 265
    :cond_b
    add-int/lit8 v4, v4, -0x5

    .line 266
    .line 267
    move v1, v7

    .line 268
    :cond_c
    invoke-virtual {v3}, Lye6;->T()V

    .line 269
    .line 270
    .line 271
    iget v5, v3, Lye6;->h:I

    .line 272
    .line 273
    ushr-int/2addr v5, v6

    .line 274
    iput v5, v3, Lye6;->h:I

    .line 275
    .line 276
    iget v8, v3, Lye6;->i:I

    .line 277
    .line 278
    sub-int v9, v8, v5

    .line 279
    .line 280
    ushr-int/lit8 v9, v9, 0x1f

    .line 281
    .line 282
    add-int/lit8 v12, v9, -0x1

    .line 283
    .line 284
    and-int/2addr v5, v12

    .line 285
    sub-int/2addr v8, v5

    .line 286
    iput v8, v3, Lye6;->i:I

    .line 287
    .line 288
    shl-int/2addr v1, v6

    .line 289
    rsub-int/lit8 v5, v9, 0x1

    .line 290
    .line 291
    or-int/2addr v1, v5

    .line 292
    add-int/lit8 v4, v4, -0x1

    .line 293
    .line 294
    if-nez v4, :cond_c

    .line 295
    .line 296
    shl-int/lit8 v1, v1, 0x4

    .line 297
    .line 298
    or-int v5, v11, v1

    .line 299
    .line 300
    aput v5, v10, v7

    .line 301
    .line 302
    move v1, v6

    .line 303
    move v4, v7

    .line 304
    move v8, v4

    .line 305
    :goto_3
    iget-object v9, p0, Lgq4;->l:[S

    .line 306
    .line 307
    invoke-virtual {v3, v1, v9}, Lye6;->R(I[S)I

    .line 308
    .line 309
    .line 310
    move-result v11

    .line 311
    shl-int/2addr v1, v6

    .line 312
    or-int/2addr v1, v11

    .line 313
    add-int/lit8 v12, v8, 0x1

    .line 314
    .line 315
    shl-int v8, v11, v8

    .line 316
    .line 317
    or-int/2addr v4, v8

    .line 318
    array-length v8, v9

    .line 319
    if-lt v1, v8, :cond_d

    .line 320
    .line 321
    or-int v1, v5, v4

    .line 322
    .line 323
    aput v1, v10, v7

    .line 324
    .line 325
    goto :goto_8

    .line 326
    :cond_d
    move v8, v12

    .line 327
    goto :goto_3

    .line 328
    :cond_e
    iget-object v2, p0, Lgq4;->f:[S

    .line 329
    .line 330
    iget v11, v4, Ldm7;->a:I

    .line 331
    .line 332
    invoke-virtual {v3, v11, v2}, Lye6;->R(I[S)I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-nez v2, :cond_10

    .line 337
    .line 338
    iget-object v2, p0, Lgq4;->i:[[S

    .line 339
    .line 340
    iget v8, v4, Ldm7;->a:I

    .line 341
    .line 342
    aget-object v2, v2, v8

    .line 343
    .line 344
    invoke-virtual {v3, v1, v2}, Lye6;->R(I[S)I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-nez v2, :cond_13

    .line 349
    .line 350
    iget v1, v4, Ldm7;->a:I

    .line 351
    .line 352
    if-ge v1, v5, :cond_f

    .line 353
    .line 354
    const/16 v1, 0x9

    .line 355
    .line 356
    goto :goto_4

    .line 357
    :cond_f
    const/16 v1, 0xb

    .line 358
    .line 359
    :goto_4
    iput v1, v4, Ldm7;->a:I

    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_10
    iget-object v2, p0, Lgq4;->g:[S

    .line 363
    .line 364
    iget v5, v4, Ldm7;->a:I

    .line 365
    .line 366
    invoke-virtual {v3, v5, v2}, Lye6;->R(I[S)I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-nez v2, :cond_11

    .line 371
    .line 372
    aget v2, v10, v6

    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_11
    iget-object v2, p0, Lgq4;->h:[S

    .line 376
    .line 377
    iget v5, v4, Ldm7;->a:I

    .line 378
    .line 379
    invoke-virtual {v3, v5, v2}, Lye6;->R(I[S)I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-nez v2, :cond_12

    .line 384
    .line 385
    aget v2, v10, v8

    .line 386
    .line 387
    goto :goto_5

    .line 388
    :cond_12
    aget v2, v10, v9

    .line 389
    .line 390
    aget v3, v10, v8

    .line 391
    .line 392
    aput v3, v10, v9

    .line 393
    .line 394
    :goto_5
    aget v3, v10, v6

    .line 395
    .line 396
    aput v3, v10, v8

    .line 397
    .line 398
    :goto_6
    aget v3, v10, v7

    .line 399
    .line 400
    aput v3, v10, v6

    .line 401
    .line 402
    aput v2, v10, v7

    .line 403
    .line 404
    :cond_13
    invoke-virtual {v4}, Ldm7;->b()V

    .line 405
    .line 406
    .line 407
    iget-object v2, p0, Lkq4;->q:Lhq4;

    .line 408
    .line 409
    invoke-virtual {v2, v1}, Lhq4;->f(I)I

    .line 410
    .line 411
    .line 412
    move-result v6

    .line 413
    :goto_7
    move v2, v6

    .line 414
    :goto_8
    aget v1, v10, v7

    .line 415
    .line 416
    invoke-virtual {v0, v1, v2}, Lzp4;->a(II)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_0

    .line 420
    .line 421
    :cond_14
    invoke-virtual {v3}, Lye6;->T()V

    .line 422
    .line 423
    .line 424
    return-void
.end method
