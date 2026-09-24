.class public final synthetic Lb16;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcn6;

.field public final synthetic b:Ljava/security/PrivateKey;

.field public final synthetic c:Lvh7;

.field public final synthetic d:Ljava/security/cert/X509Certificate;


# direct methods
.method public synthetic constructor <init>(Lcn6;Ljava/security/PrivateKey;Lvh7;Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb16;->a:Lcn6;

    .line 5
    .line 6
    iput-object p2, p0, Lb16;->b:Ljava/security/PrivateKey;

    .line 7
    .line 8
    iput-object p3, p0, Lb16;->c:Lvh7;

    .line 9
    .line 10
    iput-object p4, p0, Lb16;->d:Ljava/security/cert/X509Certificate;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Lb16;->a:Lcn6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn6;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lw16;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x4

    .line 12
    iget-object v4, p0, Lb16;->b:Ljava/security/PrivateKey;

    .line 13
    .line 14
    iget-object v5, p0, Lb16;->c:Lvh7;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz v4, :cond_b

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v4}, Ll66;->a(Ljava/security/PrivateKey;)Ll66;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    instance-of v7, v4, Lk66;

    .line 27
    .line 28
    if-eqz v7, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lvo4;->values()[Lvo4;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    array-length v8, v7

    .line 35
    move v9, v6

    .line 36
    :goto_0
    if-ge v9, v8, :cond_a

    .line 37
    .line 38
    aget-object v10, v7, v9

    .line 39
    .line 40
    iget-object v11, v10, Lvo4;->b:Lto4;

    .line 41
    .line 42
    instance-of v12, v11, Luo4;

    .line 43
    .line 44
    if-eqz v12, :cond_0

    .line 45
    .line 46
    iget v12, v4, Ll66;->a:I

    .line 47
    .line 48
    iget v11, v11, Lto4;->b:I

    .line 49
    .line 50
    if-ne v12, v11, :cond_0

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    instance-of v7, v4, Lj66;

    .line 57
    .line 58
    if-eqz v7, :cond_9

    .line 59
    .line 60
    invoke-static {}, Lvo4;->values()[Lvo4;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    array-length v8, v7

    .line 65
    move v9, v6

    .line 66
    :goto_1
    if-ge v9, v8, :cond_a

    .line 67
    .line 68
    aget-object v10, v7, v9

    .line 69
    .line 70
    iget-object v11, v10, Lvo4;->b:Lto4;

    .line 71
    .line 72
    instance-of v12, v11, Lso4;

    .line 73
    .line 74
    if-eqz v12, :cond_8

    .line 75
    .line 76
    move-object v12, v4

    .line 77
    check-cast v12, Lj66;

    .line 78
    .line 79
    iget-object v12, v12, Lj66;->d:Lzt2;

    .line 80
    .line 81
    check-cast v11, Lso4;

    .line 82
    .line 83
    iget-object v11, v11, Lso4;->c:Lzt2;

    .line 84
    .line 85
    if-ne v12, v11, :cond_8

    .line 86
    .line 87
    :goto_2
    iget-object v7, v0, Lw16;->b:Lwj8;

    .line 88
    .line 89
    iget-byte v8, v7, Lwj8;->a:B

    .line 90
    .line 91
    const/4 v9, 0x5

    .line 92
    if-nez v8, :cond_2

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_2
    sget-object v8, Lvo4;->f:Lvo4;

    .line 96
    .line 97
    if-ne v10, v8, :cond_3

    .line 98
    .line 99
    sget-object v8, Lw16;->d:Lx53;

    .line 100
    .line 101
    invoke-virtual {v0, v8}, Lw16;->n(Lol1;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-virtual {v7, v3, v3, v6}, Lwj8;->b(III)I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-ltz v8, :cond_5

    .line 109
    .line 110
    invoke-virtual {v7, v3, v9, v6}, Lwj8;->b(III)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-gez v7, :cond_5

    .line 115
    .line 116
    sget-object v7, Lvo4;->c:Lvo4;

    .line 117
    .line 118
    if-eq v10, v7, :cond_4

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    const-string p0, "RSA 1024 is not supported on YubiKey FIPS"

    .line 122
    .line 123
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-object v2

    .line 127
    :cond_5
    :goto_3
    iget-object v7, v10, Lvo4;->b:Lto4;

    .line 128
    .line 129
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 130
    .line 131
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 132
    .line 133
    .line 134
    iget v11, v7, Lto4;->a:I

    .line 135
    .line 136
    invoke-static {v11}, Ldj7;->A(I)I

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    const/4 v12, 0x3

    .line 141
    if-eqz v11, :cond_7

    .line 142
    .line 143
    if-eq v11, v1, :cond_6

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_6
    check-cast v4, Lj66;

    .line 147
    .line 148
    const/4 v7, 0x6

    .line 149
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    iget-object v4, v4, Lj66;->e:[B

    .line 154
    .line 155
    array-length v9, v4

    .line 156
    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-interface {v8, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_7
    iget v7, v7, Lto4;->b:I

    .line 165
    .line 166
    div-int/lit8 v7, v7, 0x8

    .line 167
    .line 168
    const/4 v11, 0x2

    .line 169
    div-int/2addr v7, v11

    .line 170
    check-cast v4, Lk66;

    .line 171
    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    iget-object v14, v4, Lk66;->f:Ljava/math/BigInteger;

    .line 177
    .line 178
    invoke-static {v7, v14}, Lvm4;->s(ILjava/math/BigInteger;)[B

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    iget-object v13, v4, Lk66;->k:Ljava/math/BigInteger;

    .line 190
    .line 191
    invoke-static {v7, v13}, Lvm4;->s(ILjava/math/BigInteger;)[B

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    invoke-interface {v8, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    iget-object v13, v4, Lk66;->n:Ljava/math/BigInteger;

    .line 203
    .line 204
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-static {v7, v13}, Lvm4;->s(ILjava/math/BigInteger;)[B

    .line 208
    .line 209
    .line 210
    move-result-object v13

    .line 211
    invoke-interface {v8, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    iget-object v13, v4, Lk66;->p:Ljava/math/BigInteger;

    .line 219
    .line 220
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    invoke-static {v7, v13}, Lvm4;->s(ILjava/math/BigInteger;)[B

    .line 224
    .line 225
    .line 226
    move-result-object v13

    .line 227
    invoke-interface {v8, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    iget-object v4, v4, Lk66;->q:Ljava/math/BigInteger;

    .line 235
    .line 236
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    invoke-static {v7, v4}, Lvm4;->s(ILjava/math/BigInteger;)[B

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    :goto_4
    sget-object v4, Lw16;->f:Ll15;

    .line 247
    .line 248
    const-string v7, "Importing key with pin_policy={}, touch_policy={}"

    .line 249
    .line 250
    sget-object v9, Lk06;->a:Lk06;

    .line 251
    .line 252
    sget-object v11, Lw88;->b:Lw88;

    .line 253
    .line 254
    invoke-static {v3, v4, v7, v9, v11}, Lms8;->B(ILl15;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    iget-object v7, v0, Lw16;->a:Lci7;

    .line 258
    .line 259
    new-instance v9, Lie;

    .line 260
    .line 261
    iget-byte v11, v10, Lvo4;->a:B

    .line 262
    .line 263
    iget v13, v5, Lvh7;->a:I

    .line 264
    .line 265
    invoke-static {v8}, Lcy0;->s(Ljava/util/LinkedHashMap;)[B

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    const/4 v14, -0x2

    .line 270
    invoke-direct {v9, v14, v8, v11, v13}, Lie;-><init>(I[BII)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v7, v9}, Lci7;->b(Lie;)[B

    .line 274
    .line 275
    .line 276
    const-string v7, "Private key imported in slot {} of type {}"

    .line 277
    .line 278
    invoke-static {v12, v4, v7, v5, v10}, Lms8;->B(ILl15;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 283
    .line 284
    goto/16 :goto_1

    .line 285
    .line 286
    :cond_9
    sget-object p0, Lvo4;->c:Lvo4;

    .line 287
    .line 288
    :cond_a
    const-string p0, "Unsupported key type"

    .line 289
    .line 290
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    return-object v2

    .line 294
    :cond_b
    :goto_5
    iget-object p0, p0, Lb16;->d:Ljava/security/cert/X509Certificate;

    .line 295
    .line 296
    if-eqz p0, :cond_c

    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    new-array v1, v1, [B

    .line 302
    .line 303
    aput-byte v6, v1, v6

    .line 304
    .line 305
    sget-object v4, Lw16;->f:Ll15;

    .line 306
    .line 307
    const-string v6, "Storing {}certificate in slot {}"

    .line 308
    .line 309
    const-string v7, ""

    .line 310
    .line 311
    invoke-static {v3, v4, v6, v7, v5}, Lms8;->B(ILl15;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 315
    .line 316
    .line 317
    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 319
    .line 320
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 321
    .line 322
    .line 323
    const/16 v4, 0x70

    .line 324
    .line 325
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    const/16 p0, 0x71

    .line 333
    .line 334
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    const/16 p0, 0xfe

    .line 342
    .line 343
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    iget p0, v5, Lvh7;->b:I

    .line 351
    .line 352
    invoke-static {v3}, Lcy0;->s(Ljava/util/LinkedHashMap;)[B

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v0, v1, p0}, Lw16;->m([BI)V

    .line 357
    .line 358
    .line 359
    goto :goto_6

    .line 360
    :catch_0
    move-exception p0

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 362
    .line 363
    const-string v1, "Failed to get encoded version of certificate"

    .line 364
    .line 365
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    .line 367
    .line 368
    throw v0

    .line 369
    :cond_c
    :goto_6
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 370
    .line 371
    return-object p0
.end method
