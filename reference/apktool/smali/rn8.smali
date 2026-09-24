.class public abstract Lrn8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "[ \t]*,[ \t]*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lrn8;->a:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Ljava/lang/String;)Lrb0;
    .locals 18

    .line 1
    new-instance v0, Lu40;

    .line 2
    .line 3
    invoke-direct {v0}, Lu40;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lrn8;->a:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    move-object/from16 v2, p0

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    array-length v2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    const/16 v5, 0x20

    .line 18
    .line 19
    if-gt v2, v5, :cond_0

    .line 20
    .line 21
    move v2, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v3

    .line 24
    :goto_0
    if-eqz v2, :cond_1e

    .line 25
    .line 26
    array-length v2, v1

    .line 27
    sub-int/2addr v2, v4

    .line 28
    :goto_1
    iget-object v7, v0, Lu40;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-ltz v2, :cond_18

    .line 31
    .line 32
    aget-object v8, v1, v2

    .line 33
    .line 34
    const/16 v9, 0x3d

    .line 35
    .line 36
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    const/4 v11, -0x1

    .line 41
    if-eq v10, v11, :cond_1

    .line 42
    .line 43
    move v11, v4

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    move v11, v3

    .line 46
    :goto_2
    if-eqz v11, :cond_17

    .line 47
    .line 48
    invoke-virtual {v8, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    add-int/lit8 v10, v10, 0x1

    .line 53
    .line 54
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    const/16 v12, 0x100

    .line 63
    .line 64
    if-gt v10, v12, :cond_15

    .line 65
    .line 66
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-nez v10, :cond_15

    .line 71
    .line 72
    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    const/16 v13, 0x7a

    .line 77
    .line 78
    const/16 v14, 0x61

    .line 79
    .line 80
    const/16 v15, 0x39

    .line 81
    .line 82
    move/from16 p0, v4

    .line 83
    .line 84
    const/16 v4, 0x30

    .line 85
    .line 86
    if-lt v10, v14, :cond_2

    .line 87
    .line 88
    if-le v10, v13, :cond_4

    .line 89
    .line 90
    :cond_2
    if-lt v10, v4, :cond_3

    .line 91
    .line 92
    if-le v10, v15, :cond_4

    .line 93
    .line 94
    :cond_3
    :goto_3
    const/16 v17, 0x0

    .line 95
    .line 96
    goto/16 :goto_7

    .line 97
    .line 98
    :cond_4
    move/from16 v10, p0

    .line 99
    .line 100
    move/from16 v16, v3

    .line 101
    .line 102
    const/16 v17, 0x0

    .line 103
    .line 104
    :goto_4
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-ge v10, v6, :cond_c

    .line 109
    .line 110
    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    const/16 v9, 0x40

    .line 115
    .line 116
    if-lt v6, v14, :cond_5

    .line 117
    .line 118
    if-le v6, v13, :cond_7

    .line 119
    .line 120
    :cond_5
    if-lt v6, v4, :cond_6

    .line 121
    .line 122
    if-le v6, v15, :cond_7

    .line 123
    .line 124
    :cond_6
    const/16 v13, 0x5f

    .line 125
    .line 126
    if-eq v6, v13, :cond_7

    .line 127
    .line 128
    const/16 v13, 0x2d

    .line 129
    .line 130
    if-eq v6, v13, :cond_7

    .line 131
    .line 132
    if-eq v6, v9, :cond_7

    .line 133
    .line 134
    const/16 v13, 0x2a

    .line 135
    .line 136
    if-eq v6, v13, :cond_7

    .line 137
    .line 138
    const/16 v13, 0x2f

    .line 139
    .line 140
    if-eq v6, v13, :cond_7

    .line 141
    .line 142
    goto/16 :goto_7

    .line 143
    .line 144
    :cond_7
    if-ne v6, v9, :cond_b

    .line 145
    .line 146
    if-eqz v16, :cond_8

    .line 147
    .line 148
    goto/16 :goto_7

    .line 149
    .line 150
    :cond_8
    const/16 v6, 0xf0

    .line 151
    .line 152
    if-le v10, v6, :cond_9

    .line 153
    .line 154
    goto/16 :goto_7

    .line 155
    .line 156
    :cond_9
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    sub-int/2addr v6, v10

    .line 161
    add-int/lit8 v6, v6, -0x1

    .line 162
    .line 163
    const/16 v9, 0xd

    .line 164
    .line 165
    if-gt v6, v9, :cond_16

    .line 166
    .line 167
    if-nez v6, :cond_a

    .line 168
    .line 169
    goto/16 :goto_7

    .line 170
    .line 171
    :cond_a
    move/from16 v16, p0

    .line 172
    .line 173
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 174
    .line 175
    const/16 v9, 0x3d

    .line 176
    .line 177
    const/16 v13, 0x7a

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_c
    if-nez v16, :cond_d

    .line 181
    .line 182
    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-lt v6, v4, :cond_d

    .line 187
    .line 188
    if-le v6, v15, :cond_16

    .line 189
    .line 190
    :cond_d
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_e

    .line 195
    .line 196
    goto/16 :goto_7

    .line 197
    .line 198
    :cond_e
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-gt v4, v12, :cond_16

    .line 203
    .line 204
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    add-int/lit8 v4, v4, -0x1

    .line 209
    .line 210
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-ne v4, v5, :cond_f

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_f
    move v4, v3

    .line 218
    :goto_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-ge v4, v6, :cond_11

    .line 223
    .line 224
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    const/16 v9, 0x2c

    .line 229
    .line 230
    if-eq v6, v9, :cond_16

    .line 231
    .line 232
    const/16 v9, 0x3d

    .line 233
    .line 234
    if-eq v6, v9, :cond_16

    .line 235
    .line 236
    if-lt v6, v5, :cond_16

    .line 237
    .line 238
    const/16 v10, 0x7e

    .line 239
    .line 240
    if-le v6, v10, :cond_10

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_11
    iget v4, v0, Lu40;->b:I

    .line 247
    .line 248
    if-lt v4, v5, :cond_12

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_12
    move v4, v3

    .line 252
    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-ge v4, v6, :cond_14

    .line 257
    .line 258
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    check-cast v6, Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    if-eqz v6, :cond_13

    .line 269
    .line 270
    add-int/lit8 v4, v4, 0x1

    .line 271
    .line 272
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    check-cast v6, Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v7, v4, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    if-nez v6, :cond_16

    .line 282
    .line 283
    iget v4, v0, Lu40;->b:I

    .line 284
    .line 285
    add-int/lit8 v4, v4, 0x1

    .line 286
    .line 287
    iput v4, v0, Lu40;->b:I

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_13
    add-int/lit8 v4, v4, 0x2

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_14
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    iget v4, v0, Lu40;->b:I

    .line 300
    .line 301
    add-int/lit8 v4, v4, 0x1

    .line 302
    .line 303
    iput v4, v0, Lu40;->b:I

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_15
    move/from16 p0, v4

    .line 307
    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    :cond_16
    :goto_7
    add-int/lit8 v2, v2, -0x1

    .line 311
    .line 312
    move/from16 v4, p0

    .line 313
    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :cond_17
    const/16 v17, 0x0

    .line 317
    .line 318
    const-string v0, "Invalid TraceState list-member format."

    .line 319
    .line 320
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    return-object v17

    .line 324
    :cond_18
    iget v2, v0, Lu40;->b:I

    .line 325
    .line 326
    const/4 v4, 0x2

    .line 327
    if-nez v2, :cond_19

    .line 328
    .line 329
    sget-object v0, Lu40;->c:Lrb0;

    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_19
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-ne v2, v4, :cond_1a

    .line 337
    .line 338
    new-instance v0, Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 341
    .line 342
    .line 343
    new-instance v2, Lrb0;

    .line 344
    .line 345
    invoke-direct {v2, v0}, Lrb0;-><init>(Ljava/util/List;)V

    .line 346
    .line 347
    .line 348
    :goto_8
    move-object v0, v2

    .line 349
    goto :goto_a

    .line 350
    :cond_1a
    iget v0, v0, Lu40;->b:I

    .line 351
    .line 352
    mul-int/2addr v0, v4

    .line 353
    new-array v0, v0, [Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    sub-int/2addr v2, v4

    .line 360
    :goto_9
    if-ltz v2, :cond_1c

    .line 361
    .line 362
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    check-cast v5, Ljava/lang/String;

    .line 367
    .line 368
    add-int/lit8 v6, v2, 0x1

    .line 369
    .line 370
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    check-cast v6, Ljava/lang/String;

    .line 375
    .line 376
    if-eqz v6, :cond_1b

    .line 377
    .line 378
    add-int/lit8 v8, v3, 0x1

    .line 379
    .line 380
    aput-object v5, v0, v3

    .line 381
    .line 382
    add-int/lit8 v3, v3, 0x2

    .line 383
    .line 384
    aput-object v6, v0, v8

    .line 385
    .line 386
    :cond_1b
    add-int/lit8 v2, v2, -0x2

    .line 387
    .line 388
    goto :goto_9

    .line 389
    :cond_1c
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    new-instance v2, Lrb0;

    .line 394
    .line 395
    invoke-direct {v2, v0}, Lrb0;-><init>(Ljava/util/List;)V

    .line 396
    .line 397
    .line 398
    goto :goto_8

    .line 399
    :goto_a
    iget-object v2, v0, Lrb0;->a:Ljava/util/List;

    .line 400
    .line 401
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    div-int/2addr v2, v4

    .line 406
    array-length v1, v1

    .line 407
    if-eq v2, v1, :cond_1d

    .line 408
    .line 409
    sget-object v0, Lu40;->c:Lrb0;

    .line 410
    .line 411
    :cond_1d
    return-object v0

    .line 412
    :cond_1e
    const/16 v17, 0x0

    .line 413
    .line 414
    const-string v0, "TraceState has too many elements."

    .line 415
    .line 416
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    return-object v17
.end method
