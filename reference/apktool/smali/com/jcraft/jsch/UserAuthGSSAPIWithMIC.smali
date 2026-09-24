.class Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;
.super Lcom/jcraft/jsch/UserAuth;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final e:[[B

.field public static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    filled-new-array {v0}, [[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->e:[[B

    .line 13
    .line 14
    const-string v0, "gssapi-with-mic.krb5"

    .line 15
    .line 16
    filled-new-array {v0}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->f:[Ljava/lang/String;

    .line 21
    .line 22
    return-void

    .line 23
    :array_0
    .array-data 1
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0x12t
        0x1t
        0x2t
        0x2t
    .end array-data
.end method

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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->d:Ljava/lang/String;

    .line 5
    .line 6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->a()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 18
    .line 19
    const/16 v3, 0x32

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 30
    .line 31
    const-string v4, "ssh-connection"

    .line 32
    .line 33
    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 41
    .line 42
    const-string v5, "gssapi-with-mic"

    .line 43
    .line 44
    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 58
    .line 59
    sget-object v6, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->e:[[B

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    aget-object v8, v6, v7

    .line 63
    .line 64
    invoke-virtual {v1, v8}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 78
    .line 79
    iget-object v8, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 80
    .line 81
    const/4 v9, 0x5

    .line 82
    aget-byte v8, v8, v9

    .line 83
    .line 84
    and-int/lit16 v8, v8, 0xff

    .line 85
    .line 86
    const/16 v10, 0x33

    .line 87
    .line 88
    if-ne v8, v10, :cond_1

    .line 89
    .line 90
    goto/16 :goto_6

    .line 91
    .line 92
    :cond_1
    const/16 v11, 0x3c

    .line 93
    .line 94
    if-ne v8, v11, :cond_e

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    move v8, v7

    .line 116
    :goto_1
    const/4 v11, 0x0

    .line 117
    if-ge v8, v2, :cond_3

    .line 118
    .line 119
    aget-object v12, v6, v8

    .line 120
    .line 121
    invoke-static {v1, v12}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    if-eqz v12, :cond_2

    .line 126
    .line 127
    sget-object v1, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->f:[Ljava/lang/String;

    .line 128
    .line 129
    aget-object v1, v1, v8

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    move-object v1, v11

    .line 136
    :goto_2
    if-nez v1, :cond_4

    .line 137
    .line 138
    goto/16 :goto_6

    .line 139
    .line 140
    :cond_4
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    const-class v6, Lcom/jcraft/jsch/GSSContext;

    .line 149
    .line 150
    invoke-virtual {v1, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Lcom/jcraft/jsch/GSSContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    :try_start_1
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuth;->d:Ljava/lang/String;

    .line 165
    .line 166
    iget-object v8, p1, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 167
    .line 168
    invoke-interface {v1, v6, v8}, Lcom/jcraft/jsch/GSSContext;->create(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    .line 170
    .line 171
    new-array v6, v7, [B

    .line 172
    .line 173
    :cond_5
    :goto_3
    invoke-interface {v1}, Lcom/jcraft/jsch/GSSContext;->isEstablished()Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    if-nez v8, :cond_a

    .line 178
    .line 179
    :try_start_2
    array-length v8, v6

    .line 180
    invoke-interface {v1, v6, v7, v8}, Lcom/jcraft/jsch/GSSContext;->init([BII)[B

    .line 181
    .line 182
    .line 183
    move-result-object v6
    :try_end_2
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    if-eqz v6, :cond_6

    .line 185
    .line 186
    iget-object v8, p0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 187
    .line 188
    invoke-virtual {v8}, Lcom/jcraft/jsch/Packet;->a()V

    .line 189
    .line 190
    .line 191
    iget-object v8, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 192
    .line 193
    const/16 v11, 0x3d

    .line 194
    .line 195
    invoke-virtual {v8, v11}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 196
    .line 197
    .line 198
    iget-object v8, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 199
    .line 200
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    array-length v11, v6

    .line 204
    invoke-virtual {v8, v6, v7, v11}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 205
    .line 206
    .line 207
    iget-object v8, p0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 208
    .line 209
    invoke-virtual {p1, v8}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 210
    .line 211
    .line 212
    :cond_6
    invoke-interface {v1}, Lcom/jcraft/jsch/GSSContext;->isEstablished()Z

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-nez v8, :cond_5

    .line 217
    .line 218
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 219
    .line 220
    invoke-virtual {p1, v6}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V

    .line 221
    .line 222
    .line 223
    iput-object v6, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 224
    .line 225
    iget-object v8, v6, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 226
    .line 227
    aget-byte v8, v8, v9

    .line 228
    .line 229
    and-int/lit16 v8, v8, 0xff

    .line 230
    .line 231
    const/16 v11, 0x40

    .line 232
    .line 233
    if-ne v8, v11, :cond_7

    .line 234
    .line 235
    invoke-virtual {p1, v6}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V

    .line 236
    .line 237
    .line 238
    iput-object v6, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 239
    .line 240
    iget-object v6, v6, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 241
    .line 242
    aget-byte v6, v6, v9

    .line 243
    .line 244
    :goto_4
    and-int/lit16 v8, v6, 0xff

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_7
    const/16 v11, 0x41

    .line 248
    .line 249
    if-ne v8, v11, :cond_8

    .line 250
    .line 251
    invoke-virtual {p1, v6}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V

    .line 252
    .line 253
    .line 254
    iput-object v6, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 255
    .line 256
    iget-object v6, v6, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 257
    .line 258
    aget-byte v6, v6, v9

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_8
    :goto_5
    if-ne v8, v10, :cond_9

    .line 262
    .line 263
    goto/16 :goto_6

    .line 264
    .line 265
    :cond_9
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 266
    .line 267
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 268
    .line 269
    .line 270
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 271
    .line 272
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 273
    .line 274
    .line 275
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 276
    .line 277
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 278
    .line 279
    .line 280
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 281
    .line 282
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    goto :goto_3

    .line 287
    :cond_a
    new-instance v6, Lcom/jcraft/jsch/Buffer;

    .line 288
    .line 289
    invoke-direct {v6}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 290
    .line 291
    .line 292
    iget-object v8, p1, Lcom/jcraft/jsch/Session;->e:[B

    .line 293
    .line 294
    invoke-virtual {v6, v8}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v6, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 298
    .line 299
    .line 300
    array-length v3, v0

    .line 301
    invoke-virtual {v6, v0, v7, v3}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 302
    .line 303
    .line 304
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 305
    .line 306
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v6, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v6, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 318
    .line 319
    .line 320
    iget-object v3, v6, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 321
    .line 322
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    invoke-interface {v1, v3, v7, v4}, Lcom/jcraft/jsch/GSSContext;->getMIC([BII)[B

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    if-nez v3, :cond_b

    .line 331
    .line 332
    goto/16 :goto_6

    .line 333
    .line 334
    :cond_b
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 335
    .line 336
    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    .line 337
    .line 338
    .line 339
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 340
    .line 341
    const/16 v5, 0x42

    .line 342
    .line 343
    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 344
    .line 345
    .line 346
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 347
    .line 348
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    array-length v5, v3

    .line 352
    invoke-virtual {v4, v3, v7, v5}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 353
    .line 354
    .line 355
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 356
    .line 357
    invoke-virtual {p1, v3}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 358
    .line 359
    .line 360
    invoke-interface {v1}, Lcom/jcraft/jsch/GSSContext;->dispose()V

    .line 361
    .line 362
    .line 363
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 364
    .line 365
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Session;->p(Lcom/jcraft/jsch/Buffer;)V

    .line 366
    .line 367
    .line 368
    iput-object v1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 369
    .line 370
    iget-object p1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 371
    .line 372
    aget-byte p1, p1, v9

    .line 373
    .line 374
    and-int/lit16 p1, p1, 0xff

    .line 375
    .line 376
    const/16 v3, 0x34

    .line 377
    .line 378
    if-ne p1, v3, :cond_c

    .line 379
    .line 380
    return v2

    .line 381
    :cond_c
    if-ne p1, v10, :cond_f

    .line 382
    .line 383
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 384
    .line 385
    .line 386
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 387
    .line 388
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 389
    .line 390
    .line 391
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 392
    .line 393
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 394
    .line 395
    .line 396
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 397
    .line 398
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    iget-object p0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 403
    .line 404
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 405
    .line 406
    .line 407
    move-result p0

    .line 408
    if-nez p0, :cond_d

    .line 409
    .line 410
    goto :goto_6

    .line 411
    :cond_d
    new-instance p0, Lcom/jcraft/jsch/JSchPartialAuthException;

    .line 412
    .line 413
    array-length v1, p1

    .line 414
    new-instance v2, Ljava/lang/String;

    .line 415
    .line 416
    invoke-direct {v2, p1, v7, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 417
    .line 418
    .line 419
    invoke-direct {p0, v2}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    throw p0

    .line 423
    :cond_e
    const/16 v9, 0x35

    .line 424
    .line 425
    if-ne v8, v9, :cond_f

    .line 426
    .line 427
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 428
    .line 429
    .line 430
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 431
    .line 432
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 433
    .line 434
    .line 435
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 436
    .line 437
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 438
    .line 439
    .line 440
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 441
    .line 442
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    iget-object v8, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 447
    .line 448
    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 449
    .line 450
    .line 451
    array-length v8, v1

    .line 452
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 453
    .line 454
    new-instance v10, Ljava/lang/String;

    .line 455
    .line 456
    invoke-direct {v10, v1, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 457
    .line 458
    .line 459
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    .line 460
    .line 461
    if-eqz v1, :cond_0

    .line 462
    .line 463
    invoke-interface {v1, v10}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    goto/16 :goto_0

    .line 467
    .line 468
    :catch_0
    :cond_f
    :goto_6
    return v7
.end method
