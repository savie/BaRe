.class public final Lpl9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljm9;


# static fields
.field public static final j:[I

.field public static final k:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lmg9;

.field public final f:[I

.field public final g:I

.field public final h:I

.field public final i:Lns0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lpl9;->j:[I

    .line 5
    .line 6
    invoke-static {}, Lun9;->i()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lpl9;->k:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILmg9;[IIILns0;Llk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpl9;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Lpl9;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lpl9;->c:I

    .line 9
    .line 10
    iput p4, p0, Lpl9;->d:I

    .line 11
    .line 12
    iput-object p6, p0, Lpl9;->f:[I

    .line 13
    .line 14
    iput p7, p0, Lpl9;->g:I

    .line 15
    .line 16
    iput p8, p0, Lpl9;->h:I

    .line 17
    .line 18
    iput-object p9, p0, Lpl9;->i:Lns0;

    .line 19
    .line 20
    iput-object p5, p0, Lpl9;->e:Lmg9;

    .line 21
    .line 22
    return-void
.end method

.method public static B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    return-object v4

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v3, " for "

    .line 42
    .line 43
    const-string v4, " not found. Known fields are "

    .line 44
    .line 45
    const-string v5, "Field "

    .line 46
    .line 47
    invoke-static {v5, p1, v3, p0, v4}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v2
.end method

.method public static o(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lxi9;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lxi9;

    .line 10
    .line 11
    invoke-virtual {p0}, Lxi9;->h()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static r(Lhm9;Lns0;Llk;)Lpl9;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    instance-of v1, v0, Lhm9;

    .line 4
    .line 5
    if-eqz v1, :cond_37

    .line 6
    .line 7
    iget-object v1, v0, Lhm9;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const v5, 0xd800

    .line 19
    .line 20
    .line 21
    if-lt v4, v5, :cond_0

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 25
    .line 26
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-lt v4, v5, :cond_1

    .line 31
    .line 32
    move v4, v7

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v7, 0x1

    .line 35
    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 36
    .line 37
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-lt v7, v5, :cond_3

    .line 42
    .line 43
    and-int/lit16 v7, v7, 0x1fff

    .line 44
    .line 45
    const/16 v9, 0xd

    .line 46
    .line 47
    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-lt v4, v5, :cond_2

    .line 54
    .line 55
    and-int/lit16 v4, v4, 0x1fff

    .line 56
    .line 57
    shl-int/2addr v4, v9

    .line 58
    or-int/2addr v7, v4

    .line 59
    add-int/lit8 v9, v9, 0xd

    .line 60
    .line 61
    move v4, v10

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    shl-int/2addr v4, v9

    .line 64
    or-int/2addr v7, v4

    .line 65
    move v4, v10

    .line 66
    :cond_3
    if-nez v7, :cond_4

    .line 67
    .line 68
    sget-object v7, Lpl9;->j:[I

    .line 69
    .line 70
    move v9, v3

    .line 71
    move v10, v9

    .line 72
    move v11, v10

    .line 73
    move v12, v11

    .line 74
    move v13, v12

    .line 75
    move/from16 v16, v13

    .line 76
    .line 77
    move-object v15, v7

    .line 78
    move/from16 v7, v16

    .line 79
    .line 80
    goto/16 :goto_a

    .line 81
    .line 82
    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-lt v4, v5, :cond_6

    .line 89
    .line 90
    and-int/lit16 v4, v4, 0x1fff

    .line 91
    .line 92
    const/16 v9, 0xd

    .line 93
    .line 94
    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 95
    .line 96
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-lt v7, v5, :cond_5

    .line 101
    .line 102
    and-int/lit16 v7, v7, 0x1fff

    .line 103
    .line 104
    shl-int/2addr v7, v9

    .line 105
    or-int/2addr v4, v7

    .line 106
    add-int/lit8 v9, v9, 0xd

    .line 107
    .line 108
    move v7, v10

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    shl-int/2addr v7, v9

    .line 111
    or-int/2addr v4, v7

    .line 112
    move v7, v10

    .line 113
    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 114
    .line 115
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-lt v7, v5, :cond_8

    .line 120
    .line 121
    and-int/lit16 v7, v7, 0x1fff

    .line 122
    .line 123
    const/16 v10, 0xd

    .line 124
    .line 125
    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 126
    .line 127
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-lt v9, v5, :cond_7

    .line 132
    .line 133
    and-int/lit16 v9, v9, 0x1fff

    .line 134
    .line 135
    shl-int/2addr v9, v10

    .line 136
    or-int/2addr v7, v9

    .line 137
    add-int/lit8 v10, v10, 0xd

    .line 138
    .line 139
    move v9, v11

    .line 140
    goto :goto_3

    .line 141
    :cond_7
    shl-int/2addr v9, v10

    .line 142
    or-int/2addr v7, v9

    .line 143
    move v9, v11

    .line 144
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 145
    .line 146
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-lt v9, v5, :cond_a

    .line 151
    .line 152
    and-int/lit16 v9, v9, 0x1fff

    .line 153
    .line 154
    const/16 v11, 0xd

    .line 155
    .line 156
    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 157
    .line 158
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-lt v10, v5, :cond_9

    .line 163
    .line 164
    and-int/lit16 v10, v10, 0x1fff

    .line 165
    .line 166
    shl-int/2addr v10, v11

    .line 167
    or-int/2addr v9, v10

    .line 168
    add-int/lit8 v11, v11, 0xd

    .line 169
    .line 170
    move v10, v12

    .line 171
    goto :goto_4

    .line 172
    :cond_9
    shl-int/2addr v10, v11

    .line 173
    or-int/2addr v9, v10

    .line 174
    move v10, v12

    .line 175
    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 176
    .line 177
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    if-lt v10, v5, :cond_c

    .line 182
    .line 183
    and-int/lit16 v10, v10, 0x1fff

    .line 184
    .line 185
    const/16 v12, 0xd

    .line 186
    .line 187
    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 188
    .line 189
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-lt v11, v5, :cond_b

    .line 194
    .line 195
    and-int/lit16 v11, v11, 0x1fff

    .line 196
    .line 197
    shl-int/2addr v11, v12

    .line 198
    or-int/2addr v10, v11

    .line 199
    add-int/lit8 v12, v12, 0xd

    .line 200
    .line 201
    move v11, v13

    .line 202
    goto :goto_5

    .line 203
    :cond_b
    shl-int/2addr v11, v12

    .line 204
    or-int/2addr v10, v11

    .line 205
    move v11, v13

    .line 206
    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 207
    .line 208
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    if-lt v11, v5, :cond_e

    .line 213
    .line 214
    and-int/lit16 v11, v11, 0x1fff

    .line 215
    .line 216
    const/16 v13, 0xd

    .line 217
    .line 218
    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 219
    .line 220
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    if-lt v12, v5, :cond_d

    .line 225
    .line 226
    and-int/lit16 v12, v12, 0x1fff

    .line 227
    .line 228
    shl-int/2addr v12, v13

    .line 229
    or-int/2addr v11, v12

    .line 230
    add-int/lit8 v13, v13, 0xd

    .line 231
    .line 232
    move v12, v14

    .line 233
    goto :goto_6

    .line 234
    :cond_d
    shl-int/2addr v12, v13

    .line 235
    or-int/2addr v11, v12

    .line 236
    move v12, v14

    .line 237
    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 238
    .line 239
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 240
    .line 241
    .line 242
    move-result v12

    .line 243
    if-lt v12, v5, :cond_10

    .line 244
    .line 245
    and-int/lit16 v12, v12, 0x1fff

    .line 246
    .line 247
    const/16 v14, 0xd

    .line 248
    .line 249
    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 250
    .line 251
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    if-lt v13, v5, :cond_f

    .line 256
    .line 257
    and-int/lit16 v13, v13, 0x1fff

    .line 258
    .line 259
    shl-int/2addr v13, v14

    .line 260
    or-int/2addr v12, v13

    .line 261
    add-int/lit8 v14, v14, 0xd

    .line 262
    .line 263
    move v13, v15

    .line 264
    goto :goto_7

    .line 265
    :cond_f
    shl-int/2addr v13, v14

    .line 266
    or-int/2addr v12, v13

    .line 267
    move v13, v15

    .line 268
    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 269
    .line 270
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    if-lt v13, v5, :cond_12

    .line 275
    .line 276
    and-int/lit16 v13, v13, 0x1fff

    .line 277
    .line 278
    const/16 v15, 0xd

    .line 279
    .line 280
    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 281
    .line 282
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 283
    .line 284
    .line 285
    move-result v14

    .line 286
    if-lt v14, v5, :cond_11

    .line 287
    .line 288
    and-int/lit16 v14, v14, 0x1fff

    .line 289
    .line 290
    shl-int/2addr v14, v15

    .line 291
    or-int/2addr v13, v14

    .line 292
    add-int/lit8 v15, v15, 0xd

    .line 293
    .line 294
    move/from16 v14, v16

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_11
    shl-int/2addr v14, v15

    .line 298
    or-int/2addr v13, v14

    .line 299
    move/from16 v14, v16

    .line 300
    .line 301
    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 302
    .line 303
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 304
    .line 305
    .line 306
    move-result v14

    .line 307
    if-lt v14, v5, :cond_14

    .line 308
    .line 309
    and-int/lit16 v14, v14, 0x1fff

    .line 310
    .line 311
    const/16 v16, 0xd

    .line 312
    .line 313
    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 314
    .line 315
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 316
    .line 317
    .line 318
    move-result v15

    .line 319
    if-lt v15, v5, :cond_13

    .line 320
    .line 321
    and-int/lit16 v15, v15, 0x1fff

    .line 322
    .line 323
    shl-int v15, v15, v16

    .line 324
    .line 325
    or-int/2addr v14, v15

    .line 326
    add-int/lit8 v16, v16, 0xd

    .line 327
    .line 328
    move/from16 v15, v17

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_13
    shl-int v15, v15, v16

    .line 332
    .line 333
    or-int/2addr v14, v15

    .line 334
    move/from16 v15, v17

    .line 335
    .line 336
    :cond_14
    add-int v16, v14, v12

    .line 337
    .line 338
    add-int v13, v16, v13

    .line 339
    .line 340
    add-int v16, v4, v4

    .line 341
    .line 342
    add-int v16, v16, v7

    .line 343
    .line 344
    new-array v7, v13, [I

    .line 345
    .line 346
    move-object v13, v7

    .line 347
    move v7, v4

    .line 348
    move v4, v15

    .line 349
    move-object v15, v13

    .line 350
    move v13, v12

    .line 351
    move v12, v9

    .line 352
    move v9, v13

    .line 353
    move v13, v10

    .line 354
    move/from16 v10, v16

    .line 355
    .line 356
    move/from16 v16, v14

    .line 357
    .line 358
    :goto_a
    sget-object v14, Lpl9;->k:Lsun/misc/Unsafe;

    .line 359
    .line 360
    iget-object v3, v0, Lhm9;->c:[Ljava/lang/Object;

    .line 361
    .line 362
    iget-object v8, v0, Lhm9;->a:Lmg9;

    .line 363
    .line 364
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    move-result-object v8

    .line 368
    add-int v9, v16, v9

    .line 369
    .line 370
    add-int v6, v11, v11

    .line 371
    .line 372
    mul-int/lit8 v11, v11, 0x3

    .line 373
    .line 374
    new-array v11, v11, [I

    .line 375
    .line 376
    new-array v6, v6, [Ljava/lang/Object;

    .line 377
    .line 378
    move/from16 v23, v9

    .line 379
    .line 380
    move/from16 v22, v16

    .line 381
    .line 382
    const/16 v20, 0x0

    .line 383
    .line 384
    const/16 v21, 0x0

    .line 385
    .line 386
    :goto_b
    if-ge v4, v2, :cond_36

    .line 387
    .line 388
    add-int/lit8 v24, v4, 0x1

    .line 389
    .line 390
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    if-lt v4, v5, :cond_16

    .line 395
    .line 396
    and-int/lit16 v4, v4, 0x1fff

    .line 397
    .line 398
    move/from16 v5, v24

    .line 399
    .line 400
    const/16 v24, 0xd

    .line 401
    .line 402
    :goto_c
    add-int/lit8 v26, v5, 0x1

    .line 403
    .line 404
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    move/from16 v27, v2

    .line 409
    .line 410
    const v2, 0xd800

    .line 411
    .line 412
    .line 413
    if-lt v5, v2, :cond_15

    .line 414
    .line 415
    and-int/lit16 v2, v5, 0x1fff

    .line 416
    .line 417
    shl-int v2, v2, v24

    .line 418
    .line 419
    or-int/2addr v4, v2

    .line 420
    add-int/lit8 v24, v24, 0xd

    .line 421
    .line 422
    move/from16 v5, v26

    .line 423
    .line 424
    move/from16 v2, v27

    .line 425
    .line 426
    goto :goto_c

    .line 427
    :cond_15
    shl-int v2, v5, v24

    .line 428
    .line 429
    or-int/2addr v4, v2

    .line 430
    move/from16 v2, v26

    .line 431
    .line 432
    goto :goto_d

    .line 433
    :cond_16
    move/from16 v27, v2

    .line 434
    .line 435
    move/from16 v2, v24

    .line 436
    .line 437
    :goto_d
    add-int/lit8 v5, v2, 0x1

    .line 438
    .line 439
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    move-object/from16 v24, v3

    .line 444
    .line 445
    const v3, 0xd800

    .line 446
    .line 447
    .line 448
    if-lt v2, v3, :cond_18

    .line 449
    .line 450
    and-int/lit16 v2, v2, 0x1fff

    .line 451
    .line 452
    const/16 v26, 0xd

    .line 453
    .line 454
    :goto_e
    add-int/lit8 v28, v5, 0x1

    .line 455
    .line 456
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 457
    .line 458
    .line 459
    move-result v5

    .line 460
    if-lt v5, v3, :cond_17

    .line 461
    .line 462
    and-int/lit16 v3, v5, 0x1fff

    .line 463
    .line 464
    shl-int v3, v3, v26

    .line 465
    .line 466
    or-int/2addr v2, v3

    .line 467
    add-int/lit8 v26, v26, 0xd

    .line 468
    .line 469
    move/from16 v5, v28

    .line 470
    .line 471
    const v3, 0xd800

    .line 472
    .line 473
    .line 474
    goto :goto_e

    .line 475
    :cond_17
    shl-int v3, v5, v26

    .line 476
    .line 477
    or-int/2addr v2, v3

    .line 478
    move/from16 v5, v28

    .line 479
    .line 480
    :cond_18
    and-int/lit16 v3, v2, 0x400

    .line 481
    .line 482
    if-eqz v3, :cond_19

    .line 483
    .line 484
    add-int/lit8 v3, v20, 0x1

    .line 485
    .line 486
    aput v21, v15, v20

    .line 487
    .line 488
    move/from16 v20, v3

    .line 489
    .line 490
    :cond_19
    and-int/lit16 v3, v2, 0xff

    .line 491
    .line 492
    move/from16 v26, v4

    .line 493
    .line 494
    and-int/lit16 v4, v2, 0x800

    .line 495
    .line 496
    move/from16 v28, v4

    .line 497
    .line 498
    const/16 v4, 0x33

    .line 499
    .line 500
    if-lt v3, v4, :cond_23

    .line 501
    .line 502
    add-int/lit8 v4, v5, 0x1

    .line 503
    .line 504
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    move/from16 v29, v4

    .line 509
    .line 510
    const v4, 0xd800

    .line 511
    .line 512
    .line 513
    if-lt v5, v4, :cond_1b

    .line 514
    .line 515
    and-int/lit16 v5, v5, 0x1fff

    .line 516
    .line 517
    move/from16 v33, v29

    .line 518
    .line 519
    move/from16 v29, v5

    .line 520
    .line 521
    move/from16 v5, v33

    .line 522
    .line 523
    const/16 v33, 0xd

    .line 524
    .line 525
    :goto_f
    add-int/lit8 v34, v5, 0x1

    .line 526
    .line 527
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    if-lt v5, v4, :cond_1a

    .line 532
    .line 533
    and-int/lit16 v4, v5, 0x1fff

    .line 534
    .line 535
    shl-int v4, v4, v33

    .line 536
    .line 537
    or-int v29, v29, v4

    .line 538
    .line 539
    add-int/lit8 v33, v33, 0xd

    .line 540
    .line 541
    move/from16 v5, v34

    .line 542
    .line 543
    const v4, 0xd800

    .line 544
    .line 545
    .line 546
    goto :goto_f

    .line 547
    :cond_1a
    shl-int v4, v5, v33

    .line 548
    .line 549
    or-int v5, v29, v4

    .line 550
    .line 551
    move/from16 v4, v34

    .line 552
    .line 553
    goto :goto_10

    .line 554
    :cond_1b
    move/from16 v4, v29

    .line 555
    .line 556
    :goto_10
    move/from16 v29, v4

    .line 557
    .line 558
    add-int/lit8 v4, v3, -0x33

    .line 559
    .line 560
    move/from16 v33, v5

    .line 561
    .line 562
    const/16 v5, 0x9

    .line 563
    .line 564
    if-eq v4, v5, :cond_1c

    .line 565
    .line 566
    const/16 v5, 0x11

    .line 567
    .line 568
    if-ne v4, v5, :cond_1d

    .line 569
    .line 570
    :cond_1c
    const/4 v5, 0x1

    .line 571
    goto :goto_13

    .line 572
    :cond_1d
    const/16 v5, 0xc

    .line 573
    .line 574
    if-ne v4, v5, :cond_20

    .line 575
    .line 576
    invoke-virtual {v0}, Lhm9;->a()I

    .line 577
    .line 578
    .line 579
    move-result v4

    .line 580
    const/4 v5, 0x1

    .line 581
    if-eq v4, v5, :cond_1f

    .line 582
    .line 583
    if-eqz v28, :cond_1e

    .line 584
    .line 585
    goto :goto_11

    .line 586
    :cond_1e
    const/4 v4, 0x0

    .line 587
    goto :goto_14

    .line 588
    :cond_1f
    :goto_11
    add-int/lit8 v4, v10, 0x1

    .line 589
    .line 590
    div-int/lit8 v19, v21, 0x3

    .line 591
    .line 592
    add-int v19, v19, v19

    .line 593
    .line 594
    add-int/lit8 v19, v19, 0x1

    .line 595
    .line 596
    aget-object v10, v24, v10

    .line 597
    .line 598
    aput-object v10, v6, v19

    .line 599
    .line 600
    :goto_12
    move v10, v4

    .line 601
    :cond_20
    move/from16 v4, v28

    .line 602
    .line 603
    goto :goto_14

    .line 604
    :goto_13
    add-int/lit8 v4, v10, 0x1

    .line 605
    .line 606
    div-int/lit8 v19, v21, 0x3

    .line 607
    .line 608
    add-int v19, v19, v19

    .line 609
    .line 610
    add-int/lit8 v30, v19, 0x1

    .line 611
    .line 612
    aget-object v5, v24, v10

    .line 613
    .line 614
    aput-object v5, v6, v30

    .line 615
    .line 616
    goto :goto_12

    .line 617
    :goto_14
    add-int v5, v33, v33

    .line 618
    .line 619
    move/from16 v28, v4

    .line 620
    .line 621
    aget-object v4, v24, v5

    .line 622
    .line 623
    move/from16 v30, v5

    .line 624
    .line 625
    instance-of v5, v4, Ljava/lang/reflect/Field;

    .line 626
    .line 627
    if-eqz v5, :cond_21

    .line 628
    .line 629
    check-cast v4, Ljava/lang/reflect/Field;

    .line 630
    .line 631
    goto :goto_15

    .line 632
    :cond_21
    check-cast v4, Ljava/lang/String;

    .line 633
    .line 634
    invoke-static {v8, v4}, Lpl9;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 635
    .line 636
    .line 637
    move-result-object v4

    .line 638
    aput-object v4, v24, v30

    .line 639
    .line 640
    :goto_15
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 641
    .line 642
    .line 643
    move-result-wide v4

    .line 644
    long-to-int v4, v4

    .line 645
    add-int/lit8 v5, v30, 0x1

    .line 646
    .line 647
    move/from16 v30, v4

    .line 648
    .line 649
    aget-object v4, v24, v5

    .line 650
    .line 651
    move/from16 v31, v5

    .line 652
    .line 653
    instance-of v5, v4, Ljava/lang/reflect/Field;

    .line 654
    .line 655
    if-eqz v5, :cond_22

    .line 656
    .line 657
    check-cast v4, Ljava/lang/reflect/Field;

    .line 658
    .line 659
    goto :goto_16

    .line 660
    :cond_22
    check-cast v4, Ljava/lang/String;

    .line 661
    .line 662
    invoke-static {v8, v4}, Lpl9;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 663
    .line 664
    .line 665
    move-result-object v4

    .line 666
    aput-object v4, v24, v31

    .line 667
    .line 668
    :goto_16
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 669
    .line 670
    .line 671
    move-result-wide v4

    .line 672
    long-to-int v4, v4

    .line 673
    move/from16 v31, v29

    .line 674
    .line 675
    move/from16 v5, v30

    .line 676
    .line 677
    const v25, 0xd800

    .line 678
    .line 679
    .line 680
    move-object/from16 v29, v6

    .line 681
    .line 682
    move/from16 v30, v7

    .line 683
    .line 684
    move-object v6, v8

    .line 685
    const/4 v7, 0x0

    .line 686
    move v8, v4

    .line 687
    :goto_17
    move/from16 v4, v28

    .line 688
    .line 689
    goto/16 :goto_24

    .line 690
    .line 691
    :cond_23
    add-int/lit8 v4, v10, 0x1

    .line 692
    .line 693
    aget-object v29, v24, v10

    .line 694
    .line 695
    move/from16 v33, v4

    .line 696
    .line 697
    move-object/from16 v4, v29

    .line 698
    .line 699
    check-cast v4, Ljava/lang/String;

    .line 700
    .line 701
    invoke-static {v8, v4}, Lpl9;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 702
    .line 703
    .line 704
    move-result-object v4

    .line 705
    move-object/from16 v29, v6

    .line 706
    .line 707
    const/16 v6, 0x9

    .line 708
    .line 709
    if-eq v3, v6, :cond_24

    .line 710
    .line 711
    const/16 v6, 0x11

    .line 712
    .line 713
    if-ne v3, v6, :cond_25

    .line 714
    .line 715
    :cond_24
    move/from16 v30, v7

    .line 716
    .line 717
    const/4 v7, 0x1

    .line 718
    goto/16 :goto_1d

    .line 719
    .line 720
    :cond_25
    const/16 v6, 0x1b

    .line 721
    .line 722
    if-eq v3, v6, :cond_2d

    .line 723
    .line 724
    const/16 v6, 0x31

    .line 725
    .line 726
    if-ne v3, v6, :cond_26

    .line 727
    .line 728
    add-int/lit8 v10, v10, 0x2

    .line 729
    .line 730
    move/from16 v30, v7

    .line 731
    .line 732
    const/4 v7, 0x1

    .line 733
    goto/16 :goto_1c

    .line 734
    .line 735
    :cond_26
    const/16 v6, 0xc

    .line 736
    .line 737
    if-eq v3, v6, :cond_2a

    .line 738
    .line 739
    const/16 v6, 0x1e

    .line 740
    .line 741
    if-eq v3, v6, :cond_2a

    .line 742
    .line 743
    const/16 v6, 0x2c

    .line 744
    .line 745
    if-ne v3, v6, :cond_27

    .line 746
    .line 747
    goto :goto_19

    .line 748
    :cond_27
    const/16 v6, 0x32

    .line 749
    .line 750
    if-ne v3, v6, :cond_29

    .line 751
    .line 752
    add-int/lit8 v6, v10, 0x2

    .line 753
    .line 754
    add-int/lit8 v30, v22, 0x1

    .line 755
    .line 756
    aput v21, v15, v22

    .line 757
    .line 758
    div-int/lit8 v22, v21, 0x3

    .line 759
    .line 760
    aget-object v31, v24, v33

    .line 761
    .line 762
    add-int v22, v22, v22

    .line 763
    .line 764
    aput-object v31, v29, v22

    .line 765
    .line 766
    if-eqz v28, :cond_28

    .line 767
    .line 768
    add-int/lit8 v22, v22, 0x1

    .line 769
    .line 770
    add-int/lit8 v10, v10, 0x3

    .line 771
    .line 772
    aget-object v6, v24, v6

    .line 773
    .line 774
    aput-object v6, v29, v22

    .line 775
    .line 776
    move-object v6, v8

    .line 777
    move/from16 v22, v30

    .line 778
    .line 779
    :goto_18
    move/from16 v30, v7

    .line 780
    .line 781
    goto :goto_1f

    .line 782
    :cond_28
    move v10, v6

    .line 783
    move-object v6, v8

    .line 784
    move/from16 v22, v30

    .line 785
    .line 786
    const/16 v28, 0x0

    .line 787
    .line 788
    goto :goto_18

    .line 789
    :cond_29
    move/from16 v30, v7

    .line 790
    .line 791
    const/4 v7, 0x1

    .line 792
    goto :goto_1e

    .line 793
    :cond_2a
    :goto_19
    invoke-virtual {v0}, Lhm9;->a()I

    .line 794
    .line 795
    .line 796
    move-result v6

    .line 797
    move/from16 v30, v7

    .line 798
    .line 799
    const/4 v7, 0x1

    .line 800
    if-eq v6, v7, :cond_2c

    .line 801
    .line 802
    if-eqz v28, :cond_2b

    .line 803
    .line 804
    goto :goto_1a

    .line 805
    :cond_2b
    move-object v6, v8

    .line 806
    move/from16 v10, v33

    .line 807
    .line 808
    const/16 v28, 0x0

    .line 809
    .line 810
    goto :goto_1f

    .line 811
    :cond_2c
    :goto_1a
    add-int/lit8 v10, v10, 0x2

    .line 812
    .line 813
    div-int/lit8 v6, v21, 0x3

    .line 814
    .line 815
    add-int/2addr v6, v6

    .line 816
    add-int/2addr v6, v7

    .line 817
    aget-object v19, v24, v33

    .line 818
    .line 819
    aput-object v19, v29, v6

    .line 820
    .line 821
    :goto_1b
    move-object v6, v8

    .line 822
    goto :goto_1f

    .line 823
    :cond_2d
    move/from16 v30, v7

    .line 824
    .line 825
    const/4 v7, 0x1

    .line 826
    add-int/lit8 v10, v10, 0x2

    .line 827
    .line 828
    :goto_1c
    div-int/lit8 v6, v21, 0x3

    .line 829
    .line 830
    add-int/2addr v6, v6

    .line 831
    add-int/2addr v6, v7

    .line 832
    aget-object v19, v24, v33

    .line 833
    .line 834
    aput-object v19, v29, v6

    .line 835
    .line 836
    goto :goto_1b

    .line 837
    :goto_1d
    div-int/lit8 v6, v21, 0x3

    .line 838
    .line 839
    add-int/2addr v6, v6

    .line 840
    add-int/2addr v6, v7

    .line 841
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 842
    .line 843
    .line 844
    move-result-object v10

    .line 845
    aput-object v10, v29, v6

    .line 846
    .line 847
    :goto_1e
    move-object v6, v8

    .line 848
    move/from16 v10, v33

    .line 849
    .line 850
    :goto_1f
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 851
    .line 852
    .line 853
    move-result-wide v7

    .line 854
    long-to-int v4, v7

    .line 855
    and-int/lit16 v7, v2, 0x1000

    .line 856
    .line 857
    const v8, 0xfffff

    .line 858
    .line 859
    .line 860
    if-eqz v7, :cond_31

    .line 861
    .line 862
    const/16 v7, 0x11

    .line 863
    .line 864
    if-gt v3, v7, :cond_31

    .line 865
    .line 866
    add-int/lit8 v7, v5, 0x1

    .line 867
    .line 868
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 869
    .line 870
    .line 871
    move-result v5

    .line 872
    const v8, 0xd800

    .line 873
    .line 874
    .line 875
    if-lt v5, v8, :cond_2f

    .line 876
    .line 877
    and-int/lit16 v5, v5, 0x1fff

    .line 878
    .line 879
    const/16 v25, 0xd

    .line 880
    .line 881
    :goto_20
    add-int/lit8 v31, v7, 0x1

    .line 882
    .line 883
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 884
    .line 885
    .line 886
    move-result v7

    .line 887
    if-lt v7, v8, :cond_2e

    .line 888
    .line 889
    and-int/lit16 v7, v7, 0x1fff

    .line 890
    .line 891
    shl-int v7, v7, v25

    .line 892
    .line 893
    or-int/2addr v5, v7

    .line 894
    add-int/lit8 v25, v25, 0xd

    .line 895
    .line 896
    move/from16 v7, v31

    .line 897
    .line 898
    goto :goto_20

    .line 899
    :cond_2e
    shl-int v7, v7, v25

    .line 900
    .line 901
    or-int/2addr v5, v7

    .line 902
    goto :goto_21

    .line 903
    :cond_2f
    move/from16 v31, v7

    .line 904
    .line 905
    :goto_21
    add-int v7, v30, v30

    .line 906
    .line 907
    div-int/lit8 v25, v5, 0x20

    .line 908
    .line 909
    add-int v25, v25, v7

    .line 910
    .line 911
    aget-object v7, v24, v25

    .line 912
    .line 913
    instance-of v8, v7, Ljava/lang/reflect/Field;

    .line 914
    .line 915
    if-eqz v8, :cond_30

    .line 916
    .line 917
    check-cast v7, Ljava/lang/reflect/Field;

    .line 918
    .line 919
    goto :goto_22

    .line 920
    :cond_30
    check-cast v7, Ljava/lang/String;

    .line 921
    .line 922
    invoke-static {v6, v7}, Lpl9;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 923
    .line 924
    .line 925
    move-result-object v7

    .line 926
    aput-object v7, v24, v25

    .line 927
    .line 928
    :goto_22
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 929
    .line 930
    .line 931
    move-result-wide v7

    .line 932
    long-to-int v7, v7

    .line 933
    rem-int/lit8 v5, v5, 0x20

    .line 934
    .line 935
    move v8, v7

    .line 936
    const v25, 0xd800

    .line 937
    .line 938
    .line 939
    goto :goto_23

    .line 940
    :cond_31
    const v25, 0xd800

    .line 941
    .line 942
    .line 943
    move/from16 v31, v5

    .line 944
    .line 945
    const/4 v5, 0x0

    .line 946
    :goto_23
    const/16 v7, 0x12

    .line 947
    .line 948
    if-lt v3, v7, :cond_32

    .line 949
    .line 950
    const/16 v7, 0x31

    .line 951
    .line 952
    if-gt v3, v7, :cond_32

    .line 953
    .line 954
    add-int/lit8 v7, v23, 0x1

    .line 955
    .line 956
    aput v4, v15, v23

    .line 957
    .line 958
    move/from16 v23, v7

    .line 959
    .line 960
    :cond_32
    move v7, v5

    .line 961
    move v5, v4

    .line 962
    goto/16 :goto_17

    .line 963
    .line 964
    :goto_24
    add-int/lit8 v28, v21, 0x1

    .line 965
    .line 966
    aput v26, v11, v21

    .line 967
    .line 968
    add-int/lit8 v26, v21, 0x2

    .line 969
    .line 970
    move-object/from16 v32, v1

    .line 971
    .line 972
    and-int/lit16 v1, v2, 0x200

    .line 973
    .line 974
    if-eqz v1, :cond_33

    .line 975
    .line 976
    const/high16 v1, 0x20000000

    .line 977
    .line 978
    goto :goto_25

    .line 979
    :cond_33
    const/4 v1, 0x0

    .line 980
    :goto_25
    and-int/lit16 v2, v2, 0x100

    .line 981
    .line 982
    if-eqz v2, :cond_34

    .line 983
    .line 984
    const/high16 v2, 0x10000000

    .line 985
    .line 986
    goto :goto_26

    .line 987
    :cond_34
    const/4 v2, 0x0

    .line 988
    :goto_26
    if-eqz v4, :cond_35

    .line 989
    .line 990
    const/high16 v4, -0x80000000

    .line 991
    .line 992
    goto :goto_27

    .line 993
    :cond_35
    const/4 v4, 0x0

    .line 994
    :goto_27
    shl-int/lit8 v3, v3, 0x14

    .line 995
    .line 996
    or-int/2addr v1, v2

    .line 997
    or-int/2addr v1, v4

    .line 998
    or-int/2addr v1, v3

    .line 999
    or-int/2addr v1, v5

    .line 1000
    aput v1, v11, v28

    .line 1001
    .line 1002
    add-int/lit8 v21, v21, 0x3

    .line 1003
    .line 1004
    shl-int/lit8 v1, v7, 0x14

    .line 1005
    .line 1006
    or-int/2addr v1, v8

    .line 1007
    aput v1, v11, v26

    .line 1008
    .line 1009
    move-object v8, v6

    .line 1010
    move-object/from16 v3, v24

    .line 1011
    .line 1012
    move/from16 v5, v25

    .line 1013
    .line 1014
    move/from16 v2, v27

    .line 1015
    .line 1016
    move-object/from16 v6, v29

    .line 1017
    .line 1018
    move/from16 v7, v30

    .line 1019
    .line 1020
    move/from16 v4, v31

    .line 1021
    .line 1022
    move-object/from16 v1, v32

    .line 1023
    .line 1024
    goto/16 :goto_b

    .line 1025
    .line 1026
    :cond_36
    move-object/from16 v29, v6

    .line 1027
    .line 1028
    new-instance v1, Lpl9;

    .line 1029
    .line 1030
    iget-object v14, v0, Lhm9;->a:Lmg9;

    .line 1031
    .line 1032
    move-object/from16 v18, p1

    .line 1033
    .line 1034
    move-object/from16 v19, p2

    .line 1035
    .line 1036
    move/from16 v17, v9

    .line 1037
    .line 1038
    move-object v10, v11

    .line 1039
    move-object/from16 v11, v29

    .line 1040
    .line 1041
    move-object v9, v1

    .line 1042
    invoke-direct/range {v9 .. v19}, Lpl9;-><init>([I[Ljava/lang/Object;IILmg9;[IIILns0;Llk;)V

    .line 1043
    .line 1044
    .line 1045
    return-object v9

    .line 1046
    :cond_37
    invoke-static {}, Le6;->d()V

    .line 1047
    .line 1048
    .line 1049
    const/4 v0, 0x0

    .line 1050
    return-object v0
.end method

.method public static s(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static u(I)I
    .locals 0

    .line 1
    ushr-int/lit8 p0, p0, 0x14

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method

.method public static w(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lpl9;->y(I)Ljm9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljm9;->zze()Lxi9;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object p2, Lpl9;->k:Lsun/misc/Unsafe;

    .line 17
    .line 18
    invoke-virtual {p0, p3}, Lpl9;->v(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const p3, 0xfffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p0, p3

    .line 26
    int-to-long v1, p0

    .line 27
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lpl9;->o(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Ljm9;->zze()Lxi9;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Ljm9;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method

.method public final a(Lxi9;)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lpl9;->a:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v0, v3, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lpl9;->v(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const v4, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v4, v3

    .line 16
    invoke-static {v3}, Lpl9;->u(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    aget v2, v2, v0

    .line 21
    .line 22
    int-to-long v4, v4

    .line 23
    const/16 v6, 0x4d5

    .line 24
    .line 25
    const/16 v7, 0x4cf

    .line 26
    .line 27
    const/16 v8, 0x25

    .line 28
    .line 29
    const/16 v9, 0x20

    .line 30
    .line 31
    packed-switch v3, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :pswitch_0
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    mul-int/lit8 v1, v1, 0x35

    .line 43
    .line 44
    invoke-static {p1, v4, v5}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    :goto_1
    add-int/2addr v2, v1

    .line 53
    move v1, v2

    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :pswitch_1
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    mul-int/lit8 v1, v1, 0x35

    .line 63
    .line 64
    invoke-static {p1, v4, v5}, Lpl9;->w(Ljava/lang/Object;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    sget-object v4, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    :goto_2
    ushr-long v4, v2, v9

    .line 71
    .line 72
    xor-long/2addr v2, v4

    .line 73
    long-to-int v2, v2

    .line 74
    add-int/2addr v1, v2

    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :pswitch_2
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    mul-int/lit8 v1, v1, 0x35

    .line 84
    .line 85
    invoke-static {p1, v4, v5}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    goto :goto_1

    .line 90
    :pswitch_3
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    mul-int/lit8 v1, v1, 0x35

    .line 97
    .line 98
    invoke-static {p1, v4, v5}, Lpl9;->w(Ljava/lang/Object;J)J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    sget-object v4, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :pswitch_4
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    mul-int/lit8 v1, v1, 0x35

    .line 112
    .line 113
    invoke-static {p1, v4, v5}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    goto :goto_1

    .line 118
    :pswitch_5
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    mul-int/lit8 v1, v1, 0x35

    .line 125
    .line 126
    invoke-static {p1, v4, v5}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    goto :goto_1

    .line 131
    :pswitch_6
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_2

    .line 136
    .line 137
    mul-int/lit8 v1, v1, 0x35

    .line 138
    .line 139
    invoke-static {p1, v4, v5}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    goto :goto_1

    .line 144
    :pswitch_7
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_2

    .line 149
    .line 150
    mul-int/lit8 v1, v1, 0x35

    .line 151
    .line 152
    invoke-static {p1, v4, v5}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    goto :goto_1

    .line 161
    :pswitch_8
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_2

    .line 166
    .line 167
    mul-int/lit8 v1, v1, 0x35

    .line 168
    .line 169
    invoke-static {p1, v4, v5}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    goto :goto_1

    .line 178
    :pswitch_9
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_2

    .line 183
    .line 184
    mul-int/lit8 v1, v1, 0x35

    .line 185
    .line 186
    invoke-static {p1, v4, v5}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    goto/16 :goto_1

    .line 197
    .line 198
    :pswitch_a
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_2

    .line 203
    .line 204
    mul-int/lit8 v1, v1, 0x35

    .line 205
    .line 206
    invoke-static {p1, v4, v5}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    check-cast v2, Ljava/lang/Boolean;

    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    sget-object v3, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 217
    .line 218
    if-eqz v2, :cond_0

    .line 219
    .line 220
    :goto_3
    move v6, v7

    .line 221
    :cond_0
    add-int/2addr v6, v1

    .line 222
    move v1, v6

    .line 223
    goto/16 :goto_5

    .line 224
    .line 225
    :pswitch_b
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_2

    .line 230
    .line 231
    mul-int/lit8 v1, v1, 0x35

    .line 232
    .line 233
    invoke-static {p1, v4, v5}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :pswitch_c
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_2

    .line 244
    .line 245
    mul-int/lit8 v1, v1, 0x35

    .line 246
    .line 247
    invoke-static {p1, v4, v5}, Lpl9;->w(Ljava/lang/Object;J)J

    .line 248
    .line 249
    .line 250
    move-result-wide v2

    .line 251
    sget-object v4, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 252
    .line 253
    goto/16 :goto_2

    .line 254
    .line 255
    :pswitch_d
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-eqz v2, :cond_2

    .line 260
    .line 261
    mul-int/lit8 v1, v1, 0x35

    .line 262
    .line 263
    invoke-static {p1, v4, v5}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :pswitch_e
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_2

    .line 274
    .line 275
    mul-int/lit8 v1, v1, 0x35

    .line 276
    .line 277
    invoke-static {p1, v4, v5}, Lpl9;->w(Ljava/lang/Object;J)J

    .line 278
    .line 279
    .line 280
    move-result-wide v2

    .line 281
    sget-object v4, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 282
    .line 283
    goto/16 :goto_2

    .line 284
    .line 285
    :pswitch_f
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-eqz v2, :cond_2

    .line 290
    .line 291
    mul-int/lit8 v1, v1, 0x35

    .line 292
    .line 293
    invoke-static {p1, v4, v5}, Lpl9;->w(Ljava/lang/Object;J)J

    .line 294
    .line 295
    .line 296
    move-result-wide v2

    .line 297
    sget-object v4, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 298
    .line 299
    goto/16 :goto_2

    .line 300
    .line 301
    :pswitch_10
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-eqz v2, :cond_2

    .line 306
    .line 307
    mul-int/lit8 v1, v1, 0x35

    .line 308
    .line 309
    invoke-static {p1, v4, v5}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    check-cast v2, Ljava/lang/Float;

    .line 314
    .line 315
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    goto/16 :goto_1

    .line 324
    .line 325
    :pswitch_11
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-eqz v2, :cond_2

    .line 330
    .line 331
    mul-int/lit8 v1, v1, 0x35

    .line 332
    .line 333
    invoke-static {p1, v4, v5}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    check-cast v2, Ljava/lang/Double;

    .line 338
    .line 339
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 340
    .line 341
    .line 342
    move-result-wide v2

    .line 343
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 344
    .line 345
    .line 346
    move-result-wide v2

    .line 347
    sget-object v4, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 348
    .line 349
    goto/16 :goto_2

    .line 350
    .line 351
    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 352
    .line 353
    invoke-static {p1, v4, v5}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    goto/16 :goto_1

    .line 362
    .line 363
    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 364
    .line 365
    invoke-static {p1, v4, v5}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    goto/16 :goto_1

    .line 374
    .line 375
    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 376
    .line 377
    invoke-static {p1, v4, v5}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    if-eqz v2, :cond_1

    .line 382
    .line 383
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 384
    .line 385
    .line 386
    move-result v8

    .line 387
    :cond_1
    :goto_4
    add-int/2addr v1, v8

    .line 388
    goto/16 :goto_5

    .line 389
    .line 390
    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 391
    .line 392
    invoke-static {p1, v4, v5}, Lun9;->f(Ljava/lang/Object;J)J

    .line 393
    .line 394
    .line 395
    move-result-wide v2

    .line 396
    sget-object v4, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 397
    .line 398
    goto/16 :goto_2

    .line 399
    .line 400
    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 401
    .line 402
    invoke-static {p1, v4, v5}, Lun9;->e(Ljava/lang/Object;J)I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    goto/16 :goto_1

    .line 407
    .line 408
    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 409
    .line 410
    invoke-static {p1, v4, v5}, Lun9;->f(Ljava/lang/Object;J)J

    .line 411
    .line 412
    .line 413
    move-result-wide v2

    .line 414
    sget-object v4, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 415
    .line 416
    goto/16 :goto_2

    .line 417
    .line 418
    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 419
    .line 420
    invoke-static {p1, v4, v5}, Lun9;->e(Ljava/lang/Object;J)I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    goto/16 :goto_1

    .line 425
    .line 426
    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 427
    .line 428
    invoke-static {p1, v4, v5}, Lun9;->e(Ljava/lang/Object;J)I

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    goto/16 :goto_1

    .line 433
    .line 434
    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 435
    .line 436
    invoke-static {p1, v4, v5}, Lun9;->e(Ljava/lang/Object;J)I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    goto/16 :goto_1

    .line 441
    .line 442
    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 443
    .line 444
    invoke-static {p1, v4, v5}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    goto/16 :goto_1

    .line 453
    .line 454
    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 455
    .line 456
    invoke-static {p1, v4, v5}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    if-eqz v2, :cond_1

    .line 461
    .line 462
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 463
    .line 464
    .line 465
    move-result v8

    .line 466
    goto :goto_4

    .line 467
    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 468
    .line 469
    invoke-static {p1, v4, v5}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    check-cast v2, Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    goto/16 :goto_1

    .line 480
    .line 481
    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 482
    .line 483
    sget-object v2, Lun9;->c:Lcm9;

    .line 484
    .line 485
    invoke-virtual {v2, p1, v4, v5}, Lcm9;->j(Ljava/lang/Object;J)Z

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    sget-object v3, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 490
    .line 491
    if-eqz v2, :cond_0

    .line 492
    .line 493
    goto/16 :goto_3

    .line 494
    .line 495
    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 496
    .line 497
    invoke-static {p1, v4, v5}, Lun9;->e(Ljava/lang/Object;J)I

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    goto/16 :goto_1

    .line 502
    .line 503
    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 504
    .line 505
    invoke-static {p1, v4, v5}, Lun9;->f(Ljava/lang/Object;J)J

    .line 506
    .line 507
    .line 508
    move-result-wide v2

    .line 509
    sget-object v4, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 510
    .line 511
    goto/16 :goto_2

    .line 512
    .line 513
    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 514
    .line 515
    invoke-static {p1, v4, v5}, Lun9;->e(Ljava/lang/Object;J)I

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    goto/16 :goto_1

    .line 520
    .line 521
    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 522
    .line 523
    invoke-static {p1, v4, v5}, Lun9;->f(Ljava/lang/Object;J)J

    .line 524
    .line 525
    .line 526
    move-result-wide v2

    .line 527
    sget-object v4, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 528
    .line 529
    goto/16 :goto_2

    .line 530
    .line 531
    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 532
    .line 533
    invoke-static {p1, v4, v5}, Lun9;->f(Ljava/lang/Object;J)J

    .line 534
    .line 535
    .line 536
    move-result-wide v2

    .line 537
    sget-object v4, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 538
    .line 539
    goto/16 :goto_2

    .line 540
    .line 541
    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 542
    .line 543
    sget-object v2, Lun9;->c:Lcm9;

    .line 544
    .line 545
    invoke-virtual {v2, p1, v4, v5}, Lcm9;->b(Ljava/lang/Object;J)F

    .line 546
    .line 547
    .line 548
    move-result v2

    .line 549
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    goto/16 :goto_1

    .line 554
    .line 555
    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 556
    .line 557
    sget-object v2, Lun9;->c:Lcm9;

    .line 558
    .line 559
    invoke-virtual {v2, p1, v4, v5}, Lcm9;->a(Ljava/lang/Object;J)D

    .line 560
    .line 561
    .line 562
    move-result-wide v2

    .line 563
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 564
    .line 565
    .line 566
    move-result-wide v2

    .line 567
    sget-object v4, Lnj9;->a:Ljava/nio/charset/Charset;

    .line 568
    .line 569
    goto/16 :goto_2

    .line 570
    .line 571
    :cond_2
    :goto_5
    add-int/lit8 v0, v0, 0x3

    .line 572
    .line 573
    goto/16 :goto_0

    .line 574
    .line 575
    :cond_3
    mul-int/lit8 v1, v1, 0x35

    .line 576
    .line 577
    iget-object p0, p1, Lxi9;->zzc:Lmn9;

    .line 578
    .line 579
    invoke-virtual {p0}, Lmn9;->hashCode()I

    .line 580
    .line 581
    .line 582
    move-result p0

    .line 583
    add-int/2addr p0, v1

    .line 584
    return p0

    .line 585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
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
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public final b(Ljava/lang/Object;[BIILrg9;)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v6, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lpl9;->q(Ljava/lang/Object;[BIIILrg9;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Ljava/lang/Object;Lom5;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    iget-object v2, v6, Lom5;->a:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v7, v2

    .line 10
    check-cast v7, Lnh9;

    .line 11
    .line 12
    sget-object v8, Lpl9;->k:Lsun/misc/Unsafe;

    .line 13
    .line 14
    const v10, 0xfffff

    .line 15
    .line 16
    .line 17
    move v3, v10

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    iget-object v5, v0, Lpl9;->a:[I

    .line 21
    .line 22
    array-length v11, v5

    .line 23
    if-ge v2, v11, :cond_b

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lpl9;->v(I)I

    .line 26
    .line 27
    .line 28
    move-result v11

    .line 29
    invoke-static {v11}, Lpl9;->u(I)I

    .line 30
    .line 31
    .line 32
    move-result v12

    .line 33
    aget v13, v5, v2

    .line 34
    .line 35
    const/16 v14, 0x11

    .line 36
    .line 37
    const/4 v15, 0x1

    .line 38
    if-gt v12, v14, :cond_2

    .line 39
    .line 40
    add-int/lit8 v14, v2, 0x2

    .line 41
    .line 42
    aget v14, v5, v14

    .line 43
    .line 44
    and-int v9, v14, v10

    .line 45
    .line 46
    if-eq v9, v3, :cond_1

    .line 47
    .line 48
    if-ne v9, v10, :cond_0

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    int-to-long v3, v9

    .line 53
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    move v4, v3

    .line 58
    :goto_1
    move v3, v9

    .line 59
    :cond_1
    ushr-int/lit8 v9, v14, 0x14

    .line 60
    .line 61
    shl-int v9, v15, v9

    .line 62
    .line 63
    move/from16 v19, v9

    .line 64
    .line 65
    move-object v9, v5

    .line 66
    move/from16 v5, v19

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move-object v9, v5

    .line 70
    const/4 v5, 0x0

    .line 71
    :goto_2
    and-int/2addr v11, v10

    .line 72
    int-to-long v10, v11

    .line 73
    const/16 v16, 0x3f

    .line 74
    .line 75
    const-string v14, "CodedOutputStream was writing to a flat byte array and ran out of space."

    .line 76
    .line 77
    const/4 v15, 0x3

    .line 78
    packed-switch v12, :pswitch_data_0

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_3
    const/4 v12, 0x0

    .line 82
    goto/16 :goto_d

    .line 83
    .line 84
    :pswitch_0
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_3

    .line 89
    .line 90
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v0, v2}, Lpl9;->y(I)Ljm9;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    check-cast v5, Lmg9;

    .line 99
    .line 100
    invoke-virtual {v7, v13, v15}, Lnh9;->i(II)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v9, v5, v6}, Ljm9;->c(Ljava/lang/Object;Lom5;)V

    .line 104
    .line 105
    .line 106
    const/4 v5, 0x4

    .line 107
    invoke-virtual {v7, v13, v5}, Lnh9;->i(II)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :pswitch_1
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_3

    .line 116
    .line 117
    invoke-static {v1, v10, v11}, Lpl9;->w(Ljava/lang/Object;J)J

    .line 118
    .line 119
    .line 120
    move-result-wide v9

    .line 121
    add-long v11, v9, v9

    .line 122
    .line 123
    shr-long v9, v9, v16

    .line 124
    .line 125
    xor-long/2addr v9, v11

    .line 126
    invoke-virtual {v7, v13, v9, v10}, Lnh9;->l(IJ)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :pswitch_2
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_3

    .line 135
    .line 136
    invoke-static {v1, v10, v11}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    add-int v9, v5, v5

    .line 141
    .line 142
    shr-int/lit8 v5, v5, 0x1f

    .line 143
    .line 144
    xor-int/2addr v5, v9

    .line 145
    invoke-virtual {v7, v13, v5}, Lnh9;->j(II)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :pswitch_3
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_3

    .line 154
    .line 155
    invoke-static {v1, v10, v11}, Lpl9;->w(Ljava/lang/Object;J)J

    .line 156
    .line 157
    .line 158
    move-result-wide v9

    .line 159
    invoke-virtual {v7, v13, v9, v10}, Lnh9;->e(IJ)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :pswitch_4
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_3

    .line 168
    .line 169
    invoke-static {v1, v10, v11}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    invoke-virtual {v7, v13, v5}, Lnh9;->c(II)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :pswitch_5
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_3

    .line 182
    .line 183
    invoke-static {v1, v10, v11}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    invoke-virtual {v7, v13, v5}, Lnh9;->g(II)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :pswitch_6
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_3

    .line 196
    .line 197
    invoke-static {v1, v10, v11}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    invoke-virtual {v7, v13, v5}, Lnh9;->j(II)V

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :pswitch_7
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-eqz v5, :cond_3

    .line 210
    .line 211
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    check-cast v5, Ldh9;

    .line 216
    .line 217
    shl-int/lit8 v9, v13, 0x3

    .line 218
    .line 219
    or-int/lit8 v9, v9, 0x2

    .line 220
    .line 221
    invoke-virtual {v7, v9}, Lnh9;->k(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Ldh9;->f()I

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    invoke-virtual {v7, v9}, Lnh9;->k(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5, v7}, Ldh9;->i(Lnh9;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_3

    .line 235
    .line 236
    :pswitch_8
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-eqz v5, :cond_3

    .line 241
    .line 242
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-virtual {v0, v2}, Lpl9;->y(I)Ljm9;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    invoke-virtual {v6, v13, v5, v9}, Lom5;->m(ILjava/lang/Object;Ljm9;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_3

    .line 254
    .line 255
    :pswitch_9
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eqz v5, :cond_3

    .line 260
    .line 261
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    instance-of v9, v5, Ljava/lang/String;

    .line 266
    .line 267
    if-eqz v9, :cond_5

    .line 268
    .line 269
    check-cast v5, Ljava/lang/String;

    .line 270
    .line 271
    shl-int/lit8 v9, v13, 0x3

    .line 272
    .line 273
    or-int/lit8 v9, v9, 0x2

    .line 274
    .line 275
    invoke-virtual {v7, v9}, Lnh9;->k(I)V

    .line 276
    .line 277
    .line 278
    iget v9, v7, Lnh9;->c:I

    .line 279
    .line 280
    iget-object v10, v7, Lnh9;->b:[B

    .line 281
    .line 282
    iget v11, v7, Lnh9;->d:I

    .line 283
    .line 284
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 285
    .line 286
    .line 287
    move-result v12

    .line 288
    mul-int/2addr v12, v15

    .line 289
    invoke-static {v12}, Lnh9;->n(I)I

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 294
    .line 295
    .line 296
    move-result v13

    .line 297
    invoke-static {v13}, Lnh9;->n(I)I

    .line 298
    .line 299
    .line 300
    move-result v13

    .line 301
    if-ne v13, v12, :cond_4

    .line 302
    .line 303
    add-int v12, v11, v13

    .line 304
    .line 305
    iput v12, v7, Lnh9;->d:I

    .line 306
    .line 307
    sub-int/2addr v9, v12

    .line 308
    invoke-static {v5, v10, v12, v9}, Lxn9;->a(Ljava/lang/String;[BII)I

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    iput v11, v7, Lnh9;->d:I

    .line 313
    .line 314
    sub-int v9, v5, v11

    .line 315
    .line 316
    sub-int/2addr v9, v13

    .line 317
    invoke-virtual {v7, v9}, Lnh9;->k(I)V

    .line 318
    .line 319
    .line 320
    iput v5, v7, Lnh9;->d:I

    .line 321
    .line 322
    goto/16 :goto_3

    .line 323
    .line 324
    :catch_0
    move-exception v0

    .line 325
    goto :goto_4

    .line 326
    :cond_4
    invoke-static {v5}, Lxn9;->b(Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    move-result v11

    .line 330
    invoke-virtual {v7, v11}, Lnh9;->k(I)V

    .line 331
    .line 332
    .line 333
    iget v11, v7, Lnh9;->d:I

    .line 334
    .line 335
    sub-int/2addr v9, v11

    .line 336
    invoke-static {v5, v10, v11, v9}, Lxn9;->a(Ljava/lang/String;[BII)I

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    iput v5, v7, Lnh9;->d:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :goto_4
    new-instance v1, Luh9;

    .line 345
    .line 346
    invoke-direct {v1, v14, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    .line 348
    .line 349
    throw v1

    .line 350
    :cond_5
    check-cast v5, Ldh9;

    .line 351
    .line 352
    shl-int/lit8 v9, v13, 0x3

    .line 353
    .line 354
    or-int/lit8 v9, v9, 0x2

    .line 355
    .line 356
    invoke-virtual {v7, v9}, Lnh9;->k(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v5}, Ldh9;->f()I

    .line 360
    .line 361
    .line 362
    move-result v9

    .line 363
    invoke-virtual {v7, v9}, Lnh9;->k(I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v5, v7}, Ldh9;->i(Lnh9;)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_3

    .line 370
    .line 371
    :pswitch_a
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    if-eqz v5, :cond_3

    .line 376
    .line 377
    invoke-static {v1, v10, v11}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    check-cast v5, Ljava/lang/Boolean;

    .line 382
    .line 383
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 384
    .line 385
    .line 386
    move-result v5

    .line 387
    shl-int/lit8 v9, v13, 0x3

    .line 388
    .line 389
    invoke-virtual {v7, v9}, Lnh9;->k(I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v7, v5}, Lnh9;->a(B)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_3

    .line 396
    .line 397
    :pswitch_b
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    if-eqz v5, :cond_3

    .line 402
    .line 403
    invoke-static {v1, v10, v11}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    invoke-virtual {v7, v13, v5}, Lnh9;->c(II)V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_3

    .line 411
    .line 412
    :pswitch_c
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    if-eqz v5, :cond_3

    .line 417
    .line 418
    invoke-static {v1, v10, v11}, Lpl9;->w(Ljava/lang/Object;J)J

    .line 419
    .line 420
    .line 421
    move-result-wide v9

    .line 422
    invoke-virtual {v7, v13, v9, v10}, Lnh9;->e(IJ)V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_3

    .line 426
    .line 427
    :pswitch_d
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    if-eqz v5, :cond_3

    .line 432
    .line 433
    invoke-static {v1, v10, v11}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    invoke-virtual {v7, v13, v5}, Lnh9;->g(II)V

    .line 438
    .line 439
    .line 440
    goto/16 :goto_3

    .line 441
    .line 442
    :pswitch_e
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    if-eqz v5, :cond_3

    .line 447
    .line 448
    invoke-static {v1, v10, v11}, Lpl9;->w(Ljava/lang/Object;J)J

    .line 449
    .line 450
    .line 451
    move-result-wide v9

    .line 452
    invoke-virtual {v7, v13, v9, v10}, Lnh9;->l(IJ)V

    .line 453
    .line 454
    .line 455
    goto/16 :goto_3

    .line 456
    .line 457
    :pswitch_f
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    if-eqz v5, :cond_3

    .line 462
    .line 463
    invoke-static {v1, v10, v11}, Lpl9;->w(Ljava/lang/Object;J)J

    .line 464
    .line 465
    .line 466
    move-result-wide v9

    .line 467
    invoke-virtual {v7, v13, v9, v10}, Lnh9;->l(IJ)V

    .line 468
    .line 469
    .line 470
    goto/16 :goto_3

    .line 471
    .line 472
    :pswitch_10
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 473
    .line 474
    .line 475
    move-result v5

    .line 476
    if-eqz v5, :cond_3

    .line 477
    .line 478
    invoke-static {v1, v10, v11}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    check-cast v5, Ljava/lang/Float;

    .line 483
    .line 484
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 489
    .line 490
    .line 491
    move-result v5

    .line 492
    invoke-virtual {v7, v13, v5}, Lnh9;->c(II)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_3

    .line 496
    .line 497
    :pswitch_11
    invoke-virtual {v0, v1, v13, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 498
    .line 499
    .line 500
    move-result v5

    .line 501
    if-eqz v5, :cond_3

    .line 502
    .line 503
    invoke-static {v1, v10, v11}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v5

    .line 507
    check-cast v5, Ljava/lang/Double;

    .line 508
    .line 509
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 510
    .line 511
    .line 512
    move-result-wide v9

    .line 513
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 514
    .line 515
    .line 516
    move-result-wide v9

    .line 517
    invoke-virtual {v7, v13, v9, v10}, Lnh9;->e(IJ)V

    .line 518
    .line 519
    .line 520
    goto/16 :goto_3

    .line 521
    .line 522
    :pswitch_12
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    if-nez v5, :cond_6

    .line 527
    .line 528
    goto/16 :goto_3

    .line 529
    .line 530
    :cond_6
    div-int/2addr v2, v15

    .line 531
    iget-object v0, v0, Lpl9;->b:[Ljava/lang/Object;

    .line 532
    .line 533
    add-int/2addr v2, v2

    .line 534
    aget-object v0, v0, v2

    .line 535
    .line 536
    invoke-static {v0}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    throw v0

    .line 541
    :pswitch_13
    aget v5, v9, v2

    .line 542
    .line 543
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v9

    .line 547
    check-cast v9, Ljava/util/List;

    .line 548
    .line 549
    invoke-virtual {v0, v2}, Lpl9;->y(I)Ljm9;

    .line 550
    .line 551
    .line 552
    move-result-object v10

    .line 553
    sget-object v11, Lnm9;->a:Lns0;

    .line 554
    .line 555
    if-eqz v9, :cond_3

    .line 556
    .line 557
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 558
    .line 559
    .line 560
    move-result v11

    .line 561
    if-nez v11, :cond_3

    .line 562
    .line 563
    const/4 v11, 0x0

    .line 564
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 565
    .line 566
    .line 567
    move-result v12

    .line 568
    if-ge v11, v12, :cond_3

    .line 569
    .line 570
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v12

    .line 574
    check-cast v12, Lmg9;

    .line 575
    .line 576
    invoke-virtual {v7, v5, v15}, Lnh9;->i(II)V

    .line 577
    .line 578
    .line 579
    invoke-interface {v10, v12, v6}, Ljm9;->c(Ljava/lang/Object;Lom5;)V

    .line 580
    .line 581
    .line 582
    const/4 v12, 0x4

    .line 583
    invoke-virtual {v7, v5, v12}, Lnh9;->i(II)V

    .line 584
    .line 585
    .line 586
    add-int/lit8 v11, v11, 0x1

    .line 587
    .line 588
    goto :goto_5

    .line 589
    :pswitch_14
    aget v5, v9, v2

    .line 590
    .line 591
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v9

    .line 595
    check-cast v9, Ljava/util/List;

    .line 596
    .line 597
    const/4 v12, 0x1

    .line 598
    invoke-static {v5, v9, v6, v12}, Lnm9;->c(ILjava/util/List;Lom5;Z)V

    .line 599
    .line 600
    .line 601
    goto/16 :goto_3

    .line 602
    .line 603
    :pswitch_15
    const/4 v12, 0x1

    .line 604
    aget v5, v9, v2

    .line 605
    .line 606
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v9

    .line 610
    check-cast v9, Ljava/util/List;

    .line 611
    .line 612
    invoke-static {v5, v9, v6, v12}, Lnm9;->b(ILjava/util/List;Lom5;Z)V

    .line 613
    .line 614
    .line 615
    goto/16 :goto_3

    .line 616
    .line 617
    :pswitch_16
    const/4 v12, 0x1

    .line 618
    aget v5, v9, v2

    .line 619
    .line 620
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v9

    .line 624
    check-cast v9, Ljava/util/List;

    .line 625
    .line 626
    invoke-static {v5, v9, v6, v12}, Lnm9;->a(ILjava/util/List;Lom5;Z)V

    .line 627
    .line 628
    .line 629
    goto/16 :goto_3

    .line 630
    .line 631
    :pswitch_17
    const/4 v12, 0x1

    .line 632
    aget v5, v9, v2

    .line 633
    .line 634
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v9

    .line 638
    check-cast v9, Ljava/util/List;

    .line 639
    .line 640
    invoke-static {v5, v9, v6, v12}, Lnm9;->y(ILjava/util/List;Lom5;Z)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_3

    .line 644
    .line 645
    :pswitch_18
    const/4 v12, 0x1

    .line 646
    aget v5, v9, v2

    .line 647
    .line 648
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v9

    .line 652
    check-cast v9, Ljava/util/List;

    .line 653
    .line 654
    invoke-static {v5, v9, v6, v12}, Lnm9;->s(ILjava/util/List;Lom5;Z)V

    .line 655
    .line 656
    .line 657
    goto/16 :goto_3

    .line 658
    .line 659
    :pswitch_19
    const/4 v12, 0x1

    .line 660
    aget v5, v9, v2

    .line 661
    .line 662
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v9

    .line 666
    check-cast v9, Ljava/util/List;

    .line 667
    .line 668
    invoke-static {v5, v9, v6, v12}, Lnm9;->d(ILjava/util/List;Lom5;Z)V

    .line 669
    .line 670
    .line 671
    goto/16 :goto_3

    .line 672
    .line 673
    :pswitch_1a
    const/4 v12, 0x1

    .line 674
    aget v5, v9, v2

    .line 675
    .line 676
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v9

    .line 680
    check-cast v9, Ljava/util/List;

    .line 681
    .line 682
    invoke-static {v5, v9, v6, v12}, Lnm9;->q(ILjava/util/List;Lom5;Z)V

    .line 683
    .line 684
    .line 685
    goto/16 :goto_3

    .line 686
    .line 687
    :pswitch_1b
    const/4 v12, 0x1

    .line 688
    aget v5, v9, v2

    .line 689
    .line 690
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v9

    .line 694
    check-cast v9, Ljava/util/List;

    .line 695
    .line 696
    invoke-static {v5, v9, v6, v12}, Lnm9;->t(ILjava/util/List;Lom5;Z)V

    .line 697
    .line 698
    .line 699
    goto/16 :goto_3

    .line 700
    .line 701
    :pswitch_1c
    const/4 v12, 0x1

    .line 702
    aget v5, v9, v2

    .line 703
    .line 704
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v9

    .line 708
    check-cast v9, Ljava/util/List;

    .line 709
    .line 710
    invoke-static {v5, v9, v6, v12}, Lnm9;->u(ILjava/util/List;Lom5;Z)V

    .line 711
    .line 712
    .line 713
    goto/16 :goto_3

    .line 714
    .line 715
    :pswitch_1d
    const/4 v12, 0x1

    .line 716
    aget v5, v9, v2

    .line 717
    .line 718
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v9

    .line 722
    check-cast v9, Ljava/util/List;

    .line 723
    .line 724
    invoke-static {v5, v9, v6, v12}, Lnm9;->w(ILjava/util/List;Lom5;Z)V

    .line 725
    .line 726
    .line 727
    goto/16 :goto_3

    .line 728
    .line 729
    :pswitch_1e
    const/4 v12, 0x1

    .line 730
    aget v5, v9, v2

    .line 731
    .line 732
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v9

    .line 736
    check-cast v9, Ljava/util/List;

    .line 737
    .line 738
    invoke-static {v5, v9, v6, v12}, Lnm9;->e(ILjava/util/List;Lom5;Z)V

    .line 739
    .line 740
    .line 741
    goto/16 :goto_3

    .line 742
    .line 743
    :pswitch_1f
    const/4 v12, 0x1

    .line 744
    aget v5, v9, v2

    .line 745
    .line 746
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v9

    .line 750
    check-cast v9, Ljava/util/List;

    .line 751
    .line 752
    invoke-static {v5, v9, v6, v12}, Lnm9;->x(ILjava/util/List;Lom5;Z)V

    .line 753
    .line 754
    .line 755
    goto/16 :goto_3

    .line 756
    .line 757
    :pswitch_20
    const/4 v12, 0x1

    .line 758
    aget v5, v9, v2

    .line 759
    .line 760
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v9

    .line 764
    check-cast v9, Ljava/util/List;

    .line 765
    .line 766
    invoke-static {v5, v9, v6, v12}, Lnm9;->v(ILjava/util/List;Lom5;Z)V

    .line 767
    .line 768
    .line 769
    goto/16 :goto_3

    .line 770
    .line 771
    :pswitch_21
    const/4 v12, 0x1

    .line 772
    aget v5, v9, v2

    .line 773
    .line 774
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v9

    .line 778
    check-cast v9, Ljava/util/List;

    .line 779
    .line 780
    invoke-static {v5, v9, v6, v12}, Lnm9;->r(ILjava/util/List;Lom5;Z)V

    .line 781
    .line 782
    .line 783
    goto/16 :goto_3

    .line 784
    .line 785
    :pswitch_22
    aget v5, v9, v2

    .line 786
    .line 787
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v9

    .line 791
    check-cast v9, Ljava/util/List;

    .line 792
    .line 793
    const/4 v12, 0x0

    .line 794
    invoke-static {v5, v9, v6, v12}, Lnm9;->c(ILjava/util/List;Lom5;Z)V

    .line 795
    .line 796
    .line 797
    goto/16 :goto_d

    .line 798
    .line 799
    :pswitch_23
    const/4 v12, 0x0

    .line 800
    aget v5, v9, v2

    .line 801
    .line 802
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v9

    .line 806
    check-cast v9, Ljava/util/List;

    .line 807
    .line 808
    invoke-static {v5, v9, v6, v12}, Lnm9;->b(ILjava/util/List;Lom5;Z)V

    .line 809
    .line 810
    .line 811
    goto/16 :goto_d

    .line 812
    .line 813
    :pswitch_24
    const/4 v12, 0x0

    .line 814
    aget v5, v9, v2

    .line 815
    .line 816
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v9

    .line 820
    check-cast v9, Ljava/util/List;

    .line 821
    .line 822
    invoke-static {v5, v9, v6, v12}, Lnm9;->a(ILjava/util/List;Lom5;Z)V

    .line 823
    .line 824
    .line 825
    goto/16 :goto_d

    .line 826
    .line 827
    :pswitch_25
    const/4 v12, 0x0

    .line 828
    aget v5, v9, v2

    .line 829
    .line 830
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v9

    .line 834
    check-cast v9, Ljava/util/List;

    .line 835
    .line 836
    invoke-static {v5, v9, v6, v12}, Lnm9;->y(ILjava/util/List;Lom5;Z)V

    .line 837
    .line 838
    .line 839
    goto/16 :goto_d

    .line 840
    .line 841
    :pswitch_26
    const/4 v12, 0x0

    .line 842
    aget v5, v9, v2

    .line 843
    .line 844
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object v9

    .line 848
    check-cast v9, Ljava/util/List;

    .line 849
    .line 850
    invoke-static {v5, v9, v6, v12}, Lnm9;->s(ILjava/util/List;Lom5;Z)V

    .line 851
    .line 852
    .line 853
    goto/16 :goto_d

    .line 854
    .line 855
    :pswitch_27
    const/4 v12, 0x0

    .line 856
    aget v5, v9, v2

    .line 857
    .line 858
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v9

    .line 862
    check-cast v9, Ljava/util/List;

    .line 863
    .line 864
    invoke-static {v5, v9, v6, v12}, Lnm9;->d(ILjava/util/List;Lom5;Z)V

    .line 865
    .line 866
    .line 867
    goto/16 :goto_d

    .line 868
    .line 869
    :pswitch_28
    aget v5, v9, v2

    .line 870
    .line 871
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object v9

    .line 875
    check-cast v9, Ljava/util/List;

    .line 876
    .line 877
    sget-object v10, Lnm9;->a:Lns0;

    .line 878
    .line 879
    if-eqz v9, :cond_3

    .line 880
    .line 881
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 882
    .line 883
    .line 884
    move-result v10

    .line 885
    if-nez v10, :cond_3

    .line 886
    .line 887
    const/4 v12, 0x0

    .line 888
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 889
    .line 890
    .line 891
    move-result v10

    .line 892
    if-ge v12, v10, :cond_3

    .line 893
    .line 894
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v10

    .line 898
    check-cast v10, Ldh9;

    .line 899
    .line 900
    shl-int/lit8 v11, v5, 0x3

    .line 901
    .line 902
    or-int/lit8 v11, v11, 0x2

    .line 903
    .line 904
    invoke-virtual {v7, v11}, Lnh9;->k(I)V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v10}, Ldh9;->f()I

    .line 908
    .line 909
    .line 910
    move-result v11

    .line 911
    invoke-virtual {v7, v11}, Lnh9;->k(I)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v10, v7}, Ldh9;->i(Lnh9;)V

    .line 915
    .line 916
    .line 917
    add-int/lit8 v12, v12, 0x1

    .line 918
    .line 919
    goto :goto_6

    .line 920
    :pswitch_29
    aget v5, v9, v2

    .line 921
    .line 922
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v9

    .line 926
    check-cast v9, Ljava/util/List;

    .line 927
    .line 928
    invoke-virtual {v0, v2}, Lpl9;->y(I)Ljm9;

    .line 929
    .line 930
    .line 931
    move-result-object v10

    .line 932
    sget-object v11, Lnm9;->a:Lns0;

    .line 933
    .line 934
    if-eqz v9, :cond_3

    .line 935
    .line 936
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 937
    .line 938
    .line 939
    move-result v11

    .line 940
    if-nez v11, :cond_3

    .line 941
    .line 942
    const/4 v12, 0x0

    .line 943
    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 944
    .line 945
    .line 946
    move-result v11

    .line 947
    if-ge v12, v11, :cond_3

    .line 948
    .line 949
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v11

    .line 953
    invoke-virtual {v6, v5, v11, v10}, Lom5;->m(ILjava/lang/Object;Ljm9;)V

    .line 954
    .line 955
    .line 956
    add-int/lit8 v12, v12, 0x1

    .line 957
    .line 958
    goto :goto_7

    .line 959
    :pswitch_2a
    aget v5, v9, v2

    .line 960
    .line 961
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v9

    .line 965
    check-cast v9, Ljava/util/List;

    .line 966
    .line 967
    sget-object v10, Lnm9;->a:Lns0;

    .line 968
    .line 969
    if-eqz v9, :cond_3

    .line 970
    .line 971
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 972
    .line 973
    .line 974
    move-result v10

    .line 975
    if-nez v10, :cond_3

    .line 976
    .line 977
    const/4 v12, 0x0

    .line 978
    :goto_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 979
    .line 980
    .line 981
    move-result v10

    .line 982
    if-ge v12, v10, :cond_3

    .line 983
    .line 984
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-result-object v10

    .line 988
    check-cast v10, Ljava/lang/String;

    .line 989
    .line 990
    shl-int/lit8 v11, v5, 0x3

    .line 991
    .line 992
    or-int/lit8 v11, v11, 0x2

    .line 993
    .line 994
    invoke-virtual {v7, v11}, Lnh9;->k(I)V

    .line 995
    .line 996
    .line 997
    iget v11, v7, Lnh9;->c:I

    .line 998
    .line 999
    iget-object v13, v7, Lnh9;->b:[B

    .line 1000
    .line 1001
    move/from16 v17, v15

    .line 1002
    .line 1003
    iget v15, v7, Lnh9;->d:I

    .line 1004
    .line 1005
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 1006
    .line 1007
    .line 1008
    move-result v16

    .line 1009
    mul-int/lit8 v16, v16, 0x3

    .line 1010
    .line 1011
    invoke-static/range {v16 .. v16}, Lnh9;->n(I)I

    .line 1012
    .line 1013
    .line 1014
    move-result v0

    .line 1015
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 1016
    .line 1017
    .line 1018
    move-result v16

    .line 1019
    move/from16 v18, v2

    .line 1020
    .line 1021
    invoke-static/range {v16 .. v16}, Lnh9;->n(I)I

    .line 1022
    .line 1023
    .line 1024
    move-result v2

    .line 1025
    if-ne v2, v0, :cond_7

    .line 1026
    .line 1027
    add-int v0, v15, v2

    .line 1028
    .line 1029
    iput v0, v7, Lnh9;->d:I

    .line 1030
    .line 1031
    sub-int/2addr v11, v0

    .line 1032
    invoke-static {v10, v13, v0, v11}, Lxn9;->a(Ljava/lang/String;[BII)I

    .line 1033
    .line 1034
    .line 1035
    move-result v0

    .line 1036
    iput v15, v7, Lnh9;->d:I

    .line 1037
    .line 1038
    sub-int v10, v0, v15

    .line 1039
    .line 1040
    sub-int/2addr v10, v2

    .line 1041
    invoke-virtual {v7, v10}, Lnh9;->k(I)V

    .line 1042
    .line 1043
    .line 1044
    iput v0, v7, Lnh9;->d:I

    .line 1045
    .line 1046
    goto :goto_9

    .line 1047
    :catch_1
    move-exception v0

    .line 1048
    goto :goto_a

    .line 1049
    :cond_7
    invoke-static {v10}, Lxn9;->b(Ljava/lang/String;)I

    .line 1050
    .line 1051
    .line 1052
    move-result v0

    .line 1053
    invoke-virtual {v7, v0}, Lnh9;->k(I)V

    .line 1054
    .line 1055
    .line 1056
    iget v0, v7, Lnh9;->d:I

    .line 1057
    .line 1058
    sub-int/2addr v11, v0

    .line 1059
    invoke-static {v10, v13, v0, v11}, Lxn9;->a(Ljava/lang/String;[BII)I

    .line 1060
    .line 1061
    .line 1062
    move-result v0

    .line 1063
    iput v0, v7, Lnh9;->d:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1064
    .line 1065
    :goto_9
    add-int/lit8 v12, v12, 0x1

    .line 1066
    .line 1067
    move-object/from16 v0, p0

    .line 1068
    .line 1069
    move/from16 v15, v17

    .line 1070
    .line 1071
    move/from16 v2, v18

    .line 1072
    .line 1073
    goto :goto_8

    .line 1074
    :goto_a
    new-instance v1, Luh9;

    .line 1075
    .line 1076
    invoke-direct {v1, v14, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1077
    .line 1078
    .line 1079
    throw v1

    .line 1080
    :pswitch_2b
    move/from16 v18, v2

    .line 1081
    .line 1082
    aget v0, v9, v18

    .line 1083
    .line 1084
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v2

    .line 1088
    check-cast v2, Ljava/util/List;

    .line 1089
    .line 1090
    const/4 v12, 0x0

    .line 1091
    invoke-static {v0, v2, v6, v12}, Lnm9;->q(ILjava/util/List;Lom5;Z)V

    .line 1092
    .line 1093
    .line 1094
    :goto_b
    move/from16 v2, v18

    .line 1095
    .line 1096
    goto/16 :goto_d

    .line 1097
    .line 1098
    :pswitch_2c
    move/from16 v18, v2

    .line 1099
    .line 1100
    const/4 v12, 0x0

    .line 1101
    aget v0, v9, v18

    .line 1102
    .line 1103
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v2

    .line 1107
    check-cast v2, Ljava/util/List;

    .line 1108
    .line 1109
    invoke-static {v0, v2, v6, v12}, Lnm9;->t(ILjava/util/List;Lom5;Z)V

    .line 1110
    .line 1111
    .line 1112
    goto :goto_b

    .line 1113
    :pswitch_2d
    move/from16 v18, v2

    .line 1114
    .line 1115
    const/4 v12, 0x0

    .line 1116
    aget v0, v9, v18

    .line 1117
    .line 1118
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v2

    .line 1122
    check-cast v2, Ljava/util/List;

    .line 1123
    .line 1124
    invoke-static {v0, v2, v6, v12}, Lnm9;->u(ILjava/util/List;Lom5;Z)V

    .line 1125
    .line 1126
    .line 1127
    goto :goto_b

    .line 1128
    :pswitch_2e
    move/from16 v18, v2

    .line 1129
    .line 1130
    const/4 v12, 0x0

    .line 1131
    aget v0, v9, v18

    .line 1132
    .line 1133
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v2

    .line 1137
    check-cast v2, Ljava/util/List;

    .line 1138
    .line 1139
    invoke-static {v0, v2, v6, v12}, Lnm9;->w(ILjava/util/List;Lom5;Z)V

    .line 1140
    .line 1141
    .line 1142
    goto :goto_b

    .line 1143
    :pswitch_2f
    move/from16 v18, v2

    .line 1144
    .line 1145
    const/4 v12, 0x0

    .line 1146
    aget v0, v9, v18

    .line 1147
    .line 1148
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v2

    .line 1152
    check-cast v2, Ljava/util/List;

    .line 1153
    .line 1154
    invoke-static {v0, v2, v6, v12}, Lnm9;->e(ILjava/util/List;Lom5;Z)V

    .line 1155
    .line 1156
    .line 1157
    goto :goto_b

    .line 1158
    :pswitch_30
    move/from16 v18, v2

    .line 1159
    .line 1160
    const/4 v12, 0x0

    .line 1161
    aget v0, v9, v18

    .line 1162
    .line 1163
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v2

    .line 1167
    check-cast v2, Ljava/util/List;

    .line 1168
    .line 1169
    invoke-static {v0, v2, v6, v12}, Lnm9;->x(ILjava/util/List;Lom5;Z)V

    .line 1170
    .line 1171
    .line 1172
    goto :goto_b

    .line 1173
    :pswitch_31
    move/from16 v18, v2

    .line 1174
    .line 1175
    const/4 v12, 0x0

    .line 1176
    aget v0, v9, v18

    .line 1177
    .line 1178
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v2

    .line 1182
    check-cast v2, Ljava/util/List;

    .line 1183
    .line 1184
    invoke-static {v0, v2, v6, v12}, Lnm9;->v(ILjava/util/List;Lom5;Z)V

    .line 1185
    .line 1186
    .line 1187
    goto :goto_b

    .line 1188
    :pswitch_32
    move/from16 v18, v2

    .line 1189
    .line 1190
    const/4 v12, 0x0

    .line 1191
    aget v0, v9, v18

    .line 1192
    .line 1193
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v2

    .line 1197
    check-cast v2, Ljava/util/List;

    .line 1198
    .line 1199
    invoke-static {v0, v2, v6, v12}, Lnm9;->r(ILjava/util/List;Lom5;Z)V

    .line 1200
    .line 1201
    .line 1202
    goto :goto_b

    .line 1203
    :pswitch_33
    move/from16 v17, v15

    .line 1204
    .line 1205
    const/4 v12, 0x0

    .line 1206
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v5

    .line 1210
    if-eqz v5, :cond_a

    .line 1211
    .line 1212
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v5

    .line 1216
    invoke-virtual {v0, v2}, Lpl9;->y(I)Ljm9;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v9

    .line 1220
    check-cast v5, Lmg9;

    .line 1221
    .line 1222
    move/from16 v10, v17

    .line 1223
    .line 1224
    invoke-virtual {v7, v13, v10}, Lnh9;->i(II)V

    .line 1225
    .line 1226
    .line 1227
    invoke-interface {v9, v5, v6}, Ljm9;->c(Ljava/lang/Object;Lom5;)V

    .line 1228
    .line 1229
    .line 1230
    const/4 v5, 0x4

    .line 1231
    invoke-virtual {v7, v13, v5}, Lnh9;->i(II)V

    .line 1232
    .line 1233
    .line 1234
    goto/16 :goto_d

    .line 1235
    .line 1236
    :pswitch_34
    const/4 v12, 0x0

    .line 1237
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1238
    .line 1239
    .line 1240
    move-result v5

    .line 1241
    if-eqz v5, :cond_a

    .line 1242
    .line 1243
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1244
    .line 1245
    .line 1246
    move-result-wide v9

    .line 1247
    add-long v14, v9, v9

    .line 1248
    .line 1249
    shr-long v9, v9, v16

    .line 1250
    .line 1251
    xor-long/2addr v9, v14

    .line 1252
    invoke-virtual {v7, v13, v9, v10}, Lnh9;->l(IJ)V

    .line 1253
    .line 1254
    .line 1255
    goto/16 :goto_d

    .line 1256
    .line 1257
    :pswitch_35
    const/4 v12, 0x0

    .line 1258
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1259
    .line 1260
    .line 1261
    move-result v5

    .line 1262
    if-eqz v5, :cond_a

    .line 1263
    .line 1264
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1265
    .line 1266
    .line 1267
    move-result v0

    .line 1268
    add-int v5, v0, v0

    .line 1269
    .line 1270
    shr-int/lit8 v0, v0, 0x1f

    .line 1271
    .line 1272
    xor-int/2addr v0, v5

    .line 1273
    invoke-virtual {v7, v13, v0}, Lnh9;->j(II)V

    .line 1274
    .line 1275
    .line 1276
    goto/16 :goto_d

    .line 1277
    .line 1278
    :pswitch_36
    const/4 v12, 0x0

    .line 1279
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1280
    .line 1281
    .line 1282
    move-result v5

    .line 1283
    if-eqz v5, :cond_a

    .line 1284
    .line 1285
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1286
    .line 1287
    .line 1288
    move-result-wide v9

    .line 1289
    invoke-virtual {v7, v13, v9, v10}, Lnh9;->e(IJ)V

    .line 1290
    .line 1291
    .line 1292
    goto/16 :goto_d

    .line 1293
    .line 1294
    :pswitch_37
    const/4 v12, 0x0

    .line 1295
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1296
    .line 1297
    .line 1298
    move-result v5

    .line 1299
    if-eqz v5, :cond_a

    .line 1300
    .line 1301
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1302
    .line 1303
    .line 1304
    move-result v0

    .line 1305
    invoke-virtual {v7, v13, v0}, Lnh9;->c(II)V

    .line 1306
    .line 1307
    .line 1308
    goto/16 :goto_d

    .line 1309
    .line 1310
    :pswitch_38
    const/4 v12, 0x0

    .line 1311
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1312
    .line 1313
    .line 1314
    move-result v5

    .line 1315
    if-eqz v5, :cond_a

    .line 1316
    .line 1317
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1318
    .line 1319
    .line 1320
    move-result v0

    .line 1321
    invoke-virtual {v7, v13, v0}, Lnh9;->g(II)V

    .line 1322
    .line 1323
    .line 1324
    goto/16 :goto_d

    .line 1325
    .line 1326
    :pswitch_39
    const/4 v12, 0x0

    .line 1327
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1328
    .line 1329
    .line 1330
    move-result v5

    .line 1331
    if-eqz v5, :cond_a

    .line 1332
    .line 1333
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1334
    .line 1335
    .line 1336
    move-result v0

    .line 1337
    invoke-virtual {v7, v13, v0}, Lnh9;->j(II)V

    .line 1338
    .line 1339
    .line 1340
    goto/16 :goto_d

    .line 1341
    .line 1342
    :pswitch_3a
    const/4 v12, 0x0

    .line 1343
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1344
    .line 1345
    .line 1346
    move-result v5

    .line 1347
    if-eqz v5, :cond_a

    .line 1348
    .line 1349
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v0

    .line 1353
    check-cast v0, Ldh9;

    .line 1354
    .line 1355
    shl-int/lit8 v5, v13, 0x3

    .line 1356
    .line 1357
    or-int/lit8 v5, v5, 0x2

    .line 1358
    .line 1359
    invoke-virtual {v7, v5}, Lnh9;->k(I)V

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v0}, Ldh9;->f()I

    .line 1363
    .line 1364
    .line 1365
    move-result v5

    .line 1366
    invoke-virtual {v7, v5}, Lnh9;->k(I)V

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v0, v7}, Ldh9;->i(Lnh9;)V

    .line 1370
    .line 1371
    .line 1372
    goto/16 :goto_d

    .line 1373
    .line 1374
    :pswitch_3b
    const/4 v12, 0x0

    .line 1375
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1376
    .line 1377
    .line 1378
    move-result v5

    .line 1379
    if-eqz v5, :cond_a

    .line 1380
    .line 1381
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v5

    .line 1385
    invoke-virtual {v0, v2}, Lpl9;->y(I)Ljm9;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v9

    .line 1389
    invoke-virtual {v6, v13, v5, v9}, Lom5;->m(ILjava/lang/Object;Ljm9;)V

    .line 1390
    .line 1391
    .line 1392
    goto/16 :goto_d

    .line 1393
    .line 1394
    :pswitch_3c
    const/4 v12, 0x0

    .line 1395
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1396
    .line 1397
    .line 1398
    move-result v5

    .line 1399
    if-eqz v5, :cond_a

    .line 1400
    .line 1401
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v0

    .line 1405
    instance-of v5, v0, Ljava/lang/String;

    .line 1406
    .line 1407
    if-eqz v5, :cond_9

    .line 1408
    .line 1409
    check-cast v0, Ljava/lang/String;

    .line 1410
    .line 1411
    shl-int/lit8 v5, v13, 0x3

    .line 1412
    .line 1413
    or-int/lit8 v5, v5, 0x2

    .line 1414
    .line 1415
    invoke-virtual {v7, v5}, Lnh9;->k(I)V

    .line 1416
    .line 1417
    .line 1418
    iget v5, v7, Lnh9;->c:I

    .line 1419
    .line 1420
    iget-object v9, v7, Lnh9;->b:[B

    .line 1421
    .line 1422
    iget v10, v7, Lnh9;->d:I

    .line 1423
    .line 1424
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1425
    .line 1426
    .line 1427
    move-result v11

    .line 1428
    const/16 v17, 0x3

    .line 1429
    .line 1430
    mul-int/lit8 v11, v11, 0x3

    .line 1431
    .line 1432
    invoke-static {v11}, Lnh9;->n(I)I

    .line 1433
    .line 1434
    .line 1435
    move-result v11

    .line 1436
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1437
    .line 1438
    .line 1439
    move-result v13

    .line 1440
    invoke-static {v13}, Lnh9;->n(I)I

    .line 1441
    .line 1442
    .line 1443
    move-result v13

    .line 1444
    if-ne v13, v11, :cond_8

    .line 1445
    .line 1446
    add-int v11, v10, v13

    .line 1447
    .line 1448
    iput v11, v7, Lnh9;->d:I

    .line 1449
    .line 1450
    sub-int/2addr v5, v11

    .line 1451
    invoke-static {v0, v9, v11, v5}, Lxn9;->a(Ljava/lang/String;[BII)I

    .line 1452
    .line 1453
    .line 1454
    move-result v0

    .line 1455
    iput v10, v7, Lnh9;->d:I

    .line 1456
    .line 1457
    sub-int v5, v0, v10

    .line 1458
    .line 1459
    sub-int/2addr v5, v13

    .line 1460
    invoke-virtual {v7, v5}, Lnh9;->k(I)V

    .line 1461
    .line 1462
    .line 1463
    iput v0, v7, Lnh9;->d:I

    .line 1464
    .line 1465
    goto/16 :goto_d

    .line 1466
    .line 1467
    :catch_2
    move-exception v0

    .line 1468
    goto :goto_c

    .line 1469
    :cond_8
    invoke-static {v0}, Lxn9;->b(Ljava/lang/String;)I

    .line 1470
    .line 1471
    .line 1472
    move-result v10

    .line 1473
    invoke-virtual {v7, v10}, Lnh9;->k(I)V

    .line 1474
    .line 1475
    .line 1476
    iget v10, v7, Lnh9;->d:I

    .line 1477
    .line 1478
    sub-int/2addr v5, v10

    .line 1479
    invoke-static {v0, v9, v10, v5}, Lxn9;->a(Ljava/lang/String;[BII)I

    .line 1480
    .line 1481
    .line 1482
    move-result v0

    .line 1483
    iput v0, v7, Lnh9;->d:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1484
    .line 1485
    goto/16 :goto_d

    .line 1486
    .line 1487
    :goto_c
    new-instance v1, Luh9;

    .line 1488
    .line 1489
    invoke-direct {v1, v14, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1490
    .line 1491
    .line 1492
    throw v1

    .line 1493
    :cond_9
    check-cast v0, Ldh9;

    .line 1494
    .line 1495
    shl-int/lit8 v5, v13, 0x3

    .line 1496
    .line 1497
    or-int/lit8 v5, v5, 0x2

    .line 1498
    .line 1499
    invoke-virtual {v7, v5}, Lnh9;->k(I)V

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v0}, Ldh9;->f()I

    .line 1503
    .line 1504
    .line 1505
    move-result v5

    .line 1506
    invoke-virtual {v7, v5}, Lnh9;->k(I)V

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v0, v7}, Ldh9;->i(Lnh9;)V

    .line 1510
    .line 1511
    .line 1512
    goto/16 :goto_d

    .line 1513
    .line 1514
    :pswitch_3d
    const/4 v12, 0x0

    .line 1515
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1516
    .line 1517
    .line 1518
    move-result v5

    .line 1519
    if-eqz v5, :cond_a

    .line 1520
    .line 1521
    sget-object v0, Lun9;->c:Lcm9;

    .line 1522
    .line 1523
    invoke-virtual {v0, v1, v10, v11}, Lcm9;->j(Ljava/lang/Object;J)Z

    .line 1524
    .line 1525
    .line 1526
    move-result v0

    .line 1527
    shl-int/lit8 v5, v13, 0x3

    .line 1528
    .line 1529
    invoke-virtual {v7, v5}, Lnh9;->k(I)V

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v7, v0}, Lnh9;->a(B)V

    .line 1533
    .line 1534
    .line 1535
    goto/16 :goto_d

    .line 1536
    .line 1537
    :pswitch_3e
    const/4 v12, 0x0

    .line 1538
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v5

    .line 1542
    if-eqz v5, :cond_a

    .line 1543
    .line 1544
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1545
    .line 1546
    .line 1547
    move-result v0

    .line 1548
    invoke-virtual {v7, v13, v0}, Lnh9;->c(II)V

    .line 1549
    .line 1550
    .line 1551
    goto :goto_d

    .line 1552
    :pswitch_3f
    const/4 v12, 0x0

    .line 1553
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1554
    .line 1555
    .line 1556
    move-result v5

    .line 1557
    if-eqz v5, :cond_a

    .line 1558
    .line 1559
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1560
    .line 1561
    .line 1562
    move-result-wide v9

    .line 1563
    invoke-virtual {v7, v13, v9, v10}, Lnh9;->e(IJ)V

    .line 1564
    .line 1565
    .line 1566
    goto :goto_d

    .line 1567
    :pswitch_40
    const/4 v12, 0x0

    .line 1568
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1569
    .line 1570
    .line 1571
    move-result v5

    .line 1572
    if-eqz v5, :cond_a

    .line 1573
    .line 1574
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1575
    .line 1576
    .line 1577
    move-result v0

    .line 1578
    invoke-virtual {v7, v13, v0}, Lnh9;->g(II)V

    .line 1579
    .line 1580
    .line 1581
    goto :goto_d

    .line 1582
    :pswitch_41
    const/4 v12, 0x0

    .line 1583
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1584
    .line 1585
    .line 1586
    move-result v5

    .line 1587
    if-eqz v5, :cond_a

    .line 1588
    .line 1589
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1590
    .line 1591
    .line 1592
    move-result-wide v9

    .line 1593
    invoke-virtual {v7, v13, v9, v10}, Lnh9;->l(IJ)V

    .line 1594
    .line 1595
    .line 1596
    goto :goto_d

    .line 1597
    :pswitch_42
    const/4 v12, 0x0

    .line 1598
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1599
    .line 1600
    .line 1601
    move-result v5

    .line 1602
    if-eqz v5, :cond_a

    .line 1603
    .line 1604
    invoke-virtual {v8, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1605
    .line 1606
    .line 1607
    move-result-wide v9

    .line 1608
    invoke-virtual {v7, v13, v9, v10}, Lnh9;->l(IJ)V

    .line 1609
    .line 1610
    .line 1611
    goto :goto_d

    .line 1612
    :pswitch_43
    const/4 v12, 0x0

    .line 1613
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1614
    .line 1615
    .line 1616
    move-result v5

    .line 1617
    if-eqz v5, :cond_a

    .line 1618
    .line 1619
    sget-object v0, Lun9;->c:Lcm9;

    .line 1620
    .line 1621
    invoke-virtual {v0, v1, v10, v11}, Lcm9;->b(Ljava/lang/Object;J)F

    .line 1622
    .line 1623
    .line 1624
    move-result v0

    .line 1625
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1626
    .line 1627
    .line 1628
    move-result v0

    .line 1629
    invoke-virtual {v7, v13, v0}, Lnh9;->c(II)V

    .line 1630
    .line 1631
    .line 1632
    goto :goto_d

    .line 1633
    :pswitch_44
    const/4 v12, 0x0

    .line 1634
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1635
    .line 1636
    .line 1637
    move-result v5

    .line 1638
    if-eqz v5, :cond_a

    .line 1639
    .line 1640
    sget-object v0, Lun9;->c:Lcm9;

    .line 1641
    .line 1642
    invoke-virtual {v0, v1, v10, v11}, Lcm9;->a(Ljava/lang/Object;J)D

    .line 1643
    .line 1644
    .line 1645
    move-result-wide v9

    .line 1646
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 1647
    .line 1648
    .line 1649
    move-result-wide v9

    .line 1650
    invoke-virtual {v7, v13, v9, v10}, Lnh9;->e(IJ)V

    .line 1651
    .line 1652
    .line 1653
    :cond_a
    :goto_d
    add-int/lit8 v2, v2, 0x3

    .line 1654
    .line 1655
    const v10, 0xfffff

    .line 1656
    .line 1657
    .line 1658
    move-object/from16 v0, p0

    .line 1659
    .line 1660
    goto/16 :goto_0

    .line 1661
    .line 1662
    :cond_b
    move-object v0, v1

    .line 1663
    check-cast v0, Lxi9;

    .line 1664
    .line 1665
    iget-object v0, v0, Lxi9;->zzc:Lmn9;

    .line 1666
    .line 1667
    invoke-virtual {v0, v6}, Lmn9;->d(Lom5;)V

    .line 1668
    .line 1669
    .line 1670
    return-void

    .line 1671
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public final d(Ljava/lang/Object;)Z
    .locals 14

    .line 1
    const/4 v6, 0x0

    .line 2
    const v7, 0xfffff

    .line 3
    .line 4
    .line 5
    move v3, v6

    .line 6
    move v8, v3

    .line 7
    move v2, v7

    .line 8
    :goto_0
    iget v4, p0, Lpl9;->g:I

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-ge v8, v4, :cond_a

    .line 12
    .line 13
    iget-object v4, p0, Lpl9;->f:[I

    .line 14
    .line 15
    aget v4, v4, v8

    .line 16
    .line 17
    iget-object v9, p0, Lpl9;->a:[I

    .line 18
    .line 19
    aget v10, v9, v4

    .line 20
    .line 21
    invoke-virtual {p0, v4}, Lpl9;->v(I)I

    .line 22
    .line 23
    .line 24
    move-result v11

    .line 25
    add-int/lit8 v12, v4, 0x2

    .line 26
    .line 27
    aget v9, v9, v12

    .line 28
    .line 29
    and-int v12, v9, v7

    .line 30
    .line 31
    ushr-int/lit8 v9, v9, 0x14

    .line 32
    .line 33
    shl-int/2addr v5, v9

    .line 34
    if-eq v12, v2, :cond_1

    .line 35
    .line 36
    if-eq v12, v7, :cond_0

    .line 37
    .line 38
    int-to-long v2, v12

    .line 39
    sget-object v9, Lpl9;->k:Lsun/misc/Unsafe;

    .line 40
    .line 41
    invoke-virtual {v9, p1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    :cond_0
    move v2, v4

    .line 46
    move v4, v3

    .line 47
    move v3, v12

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v13, v3

    .line 50
    move v3, v2

    .line 51
    move v2, v4

    .line 52
    move v4, v13

    .line 53
    :goto_1
    const/high16 v9, 0x10000000

    .line 54
    .line 55
    and-int/2addr v9, v11

    .line 56
    if-eqz v9, :cond_2

    .line 57
    .line 58
    move-object v0, p0

    .line 59
    move-object v1, p1

    .line 60
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-nez v9, :cond_2

    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_2
    invoke-static {v11}, Lpl9;->u(I)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    const/16 v12, 0x9

    .line 73
    .line 74
    if-eq v9, v12, :cond_8

    .line 75
    .line 76
    const/16 v12, 0x11

    .line 77
    .line 78
    if-eq v9, v12, :cond_8

    .line 79
    .line 80
    const/16 v5, 0x1b

    .line 81
    .line 82
    if-eq v9, v5, :cond_6

    .line 83
    .line 84
    const/16 v5, 0x3c

    .line 85
    .line 86
    if-eq v9, v5, :cond_5

    .line 87
    .line 88
    const/16 v5, 0x44

    .line 89
    .line 90
    if-eq v9, v5, :cond_5

    .line 91
    .line 92
    const/16 v5, 0x31

    .line 93
    .line 94
    if-eq v9, v5, :cond_6

    .line 95
    .line 96
    const/16 v5, 0x32

    .line 97
    .line 98
    if-eq v9, v5, :cond_3

    .line 99
    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :cond_3
    and-int v5, v11, v7

    .line 103
    .line 104
    int-to-long v9, v5

    .line 105
    invoke-static {p1, v9, v10}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Lxk9;

    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_4

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_4
    div-int/lit8 v4, v2, 0x3

    .line 119
    .line 120
    iget-object v0, p0, Lpl9;->b:[Ljava/lang/Object;

    .line 121
    .line 122
    add-int/2addr v4, v4

    .line 123
    aget-object v0, v0, v4

    .line 124
    .line 125
    invoke-static {v0}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    throw v0

    .line 130
    :cond_5
    invoke-virtual {p0, p1, v10, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_9

    .line 135
    .line 136
    invoke-virtual {p0, v2}, Lpl9;->y(I)Ljm9;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    and-int v5, v11, v7

    .line 141
    .line 142
    int-to-long v9, v5

    .line 143
    invoke-static {p1, v9, v10}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-interface {v2, v5}, Ljm9;->d(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_9

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    and-int v5, v11, v7

    .line 155
    .line 156
    int-to-long v9, v5

    .line 157
    invoke-static {p1, v9, v10}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    if-nez v9, :cond_9

    .line 168
    .line 169
    invoke-virtual {p0, v2}, Lpl9;->y(I)Ljm9;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    move v9, v6

    .line 174
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    if-ge v9, v10, :cond_9

    .line 179
    .line 180
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    invoke-interface {v2, v10}, Ljm9;->d(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    if-nez v10, :cond_7

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_8
    move-object v0, p0

    .line 195
    move-object v1, p1

    .line 196
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_9

    .line 201
    .line 202
    invoke-virtual {p0, v2}, Lpl9;->y(I)Ljm9;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    and-int v5, v11, v7

    .line 207
    .line 208
    int-to-long v9, v5

    .line 209
    invoke-static {p1, v9, v10}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-interface {v2, v5}, Ljm9;->d(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-nez v2, :cond_9

    .line 218
    .line 219
    :goto_3
    return v6

    .line 220
    :cond_9
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 221
    .line 222
    move v2, v3

    .line 223
    move v3, v4

    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_a
    return v5
.end method

.method public final e(Lxi9;Lxi9;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lpl9;->a:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lpl9;->v(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const v4, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int v5, v3, v4

    .line 16
    .line 17
    invoke-static {v3}, Lpl9;->u(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    int-to-long v5, v5

    .line 22
    packed-switch v3, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :pswitch_0
    add-int/lit8 v3, v1, 0x2

    .line 28
    .line 29
    aget v2, v2, v3

    .line 30
    .line 31
    and-int/2addr v2, v4

    .line 32
    int-to-long v2, v2

    .line 33
    invoke-static {p1, v2, v3}, Lun9;->e(Ljava/lang/Object;J)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {p2, v2, v3}, Lun9;->e(Ljava/lang/Object;J)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ne v4, v2, :cond_2

    .line 42
    .line 43
    invoke-static {p1, v5, v6}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {p2, v5, v6}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v3}, Lnm9;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :pswitch_1
    invoke-static {p1, v5, v6}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {p2, v5, v6}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Lnm9;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-static {p1, v5, v6}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p2, v5, v6}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lnm9;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    :goto_1
    if-nez v2, :cond_0

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :pswitch_3
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    invoke-static {p1, v5, v6}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {p2, v5, v6}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v2, v3}, Lnm9;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :pswitch_4
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    invoke-static {p1, v5, v6}, Lun9;->f(Ljava/lang/Object;J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-static {p2, v5, v6}, Lun9;->f(Ljava/lang/Object;J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    cmp-long v2, v2, v4

    .line 125
    .line 126
    if-nez v2, :cond_2

    .line 127
    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :pswitch_5
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_2

    .line 135
    .line 136
    invoke-static {p1, v5, v6}, Lun9;->e(Ljava/lang/Object;J)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-static {p2, v5, v6}, Lun9;->e(Ljava/lang/Object;J)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-ne v2, v3, :cond_2

    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :pswitch_6
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_2

    .line 153
    .line 154
    invoke-static {p1, v5, v6}, Lun9;->f(Ljava/lang/Object;J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    invoke-static {p2, v5, v6}, Lun9;->f(Ljava/lang/Object;J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    cmp-long v2, v2, v4

    .line 163
    .line 164
    if-nez v2, :cond_2

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :pswitch_7
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_2

    .line 173
    .line 174
    invoke-static {p1, v5, v6}, Lun9;->e(Ljava/lang/Object;J)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-static {p2, v5, v6}, Lun9;->e(Ljava/lang/Object;J)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-ne v2, v3, :cond_2

    .line 183
    .line 184
    goto/16 :goto_2

    .line 185
    .line 186
    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_2

    .line 191
    .line 192
    invoke-static {p1, v5, v6}, Lun9;->e(Ljava/lang/Object;J)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-static {p2, v5, v6}, Lun9;->e(Ljava/lang/Object;J)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-ne v2, v3, :cond_2

    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :pswitch_9
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_2

    .line 209
    .line 210
    invoke-static {p1, v5, v6}, Lun9;->e(Ljava/lang/Object;J)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {p2, v5, v6}, Lun9;->e(Ljava/lang/Object;J)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-ne v2, v3, :cond_2

    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :pswitch_a
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_2

    .line 227
    .line 228
    invoke-static {p1, v5, v6}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-static {p2, v5, v6}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v2, v3}, Lnm9;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_2

    .line 241
    .line 242
    goto/16 :goto_2

    .line 243
    .line 244
    :pswitch_b
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_2

    .line 249
    .line 250
    invoke-static {p1, v5, v6}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {p2, v5, v6}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {v2, v3}, Lnm9;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_2

    .line 263
    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :pswitch_c
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_2

    .line 271
    .line 272
    invoke-static {p1, v5, v6}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {p2, v5, v6}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v2, v3}, Lnm9;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_2

    .line 285
    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :pswitch_d
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_2

    .line 293
    .line 294
    sget-object v2, Lun9;->c:Lcm9;

    .line 295
    .line 296
    invoke-virtual {v2, p1, v5, v6}, Lcm9;->j(Ljava/lang/Object;J)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    invoke-virtual {v2, p2, v5, v6}, Lcm9;->j(Ljava/lang/Object;J)Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-ne v3, v2, :cond_2

    .line 305
    .line 306
    goto/16 :goto_2

    .line 307
    .line 308
    :pswitch_e
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_2

    .line 313
    .line 314
    invoke-static {p1, v5, v6}, Lun9;->e(Ljava/lang/Object;J)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    invoke-static {p2, v5, v6}, Lun9;->e(Ljava/lang/Object;J)I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-ne v2, v3, :cond_2

    .line 323
    .line 324
    goto/16 :goto_2

    .line 325
    .line 326
    :pswitch_f
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_2

    .line 331
    .line 332
    invoke-static {p1, v5, v6}, Lun9;->f(Ljava/lang/Object;J)J

    .line 333
    .line 334
    .line 335
    move-result-wide v2

    .line 336
    invoke-static {p2, v5, v6}, Lun9;->f(Ljava/lang/Object;J)J

    .line 337
    .line 338
    .line 339
    move-result-wide v4

    .line 340
    cmp-long v2, v2, v4

    .line 341
    .line 342
    if-nez v2, :cond_2

    .line 343
    .line 344
    goto/16 :goto_2

    .line 345
    .line 346
    :pswitch_10
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-eqz v2, :cond_2

    .line 351
    .line 352
    invoke-static {p1, v5, v6}, Lun9;->e(Ljava/lang/Object;J)I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    invoke-static {p2, v5, v6}, Lun9;->e(Ljava/lang/Object;J)I

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-ne v2, v3, :cond_2

    .line 361
    .line 362
    goto :goto_2

    .line 363
    :pswitch_11
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-eqz v2, :cond_2

    .line 368
    .line 369
    invoke-static {p1, v5, v6}, Lun9;->f(Ljava/lang/Object;J)J

    .line 370
    .line 371
    .line 372
    move-result-wide v2

    .line 373
    invoke-static {p2, v5, v6}, Lun9;->f(Ljava/lang/Object;J)J

    .line 374
    .line 375
    .line 376
    move-result-wide v4

    .line 377
    cmp-long v2, v2, v4

    .line 378
    .line 379
    if-nez v2, :cond_2

    .line 380
    .line 381
    goto :goto_2

    .line 382
    :pswitch_12
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    if-eqz v2, :cond_2

    .line 387
    .line 388
    invoke-static {p1, v5, v6}, Lun9;->f(Ljava/lang/Object;J)J

    .line 389
    .line 390
    .line 391
    move-result-wide v2

    .line 392
    invoke-static {p2, v5, v6}, Lun9;->f(Ljava/lang/Object;J)J

    .line 393
    .line 394
    .line 395
    move-result-wide v4

    .line 396
    cmp-long v2, v2, v4

    .line 397
    .line 398
    if-nez v2, :cond_2

    .line 399
    .line 400
    goto :goto_2

    .line 401
    :pswitch_13
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_2

    .line 406
    .line 407
    sget-object v2, Lun9;->c:Lcm9;

    .line 408
    .line 409
    invoke-virtual {v2, p1, v5, v6}, Lcm9;->b(Ljava/lang/Object;J)F

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    invoke-virtual {v2, p2, v5, v6}, Lcm9;->b(Ljava/lang/Object;J)F

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-ne v3, v2, :cond_2

    .line 426
    .line 427
    goto :goto_2

    .line 428
    :pswitch_14
    invoke-virtual {p0, p1, p2, v1}, Lpl9;->l(Lxi9;Lxi9;I)Z

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-eqz v2, :cond_2

    .line 433
    .line 434
    sget-object v2, Lun9;->c:Lcm9;

    .line 435
    .line 436
    invoke-virtual {v2, p1, v5, v6}, Lcm9;->a(Ljava/lang/Object;J)D

    .line 437
    .line 438
    .line 439
    move-result-wide v3

    .line 440
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 441
    .line 442
    .line 443
    move-result-wide v3

    .line 444
    invoke-virtual {v2, p2, v5, v6}, Lcm9;->a(Ljava/lang/Object;J)D

    .line 445
    .line 446
    .line 447
    move-result-wide v5

    .line 448
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 449
    .line 450
    .line 451
    move-result-wide v5

    .line 452
    cmp-long v2, v3, v5

    .line 453
    .line 454
    if-nez v2, :cond_2

    .line 455
    .line 456
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    .line 457
    .line 458
    goto/16 :goto_0

    .line 459
    .line 460
    :cond_1
    iget-object p0, p1, Lxi9;->zzc:Lmn9;

    .line 461
    .line 462
    iget-object p1, p2, Lxi9;->zzc:Lmn9;

    .line 463
    .line 464
    invoke-virtual {p0, p1}, Lmn9;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result p0

    .line 468
    if-nez p0, :cond_3

    .line 469
    .line 470
    :cond_2
    :goto_3
    return v0

    .line 471
    :cond_3
    const/4 p0, 0x1

    .line 472
    return p0

    .line 473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lmg9;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v6, Lpl9;->k:Lsun/misc/Unsafe;

    .line 6
    .line 7
    const v8, 0xfffff

    .line 8
    .line 9
    .line 10
    move v3, v8

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    :goto_0
    iget-object v5, v0, Lpl9;->a:[I

    .line 15
    .line 16
    array-length v10, v5

    .line 17
    if-ge v2, v10, :cond_1a

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lpl9;->v(I)I

    .line 20
    .line 21
    .line 22
    move-result v10

    .line 23
    invoke-static {v10}, Lpl9;->u(I)I

    .line 24
    .line 25
    .line 26
    move-result v11

    .line 27
    aget v12, v5, v2

    .line 28
    .line 29
    add-int/lit8 v13, v2, 0x2

    .line 30
    .line 31
    aget v5, v5, v13

    .line 32
    .line 33
    and-int v13, v5, v8

    .line 34
    .line 35
    const/16 v14, 0x11

    .line 36
    .line 37
    const/4 v15, 0x1

    .line 38
    if-gt v11, v14, :cond_2

    .line 39
    .line 40
    if-eq v13, v3, :cond_1

    .line 41
    .line 42
    if-ne v13, v8, :cond_0

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    int-to-long v3, v13

    .line 47
    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    move v4, v3

    .line 52
    :goto_1
    move v3, v13

    .line 53
    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    .line 54
    .line 55
    shl-int v5, v15, v5

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/4 v5, 0x0

    .line 59
    :goto_2
    and-int/2addr v10, v8

    .line 60
    sget-object v13, Lni9;->b:Lni9;

    .line 61
    .line 62
    iget v13, v13, Lni9;->a:I

    .line 63
    .line 64
    if-lt v11, v13, :cond_3

    .line 65
    .line 66
    sget-object v13, Lni9;->c:Lni9;

    .line 67
    .line 68
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    :cond_3
    int-to-long v13, v10

    .line 72
    const/16 v10, 0x3f

    .line 73
    .line 74
    const/16 v16, 0x0

    .line 75
    .line 76
    const/4 v7, 0x4

    .line 77
    const/16 v8, 0x8

    .line 78
    .line 79
    packed-switch v11, :pswitch_data_0

    .line 80
    .line 81
    .line 82
    goto/16 :goto_1e

    .line 83
    .line 84
    :pswitch_0
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_19

    .line 89
    .line 90
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Lmg9;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lpl9;->y(I)Ljm9;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    sget-object v8, Lnm9;->a:Lns0;

    .line 101
    .line 102
    shl-int/lit8 v8, v12, 0x3

    .line 103
    .line 104
    invoke-static {v8}, Lnh9;->n(I)I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    add-int/2addr v8, v8

    .line 109
    invoke-virtual {v5, v7}, Lmg9;->c(Ljm9;)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    :goto_3
    add-int/2addr v5, v8

    .line 114
    :goto_4
    add-int/2addr v9, v5

    .line 115
    goto/16 :goto_1e

    .line 116
    .line 117
    :pswitch_1
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_19

    .line 122
    .line 123
    shl-int/lit8 v5, v12, 0x3

    .line 124
    .line 125
    invoke-static {v1, v13, v14}, Lpl9;->w(Ljava/lang/Object;J)J

    .line 126
    .line 127
    .line 128
    move-result-wide v7

    .line 129
    add-long v11, v7, v7

    .line 130
    .line 131
    shr-long/2addr v7, v10

    .line 132
    invoke-static {v5}, Lnh9;->n(I)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    xor-long/2addr v7, v11

    .line 137
    invoke-static {v7, v8}, Lnh9;->o(J)I

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    :goto_5
    add-int/2addr v7, v5

    .line 142
    add-int/2addr v9, v7

    .line 143
    goto/16 :goto_1e

    .line 144
    .line 145
    :pswitch_2
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_19

    .line 150
    .line 151
    shl-int/lit8 v5, v12, 0x3

    .line 152
    .line 153
    invoke-static {v1, v13, v14}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    add-int v8, v7, v7

    .line 158
    .line 159
    shr-int/lit8 v7, v7, 0x1f

    .line 160
    .line 161
    invoke-static {v5}, Lnh9;->n(I)I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    xor-int/2addr v7, v8

    .line 166
    :goto_6
    invoke-static {v7, v5, v9}, Lu48;->t(III)I

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    goto/16 :goto_1e

    .line 171
    .line 172
    :pswitch_3
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_19

    .line 177
    .line 178
    :goto_7
    shl-int/lit8 v5, v12, 0x3

    .line 179
    .line 180
    invoke-static {v5, v8, v9}, Lu48;->t(III)I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    goto/16 :goto_1e

    .line 185
    .line 186
    :pswitch_4
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_19

    .line 191
    .line 192
    :goto_8
    shl-int/lit8 v5, v12, 0x3

    .line 193
    .line 194
    invoke-static {v5, v7, v9}, Lu48;->t(III)I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    goto/16 :goto_1e

    .line 199
    .line 200
    :pswitch_5
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_19

    .line 205
    .line 206
    shl-int/lit8 v5, v12, 0x3

    .line 207
    .line 208
    invoke-static {v1, v13, v14}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    int-to-long v7, v7

    .line 213
    invoke-static {v5}, Lnh9;->n(I)I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    invoke-static {v7, v8}, Lnh9;->o(J)I

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    goto :goto_5

    .line 222
    :pswitch_6
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_19

    .line 227
    .line 228
    shl-int/lit8 v5, v12, 0x3

    .line 229
    .line 230
    invoke-static {v1, v13, v14}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    invoke-static {v5}, Lnh9;->n(I)I

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    goto :goto_6

    .line 239
    :pswitch_7
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-eqz v5, :cond_19

    .line 244
    .line 245
    shl-int/lit8 v5, v12, 0x3

    .line 246
    .line 247
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    check-cast v7, Ldh9;

    .line 252
    .line 253
    invoke-static {v5}, Lnh9;->n(I)I

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    invoke-virtual {v7}, Ldh9;->f()I

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    :goto_9
    invoke-static {v7, v7, v5, v9}, Lu48;->i(IIII)I

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    goto/16 :goto_1e

    .line 266
    .line 267
    :pswitch_8
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-eqz v5, :cond_19

    .line 272
    .line 273
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-virtual {v0, v2}, Lpl9;->y(I)Ljm9;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    sget-object v8, Lnm9;->a:Lns0;

    .line 282
    .line 283
    shl-int/lit8 v8, v12, 0x3

    .line 284
    .line 285
    check-cast v5, Lmg9;

    .line 286
    .line 287
    invoke-static {v8}, Lnh9;->n(I)I

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    invoke-virtual {v5, v7}, Lmg9;->c(Ljm9;)I

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    :goto_a
    invoke-static {v5, v5, v8, v9}, Lu48;->i(IIII)I

    .line 296
    .line 297
    .line 298
    move-result v9

    .line 299
    goto/16 :goto_1e

    .line 300
    .line 301
    :pswitch_9
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    if-eqz v5, :cond_19

    .line 306
    .line 307
    shl-int/lit8 v5, v12, 0x3

    .line 308
    .line 309
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    instance-of v8, v7, Ldh9;

    .line 314
    .line 315
    if-eqz v8, :cond_4

    .line 316
    .line 317
    check-cast v7, Ldh9;

    .line 318
    .line 319
    invoke-static {v5}, Lnh9;->n(I)I

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    invoke-virtual {v7}, Ldh9;->f()I

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    goto :goto_9

    .line 328
    :cond_4
    check-cast v7, Ljava/lang/String;

    .line 329
    .line 330
    invoke-static {v5}, Lnh9;->n(I)I

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    invoke-static {v7}, Lxn9;->b(Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    goto :goto_9

    .line 339
    :pswitch_a
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    if-eqz v5, :cond_19

    .line 344
    .line 345
    shl-int/lit8 v5, v12, 0x3

    .line 346
    .line 347
    invoke-static {v5, v15, v9}, Lu48;->t(III)I

    .line 348
    .line 349
    .line 350
    move-result v9

    .line 351
    goto/16 :goto_1e

    .line 352
    .line 353
    :pswitch_b
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    if-eqz v5, :cond_19

    .line 358
    .line 359
    goto/16 :goto_8

    .line 360
    .line 361
    :pswitch_c
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    if-eqz v5, :cond_19

    .line 366
    .line 367
    goto/16 :goto_7

    .line 368
    .line 369
    :pswitch_d
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    if-eqz v5, :cond_19

    .line 374
    .line 375
    shl-int/lit8 v5, v12, 0x3

    .line 376
    .line 377
    invoke-static {v1, v13, v14}, Lpl9;->s(Ljava/lang/Object;J)I

    .line 378
    .line 379
    .line 380
    move-result v7

    .line 381
    int-to-long v7, v7

    .line 382
    invoke-static {v5}, Lnh9;->n(I)I

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    invoke-static {v7, v8}, Lnh9;->o(J)I

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    goto/16 :goto_5

    .line 391
    .line 392
    :pswitch_e
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-eqz v5, :cond_19

    .line 397
    .line 398
    shl-int/lit8 v5, v12, 0x3

    .line 399
    .line 400
    invoke-static {v1, v13, v14}, Lpl9;->w(Ljava/lang/Object;J)J

    .line 401
    .line 402
    .line 403
    move-result-wide v7

    .line 404
    invoke-static {v5}, Lnh9;->n(I)I

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    invoke-static {v7, v8}, Lnh9;->o(J)I

    .line 409
    .line 410
    .line 411
    move-result v7

    .line 412
    goto/16 :goto_5

    .line 413
    .line 414
    :pswitch_f
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    if-eqz v5, :cond_19

    .line 419
    .line 420
    shl-int/lit8 v5, v12, 0x3

    .line 421
    .line 422
    invoke-static {v1, v13, v14}, Lpl9;->w(Ljava/lang/Object;J)J

    .line 423
    .line 424
    .line 425
    move-result-wide v7

    .line 426
    invoke-static {v5}, Lnh9;->n(I)I

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    invoke-static {v7, v8}, Lnh9;->o(J)I

    .line 431
    .line 432
    .line 433
    move-result v7

    .line 434
    goto/16 :goto_5

    .line 435
    .line 436
    :pswitch_10
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    if-eqz v5, :cond_19

    .line 441
    .line 442
    goto/16 :goto_8

    .line 443
    .line 444
    :pswitch_11
    invoke-virtual {v0, v1, v12, v2}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 445
    .line 446
    .line 447
    move-result v5

    .line 448
    if-eqz v5, :cond_19

    .line 449
    .line 450
    goto/16 :goto_7

    .line 451
    .line 452
    :pswitch_12
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    div-int/lit8 v7, v2, 0x3

    .line 457
    .line 458
    iget-object v8, v0, Lpl9;->b:[Ljava/lang/Object;

    .line 459
    .line 460
    add-int/2addr v7, v7

    .line 461
    aget-object v7, v8, v7

    .line 462
    .line 463
    check-cast v5, Lxk9;

    .line 464
    .line 465
    if-nez v7, :cond_7

    .line 466
    .line 467
    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 468
    .line 469
    .line 470
    move-result v7

    .line 471
    if-eqz v7, :cond_5

    .line 472
    .line 473
    goto/16 :goto_1e

    .line 474
    .line 475
    :cond_5
    invoke-virtual {v5}, Lxk9;->entrySet()Ljava/util/Set;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 484
    .line 485
    .line 486
    move-result v7

    .line 487
    if-nez v7, :cond_6

    .line 488
    .line 489
    goto/16 :goto_1e

    .line 490
    .line 491
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    check-cast v0, Ljava/util/Map$Entry;

    .line 496
    .line 497
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    const/4 v0, 0x0

    .line 504
    throw v0

    .line 505
    :cond_7
    invoke-static {}, Le6;->d()V

    .line 506
    .line 507
    .line 508
    return v16

    .line 509
    :pswitch_13
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    check-cast v5, Ljava/util/List;

    .line 514
    .line 515
    invoke-virtual {v0, v2}, Lpl9;->y(I)Ljm9;

    .line 516
    .line 517
    .line 518
    move-result-object v7

    .line 519
    sget-object v8, Lnm9;->a:Lns0;

    .line 520
    .line 521
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 522
    .line 523
    .line 524
    move-result v8

    .line 525
    if-nez v8, :cond_8

    .line 526
    .line 527
    move/from16 v11, v16

    .line 528
    .line 529
    goto :goto_c

    .line 530
    :cond_8
    move/from16 v10, v16

    .line 531
    .line 532
    move v11, v10

    .line 533
    :goto_b
    if-ge v10, v8, :cond_9

    .line 534
    .line 535
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v13

    .line 539
    check-cast v13, Lmg9;

    .line 540
    .line 541
    shl-int/lit8 v14, v12, 0x3

    .line 542
    .line 543
    invoke-static {v14}, Lnh9;->n(I)I

    .line 544
    .line 545
    .line 546
    move-result v14

    .line 547
    add-int/2addr v14, v14

    .line 548
    invoke-virtual {v13, v7}, Lmg9;->c(Ljm9;)I

    .line 549
    .line 550
    .line 551
    move-result v13

    .line 552
    add-int/2addr v13, v14

    .line 553
    add-int/2addr v11, v13

    .line 554
    add-int/lit8 v10, v10, 0x1

    .line 555
    .line 556
    goto :goto_b

    .line 557
    :cond_9
    :goto_c
    add-int/2addr v9, v11

    .line 558
    goto/16 :goto_1e

    .line 559
    .line 560
    :pswitch_14
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v5

    .line 564
    check-cast v5, Ljava/util/List;

    .line 565
    .line 566
    invoke-static {v5}, Lnm9;->m(Ljava/util/List;)I

    .line 567
    .line 568
    .line 569
    move-result v5

    .line 570
    if-lez v5, :cond_19

    .line 571
    .line 572
    shl-int/lit8 v7, v12, 0x3

    .line 573
    .line 574
    invoke-static {v7}, Lnh9;->n(I)I

    .line 575
    .line 576
    .line 577
    move-result v7

    .line 578
    :goto_d
    invoke-static {v5, v7, v5, v9}, Lu48;->i(IIII)I

    .line 579
    .line 580
    .line 581
    move-result v9

    .line 582
    goto/16 :goto_1e

    .line 583
    .line 584
    :pswitch_15
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v5

    .line 588
    check-cast v5, Ljava/util/List;

    .line 589
    .line 590
    invoke-static {v5}, Lnm9;->l(Ljava/util/List;)I

    .line 591
    .line 592
    .line 593
    move-result v5

    .line 594
    if-lez v5, :cond_19

    .line 595
    .line 596
    shl-int/lit8 v7, v12, 0x3

    .line 597
    .line 598
    invoke-static {v7}, Lnh9;->n(I)I

    .line 599
    .line 600
    .line 601
    move-result v7

    .line 602
    goto :goto_d

    .line 603
    :pswitch_16
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v5

    .line 607
    check-cast v5, Ljava/util/List;

    .line 608
    .line 609
    sget-object v7, Lnm9;->a:Lns0;

    .line 610
    .line 611
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 612
    .line 613
    .line 614
    move-result v5

    .line 615
    mul-int/2addr v5, v8

    .line 616
    if-lez v5, :cond_19

    .line 617
    .line 618
    shl-int/lit8 v7, v12, 0x3

    .line 619
    .line 620
    invoke-static {v7}, Lnh9;->n(I)I

    .line 621
    .line 622
    .line 623
    move-result v7

    .line 624
    goto :goto_d

    .line 625
    :pswitch_17
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v5

    .line 629
    check-cast v5, Ljava/util/List;

    .line 630
    .line 631
    sget-object v8, Lnm9;->a:Lns0;

    .line 632
    .line 633
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    mul-int/2addr v5, v7

    .line 638
    if-lez v5, :cond_19

    .line 639
    .line 640
    shl-int/lit8 v7, v12, 0x3

    .line 641
    .line 642
    invoke-static {v7}, Lnh9;->n(I)I

    .line 643
    .line 644
    .line 645
    move-result v7

    .line 646
    goto :goto_d

    .line 647
    :pswitch_18
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    check-cast v5, Ljava/util/List;

    .line 652
    .line 653
    invoke-static {v5}, Lnm9;->g(Ljava/util/List;)I

    .line 654
    .line 655
    .line 656
    move-result v5

    .line 657
    if-lez v5, :cond_19

    .line 658
    .line 659
    shl-int/lit8 v7, v12, 0x3

    .line 660
    .line 661
    invoke-static {v7}, Lnh9;->n(I)I

    .line 662
    .line 663
    .line 664
    move-result v7

    .line 665
    goto :goto_d

    .line 666
    :pswitch_19
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v5

    .line 670
    check-cast v5, Ljava/util/List;

    .line 671
    .line 672
    invoke-static {v5}, Lnm9;->n(Ljava/util/List;)I

    .line 673
    .line 674
    .line 675
    move-result v5

    .line 676
    if-lez v5, :cond_19

    .line 677
    .line 678
    shl-int/lit8 v7, v12, 0x3

    .line 679
    .line 680
    invoke-static {v7}, Lnh9;->n(I)I

    .line 681
    .line 682
    .line 683
    move-result v7

    .line 684
    goto :goto_d

    .line 685
    :pswitch_1a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v5

    .line 689
    check-cast v5, Ljava/util/List;

    .line 690
    .line 691
    sget-object v7, Lnm9;->a:Lns0;

    .line 692
    .line 693
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 694
    .line 695
    .line 696
    move-result v5

    .line 697
    if-lez v5, :cond_19

    .line 698
    .line 699
    shl-int/lit8 v7, v12, 0x3

    .line 700
    .line 701
    invoke-static {v7}, Lnh9;->n(I)I

    .line 702
    .line 703
    .line 704
    move-result v7

    .line 705
    goto :goto_d

    .line 706
    :pswitch_1b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v5

    .line 710
    check-cast v5, Ljava/util/List;

    .line 711
    .line 712
    sget-object v8, Lnm9;->a:Lns0;

    .line 713
    .line 714
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 715
    .line 716
    .line 717
    move-result v5

    .line 718
    mul-int/2addr v5, v7

    .line 719
    if-lez v5, :cond_19

    .line 720
    .line 721
    shl-int/lit8 v7, v12, 0x3

    .line 722
    .line 723
    invoke-static {v7}, Lnh9;->n(I)I

    .line 724
    .line 725
    .line 726
    move-result v7

    .line 727
    goto/16 :goto_d

    .line 728
    .line 729
    :pswitch_1c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v5

    .line 733
    check-cast v5, Ljava/util/List;

    .line 734
    .line 735
    sget-object v7, Lnm9;->a:Lns0;

    .line 736
    .line 737
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 738
    .line 739
    .line 740
    move-result v5

    .line 741
    mul-int/2addr v5, v8

    .line 742
    if-lez v5, :cond_19

    .line 743
    .line 744
    shl-int/lit8 v7, v12, 0x3

    .line 745
    .line 746
    invoke-static {v7}, Lnh9;->n(I)I

    .line 747
    .line 748
    .line 749
    move-result v7

    .line 750
    goto/16 :goto_d

    .line 751
    .line 752
    :pswitch_1d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v5

    .line 756
    check-cast v5, Ljava/util/List;

    .line 757
    .line 758
    invoke-static {v5}, Lnm9;->j(Ljava/util/List;)I

    .line 759
    .line 760
    .line 761
    move-result v5

    .line 762
    if-lez v5, :cond_19

    .line 763
    .line 764
    shl-int/lit8 v7, v12, 0x3

    .line 765
    .line 766
    invoke-static {v7}, Lnh9;->n(I)I

    .line 767
    .line 768
    .line 769
    move-result v7

    .line 770
    goto/16 :goto_d

    .line 771
    .line 772
    :pswitch_1e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v5

    .line 776
    check-cast v5, Ljava/util/List;

    .line 777
    .line 778
    invoke-static {v5}, Lnm9;->o(Ljava/util/List;)I

    .line 779
    .line 780
    .line 781
    move-result v5

    .line 782
    if-lez v5, :cond_19

    .line 783
    .line 784
    shl-int/lit8 v7, v12, 0x3

    .line 785
    .line 786
    invoke-static {v7}, Lnh9;->n(I)I

    .line 787
    .line 788
    .line 789
    move-result v7

    .line 790
    goto/16 :goto_d

    .line 791
    .line 792
    :pswitch_1f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v5

    .line 796
    check-cast v5, Ljava/util/List;

    .line 797
    .line 798
    invoke-static {v5}, Lnm9;->k(Ljava/util/List;)I

    .line 799
    .line 800
    .line 801
    move-result v5

    .line 802
    if-lez v5, :cond_19

    .line 803
    .line 804
    shl-int/lit8 v7, v12, 0x3

    .line 805
    .line 806
    invoke-static {v7}, Lnh9;->n(I)I

    .line 807
    .line 808
    .line 809
    move-result v7

    .line 810
    goto/16 :goto_d

    .line 811
    .line 812
    :pswitch_20
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v5

    .line 816
    check-cast v5, Ljava/util/List;

    .line 817
    .line 818
    sget-object v8, Lnm9;->a:Lns0;

    .line 819
    .line 820
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 821
    .line 822
    .line 823
    move-result v5

    .line 824
    mul-int/2addr v5, v7

    .line 825
    if-lez v5, :cond_19

    .line 826
    .line 827
    shl-int/lit8 v7, v12, 0x3

    .line 828
    .line 829
    invoke-static {v7}, Lnh9;->n(I)I

    .line 830
    .line 831
    .line 832
    move-result v7

    .line 833
    goto/16 :goto_d

    .line 834
    .line 835
    :pswitch_21
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v5

    .line 839
    check-cast v5, Ljava/util/List;

    .line 840
    .line 841
    sget-object v7, Lnm9;->a:Lns0;

    .line 842
    .line 843
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 844
    .line 845
    .line 846
    move-result v5

    .line 847
    mul-int/2addr v5, v8

    .line 848
    if-lez v5, :cond_19

    .line 849
    .line 850
    shl-int/lit8 v7, v12, 0x3

    .line 851
    .line 852
    invoke-static {v7}, Lnh9;->n(I)I

    .line 853
    .line 854
    .line 855
    move-result v7

    .line 856
    goto/16 :goto_d

    .line 857
    .line 858
    :pswitch_22
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v5

    .line 862
    check-cast v5, Ljava/util/List;

    .line 863
    .line 864
    sget-object v7, Lnm9;->a:Lns0;

    .line 865
    .line 866
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 867
    .line 868
    .line 869
    move-result v7

    .line 870
    if-nez v7, :cond_a

    .line 871
    .line 872
    :goto_e
    move/from16 v8, v16

    .line 873
    .line 874
    goto :goto_10

    .line 875
    :cond_a
    shl-int/lit8 v8, v12, 0x3

    .line 876
    .line 877
    invoke-static {v5}, Lnm9;->m(Ljava/util/List;)I

    .line 878
    .line 879
    .line 880
    move-result v5

    .line 881
    invoke-static {v8}, Lnh9;->n(I)I

    .line 882
    .line 883
    .line 884
    move-result v8

    .line 885
    :goto_f
    mul-int/2addr v8, v7

    .line 886
    add-int/2addr v8, v5

    .line 887
    :cond_b
    :goto_10
    add-int/2addr v9, v8

    .line 888
    goto/16 :goto_1e

    .line 889
    .line 890
    :pswitch_23
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v5

    .line 894
    check-cast v5, Ljava/util/List;

    .line 895
    .line 896
    sget-object v7, Lnm9;->a:Lns0;

    .line 897
    .line 898
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 899
    .line 900
    .line 901
    move-result v7

    .line 902
    if-nez v7, :cond_c

    .line 903
    .line 904
    goto :goto_e

    .line 905
    :cond_c
    shl-int/lit8 v8, v12, 0x3

    .line 906
    .line 907
    invoke-static {v5}, Lnm9;->l(Ljava/util/List;)I

    .line 908
    .line 909
    .line 910
    move-result v5

    .line 911
    invoke-static {v8}, Lnh9;->n(I)I

    .line 912
    .line 913
    .line 914
    move-result v8

    .line 915
    goto :goto_f

    .line 916
    :pswitch_24
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v5

    .line 920
    check-cast v5, Ljava/util/List;

    .line 921
    .line 922
    invoke-static {v12, v5}, Lnm9;->i(ILjava/util/List;)I

    .line 923
    .line 924
    .line 925
    move-result v5

    .line 926
    goto/16 :goto_4

    .line 927
    .line 928
    :pswitch_25
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v5

    .line 932
    check-cast v5, Ljava/util/List;

    .line 933
    .line 934
    invoke-static {v12, v5}, Lnm9;->h(ILjava/util/List;)I

    .line 935
    .line 936
    .line 937
    move-result v5

    .line 938
    goto/16 :goto_4

    .line 939
    .line 940
    :pswitch_26
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v5

    .line 944
    check-cast v5, Ljava/util/List;

    .line 945
    .line 946
    sget-object v7, Lnm9;->a:Lns0;

    .line 947
    .line 948
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 949
    .line 950
    .line 951
    move-result v7

    .line 952
    if-nez v7, :cond_d

    .line 953
    .line 954
    goto :goto_e

    .line 955
    :cond_d
    shl-int/lit8 v8, v12, 0x3

    .line 956
    .line 957
    invoke-static {v5}, Lnm9;->g(Ljava/util/List;)I

    .line 958
    .line 959
    .line 960
    move-result v5

    .line 961
    invoke-static {v8}, Lnh9;->n(I)I

    .line 962
    .line 963
    .line 964
    move-result v8

    .line 965
    goto :goto_f

    .line 966
    :pswitch_27
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    move-result-object v5

    .line 970
    check-cast v5, Ljava/util/List;

    .line 971
    .line 972
    sget-object v7, Lnm9;->a:Lns0;

    .line 973
    .line 974
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 975
    .line 976
    .line 977
    move-result v7

    .line 978
    if-nez v7, :cond_e

    .line 979
    .line 980
    goto :goto_e

    .line 981
    :cond_e
    shl-int/lit8 v8, v12, 0x3

    .line 982
    .line 983
    invoke-static {v5}, Lnm9;->n(Ljava/util/List;)I

    .line 984
    .line 985
    .line 986
    move-result v5

    .line 987
    invoke-static {v8}, Lnh9;->n(I)I

    .line 988
    .line 989
    .line 990
    move-result v8

    .line 991
    goto :goto_f

    .line 992
    :pswitch_28
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v5

    .line 996
    check-cast v5, Ljava/util/List;

    .line 997
    .line 998
    sget-object v7, Lnm9;->a:Lns0;

    .line 999
    .line 1000
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1001
    .line 1002
    .line 1003
    move-result v7

    .line 1004
    if-nez v7, :cond_f

    .line 1005
    .line 1006
    goto/16 :goto_e

    .line 1007
    .line 1008
    :cond_f
    shl-int/lit8 v8, v12, 0x3

    .line 1009
    .line 1010
    invoke-static {v8}, Lnh9;->n(I)I

    .line 1011
    .line 1012
    .line 1013
    move-result v8

    .line 1014
    mul-int/2addr v8, v7

    .line 1015
    move/from16 v7, v16

    .line 1016
    .line 1017
    :goto_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1018
    .line 1019
    .line 1020
    move-result v10

    .line 1021
    if-ge v7, v10, :cond_b

    .line 1022
    .line 1023
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v10

    .line 1027
    check-cast v10, Ldh9;

    .line 1028
    .line 1029
    invoke-virtual {v10}, Ldh9;->f()I

    .line 1030
    .line 1031
    .line 1032
    move-result v10

    .line 1033
    invoke-static {v10, v10, v8}, Lu48;->t(III)I

    .line 1034
    .line 1035
    .line 1036
    move-result v8

    .line 1037
    add-int/lit8 v7, v7, 0x1

    .line 1038
    .line 1039
    goto :goto_11

    .line 1040
    :pswitch_29
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v5

    .line 1044
    check-cast v5, Ljava/util/List;

    .line 1045
    .line 1046
    invoke-virtual {v0, v2}, Lpl9;->y(I)Ljm9;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v7

    .line 1050
    sget-object v8, Lnm9;->a:Lns0;

    .line 1051
    .line 1052
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1053
    .line 1054
    .line 1055
    move-result v8

    .line 1056
    if-nez v8, :cond_10

    .line 1057
    .line 1058
    move/from16 v10, v16

    .line 1059
    .line 1060
    goto :goto_13

    .line 1061
    :cond_10
    shl-int/lit8 v10, v12, 0x3

    .line 1062
    .line 1063
    invoke-static {v10}, Lnh9;->n(I)I

    .line 1064
    .line 1065
    .line 1066
    move-result v10

    .line 1067
    mul-int/2addr v10, v8

    .line 1068
    move/from16 v11, v16

    .line 1069
    .line 1070
    :goto_12
    if-ge v11, v8, :cond_11

    .line 1071
    .line 1072
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v12

    .line 1076
    check-cast v12, Lmg9;

    .line 1077
    .line 1078
    invoke-virtual {v12, v7}, Lmg9;->c(Ljm9;)I

    .line 1079
    .line 1080
    .line 1081
    move-result v12

    .line 1082
    invoke-static {v12, v12, v10}, Lu48;->t(III)I

    .line 1083
    .line 1084
    .line 1085
    move-result v10

    .line 1086
    add-int/lit8 v11, v11, 0x1

    .line 1087
    .line 1088
    goto :goto_12

    .line 1089
    :cond_11
    :goto_13
    add-int/2addr v9, v10

    .line 1090
    goto/16 :goto_1e

    .line 1091
    .line 1092
    :pswitch_2a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v5

    .line 1096
    check-cast v5, Ljava/util/List;

    .line 1097
    .line 1098
    sget-object v7, Lnm9;->a:Lns0;

    .line 1099
    .line 1100
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1101
    .line 1102
    .line 1103
    move-result v7

    .line 1104
    if-nez v7, :cond_12

    .line 1105
    .line 1106
    goto/16 :goto_e

    .line 1107
    .line 1108
    :cond_12
    shl-int/lit8 v8, v12, 0x3

    .line 1109
    .line 1110
    invoke-static {v8}, Lnh9;->n(I)I

    .line 1111
    .line 1112
    .line 1113
    move-result v8

    .line 1114
    mul-int/2addr v8, v7

    .line 1115
    move/from16 v10, v16

    .line 1116
    .line 1117
    :goto_14
    if-ge v10, v7, :cond_b

    .line 1118
    .line 1119
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v11

    .line 1123
    instance-of v12, v11, Ldh9;

    .line 1124
    .line 1125
    if-eqz v12, :cond_13

    .line 1126
    .line 1127
    check-cast v11, Ldh9;

    .line 1128
    .line 1129
    invoke-virtual {v11}, Ldh9;->f()I

    .line 1130
    .line 1131
    .line 1132
    move-result v11

    .line 1133
    :goto_15
    invoke-static {v11, v11, v8}, Lu48;->t(III)I

    .line 1134
    .line 1135
    .line 1136
    move-result v8

    .line 1137
    goto :goto_16

    .line 1138
    :cond_13
    check-cast v11, Ljava/lang/String;

    .line 1139
    .line 1140
    invoke-static {v11}, Lxn9;->b(Ljava/lang/String;)I

    .line 1141
    .line 1142
    .line 1143
    move-result v11

    .line 1144
    goto :goto_15

    .line 1145
    :goto_16
    add-int/lit8 v10, v10, 0x1

    .line 1146
    .line 1147
    goto :goto_14

    .line 1148
    :pswitch_2b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v5

    .line 1152
    check-cast v5, Ljava/util/List;

    .line 1153
    .line 1154
    sget-object v7, Lnm9;->a:Lns0;

    .line 1155
    .line 1156
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1157
    .line 1158
    .line 1159
    move-result v5

    .line 1160
    if-nez v5, :cond_14

    .line 1161
    .line 1162
    :goto_17
    move/from16 v7, v16

    .line 1163
    .line 1164
    goto :goto_18

    .line 1165
    :cond_14
    shl-int/lit8 v7, v12, 0x3

    .line 1166
    .line 1167
    invoke-static {v7}, Lnh9;->n(I)I

    .line 1168
    .line 1169
    .line 1170
    move-result v7

    .line 1171
    add-int/2addr v7, v15

    .line 1172
    mul-int/2addr v7, v5

    .line 1173
    :goto_18
    add-int/2addr v9, v7

    .line 1174
    goto/16 :goto_1e

    .line 1175
    .line 1176
    :pswitch_2c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v5

    .line 1180
    check-cast v5, Ljava/util/List;

    .line 1181
    .line 1182
    invoke-static {v12, v5}, Lnm9;->h(ILjava/util/List;)I

    .line 1183
    .line 1184
    .line 1185
    move-result v5

    .line 1186
    goto/16 :goto_4

    .line 1187
    .line 1188
    :pswitch_2d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v5

    .line 1192
    check-cast v5, Ljava/util/List;

    .line 1193
    .line 1194
    invoke-static {v12, v5}, Lnm9;->i(ILjava/util/List;)I

    .line 1195
    .line 1196
    .line 1197
    move-result v5

    .line 1198
    goto/16 :goto_4

    .line 1199
    .line 1200
    :pswitch_2e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v5

    .line 1204
    check-cast v5, Ljava/util/List;

    .line 1205
    .line 1206
    sget-object v7, Lnm9;->a:Lns0;

    .line 1207
    .line 1208
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1209
    .line 1210
    .line 1211
    move-result v7

    .line 1212
    if-nez v7, :cond_15

    .line 1213
    .line 1214
    goto/16 :goto_e

    .line 1215
    .line 1216
    :cond_15
    shl-int/lit8 v8, v12, 0x3

    .line 1217
    .line 1218
    invoke-static {v5}, Lnm9;->j(Ljava/util/List;)I

    .line 1219
    .line 1220
    .line 1221
    move-result v5

    .line 1222
    invoke-static {v8}, Lnh9;->n(I)I

    .line 1223
    .line 1224
    .line 1225
    move-result v8

    .line 1226
    goto/16 :goto_f

    .line 1227
    .line 1228
    :pswitch_2f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v5

    .line 1232
    check-cast v5, Ljava/util/List;

    .line 1233
    .line 1234
    sget-object v7, Lnm9;->a:Lns0;

    .line 1235
    .line 1236
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1237
    .line 1238
    .line 1239
    move-result v7

    .line 1240
    if-nez v7, :cond_16

    .line 1241
    .line 1242
    goto/16 :goto_e

    .line 1243
    .line 1244
    :cond_16
    shl-int/lit8 v8, v12, 0x3

    .line 1245
    .line 1246
    invoke-static {v5}, Lnm9;->o(Ljava/util/List;)I

    .line 1247
    .line 1248
    .line 1249
    move-result v5

    .line 1250
    invoke-static {v8}, Lnh9;->n(I)I

    .line 1251
    .line 1252
    .line 1253
    move-result v8

    .line 1254
    goto/16 :goto_f

    .line 1255
    .line 1256
    :pswitch_30
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v5

    .line 1260
    check-cast v5, Ljava/util/List;

    .line 1261
    .line 1262
    sget-object v7, Lnm9;->a:Lns0;

    .line 1263
    .line 1264
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1265
    .line 1266
    .line 1267
    move-result v7

    .line 1268
    if-nez v7, :cond_17

    .line 1269
    .line 1270
    goto :goto_17

    .line 1271
    :cond_17
    shl-int/lit8 v7, v12, 0x3

    .line 1272
    .line 1273
    invoke-static {v5}, Lnm9;->k(Ljava/util/List;)I

    .line 1274
    .line 1275
    .line 1276
    move-result v8

    .line 1277
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1278
    .line 1279
    .line 1280
    move-result v5

    .line 1281
    invoke-static {v7}, Lnh9;->n(I)I

    .line 1282
    .line 1283
    .line 1284
    move-result v7

    .line 1285
    mul-int/2addr v7, v5

    .line 1286
    add-int/2addr v7, v8

    .line 1287
    goto :goto_18

    .line 1288
    :pswitch_31
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v5

    .line 1292
    check-cast v5, Ljava/util/List;

    .line 1293
    .line 1294
    invoke-static {v12, v5}, Lnm9;->h(ILjava/util/List;)I

    .line 1295
    .line 1296
    .line 1297
    move-result v5

    .line 1298
    goto/16 :goto_4

    .line 1299
    .line 1300
    :pswitch_32
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v5

    .line 1304
    check-cast v5, Ljava/util/List;

    .line 1305
    .line 1306
    invoke-static {v12, v5}, Lnm9;->i(ILjava/util/List;)I

    .line 1307
    .line 1308
    .line 1309
    move-result v5

    .line 1310
    goto/16 :goto_4

    .line 1311
    .line 1312
    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1313
    .line 1314
    .line 1315
    move-result v5

    .line 1316
    if-eqz v5, :cond_19

    .line 1317
    .line 1318
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v5

    .line 1322
    check-cast v5, Lmg9;

    .line 1323
    .line 1324
    invoke-virtual {v0, v2}, Lpl9;->y(I)Ljm9;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v7

    .line 1328
    sget-object v8, Lnm9;->a:Lns0;

    .line 1329
    .line 1330
    shl-int/lit8 v8, v12, 0x3

    .line 1331
    .line 1332
    invoke-static {v8}, Lnh9;->n(I)I

    .line 1333
    .line 1334
    .line 1335
    move-result v8

    .line 1336
    add-int/2addr v8, v8

    .line 1337
    invoke-virtual {v5, v7}, Lmg9;->c(Ljm9;)I

    .line 1338
    .line 1339
    .line 1340
    move-result v5

    .line 1341
    goto/16 :goto_3

    .line 1342
    .line 1343
    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1344
    .line 1345
    .line 1346
    move-result v5

    .line 1347
    if-eqz v5, :cond_19

    .line 1348
    .line 1349
    shl-int/lit8 v0, v12, 0x3

    .line 1350
    .line 1351
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1352
    .line 1353
    .line 1354
    move-result-wide v7

    .line 1355
    add-long v11, v7, v7

    .line 1356
    .line 1357
    shr-long/2addr v7, v10

    .line 1358
    invoke-static {v0}, Lnh9;->n(I)I

    .line 1359
    .line 1360
    .line 1361
    move-result v0

    .line 1362
    xor-long/2addr v7, v11

    .line 1363
    invoke-static {v7, v8}, Lnh9;->o(J)I

    .line 1364
    .line 1365
    .line 1366
    move-result v5

    .line 1367
    :goto_19
    add-int/2addr v5, v0

    .line 1368
    goto/16 :goto_4

    .line 1369
    .line 1370
    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1371
    .line 1372
    .line 1373
    move-result v5

    .line 1374
    if-eqz v5, :cond_19

    .line 1375
    .line 1376
    shl-int/lit8 v0, v12, 0x3

    .line 1377
    .line 1378
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1379
    .line 1380
    .line 1381
    move-result v5

    .line 1382
    add-int v7, v5, v5

    .line 1383
    .line 1384
    shr-int/lit8 v5, v5, 0x1f

    .line 1385
    .line 1386
    invoke-static {v0}, Lnh9;->n(I)I

    .line 1387
    .line 1388
    .line 1389
    move-result v0

    .line 1390
    xor-int/2addr v5, v7

    .line 1391
    :goto_1a
    invoke-static {v5, v0, v9}, Lu48;->t(III)I

    .line 1392
    .line 1393
    .line 1394
    move-result v9

    .line 1395
    goto/16 :goto_1e

    .line 1396
    .line 1397
    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1398
    .line 1399
    .line 1400
    move-result v5

    .line 1401
    if-eqz v5, :cond_19

    .line 1402
    .line 1403
    :goto_1b
    shl-int/lit8 v0, v12, 0x3

    .line 1404
    .line 1405
    invoke-static {v0, v8, v9}, Lu48;->t(III)I

    .line 1406
    .line 1407
    .line 1408
    move-result v9

    .line 1409
    goto/16 :goto_1e

    .line 1410
    .line 1411
    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1412
    .line 1413
    .line 1414
    move-result v5

    .line 1415
    if-eqz v5, :cond_19

    .line 1416
    .line 1417
    :goto_1c
    shl-int/lit8 v0, v12, 0x3

    .line 1418
    .line 1419
    invoke-static {v0, v7, v9}, Lu48;->t(III)I

    .line 1420
    .line 1421
    .line 1422
    move-result v9

    .line 1423
    goto/16 :goto_1e

    .line 1424
    .line 1425
    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1426
    .line 1427
    .line 1428
    move-result v5

    .line 1429
    if-eqz v5, :cond_19

    .line 1430
    .line 1431
    shl-int/lit8 v0, v12, 0x3

    .line 1432
    .line 1433
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1434
    .line 1435
    .line 1436
    move-result v5

    .line 1437
    int-to-long v7, v5

    .line 1438
    invoke-static {v0}, Lnh9;->n(I)I

    .line 1439
    .line 1440
    .line 1441
    move-result v0

    .line 1442
    invoke-static {v7, v8}, Lnh9;->o(J)I

    .line 1443
    .line 1444
    .line 1445
    move-result v5

    .line 1446
    goto :goto_19

    .line 1447
    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1448
    .line 1449
    .line 1450
    move-result v5

    .line 1451
    if-eqz v5, :cond_19

    .line 1452
    .line 1453
    shl-int/lit8 v0, v12, 0x3

    .line 1454
    .line 1455
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1456
    .line 1457
    .line 1458
    move-result v5

    .line 1459
    invoke-static {v0}, Lnh9;->n(I)I

    .line 1460
    .line 1461
    .line 1462
    move-result v0

    .line 1463
    goto :goto_1a

    .line 1464
    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1465
    .line 1466
    .line 1467
    move-result v5

    .line 1468
    if-eqz v5, :cond_19

    .line 1469
    .line 1470
    shl-int/lit8 v0, v12, 0x3

    .line 1471
    .line 1472
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v5

    .line 1476
    check-cast v5, Ldh9;

    .line 1477
    .line 1478
    invoke-static {v0}, Lnh9;->n(I)I

    .line 1479
    .line 1480
    .line 1481
    move-result v0

    .line 1482
    invoke-virtual {v5}, Ldh9;->f()I

    .line 1483
    .line 1484
    .line 1485
    move-result v5

    .line 1486
    :goto_1d
    invoke-static {v5, v5, v0, v9}, Lu48;->i(IIII)I

    .line 1487
    .line 1488
    .line 1489
    move-result v9

    .line 1490
    goto/16 :goto_1e

    .line 1491
    .line 1492
    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1493
    .line 1494
    .line 1495
    move-result v5

    .line 1496
    if-eqz v5, :cond_19

    .line 1497
    .line 1498
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v5

    .line 1502
    invoke-virtual {v0, v2}, Lpl9;->y(I)Ljm9;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v7

    .line 1506
    sget-object v8, Lnm9;->a:Lns0;

    .line 1507
    .line 1508
    shl-int/lit8 v8, v12, 0x3

    .line 1509
    .line 1510
    check-cast v5, Lmg9;

    .line 1511
    .line 1512
    invoke-static {v8}, Lnh9;->n(I)I

    .line 1513
    .line 1514
    .line 1515
    move-result v8

    .line 1516
    invoke-virtual {v5, v7}, Lmg9;->c(Ljm9;)I

    .line 1517
    .line 1518
    .line 1519
    move-result v5

    .line 1520
    goto/16 :goto_a

    .line 1521
    .line 1522
    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1523
    .line 1524
    .line 1525
    move-result v5

    .line 1526
    if-eqz v5, :cond_19

    .line 1527
    .line 1528
    shl-int/lit8 v0, v12, 0x3

    .line 1529
    .line 1530
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v5

    .line 1534
    instance-of v7, v5, Ldh9;

    .line 1535
    .line 1536
    if-eqz v7, :cond_18

    .line 1537
    .line 1538
    check-cast v5, Ldh9;

    .line 1539
    .line 1540
    invoke-static {v0}, Lnh9;->n(I)I

    .line 1541
    .line 1542
    .line 1543
    move-result v0

    .line 1544
    invoke-virtual {v5}, Ldh9;->f()I

    .line 1545
    .line 1546
    .line 1547
    move-result v5

    .line 1548
    goto :goto_1d

    .line 1549
    :cond_18
    check-cast v5, Ljava/lang/String;

    .line 1550
    .line 1551
    invoke-static {v0}, Lnh9;->n(I)I

    .line 1552
    .line 1553
    .line 1554
    move-result v0

    .line 1555
    invoke-static {v5}, Lxn9;->b(Ljava/lang/String;)I

    .line 1556
    .line 1557
    .line 1558
    move-result v5

    .line 1559
    goto :goto_1d

    .line 1560
    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1561
    .line 1562
    .line 1563
    move-result v5

    .line 1564
    if-eqz v5, :cond_19

    .line 1565
    .line 1566
    shl-int/lit8 v0, v12, 0x3

    .line 1567
    .line 1568
    invoke-static {v0, v15, v9}, Lu48;->t(III)I

    .line 1569
    .line 1570
    .line 1571
    move-result v9

    .line 1572
    goto :goto_1e

    .line 1573
    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1574
    .line 1575
    .line 1576
    move-result v5

    .line 1577
    if-eqz v5, :cond_19

    .line 1578
    .line 1579
    goto/16 :goto_1c

    .line 1580
    .line 1581
    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1582
    .line 1583
    .line 1584
    move-result v5

    .line 1585
    if-eqz v5, :cond_19

    .line 1586
    .line 1587
    goto/16 :goto_1b

    .line 1588
    .line 1589
    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1590
    .line 1591
    .line 1592
    move-result v5

    .line 1593
    if-eqz v5, :cond_19

    .line 1594
    .line 1595
    shl-int/lit8 v0, v12, 0x3

    .line 1596
    .line 1597
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1598
    .line 1599
    .line 1600
    move-result v5

    .line 1601
    int-to-long v7, v5

    .line 1602
    invoke-static {v0}, Lnh9;->n(I)I

    .line 1603
    .line 1604
    .line 1605
    move-result v0

    .line 1606
    invoke-static {v7, v8}, Lnh9;->o(J)I

    .line 1607
    .line 1608
    .line 1609
    move-result v5

    .line 1610
    goto/16 :goto_19

    .line 1611
    .line 1612
    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1613
    .line 1614
    .line 1615
    move-result v5

    .line 1616
    if-eqz v5, :cond_19

    .line 1617
    .line 1618
    shl-int/lit8 v0, v12, 0x3

    .line 1619
    .line 1620
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1621
    .line 1622
    .line 1623
    move-result-wide v7

    .line 1624
    invoke-static {v0}, Lnh9;->n(I)I

    .line 1625
    .line 1626
    .line 1627
    move-result v0

    .line 1628
    invoke-static {v7, v8}, Lnh9;->o(J)I

    .line 1629
    .line 1630
    .line 1631
    move-result v5

    .line 1632
    goto/16 :goto_19

    .line 1633
    .line 1634
    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1635
    .line 1636
    .line 1637
    move-result v5

    .line 1638
    if-eqz v5, :cond_19

    .line 1639
    .line 1640
    shl-int/lit8 v0, v12, 0x3

    .line 1641
    .line 1642
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1643
    .line 1644
    .line 1645
    move-result-wide v7

    .line 1646
    invoke-static {v0}, Lnh9;->n(I)I

    .line 1647
    .line 1648
    .line 1649
    move-result v0

    .line 1650
    invoke-static {v7, v8}, Lnh9;->o(J)I

    .line 1651
    .line 1652
    .line 1653
    move-result v5

    .line 1654
    goto/16 :goto_19

    .line 1655
    .line 1656
    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1657
    .line 1658
    .line 1659
    move-result v5

    .line 1660
    if-eqz v5, :cond_19

    .line 1661
    .line 1662
    goto/16 :goto_1c

    .line 1663
    .line 1664
    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Lpl9;->n(Ljava/lang/Object;IIII)Z

    .line 1665
    .line 1666
    .line 1667
    move-result v5

    .line 1668
    if-eqz v5, :cond_19

    .line 1669
    .line 1670
    goto/16 :goto_1b

    .line 1671
    .line 1672
    :cond_19
    :goto_1e
    add-int/lit8 v2, v2, 0x3

    .line 1673
    .line 1674
    move-object/from16 v0, p0

    .line 1675
    .line 1676
    move-object/from16 v1, p1

    .line 1677
    .line 1678
    const v8, 0xfffff

    .line 1679
    .line 1680
    .line 1681
    goto/16 :goto_0

    .line 1682
    .line 1683
    :cond_1a
    move-object/from16 v0, p1

    .line 1684
    .line 1685
    check-cast v0, Lxi9;

    .line 1686
    .line 1687
    iget-object v0, v0, Lxi9;->zzc:Lmn9;

    .line 1688
    .line 1689
    invoke-virtual {v0}, Lmn9;->a()I

    .line 1690
    .line 1691
    .line 1692
    move-result v0

    .line 1693
    add-int/2addr v0, v9

    .line 1694
    return v0

    .line 1695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public final g(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p3}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lpl9;->v(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    sget-object v1, Lpl9;->k:Lsun/misc/Unsafe;

    .line 17
    .line 18
    int-to-long v2, v0

    .line 19
    invoke-virtual {v1, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lpl9;->y(I)Ljm9;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p1, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Lpl9;->o(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p3}, Ljm9;->zze()Lxi9;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p3, v4, v0}, Ljm9;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p2, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0, p1, p2}, Lpl9;->i(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lpl9;->o(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    invoke-interface {p3}, Ljm9;->zze()Lxi9;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p3, p1, p0}, Ljm9;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p2, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p0, p1

    .line 80
    :cond_3
    invoke-interface {p3, p0, v0}, Ljm9;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    iget-object p0, p0, Lpl9;->a:[I

    .line 85
    .line 86
    aget p0, p0, p1

    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string p2, "Source subfield "

    .line 93
    .line 94
    const-string p3, " is present but null: "

    .line 95
    .line 96
    invoke-static {p0, p2, p3, p1}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final h(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lpl9;->a:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p0, p3, v1, p1}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lpl9;->v(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    sget-object v4, Lpl9;->k:Lsun/misc/Unsafe;

    .line 21
    .line 22
    int-to-long v5, v2

    .line 23
    invoke-virtual {v4, p3, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lpl9;->y(I)Ljm9;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, p2, v1, p1}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_2

    .line 38
    .line 39
    invoke-static {v2}, Lpl9;->o(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4, p2, v5, v6, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p3}, Ljm9;->zze()Lxi9;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p3, p0, v2}, Ljm9;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p2, v5, v6, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    add-int/lit8 p1, p1, 0x2

    .line 60
    .line 61
    aget p0, v0, p1

    .line 62
    .line 63
    and-int/2addr p0, v3

    .line 64
    int-to-long p0, p0

    .line 65
    invoke-static {p2, p0, p1, v1}, Lun9;->j(Ljava/lang/Object;JI)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-virtual {v4, p2, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lpl9;->o(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_3

    .line 78
    .line 79
    invoke-interface {p3}, Ljm9;->zze()Lxi9;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p3, p1, p0}, Ljm9;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, p2, v5, v6, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object p0, p1

    .line 90
    :cond_3
    invoke-interface {p3, p0, v2}, Ljm9;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    aget p0, v0, p1

    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string p2, "Source subfield "

    .line 101
    .line 102
    const-string p3, " is present but null: "

    .line 103
    .line 104
    invoke-static {p0, p2, p3, p1}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final i(ILjava/lang/Object;)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Lpl9;->a:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const p1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p1, p0

    .line 11
    int-to-long v0, p1

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    .line 21
    .line 22
    invoke-static {p2, v0, v1}, Lun9;->e(Ljava/lang/Object;J)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v2, 0x1

    .line 27
    shl-int p0, v2, p0

    .line 28
    .line 29
    or-int/2addr p0, p1

    .line 30
    invoke-static {p2, v0, v1, p0}, Lun9;->j(Ljava/lang/Object;JI)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final j(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lpl9;->k:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lpl9;->v(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p2, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lpl9;->i(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final k(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 5

    .line 1
    sget-object v0, Lpl9;->k:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lpl9;->v(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v3, v1

    .line 12
    invoke-virtual {v0, p1, v3, v4, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 p3, p3, 0x2

    .line 16
    .line 17
    iget-object p0, p0, Lpl9;->a:[I

    .line 18
    .line 19
    aget p0, p0, p3

    .line 20
    .line 21
    and-int/2addr p0, v2

    .line 22
    int-to-long p3, p0

    .line 23
    invoke-static {p1, p3, p4, p2}, Lun9;->j(Ljava/lang/Object;JI)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final l(Lxi9;Lxi9;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p1}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p3, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final m(ILjava/lang/Object;)Z
    .locals 7

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Lpl9;->a:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    cmp-long v4, v2, v4

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-nez v4, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lpl9;->v(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    and-int p1, p0, v1

    .line 27
    .line 28
    invoke-static {p0}, Lpl9;->u(I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    int-to-long v0, p1

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lc6;->b()V

    .line 39
    .line 40
    .line 41
    return v5

    .line 42
    :pswitch_0
    invoke-static {p2, v0, v1}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :pswitch_1
    invoke-static {p2, v0, v1}, Lun9;->f(Ljava/lang/Object;J)J

    .line 51
    .line 52
    .line 53
    move-result-wide p0

    .line 54
    cmp-long p0, p0, v2

    .line 55
    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :pswitch_2
    invoke-static {p2, v0, v1}, Lun9;->e(Ljava/lang/Object;J)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :pswitch_3
    invoke-static {p2, v0, v1}, Lun9;->f(Ljava/lang/Object;J)J

    .line 69
    .line 70
    .line 71
    move-result-wide p0

    .line 72
    cmp-long p0, p0, v2

    .line 73
    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :pswitch_4
    invoke-static {p2, v0, v1}, Lun9;->e(Ljava/lang/Object;J)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_5
    invoke-static {p2, v0, v1}, Lun9;->e(Ljava/lang/Object;J)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :pswitch_6
    invoke-static {p2, v0, v1}, Lun9;->e(Ljava/lang/Object;J)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_3

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :pswitch_7
    sget-object p0, Ldh9;->b:Lfh9;

    .line 103
    .line 104
    invoke-static {p2, v0, v1}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Ldh9;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-nez p0, :cond_3

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :pswitch_8
    invoke-static {p2, v0, v1}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    if-eqz p0, :cond_3

    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :pswitch_9
    invoke-static {p2, v0, v1}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    instance-of p1, p0, Ljava/lang/String;

    .line 129
    .line 130
    if-eqz p1, :cond_0

    .line 131
    .line 132
    check-cast p0, Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-nez p0, :cond_3

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_0
    instance-of p1, p0, Ldh9;

    .line 143
    .line 144
    if-eqz p1, :cond_1

    .line 145
    .line 146
    sget-object p1, Ldh9;->b:Lfh9;

    .line 147
    .line 148
    invoke-virtual {p1, p0}, Ldh9;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-nez p0, :cond_3

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    invoke-static {}, Lc6;->b()V

    .line 156
    .line 157
    .line 158
    return v5

    .line 159
    :pswitch_a
    sget-object p0, Lun9;->c:Lcm9;

    .line 160
    .line 161
    invoke-virtual {p0, p2, v0, v1}, Lcm9;->j(Ljava/lang/Object;J)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    return p0

    .line 166
    :pswitch_b
    invoke-static {p2, v0, v1}, Lun9;->e(Ljava/lang/Object;J)I

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-eqz p0, :cond_3

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :pswitch_c
    invoke-static {p2, v0, v1}, Lun9;->f(Ljava/lang/Object;J)J

    .line 174
    .line 175
    .line 176
    move-result-wide p0

    .line 177
    cmp-long p0, p0, v2

    .line 178
    .line 179
    if-eqz p0, :cond_3

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :pswitch_d
    invoke-static {p2, v0, v1}, Lun9;->e(Ljava/lang/Object;J)I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-eqz p0, :cond_3

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :pswitch_e
    invoke-static {p2, v0, v1}, Lun9;->f(Ljava/lang/Object;J)J

    .line 190
    .line 191
    .line 192
    move-result-wide p0

    .line 193
    cmp-long p0, p0, v2

    .line 194
    .line 195
    if-eqz p0, :cond_3

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :pswitch_f
    invoke-static {p2, v0, v1}, Lun9;->f(Ljava/lang/Object;J)J

    .line 199
    .line 200
    .line 201
    move-result-wide p0

    .line 202
    cmp-long p0, p0, v2

    .line 203
    .line 204
    if-eqz p0, :cond_3

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :pswitch_10
    sget-object p0, Lun9;->c:Lcm9;

    .line 208
    .line 209
    invoke-virtual {p0, p2, v0, v1}, Lcm9;->b(Ljava/lang/Object;J)F

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    if-eqz p0, :cond_3

    .line 218
    .line 219
    goto :goto_0

    .line 220
    :pswitch_11
    sget-object p0, Lun9;->c:Lcm9;

    .line 221
    .line 222
    invoke-virtual {p0, p2, v0, v1}, Lcm9;->a(Ljava/lang/Object;J)D

    .line 223
    .line 224
    .line 225
    move-result-wide p0

    .line 226
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 227
    .line 228
    .line 229
    move-result-wide p0

    .line 230
    cmp-long p0, p0, v2

    .line 231
    .line 232
    if-eqz p0, :cond_3

    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    .line 236
    .line 237
    shl-int p0, v6, p0

    .line 238
    .line 239
    invoke-static {p2, v2, v3}, Lun9;->e(Ljava/lang/Object;J)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    and-int/2addr p0, p1

    .line 244
    if-eqz p0, :cond_3

    .line 245
    .line 246
    :goto_0
    return v6

    .line 247
    :cond_3
    return v5

    .line 248
    nop

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public final n(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    and-int p0, p4, p5

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final p(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    add-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Lpl9;->a:[I

    .line 4
    .line 5
    aget p0, p0, p3

    .line 6
    .line 7
    const p3, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p3

    .line 11
    int-to-long v0, p0

    .line 12
    invoke-static {p1, v0, v1}, Lun9;->e(Ljava/lang/Object;J)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-ne p0, p2, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final q(Ljava/lang/Object;[BIIILrg9;)I
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    .line 1
    invoke-static {v2}, Lpl9;->o(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 2
    sget-object v1, Lpl9;->k:Lsun/misc/Unsafe;

    move/from16 v4, p3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffff

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    const v16, 0xfffff

    :goto_1
    iget-object v13, v0, Lpl9;->b:[Ljava/lang/Object;

    iget-object v12, v0, Lpl9;->a:[I

    if-ge v4, v5, :cond_7e

    add-int/lit8 v15, v4, 0x1

    .line 3
    aget-byte v4, v3, v4

    if-gez v4, :cond_0

    .line 4
    invoke-static {v4, v3, v15, v6}, Lsz8;->s0(I[BILrg9;)I

    move-result v15

    iget v4, v6, Lrg9;->a:I

    :cond_0
    move/from16 v35, v15

    move v15, v4

    move/from16 v4, v35

    const/16 p3, 0x3

    ushr-int/lit8 v11, v15, 0x3

    iget v3, v0, Lpl9;->d:I

    move/from16 v19, v4

    iget v4, v0, Lpl9;->c:I

    if-le v11, v7, :cond_1

    div-int/lit8 v8, v8, 0x3

    if-lt v11, v4, :cond_2

    if-gt v11, v3, :cond_2

    .line 5
    invoke-virtual {v0, v11, v8}, Lpl9;->t(II)I

    move-result v3

    goto :goto_2

    :cond_1
    if-lt v11, v4, :cond_2

    if-gt v11, v3, :cond_2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v11, v3}, Lpl9;->t(II)I

    move-result v4

    move v3, v4

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    .line 7
    :goto_2
    sget-object v8, Lmn9;->f:Lmn9;

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    move v0, v11

    move-object v11, v8

    move v8, v0

    move/from16 v0, p5

    move/from16 v20, v4

    move-object v4, v6

    move/from16 v31, v9

    move-object/from16 v21, v12

    move-object/from16 v17, v13

    move/from16 v3, v19

    const/4 v10, 0x0

    move-object v12, v1

    move-object v9, v2

    :goto_3
    move-object/from16 v1, p2

    goto/16 :goto_43

    :cond_3
    and-int/lit8 v7, v15, 0x7

    add-int/lit8 v17, v3, 0x1

    .line 8
    aget v4, v12, v17

    invoke-static {v4}, Lpl9;->u(I)I

    move-result v5

    and-int v6, v4, v16

    move-object/from16 v21, v12

    move-object/from16 v17, v13

    int-to-long v12, v6

    const-wide/16 v22, 0x1

    const/high16 v24, 0x20000000

    const-string v25, "Protocol message had invalid UTF-8."

    const-wide/16 v26, 0x0

    const-string v6, ""

    const-string v30, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-wide/from16 v31, v12

    const/16 v12, 0x11

    const/16 v33, 0x1

    if-gt v5, v12, :cond_26

    add-int/lit8 v12, v3, 0x2

    .line 9
    aget v12, v21, v12

    ushr-int/lit8 v28, v12, 0x14

    shl-int v28, v33, v28

    and-int v12, v12, v16

    if-eq v12, v9, :cond_6

    move/from16 v13, v16

    if-eq v9, v13, :cond_4

    int-to-long v9, v9

    .line 10
    invoke-virtual {v1, v2, v9, v10, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_4
    if-ne v12, v13, :cond_5

    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    int-to-long v9, v12

    .line 11
    invoke-virtual {v1, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    :goto_4
    move v14, v9

    goto :goto_5

    :cond_6
    move v12, v9

    :goto_5
    packed-switch v5, :pswitch_data_0

    move/from16 v5, p3

    if-ne v7, v5, :cond_7

    or-int v14, v14, v28

    .line 12
    invoke-virtual {v0, v3, v2}, Lpl9;->z(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    shl-int/lit8 v5, v11, 0x3

    or-int/lit8 v8, v5, 0x4

    move-object v5, v4

    .line 13
    invoke-virtual {v0, v3}, Lpl9;->y(I)Ljm9;

    move-result-object v4

    move/from16 v7, p4

    move-object/from16 v9, p6

    move v10, v3

    move-object v3, v5

    move/from16 v6, v19

    const/16 v20, -0x1

    move-object/from16 v5, p2

    .line 14
    invoke-static/range {v3 .. v9}, Lsz8;->v0(Ljava/lang/Object;Ljm9;[BIIILrg9;)I

    move-result v4

    move-object v13, v9

    move-object v9, v5

    .line 15
    invoke-virtual {v0, v10, v2, v3}, Lpl9;->j(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    move/from16 v5, p4

    :goto_7
    move-object v3, v9

    move v8, v10

    move v7, v11

    move v9, v12

    move-object v6, v13

    goto/16 :goto_0

    :cond_7
    move v10, v3

    const/16 v20, -0x1

    move-object/from16 v13, p2

    move-object v9, v1

    move-object v1, v2

    move/from16 v29, v14

    move/from16 v3, v19

    move/from16 v19, v15

    move-object/from16 v15, p6

    goto/16 :goto_17

    :pswitch_0
    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move v10, v3

    move/from16 v3, v19

    const/16 v20, -0x1

    if-nez v7, :cond_8

    or-int v14, v14, v28

    .line 16
    invoke-static {v9, v3, v13}, Lsz8;->u0([BILrg9;)I

    move-result v7

    iget-wide v3, v13, Lrg9;->b:J

    and-long v5, v3, v22

    ushr-long v3, v3, v33

    neg-long v5, v5

    xor-long/2addr v5, v3

    move-wide/from16 v3, v31

    .line 17
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v35, v2

    move-object v2, v1

    move-object/from16 v1, v35

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v5, p4

    move v4, v7

    goto :goto_7

    :cond_8
    move-object/from16 v35, v2

    move-object v2, v1

    move-object/from16 v1, v35

    :cond_9
    move/from16 v29, v14

    move/from16 v19, v15

    move-object v15, v13

    move-object v13, v9

    move-object v9, v2

    goto/16 :goto_17

    :pswitch_1
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move v10, v3

    move/from16 v3, v19

    move-wide/from16 v5, v31

    const/16 v20, -0x1

    if-nez v7, :cond_9

    or-int v14, v14, v28

    .line 18
    invoke-static {v9, v3, v13}, Lsz8;->r0([BILrg9;)I

    move-result v4

    iget v3, v13, Lrg9;->a:I

    .line 19
    invoke-static {v3}, Lbb9;->Q(I)I

    move-result v3

    .line 20
    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_6

    :pswitch_2
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move v10, v3

    move/from16 v3, v19

    move-wide/from16 v5, v31

    const/16 v20, -0x1

    if-nez v7, :cond_9

    .line 21
    invoke-static {v9, v3, v13}, Lsz8;->r0([BILrg9;)I

    move-result v3

    iget v7, v13, Lrg9;->a:I

    move/from16 p3, v3

    .line 22
    invoke-virtual {v0, v10}, Lpl9;->x(I)Lbj9;

    move-result-object v3

    const/high16 v17, -0x80000000

    and-int v4, v4, v17

    if-eqz v4, :cond_c

    if-eqz v3, :cond_c

    invoke-interface {v3, v7}, Lbj9;->zza(I)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_a

    .line 23
    :cond_a
    move-object v3, v1

    check-cast v3, Lxi9;

    iget-object v4, v3, Lxi9;->zzc:Lmn9;

    if-ne v4, v8, :cond_b

    invoke-static {}, Lmn9;->b()Lmn9;

    move-result-object v4

    .line 24
    iput-object v4, v3, Lxi9;->zzc:Lmn9;

    :cond_b
    int-to-long v5, v7

    .line 25
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v15, v3}, Lmn9;->c(ILjava/lang/Object;)V

    :goto_9
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v4, p3

    goto/16 :goto_6

    :cond_c
    :goto_a
    or-int v14, v14, v28

    .line 26
    invoke-virtual {v2, v1, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_9

    :pswitch_3
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move v10, v3

    move/from16 v3, v19

    move-wide/from16 v5, v31

    const/4 v4, 0x2

    const/16 v20, -0x1

    if-ne v7, v4, :cond_9

    or-int v14, v14, v28

    .line 27
    invoke-static {v9, v3, v13}, Lsz8;->l0([BILrg9;)I

    move-result v4

    iget-object v3, v13, Lrg9;->c:Ljava/lang/Object;

    .line 28
    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move v10, v3

    move/from16 v3, v19

    const/4 v4, 0x2

    const/16 v20, -0x1

    if-ne v7, v4, :cond_d

    or-int v14, v14, v28

    move-object v4, v1

    .line 29
    invoke-virtual {v0, v10, v4}, Lpl9;->z(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v2

    .line 30
    invoke-virtual {v0, v10}, Lpl9;->y(I)Ljm9;

    move-result-object v2

    move-object v6, v4

    move v4, v3

    move-object v3, v9

    move-object v9, v6

    move-object v6, v13

    move-object v13, v5

    move/from16 v5, p4

    .line 31
    invoke-static/range {v1 .. v6}, Lsz8;->w0(Ljava/lang/Object;Ljm9;[BIILrg9;)I

    move-result v4

    move-object v2, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    .line 32
    invoke-virtual {v0, v10, v9, v3}, Lpl9;->j(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v1

    move-object v2, v9

    move v8, v10

    move v7, v11

    move v9, v12

    move-object v1, v13

    goto/16 :goto_0

    :cond_d
    move-object/from16 v35, v9

    move-object v9, v1

    move-object/from16 v1, v35

    move-object/from16 v35, v13

    move-object v13, v2

    move-object/from16 v2, v35

    move-object/from16 v19, v13

    move-object v13, v1

    move-object v1, v9

    move-object/from16 v9, v19

    move/from16 v29, v14

    move/from16 v19, v15

    :goto_b
    move-object v15, v2

    goto/16 :goto_17

    :pswitch_5
    move-object v13, v1

    move-object v9, v2

    move v10, v3

    move/from16 v29, v14

    move/from16 v3, v19

    const/4 v5, 0x2

    const/16 v20, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v19, v15

    move-wide/from16 v14, v31

    if-ne v7, v5, :cond_21

    and-int v4, v4, v24

    if-eqz v4, :cond_1e

    or-int v4, v29, v28

    .line 33
    invoke-static {v1, v3, v2}, Lsz8;->r0([BILrg9;)I

    move-result v3

    iget v5, v2, Lrg9;->a:I

    if-ltz v5, :cond_1d

    if-nez v5, :cond_e

    .line 34
    iput-object v6, v2, Lrg9;->c:Ljava/lang/Object;

    move/from16 p3, v4

    goto/16 :goto_10

    .line 35
    :cond_e
    sget v6, Lxn9;->a:I

    .line 36
    array-length v6, v1

    sub-int v7, v6, v3

    or-int v8, v3, v5

    sub-int/2addr v7, v5

    or-int/2addr v7, v8

    if-ltz v7, :cond_1c

    add-int v6, v3, v5

    .line 37
    new-array v5, v5, [C

    const/4 v7, 0x0

    :goto_c
    if-ge v3, v6, :cond_f

    .line 38
    aget-byte v8, v1, v3

    if-ltz v8, :cond_f

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v17, v7, 0x1

    int-to-char v8, v8

    .line 39
    aput-char v8, v5, v7

    move/from16 v7, v17

    goto :goto_c

    :cond_f
    :goto_d
    if-ge v3, v6, :cond_1b

    add-int/lit8 v8, v3, 0x1

    move/from16 v17, v3

    .line 40
    aget-byte v3, v1, v17

    if-ltz v3, :cond_10

    add-int/lit8 v17, v7, 0x1

    int-to-char v3, v3

    .line 41
    aput-char v3, v5, v7

    move v3, v8

    :goto_e
    move/from16 v7, v17

    if-ge v3, v6, :cond_f

    .line 42
    aget-byte v8, v1, v3

    if-ltz v8, :cond_f

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v17, v7, 0x1

    int-to-char v8, v8

    .line 43
    aput-char v8, v5, v7

    goto :goto_e

    :cond_10
    move/from16 p3, v4

    const/16 v4, -0x20

    if-ge v3, v4, :cond_13

    if-ge v8, v6, :cond_12

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v17, v17, 0x2

    .line 44
    aget-byte v8, v1, v8

    move/from16 v21, v4

    const/16 v4, -0x3e

    if-lt v3, v4, :cond_11

    .line 45
    invoke-static {v8}, Lod2;->B(B)Z

    move-result v4

    if-nez v4, :cond_11

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v8, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    .line 46
    aput-char v3, v5, v7

    move/from16 v4, p3

    move/from16 v3, v17

    move/from16 v7, v21

    goto :goto_d

    .line 47
    :cond_11
    invoke-static/range {v25 .. v25}, Lb6;->f(Ljava/lang/String;)V

    const/16 v18, 0x0

    return v18

    :cond_12
    const/16 v18, 0x0

    .line 48
    invoke-static/range {v25 .. v25}, Lb6;->f(Ljava/lang/String;)V

    return v18

    :cond_13
    const/16 v4, -0x10

    if-ge v3, v4, :cond_18

    add-int/lit8 v4, v6, -0x1

    if-ge v8, v4, :cond_17

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v22, v17, 0x2

    .line 49
    aget-byte v8, v1, v8

    add-int/lit8 v17, v17, 0x3

    aget-byte v22, v1, v22

    .line 50
    invoke-static {v8}, Lod2;->B(B)Z

    move-result v23

    if-nez v23, :cond_16

    move/from16 v23, v4

    const/16 v4, -0x60

    move/from16 v24, v6

    const/16 v6, -0x20

    if-ne v3, v6, :cond_14

    if-lt v8, v4, :cond_16

    move v3, v6

    :cond_14
    const/16 v6, -0x13

    if-ne v3, v6, :cond_15

    if-ge v8, v4, :cond_16

    move v3, v6

    :cond_15
    invoke-static/range {v22 .. v22}, Lod2;->B(B)Z

    move-result v4

    if-nez v4, :cond_16

    and-int/lit8 v3, v3, 0xf

    and-int/lit8 v4, v8, 0x3f

    and-int/lit8 v6, v22, 0x3f

    shl-int/lit8 v3, v3, 0xc

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    or-int/2addr v3, v6

    int-to-char v3, v3

    .line 51
    aput-char v3, v5, v7

    move/from16 v4, p3

    move/from16 v3, v17

    move/from16 v7, v23

    :goto_f
    move/from16 v6, v24

    goto/16 :goto_d

    .line 52
    :cond_16
    invoke-static/range {v25 .. v25}, Lb6;->f(Ljava/lang/String;)V

    const/16 v18, 0x0

    return v18

    :cond_17
    const/16 v18, 0x0

    .line 53
    invoke-static/range {v25 .. v25}, Lb6;->f(Ljava/lang/String;)V

    return v18

    :cond_18
    move/from16 v24, v6

    add-int/lit8 v6, v24, -0x2

    if-ge v8, v6, :cond_1a

    add-int/lit8 v4, v17, 0x2

    .line 54
    aget-byte v6, v1, v8

    add-int/lit8 v8, v17, 0x3

    aget-byte v4, v1, v4

    add-int/lit8 v17, v17, 0x4

    aget-byte v8, v1, v8

    .line 55
    invoke-static {v6}, Lod2;->B(B)Z

    move-result v21

    if-nez v21, :cond_19

    shl-int/lit8 v21, v3, 0x1c

    add-int/lit8 v22, v6, 0x70

    add-int v22, v22, v21

    shr-int/lit8 v21, v22, 0x1e

    if-nez v21, :cond_19

    invoke-static {v4}, Lod2;->B(B)Z

    move-result v21

    if-nez v21, :cond_19

    invoke-static {v8}, Lod2;->B(B)Z

    move-result v21

    if-nez v21, :cond_19

    and-int/lit8 v3, v3, 0x7

    and-int/lit8 v6, v6, 0x3f

    and-int/lit8 v4, v4, 0x3f

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v3, v3, 0x12

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v3, v6

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    or-int/2addr v3, v8

    ushr-int/lit8 v4, v3, 0xa

    const v6, 0xd7c0

    add-int/2addr v4, v6

    int-to-char v4, v4

    .line 56
    aput-char v4, v5, v7

    add-int/lit8 v4, v7, 0x1

    and-int/lit16 v3, v3, 0x3ff

    const v6, 0xdc00

    add-int/2addr v3, v6

    int-to-char v3, v3

    .line 57
    aput-char v3, v5, v4

    add-int/lit8 v7, v7, 0x2

    move/from16 v4, p3

    move/from16 v3, v17

    goto :goto_f

    .line 58
    :cond_19
    invoke-static/range {v25 .. v25}, Lb6;->f(Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3

    :cond_1a
    const/4 v3, 0x0

    .line 59
    invoke-static/range {v25 .. v25}, Lb6;->f(Ljava/lang/String;)V

    return v3

    :cond_1b
    move/from16 p3, v4

    move/from16 v24, v6

    const/4 v3, 0x0

    .line 60
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v3, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v4, v2, Lrg9;->c:Ljava/lang/Object;

    move/from16 v3, v24

    :goto_10
    move/from16 v5, p3

    :goto_11
    move v4, v3

    goto :goto_12

    .line 61
    :cond_1c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 62
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "buffer length=%d, index=%d, size=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1d
    invoke-static/range {v30 .. v30}, Lb6;->f(Ljava/lang/String;)V

    const/16 v18, 0x0

    return v18

    .line 64
    :cond_1e
    invoke-static {v1, v3, v2}, Lsz8;->r0([BILrg9;)I

    move-result v3

    iget v4, v2, Lrg9;->a:I

    if-ltz v4, :cond_20

    or-int v5, v29, v28

    if-nez v4, :cond_1f

    .line 65
    iput-object v6, v2, Lrg9;->c:Ljava/lang/Object;

    goto :goto_11

    :cond_1f
    new-instance v6, Ljava/lang/String;

    .line 66
    sget-object v7, Lnj9;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v3, v4, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, v2, Lrg9;->c:Ljava/lang/Object;

    add-int/2addr v3, v4

    goto :goto_11

    .line 67
    :goto_12
    iget-object v3, v2, Lrg9;->c:Ljava/lang/Object;

    .line 68
    invoke-virtual {v13, v9, v14, v15, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_13
    move-object v3, v1

    move-object v6, v2

    move v14, v5

    move-object v2, v9

    move v8, v10

    move v7, v11

    move v9, v12

    move-object v1, v13

    move/from16 v15, v19

    const v16, 0xfffff

    move/from16 v5, p4

    goto/16 :goto_1

    .line 69
    :cond_20
    invoke-static/range {v30 .. v30}, Lb6;->f(Ljava/lang/String;)V

    const/16 v18, 0x0

    return v18

    :cond_21
    move-object v15, v13

    move-object v13, v1

    move-object v1, v9

    move-object v9, v15

    goto/16 :goto_b

    :pswitch_6
    move-object v13, v1

    move-object v9, v2

    move v10, v3

    move/from16 v29, v14

    move/from16 v3, v19

    const/16 v20, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v19, v15

    move-wide/from16 v14, v31

    if-nez v7, :cond_21

    or-int v4, v29, v28

    .line 70
    invoke-static {v1, v3, v2}, Lsz8;->u0([BILrg9;)I

    move-result v3

    iget-wide v5, v2, Lrg9;->b:J

    cmp-long v5, v5, v26

    if-eqz v5, :cond_22

    move/from16 v5, v33

    goto :goto_14

    :cond_22
    const/4 v5, 0x0

    .line 71
    :goto_14
    sget-object v6, Lun9;->c:Lcm9;

    invoke-virtual {v6, v9, v14, v15, v5}, Lcm9;->c(Ljava/lang/Object;JZ)V

    move/from16 v5, p4

    move-object v6, v2

    move v14, v4

    move-object v2, v9

    move v8, v10

    move v7, v11

    move v9, v12

    move/from16 v15, v19

    const v16, 0xfffff

    move v4, v3

    move-object v3, v1

    move-object v1, v13

    goto/16 :goto_1

    :pswitch_7
    move-object v13, v1

    move-object v9, v2

    move v10, v3

    move/from16 v29, v14

    move/from16 v3, v19

    const/4 v4, 0x5

    const/16 v20, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v19, v15

    move-wide/from16 v14, v31

    if-ne v7, v4, :cond_21

    add-int/lit8 v4, v3, 0x4

    or-int v5, v29, v28

    .line 72
    invoke-static {v1, v3}, Lsz8;->n0([BI)I

    move-result v3

    invoke-virtual {v13, v9, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_13

    :pswitch_8
    move-object v13, v1

    move-object v9, v2

    move v10, v3

    move/from16 v29, v14

    move/from16 v3, v19

    move/from16 v4, v33

    const/16 v20, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v19, v15

    move-wide/from16 v14, v31

    if-ne v7, v4, :cond_23

    add-int/lit8 v7, v3, 0x8

    or-int v8, v29, v28

    .line 73
    invoke-static {v1, v3}, Lsz8;->x0([BI)J

    move-result-wide v5

    move-object v3, v13

    move-object v13, v1

    move-object v1, v3

    move-wide v3, v14

    move-object v15, v2

    move-object v2, v9

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move v4, v7

    move v14, v8

    :goto_15
    move v8, v10

    move v7, v11

    move v9, v12

    move-object v3, v13

    move-object v6, v15

    move/from16 v15, v19

    goto/16 :goto_0

    :cond_23
    move-object v15, v13

    move-object v13, v1

    move-object v1, v15

    move-object v15, v2

    move-object/from16 v35, v9

    move-object v9, v1

    move-object/from16 v1, v35

    goto/16 :goto_17

    :pswitch_9
    move-object/from16 v13, p2

    move v10, v3

    move/from16 v29, v14

    move/from16 v3, v19

    move-wide/from16 v5, v31

    const/16 v20, -0x1

    move/from16 v19, v15

    move-object/from16 v15, p6

    if-nez v7, :cond_24

    or-int v14, v29, v28

    .line 74
    invoke-static {v13, v3, v15}, Lsz8;->r0([BILrg9;)I

    move-result v4

    iget v3, v15, Lrg9;->a:I

    .line 75
    invoke-virtual {v1, v2, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, p4

    goto :goto_15

    :cond_24
    move-object v9, v1

    :cond_25
    move-object v1, v2

    goto/16 :goto_17

    :pswitch_a
    move-object/from16 v13, p2

    move v10, v3

    move/from16 v29, v14

    move/from16 v3, v19

    move-wide/from16 v5, v31

    const/16 v20, -0x1

    move/from16 v19, v15

    move-object/from16 v15, p6

    if-nez v7, :cond_24

    or-int v14, v29, v28

    .line 76
    invoke-static {v13, v3, v15}, Lsz8;->u0([BILrg9;)I

    move-result v7

    move-wide v3, v5

    iget-wide v5, v15, Lrg9;->b:J

    .line 77
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move v4, v7

    goto :goto_15

    :pswitch_b
    move-object/from16 v13, p2

    move-object v9, v1

    move v10, v3

    move/from16 v29, v14

    move/from16 v3, v19

    move-wide/from16 v5, v31

    const/4 v4, 0x5

    const/16 v20, -0x1

    move/from16 v19, v15

    move-object/from16 v15, p6

    if-ne v7, v4, :cond_25

    add-int/lit8 v4, v3, 0x4

    or-int v14, v29, v28

    .line 78
    invoke-static {v13, v3}, Lsz8;->n0([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 79
    sget-object v3, Lun9;->c:Lcm9;

    invoke-virtual {v3, v2, v5, v6, v1}, Lcm9;->h(Ljava/lang/Object;JF)V

    move/from16 v5, p4

    :goto_16
    move-object v1, v9

    goto :goto_15

    :pswitch_c
    move-object/from16 v13, p2

    move-object v9, v1

    move v10, v3

    move/from16 v29, v14

    move/from16 v3, v19

    move-wide/from16 v5, v31

    move/from16 v4, v33

    const/16 v20, -0x1

    move/from16 v19, v15

    move-object/from16 v15, p6

    if-ne v7, v4, :cond_25

    add-int/lit8 v7, v3, 0x8

    or-int v14, v29, v28

    .line 80
    invoke-static {v13, v3}, Lsz8;->x0([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 81
    sget-object v1, Lun9;->c:Lcm9;

    move-wide/from16 v35, v5

    move-wide v5, v3

    move-wide/from16 v3, v35

    invoke-virtual/range {v1 .. v6}, Lcm9;->f(Ljava/lang/Object;JD)V

    move/from16 v5, p4

    move v4, v7

    goto :goto_16

    :goto_17
    move v0, v11

    move-object v11, v8

    move v8, v0

    move/from16 v0, p5

    move/from16 v31, v12

    move-object v4, v15

    move/from16 v15, v19

    move/from16 v14, v29

    move-object v12, v9

    move-object v9, v1

    move-object v1, v13

    goto/16 :goto_43

    :cond_26
    move-object/from16 v13, p2

    move-object v12, v1

    move-object v1, v2

    move v10, v3

    move/from16 v28, v19

    move-wide/from16 v2, v31

    const/16 v20, -0x1

    move/from16 v31, v9

    move/from16 v19, v15

    move-object/from16 v15, p6

    const/16 v9, 0x1b

    if-ne v5, v9, :cond_2a

    const/4 v9, 0x2

    if-ne v7, v9, :cond_29

    .line 82
    invoke-virtual {v12, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lej9;

    .line 83
    move-object v5, v4

    check-cast v5, Log9;

    .line 84
    iget-boolean v5, v5, Log9;->a:Z

    if-nez v5, :cond_28

    .line 85
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_27

    const/16 v13, 0xa

    goto :goto_18

    :cond_27
    add-int v13, v5, v5

    .line 86
    :goto_18
    invoke-interface {v4, v13}, Lej9;->zzd(I)Lej9;

    move-result-object v4

    .line 87
    invoke-virtual {v12, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_28
    move-object v6, v4

    .line 88
    invoke-virtual {v0, v10}, Lpl9;->y(I)Ljm9;

    move-result-object v1

    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v7, v15

    move/from16 v2, v19

    move/from16 v4, v28

    .line 89
    invoke-static/range {v1 .. v7}, Lsz8;->o0(Ljm9;I[BIILej9;Lrg9;)I

    move-result v4

    move v15, v2

    move-object/from16 v6, p6

    move-object v2, v9

    move v8, v10

    move v7, v11

    move-object v1, v12

    :goto_19
    move/from16 v9, v31

    goto/16 :goto_0

    :cond_29
    move-object v9, v1

    move/from16 v15, v19

    move/from16 v1, v28

    move/from16 v28, v11

    move/from16 v19, v14

    move-object v11, v8

    goto/16 :goto_37

    :cond_2a
    move-object v9, v1

    move/from16 v15, v19

    const/16 v1, 0x31

    if-gt v5, v1, :cond_69

    move/from16 v19, v14

    int-to-long v13, v4

    .line 90
    invoke-virtual {v12, v9, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lej9;

    .line 91
    move-object v1, v4

    check-cast v1, Log9;

    .line 92
    iget-boolean v1, v1, Log9;->a:Z

    if-nez v1, :cond_2b

    .line 93
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    .line 94
    invoke-interface {v4, v1}, Lej9;->zzd(I)Lej9;

    move-result-object v4

    .line 95
    invoke-virtual {v12, v9, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2b
    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    packed-switch v5, :pswitch_data_1

    const/4 v5, 0x3

    if-ne v7, v5, :cond_2e

    and-int/lit8 v1, v15, -0x8

    or-int/lit8 v6, v1, 0x4

    .line 96
    invoke-virtual {v0, v10}, Lpl9;->y(I)Ljm9;

    move-result-object v2

    .line 97
    invoke-interface {v2}, Ljm9;->zze()Lxi9;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object v13, v4

    move/from16 v4, v28

    .line 98
    invoke-static/range {v1 .. v7}, Lsz8;->v0(Ljava/lang/Object;Ljm9;[BIIILrg9;)I

    move-result v14

    move-object/from16 v35, v7

    move-object v7, v1

    move v1, v6

    move-object/from16 v6, v35

    .line 99
    invoke-interface {v2, v7}, Ljm9;->zzf(Ljava/lang/Object;)V

    iput-object v7, v6, Lrg9;->c:Ljava/lang/Object;

    .line 100
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1a
    if-ge v14, v5, :cond_2d

    move/from16 v28, v4

    .line 101
    invoke-static {v3, v14, v6}, Lsz8;->r0([BILrg9;)I

    move-result v4

    iget v7, v6, Lrg9;->a:I

    if-ne v15, v7, :cond_2c

    move v6, v1

    .line 102
    invoke-interface {v2}, Ljm9;->zze()Lxi9;

    move-result-object v1

    move-object/from16 v7, p6

    .line 103
    invoke-static/range {v1 .. v7}, Lsz8;->v0(Ljava/lang/Object;Ljm9;[BIIILrg9;)I

    move-result v14

    move-object v4, v1

    move v1, v6

    move-object v6, v7

    .line 104
    invoke-interface {v2, v4}, Ljm9;->zzf(Ljava/lang/Object;)V

    iput-object v4, v6, Lrg9;->c:Ljava/lang/Object;

    .line 105
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, v28

    goto :goto_1a

    :cond_2c
    move/from16 v4, v28

    :cond_2d
    move v1, v4

    move/from16 v28, v11

    move v4, v14

    :goto_1b
    const/16 v18, 0x0

    :goto_1c
    move-object v11, v8

    goto/16 :goto_35

    :cond_2e
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v1, v28

    const/16 v18, 0x0

    move/from16 v28, v11

    :goto_1d
    move-object v11, v8

    goto/16 :goto_34

    :pswitch_d
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v4, v28

    const/4 v2, 0x2

    if-eq v7, v2, :cond_31

    if-eqz v7, :cond_30

    :cond_2f
    move v1, v4

    move/from16 v28, v11

    const/16 v18, 0x0

    goto :goto_1d

    .line 106
    :cond_30
    invoke-static {}, Le6;->d()V

    const/16 v18, 0x0

    return v18

    :cond_31
    const/16 v18, 0x0

    .line 107
    invoke-static {}, Le6;->d()V

    return v18

    :pswitch_e
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object v13, v4

    move/from16 v4, v28

    const/4 v2, 0x2

    if-ne v7, v2, :cond_34

    .line 108
    move-object v2, v13

    check-cast v2, Lyi9;

    .line 109
    invoke-static {v3, v4, v6}, Lsz8;->r0([BILrg9;)I

    move-result v7

    iget v13, v6, Lrg9;->a:I

    add-int/2addr v13, v7

    :goto_1e
    if-ge v7, v13, :cond_32

    .line 110
    invoke-static {v3, v7, v6}, Lsz8;->r0([BILrg9;)I

    move-result v7

    iget v14, v6, Lrg9;->a:I

    .line 111
    invoke-static {v14}, Lbb9;->Q(I)I

    move-result v14

    invoke-virtual {v2, v14}, Lyi9;->e(I)V

    goto :goto_1e

    :cond_32
    if-ne v7, v13, :cond_33

    move v1, v4

    move v4, v7

    move/from16 v28, v11

    goto :goto_1b

    .line 112
    :cond_33
    invoke-static {v1}, Lb6;->f(Ljava/lang/String;)V

    const/16 v18, 0x0

    return v18

    :cond_34
    if-nez v7, :cond_2f

    .line 113
    move-object v1, v13

    check-cast v1, Lyi9;

    .line 114
    invoke-static {v3, v4, v6}, Lsz8;->r0([BILrg9;)I

    move-result v2

    iget v7, v6, Lrg9;->a:I

    .line 115
    invoke-static {v7}, Lbb9;->Q(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lyi9;->e(I)V

    :goto_1f
    if-ge v2, v5, :cond_35

    .line 116
    invoke-static {v3, v2, v6}, Lsz8;->r0([BILrg9;)I

    move-result v7

    iget v13, v6, Lrg9;->a:I

    if-ne v15, v13, :cond_35

    .line 117
    invoke-static {v3, v7, v6}, Lsz8;->r0([BILrg9;)I

    move-result v2

    iget v7, v6, Lrg9;->a:I

    invoke-static {v7}, Lbb9;->Q(I)I

    move-result v7

    .line 118
    invoke-virtual {v1, v7}, Lyi9;->e(I)V

    goto :goto_1f

    :cond_35
    move v1, v4

    move/from16 v28, v11

    const/16 v18, 0x0

    move v4, v2

    goto/16 :goto_1c

    :pswitch_f
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object v13, v4

    move/from16 v4, v28

    const/4 v2, 0x2

    if-ne v7, v2, :cond_36

    .line 119
    invoke-static {v3, v4, v13, v6}, Lsz8;->p0([BILej9;Lrg9;)I

    move-result v1

    move v2, v15

    goto :goto_20

    :cond_36
    if-nez v7, :cond_3e

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v13

    move v1, v15

    .line 120
    invoke-static/range {v1 .. v6}, Lsz8;->t0(I[BIILej9;Lrg9;)I

    move-result v7

    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v1

    move v1, v7

    .line 121
    :goto_20
    invoke-virtual {v0, v10}, Lpl9;->x(I)Lbj9;

    move-result-object v7

    .line 122
    sget-object v14, Lnm9;->a:Lns0;

    if-eqz v7, :cond_3c

    .line 123
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    move/from16 v22, v1

    move-object/from16 v23, v15

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_21
    if-ge v1, v14, :cond_3b

    .line 124
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move/from16 v28, v11

    move-object/from16 v11, v24

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v7, v9}, Lbj9;->zza(I)Z

    move-result v24

    if-eqz v24, :cond_38

    if-eq v1, v15, :cond_37

    .line 125
    invoke-interface {v13, v15, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_37
    add-int/lit8 v15, v15, 0x1

    move/from16 v24, v1

    move-object v11, v8

    move-object/from16 v1, v23

    move-object/from16 v23, v7

    goto :goto_23

    :cond_38
    if-nez v23, :cond_3a

    .line 126
    iget-object v11, v0, Lpl9;->i:Lns0;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    move-object/from16 v11, p1

    check-cast v11, Lxi9;

    move/from16 v24, v1

    iget-object v1, v11, Lxi9;->zzc:Lmn9;

    if-ne v1, v8, :cond_39

    invoke-static {}, Lmn9;->b()Lmn9;

    move-result-object v1

    .line 128
    iput-object v1, v11, Lxi9;->zzc:Lmn9;

    :cond_39
    move-object/from16 v23, v7

    move-object v11, v8

    goto :goto_22

    :cond_3a
    move/from16 v24, v1

    move-object/from16 v1, v23

    move-object v11, v8

    move-object/from16 v23, v7

    :goto_22
    int-to-long v7, v9

    shl-int/lit8 v9, v28, 0x3

    .line 129
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v9, v7}, Lmn9;->c(ILjava/lang/Object;)V

    :goto_23
    add-int/lit8 v7, v24, 0x1

    move-object/from16 v8, v23

    move-object/from16 v23, v1

    move v1, v7

    move-object v7, v8

    move-object/from16 v9, p1

    move-object v8, v11

    move/from16 v11, v28

    goto :goto_21

    :cond_3b
    move/from16 v28, v11

    move-object v11, v8

    if-eq v15, v14, :cond_3d

    .line 130
    invoke-interface {v13, v15, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_24

    :cond_3c
    move/from16 v22, v1

    move/from16 v28, v11

    move-object v11, v8

    :cond_3d
    :goto_24
    move v15, v2

    move v1, v4

    move/from16 v4, v22

    :goto_25
    const/16 v18, 0x0

    goto/16 :goto_35

    :cond_3e
    move/from16 v28, v11

    move-object v11, v8

    :goto_26
    move v1, v4

    :goto_27
    const/16 v18, 0x0

    goto/16 :goto_34

    :pswitch_10
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object v13, v4

    move v2, v15

    move/from16 v4, v28

    const/4 v9, 0x2

    move/from16 v28, v11

    move-object v11, v8

    if-ne v7, v9, :cond_46

    .line 131
    invoke-static {v3, v4, v6}, Lsz8;->r0([BILrg9;)I

    move-result v7

    iget v8, v6, Lrg9;->a:I

    if-ltz v8, :cond_45

    .line 132
    array-length v9, v3

    sub-int/2addr v9, v7

    if-gt v8, v9, :cond_44

    if-nez v8, :cond_3f

    .line 133
    sget-object v8, Ldh9;->b:Lfh9;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 134
    :cond_3f
    invoke-static {v3, v7, v8}, Ldh9;->o([BII)Lfh9;

    move-result-object v9

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_28
    add-int/2addr v7, v8

    :goto_29
    if-ge v7, v5, :cond_43

    .line 135
    invoke-static {v3, v7, v6}, Lsz8;->r0([BILrg9;)I

    move-result v8

    iget v9, v6, Lrg9;->a:I

    if-ne v2, v9, :cond_43

    .line 136
    invoke-static {v3, v8, v6}, Lsz8;->r0([BILrg9;)I

    move-result v7

    iget v8, v6, Lrg9;->a:I

    if-ltz v8, :cond_42

    .line 137
    array-length v9, v3

    sub-int/2addr v9, v7

    if-gt v8, v9, :cond_41

    if-nez v8, :cond_40

    .line 138
    sget-object v8, Ldh9;->b:Lfh9;

    .line 139
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 140
    :cond_40
    invoke-static {v3, v7, v8}, Ldh9;->o([BII)Lfh9;

    move-result-object v9

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 141
    :cond_41
    invoke-static {v1}, Lb6;->f(Ljava/lang/String;)V

    const/16 v18, 0x0

    return v18

    :cond_42
    const/16 v18, 0x0

    .line 142
    invoke-static/range {v30 .. v30}, Lb6;->f(Ljava/lang/String;)V

    return v18

    :cond_43
    const/16 v18, 0x0

    move v15, v2

    move v1, v4

    move v4, v7

    goto/16 :goto_35

    :cond_44
    const/16 v18, 0x0

    .line 143
    invoke-static {v1}, Lb6;->f(Ljava/lang/String;)V

    return v18

    :cond_45
    const/16 v18, 0x0

    .line 144
    invoke-static/range {v30 .. v30}, Lb6;->f(Ljava/lang/String;)V

    return v18

    :cond_46
    :goto_2a
    move v15, v2

    goto :goto_26

    :pswitch_11
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object v13, v4

    move v2, v15

    move/from16 v4, v28

    const/4 v9, 0x2

    move/from16 v28, v11

    move-object v11, v8

    if-ne v7, v9, :cond_48

    .line 145
    invoke-virtual {v0, v10}, Lpl9;->y(I)Ljm9;

    move-result-object v1

    move-object v7, v6

    move-object v6, v13

    .line 146
    invoke-static/range {v1 .. v7}, Lsz8;->o0(Ljm9;I[BIILej9;Lrg9;)I

    move-result v1

    move-object v15, v7

    :cond_47
    :goto_2b
    move v15, v4

    move v4, v1

    move v1, v15

    move v15, v2

    goto/16 :goto_25

    :cond_48
    move-object v15, v6

    goto :goto_2a

    :pswitch_12
    move-object v2, v8

    move-object v8, v4

    move/from16 v4, v28

    move/from16 v28, v11

    move-object v11, v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move v2, v15

    const/4 v9, 0x2

    move-object/from16 v15, p6

    if-ne v7, v9, :cond_55

    const-wide/32 v22, 0x20000000

    and-long v13, v13, v22

    cmp-long v1, v13, v26

    if-nez v1, :cond_4e

    .line 147
    invoke-static {v3, v4, v15}, Lsz8;->r0([BILrg9;)I

    move-result v1

    iget v7, v15, Lrg9;->a:I

    if-ltz v7, :cond_4d

    if-nez v7, :cond_49

    .line 148
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 149
    :cond_49
    new-instance v9, Ljava/lang/String;

    .line 150
    sget-object v13, Lnj9;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v7, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 151
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2c
    add-int/2addr v1, v7

    :goto_2d
    if-ge v1, v5, :cond_4c

    .line 152
    invoke-static {v3, v1, v15}, Lsz8;->r0([BILrg9;)I

    move-result v7

    iget v9, v15, Lrg9;->a:I

    if-ne v2, v9, :cond_4c

    .line 153
    invoke-static {v3, v7, v15}, Lsz8;->r0([BILrg9;)I

    move-result v1

    iget v7, v15, Lrg9;->a:I

    if-ltz v7, :cond_4b

    if-nez v7, :cond_4a

    .line 154
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_4a
    new-instance v9, Ljava/lang/String;

    .line 155
    sget-object v13, Lnj9;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v7, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 156
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 157
    :cond_4b
    invoke-static/range {v30 .. v30}, Lb6;->f(Ljava/lang/String;)V

    const/16 v18, 0x0

    return v18

    :cond_4c
    const/16 v18, 0x0

    move v15, v4

    move v4, v1

    move v1, v15

    move v15, v2

    goto/16 :goto_35

    :cond_4d
    const/16 v18, 0x0

    .line 158
    invoke-static/range {v30 .. v30}, Lb6;->f(Ljava/lang/String;)V

    return v18

    .line 159
    :cond_4e
    invoke-static {v3, v4, v15}, Lsz8;->r0([BILrg9;)I

    move-result v1

    iget v7, v15, Lrg9;->a:I

    if-ltz v7, :cond_54

    if-nez v7, :cond_4f

    .line 160
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_4f
    add-int v9, v1, v7

    .line 161
    invoke-static {v3, v1, v9}, Lxn9;->c([BII)Z

    move-result v13

    if-eqz v13, :cond_53

    .line 162
    new-instance v13, Ljava/lang/String;

    .line 163
    sget-object v14, Lnj9;->a:Ljava/nio/charset/Charset;

    invoke-direct {v13, v3, v1, v7, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 164
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2e
    move v1, v9

    :goto_2f
    if-ge v1, v5, :cond_4c

    .line 165
    invoke-static {v3, v1, v15}, Lsz8;->r0([BILrg9;)I

    move-result v7

    iget v9, v15, Lrg9;->a:I

    if-ne v2, v9, :cond_4c

    .line 166
    invoke-static {v3, v7, v15}, Lsz8;->r0([BILrg9;)I

    move-result v1

    iget v7, v15, Lrg9;->a:I

    if-ltz v7, :cond_52

    if-nez v7, :cond_50

    .line 167
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_50
    add-int v9, v1, v7

    .line 168
    invoke-static {v3, v1, v9}, Lxn9;->c([BII)Z

    move-result v13

    if-eqz v13, :cond_51

    .line 169
    new-instance v13, Ljava/lang/String;

    .line 170
    sget-object v14, Lnj9;->a:Ljava/nio/charset/Charset;

    invoke-direct {v13, v3, v1, v7, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 171
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 172
    :cond_51
    invoke-static/range {v25 .. v25}, Lb6;->f(Ljava/lang/String;)V

    const/16 v18, 0x0

    return v18

    :cond_52
    const/16 v18, 0x0

    .line 173
    invoke-static/range {v30 .. v30}, Lb6;->f(Ljava/lang/String;)V

    return v18

    :cond_53
    const/16 v18, 0x0

    .line 174
    invoke-static/range {v25 .. v25}, Lb6;->f(Ljava/lang/String;)V

    return v18

    :cond_54
    const/16 v18, 0x0

    .line 175
    invoke-static/range {v30 .. v30}, Lb6;->f(Ljava/lang/String;)V

    return v18

    :cond_55
    const/16 v18, 0x0

    :goto_30
    move v15, v2

    move v1, v4

    goto/16 :goto_34

    :pswitch_13
    move-object/from16 v3, p2

    move/from16 v5, p4

    move v2, v15

    move/from16 v4, v28

    const/4 v9, 0x2

    const/16 v18, 0x0

    move-object/from16 v15, p6

    move/from16 v28, v11

    move-object v11, v8

    if-eq v7, v9, :cond_57

    if-eqz v7, :cond_56

    goto :goto_30

    .line 176
    :cond_56
    invoke-static {}, Le6;->d()V

    return v18

    .line 177
    :cond_57
    invoke-static {}, Le6;->d()V

    return v18

    :pswitch_14
    move-object v2, v8

    move-object v8, v4

    move/from16 v4, v28

    move/from16 v28, v11

    move-object v11, v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move v2, v15

    const/4 v9, 0x2

    move-object/from16 v15, p6

    if-ne v7, v9, :cond_5e

    .line 178
    move-object v6, v8

    check-cast v6, Lyi9;

    .line 179
    invoke-static {v3, v4, v15}, Lsz8;->r0([BILrg9;)I

    move-result v7

    iget v8, v15, Lrg9;->a:I

    add-int v9, v7, v8

    .line 180
    array-length v13, v3

    if-gt v9, v13, :cond_5d

    .line 181
    iget v13, v6, Lyi9;->c:I

    .line 182
    div-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v13

    .line 183
    iget-object v13, v6, Lyi9;->b:[I

    array-length v13, v13

    if-gt v8, v13, :cond_58

    goto :goto_32

    :cond_58
    if-eqz v13, :cond_5a

    :goto_31
    if-ge v13, v8, :cond_59

    mul-int/lit8 v13, v13, 0x3

    const/16 v34, 0x2

    .line 184
    div-int/lit8 v13, v13, 0x2

    const/16 v33, 0x1

    add-int/lit8 v13, v13, 0x1

    const/16 v14, 0xa

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_31

    .line 185
    :cond_59
    iget-object v8, v6, Lyi9;->b:[I

    .line 186
    invoke-static {v8, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    iput-object v8, v6, Lyi9;->b:[I

    goto :goto_32

    :cond_5a
    const/16 v14, 0xa

    .line 187
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-array v8, v8, [I

    iput-object v8, v6, Lyi9;->b:[I

    :goto_32
    if-ge v7, v9, :cond_5b

    .line 188
    invoke-static {v3, v7}, Lsz8;->n0([BI)I

    move-result v8

    invoke-virtual {v6, v8}, Lyi9;->e(I)V

    add-int/lit8 v7, v7, 0x4

    goto :goto_32

    :cond_5b
    if-ne v7, v9, :cond_5c

    move v15, v2

    move v1, v4

    move v4, v7

    goto/16 :goto_25

    .line 189
    :cond_5c
    invoke-static {v1}, Lb6;->f(Ljava/lang/String;)V

    const/16 v18, 0x0

    return v18

    :cond_5d
    const/16 v18, 0x0

    .line 190
    invoke-static {v1}, Lb6;->f(Ljava/lang/String;)V

    return v18

    :cond_5e
    const/4 v1, 0x5

    if-ne v7, v1, :cond_46

    add-int/lit8 v1, v4, 0x4

    .line 191
    move-object v6, v8

    check-cast v6, Lyi9;

    .line 192
    invoke-static {v3, v4}, Lsz8;->n0([BI)I

    move-result v7

    invoke-virtual {v6, v7}, Lyi9;->e(I)V

    :goto_33
    if-ge v1, v5, :cond_47

    .line 193
    invoke-static {v3, v1, v15}, Lsz8;->r0([BILrg9;)I

    move-result v7

    iget v8, v15, Lrg9;->a:I

    if-ne v2, v8, :cond_47

    .line 194
    invoke-static {v3, v7}, Lsz8;->n0([BI)I

    move-result v1

    invoke-virtual {v6, v1}, Lyi9;->e(I)V

    add-int/lit8 v1, v7, 0x4

    goto :goto_33

    :pswitch_15
    move-object/from16 v3, p2

    move/from16 v5, p4

    move v2, v15

    move/from16 v4, v28

    const/4 v9, 0x2

    move-object/from16 v15, p6

    move/from16 v28, v11

    move-object v11, v8

    if-eq v7, v9, :cond_60

    const/4 v1, 0x1

    if-eq v7, v1, :cond_5f

    goto/16 :goto_2a

    .line 195
    :cond_5f
    invoke-static {}, Le6;->d()V

    const/16 v18, 0x0

    return v18

    :cond_60
    const/16 v18, 0x0

    .line 196
    invoke-static {}, Le6;->d()V

    return v18

    :pswitch_16
    move-object v2, v8

    move-object v8, v4

    move/from16 v4, v28

    move/from16 v28, v11

    move-object v11, v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move v2, v15

    const/4 v9, 0x2

    move-object/from16 v15, p6

    if-ne v7, v9, :cond_61

    .line 197
    invoke-static {v3, v4, v8, v15}, Lsz8;->p0([BILej9;Lrg9;)I

    move-result v1

    goto/16 :goto_2b

    :cond_61
    if-nez v7, :cond_46

    move v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v8

    move-object v6, v15

    .line 198
    invoke-static/range {v1 .. v6}, Lsz8;->t0(I[BIILej9;Lrg9;)I

    move-result v5

    move v15, v1

    move v1, v3

    move v4, v5

    goto/16 :goto_25

    :pswitch_17
    move/from16 v1, v28

    const/4 v9, 0x2

    move/from16 v28, v11

    move-object v11, v8

    if-eq v7, v9, :cond_63

    if-eqz v7, :cond_62

    goto/16 :goto_27

    .line 199
    :cond_62
    invoke-static {}, Le6;->d()V

    const/16 v18, 0x0

    return v18

    :cond_63
    const/16 v18, 0x0

    .line 200
    invoke-static {}, Le6;->d()V

    return v18

    :pswitch_18
    move/from16 v1, v28

    const/4 v9, 0x2

    const/16 v18, 0x0

    move/from16 v28, v11

    move-object v11, v8

    if-eq v7, v9, :cond_65

    const/4 v4, 0x5

    if-eq v7, v4, :cond_64

    goto :goto_34

    .line 201
    :cond_64
    invoke-static {}, Le6;->d()V

    return v18

    .line 202
    :cond_65
    invoke-static {}, Le6;->d()V

    return v18

    :pswitch_19
    move/from16 v1, v28

    const/4 v9, 0x2

    const/16 v18, 0x0

    move/from16 v28, v11

    move-object v11, v8

    if-eq v7, v9, :cond_68

    const/4 v4, 0x1

    if-eq v7, v4, :cond_67

    :goto_34
    move v4, v1

    :goto_35
    if-eq v4, v1, :cond_66

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move v8, v10

    move-object v1, v12

    move/from16 v14, v19

    move/from16 v7, v28

    goto/16 :goto_19

    :cond_66
    move-object/from16 v9, p1

    move-object/from16 v1, p2

    move/from16 v0, p5

    move v3, v4

    move/from16 v14, v19

    move/from16 v8, v28

    move-object/from16 v4, p6

    goto/16 :goto_43

    .line 203
    :cond_67
    invoke-static {}, Le6;->d()V

    return v18

    .line 204
    :cond_68
    invoke-static {}, Le6;->d()V

    return v18

    :cond_69
    move/from16 v19, v14

    move/from16 v1, v28

    move/from16 v28, v11

    move-object v11, v8

    const/16 v8, 0x32

    if-ne v5, v8, :cond_6d

    const/4 v9, 0x2

    if-ne v7, v9, :cond_6c

    const/4 v5, 0x3

    .line 205
    div-int/lit8 v0, v10, 0x3

    add-int/2addr v0, v0

    aget-object v0, v17, v0

    move-object/from16 v9, p1

    .line 206
    invoke-virtual {v12, v9, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 207
    move-object v4, v1

    check-cast v4, Lxk9;

    .line 208
    iget-boolean v4, v4, Lxk9;->a:Z

    if-nez v4, :cond_6b

    .line 209
    sget-object v4, Lxk9;->b:Lxk9;

    .line 210
    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 211
    new-instance v4, Lxk9;

    invoke-direct {v4}, Lxk9;-><init>()V

    goto :goto_36

    :cond_6a
    new-instance v5, Lxk9;

    .line 212
    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x1

    iput-boolean v4, v5, Lxk9;->a:Z

    move-object v4, v5

    .line 213
    :goto_36
    invoke-static {v4, v1}, Lq34;->u(Ljava/lang/Object;Ljava/lang/Object;)Lxk9;

    .line 214
    invoke-virtual {v12, v9, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 215
    :cond_6b
    invoke-static {v0}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    .line 216
    throw v0

    :cond_6c
    move-object/from16 v9, p1

    :goto_37
    move/from16 v0, p5

    move-object/from16 v4, p6

    move v3, v1

    move/from16 v14, v19

    move/from16 v8, v28

    goto/16 :goto_3

    :cond_6d
    move-object/from16 v9, p1

    add-int/lit8 v8, v10, 0x2

    .line 217
    aget v8, v21, v8

    const v16, 0xfffff

    and-int v8, v8, v16

    int-to-long v13, v8

    packed-switch v5, :pswitch_data_2

    move-object/from16 v4, p6

    move/from16 v8, v28

    :goto_38
    move/from16 v28, v10

    move v10, v1

    move-object/from16 v1, p2

    goto/16 :goto_41

    :pswitch_1a
    const/4 v5, 0x3

    if-ne v7, v5, :cond_6e

    and-int/lit8 v2, v15, -0x8

    or-int/lit8 v6, v2, 0x4

    move v4, v1

    move/from16 v8, v28

    .line 218
    invoke-virtual {v0, v9, v8, v10}, Lpl9;->A(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v10}, Lpl9;->y(I)Ljm9;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    .line 220
    invoke-static/range {v1 .. v7}, Lsz8;->v0(Ljava/lang/Object;Ljm9;[BIIILrg9;)I

    move-result v2

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    move-object v6, v7

    .line 221
    invoke-virtual {v0, v9, v8, v10, v3}, Lpl9;->k(Ljava/lang/Object;IILjava/lang/Object;)V

    move v0, v2

    :goto_39
    move/from16 v28, v10

    move v10, v4

    move-object v4, v6

    goto/16 :goto_42

    :cond_6e
    move/from16 v8, v28

    move-object/from16 v4, p6

    goto :goto_38

    :pswitch_1b
    move-object/from16 v6, p6

    move v4, v1

    move/from16 v8, v28

    move-object/from16 v1, p2

    if-nez v7, :cond_6f

    .line 222
    invoke-static {v1, v4, v6}, Lsz8;->u0([BILrg9;)I

    move-result v5

    move/from16 v28, v10

    move-object/from16 v29, v11

    iget-wide v10, v6, Lrg9;->b:J

    move-wide/from16 v24, v10

    and-long v10, v24, v22

    const/16 v33, 0x1

    ushr-long v22, v24, v33

    neg-long v10, v10

    xor-long v10, v22, v10

    .line 223
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v12, v9, v2, v3, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 224
    invoke-virtual {v12, v9, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3a
    move v10, v4

    move v0, v5

    move-object v4, v6

    move-object/from16 v11, v29

    goto/16 :goto_42

    :cond_6f
    move/from16 v28, v10

    :goto_3b
    move v10, v4

    move-object v4, v6

    goto/16 :goto_41

    :pswitch_1c
    move-object/from16 v6, p6

    move v4, v1

    move-object/from16 v29, v11

    move/from16 v8, v28

    move-object/from16 v1, p2

    move/from16 v28, v10

    if-nez v7, :cond_70

    .line 225
    invoke-static {v1, v4, v6}, Lsz8;->r0([BILrg9;)I

    move-result v5

    iget v7, v6, Lrg9;->a:I

    .line 226
    invoke-static {v7}, Lbb9;->Q(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v9, v2, v3, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 227
    invoke-virtual {v12, v9, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3a

    :cond_70
    move v10, v4

    move-object v4, v6

    move-object/from16 v11, v29

    goto/16 :goto_41

    :pswitch_1d
    move-object/from16 v6, p6

    move v4, v1

    move-object/from16 v29, v11

    move/from16 v8, v28

    move-object/from16 v1, p2

    move/from16 v28, v10

    if-nez v7, :cond_74

    .line 228
    invoke-static {v1, v4, v6}, Lsz8;->r0([BILrg9;)I

    move-result v5

    iget v7, v6, Lrg9;->a:I

    move/from16 v10, v28

    .line 229
    invoke-virtual {v0, v10}, Lpl9;->x(I)Lbj9;

    move-result-object v11

    if-eqz v11, :cond_71

    invoke-interface {v11, v7}, Lbj9;->zza(I)Z

    move-result v11

    if-eqz v11, :cond_72

    :cond_71
    move-object/from16 v11, v29

    goto :goto_3c

    .line 230
    :cond_72
    move-object v2, v9

    check-cast v2, Lxi9;

    iget-object v3, v2, Lxi9;->zzc:Lmn9;

    move-object/from16 v11, v29

    if-ne v3, v11, :cond_73

    invoke-static {}, Lmn9;->b()Lmn9;

    move-result-object v3

    .line 231
    iput-object v3, v2, Lxi9;->zzc:Lmn9;

    :cond_73
    int-to-long v13, v7

    .line 232
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v15, v2}, Lmn9;->c(ILjava/lang/Object;)V

    goto :goto_3d

    .line 233
    :goto_3c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v9, v2, v3, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 234
    invoke-virtual {v12, v9, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3d
    move v0, v5

    goto/16 :goto_39

    :cond_74
    move-object/from16 v11, v29

    goto :goto_3b

    :pswitch_1e
    move-object/from16 v6, p6

    move v4, v1

    move/from16 v8, v28

    const/4 v5, 0x2

    move-object/from16 v1, p2

    if-ne v7, v5, :cond_6f

    .line 235
    invoke-static {v1, v4, v6}, Lsz8;->l0([BILrg9;)I

    move-result v5

    iget-object v7, v6, Lrg9;->c:Ljava/lang/Object;

    .line 236
    invoke-virtual {v12, v9, v2, v3, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 237
    invoke-virtual {v12, v9, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3d

    :pswitch_1f
    move-object/from16 v6, p6

    move v4, v1

    move/from16 v8, v28

    const/4 v5, 0x2

    move-object/from16 v1, p2

    if-ne v7, v5, :cond_75

    .line 238
    invoke-virtual {v0, v9, v8, v10}, Lpl9;->A(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 239
    invoke-virtual {v0, v10}, Lpl9;->y(I)Ljm9;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    .line 240
    invoke-static/range {v1 .. v6}, Lsz8;->w0(Ljava/lang/Object;Ljm9;[BIILrg9;)I

    move-result v2

    move-object/from16 v35, v3

    move-object v3, v1

    move-object/from16 v1, v35

    .line 241
    invoke-virtual {v0, v9, v8, v10, v3}, Lpl9;->k(Ljava/lang/Object;IILjava/lang/Object;)V

    move v0, v2

    move/from16 v28, v10

    move v10, v4

    move-object/from16 v4, p6

    goto/16 :goto_42

    :cond_75
    move/from16 v28, v10

    move v10, v4

    move-object/from16 v4, p6

    goto/16 :goto_41

    :pswitch_20
    move/from16 v22, v4

    move/from16 v8, v28

    const/4 v5, 0x2

    move-object/from16 v4, p6

    move/from16 v28, v10

    move v10, v1

    move-object/from16 v1, p2

    if-ne v7, v5, :cond_7a

    .line 242
    invoke-static {v1, v10, v4}, Lsz8;->r0([BILrg9;)I

    move-result v5

    iget v7, v4, Lrg9;->a:I

    if-nez v7, :cond_76

    .line 243
    invoke-virtual {v12, v9, v2, v3, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3f

    :cond_76
    and-int v6, v22, v24

    move/from16 v22, v6

    add-int v6, v5, v7

    if-eqz v22, :cond_77

    .line 244
    invoke-static {v1, v5, v6}, Lxn9;->c([BII)Z

    move-result v22

    if-eqz v22, :cond_78

    :cond_77
    move/from16 v22, v6

    goto :goto_3e

    .line 245
    :cond_78
    invoke-static/range {v25 .. v25}, Lb6;->f(Ljava/lang/String;)V

    const/16 v18, 0x0

    return v18

    :goto_3e
    new-instance v6, Ljava/lang/String;

    .line 246
    sget-object v0, Lnj9;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v5, v7, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 247
    invoke-virtual {v12, v9, v2, v3, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v5, v22

    .line 248
    :goto_3f
    invoke-virtual {v12, v9, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v0, v5

    goto/16 :goto_42

    :pswitch_21
    move-object/from16 v4, p6

    move/from16 v8, v28

    move/from16 v28, v10

    move v10, v1

    move-object/from16 v1, p2

    if-nez v7, :cond_7a

    .line 249
    invoke-static {v1, v10, v4}, Lsz8;->u0([BILrg9;)I

    move-result v0

    iget-wide v5, v4, Lrg9;->b:J

    cmp-long v5, v5, v26

    if-eqz v5, :cond_79

    const/16 v33, 0x1

    goto :goto_40

    :cond_79
    const/16 v33, 0x0

    .line 250
    :goto_40
    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v12, v9, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 251
    invoke-virtual {v12, v9, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_42

    :pswitch_22
    move-object/from16 v4, p6

    move/from16 v8, v28

    const/4 v0, 0x5

    move/from16 v28, v10

    move v10, v1

    move-object/from16 v1, p2

    if-ne v7, v0, :cond_7a

    add-int/lit8 v0, v10, 0x4

    .line 252
    invoke-static {v1, v10}, Lsz8;->n0([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v9, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 253
    invoke-virtual {v12, v9, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_42

    :pswitch_23
    move-object/from16 v4, p6

    move/from16 v8, v28

    const/4 v0, 0x1

    move/from16 v28, v10

    move v10, v1

    move-object/from16 v1, p2

    if-ne v7, v0, :cond_7a

    add-int/lit8 v0, v10, 0x8

    .line 254
    invoke-static {v1, v10}, Lsz8;->x0([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v9, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 255
    invoke-virtual {v12, v9, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_42

    :pswitch_24
    move-object/from16 v4, p6

    move/from16 v8, v28

    move/from16 v28, v10

    move v10, v1

    move-object/from16 v1, p2

    if-nez v7, :cond_7a

    .line 256
    invoke-static {v1, v10, v4}, Lsz8;->r0([BILrg9;)I

    move-result v0

    iget v5, v4, Lrg9;->a:I

    .line 257
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v9, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 258
    invoke-virtual {v12, v9, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_42

    :pswitch_25
    move-object/from16 v4, p6

    move/from16 v8, v28

    move/from16 v28, v10

    move v10, v1

    move-object/from16 v1, p2

    if-nez v7, :cond_7a

    .line 259
    invoke-static {v1, v10, v4}, Lsz8;->u0([BILrg9;)I

    move-result v0

    iget-wide v5, v4, Lrg9;->b:J

    .line 260
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v9, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 261
    invoke-virtual {v12, v9, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_42

    :pswitch_26
    move-object/from16 v4, p6

    move/from16 v8, v28

    const/4 v0, 0x5

    move/from16 v28, v10

    move v10, v1

    move-object/from16 v1, p2

    if-ne v7, v0, :cond_7a

    add-int/lit8 v0, v10, 0x4

    .line 262
    invoke-static {v1, v10}, Lsz8;->n0([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 263
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v12, v9, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 264
    invoke-virtual {v12, v9, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_42

    :pswitch_27
    move-object/from16 v4, p6

    move/from16 v8, v28

    const/4 v0, 0x1

    move/from16 v28, v10

    move v10, v1

    move-object/from16 v1, p2

    if-ne v7, v0, :cond_7a

    add-int/lit8 v0, v10, 0x8

    .line 265
    invoke-static {v1, v10}, Lsz8;->x0([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 266
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v12, v9, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 267
    invoke-virtual {v12, v9, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_42

    :cond_7a
    :goto_41
    move v0, v10

    :goto_42
    if-eq v0, v10, :cond_7b

    move/from16 v5, p4

    move-object v3, v1

    move-object v6, v4

    move v7, v8

    move-object v2, v9

    move-object v1, v12

    move/from16 v14, v19

    move/from16 v8, v28

    move/from16 v9, v31

    const v16, 0xfffff

    move v4, v0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_7b
    move v3, v0

    move/from16 v14, v19

    move/from16 v10, v28

    move/from16 v0, p5

    :goto_43
    if-ne v15, v0, :cond_7c

    if-eqz v0, :cond_7c

    move/from16 v5, p4

    move v4, v3

    :goto_44
    move/from16 v1, v31

    const v13, 0xfffff

    goto :goto_45

    .line 268
    :cond_7c
    move-object v2, v9

    check-cast v2, Lxi9;

    iget-object v5, v2, Lxi9;->zzc:Lmn9;

    if-ne v5, v11, :cond_7d

    invoke-static {}, Lmn9;->b()Lmn9;

    move-result-object v5

    .line 269
    iput-object v5, v2, Lxi9;->zzc:Lmn9;

    :cond_7d
    move-object v2, v1

    move-object v6, v4

    move v1, v15

    move/from16 v4, p4

    .line 270
    invoke-static/range {v1 .. v6}, Lsz8;->q0(I[BIILmn9;Lrg9;)I

    move-result v3

    move v2, v1

    move-object/from16 v0, p0

    move-object/from16 v6, p6

    move v15, v2

    move v5, v4

    move v7, v8

    move-object v2, v9

    move v8, v10

    move-object v1, v12

    move/from16 v9, v31

    const v16, 0xfffff

    move v4, v3

    move-object/from16 v3, p2

    goto/16 :goto_1

    :cond_7e
    move/from16 v0, p5

    move/from16 v31, v9

    move-object/from16 v21, v12

    move-object/from16 v17, v13

    move/from16 v19, v14

    move-object v12, v1

    move-object v9, v2

    goto :goto_44

    :goto_45
    if-eq v1, v13, :cond_7f

    int-to-long v1, v1

    .line 271
    invoke-virtual {v12, v9, v1, v2, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7f
    move-object/from16 v1, p0

    iget v2, v1, Lpl9;->g:I

    :goto_46
    iget v3, v1, Lpl9;->h:I

    if-ge v2, v3, :cond_82

    iget-object v3, v1, Lpl9;->f:[I

    .line 272
    aget v3, v3, v2

    .line 273
    aget v6, v21, v3

    .line 274
    invoke-virtual {v1, v3}, Lpl9;->v(I)I

    move-result v6

    const v16, 0xfffff

    and-int v6, v6, v16

    int-to-long v6, v6

    .line 275
    invoke-static {v9, v6, v7}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_80

    .line 276
    invoke-virtual {v1, v3}, Lpl9;->x(I)Lbj9;

    move-result-object v7

    if-nez v7, :cond_81

    :cond_80
    const/4 v6, 0x3

    goto :goto_47

    .line 277
    :cond_81
    check-cast v6, Lxk9;

    const/4 v6, 0x3

    .line 278
    div-int/2addr v3, v6

    add-int/2addr v3, v3

    aget-object v0, v17, v3

    .line 279
    invoke-static {v0}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    .line 280
    throw v0

    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 281
    :cond_82
    const-string v1, "Failed to parse the message."

    if-nez v0, :cond_84

    if-ne v4, v5, :cond_83

    goto :goto_48

    .line 282
    :cond_83
    invoke-static {v1}, Lb6;->f(Ljava/lang/String;)V

    const/16 v18, 0x0

    return v18

    :cond_84
    const/16 v18, 0x0

    if-gt v4, v5, :cond_85

    if-ne v15, v0, :cond_85

    :goto_48
    return v4

    .line 283
    :cond_85
    invoke-static {v1}, Lb6;->f(Ljava/lang/String;)V

    return v18

    :cond_86
    move-object v9, v2

    const/16 v18, 0x0

    .line 284
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    return v18

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final t(II)I
    .locals 5

    .line 1
    iget-object p0, p0, Lpl9;->a:[I

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    div-int/lit8 v0, v0, 0x3

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    add-int/2addr v0, v1

    .line 8
    :goto_0
    if-gt p2, v0, :cond_2

    .line 9
    .line 10
    add-int v2, v0, p2

    .line 11
    .line 12
    ushr-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    mul-int/lit8 v3, v2, 0x3

    .line 15
    .line 16
    aget v4, p0, v3

    .line 17
    .line 18
    if-ne p1, v4, :cond_0

    .line 19
    .line 20
    return v3

    .line 21
    :cond_0
    if-ge p1, v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v2, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    add-int/lit8 p2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return v1
.end method

.method public final v(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object p0, p0, Lpl9;->a:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method public final x(I)Lbj9;
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    iget-object p0, p0, Lpl9;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    aget-object p0, p0, p1

    .line 9
    .line 10
    check-cast p0, Lbj9;

    .line 11
    .line 12
    return-object p0
.end method

.method public final y(I)Ljm9;
    .locals 2

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget-object p0, p0, Lpl9;->b:[Ljava/lang/Object;

    .line 5
    .line 6
    aget-object v0, p0, p1

    .line 7
    .line 8
    check-cast v0, Ljm9;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 14
    .line 15
    sget-object v1, Lbm9;->c:Lbm9;

    .line 16
    .line 17
    aget-object v0, p0, v0

    .line 18
    .line 19
    check-cast v0, Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lbm9;->a(Ljava/lang/Class;)Ljm9;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aput-object v0, p0, p1

    .line 26
    .line 27
    return-object v0
.end method

.method public final z(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lpl9;->y(I)Ljm9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lpl9;->v(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    invoke-virtual {p0, p1, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljm9;->zze()Lxi9;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    int-to-long p0, v1

    .line 25
    sget-object v1, Lpl9;->k:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {v1, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lpl9;->o(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Ljm9;->zze()Lxi9;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Ljm9;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method

.method public final zze()Lxi9;
    .locals 0

    .line 1
    iget-object p0, p0, Lpl9;->e:Lmg9;

    .line 2
    .line 3
    check-cast p0, Lxi9;

    .line 4
    .line 5
    invoke-virtual {p0}, Lxi9;->n()Lxi9;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lpl9;->o(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lxi9;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lxi9;

    .line 16
    .line 17
    invoke-virtual {v0}, Lxi9;->g()V

    .line 18
    .line 19
    .line 20
    iput v1, v0, Lmg9;->zza:I

    .line 21
    .line 22
    invoke-virtual {v0}, Lxi9;->e()V

    .line 23
    .line 24
    .line 25
    :cond_1
    move v0, v1

    .line 26
    :goto_0
    iget-object v2, p0, Lpl9;->a:[I

    .line 27
    .line 28
    array-length v3, v2

    .line 29
    if-ge v0, v3, :cond_5

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lpl9;->v(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const v4, 0xfffff

    .line 36
    .line 37
    .line 38
    and-int/2addr v4, v3

    .line 39
    invoke-static {v3}, Lpl9;->u(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    int-to-long v4, v4

    .line 44
    const/16 v6, 0x9

    .line 45
    .line 46
    if-eq v3, v6, :cond_3

    .line 47
    .line 48
    const/16 v6, 0x3c

    .line 49
    .line 50
    if-eq v3, v6, :cond_2

    .line 51
    .line 52
    const/16 v6, 0x44

    .line 53
    .line 54
    if-eq v3, v6, :cond_2

    .line 55
    .line 56
    packed-switch v3, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_0
    sget-object v2, Lpl9;->k:Lsun/misc/Unsafe;

    .line 61
    .line 62
    invoke-virtual {v2, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    move-object v6, v3

    .line 69
    check-cast v6, Lxk9;

    .line 70
    .line 71
    iput-boolean v1, v6, Lxk9;->a:Z

    .line 72
    .line 73
    invoke-virtual {v2, p1, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :pswitch_1
    invoke-static {p1, v4, v5}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Lej9;

    .line 82
    .line 83
    check-cast v2, Log9;

    .line 84
    .line 85
    iget-boolean v3, v2, Log9;->a:Z

    .line 86
    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    iput-boolean v1, v2, Log9;->a:Z

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    aget v2, v2, v0

    .line 93
    .line 94
    invoke-virtual {p0, p1, v2, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lpl9;->y(I)Ljm9;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    sget-object v3, Lpl9;->k:Lsun/misc/Unsafe;

    .line 105
    .line 106
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v2, v3}, Ljm9;->zzf(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    :pswitch_2
    invoke-virtual {p0, v0, p1}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lpl9;->y(I)Ljm9;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    sget-object v3, Lpl9;->k:Lsun/misc/Unsafe;

    .line 125
    .line 126
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-interface {v2, v3}, Ljm9;->zzf(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x3

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_5
    iget-object p0, p0, Lpl9;->i:Lns0;

    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    check-cast p1, Lxi9;

    .line 142
    .line 143
    iget-object p0, p1, Lxi9;->zzc:Lmn9;

    .line 144
    .line 145
    iget-boolean p1, p0, Lmn9;->e:Z

    .line 146
    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    iput-boolean v1, p0, Lmn9;->e:Z

    .line 150
    .line 151
    :cond_6
    :goto_2
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    .line 1
    invoke-static {p1}, Lpl9;->o(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lpl9;->a:[I

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_4

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lpl9;->v(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const v3, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int v4, v2, v3

    .line 24
    .line 25
    invoke-static {v2}, Lpl9;->u(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    aget v5, v1, v0

    .line 30
    .line 31
    int-to-long v8, v4

    .line 32
    packed-switch v2, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_1
    move-object v7, p1

    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Lpl9;->h(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :pswitch_1
    invoke-virtual {p0, p2, v5, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-static {p2, v8, v9}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {p1, v8, v9, v2}, Lun9;->l(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v2, v0, 0x2

    .line 56
    .line 57
    aget v1, v1, v2

    .line 58
    .line 59
    and-int/2addr v1, v3

    .line 60
    int-to-long v1, v1

    .line 61
    invoke-static {p1, v1, v2, v5}, Lun9;->j(Ljava/lang/Object;JI)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Lpl9;->h(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :pswitch_3
    invoke-virtual {p0, p2, v5, v0}, Lpl9;->p(Ljava/lang/Object;II)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    invoke-static {p2, v8, v9}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {p1, v8, v9, v2}, Lun9;->l(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v2, v0, 0x2

    .line 83
    .line 84
    aget v1, v1, v2

    .line 85
    .line 86
    and-int/2addr v1, v3

    .line 87
    int-to-long v1, v1

    .line 88
    invoke-static {p1, v1, v2, v5}, Lun9;->j(Ljava/lang/Object;JI)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :pswitch_4
    sget-object v1, Lnm9;->a:Lns0;

    .line 93
    .line 94
    invoke-static {p1, v8, v9}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {p2, v8, v9}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v1, v2}, Lq34;->u(Ljava/lang/Object;Ljava/lang/Object;)Lxk9;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {p1, v8, v9, v1}, Lun9;->l(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :pswitch_5
    invoke-static {p1, v8, v9}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lej9;

    .line 115
    .line 116
    invoke-static {p2, v8, v9}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Lej9;

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-lez v3, :cond_2

    .line 131
    .line 132
    if-lez v4, :cond_2

    .line 133
    .line 134
    move-object v5, v1

    .line 135
    check-cast v5, Log9;

    .line 136
    .line 137
    iget-boolean v5, v5, Log9;->a:Z

    .line 138
    .line 139
    if-nez v5, :cond_1

    .line 140
    .line 141
    add-int/2addr v4, v3

    .line 142
    invoke-interface {v1, v4}, Lej9;->zzd(I)Lej9;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    .line 148
    .line 149
    :cond_2
    if-gtz v3, :cond_3

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    move-object v2, v1

    .line 153
    :goto_2
    invoke-static {p1, v8, v9, v2}, Lun9;->l(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Lpl9;->g(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_0

    .line 166
    .line 167
    invoke-static {p2, v8, v9}, Lun9;->f(Ljava/lang/Object;J)J

    .line 168
    .line 169
    .line 170
    move-result-wide v1

    .line 171
    invoke-static {p1, v8, v9, v1, v2}, Lun9;->k(Ljava/lang/Object;JJ)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_0

    .line 184
    .line 185
    invoke-static {p2, v8, v9}, Lun9;->e(Ljava/lang/Object;J)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-static {p1, v8, v9, v1}, Lun9;->j(Ljava/lang/Object;JI)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_0

    .line 202
    .line 203
    invoke-static {p2, v8, v9}, Lun9;->f(Ljava/lang/Object;J)J

    .line 204
    .line 205
    .line 206
    move-result-wide v1

    .line 207
    invoke-static {p1, v8, v9, v1, v2}, Lun9;->k(Ljava/lang/Object;JJ)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_1

    .line 214
    .line 215
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_0

    .line 220
    .line 221
    invoke-static {p2, v8, v9}, Lun9;->e(Ljava/lang/Object;J)I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    invoke-static {p1, v8, v9, v1}, Lun9;->j(Ljava/lang/Object;JI)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_0

    .line 238
    .line 239
    invoke-static {p2, v8, v9}, Lun9;->e(Ljava/lang/Object;J)I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    invoke-static {p1, v8, v9, v1}, Lun9;->j(Ljava/lang/Object;JI)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_0

    .line 256
    .line 257
    invoke-static {p2, v8, v9}, Lun9;->e(Ljava/lang/Object;J)I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    invoke-static {p1, v8, v9, v1}, Lun9;->j(Ljava/lang/Object;JI)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_0

    .line 274
    .line 275
    invoke-static {p2, v8, v9}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {p1, v8, v9, v1}, Lun9;->l(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Lpl9;->g(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_1

    .line 291
    .line 292
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_0

    .line 297
    .line 298
    invoke-static {p2, v8, v9}, Lun9;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-static {p1, v8, v9, v1}, Lun9;->l(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_1

    .line 309
    .line 310
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_0

    .line 315
    .line 316
    sget-object v1, Lun9;->c:Lcm9;

    .line 317
    .line 318
    invoke-virtual {v1, p2, v8, v9}, Lcm9;->j(Ljava/lang/Object;J)Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    invoke-virtual {v1, p1, v8, v9, v2}, Lcm9;->c(Ljava/lang/Object;JZ)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_1

    .line 329
    .line 330
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_0

    .line 335
    .line 336
    invoke-static {p2, v8, v9}, Lun9;->e(Ljava/lang/Object;J)I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    invoke-static {p1, v8, v9, v1}, Lun9;->j(Ljava/lang/Object;JI)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-eqz v1, :cond_0

    .line 353
    .line 354
    invoke-static {p2, v8, v9}, Lun9;->f(Ljava/lang/Object;J)J

    .line 355
    .line 356
    .line 357
    move-result-wide v1

    .line 358
    invoke-static {p1, v8, v9, v1, v2}, Lun9;->k(Ljava/lang/Object;JJ)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_1

    .line 365
    .line 366
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-eqz v1, :cond_0

    .line 371
    .line 372
    invoke-static {p2, v8, v9}, Lun9;->e(Ljava/lang/Object;J)I

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    invoke-static {p1, v8, v9, v1}, Lun9;->j(Ljava/lang/Object;JI)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_1

    .line 383
    .line 384
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-eqz v1, :cond_0

    .line 389
    .line 390
    invoke-static {p2, v8, v9}, Lun9;->f(Ljava/lang/Object;J)J

    .line 391
    .line 392
    .line 393
    move-result-wide v1

    .line 394
    invoke-static {p1, v8, v9, v1, v2}, Lun9;->k(Ljava/lang/Object;JJ)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_1

    .line 401
    .line 402
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-eqz v1, :cond_0

    .line 407
    .line 408
    invoke-static {p2, v8, v9}, Lun9;->f(Ljava/lang/Object;J)J

    .line 409
    .line 410
    .line 411
    move-result-wide v1

    .line 412
    invoke-static {p1, v8, v9, v1, v2}, Lun9;->k(Ljava/lang/Object;JJ)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_1

    .line 419
    .line 420
    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-eqz v1, :cond_0

    .line 425
    .line 426
    sget-object v1, Lun9;->c:Lcm9;

    .line 427
    .line 428
    invoke-virtual {v1, p2, v8, v9}, Lcm9;->b(Ljava/lang/Object;J)F

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    invoke-virtual {v1, p1, v8, v9, v2}, Lcm9;->h(Ljava/lang/Object;JF)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {p0, v0, p1}, Lpl9;->i(ILjava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_1

    .line 439
    .line 440
    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lpl9;->m(ILjava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-eqz v1, :cond_0

    .line 445
    .line 446
    sget-object v6, Lun9;->c:Lcm9;

    .line 447
    .line 448
    invoke-virtual {v6, p2, v8, v9}, Lcm9;->a(Ljava/lang/Object;J)D

    .line 449
    .line 450
    .line 451
    move-result-wide v10

    .line 452
    move-object v7, p1

    .line 453
    invoke-virtual/range {v6 .. v11}, Lcm9;->f(Ljava/lang/Object;JD)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p0, v0, v7}, Lpl9;->i(ILjava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    :goto_3
    add-int/lit8 v0, v0, 0x3

    .line 460
    .line 461
    move-object p1, v7

    .line 462
    goto/16 :goto_0

    .line 463
    .line 464
    :cond_4
    move-object v7, p1

    .line 465
    invoke-static {v7, p2}, Lnm9;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    return-void

    .line 469
    :cond_5
    move-object v7, p1

    .line 470
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p0

    .line 474
    const-string p1, "Mutating immutable message: "

    .line 475
    .line 476
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    nop

    .line 485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
