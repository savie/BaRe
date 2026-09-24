.class public abstract Lt89;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ls89;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "java.time.Instant"

    .line 2
    .line 3
    invoke-static {}, Lj89;->x()Li89;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-wide v2, -0xe7791f700L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Li89;->f(J)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Li89;->e(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lj79;->b()Lk79;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lj89;

    .line 24
    .line 25
    invoke-static {}, Lj89;->x()Li89;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-wide v3, 0x3afff4417fL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3, v4}, Li89;->f(J)V

    .line 35
    .line 36
    .line 37
    const v3, 0x3b9ac9ff

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Li89;->e(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lj79;->b()Lk79;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lj89;

    .line 48
    .line 49
    invoke-static {}, Lj89;->x()Li89;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-wide/16 v3, 0x0

    .line 54
    .line 55
    invoke-virtual {v1, v3, v4}, Li89;->f(J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Li89;->e(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lj79;->b()Lk79;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lj89;

    .line 66
    .line 67
    new-instance v1, Ls89;

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ls89;-><init>(I)V

    .line 70
    .line 71
    .line 72
    sput-object v1, Lt89;->a:Ls89;

    .line 73
    .line 74
    const-string v1, "now"

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :catch_0
    const-string v1, "getEpochSecond"

    .line 85
    .line 86
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    .line 92
    .line 93
    :catch_1
    const-string v1, "getNano"

    .line 94
    .line 95
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 100
    .line 101
    .line 102
    :catch_2
    return-void
.end method

.method public static a(Ljava/lang/String;)Lj89;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/16 v0, 0x54

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v3, "\""

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, -0x1

    .line 13
    if-eq v0, v5, :cond_18

    .line 14
    .line 15
    const/16 v6, 0x5a

    .line 16
    .line 17
    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->indexOf(II)I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    const/16 v8, 0x2b

    .line 22
    .line 23
    if-ne v7, v5, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->indexOf(II)I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    :cond_0
    if-ne v7, v5, :cond_1

    .line 30
    .line 31
    const/16 v7, 0x2d

    .line 32
    .line 33
    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->indexOf(II)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    :cond_1
    if-eq v7, v5, :cond_17

    .line 38
    .line 39
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/16 v9, 0x2e

    .line 44
    .line 45
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    const/4 v10, 0x1

    .line 50
    if-eq v9, v5, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    add-int/2addr v9, v10

    .line 57
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v9, v0

    .line 62
    move-object v0, v11

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-string v9, ""

    .line 65
    .line 66
    :goto_0
    sget-object v11, Lt89;->a:Ls89;

    .line 67
    .line 68
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    check-cast v11, Ljava/text/SimpleDateFormat;

    .line 73
    .line 74
    invoke-virtual {v11, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 79
    .line 80
    .line 81
    move-result-wide v11

    .line 82
    const-wide/16 v13, 0x3e8

    .line 83
    .line 84
    div-long/2addr v11, v13

    .line 85
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    move v13, v4

    .line 92
    :cond_3
    const/16 v16, 0x0

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    move v0, v4

    .line 96
    move v13, v0

    .line 97
    :goto_1
    const/16 v14, 0x9

    .line 98
    .line 99
    if-ge v0, v14, :cond_3

    .line 100
    .line 101
    mul-int/lit8 v13, v13, 0xa

    .line 102
    .line 103
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    if-ge v0, v14, :cond_7

    .line 108
    .line 109
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    const/16 v15, 0x30

    .line 114
    .line 115
    if-lt v14, v15, :cond_5

    .line 116
    .line 117
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    .line 118
    .line 119
    .line 120
    move-result v14

    .line 121
    const/16 v16, 0x0

    .line 122
    .line 123
    const/16 v2, 0x39

    .line 124
    .line 125
    if-gt v14, v2, :cond_6

    .line 126
    .line 127
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    sub-int/2addr v2, v15

    .line 132
    add-int/2addr v2, v13

    .line 133
    move v13, v2

    .line 134
    goto :goto_2

    .line 135
    :cond_5
    const/16 v16, 0x0

    .line 136
    .line 137
    :cond_6
    const-string v0, "Invalid nanoseconds."

    .line 138
    .line 139
    invoke-static {v4, v0}, Ly5;->e(ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-object v16

    .line 143
    :cond_7
    const/16 v16, 0x0

    .line 144
    .line 145
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :goto_3
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-ne v0, v6, :cond_9

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    add-int/lit8 v2, v7, 0x1

    .line 159
    .line 160
    if-ne v0, v2, :cond_8

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_8
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-string v1, "Failed to parse timestamp: invalid trailing data \""

    .line 168
    .line 169
    invoke-static {v1, v0, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v4, v0}, Ly5;->e(ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-object v16

    .line 177
    :cond_9
    add-int/lit8 v0, v7, 0x1

    .line 178
    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    const/16 v0, 0x3a

    .line 184
    .line 185
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    const-string v3, "Invalid offset value: "

    .line 190
    .line 191
    if-eq v0, v5, :cond_16

    .line 192
    .line 193
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    add-int/2addr v0, v10

    .line 198
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 203
    .line 204
    .line 205
    move-result-wide v5

    .line 206
    const-wide/16 v14, 0x3c

    .line 207
    .line 208
    mul-long/2addr v5, v14

    .line 209
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 210
    .line 211
    .line 212
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    add-long/2addr v5, v2

    .line 214
    mul-long/2addr v5, v14

    .line 215
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-ne v0, v8, :cond_a

    .line 220
    .line 221
    sub-long/2addr v11, v5

    .line 222
    goto :goto_4

    .line 223
    :cond_a
    add-long/2addr v11, v5

    .line 224
    :goto_4
    const-wide v2, -0xe7791f700L

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    cmp-long v0, v11, v2

    .line 230
    .line 231
    if-ltz v0, :cond_b

    .line 232
    .line 233
    const-wide v2, 0x3afff4417fL

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    cmp-long v0, v11, v2

    .line 239
    .line 240
    if-gtz v0, :cond_b

    .line 241
    .line 242
    move v0, v10

    .line 243
    goto :goto_5

    .line 244
    :cond_b
    move v0, v4

    .line 245
    :goto_5
    if-eqz v0, :cond_15

    .line 246
    .line 247
    const v0, -0x3b9aca00

    .line 248
    .line 249
    .line 250
    const-wide/16 v2, 0x0

    .line 251
    .line 252
    const v5, 0x3b9aca00

    .line 253
    .line 254
    .line 255
    if-le v13, v0, :cond_c

    .line 256
    .line 257
    if-lt v13, v5, :cond_f

    .line 258
    .line 259
    :cond_c
    :try_start_1
    div-int v0, v13, v5

    .line 260
    .line 261
    int-to-long v6, v0

    .line 262
    add-long v8, v11, v6

    .line 263
    .line 264
    xor-long/2addr v6, v11

    .line 265
    cmp-long v0, v6, v2

    .line 266
    .line 267
    if-gez v0, :cond_d

    .line 268
    .line 269
    move v0, v10

    .line 270
    goto :goto_6

    .line 271
    :cond_d
    move v0, v4

    .line 272
    :goto_6
    xor-long v6, v11, v8

    .line 273
    .line 274
    cmp-long v6, v6, v2

    .line 275
    .line 276
    if-ltz v6, :cond_e

    .line 277
    .line 278
    move v6, v10

    .line 279
    goto :goto_7

    .line 280
    :cond_e
    move v6, v4

    .line 281
    :goto_7
    or-int/2addr v0, v6

    .line 282
    if-eqz v0, :cond_14

    .line 283
    .line 284
    rem-int/2addr v13, v5

    .line 285
    move-wide v11, v8

    .line 286
    :cond_f
    if-gez v13, :cond_13

    .line 287
    .line 288
    add-int/2addr v13, v5

    .line 289
    const-wide/16 v5, 0x1

    .line 290
    .line 291
    sub-long v7, v11, v5

    .line 292
    .line 293
    xor-long/2addr v5, v11

    .line 294
    cmp-long v0, v5, v2

    .line 295
    .line 296
    if-ltz v0, :cond_10

    .line 297
    .line 298
    move v0, v10

    .line 299
    goto :goto_8

    .line 300
    :cond_10
    move v0, v4

    .line 301
    :goto_8
    xor-long v5, v11, v7

    .line 302
    .line 303
    cmp-long v2, v5, v2

    .line 304
    .line 305
    if-ltz v2, :cond_11

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_11
    move v10, v4

    .line 309
    :goto_9
    or-int/2addr v0, v10

    .line 310
    if-eqz v0, :cond_12

    .line 311
    .line 312
    move-wide v11, v7

    .line 313
    goto :goto_a

    .line 314
    :cond_12
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 315
    .line 316
    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    .line 317
    .line 318
    .line 319
    throw v0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    goto :goto_b

    .line 322
    :cond_13
    :goto_a
    invoke-static {}, Lj89;->x()Li89;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v0, v11, v12}, Li89;->f(J)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v13}, Li89;->e(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    check-cast v0, Lj89;

    .line 337
    .line 338
    invoke-static {v0}, Lt89;->b(Lj89;)V

    .line 339
    .line 340
    .line 341
    return-object v0

    .line 342
    :cond_14
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 343
    .line 344
    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    .line 345
    .line 346
    .line 347
    throw v0

    .line 348
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 349
    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v3, "Timestamp is not valid. Input seconds is too large. Seconds ("

    .line 353
    .line 354
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v3, ") must be in range [-62,135,596,800, +253,402,300,799]. "

    .line 361
    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    :goto_b
    new-instance v2, Ljava/text/ParseException;

    .line 374
    .line 375
    const-string v3, "Failed to parse timestamp "

    .line 376
    .line 377
    const-string v5, " Timestamp is out of range."

    .line 378
    .line 379
    invoke-static {v3, v1, v5}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-direct {v2, v1, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 387
    .line 388
    .line 389
    throw v2

    .line 390
    :catch_1
    move-exception v0

    .line 391
    new-instance v1, Ljava/text/ParseException;

    .line 392
    .line 393
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-direct {v1, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 401
    .line 402
    .line 403
    throw v1

    .line 404
    :cond_16
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-static {v4, v0}, Ly5;->e(ILjava/lang/String;)V

    .line 409
    .line 410
    .line 411
    return-object v16

    .line 412
    :cond_17
    const/16 v16, 0x0

    .line 413
    .line 414
    const-string v0, "Failed to parse timestamp: missing valid timezone offset."

    .line 415
    .line 416
    invoke-static {v4, v0}, Ly5;->e(ILjava/lang/String;)V

    .line 417
    .line 418
    .line 419
    return-object v16

    .line 420
    :cond_18
    const/16 v16, 0x0

    .line 421
    .line 422
    const-string v0, "Failed to parse timestamp: invalid timestamp \""

    .line 423
    .line 424
    invoke-static {v0, v1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-static {v4, v0}, Ly5;->e(ILjava/lang/String;)V

    .line 429
    .line 430
    .line 431
    return-object v16
.end method

.method public static b(Lj89;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lj89;->w()J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    invoke-virtual {p0}, Lj89;->t()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    const-wide v5, -0xe7791f700L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long p0, v1, v5

    .line 15
    .line 16
    if-ltz p0, :cond_0

    .line 17
    .line 18
    const-wide v5, 0x3afff4417fL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    cmp-long p0, v1, v5

    .line 24
    .line 25
    if-gtz p0, :cond_0

    .line 26
    .line 27
    if-ltz v4, :cond_0

    .line 28
    .line 29
    const p0, 0x3b9aca00

    .line 30
    .line 31
    .line 32
    if-ge v4, p0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    const-string v3, ") must be in range [-62,135,596,800, +253,402,300,799]. Nanos ("

    .line 36
    .line 37
    const-string v5, ") must be in range [0, +999,999,999]."

    .line 38
    .line 39
    const-string v0, "Timestamp is not valid. See proto definition for valid values. Seconds ("

    .line 40
    .line 41
    invoke-static/range {v0 .. v5}, Lz5;->g(Ljava/lang/String;JLjava/lang/Object;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
