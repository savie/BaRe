.class public abstract Lcom/microsoft/identity/common/internal/fido/WebAuthnJsonUtil;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/fido/WebAuthnJsonUtil;

    .line 2
    .line 3
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ln81;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/microsoft/identity/common/internal/fido/WebAuthnJsonUtil;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static extractAaguidFromAttestationObject(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lhy0;->d:Lhy0;

    .line 2
    .line 3
    invoke-static {p0}, Lge;->s(Ljava/lang/String;)Lhy0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_11

    .line 8
    .line 9
    iget-object p0, p0, Lhy0;->a:[B

    .line 10
    .line 11
    array-length v0, p0

    .line 12
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "authData"

    .line 17
    .line 18
    sget-object v1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    array-length v1, p0

    .line 28
    array-length v2, v0

    .line 29
    sub-int/2addr v1, v2

    .line 30
    const/4 v2, 0x1

    .line 31
    add-int/2addr v1, v2

    .line 32
    const/4 v3, 0x0

    .line 33
    move v4, v3

    .line 34
    :goto_0
    const/4 v5, -0x1

    .line 35
    if-ge v4, v1, :cond_2

    .line 36
    .line 37
    array-length v6, v0

    .line 38
    add-int/2addr v6, v4

    .line 39
    invoke-static {v4, v6}, Ll73;->F(II)Lnd4;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Lnd4;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_0

    .line 51
    .line 52
    new-array v6, v3, [B

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    iget v7, v6, Lld4;->a:I

    .line 56
    .line 57
    iget v6, v6, Lld4;->b:I

    .line 58
    .line 59
    add-int/2addr v6, v2

    .line 60
    invoke-static {p0, v7, v6}, Lx50;->k0([BII)[B

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    :goto_1
    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v4, v5

    .line 75
    :goto_2
    const-string v1, " bytes)."

    .line 76
    .line 77
    if-eq v4, v5, :cond_10

    .line 78
    .line 79
    array-length v0, v0

    .line 80
    add-int/2addr v0, v4

    .line 81
    array-length v3, p0

    .line 82
    const-string v5, ", size: "

    .line 83
    .line 84
    if-ge v0, v3, :cond_f

    .line 85
    .line 86
    aget-byte v3, p0, v0

    .line 87
    .line 88
    and-int/lit16 v4, v3, 0xff

    .line 89
    .line 90
    shr-int/lit8 v6, v4, 0x5

    .line 91
    .line 92
    and-int/lit8 v6, v6, 0x7

    .line 93
    .line 94
    const/16 v7, 0x2e

    .line 95
    .line 96
    const/4 v8, 0x2

    .line 97
    const-string v9, " at offset "

    .line 98
    .line 99
    if-ne v6, v8, :cond_e

    .line 100
    .line 101
    and-int/lit8 v3, v3, 0x1f

    .line 102
    .line 103
    const/16 v6, 0x18

    .line 104
    .line 105
    if-ltz v3, :cond_3

    .line 106
    .line 107
    if-ge v3, v6, :cond_3

    .line 108
    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    new-instance v4, Lpw5;

    .line 118
    .line 119
    invoke-direct {v4, v2, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :cond_3
    if-ne v3, v6, :cond_5

    .line 125
    .line 126
    add-int/lit8 v2, v0, 0x1

    .line 127
    .line 128
    array-length v3, p0

    .line 129
    if-ge v2, v3, :cond_4

    .line 130
    .line 131
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    aget-byte v2, p0, v2

    .line 136
    .line 137
    and-int/lit16 v2, v2, 0xff

    .line 138
    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    new-instance v4, Lpw5;

    .line 144
    .line 145
    invoke-direct {v4, v3, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_3

    .line 149
    .line 150
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    .line 151
    .line 152
    const-string v3, "Attestation object truncated while reading \'authData\' length (need 1 byte at offset "

    .line 153
    .line 154
    invoke-static {v2, v3, v5}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    array-length p0, p0

    .line 159
    invoke-static {v2, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_5
    const/16 v2, 0x19

    .line 168
    .line 169
    if-ne v3, v2, :cond_7

    .line 170
    .line 171
    add-int/lit8 v2, v0, 0x1

    .line 172
    .line 173
    add-int/lit8 v3, v0, 0x2

    .line 174
    .line 175
    array-length v4, p0

    .line 176
    if-ge v3, v4, :cond_6

    .line 177
    .line 178
    aget-byte v2, p0, v2

    .line 179
    .line 180
    and-int/lit16 v2, v2, 0xff

    .line 181
    .line 182
    shl-int/lit8 v2, v2, 0x8

    .line 183
    .line 184
    aget-byte v3, p0, v3

    .line 185
    .line 186
    and-int/lit16 v3, v3, 0xff

    .line 187
    .line 188
    or-int/2addr v2, v3

    .line 189
    const/4 v3, 0x3

    .line 190
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    new-instance v4, Lpw5;

    .line 199
    .line 200
    invoke-direct {v4, v3, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    .line 205
    .line 206
    const-string v3, "Attestation object truncated while reading \'authData\' length (need 2 bytes starting at offset "

    .line 207
    .line 208
    invoke-static {v2, v3, v5}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    array-length p0, p0

    .line 213
    invoke-static {v2, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :cond_7
    const/16 v2, 0x1a

    .line 222
    .line 223
    const/16 v8, 0x10

    .line 224
    .line 225
    if-ne v3, v2, :cond_d

    .line 226
    .line 227
    add-int/lit8 v2, v0, 0x1

    .line 228
    .line 229
    add-int/lit8 v3, v0, 0x4

    .line 230
    .line 231
    array-length v4, p0

    .line 232
    if-ge v3, v4, :cond_c

    .line 233
    .line 234
    aget-byte v2, p0, v2

    .line 235
    .line 236
    and-int/lit16 v2, v2, 0xff

    .line 237
    .line 238
    shl-int/2addr v2, v6

    .line 239
    add-int/lit8 v4, v0, 0x2

    .line 240
    .line 241
    aget-byte v4, p0, v4

    .line 242
    .line 243
    and-int/lit16 v4, v4, 0xff

    .line 244
    .line 245
    shl-int/2addr v4, v8

    .line 246
    or-int/2addr v2, v4

    .line 247
    add-int/lit8 v4, v0, 0x3

    .line 248
    .line 249
    aget-byte v4, p0, v4

    .line 250
    .line 251
    and-int/lit16 v4, v4, 0xff

    .line 252
    .line 253
    shl-int/lit8 v4, v4, 0x8

    .line 254
    .line 255
    or-int/2addr v2, v4

    .line 256
    aget-byte v3, p0, v3

    .line 257
    .line 258
    and-int/lit16 v3, v3, 0xff

    .line 259
    .line 260
    or-int/2addr v2, v3

    .line 261
    const/4 v3, 0x5

    .line 262
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    new-instance v4, Lpw5;

    .line 271
    .line 272
    invoke-direct {v4, v3, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :goto_3
    iget-object v2, v4, Lpw5;->a:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v2, Ljava/lang/Number;

    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    iget-object v3, v4, Lpw5;->b:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v3, Ljava/lang/Number;

    .line 286
    .line 287
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    add-int/2addr v0, v2

    .line 292
    add-int v2, v0, v3

    .line 293
    .line 294
    array-length v4, p0

    .line 295
    if-gt v2, v4, :cond_b

    .line 296
    .line 297
    add-int/lit8 v4, v0, 0x20

    .line 298
    .line 299
    const-string v5, " (authData length: "

    .line 300
    .line 301
    if-ge v4, v2, :cond_a

    .line 302
    .line 303
    aget-byte v4, p0, v4

    .line 304
    .line 305
    and-int/lit8 v4, v4, 0x40

    .line 306
    .line 307
    if-eqz v4, :cond_9

    .line 308
    .line 309
    add-int/lit8 v4, v0, 0x25

    .line 310
    .line 311
    add-int/lit8 v0, v0, 0x35

    .line 312
    .line 313
    if-gt v0, v2, :cond_8

    .line 314
    .line 315
    invoke-static {p0, v4, v0}, Lx50;->k0([BII)[B

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    new-instance v0, Ljava/util/UUID;

    .line 324
    .line 325
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 326
    .line 327
    .line 328
    move-result-wide v1

    .line 329
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 330
    .line 331
    .line 332
    move-result-wide v3

    .line 333
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    return-object p0

    .line 344
    :cond_8
    new-instance p0, Ljava/lang/Exception;

    .line 345
    .line 346
    const-string v0, "authData truncated: expected 16 AAGUID bytes at offset "

    .line 347
    .line 348
    invoke-static {v0, v4, v5, v1, v3}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw p0

    .line 356
    :cond_9
    new-instance p0, Ljava/lang/Exception;

    .line 357
    .line 358
    const-string v0, "AT flag not set in authData flags, attested credential data is absent, AAGUID cannot be extracted."

    .line 359
    .line 360
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    throw p0

    .line 364
    :cond_a
    new-instance p0, Ljava/lang/Exception;

    .line 365
    .line 366
    const-string v0, "authData truncated: flags byte missing at offset "

    .line 367
    .line 368
    invoke-static {v0, v4, v5, v1, v3}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw p0

    .line 376
    :cond_b
    new-instance v1, Ljava/lang/Exception;

    .line 377
    .line 378
    const-string v2, "Attestation object truncated: declared \'authData\' length "

    .line 379
    .line 380
    const-string v4, " exceeds buffer size "

    .line 381
    .line 382
    invoke-static {v2, v3, v9, v4, v0}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    array-length p0, p0

    .line 387
    const-string v2, " bytes."

    .line 388
    .line 389
    invoke-static {v0, p0, v2}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p0

    .line 393
    invoke-direct {v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    throw v1

    .line 397
    :cond_c
    new-instance v0, Ljava/lang/Exception;

    .line 398
    .line 399
    const-string v3, "Attestation object truncated while reading \'authData\' length (need 4 bytes starting at offset "

    .line 400
    .line 401
    invoke-static {v2, v3, v5}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    array-length p0, p0

    .line 406
    invoke-static {v2, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    throw v0

    .line 414
    :cond_d
    new-instance p0, Ljava/lang/Exception;

    .line 415
    .line 416
    invoke-static {v8}, Lly8;->j(I)V

    .line 417
    .line 418
    .line 419
    invoke-static {v4, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 427
    .line 428
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    .line 436
    .line 437
    const-string v3, "Unsupported CBOR length encoding for \'authData\': initial byte 0x"

    .line 438
    .line 439
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    throw p0

    .line 462
    :cond_e
    new-instance p0, Ljava/lang/Exception;

    .line 463
    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    const-string v2, "Invalid CBOR major type for \'authData\': expected byte string (major type 2) but found "

    .line 467
    .line 468
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    throw p0

    .line 491
    :cond_f
    new-instance v0, Ljava/lang/Exception;

    .line 492
    .line 493
    const-string v2, "Attestation object truncated after \'authData\' key (offset: "

    .line 494
    .line 495
    invoke-static {v4, v2, v5}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    array-length p0, p0

    .line 500
    invoke-static {v2, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    throw v0

    .line 508
    :cond_10
    new-instance v0, Ljava/lang/Exception;

    .line 509
    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    const-string v3, "\'authData\' key not found in attestation object (size: "

    .line 513
    .line 514
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    array-length p0, p0

    .line 518
    invoke-static {v2, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object p0

    .line 522
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    throw v0

    .line 526
    :cond_11
    new-instance p0, Ljava/lang/Exception;

    .line 527
    .line 528
    const-string v0, "Failed to base64url-decode the attestation object."

    .line 529
    .line 530
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    throw p0
.end method

.method public static extractAaguidFromRegistrationResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p0, "response"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "attestationObject"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/fido/WebAuthnJsonUtil;->extractAaguidFromAttestationObject(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "Failed to extract AAGUID from passkey registration response: "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 49
    .line 50
    sget-object v0, Lcom/microsoft/identity/common/internal/fido/WebAuthnJsonUtil;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public static extractAuthenticatorAssertionResponseJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/microsoft/identity/common/internal/fido/WebAuthnJsonUtil;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, ":extractAuthenticatorAssertionResponseJson"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p0, "response"

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance v2, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "id"

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    const-string v1, "authenticatorData"

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string v1, "clientDataJSON"

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    const-string v1, "signature"

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "userHandle"

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_0

    .line 76
    .line 77
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 78
    .line 79
    const-string p0, "UserHandle not found in assertion response."

    .line 80
    .line 81
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 86
    .line 87
    const-string v3, "UserHandle was included in assertion response."

    .line 88
    .line 89
    invoke-static {v0, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v2, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    return-object p0
.end method

.method public static extractOriginFromRegistrationResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p0, "response"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "clientDataJSON"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object v1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Lorg/json/JSONObject;

    .line 38
    .line 39
    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "origin"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object p0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "Failed to extract origin from passkey registration response: "

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 69
    .line 70
    sget-object v0, Lcom/microsoft/identity/common/internal/fido/WebAuthnJsonUtil;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    return-object p0
.end method
