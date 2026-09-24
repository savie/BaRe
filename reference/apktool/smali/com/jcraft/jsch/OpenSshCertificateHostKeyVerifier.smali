.class Lcom/jcraft/jsch/OpenSshCertificateHostKeyVerifier;
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

.method public static a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/OpenSshCertificate;)V
    .locals 14

    .line 1
    iget-object v0, p1, Lcom/jcraft/jsch/OpenSshCertificate;->i:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [B

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_28

    .line 17
    .line 18
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->U:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    move-object v4, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget v4, p0, Lcom/jcraft/jsch/Session;->h0:I

    .line 25
    .line 26
    const/16 v5, 0x16

    .line 27
    .line 28
    if-eq v4, v5, :cond_2

    .line 29
    .line 30
    const-string v4, "["

    .line 31
    .line 32
    const-string v5, "]:"

    .line 33
    .line 34
    invoke-static {v4, v2, v5}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget v5, p0, Lcom/jcraft/jsch/Session;->h0:I

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v4, v2

    .line 49
    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget-object v6, p1, Lcom/jcraft/jsch/OpenSshCertificate;->b:[B

    .line 54
    .line 55
    if-nez v6, :cond_3

    .line 56
    .line 57
    move-object v6, v1

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, [B

    .line 64
    .line 65
    :goto_2
    const/4 v7, 0x1

    .line 66
    const/4 v8, 0x0

    .line 67
    const-string v9, "Rejected certificate \'"

    .line 68
    .line 69
    if-eqz v6, :cond_5

    .line 70
    .line 71
    invoke-static {v5}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->b(Lcom/jcraft/jsch/HostKeyRepository;)Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-interface {v10}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    new-instance v11, Li23;

    .line 80
    .line 81
    invoke-direct {v11, v7}, Li23;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    new-instance v11, Lbu5;

    .line 89
    .line 90
    invoke-direct {v11, v8}, Lbu5;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    new-instance v11, Lcu5;

    .line 98
    .line 99
    invoke-direct {v11, v8}, Lcu5;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    new-instance v11, Lcom/jcraft/jsch/g;

    .line 107
    .line 108
    invoke-direct {v11, v6}, Lcom/jcraft/jsch/g;-><init>([B)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-nez v6, :cond_4

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    new-instance p0, Lcom/jcraft/jsch/JSchRevokedHostKeyException;

    .line 119
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p1, Lcom/jcraft/jsch/OpenSshCertificate;->d:Ljava/lang/String;

    .line 126
    .line 127
    const-string v1, "\': host certificate public key is marked as revoked for "

    .line 128
    .line 129
    invoke-static {v0, p1, v1, v4}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_5
    :goto_3
    invoke-static {v5}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->c(Lcom/jcraft/jsch/HostKeyRepository;)Ljava/util/Set;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    new-instance v10, Li23;

    .line 146
    .line 147
    invoke-direct {v10, v7}, Li23;-><init>(I)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v6, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    new-instance v10, Lcom/jcraft/jsch/h;

    .line 155
    .line 156
    invoke-direct {v10, v5}, Lcom/jcraft/jsch/h;-><init>(Lcom/jcraft/jsch/HostKeyRepository;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v6, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    new-instance v10, Lcom/jcraft/jsch/i;

    .line 164
    .line 165
    invoke-direct {v10, v4, v0}, Lcom/jcraft/jsch/i;-><init>(Ljava/lang/String;[B)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v6, v10}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-nez v6, :cond_27

    .line 173
    .line 174
    invoke-static {v5}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->c(Lcom/jcraft/jsch/HostKeyRepository;)Ljava/util/Set;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    new-instance v10, Li23;

    .line 183
    .line 184
    invoke-direct {v10, v7}, Li23;-><init>(I)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v6, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    new-instance v10, Lcom/jcraft/jsch/j;

    .line 192
    .line 193
    invoke-direct {v10, v5}, Lcom/jcraft/jsch/j;-><init>(Lcom/jcraft/jsch/HostKeyRepository;)V

    .line 194
    .line 195
    .line 196
    invoke-interface {v6, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    new-instance v6, Lcom/jcraft/jsch/k;

    .line 201
    .line 202
    invoke-direct {v6, v4, v0}, Lcom/jcraft/jsch/k;-><init>(Ljava/lang/String;[B)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-eqz v5, :cond_26

    .line 210
    .line 211
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    .line 212
    .line 213
    invoke-direct {v4, v0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    array-length v4, v0

    .line 221
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 222
    .line 223
    new-instance v6, Ljava/lang/String;

    .line 224
    .line 225
    invoke-direct {v6, v0, v8, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p1, Lcom/jcraft/jsch/OpenSshCertificate;->d:Ljava/lang/String;

    .line 229
    .line 230
    iget v4, p1, Lcom/jcraft/jsch/OpenSshCertificate;->c:I

    .line 231
    .line 232
    const/4 v9, 0x2

    .line 233
    if-ne v9, v4, :cond_25

    .line 234
    .line 235
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    .line 240
    .line 241
    .line 242
    move-result-wide v10

    .line 243
    iget-wide v12, p1, Lcom/jcraft/jsch/OpenSshCertificate;->f:J

    .line 244
    .line 245
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Long;->compareUnsigned(JJ)I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-gtz v4, :cond_24

    .line 250
    .line 251
    iget-wide v12, p1, Lcom/jcraft/jsch/OpenSshCertificate;->g:J

    .line 252
    .line 253
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Long;->compareUnsigned(JJ)I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-gez v4, :cond_24

    .line 258
    .line 259
    iget-object v0, p1, Lcom/jcraft/jsch/OpenSshCertificate;->j:[B

    .line 260
    .line 261
    if-nez v0, :cond_6

    .line 262
    .line 263
    move-object v0, v1

    .line 264
    goto :goto_4

    .line 265
    :cond_6
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, [B

    .line 270
    .line 271
    :goto_4
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    .line 272
    .line 273
    invoke-direct {v4, v0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    sget-object v4, Lcom/jcraft/jsch/Util;->a:[B

    .line 281
    .line 282
    array-length v4, v0

    .line 283
    new-instance v10, Ljava/lang/String;

    .line 284
    .line 285
    invoke-direct {v10, v0, v8, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    const-string v4, "\'"

    .line 293
    .line 294
    if-eqz v0, :cond_23

    .line 295
    .line 296
    const-string v0, "ca_signature_algorithms"

    .line 297
    .line 298
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    if-eqz v0, :cond_8

    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-eqz v5, :cond_7

    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_7
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->o(Ljava/lang/String;)[Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    goto :goto_6

    .line 316
    :cond_8
    :goto_5
    new-array v5, v8, [Ljava/lang/String;

    .line 317
    .line 318
    :goto_6
    array-length v6, v5

    .line 319
    move v11, v8

    .line 320
    :goto_7
    const-string v12, "CA signature algorithm \'"

    .line 321
    .line 322
    if-ge v11, v6, :cond_22

    .line 323
    .line 324
    aget-object v13, v5, v11

    .line 325
    .line 326
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v13

    .line 330
    if-eqz v13, :cond_21

    .line 331
    .line 332
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s0:[Ljava/lang/String;

    .line 333
    .line 334
    if-eqz v0, :cond_a

    .line 335
    .line 336
    array-length v5, v0

    .line 337
    move v6, v8

    .line 338
    :goto_8
    if-ge v6, v5, :cond_a

    .line 339
    .line 340
    aget-object v11, v0, v6

    .line 341
    .line 342
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v11

    .line 346
    if-nez v11, :cond_9

    .line 347
    .line 348
    add-int/lit8 v6, v6, 0x1

    .line 349
    .line 350
    goto :goto_8

    .line 351
    :cond_9
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 352
    .line 353
    const-string p1, "\' is not available at runtime. This may be due to missing cryptographic provider support (e.g., Ed25519 on Java 8 without Bouncy Castle)."

    .line 354
    .line 355
    invoke-static {v12, v10, p1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw p0

    .line 363
    :cond_a
    new-instance v0, Lcom/jcraft/jsch/SignatureWrapper;

    .line 364
    .line 365
    invoke-direct {v0, v10, p0}, Lcom/jcraft/jsch/SignatureWrapper;-><init>(Ljava/lang/String;Lcom/jcraft/jsch/Session;)V

    .line 366
    .line 367
    .line 368
    iget-object p0, p1, Lcom/jcraft/jsch/OpenSshCertificate;->i:[B

    .line 369
    .line 370
    if-nez p0, :cond_b

    .line 371
    .line 372
    move-object p0, v1

    .line 373
    goto :goto_9

    .line 374
    :cond_b
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object p0

    .line 378
    check-cast p0, [B

    .line 379
    .line 380
    :goto_9
    new-instance v5, Lcom/jcraft/jsch/Buffer;

    .line 381
    .line 382
    invoke-direct {v5, p0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    sget-object v6, Lcom/jcraft/jsch/Util;->a:[B

    .line 390
    .line 391
    array-length v6, p0

    .line 392
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 393
    .line 394
    new-instance v11, Ljava/lang/String;

    .line 395
    .line 396
    invoke-direct {v11, p0, v8, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 397
    .line 398
    .line 399
    const-string p0, "ssh-rsa"

    .line 400
    .line 401
    invoke-virtual {v11, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 402
    .line 403
    .line 404
    move-result p0

    .line 405
    if-nez p0, :cond_15

    .line 406
    .line 407
    const-string p0, "rsa-"

    .line 408
    .line 409
    invoke-virtual {v11, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 410
    .line 411
    .line 412
    move-result p0

    .line 413
    if-eqz p0, :cond_c

    .line 414
    .line 415
    goto/16 :goto_a

    .line 416
    .line 417
    :cond_c
    const-string p0, "ssh-dss"

    .line 418
    .line 419
    invoke-virtual {v11, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 420
    .line 421
    .line 422
    move-result p0

    .line 423
    if-eqz p0, :cond_d

    .line 424
    .line 425
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 426
    .line 427
    .line 428
    move-result-object p0

    .line 429
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    filled-new-array {v5, p0, v4, v6}, [[B

    .line 442
    .line 443
    .line 444
    move-result-object p0

    .line 445
    goto/16 :goto_b

    .line 446
    .line 447
    :cond_d
    const-string p0, "ecdsa-sha2-"

    .line 448
    .line 449
    invoke-virtual {v11, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result p0

    .line 453
    if-eqz p0, :cond_10

    .line 454
    .line 455
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 456
    .line 457
    .line 458
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 459
    .line 460
    .line 461
    move-result p0

    .line 462
    const/16 v4, 0x41

    .line 463
    .line 464
    if-lt p0, v4, :cond_f

    .line 465
    .line 466
    const/16 v4, 0x85

    .line 467
    .line 468
    if-gt p0, v4, :cond_f

    .line 469
    .line 470
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    const/4 v6, 0x4

    .line 475
    if-ne v4, v6, :cond_e

    .line 476
    .line 477
    sub-int/2addr p0, v7

    .line 478
    div-int/2addr p0, v9

    .line 479
    new-array v4, p0, [B

    .line 480
    .line 481
    new-array v6, p0, [B

    .line 482
    .line 483
    invoke-virtual {v5, v4, v8, p0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v5, v6, v8, p0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 487
    .line 488
    .line 489
    filled-new-array {v4, v6}, [[B

    .line 490
    .line 491
    .line 492
    move-result-object p0

    .line 493
    goto/16 :goto_b

    .line 494
    .line 495
    :cond_e
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 496
    .line 497
    and-int/lit16 p1, v4, 0xff

    .line 498
    .line 499
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    const-string v1, "Invalid ECDSA public key format: expected uncompressed point (0x04), got 0x"

    .line 506
    .line 507
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object p1

    .line 517
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    throw p0

    .line 521
    :cond_f
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 522
    .line 523
    const-string v0, "Invalid ECDSA public key length: "

    .line 524
    .line 525
    const-string v1, " (expected between 65 and 133)"

    .line 526
    .line 527
    invoke-static {p0, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object p0

    .line 531
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    throw p1

    .line 535
    :cond_10
    const-string p0, "ssh-ed25519"

    .line 536
    .line 537
    invoke-virtual {v11, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 538
    .line 539
    .line 540
    move-result p0

    .line 541
    if-eqz p0, :cond_12

    .line 542
    .line 543
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 544
    .line 545
    .line 546
    move-result p0

    .line 547
    const/16 v4, 0x20

    .line 548
    .line 549
    if-ne p0, v4, :cond_11

    .line 550
    .line 551
    new-array v4, p0, [B

    .line 552
    .line 553
    invoke-virtual {v5, v4, v8, p0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 554
    .line 555
    .line 556
    filled-new-array {v4}, [[B

    .line 557
    .line 558
    .line 559
    move-result-object p0

    .line 560
    goto :goto_b

    .line 561
    :cond_11
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 562
    .line 563
    const-string v0, "Invalid Ed25519 public key length: expected 32, got "

    .line 564
    .line 565
    invoke-static {p0, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object p0

    .line 569
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    throw p1

    .line 573
    :cond_12
    const-string p0, "ssh-ed448"

    .line 574
    .line 575
    invoke-virtual {v11, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 576
    .line 577
    .line 578
    move-result p0

    .line 579
    if-eqz p0, :cond_14

    .line 580
    .line 581
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 582
    .line 583
    .line 584
    move-result p0

    .line 585
    const/16 v4, 0x39

    .line 586
    .line 587
    if-ne p0, v4, :cond_13

    .line 588
    .line 589
    new-array v4, p0, [B

    .line 590
    .line 591
    invoke-virtual {v5, v4, v8, p0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 592
    .line 593
    .line 594
    filled-new-array {v4}, [[B

    .line 595
    .line 596
    .line 597
    move-result-object p0

    .line 598
    goto :goto_b

    .line 599
    :cond_13
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 600
    .line 601
    const-string v0, "Invalid Ed448 public key length: expected 57, got "

    .line 602
    .line 603
    invoke-static {p0, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object p0

    .line 607
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    throw p1

    .line 611
    :cond_14
    new-instance p0, Lcom/jcraft/jsch/JSchUnknownPublicKeyAlgorithmException;

    .line 612
    .line 613
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    const-string v1, "Unknown algorithm \'"

    .line 620
    .line 621
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    throw p0

    .line 638
    :cond_15
    :goto_a
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 639
    .line 640
    .line 641
    move-result-object p0

    .line 642
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    filled-new-array {p0, v4}, [[B

    .line 647
    .line 648
    .line 649
    move-result-object p0

    .line 650
    :goto_b
    :try_start_0
    invoke-virtual {v0}, Lcom/jcraft/jsch/SignatureWrapper;->init()V

    .line 651
    .line 652
    .line 653
    iget-object v4, v0, Lcom/jcraft/jsch/SignatureWrapper;->c:Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

    .line 654
    .line 655
    invoke-interface {v4, p0}, Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;->validatePublicKeyParameter([[B)V

    .line 656
    .line 657
    .line 658
    iget-object v4, v0, Lcom/jcraft/jsch/SignatureWrapper;->b:Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;

    .line 659
    .line 660
    invoke-interface {v4, p0}, Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;->setPubKey([[B)V

    .line 661
    .line 662
    .line 663
    iget-object p0, p1, Lcom/jcraft/jsch/OpenSshCertificate;->k:[B

    .line 664
    .line 665
    if-nez p0, :cond_16

    .line 666
    .line 667
    move-object p0, v1

    .line 668
    goto :goto_c

    .line 669
    :cond_16
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object p0

    .line 673
    check-cast p0, [B

    .line 674
    .line 675
    :goto_c
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/SignatureWrapper;->update([B)V

    .line 676
    .line 677
    .line 678
    iget-object p0, p1, Lcom/jcraft/jsch/OpenSshCertificate;->j:[B

    .line 679
    .line 680
    if-nez p0, :cond_17

    .line 681
    .line 682
    move-object p0, v1

    .line 683
    goto :goto_d

    .line 684
    :cond_17
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object p0

    .line 688
    check-cast p0, [B

    .line 689
    .line 690
    :goto_d
    iget-object v0, v0, Lcom/jcraft/jsch/SignatureWrapper;->a:Lcom/jcraft/jsch/Signature;

    .line 691
    .line 692
    invoke-interface {v0, p0}, Lcom/jcraft/jsch/Signature;->verify([B)Z

    .line 693
    .line 694
    .line 695
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    if-eqz p0, :cond_20

    .line 697
    .line 698
    iget-object p0, p1, Lcom/jcraft/jsch/OpenSshCertificate;->e:Ljava/util/ArrayList;

    .line 699
    .line 700
    if-nez p0, :cond_18

    .line 701
    .line 702
    move-object p0, v1

    .line 703
    goto :goto_e

    .line 704
    :cond_18
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 705
    .line 706
    .line 707
    move-result-object p0

    .line 708
    :goto_e
    if-eqz v3, :cond_19

    .line 709
    .line 710
    move-object v2, v3

    .line 711
    :cond_19
    const-string v0, "rejected HostKey: invalid principal \'"

    .line 712
    .line 713
    if-eqz p0, :cond_1f

    .line 714
    .line 715
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 716
    .line 717
    .line 718
    move-result v3

    .line 719
    if-nez v3, :cond_1f

    .line 720
    .line 721
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 722
    .line 723
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    invoke-interface {p0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 728
    .line 729
    .line 730
    move-result v3

    .line 731
    if-eqz v3, :cond_1e

    .line 732
    .line 733
    iget-object p0, p1, Lcom/jcraft/jsch/OpenSshCertificate;->h:Ljava/util/LinkedHashMap;

    .line 734
    .line 735
    if-nez p0, :cond_1a

    .line 736
    .line 737
    move-object p0, v1

    .line 738
    goto :goto_f

    .line 739
    :cond_1a
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 740
    .line 741
    .line 742
    move-result-object p0

    .line 743
    :goto_f
    if-eqz p0, :cond_1d

    .line 744
    .line 745
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 746
    .line 747
    .line 748
    move-result p0

    .line 749
    if-eqz p0, :cond_1b

    .line 750
    .line 751
    goto :goto_11

    .line 752
    :cond_1b
    new-instance p0, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;

    .line 753
    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    .line 755
    .line 756
    const-string v2, "rejected HostKey: unrecognized critical options "

    .line 757
    .line 758
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    iget-object p1, p1, Lcom/jcraft/jsch/OpenSshCertificate;->h:Ljava/util/LinkedHashMap;

    .line 762
    .line 763
    if-nez p1, :cond_1c

    .line 764
    .line 765
    goto :goto_10

    .line 766
    :cond_1c
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object p1

    .line 777
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    throw p0

    .line 781
    :cond_1d
    :goto_11
    return-void

    .line 782
    :cond_1e
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 783
    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    .line 785
    .line 786
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    const-string v0, "\', allowed principals: "

    .line 793
    .line 794
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object p0

    .line 804
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    throw p1

    .line 808
    :cond_1f
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 809
    .line 810
    const-string p1, "\', allowed principals list is null or empty."

    .line 811
    .line 812
    invoke-static {v0, v2, p1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object p1

    .line 816
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    throw p0

    .line 820
    :cond_20
    new-instance p0, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;

    .line 821
    .line 822
    const-string p1, "rejected HostKey: signature verification failed"

    .line 823
    .line 824
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    throw p0

    .line 828
    :catch_0
    move-exception p0

    .line 829
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 830
    .line 831
    const-string v0, "invalid signature key"

    .line 832
    .line 833
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 834
    .line 835
    .line 836
    throw p1

    .line 837
    :cond_21
    add-int/lit8 v11, v11, 0x1

    .line 838
    .line 839
    goto/16 :goto_7

    .line 840
    .line 841
    :cond_22
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 842
    .line 843
    const-string p1, "\' is not in the allowed ca_signature_algorithms list: "

    .line 844
    .line 845
    invoke-static {v12, v10, p1, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object p1

    .line 849
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    throw p0

    .line 853
    :cond_23
    new-instance p0, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;

    .line 854
    .line 855
    const-string p1, "rejected HostKey: signature verification failed, signature algorithm: \'"

    .line 856
    .line 857
    const-string v0, "\' - CA public Key algorithm: \'"

    .line 858
    .line 859
    invoke-static {p1, v10, v0, v6, v4}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object p1

    .line 863
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 864
    .line 865
    .line 866
    throw p0

    .line 867
    :cond_24
    new-instance p0, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;

    .line 868
    .line 869
    const-string p1, "rejected HostKey: certificate not valid (expired or not yet valid) for id:"

    .line 870
    .line 871
    invoke-static {p1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object p1

    .line 875
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    throw p0

    .line 879
    :cond_25
    new-instance p0, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;

    .line 880
    .line 881
    const-string p1, "rejected HostKey: certificate id=\'"

    .line 882
    .line 883
    const-string v1, "\' is not a host certificate. Host:"

    .line 884
    .line 885
    invoke-static {p1, v0, v1, v2}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object p1

    .line 889
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    throw p0

    .line 893
    :cond_26
    new-instance p0, Lcom/jcraft/jsch/JSchUnknownCAKeyException;

    .line 894
    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    .line 896
    .line 897
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    iget-object p1, p1, Lcom/jcraft/jsch/OpenSshCertificate;->d:Ljava/lang/String;

    .line 901
    .line 902
    const-string v1, "\': Certification Authority not in the known hosts or revoked for "

    .line 903
    .line 904
    invoke-static {v0, p1, v1, v4}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object p1

    .line 908
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    throw p0

    .line 912
    :cond_27
    new-instance p0, Lcom/jcraft/jsch/JSchRevokedHostKeyException;

    .line 913
    .line 914
    const-string p1, "Rejected certificate: signing CA key has been revoked for "

    .line 915
    .line 916
    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object p1

    .line 920
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    throw p0

    .line 924
    :cond_28
    const-string p0, "Cannot verify host certificate: session host is null"

    .line 925
    .line 926
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    return-void
.end method
