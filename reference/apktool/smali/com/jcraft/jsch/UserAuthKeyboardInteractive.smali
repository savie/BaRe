.class Lcom/jcraft/jsch/UserAuthKeyboardInteractive;
.super Lcom/jcraft/jsch/UserAuth;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final start(Lcom/jcraft/jsch/Session;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    instance-of v2, v2, Lcom/jcraft/jsch/UIKeyboardInteractive;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_a

    .line 18
    .line 19
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v4, "@"

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget v4, v1, Lcom/jcraft/jsch/Session;->h0:I

    .line 44
    .line 45
    const/16 v5, 0x16

    .line 46
    .line 47
    if-eq v4, v5, :cond_1

    .line 48
    .line 49
    const-string v4, ":"

    .line 50
    .line 51
    invoke-static {v2, v4}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget v4, v1, Lcom/jcraft/jsch/Session;->h0:I

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :cond_1
    move-object v5, v2

    .line 65
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->j0:[B

    .line 66
    .line 67
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->d:Ljava/lang/String;

    .line 68
    .line 69
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-static {v4, v6}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    move v4, v3

    .line 76
    :goto_0
    iget v6, v1, Lcom/jcraft/jsch/Session;->e0:I

    .line 77
    .line 78
    iget v7, v1, Lcom/jcraft/jsch/Session;->d0:I

    .line 79
    .line 80
    if-lt v6, v7, :cond_2

    .line 81
    .line 82
    goto/16 :goto_a

    .line 83
    .line 84
    :cond_2
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 85
    .line 86
    invoke-virtual {v6}, Lcom/jcraft/jsch/Packet;->a()V

    .line 87
    .line 88
    .line 89
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 90
    .line 91
    const/16 v7, 0x32

    .line 92
    .line 93
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 94
    .line 95
    .line 96
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 97
    .line 98
    invoke-virtual {v6, v10}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 99
    .line 100
    .line 101
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 102
    .line 103
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 104
    .line 105
    const-string v8, "ssh-connection"

    .line 106
    .line 107
    invoke-virtual {v8, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v6, v8}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 112
    .line 113
    .line 114
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 115
    .line 116
    const-string v11, "keyboard-interactive"

    .line 117
    .line 118
    invoke-virtual {v11, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 123
    .line 124
    .line 125
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 126
    .line 127
    sget-object v7, Lcom/jcraft/jsch/Util;->c:[B

    .line 128
    .line 129
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 130
    .line 131
    .line 132
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    array-length v8, v7

    .line 138
    invoke-virtual {v6, v7, v3, v8}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 139
    .line 140
    .line 141
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 142
    .line 143
    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 144
    .line 145
    .line 146
    const/4 v12, 0x1

    .line 147
    move v13, v4

    .line 148
    move v4, v12

    .line 149
    :cond_3
    :goto_1
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 150
    .line 151
    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V

    .line 152
    .line 153
    .line 154
    iput-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 155
    .line 156
    iget-object v7, v6, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 157
    .line 158
    const/4 v8, 0x5

    .line 159
    aget-byte v7, v7, v8

    .line 160
    .line 161
    and-int/lit16 v7, v7, 0xff

    .line 162
    .line 163
    const/16 v8, 0x34

    .line 164
    .line 165
    if-ne v7, v8, :cond_4

    .line 166
    .line 167
    return v12

    .line 168
    :cond_4
    const/16 v8, 0x35

    .line 169
    .line 170
    if-ne v7, v8, :cond_5

    .line 171
    .line 172
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 173
    .line 174
    .line 175
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 176
    .line 177
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 178
    .line 179
    .line 180
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 181
    .line 182
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 183
    .line 184
    .line 185
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 186
    .line 187
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    iget-object v7, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 192
    .line 193
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 194
    .line 195
    .line 196
    array-length v7, v6

    .line 197
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 198
    .line 199
    new-instance v9, Ljava/lang/String;

    .line 200
    .line 201
    invoke-direct {v9, v6, v3, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 202
    .line 203
    .line 204
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    .line 205
    .line 206
    if-eqz v6, :cond_3

    .line 207
    .line 208
    invoke-interface {v6, v9}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_5
    const/16 v8, 0x33

    .line 213
    .line 214
    if-ne v7, v8, :cond_9

    .line 215
    .line 216
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 217
    .line 218
    .line 219
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 220
    .line 221
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 222
    .line 223
    .line 224
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 225
    .line 226
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 227
    .line 228
    .line 229
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 230
    .line 231
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    iget-object v7, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 236
    .line 237
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    if-nez v7, :cond_8

    .line 242
    .line 243
    if-eqz v4, :cond_6

    .line 244
    .line 245
    goto/16 :goto_a

    .line 246
    .line 247
    :cond_6
    iget v4, v1, Lcom/jcraft/jsch/Session;->e0:I

    .line 248
    .line 249
    add-int/2addr v4, v12

    .line 250
    iput v4, v1, Lcom/jcraft/jsch/Session;->e0:I

    .line 251
    .line 252
    if-nez v13, :cond_7

    .line 253
    .line 254
    move v4, v13

    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_7
    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    .line 258
    .line 259
    invoke-direct {v0, v11}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v0

    .line 263
    :cond_8
    new-instance v0, Lcom/jcraft/jsch/JSchPartialAuthException;

    .line 264
    .line 265
    array-length v1, v6

    .line 266
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 267
    .line 268
    new-instance v4, Ljava/lang/String;

    .line 269
    .line 270
    invoke-direct {v4, v6, v3, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 271
    .line 272
    .line 273
    invoke-direct {v0, v4}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :cond_9
    const/16 v4, 0x3c

    .line 278
    .line 279
    if-ne v7, v4, :cond_15

    .line 280
    .line 281
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 282
    .line 283
    .line 284
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 285
    .line 286
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 287
    .line 288
    .line 289
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 290
    .line 291
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 292
    .line 293
    .line 294
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 295
    .line 296
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    array-length v6, v4

    .line 301
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 302
    .line 303
    new-instance v8, Ljava/lang/String;

    .line 304
    .line 305
    invoke-direct {v8, v4, v3, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 306
    .line 307
    .line 308
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 309
    .line 310
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    array-length v6, v4

    .line 315
    new-instance v9, Ljava/lang/String;

    .line 316
    .line 317
    invoke-direct {v9, v4, v3, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 318
    .line 319
    .line 320
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 321
    .line 322
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->c([B)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 330
    .line 331
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 332
    .line 333
    .line 334
    move-result v14

    .line 335
    move-object v6, v8

    .line 336
    new-array v8, v14, [Ljava/lang/String;

    .line 337
    .line 338
    move-object v7, v9

    .line 339
    new-array v9, v14, [Z

    .line 340
    .line 341
    move v4, v3

    .line 342
    :goto_2
    if-ge v4, v14, :cond_b

    .line 343
    .line 344
    iget-object v15, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 345
    .line 346
    invoke-virtual {v15}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 347
    .line 348
    .line 349
    move-result-object v15

    .line 350
    array-length v12, v15

    .line 351
    move-object/from16 v16, v2

    .line 352
    .line 353
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 354
    .line 355
    move/from16 v17, v4

    .line 356
    .line 357
    new-instance v4, Ljava/lang/String;

    .line 358
    .line 359
    invoke-direct {v4, v15, v3, v12, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 360
    .line 361
    .line 362
    aput-object v4, v8, v17

    .line 363
    .line 364
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 365
    .line 366
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-eqz v2, :cond_a

    .line 371
    .line 372
    const/4 v2, 0x1

    .line 373
    goto :goto_3

    .line 374
    :cond_a
    move v2, v3

    .line 375
    :goto_3
    aput-boolean v2, v9, v17

    .line 376
    .line 377
    add-int/lit8 v4, v17, 0x1

    .line 378
    .line 379
    move-object/from16 v2, v16

    .line 380
    .line 381
    const/4 v12, 0x1

    .line 382
    goto :goto_2

    .line 383
    :cond_b
    move-object/from16 v16, v2

    .line 384
    .line 385
    const/4 v2, 0x0

    .line 386
    const/4 v12, 0x1

    .line 387
    if-eqz v16, :cond_c

    .line 388
    .line 389
    if-ne v14, v12, :cond_c

    .line 390
    .line 391
    aget-boolean v4, v9, v3

    .line 392
    .line 393
    if-nez v4, :cond_c

    .line 394
    .line 395
    aget-object v4, v8, v3

    .line 396
    .line 397
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 398
    .line 399
    invoke-virtual {v4, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    const-string v15, "password:"

    .line 404
    .line 405
    invoke-virtual {v4, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    if-ltz v4, :cond_c

    .line 410
    .line 411
    new-array v4, v12, [[B

    .line 412
    .line 413
    aput-object v16, v4, v3

    .line 414
    .line 415
    move-object/from16 v16, v2

    .line 416
    .line 417
    move-object v2, v4

    .line 418
    goto :goto_6

    .line 419
    :cond_c
    if-gtz v14, :cond_d

    .line 420
    .line 421
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    if-gtz v4, :cond_d

    .line 426
    .line 427
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    if-lez v4, :cond_f

    .line 432
    .line 433
    :cond_d
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    .line 434
    .line 435
    if-eqz v4, :cond_f

    .line 436
    .line 437
    check-cast v4, Lcom/jcraft/jsch/UIKeyboardInteractive;

    .line 438
    .line 439
    invoke-interface/range {v4 .. v9}, Lcom/jcraft/jsch/UIKeyboardInteractive;->promptKeyboardInteractive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    if-eqz v4, :cond_f

    .line 444
    .line 445
    array-length v2, v4

    .line 446
    new-array v2, v2, [[B

    .line 447
    .line 448
    move v6, v3

    .line 449
    :goto_4
    array-length v7, v4

    .line 450
    if-ge v6, v7, :cond_f

    .line 451
    .line 452
    aget-object v7, v4, v6

    .line 453
    .line 454
    if-eqz v7, :cond_e

    .line 455
    .line 456
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 457
    .line 458
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 459
    .line 460
    .line 461
    move-result-object v7

    .line 462
    goto :goto_5

    .line 463
    :cond_e
    sget-object v7, Lcom/jcraft/jsch/Util;->c:[B

    .line 464
    .line 465
    :goto_5
    aput-object v7, v2, v6

    .line 466
    .line 467
    add-int/lit8 v6, v6, 0x1

    .line 468
    .line 469
    goto :goto_4

    .line 470
    :cond_f
    :goto_6
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 471
    .line 472
    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    .line 473
    .line 474
    .line 475
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 476
    .line 477
    const/16 v6, 0x3d

    .line 478
    .line 479
    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 480
    .line 481
    .line 482
    if-lez v14, :cond_13

    .line 483
    .line 484
    if-eqz v2, :cond_10

    .line 485
    .line 486
    array-length v4, v2

    .line 487
    if-eq v14, v4, :cond_13

    .line 488
    .line 489
    :cond_10
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 490
    .line 491
    if-nez v2, :cond_11

    .line 492
    .line 493
    invoke-virtual {v4, v14}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 494
    .line 495
    .line 496
    move v4, v3

    .line 497
    :goto_7
    if-ge v4, v14, :cond_12

    .line 498
    .line 499
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 500
    .line 501
    sget-object v7, Lcom/jcraft/jsch/Util;->c:[B

    .line 502
    .line 503
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 504
    .line 505
    .line 506
    add-int/lit8 v4, v4, 0x1

    .line 507
    .line 508
    goto :goto_7

    .line 509
    :cond_11
    invoke-virtual {v4, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 510
    .line 511
    .line 512
    :cond_12
    if-nez v2, :cond_14

    .line 513
    .line 514
    move v13, v12

    .line 515
    goto :goto_9

    .line 516
    :cond_13
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 517
    .line 518
    invoke-virtual {v4, v14}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 519
    .line 520
    .line 521
    move v4, v3

    .line 522
    :goto_8
    if-ge v4, v14, :cond_14

    .line 523
    .line 524
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 525
    .line 526
    aget-object v7, v2, v4

    .line 527
    .line 528
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 529
    .line 530
    .line 531
    add-int/lit8 v4, v4, 0x1

    .line 532
    .line 533
    goto :goto_8

    .line 534
    :cond_14
    :goto_9
    iget-object v2, v0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 535
    .line 536
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 537
    .line 538
    .line 539
    move v4, v3

    .line 540
    move-object/from16 v2, v16

    .line 541
    .line 542
    goto/16 :goto_1

    .line 543
    .line 544
    :cond_15
    :goto_a
    return v3
.end method
