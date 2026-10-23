.class Lcom/jcraft/jsch/OpenSshCertificateParser;
.super Ljava/lang/Object;
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

.method public static a(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)Lcom/jcraft/jsch/OpenSshCertificate;
    .locals 17

    .line 1
    new-instance v7, Lcom/jcraft/jsch/OpenSshCertificateBuffer;

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-direct {v7, v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;-><init>([B)V

    .line 6
    .line 7
    .line 8
    new-instance v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    .line 9
    .line 10
    invoke-direct {v8}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    sget-object v1, Lcom/jcraft/jsch/Util;->a:[B

    .line 20
    .line 21
    array-length v1, v0

    .line 22
    new-instance v2, Ljava/lang/String;

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    invoke-direct {v2, v0, v10, v1, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->b:[B

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const-string v2, "ecdsa-sha2-nistp256-cert-v01@openssh.com"

    .line 48
    .line 49
    const-string v3, "ecdsa-sha2-nistp384-cert-v01@openssh.com"

    .line 50
    .line 51
    const/4 v4, 0x4

    .line 52
    const-string v5, "ecdsa-sha2-nistp521-cert-v01@openssh.com"

    .line 53
    .line 54
    const/4 v11, 0x2

    .line 55
    const/4 v12, 0x1

    .line 56
    const/4 v6, -0x1

    .line 57
    sparse-switch v1, :sswitch_data_0

    .line 58
    .line 59
    .line 60
    :goto_0
    move v1, v6

    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/16 v1, 0x8

    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/4 v1, 0x7

    .line 82
    goto :goto_1

    .line 83
    :sswitch_2
    const-string v1, "ssh-dss-cert-v01@openssh.com"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const/4 v1, 0x6

    .line 93
    goto :goto_1

    .line 94
    :sswitch_3
    const-string v1, "rsa-sha2-256-cert-v01@openssh.com"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_3

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    const/4 v1, 0x5

    .line 104
    goto :goto_1

    .line 105
    :sswitch_4
    const-string v1, "ssh-ed448-cert-v01@openssh.com"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_4

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    move v1, v4

    .line 115
    goto :goto_1

    .line 116
    :sswitch_5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_5

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    const/4 v1, 0x3

    .line 124
    goto :goto_1

    .line 125
    :sswitch_6
    const-string v1, "rsa-sha2-512-cert-v01@openssh.com"

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_6

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_6
    move v1, v11

    .line 135
    goto :goto_1

    .line 136
    :sswitch_7
    const-string v1, "ssh-ed25519-cert-v01@openssh.com"

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_7

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_7
    move v1, v12

    .line 146
    goto :goto_1

    .line 147
    :sswitch_8
    const-string v1, "ssh-rsa-cert-v01@openssh.com"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_8

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_8
    move v1, v10

    .line 157
    :goto_1
    const/4 v13, 0x0

    .line 158
    packed-switch v1, :pswitch_data_0

    .line 159
    .line 160
    .line 161
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 162
    .line 163
    const-string v2, "Unsupported Algorithm for Certificate public key: "

    .line 164
    .line 165
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v1

    .line 173
    :pswitch_0
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    new-instance v0, Lcom/jcraft/jsch/KeyPairDSA;

    .line 190
    .line 191
    const/4 v6, 0x0

    .line 192
    move-object/from16 v1, p0

    .line 193
    .line 194
    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B[B)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_4

    .line 198
    .line 199
    :pswitch_1
    move-object/from16 v1, p0

    .line 200
    .line 201
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    const/16 v2, 0x39

    .line 206
    .line 207
    if-ne v0, v2, :cond_9

    .line 208
    .line 209
    new-array v2, v0, [B

    .line 210
    .line 211
    invoke-virtual {v7, v2, v10, v0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 212
    .line 213
    .line 214
    new-instance v0, Lcom/jcraft/jsch/KeyPairEd448;

    .line 215
    .line 216
    invoke-direct {v0, v1, v2, v13}, Lcom/jcraft/jsch/KeyPairEdDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_4

    .line 220
    .line 221
    :cond_9
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 222
    .line 223
    const-string v2, "Invalid Ed448 public key length: expected 57, got "

    .line 224
    .line 225
    invoke-static {v0, v2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v1

    .line 233
    :pswitch_2
    move-object/from16 v1, p0

    .line 234
    .line 235
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 236
    .line 237
    .line 238
    move-result-object v14

    .line 239
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 240
    .line 241
    .line 242
    move-result v15

    .line 243
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 244
    .line 245
    .line 246
    move-result v16

    .line 247
    sparse-switch v16, :sswitch_data_1

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :sswitch_9
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-nez v2, :cond_a

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_a
    move v6, v11

    .line 259
    goto :goto_2

    .line 260
    :sswitch_a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-nez v2, :cond_b

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_b
    move v6, v12

    .line 268
    goto :goto_2

    .line 269
    :sswitch_b
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-nez v2, :cond_c

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_c
    move v6, v10

    .line 277
    :goto_2
    packed-switch v6, :pswitch_data_1

    .line 278
    .line 279
    .line 280
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 281
    .line 282
    const-string v2, "Unknown ECDSA certificate key type: "

    .line 283
    .line 284
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    throw v1

    .line 292
    :pswitch_3
    const/16 v2, 0x41

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :pswitch_4
    const/16 v2, 0x61

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :pswitch_5
    const/16 v2, 0x85

    .line 299
    .line 300
    :goto_3
    if-ne v15, v2, :cond_e

    .line 301
    .line 302
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-ne v0, v4, :cond_d

    .line 307
    .line 308
    sub-int/2addr v15, v12

    .line 309
    div-int/2addr v15, v11

    .line 310
    new-array v3, v15, [B

    .line 311
    .line 312
    new-array v4, v15, [B

    .line 313
    .line 314
    invoke-virtual {v7, v3, v10, v15}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v4, v10, v15}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 318
    .line 319
    .line 320
    new-instance v0, Lcom/jcraft/jsch/KeyPairECDSA;

    .line 321
    .line 322
    const/4 v5, 0x0

    .line 323
    move-object v2, v14

    .line 324
    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B)V

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_d
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 329
    .line 330
    and-int/lit16 v0, v0, 0xff

    .line 331
    .line 332
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    const-string v3, "Invalid ECDSA public key format: expected uncompressed point (0x04), got 0x"

    .line 339
    .line 340
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    throw v1

    .line 354
    :cond_e
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 355
    .line 356
    const-string v3, ": expected "

    .line 357
    .line 358
    const-string v4, ", got "

    .line 359
    .line 360
    const-string v5, "Invalid ECDSA public key length for "

    .line 361
    .line 362
    invoke-static {v5, v0, v3, v2, v4}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw v1

    .line 377
    :pswitch_6
    move-object/from16 v1, p0

    .line 378
    .line 379
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    const/16 v2, 0x20

    .line 384
    .line 385
    if-ne v0, v2, :cond_f

    .line 386
    .line 387
    new-array v2, v0, [B

    .line 388
    .line 389
    invoke-virtual {v7, v2, v10, v0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 390
    .line 391
    .line 392
    new-instance v0, Lcom/jcraft/jsch/KeyPairEd25519;

    .line 393
    .line 394
    invoke-direct {v0, v1, v2, v13}, Lcom/jcraft/jsch/KeyPairEdDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    .line 395
    .line 396
    .line 397
    goto :goto_4

    .line 398
    :cond_f
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 399
    .line 400
    const-string v2, "Invalid Ed25519 public key length: expected 32, got "

    .line 401
    .line 402
    invoke-static {v0, v2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw v1

    .line 410
    :pswitch_7
    move-object/from16 v1, p0

    .line 411
    .line 412
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    new-instance v3, Lcom/jcraft/jsch/KeyPairRSA;

    .line 421
    .line 422
    invoke-direct {v3, v1, v2, v0, v13}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B)V

    .line 423
    .line 424
    .line 425
    move-object v0, v3

    .line 426
    :goto_4
    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    iput-object v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->c:[B

    .line 431
    .line 432
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 433
    .line 434
    .line 435
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    iput v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->d:I

    .line 440
    .line 441
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    array-length v1, v0

    .line 446
    new-instance v2, Ljava/lang/String;

    .line 447
    .line 448
    invoke-direct {v2, v0, v10, v1, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 449
    .line 450
    .line 451
    iput-object v2, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->e:Ljava/lang/String;

    .line 452
    .line 453
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-ltz v0, :cond_1b

    .line 458
    .line 459
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    if-gt v0, v1, :cond_1a

    .line 464
    .line 465
    new-array v1, v0, [B

    .line 466
    .line 467
    invoke-virtual {v7, v1, v10, v0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 468
    .line 469
    .line 470
    new-instance v0, Lcom/jcraft/jsch/OpenSshCertificateBuffer;

    .line 471
    .line 472
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;-><init>([B)V

    .line 473
    .line 474
    .line 475
    new-instance v1, Ljava/util/ArrayList;

    .line 476
    .line 477
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .line 479
    .line 480
    :goto_5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    if-lez v2, :cond_10

    .line 485
    .line 486
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 491
    .line 492
    sget-object v4, Lcom/jcraft/jsch/Util;->a:[B

    .line 493
    .line 494
    array-length v4, v2

    .line 495
    new-instance v5, Ljava/lang/String;

    .line 496
    .line 497
    invoke-direct {v5, v2, v10, v4, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    goto :goto_5

    .line 504
    :cond_10
    iput-object v1, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->f:Ljava/util/ArrayList;

    .line 505
    .line 506
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 507
    .line 508
    .line 509
    move-result-wide v0

    .line 510
    iput-wide v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->g:J

    .line 511
    .line 512
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getLong()J

    .line 513
    .line 514
    .line 515
    move-result-wide v0

    .line 516
    iput-wide v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->h:J

    .line 517
    .line 518
    invoke-virtual {v7}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->i()Ljava/util/LinkedHashMap;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    iput-object v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->i:Ljava/util/LinkedHashMap;

    .line 523
    .line 524
    invoke-virtual {v7}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->i()Ljava/util/LinkedHashMap;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 532
    .line 533
    array-length v2, v0

    .line 534
    new-instance v3, Ljava/lang/String;

    .line 535
    .line 536
    invoke-direct {v3, v0, v10, v2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    iput-object v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->j:[B

    .line 544
    .line 545
    iget v0, v7, Lcom/jcraft/jsch/Buffer;->d:I

    .line 546
    .line 547
    iget-object v1, v7, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 548
    .line 549
    invoke-static {v1, v10, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    iput-object v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->l:[B

    .line 554
    .line 555
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    iput-object v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->k:[B

    .line 560
    .line 561
    iget-object v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->a:Ljava/lang/String;

    .line 562
    .line 563
    if-eqz v0, :cond_19

    .line 564
    .line 565
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    if-nez v0, :cond_19

    .line 574
    .line 575
    iget-object v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->b:[B

    .line 576
    .line 577
    if-eqz v0, :cond_18

    .line 578
    .line 579
    array-length v0, v0

    .line 580
    if-eqz v0, :cond_18

    .line 581
    .line 582
    iget-object v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->c:[B

    .line 583
    .line 584
    if-eqz v0, :cond_17

    .line 585
    .line 586
    array-length v0, v0

    .line 587
    if-eqz v0, :cond_17

    .line 588
    .line 589
    iget v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->d:I

    .line 590
    .line 591
    if-eq v0, v12, :cond_12

    .line 592
    .line 593
    if-ne v0, v11, :cond_11

    .line 594
    .line 595
    goto :goto_6

    .line 596
    :cond_11
    const-string v0, "type must be SSH2_CERT_TYPE_USER (1) or SSH2_CERT_TYPE_HOST (2), got: "

    .line 597
    .line 598
    iget v1, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->d:I

    .line 599
    .line 600
    invoke-static {v1, v0}, Lx5;->g(ILjava/lang/String;)V

    .line 601
    .line 602
    .line 603
    return-object v13

    .line 604
    :cond_12
    :goto_6
    iget-object v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->j:[B

    .line 605
    .line 606
    if-eqz v0, :cond_16

    .line 607
    .line 608
    array-length v0, v0

    .line 609
    if-eqz v0, :cond_16

    .line 610
    .line 611
    iget-object v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->k:[B

    .line 612
    .line 613
    if-eqz v0, :cond_15

    .line 614
    .line 615
    array-length v0, v0

    .line 616
    if-eqz v0, :cond_15

    .line 617
    .line 618
    iget-object v0, v8, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->l:[B

    .line 619
    .line 620
    if-eqz v0, :cond_14

    .line 621
    .line 622
    array-length v0, v0

    .line 623
    if-eqz v0, :cond_14

    .line 624
    .line 625
    new-instance v0, Lcom/jcraft/jsch/OpenSshCertificate;

    .line 626
    .line 627
    invoke-direct {v0, v8, v13}, Lcom/jcraft/jsch/OpenSshCertificate;-><init>(Lcom/jcraft/jsch/OpenSshCertificate$Builder;Lcom/jcraft/jsch/OpenSshCertificate$1;)V

    .line 628
    .line 629
    .line 630
    iget v1, v7, Lcom/jcraft/jsch/Buffer;->d:I

    .line 631
    .line 632
    iget v2, v7, Lcom/jcraft/jsch/Buffer;->c:I

    .line 633
    .line 634
    if-ne v1, v2, :cond_13

    .line 635
    .line 636
    return-object v0

    .line 637
    :cond_13
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 638
    .line 639
    iget v2, v7, Lcom/jcraft/jsch/Buffer;->d:I

    .line 640
    .line 641
    iget v3, v7, Lcom/jcraft/jsch/Buffer;->c:I

    .line 642
    .line 643
    new-instance v4, Ljava/lang/StringBuilder;

    .line 644
    .line 645
    const-string v5, "Cannot read OpenSSH certificate, got more data than expected: "

    .line 646
    .line 647
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    const-string v2, ", actual: "

    .line 654
    .line 655
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    const-string v2, ". ID of the ca certificate: "

    .line 662
    .line 663
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    iget-object v0, v0, Lcom/jcraft/jsch/OpenSshCertificate;->d:Ljava/lang/String;

    .line 667
    .line 668
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    throw v1

    .line 679
    :cond_14
    const-string v0, "message is required and cannot be null or empty"

    .line 680
    .line 681
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    return-object v13

    .line 685
    :cond_15
    const-string v0, "signature is required and cannot be null or empty"

    .line 686
    .line 687
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    return-object v13

    .line 691
    :cond_16
    const-string v0, "signatureKey is required and cannot be null or empty"

    .line 692
    .line 693
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    return-object v13

    .line 697
    :cond_17
    const-string v0, "certificatePublicKey is required and cannot be null or empty"

    .line 698
    .line 699
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    return-object v13

    .line 703
    :cond_18
    const-string v0, "nonce is required and cannot be null or empty"

    .line 704
    .line 705
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    return-object v13

    .line 709
    :cond_19
    const-string v0, "keyType is required and cannot be null or empty"

    .line 710
    .line 711
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    return-object v13

    .line 715
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 716
    .line 717
    const-string v2, "Invalid length in certificate data: requested "

    .line 718
    .line 719
    const-string v3, " bytes but only "

    .line 720
    .line 721
    invoke-static {v0, v2, v3}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 726
    .line 727
    .line 728
    move-result v2

    .line 729
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    const-string v2, " available"

    .line 733
    .line 734
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    throw v1

    .line 745
    :cond_1b
    const-string v1, "Invalid length in certificate data: negative length "

    .line 746
    .line 747
    invoke-static {v0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    return-object v13

    .line 755
    :sswitch_data_0
    .sparse-switch
        -0x6e416ecf -> :sswitch_8
        -0x4e631eea -> :sswitch_7
        -0x414d2bf0 -> :sswitch_6
        -0xd639142 -> :sswitch_5
        -0xc1e38e8 -> :sswitch_4
        0xd8b76f3 -> :sswitch_3
        0x3f0fe02d -> :sswitch_2
        0x4b541863 -> :sswitch_1
        0x7dc932ff -> :sswitch_0
    .end sparse-switch

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    :sswitch_data_1
    .sparse-switch
        -0xd639142 -> :sswitch_b
        0x4b541863 -> :sswitch_a
        0x7dc932ff -> :sswitch_9
    .end sparse-switch

    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
