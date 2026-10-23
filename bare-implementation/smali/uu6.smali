.class public final Luu6;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final k:Ll15;


# instance fields
.field public e:Lla;

.field public f:Ljw5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Luu6;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Luu6;->k:Ll15;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final c(Lev6;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lvu6;

    .line 2
    .line 3
    return p0
.end method

.method public final k(Lev6;)V
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lvu6;

    .line 3
    .line 4
    const-string v1, "Decrypting packet {}"

    .line 5
    .line 6
    sget-object v2, Luu6;->k:Ll15;

    .line 7
    .line 8
    invoke-interface {v2, v0, v1}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Luu6;->f:Ljw5;

    .line 12
    .line 13
    iget-object v3, v1, Ljw5;->c:Lus6;

    .line 14
    .line 15
    invoke-virtual {v3}, Lus6;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_6

    .line 20
    .line 21
    iget-object v3, v0, Lev6;->b:Lzu6;

    .line 22
    .line 23
    invoke-virtual {v3}, Low0;->a()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_6

    .line 28
    .line 29
    iget-object v3, v0, Lev6;->a:Ldv6;

    .line 30
    .line 31
    move-object v4, v3

    .line 32
    check-cast v4, Lnu6;

    .line 33
    .line 34
    iget v5, v4, Lnu6;->e:I

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    if-ne v5, v6, :cond_6

    .line 38
    .line 39
    iget-wide v4, v4, Lnu6;->f:J

    .line 40
    .line 41
    iget-object v6, p0, Luu6;->e:Lla;

    .line 42
    .line 43
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v6, v4}, Lla;->c(Ljava/lang/Long;)Lj87;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-nez v4, :cond_0

    .line 52
    .line 53
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Lol1;

    .line 56
    .line 57
    new-instance v0, Lkd2;

    .line 58
    .line 59
    iget-object p1, p1, Lev6;->a:Ldv6;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Lkd2;-><init>(Ldv6;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lol1;->t(Lev6;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    iget-object v4, v4, Lj87;->t:Ln87;

    .line 69
    .line 70
    iget-object v4, v4, Ln87;->e:Ljavax/crypto/spec/SecretKeySpec;

    .line 71
    .line 72
    sget-object v5, Ljw5;->d:Ll15;

    .line 73
    .line 74
    move-object v6, v3

    .line 75
    check-cast v6, Lnu6;

    .line 76
    .line 77
    iget-object v6, v6, Lnu6;->c:[B

    .line 78
    .line 79
    iget-object v7, v1, Ljw5;->b:Lwu6;

    .line 80
    .line 81
    iget v7, v7, Lwu6;->c:I

    .line 82
    .line 83
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    :try_start_0
    move-object v7, v3

    .line 88
    check-cast v7, Lnu6;

    .line 89
    .line 90
    new-instance v8, Lzu6;

    .line 91
    .line 92
    invoke-direct {v8}, Low0;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v8}, Lnu6;->d(Lzu6;)V

    .line 96
    .line 97
    .line 98
    const/16 v7, 0x14

    .line 99
    .line 100
    iput v7, v8, Low0;->c:I

    .line 101
    .line 102
    invoke-virtual {v8}, Low0;->c()[B

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    iget-object v8, v0, Lev6;->b:Lzu6;

    .line 107
    .line 108
    move-object v9, v3

    .line 109
    check-cast v9, Lnu6;

    .line 110
    .line 111
    iget v9, v9, Lnu6;->d:I

    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    new-array v10, v9, [B

    .line 117
    .line 118
    invoke-virtual {v8, v10, v9}, Low0;->o([BI)V

    .line 119
    .line 120
    .line 121
    move-object v8, v3

    .line 122
    check-cast v8, Lnu6;

    .line 123
    .line 124
    iget-object v8, v8, Lnu6;->b:[B

    .line 125
    .line 126
    iget-object v11, v1, Ljw5;->a:Llv1;

    .line 127
    .line 128
    iget-object v1, v1, Ljw5;->b:Lwu6;

    .line 129
    .line 130
    iget-object v1, v1, Lwu6;->b:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {v1}, Llv1;->f(Ljava/lang/String;)Lgf0;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iget-object v11, v1, Lgf0;->a:Ld;

    .line 140
    .line 141
    invoke-virtual {v4}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    new-instance v12, Ljavax/crypto/spec/GCMParameterSpec;

    .line 146
    .line 147
    const/16 v13, 0x80

    .line 148
    .line 149
    invoke-direct {v12, v13, v6}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v4, v12}, Lgf0;->a([BLjavax/crypto/spec/GCMParameterSpec;)Le;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const/4 v4, 0x0

    .line 157
    invoke-interface {v11, v4, v1}, Ld;->a(ZLz61;)V

    .line 158
    .line 159
    .line 160
    array-length v1, v7

    .line 161
    invoke-interface {v11, v7, v1}, Ld;->d([BI)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v11, v9}, Ld;->c(I)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    new-array v6, v1, [B

    .line 169
    .line 170
    invoke-interface {v11, v9, v10, v6}, Ld;->b(I[B[B)I

    .line 171
    .line 172
    .line 173
    array-length v7, v8

    .line 174
    invoke-interface {v11, v7}, Ld;->e(I)I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    new-array v10, v9, [B

    .line 179
    .line 180
    invoke-interface {v11, v7, v8, v10}, Ld;->b(I[B[B)I

    .line 181
    .line 182
    .line 183
    move-result v7
    :try_end_0
    .catch Lh67; {:try_start_0 .. :try_end_0} :catch_1
    .catch Liw0; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :try_start_1
    invoke-interface {v11, v10, v7}, Ld;->doFinal([BI)I
    :try_end_1
    .catch Lyf4; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lh67; {:try_start_1 .. :try_end_1} :catch_1
    .catch Liw0; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .line 186
    .line 187
    if-eqz v1, :cond_1

    .line 188
    .line 189
    add-int v7, v1, v9

    .line 190
    .line 191
    :try_start_2
    new-array v7, v7, [B

    .line 192
    .line 193
    invoke-static {v6, v4, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    .line 195
    .line 196
    invoke-static {v10, v4, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Lh67; {:try_start_2 .. :try_end_2} :catch_1
    .catch Liw0; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    .line 198
    .line 199
    move-object v10, v7

    .line 200
    goto :goto_0

    .line 201
    :catch_0
    move-exception p0

    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :catch_1
    move-exception p0

    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :cond_1
    :goto_0
    const/4 v1, 0x4

    .line 208
    invoke-static {v10, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    sget-object v4, Lnu6;->h:[B

    .line 213
    .line 214
    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-nez v4, :cond_5

    .line 219
    .line 220
    sget-object v4, Lns6;->c:[B

    .line 221
    .line 222
    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-eqz v4, :cond_2

    .line 227
    .line 228
    const-string v0, "Packet {} is compressed."

    .line 229
    .line 230
    invoke-interface {v2, p1, v0}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :try_start_3
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast p0, Lol1;

    .line 236
    .line 237
    new-instance p1, Lkd2;

    .line 238
    .line 239
    invoke-direct {p1, v10}, Lkd2;-><init>([B)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V
    :try_end_3
    .catch Liw0; {:try_start_3 .. :try_end_3} :catch_2

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :catch_2
    move-exception p0

    .line 247
    new-instance p1, Lgv6;

    .line 248
    .line 249
    const-string v0, "Could not load compression header"

    .line 250
    .line 251
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    throw p1

    .line 255
    :cond_2
    sget-object v4, Lut6;->q:[B

    .line 256
    .line 257
    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_4

    .line 262
    .line 263
    :try_start_4
    new-instance p1, Lts6;

    .line 264
    .line 265
    invoke-direct {p1, v10}, Lst6;-><init>([B)V

    .line 266
    .line 267
    .line 268
    const-string v1, "Decrypted packet {} is packet {}."

    .line 269
    .line 270
    invoke-interface {v2, v0, p1, v1}, Ll15;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-object v1, p1, Lev6;->a:Ldv6;

    .line 274
    .line 275
    check-cast v1, Lut6;

    .line 276
    .line 277
    iget-wide v4, v1, Lut6;->h:J

    .line 278
    .line 279
    check-cast v3, Lnu6;

    .line 280
    .line 281
    iget-wide v6, v3, Lnu6;->f:J

    .line 282
    .line 283
    cmp-long v1, v4, v6

    .line 284
    .line 285
    if-eqz v1, :cond_3

    .line 286
    .line 287
    const-string v1, "Mismatched sessionId between encrypted packet {} and decrypted contents {}"

    .line 288
    .line 289
    invoke-interface {v2, v0, p1, v1}, Ll15;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast p0, Lol1;

    .line 295
    .line 296
    new-instance v0, Lkd2;

    .line 297
    .line 298
    iget-object p1, p1, Lev6;->a:Ldv6;

    .line 299
    .line 300
    invoke-direct {v0, p1}, Lkd2;-><init>(Ldv6;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, v0}, Lol1;->t(Lev6;)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :cond_3
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast p0, Lol1;

    .line 310
    .line 311
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V
    :try_end_4
    .catch Liw0; {:try_start_4 .. :try_end_4} :catch_3

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :catch_3
    move-exception p0

    .line 316
    new-instance p1, Lgv6;

    .line 317
    .line 318
    const-string v0, "Could not load SMB2 Packet"

    .line 319
    .line 320
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    .line 322
    .line 323
    throw p1

    .line 324
    :cond_4
    const-string p0, "Could not determine the encrypted packet contents of packet {}"

    .line 325
    .line 326
    invoke-interface {v2, p1, p0}, Ll15;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    new-instance p0, Lva8;

    .line 330
    .line 331
    const-string p1, "Could not determine the encrypted packet data, disconnecting"

    .line 332
    .line 333
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw p0

    .line 337
    :cond_5
    const-string p0, "Encountered a nested encrypted packet in packet {}, disconnecting the transport"

    .line 338
    .line 339
    invoke-interface {v2, p1, p0}, Ll15;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    new-instance p0, Lva8;

    .line 343
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string v1, "Cannot nest an encrypted packet in encrypted packet "

    .line 347
    .line 348
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw p0

    .line 362
    :catch_4
    move-exception p0

    .line 363
    :try_start_5
    new-instance p1, Lh67;

    .line 364
    .line 365
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 366
    .line 367
    .line 368
    throw p1
    :try_end_5
    .catch Lh67; {:try_start_5 .. :try_end_5} :catch_1
    .catch Liw0; {:try_start_5 .. :try_end_5} :catch_0

    .line 369
    :goto_1
    const-string p1, "Could not read cipherText from packet << {} >>"

    .line 370
    .line 371
    invoke-interface {v5, v0, p1}, Ll15;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    new-instance p1, Lgv6;

    .line 375
    .line 376
    const-string v0, "Could not read cipherText from packet"

    .line 377
    .line 378
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    .line 380
    .line 381
    throw p1

    .line 382
    :goto_2
    const-string p1, "Security exception while decrypting packet << {} >>"

    .line 383
    .line 384
    invoke-interface {v5, v0, p1}, Ll15;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    new-instance p1, Lgv6;

    .line 388
    .line 389
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 390
    .line 391
    .line 392
    throw p1

    .line 393
    :cond_6
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast p0, Lol1;

    .line 396
    .line 397
    new-instance v0, Lkd2;

    .line 398
    .line 399
    iget-object p1, p1, Lev6;->a:Ldv6;

    .line 400
    .line 401
    invoke-direct {v0, p1}, Lkd2;-><init>(Ldv6;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p0, v0}, Lol1;->t(Lev6;)V

    .line 405
    .line 406
    .line 407
    return-void
.end method
