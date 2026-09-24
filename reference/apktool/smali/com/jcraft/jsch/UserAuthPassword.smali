.class Lcom/jcraft/jsch/UserAuthPassword;
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
    const-string v2, "ssh-connection"

    .line 6
    .line 7
    invoke-super/range {p0 .. p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 8
    .line 9
    .line 10
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->j0:[B

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v5, v0, Lcom/jcraft/jsch/UserAuth;->d:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v5, "@"

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v5, v1, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget v5, v1, Lcom/jcraft/jsch/Session;->h0:I

    .line 37
    .line 38
    const/16 v6, 0x16

    .line 39
    .line 40
    if-eq v5, v6, :cond_0

    .line 41
    .line 42
    const-string v5, ":"

    .line 43
    .line 44
    invoke-static {v4, v5}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget v5, v1, Lcom/jcraft/jsch/Session;->h0:I

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :cond_0
    move-object v5, v4

    .line 58
    :goto_0
    :try_start_0
    iget v4, v1, Lcom/jcraft/jsch/Session;->e0:I

    .line 59
    .line 60
    iget v6, v1, Lcom/jcraft/jsch/Session;->d0:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    if-lt v4, v6, :cond_1

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 68
    .line 69
    .line 70
    return v10

    .line 71
    :cond_1
    const-string v11, "password"

    .line 72
    .line 73
    if-nez v3, :cond_6

    .line 74
    .line 75
    :try_start_1
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    if-nez v4, :cond_3

    .line 78
    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 82
    .line 83
    .line 84
    :cond_2
    return v10

    .line 85
    :cond_3
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v7, "Password for "

    .line 91
    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-interface {v4, v6}, Lcom/jcraft/jsch/UserInfo;->promptPassword(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_5

    .line 107
    .line 108
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    .line 109
    .line 110
    invoke-interface {v4}, Lcom/jcraft/jsch/UserInfo;->getPassword()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-eqz v4, :cond_4

    .line 115
    .line 116
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 117
    .line 118
    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    goto :goto_1

    .line 123
    :cond_4
    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    .line 124
    .line 125
    invoke-direct {v0, v11}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    goto/16 :goto_5

    .line 131
    .line 132
    :cond_5
    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    .line 133
    .line 134
    invoke-direct {v0, v11}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_6
    :goto_1
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->d:Ljava/lang/String;

    .line 139
    .line 140
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 141
    .line 142
    invoke-static {v4, v6}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 147
    .line 148
    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    .line 149
    .line 150
    .line 151
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 152
    .line 153
    const/16 v13, 0x32

    .line 154
    .line 155
    invoke-virtual {v4, v13}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 156
    .line 157
    .line 158
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 159
    .line 160
    invoke-virtual {v4, v12}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 161
    .line 162
    .line 163
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 164
    .line 165
    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-virtual {v4, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 170
    .line 171
    .line 172
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 173
    .line 174
    invoke-virtual {v11, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 179
    .line 180
    .line 181
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 182
    .line 183
    invoke-virtual {v4, v10}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 184
    .line 185
    .line 186
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 187
    .line 188
    invoke-virtual {v4, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 189
    .line 190
    .line 191
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 192
    .line 193
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 194
    .line 195
    .line 196
    :cond_7
    :goto_2
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 197
    .line 198
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V

    .line 199
    .line 200
    .line 201
    iput-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 202
    .line 203
    iget-object v6, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 204
    .line 205
    const/4 v7, 0x5

    .line 206
    aget-byte v6, v6, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    .line 208
    and-int/lit16 v6, v6, 0xff

    .line 209
    .line 210
    const/16 v7, 0x34

    .line 211
    .line 212
    const/4 v14, 0x1

    .line 213
    if-ne v6, v7, :cond_8

    .line 214
    .line 215
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 216
    .line 217
    .line 218
    return v14

    .line 219
    :cond_8
    const/16 v7, 0x35

    .line 220
    .line 221
    if-ne v6, v7, :cond_9

    .line 222
    .line 223
    :try_start_3
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 224
    .line 225
    .line 226
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 227
    .line 228
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 229
    .line 230
    .line 231
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 232
    .line 233
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 234
    .line 235
    .line 236
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 237
    .line 238
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 243
    .line 244
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 245
    .line 246
    .line 247
    array-length v6, v4

    .line 248
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 249
    .line 250
    new-instance v8, Ljava/lang/String;

    .line 251
    .line 252
    invoke-direct {v8, v4, v10, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 253
    .line 254
    .line 255
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    .line 256
    .line 257
    if-eqz v4, :cond_7

    .line 258
    .line 259
    invoke-interface {v4, v8}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_9
    const/16 v7, 0x3c

    .line 264
    .line 265
    if-ne v6, v7, :cond_f

    .line 266
    .line 267
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 268
    .line 269
    .line 270
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 271
    .line 272
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 273
    .line 274
    .line 275
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 276
    .line 277
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 278
    .line 279
    .line 280
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 281
    .line 282
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 287
    .line 288
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 289
    .line 290
    .line 291
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    .line 292
    .line 293
    if-eqz v6, :cond_d

    .line 294
    .line 295
    instance-of v7, v6, Lcom/jcraft/jsch/UIKeyboardInteractive;

    .line 296
    .line 297
    if-nez v7, :cond_a

    .line 298
    .line 299
    goto/16 :goto_4

    .line 300
    .line 301
    :cond_a
    check-cast v6, Lcom/jcraft/jsch/UIKeyboardInteractive;

    .line 302
    .line 303
    move-object v7, v6

    .line 304
    const-string v6, "Password Change Required"

    .line 305
    .line 306
    const-string v8, "New Password: "

    .line 307
    .line 308
    filled-new-array {v8}, [Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    new-array v9, v14, [Z

    .line 313
    .line 314
    aput-boolean v10, v9, v10

    .line 315
    .line 316
    array-length v15, v4

    .line 317
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 318
    .line 319
    move-object/from16 v17, v7

    .line 320
    .line 321
    new-instance v7, Ljava/lang/String;

    .line 322
    .line 323
    invoke-direct {v7, v4, v10, v15, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 324
    .line 325
    .line 326
    move-object/from16 v4, v17

    .line 327
    .line 328
    invoke-interface/range {v4 .. v9}, Lcom/jcraft/jsch/UIKeyboardInteractive;->promptKeyboardInteractive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    if-eqz v4, :cond_c

    .line 333
    .line 334
    aget-object v4, v4, v10

    .line 335
    .line 336
    if-eqz v4, :cond_b

    .line 337
    .line 338
    invoke-virtual {v4, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    goto :goto_3

    .line 343
    :cond_b
    sget-object v4, Lcom/jcraft/jsch/Util;->c:[B

    .line 344
    .line 345
    :goto_3
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 346
    .line 347
    invoke-virtual {v6}, Lcom/jcraft/jsch/Packet;->a()V

    .line 348
    .line 349
    .line 350
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 351
    .line 352
    invoke-virtual {v6, v13}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 353
    .line 354
    .line 355
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 356
    .line 357
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    array-length v7, v12

    .line 361
    invoke-virtual {v6, v12, v10, v7}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 362
    .line 363
    .line 364
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 365
    .line 366
    invoke-virtual {v2, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 371
    .line 372
    .line 373
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 374
    .line 375
    invoke-virtual {v11, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 380
    .line 381
    .line 382
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 383
    .line 384
    const/4 v7, 0x1

    .line 385
    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 386
    .line 387
    .line 388
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 389
    .line 390
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    array-length v7, v3

    .line 394
    invoke-virtual {v6, v3, v10, v7}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 395
    .line 396
    .line 397
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 398
    .line 399
    invoke-virtual {v6, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 400
    .line 401
    .line 402
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 403
    .line 404
    .line 405
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 406
    .line 407
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_2

    .line 411
    .line 412
    :cond_c
    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    .line 413
    .line 414
    invoke-direct {v0, v11}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    throw v0

    .line 418
    :cond_d
    :goto_4
    if-eqz v6, :cond_e

    .line 419
    .line 420
    const-string v0, "Password must be changed."

    .line 421
    .line 422
    invoke-interface {v6, v0}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 423
    .line 424
    .line 425
    :cond_e
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 426
    .line 427
    .line 428
    return v10

    .line 429
    :cond_f
    const/16 v7, 0x33

    .line 430
    .line 431
    if-ne v6, v7, :cond_11

    .line 432
    .line 433
    :try_start_4
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 434
    .line 435
    .line 436
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 437
    .line 438
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 439
    .line 440
    .line 441
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 442
    .line 443
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 444
    .line 445
    .line 446
    iget-object v4, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 447
    .line 448
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    iget-object v6, v0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 453
    .line 454
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 455
    .line 456
    .line 457
    move-result v6

    .line 458
    if-nez v6, :cond_10

    .line 459
    .line 460
    iget v4, v1, Lcom/jcraft/jsch/Session;->e0:I

    .line 461
    .line 462
    const/16 v16, 0x1

    .line 463
    .line 464
    add-int/lit8 v4, v4, 0x1

    .line 465
    .line 466
    iput v4, v1, Lcom/jcraft/jsch/Session;->e0:I

    .line 467
    .line 468
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 469
    .line 470
    .line 471
    const/4 v3, 0x0

    .line 472
    goto/16 :goto_0

    .line 473
    .line 474
    :cond_10
    new-instance v0, Lcom/jcraft/jsch/JSchPartialAuthException;

    .line 475
    .line 476
    array-length v1, v4

    .line 477
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 478
    .line 479
    new-instance v5, Ljava/lang/String;

    .line 480
    .line 481
    invoke-direct {v5, v4, v10, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 482
    .line 483
    .line 484
    invoke-direct {v0, v5}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 488
    :cond_11
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 489
    .line 490
    .line 491
    return v10

    .line 492
    :goto_5
    if-eqz v3, :cond_12

    .line 493
    .line 494
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 495
    .line 496
    .line 497
    :cond_12
    throw v0
.end method
