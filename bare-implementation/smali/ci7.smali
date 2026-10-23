.class public final Lci7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lai7;

.field public b:I

.field public c:Z

.field public d:J


# direct methods
.method public constructor <init>(Lai7;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lci7;->b:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lci7;->c:Z

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lci7;->d:J

    .line 13
    .line 14
    iput-object p1, p0, Lci7;->a:Lai7;

    .line 15
    .line 16
    return-void
.end method

.method public static a(BBBB[BII)[B
    .locals 1

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    if-gt p6, v0, :cond_2

    .line 4
    .line 5
    if-lez p6, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    add-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    add-int/2addr v0, p6

    .line 13
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-lez p6, :cond_1

    .line 34
    .line 35
    int-to-byte p1, p6

    .line 36
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, p4, p5, p6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2
    const-string p0, "Length must be no greater than 255"

    .line 49
    .line 50
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0
.end method


# virtual methods
.method public final b(Lie;)[B
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lci7;->c:Z

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const/4 v5, 0x5

    .line 10
    iget-object v6, v0, Lci7;->a:Lai7;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-wide v7, v0, Lci7;->d:J

    .line 15
    .line 16
    cmp-long v2, v7, v3

    .line 17
    .line 18
    if-lez v2, :cond_0

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v7

    .line 24
    iget-wide v9, v0, Lci7;->d:J

    .line 25
    .line 26
    sub-long/2addr v7, v9

    .line 27
    const-wide/16 v9, 0x7d0

    .line 28
    .line 29
    cmp-long v2, v7, v9

    .line 30
    .line 31
    if-gez v2, :cond_0

    .line 32
    .line 33
    new-array v2, v5, [B

    .line 34
    .line 35
    invoke-interface {v6, v2}, Lai7;->I([B)[B

    .line 36
    .line 37
    .line 38
    iput-wide v3, v0, Lci7;->d:J

    .line 39
    .line 40
    :cond_0
    iget-object v2, v1, Lie;->e:[B

    .line 41
    .line 42
    iget-byte v7, v1, Lie;->a:B

    .line 43
    .line 44
    array-length v8, v2

    .line 45
    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    iget v2, v0, Lci7;->b:I

    .line 50
    .line 51
    invoke-static {v2}, Ldj7;->A(I)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v8, 0x0

    .line 56
    const/16 v16, 0x4

    .line 57
    .line 58
    const/16 v17, 0x3

    .line 59
    .line 60
    const/16 v18, -0x40

    .line 61
    .line 62
    const/4 v10, 0x1

    .line 63
    const/4 v11, 0x2

    .line 64
    const/4 v12, 0x0

    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    if-ne v2, v10, :cond_3

    .line 68
    .line 69
    new-instance v2, Lke;

    .line 70
    .line 71
    iget-byte v8, v1, Lie;->b:B

    .line 72
    .line 73
    iget-byte v14, v1, Lie;->c:B

    .line 74
    .line 75
    iget-byte v1, v1, Lie;->d:B

    .line 76
    .line 77
    array-length v15, v13

    .line 78
    if-lez v15, :cond_1

    .line 79
    .line 80
    move v15, v11

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move v15, v12

    .line 83
    :goto_0
    add-int/2addr v15, v5

    .line 84
    array-length v9, v13

    .line 85
    add-int/2addr v15, v9

    .line 86
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v7, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    array-length v7, v13

    .line 111
    if-lez v7, :cond_2

    .line 112
    .line 113
    array-length v7, v13

    .line 114
    int-to-short v7, v7

    .line 115
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v7, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 120
    .line 121
    .line 122
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-interface {v6, v1}, Lai7;->I([B)[B

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {v2, v1}, Lke;-><init>([B)V

    .line 131
    .line 132
    .line 133
    const/4 v1, 0x7

    .line 134
    new-array v1, v1, [B

    .line 135
    .line 136
    aput-byte v12, v1, v12

    .line 137
    .line 138
    aput-byte v18, v1, v10

    .line 139
    .line 140
    aput-byte v12, v1, v11

    .line 141
    .line 142
    aput-byte v12, v1, v17

    .line 143
    .line 144
    aput-byte v12, v1, v16

    .line 145
    .line 146
    aput-byte v12, v1, v5

    .line 147
    .line 148
    const/4 v5, 0x6

    .line 149
    aput-byte v12, v1, v5

    .line 150
    .line 151
    move-object v7, v2

    .line 152
    move v3, v11

    .line 153
    move v4, v12

    .line 154
    const/16 v2, -0x7000

    .line 155
    .line 156
    goto/16 :goto_2

    .line 157
    .line 158
    :cond_3
    const-string v0, "Invalid APDU format"

    .line 159
    .line 160
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-object v8

    .line 164
    :cond_4
    move v14, v12

    .line 165
    :goto_1
    array-length v2, v13

    .line 166
    sub-int/2addr v2, v14

    .line 167
    const/16 v9, 0xff

    .line 168
    .line 169
    if-le v2, v9, :cond_7

    .line 170
    .line 171
    or-int/lit8 v2, v7, 0x10

    .line 172
    .line 173
    int-to-byte v2, v2

    .line 174
    move v15, v10

    .line 175
    iget-byte v10, v1, Lie;->b:B

    .line 176
    .line 177
    move/from16 v20, v11

    .line 178
    .line 179
    iget-byte v11, v1, Lie;->c:B

    .line 180
    .line 181
    move/from16 v21, v12

    .line 182
    .line 183
    iget-byte v12, v1, Lie;->d:B

    .line 184
    .line 185
    move/from16 v22, v15

    .line 186
    .line 187
    const/16 v15, 0xff

    .line 188
    .line 189
    move-object/from16 v19, v8

    .line 190
    .line 191
    move v8, v9

    .line 192
    move/from16 v3, v20

    .line 193
    .line 194
    move/from16 v4, v21

    .line 195
    .line 196
    move v9, v2

    .line 197
    const/16 v2, -0x7000

    .line 198
    .line 199
    invoke-static/range {v9 .. v15}, Lci7;->a(BBBB[BII)[B

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-interface {v6, v9}, Lai7;->I([B)[B

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    array-length v10, v9

    .line 208
    if-lt v10, v3, :cond_6

    .line 209
    .line 210
    array-length v10, v9

    .line 211
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    array-length v10, v9

    .line 216
    sub-int/2addr v10, v3

    .line 217
    aget-byte v10, v9, v10

    .line 218
    .line 219
    and-int/2addr v10, v8

    .line 220
    shl-int/lit8 v10, v10, 0x8

    .line 221
    .line 222
    array-length v11, v9

    .line 223
    add-int/lit8 v11, v11, -0x1

    .line 224
    .line 225
    aget-byte v11, v9, v11

    .line 226
    .line 227
    and-int/2addr v11, v8

    .line 228
    or-int/2addr v10, v11

    .line 229
    int-to-short v10, v10

    .line 230
    if-ne v10, v2, :cond_5

    .line 231
    .line 232
    add-int/lit16 v14, v14, 0xff

    .line 233
    .line 234
    move v11, v3

    .line 235
    move v12, v4

    .line 236
    move-object/from16 v8, v19

    .line 237
    .line 238
    move/from16 v10, v22

    .line 239
    .line 240
    const-wide/16 v3, 0x0

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_5
    new-instance v0, Lje;

    .line 244
    .line 245
    array-length v1, v9

    .line 246
    sub-int/2addr v1, v3

    .line 247
    aget-byte v1, v9, v1

    .line 248
    .line 249
    and-int/2addr v1, v8

    .line 250
    shl-int/lit8 v1, v1, 0x8

    .line 251
    .line 252
    array-length v2, v9

    .line 253
    add-int/lit8 v2, v2, -0x1

    .line 254
    .line 255
    aget-byte v2, v9, v2

    .line 256
    .line 257
    and-int/2addr v2, v8

    .line 258
    or-int/2addr v1, v2

    .line 259
    int-to-short v1, v1

    .line 260
    invoke-direct {v0, v1}, Lje;-><init>(S)V

    .line 261
    .line 262
    .line 263
    throw v0

    .line 264
    :cond_6
    const-string v0, "Invalid APDU response data"

    .line 265
    .line 266
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-object v19

    .line 270
    :cond_7
    move/from16 v22, v10

    .line 271
    .line 272
    move v3, v11

    .line 273
    move v4, v12

    .line 274
    const/16 v2, -0x7000

    .line 275
    .line 276
    new-instance v7, Lke;

    .line 277
    .line 278
    iget-byte v9, v1, Lie;->a:B

    .line 279
    .line 280
    iget-byte v10, v1, Lie;->b:B

    .line 281
    .line 282
    iget-byte v11, v1, Lie;->c:B

    .line 283
    .line 284
    iget-byte v12, v1, Lie;->d:B

    .line 285
    .line 286
    array-length v1, v13

    .line 287
    sub-int v15, v1, v14

    .line 288
    .line 289
    invoke-static/range {v9 .. v15}, Lci7;->a(BBBB[BII)[B

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-interface {v6, v1}, Lai7;->I([B)[B

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-direct {v7, v1}, Lke;-><init>([B)V

    .line 298
    .line 299
    .line 300
    new-array v1, v5, [B

    .line 301
    .line 302
    aput-byte v4, v1, v4

    .line 303
    .line 304
    aput-byte v18, v1, v22

    .line 305
    .line 306
    aput-byte v4, v1, v3

    .line 307
    .line 308
    aput-byte v4, v1, v17

    .line 309
    .line 310
    aput-byte v4, v1, v16

    .line 311
    .line 312
    :goto_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 313
    .line 314
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 315
    .line 316
    .line 317
    :goto_3
    iget-object v8, v7, Lke;->b:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v8, [B

    .line 320
    .line 321
    invoke-virtual {v7}, Lke;->d()S

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    shr-int/lit8 v9, v9, 0x8

    .line 326
    .line 327
    const/16 v10, 0x61

    .line 328
    .line 329
    if-ne v9, v10, :cond_8

    .line 330
    .line 331
    array-length v7, v8

    .line 332
    sub-int/2addr v7, v3

    .line 333
    invoke-static {v8, v4, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 338
    .line 339
    .line 340
    new-instance v7, Lke;

    .line 341
    .line 342
    invoke-interface {v6, v1}, Lai7;->I([B)[B

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    invoke-direct {v7, v8}, Lke;-><init>([B)V

    .line 347
    .line 348
    .line 349
    goto :goto_3

    .line 350
    :cond_8
    invoke-virtual {v7}, Lke;->d()S

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-ne v1, v2, :cond_a

    .line 355
    .line 356
    array-length v1, v8

    .line 357
    sub-int/2addr v1, v3

    .line 358
    invoke-static {v8, v4, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    iget-boolean v2, v0, Lci7;->c:Z

    .line 370
    .line 371
    if-eqz v2, :cond_9

    .line 372
    .line 373
    array-length v2, v1

    .line 374
    const/16 v3, 0x36

    .line 375
    .line 376
    if-le v2, v3, :cond_9

    .line 377
    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 379
    .line 380
    .line 381
    move-result-wide v2

    .line 382
    iput-wide v2, v0, Lci7;->d:J

    .line 383
    .line 384
    return-object v1

    .line 385
    :cond_9
    const-wide/16 v2, 0x0

    .line 386
    .line 387
    iput-wide v2, v0, Lci7;->d:J

    .line 388
    .line 389
    return-object v1

    .line 390
    :cond_a
    new-instance v0, Lje;

    .line 391
    .line 392
    invoke-virtual {v7}, Lke;->d()S

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    invoke-direct {v0, v1}, Lje;-><init>(S)V

    .line 397
    .line 398
    .line 399
    throw v0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lci7;->a:Lai7;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
