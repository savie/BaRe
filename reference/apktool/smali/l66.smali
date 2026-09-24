.class public abstract Ll66;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# static fields
.field public static final c:[B


# instance fields
.field public final a:I

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Ll66;->c:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ll66;->b:Z

    .line 6
    .line 7
    iput p1, p0, Ll66;->a:I

    .line 8
    .line 9
    return-void
.end method

.method public static a(Ljava/security/PrivateKey;)Ll66;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x30

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x4

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    instance-of v5, v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x1

    .line 19
    if-eqz v5, :cond_5

    .line 20
    .line 21
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 22
    .line 23
    instance-of v5, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 24
    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    .line 38
    .line 39
    .line 40
    move-result-object v11

    .line 41
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    .line 50
    .line 51
    .line 52
    move-result-object v14

    .line 53
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    .line 54
    .line 55
    .line 56
    move-result-object v15

    .line 57
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    .line 58
    .line 59
    .line 60
    move-result-object v16

    .line 61
    filled-new-array/range {v9 .. v16}, [Ljava/math/BigInteger;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    const-string v5, "PKCS#8"

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_4

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :try_start_0
    invoke-static {v0, v1}, Lcy0;->K([BI)[B

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Lcy0;->o([B)Ljava/util/LinkedHashMap;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, [B

    .line 99
    .line 100
    invoke-static {v0}, Lcy0;->o([B)Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, [B

    .line 109
    .line 110
    invoke-static {v0}, Lcy0;->n([B)Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_1

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Lq48;

    .line 134
    .line 135
    new-instance v4, Ljava/math/BigInteger;

    .line 136
    .line 137
    invoke-virtual {v2}, Lq48;->b()[B

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-direct {v4, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    goto :goto_2

    .line 150
    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Ljava/math/BigInteger;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v0
    :try_end_0
    .catch Lvk0; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    if-nez v0, :cond_3

    .line 161
    .line 162
    move-object v0, v1

    .line 163
    :goto_1
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Ljava/math/BigInteger;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    const v2, 0x10001

    .line 174
    .line 175
    .line 176
    if-ne v1, v2, :cond_2

    .line 177
    .line 178
    new-instance v9, Lk66;

    .line 179
    .line 180
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    move-object v10, v1

    .line 185
    check-cast v10, Ljava/math/BigInteger;

    .line 186
    .line 187
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    move-object v11, v1

    .line 192
    check-cast v11, Ljava/math/BigInteger;

    .line 193
    .line 194
    const/4 v1, 0x3

    .line 195
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    move-object v12, v1

    .line 200
    check-cast v12, Ljava/math/BigInteger;

    .line 201
    .line 202
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    move-object v13, v1

    .line 207
    check-cast v13, Ljava/math/BigInteger;

    .line 208
    .line 209
    const/4 v1, 0x5

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    move-object v14, v1

    .line 215
    check-cast v14, Ljava/math/BigInteger;

    .line 216
    .line 217
    const/4 v1, 0x6

    .line 218
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    move-object v15, v1

    .line 223
    check-cast v15, Ljava/math/BigInteger;

    .line 224
    .line 225
    const/4 v1, 0x7

    .line 226
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    move-object/from16 v16, v0

    .line 231
    .line 232
    check-cast v16, Ljava/math/BigInteger;

    .line 233
    .line 234
    invoke-direct/range {v9 .. v16}, Lk66;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 235
    .line 236
    .line 237
    return-object v9

    .line 238
    :cond_2
    const-string v0, "Unsupported RSA public exponent"

    .line 239
    .line 240
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return-object v6

    .line 244
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 245
    .line 246
    const-string v1, "Expected value 0"

    .line 247
    .line 248
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v0
    :try_end_1
    .catch Lvk0; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    return-object v6

    .line 260
    :cond_4
    const-string v0, "Unsupported private key encoding"

    .line 261
    .line 262
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return-object v6

    .line 266
    :cond_5
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    :try_start_2
    invoke-static {v0, v1}, Lcy0;->K([BI)[B

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {v0}, Lcy0;->o([B)Ljava/util/LinkedHashMap;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    check-cast v2, [B

    .line 283
    .line 284
    invoke-static {v2}, Lcy0;->n([B)Ljava/util/ArrayList;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    check-cast v5, Lq48;

    .line 293
    .line 294
    invoke-virtual {v5}, Lq48;->b()[B

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    sget-object v7, Ll66;->c:[B

    .line 299
    .line 300
    invoke-static {v7, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    if-eqz v7, :cond_6

    .line 305
    .line 306
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    check-cast v2, Lq48;

    .line 311
    .line 312
    invoke-virtual {v2}, Lq48;->b()[B

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-static {v2}, Lzt2;->a([B)Lzt2;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    check-cast v0, [B

    .line 325
    .line 326
    invoke-static {v0, v1}, Lcy0;->K([BI)[B

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-static {v0}, Lcy0;->n([B)Ljava/util/ArrayList;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    new-instance v1, Lj66;

    .line 335
    .line 336
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    check-cast v0, Lq48;

    .line 341
    .line 342
    invoke-virtual {v0}, Lq48;->b()[B

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-direct {v1, v2, v0}, Lj66;-><init>(Lzt2;[B)V

    .line 347
    .line 348
    .line 349
    return-object v1

    .line 350
    :cond_6
    sget-object v1, Lzt2;->f:Lzt2;

    .line 351
    .line 352
    sget-object v2, Lzt2;->e:Lzt2;

    .line 353
    .line 354
    filled-new-array {v1, v2}, [Lzt2;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-eqz v2, :cond_8

    .line 371
    .line 372
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    check-cast v2, Lzt2;

    .line 377
    .line 378
    iget-object v7, v2, Lzt2;->b:[B

    .line 379
    .line 380
    array-length v8, v7

    .line 381
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 382
    .line 383
    .line 384
    move-result-object v7

    .line 385
    invoke-static {v7, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 386
    .line 387
    .line 388
    move-result v7

    .line 389
    if-eqz v7, :cond_7

    .line 390
    .line 391
    new-instance v1, Lj66;

    .line 392
    .line 393
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    check-cast v0, [B

    .line 398
    .line 399
    invoke-static {v0, v3}, Lcy0;->K([BI)[B

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-direct {v1, v2, v0}, Lj66;-><init>(Lzt2;[B)V
    :try_end_2
    .catch Lvk0; {:try_start_2 .. :try_end_2} :catch_1

    .line 404
    .line 405
    .line 406
    return-object v1

    .line 407
    :catch_1
    :cond_8
    const-string v0, "Unsupported private key type"

    .line 408
    .line 409
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    return-object v6
.end method


# virtual methods
.method public final isDestroyed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ll66;->b:Z

    .line 2
    .line 3
    return p0
.end method
