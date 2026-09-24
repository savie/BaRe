.class public Lki8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lki8$a;,
        Lki8$c;,
        Lki8$b;
    }
.end annotation


# static fields
.field public static final a:Lzy5;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lig8;->a:Lzy5;

    .line 2
    .line 3
    sput-object v0, Lki8;->a:Lzy5;

    .line 4
    .line 5
    const-string v0, "^((?!-)(?!_)[a-z_\\d-]{1,63}(?<!-)(?<!_)\\.)*((?!_)(?!-)[a-z_\\d-]{1,63}(?<!-)(?<!_))$"

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lki8;->b:Ljava/util/regex/Pattern;

    .line 13
    .line 14
    const-string v0, ".*\\.amazonaws\\.com(|\\.cn)$"

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lki8;->c:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    const-string v0, "^(((bucket\\.|accesspoint\\.)vpce(-(?!_)[a-z_\\d]+(?<!-)(?<!_))+\\.s3\\.)|((?!s3)(?!-)(?!_)[a-z_\\d-]{1,63}(?<!-)(?<!_)\\.)s3-control(-(?!_)[a-z_\\d]+(?<!-)(?<!_))*\\.|(s3(-(?!_)[a-z_\\d]+(?<!-)(?<!_))*\\.))((?!s3)(?!-)(?!_)[a-z_\\d-]{1,63}(?<!-)(?<!_)\\.)*amazonaws\\.com(|\\.cn)$"

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lki8;->d:Ljava/util/regex/Pattern;

    .line 29
    .line 30
    const-string v0, "^(?!-)(?!_)[a-z_\\d-]{1,63}(?<!-)(?<!_)\\.(?!-)(?!_)[a-z_\\d-]{1,63}(?<!-)(?<!_)\\.elb\\.amazonaws\\.com$"

    .line 31
    .line 32
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lki8;->e:Ljava/util/regex/Pattern;

    .line 37
    .line 38
    const-string v0, "^(((bucket\\.|accesspoint\\.)vpce(-(?!_)[a-z_\\d]+(?<!-)(?<!_))+\\.s3\\.)|((?!s3)(?!-)(?!_)[a-z_\\d-]{1,63}(?<!-)(?<!_)\\.)s3-control(-(?!_)[a-z_\\d]+(?<!-)(?<!_))*\\.|(s3(-(?!_)[a-z_\\d]+(?<!-)(?<!_))*\\.))"

    .line 39
    .line 40
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lki8;->f:Ljava/util/regex/Pattern;

    .line 45
    .line 46
    const-string v0, "^((?!_)(?!-)[a-z_\\d-]{1,63}(?<!-)(?<!_))$"

    .line 47
    .line 48
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lki8;->g:Ljava/util/regex/Pattern;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    new-array v0, v0, [B

    .line 56
    .line 57
    sput-object v0, Lki8;->h:[B

    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lki8;->a:Lzy5;

    .line 14
    .line 15
    iget-object v3, v2, Lzy5;->b:[Z

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x0

    .line 22
    move v6, v5

    .line 23
    :goto_0
    if-ge v6, v4, :cond_1e

    .line 24
    .line 25
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    array-length v8, v3

    .line 30
    if-ge v7, v8, :cond_2

    .line 31
    .line 32
    aget-boolean v7, v3, v7

    .line 33
    .line 34
    if-nez v7, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    sget-object v7, Lz16;->a:Ly16;

    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, [C

    .line 51
    .line 52
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move v8, v5

    .line 56
    move v9, v8

    .line 57
    :goto_2
    const/4 v10, 0x0

    .line 58
    const-string v11, "Cannot increase internal buffer any further"

    .line 59
    .line 60
    if-ge v6, v4, :cond_19

    .line 61
    .line 62
    if-ge v6, v4, :cond_18

    .line 63
    .line 64
    add-int/lit8 v12, v6, 0x1

    .line 65
    .line 66
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    const v14, 0xd800

    .line 71
    .line 72
    .line 73
    if-lt v13, v14, :cond_7

    .line 74
    .line 75
    const v14, 0xdfff

    .line 76
    .line 77
    .line 78
    if-le v13, v14, :cond_3

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    const v14, 0xdbff

    .line 82
    .line 83
    .line 84
    if-gt v13, v14, :cond_6

    .line 85
    .line 86
    if-ne v12, v4, :cond_4

    .line 87
    .line 88
    neg-int v13, v13

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    invoke-static {v14}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    if-eqz v15, :cond_5

    .line 99
    .line 100
    invoke-static {v13, v14}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 101
    .line 102
    .line 103
    move-result v13

    .line 104
    goto :goto_3

    .line 105
    :cond_5
    const-string v1, "Expected low surrogate but got char \'"

    .line 106
    .line 107
    invoke-static {v1, v14, v12, v0}, Lz5;->e(Ljava/lang/String;IILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    return-object v10

    .line 111
    :cond_6
    const-string v1, "Unexpected low surrogate character \'"

    .line 112
    .line 113
    invoke-static {v1, v13, v6, v0}, Lz5;->e(Ljava/lang/String;IILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-object v10

    .line 117
    :cond_7
    :goto_3
    if-ltz v13, :cond_17

    .line 118
    .line 119
    array-length v12, v3

    .line 120
    const/4 v14, 0x1

    .line 121
    const/16 v15, 0x20

    .line 122
    .line 123
    const/16 v16, 0x2

    .line 124
    .line 125
    if-ge v13, v12, :cond_8

    .line 126
    .line 127
    aget-boolean v12, v3, v13

    .line 128
    .line 129
    if-eqz v12, :cond_8

    .line 130
    .line 131
    move-object v12, v10

    .line 132
    move-object/from16 v19, v12

    .line 133
    .line 134
    :goto_4
    move/from16 v22, v14

    .line 135
    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :cond_8
    if-ne v13, v15, :cond_9

    .line 139
    .line 140
    iget-boolean v12, v2, Lzy5;->a:Z

    .line 141
    .line 142
    if-eqz v12, :cond_9

    .line 143
    .line 144
    sget-object v12, Lzy5;->c:[C

    .line 145
    .line 146
    move-object/from16 v19, v10

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_9
    const/16 v12, 0x7f

    .line 150
    .line 151
    sget-object v17, Lzy5;->d:[C

    .line 152
    .line 153
    const/16 v18, 0x25

    .line 154
    .line 155
    move-object/from16 v19, v10

    .line 156
    .line 157
    const/4 v10, 0x3

    .line 158
    if-gt v13, v12, :cond_a

    .line 159
    .line 160
    new-array v12, v10, [C

    .line 161
    .line 162
    aput-char v18, v12, v5

    .line 163
    .line 164
    and-int/lit8 v10, v13, 0xf

    .line 165
    .line 166
    aget-char v10, v17, v10

    .line 167
    .line 168
    aput-char v10, v12, v16

    .line 169
    .line 170
    ushr-int/lit8 v10, v13, 0x4

    .line 171
    .line 172
    aget-char v10, v17, v10

    .line 173
    .line 174
    aput-char v10, v12, v14

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_a
    const/16 v12, 0x7ff

    .line 178
    .line 179
    const/16 v20, 0x5

    .line 180
    .line 181
    move/from16 v21, v10

    .line 182
    .line 183
    const/16 v10, 0xc

    .line 184
    .line 185
    move/from16 v22, v14

    .line 186
    .line 187
    const/4 v14, 0x6

    .line 188
    const/16 v23, 0x4

    .line 189
    .line 190
    const/16 v24, 0x8

    .line 191
    .line 192
    if-gt v13, v12, :cond_b

    .line 193
    .line 194
    new-array v12, v14, [C

    .line 195
    .line 196
    aput-char v18, v12, v5

    .line 197
    .line 198
    aput-char v18, v12, v21

    .line 199
    .line 200
    and-int/lit8 v14, v13, 0xf

    .line 201
    .line 202
    aget-char v14, v17, v14

    .line 203
    .line 204
    aput-char v14, v12, v20

    .line 205
    .line 206
    ushr-int/lit8 v14, v13, 0x4

    .line 207
    .line 208
    and-int/lit8 v14, v14, 0x3

    .line 209
    .line 210
    or-int/lit8 v14, v14, 0x8

    .line 211
    .line 212
    aget-char v14, v17, v14

    .line 213
    .line 214
    aput-char v14, v12, v23

    .line 215
    .line 216
    ushr-int/lit8 v14, v13, 0x6

    .line 217
    .line 218
    and-int/lit8 v14, v14, 0xf

    .line 219
    .line 220
    aget-char v14, v17, v14

    .line 221
    .line 222
    aput-char v14, v12, v16

    .line 223
    .line 224
    ushr-int/lit8 v14, v13, 0xa

    .line 225
    .line 226
    or-int/2addr v10, v14

    .line 227
    aget-char v10, v17, v10

    .line 228
    .line 229
    aput-char v10, v12, v22

    .line 230
    .line 231
    goto/16 :goto_5

    .line 232
    .line 233
    :cond_b
    const v12, 0xffff

    .line 234
    .line 235
    .line 236
    move/from16 v25, v14

    .line 237
    .line 238
    const/16 v14, 0x9

    .line 239
    .line 240
    const/16 v26, 0x7

    .line 241
    .line 242
    if-gt v13, v12, :cond_c

    .line 243
    .line 244
    new-array v12, v14, [C

    .line 245
    .line 246
    aput-char v18, v12, v5

    .line 247
    .line 248
    const/16 v10, 0x45

    .line 249
    .line 250
    aput-char v10, v12, v22

    .line 251
    .line 252
    aput-char v18, v12, v21

    .line 253
    .line 254
    aput-char v18, v12, v25

    .line 255
    .line 256
    and-int/lit8 v10, v13, 0xf

    .line 257
    .line 258
    aget-char v10, v17, v10

    .line 259
    .line 260
    aput-char v10, v12, v24

    .line 261
    .line 262
    ushr-int/lit8 v10, v13, 0x4

    .line 263
    .line 264
    and-int/lit8 v10, v10, 0x3

    .line 265
    .line 266
    or-int/lit8 v10, v10, 0x8

    .line 267
    .line 268
    aget-char v10, v17, v10

    .line 269
    .line 270
    aput-char v10, v12, v26

    .line 271
    .line 272
    ushr-int/lit8 v10, v13, 0x6

    .line 273
    .line 274
    and-int/lit8 v10, v10, 0xf

    .line 275
    .line 276
    aget-char v10, v17, v10

    .line 277
    .line 278
    aput-char v10, v12, v20

    .line 279
    .line 280
    ushr-int/lit8 v10, v13, 0xa

    .line 281
    .line 282
    and-int/lit8 v10, v10, 0x3

    .line 283
    .line 284
    or-int/lit8 v10, v10, 0x8

    .line 285
    .line 286
    aget-char v10, v17, v10

    .line 287
    .line 288
    aput-char v10, v12, v23

    .line 289
    .line 290
    ushr-int/lit8 v10, v13, 0xc

    .line 291
    .line 292
    aget-char v10, v17, v10

    .line 293
    .line 294
    aput-char v10, v12, v16

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_c
    const v12, 0x10ffff

    .line 298
    .line 299
    .line 300
    if-gt v13, v12, :cond_16

    .line 301
    .line 302
    new-array v12, v10, [C

    .line 303
    .line 304
    aput-char v18, v12, v5

    .line 305
    .line 306
    const/16 v10, 0x46

    .line 307
    .line 308
    aput-char v10, v12, v22

    .line 309
    .line 310
    aput-char v18, v12, v21

    .line 311
    .line 312
    aput-char v18, v12, v25

    .line 313
    .line 314
    aput-char v18, v12, v14

    .line 315
    .line 316
    and-int/lit8 v10, v13, 0xf

    .line 317
    .line 318
    aget-char v10, v17, v10

    .line 319
    .line 320
    const/16 v14, 0xb

    .line 321
    .line 322
    aput-char v10, v12, v14

    .line 323
    .line 324
    ushr-int/lit8 v10, v13, 0x4

    .line 325
    .line 326
    and-int/lit8 v10, v10, 0x3

    .line 327
    .line 328
    or-int/lit8 v10, v10, 0x8

    .line 329
    .line 330
    aget-char v10, v17, v10

    .line 331
    .line 332
    const/16 v14, 0xa

    .line 333
    .line 334
    aput-char v10, v12, v14

    .line 335
    .line 336
    ushr-int/lit8 v10, v13, 0x6

    .line 337
    .line 338
    and-int/lit8 v10, v10, 0xf

    .line 339
    .line 340
    aget-char v10, v17, v10

    .line 341
    .line 342
    aput-char v10, v12, v24

    .line 343
    .line 344
    ushr-int/lit8 v10, v13, 0xa

    .line 345
    .line 346
    and-int/lit8 v10, v10, 0x3

    .line 347
    .line 348
    or-int/lit8 v10, v10, 0x8

    .line 349
    .line 350
    aget-char v10, v17, v10

    .line 351
    .line 352
    aput-char v10, v12, v26

    .line 353
    .line 354
    ushr-int/lit8 v10, v13, 0xc

    .line 355
    .line 356
    and-int/lit8 v10, v10, 0xf

    .line 357
    .line 358
    aget-char v10, v17, v10

    .line 359
    .line 360
    aput-char v10, v12, v20

    .line 361
    .line 362
    ushr-int/lit8 v10, v13, 0x10

    .line 363
    .line 364
    and-int/lit8 v10, v10, 0x3

    .line 365
    .line 366
    or-int/lit8 v10, v10, 0x8

    .line 367
    .line 368
    aget-char v10, v17, v10

    .line 369
    .line 370
    aput-char v10, v12, v23

    .line 371
    .line 372
    ushr-int/lit8 v10, v13, 0x12

    .line 373
    .line 374
    and-int/lit8 v10, v10, 0x7

    .line 375
    .line 376
    aget-char v10, v17, v10

    .line 377
    .line 378
    aput-char v10, v12, v16

    .line 379
    .line 380
    :goto_5
    invoke-static {v13}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    .line 381
    .line 382
    .line 383
    move-result v10

    .line 384
    if-eqz v10, :cond_d

    .line 385
    .line 386
    move/from16 v14, v16

    .line 387
    .line 388
    goto :goto_6

    .line 389
    :cond_d
    move/from16 v14, v22

    .line 390
    .line 391
    :goto_6
    add-int/2addr v14, v6

    .line 392
    if-eqz v12, :cond_13

    .line 393
    .line 394
    sub-int v10, v6, v8

    .line 395
    .line 396
    add-int v13, v9, v10

    .line 397
    .line 398
    move/from16 v16, v15

    .line 399
    .line 400
    array-length v15, v12

    .line 401
    add-int/2addr v15, v13

    .line 402
    array-length v5, v7

    .line 403
    if-ge v5, v15, :cond_10

    .line 404
    .line 405
    sub-int v5, v4, v6

    .line 406
    .line 407
    add-int/2addr v5, v15

    .line 408
    add-int/lit8 v5, v5, 0x20

    .line 409
    .line 410
    if-ltz v5, :cond_f

    .line 411
    .line 412
    new-array v5, v5, [C

    .line 413
    .line 414
    if-lez v9, :cond_e

    .line 415
    .line 416
    const/4 v11, 0x0

    .line 417
    invoke-static {v7, v11, v5, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    .line 419
    .line 420
    :cond_e
    move-object v7, v5

    .line 421
    goto :goto_7

    .line 422
    :cond_f
    invoke-static {v11}, Le6;->e(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    return-object v19

    .line 426
    :cond_10
    :goto_7
    if-lez v10, :cond_11

    .line 427
    .line 428
    invoke-virtual {v0, v8, v6, v7, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 429
    .line 430
    .line 431
    move v9, v13

    .line 432
    :cond_11
    array-length v5, v12

    .line 433
    if-lez v5, :cond_12

    .line 434
    .line 435
    array-length v5, v12

    .line 436
    const/4 v11, 0x0

    .line 437
    invoke-static {v12, v11, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    .line 439
    .line 440
    array-length v5, v12

    .line 441
    add-int/2addr v9, v5

    .line 442
    :cond_12
    move v8, v14

    .line 443
    :cond_13
    move v6, v14

    .line 444
    :goto_8
    if-ge v6, v4, :cond_15

    .line 445
    .line 446
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    array-length v10, v3

    .line 451
    if-ge v5, v10, :cond_15

    .line 452
    .line 453
    aget-boolean v5, v3, v5

    .line 454
    .line 455
    if-nez v5, :cond_14

    .line 456
    .line 457
    goto :goto_9

    .line 458
    :cond_14
    add-int/lit8 v6, v6, 0x1

    .line 459
    .line 460
    goto :goto_8

    .line 461
    :cond_15
    :goto_9
    const/4 v5, 0x0

    .line 462
    goto/16 :goto_2

    .line 463
    .line 464
    :cond_16
    const-string v0, "Invalid unicode character value "

    .line 465
    .line 466
    invoke-static {v13, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    return-object v19

    .line 474
    :cond_17
    move-object/from16 v19, v10

    .line 475
    .line 476
    const-string v0, "Trailing high surrogate at end of input"

    .line 477
    .line 478
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    return-object v19

    .line 482
    :cond_18
    move-object/from16 v19, v10

    .line 483
    .line 484
    const-string v0, "Index exceeds specified range"

    .line 485
    .line 486
    invoke-static {v0}, La6;->d(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    return-object v19

    .line 490
    :cond_19
    move-object/from16 v19, v10

    .line 491
    .line 492
    sub-int v2, v4, v8

    .line 493
    .line 494
    if-lez v2, :cond_1d

    .line 495
    .line 496
    add-int/2addr v2, v9

    .line 497
    array-length v3, v7

    .line 498
    if-ge v3, v2, :cond_1c

    .line 499
    .line 500
    if-ltz v2, :cond_1b

    .line 501
    .line 502
    new-array v3, v2, [C

    .line 503
    .line 504
    if-lez v9, :cond_1a

    .line 505
    .line 506
    const/4 v5, 0x0

    .line 507
    invoke-static {v7, v5, v3, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    .line 509
    .line 510
    goto :goto_a

    .line 511
    :cond_1a
    const/4 v5, 0x0

    .line 512
    :goto_a
    move-object v7, v3

    .line 513
    goto :goto_b

    .line 514
    :cond_1b
    invoke-static {v11}, Le6;->e(Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    return-object v19

    .line 518
    :cond_1c
    const/4 v5, 0x0

    .line 519
    :goto_b
    invoke-virtual {v0, v8, v4, v7, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 520
    .line 521
    .line 522
    move v9, v2

    .line 523
    goto :goto_c

    .line 524
    :cond_1d
    const/4 v5, 0x0

    .line 525
    :goto_c
    new-instance v0, Ljava/lang/String;

    .line 526
    .line 527
    invoke-direct {v0, v7, v5, v9}, Ljava/lang/String;-><init>([CII)V

    .line 528
    .line 529
    .line 530
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    array-length v2, v0

    .line 535
    :goto_d
    if-ge v5, v2, :cond_28

    .line 536
    .line 537
    aget-char v3, v0, v5

    .line 538
    .line 539
    const/16 v4, 0x21

    .line 540
    .line 541
    if-eq v3, v4, :cond_27

    .line 542
    .line 543
    const/16 v4, 0x24

    .line 544
    .line 545
    if-eq v3, v4, :cond_26

    .line 546
    .line 547
    const/16 v4, 0x2f

    .line 548
    .line 549
    if-eq v3, v4, :cond_25

    .line 550
    .line 551
    const/16 v4, 0x3d

    .line 552
    .line 553
    if-eq v3, v4, :cond_24

    .line 554
    .line 555
    const/16 v4, 0x40

    .line 556
    .line 557
    if-eq v3, v4, :cond_23

    .line 558
    .line 559
    const/16 v4, 0x5b

    .line 560
    .line 561
    if-eq v3, v4, :cond_22

    .line 562
    .line 563
    const/16 v4, 0x5d

    .line 564
    .line 565
    if-eq v3, v4, :cond_21

    .line 566
    .line 567
    const/16 v4, 0x3a

    .line 568
    .line 569
    if-eq v3, v4, :cond_20

    .line 570
    .line 571
    const/16 v4, 0x3b

    .line 572
    .line 573
    if-eq v3, v4, :cond_1f

    .line 574
    .line 575
    packed-switch v3, :pswitch_data_0

    .line 576
    .line 577
    .line 578
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    goto/16 :goto_e

    .line 582
    .line 583
    :pswitch_0
    const-string v3, "%2C"

    .line 584
    .line 585
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    goto :goto_e

    .line 589
    :pswitch_1
    const-string v3, "%2B"

    .line 590
    .line 591
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    goto :goto_e

    .line 595
    :pswitch_2
    const-string v3, "%2A"

    .line 596
    .line 597
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    goto :goto_e

    .line 601
    :pswitch_3
    const-string v3, "%29"

    .line 602
    .line 603
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    goto :goto_e

    .line 607
    :pswitch_4
    const-string v3, "%28"

    .line 608
    .line 609
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    goto :goto_e

    .line 613
    :pswitch_5
    const-string v3, "%27"

    .line 614
    .line 615
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    goto :goto_e

    .line 619
    :pswitch_6
    const-string v3, "%26"

    .line 620
    .line 621
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    goto :goto_e

    .line 625
    :cond_1f
    const-string v3, "%3B"

    .line 626
    .line 627
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    goto :goto_e

    .line 631
    :cond_20
    const-string v3, "%3A"

    .line 632
    .line 633
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    goto :goto_e

    .line 637
    :cond_21
    const-string v3, "%5D"

    .line 638
    .line 639
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    goto :goto_e

    .line 643
    :cond_22
    const-string v3, "%5B"

    .line 644
    .line 645
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    goto :goto_e

    .line 649
    :cond_23
    const-string v3, "%40"

    .line 650
    .line 651
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    goto :goto_e

    .line 655
    :cond_24
    const-string v3, "%3D"

    .line 656
    .line 657
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    goto :goto_e

    .line 661
    :cond_25
    const-string v3, "%2F"

    .line 662
    .line 663
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    goto :goto_e

    .line 667
    :cond_26
    const-string v3, "%24"

    .line 668
    .line 669
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    goto :goto_e

    .line 673
    :cond_27
    const-string v3, "%21"

    .line 674
    .line 675
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    :goto_e
    add-int/lit8 v5, v5, 0x1

    .line 679
    .line 680
    goto/16 :goto_d

    .line 681
    .line 682
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    return-object v0

    .line 687
    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "/"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    array-length v3, v2

    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    if-ge v5, v3, :cond_2

    .line 16
    .line 17
    aget-object v6, v2, v5

    .line 18
    .line 19
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    if-nez v7, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-lez v7, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {v6}, Lki8;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public static c(Lrg5;)Ljava/util/concurrent/CompletableFuture;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "os.name"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "os.arch"

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lki8$b;->b:Lki8$b;

    .line 14
    .line 15
    iget-object v3, v2, Lki8$b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_0
    monitor-enter v2

    .line 28
    :try_start_0
    iget-object v3, v2, Lki8$b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    monitor-exit v2

    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_1
    :try_start_1
    iget-object v3, v2, Lki8$b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    .line 41
    const-string v4, "dev"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const-class v3, Lki8$b;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 49
    .line 50
    .line 51
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    monitor-exit v2

    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_2
    :try_start_2
    const-string v4, "META-INF/MANIFEST.MF"

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_7

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Ljava/net/URL;

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 76
    .line 77
    .line 78
    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :try_start_3
    new-instance v5, Ljava/util/jar/Manifest;

    .line 80
    .line 81
    invoke-direct {v5, v4}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 82
    .line 83
    .line 84
    const-string v6, "minio"

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    const-string v8, "Implementation-Title"

    .line 91
    .line 92
    invoke-virtual {v7, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_5

    .line 101
    .line 102
    iget-object v3, v2, Lki8$b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    const-string v6, "Implementation-Version"

    .line 109
    .line 110
    invoke-virtual {v5, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    .line 116
    .line 117
    if-eqz v4, :cond_4

    .line 118
    .line 119
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    goto :goto_7

    .line 125
    :catch_0
    move-exception v3

    .line 126
    goto :goto_4

    .line 127
    :cond_4
    :goto_1
    monitor-exit v2

    .line 128
    goto :goto_5

    .line 129
    :catchall_1
    move-exception v3

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    if-eqz v4, :cond_3

    .line 132
    .line 133
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :goto_2
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 138
    :catchall_2
    move-exception v5

    .line 139
    if-eqz v4, :cond_6

    .line 140
    .line 141
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :catchall_3
    move-exception v4

    .line 146
    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    :cond_6
    :goto_3
    throw v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 150
    :goto_4
    :try_start_9
    sget-object v4, Lki8$b;->c:Ljava/util/logging/Logger;

    .line 151
    .line 152
    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 153
    .line 154
    const-string v6, "IOException occurred"

    .line 155
    .line 156
    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    iget-object v3, v2, Lki8$b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 160
    .line 161
    const-string v4, "unknown"

    .line 162
    .line 163
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 164
    .line 165
    .line 166
    :cond_7
    monitor-exit v2

    .line 167
    :goto_5
    iget-object v2, v2, Lki8$b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    move-object v3, v2

    .line 174
    check-cast v3, Ljava/lang/String;

    .line 175
    .line 176
    :goto_6
    const-string v2, "MinIO ("

    .line 177
    .line 178
    const-string v4, "; "

    .line 179
    .line 180
    const-string v5, ") minio-java/"

    .line 181
    .line 182
    invoke-static {v2, v0, v4, v1, v5}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    return-object v0

    .line 194
    :goto_7
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 195
    throw v0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "<null>"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "["

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-string v3, ", "

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    :goto_0
    if-ge v4, v1, :cond_4

    .line 45
    .line 46
    if-lez v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    :goto_1
    if-ge v4, v1, :cond_4

    .line 62
    .line 63
    if-lez v4, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    const-string p0, "]"

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_5
    instance-of v0, p0, Ljava/lang/CharSequence;

    .line 93
    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v1, "\'"

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0
.end method

.method public static f(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_1
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, " must be a non-empty string."

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, " must not be null"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, " must be a non-empty string."

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method public static k(Lokhttp3/HttpUrl;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "/"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v0, "no path allowed in endpoint "

    .line 15
    .line 16
    invoke-static {p0, v0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
