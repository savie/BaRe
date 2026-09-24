.class public final synthetic Lfc3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljc3;

.field public final synthetic b:[B

.field public final synthetic c:[B

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljc3;[B[BLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfc3;->a:Ljc3;

    .line 5
    .line 6
    iput-object p2, p0, Lfc3;->b:[B

    .line 7
    .line 8
    iput-object p3, p0, Lfc3;->c:[B

    .line 9
    .line 10
    iput-object p4, p0, Lfc3;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-wide p5, p0, Lfc3;->e:J

    .line 13
    .line 14
    iput-object p7, p0, Lfc3;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p8, p0, Lfc3;->k:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Invalid Filen API response for "

    .line 4
    .line 5
    iget-object v2, v0, Lfc3;->a:Ljc3;

    .line 6
    .line 7
    iget-object v3, v0, Lfc3;->b:[B

    .line 8
    .line 9
    iget-object v4, v0, Lfc3;->c:[B

    .line 10
    .line 11
    iget-object v5, v0, Lfc3;->d:Ljava/lang/String;

    .line 12
    .line 13
    iget-wide v6, v0, Lfc3;->e:J

    .line 14
    .line 15
    iget-object v8, v0, Lfc3;->f:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v9, v0, Lfc3;->k:Ljava/lang/String;

    .line 18
    .line 19
    iget-boolean v0, v2, Ljc3;->o:Z

    .line 20
    .line 21
    const-string v11, "Filen upload cancelled"

    .line 22
    .line 23
    if-nez v0, :cond_1b

    .line 24
    .line 25
    sget-object v0, Lhb3;->a:[B

    .line 26
    .line 27
    iget-object v0, v2, Ljc3;->f:Lmt3;

    .line 28
    .line 29
    const/16 v12, 0xc

    .line 30
    .line 31
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v13

    .line 35
    invoke-interface {v0, v13}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, [B

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    array-length v13, v0

    .line 45
    if-ne v13, v12, :cond_1a

    .line 46
    .line 47
    const/4 v12, 0x1

    .line 48
    invoke-static {v3, v4, v12, v0}, Lhb3;->a([B[BI[B)[B

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {v0, v4}, Lx50;->u0([B[B)[B

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const-string v0, "SHA-512"

    .line 57
    .line 58
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    invoke-virtual {v13, v4}, Ljava/security/MessageDigest;->digest([B)[B

    .line 63
    .line 64
    .line 65
    move-result-object v13

    .line 66
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {v13}, Ljc3;->b([B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    iget-object v14, v2, Ljc3;->m:Lcom/google/gson/a;

    .line 74
    .line 75
    new-instance v15, Lpw5;

    .line 76
    .line 77
    const/16 p0, 0x0

    .line 78
    .line 79
    const-string v10, "uuid"

    .line 80
    .line 81
    invoke-direct {v15, v10, v5}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    move-object/from16 v17, v0

    .line 89
    .line 90
    new-instance v0, Lpw5;

    .line 91
    .line 92
    move-wide/from16 v18, v6

    .line 93
    .line 94
    const-string v6, "index"

    .line 95
    .line 96
    invoke-direct {v0, v6, v12}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance v7, Lpw5;

    .line 100
    .line 101
    const-string v12, "parent"

    .line 102
    .line 103
    invoke-direct {v7, v12, v8}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    move-object/from16 v20, v11

    .line 107
    .line 108
    new-instance v11, Lpw5;

    .line 109
    .line 110
    move-object/from16 v21, v3

    .line 111
    .line 112
    const-string v3, "uploadKey"

    .line 113
    .line 114
    invoke-direct {v11, v3, v9}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    move-object/from16 v22, v1

    .line 118
    .line 119
    new-instance v1, Lpw5;

    .line 120
    .line 121
    move-object/from16 v23, v4

    .line 122
    .line 123
    const-string v4, "hash"

    .line 124
    .line 125
    invoke-direct {v1, v4, v13}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    filled-new-array {v15, v0, v7, v11, v1}, [Lpw5;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 133
    .line 134
    const/4 v7, 0x5

    .line 135
    invoke-static {v7}, Lx65;->q0(I)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    invoke-direct {v1, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-static {v1, v0}, Lx65;->s0(Ljava/util/HashMap;[Lpw5;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v14, v1}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static/range {v17 .. v17}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    sget-object v7, Lf51;->a:Ljava/nio/charset/Charset;

    .line 154
    .line 155
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-static {v0}, Ljc3;->b([B)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iget v7, v2, Ljc3;->i:I

    .line 174
    .line 175
    move-object/from16 v0, p0

    .line 176
    .line 177
    const/4 v14, 0x0

    .line 178
    :goto_0
    if-ge v14, v7, :cond_18

    .line 179
    .line 180
    iget-boolean v0, v2, Ljc3;->o:Z

    .line 181
    .line 182
    if-nez v0, :cond_17

    .line 183
    .line 184
    iget-object v0, v2, Ljc3;->c:Ljava/util/List;

    .line 185
    .line 186
    move-object v15, v12

    .line 187
    const/16 v17, 0x0

    .line 188
    .line 189
    int-to-long v11, v14

    .line 190
    add-long v11, v18, v11

    .line 191
    .line 192
    move/from16 v24, v7

    .line 193
    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    move-wide/from16 v25, v11

    .line 199
    .line 200
    int-to-long v11, v7

    .line 201
    rem-long v11, v25, v11

    .line 202
    .line 203
    long-to-int v7, v11

    .line 204
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Ljava/lang/String;

    .line 209
    .line 210
    const/4 v7, 0x1

    .line 211
    new-array v11, v7, [C

    .line 212
    .line 213
    const/16 v7, 0x2f

    .line 214
    .line 215
    aput-char v7, v11, v17

    .line 216
    .line 217
    invoke-static {v0, v11}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v11, "/v3/upload"

    .line 230
    .line 231
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v0}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0, v10, v5}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-virtual {v0, v6, v7}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v15, v8}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v3, v9}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v4, v13}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    new-instance v7, Lokhttp3/Request$Builder;

    .line 270
    .line 271
    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 272
    .line 273
    .line 274
    iput-object v0, v7, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 275
    .line 276
    iget-object v0, v2, Ljc3;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 277
    .line 278
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getApiKey()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    const-string v12, "Bearer "

    .line 283
    .line 284
    invoke-static {v12, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iget-object v12, v7, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 289
    .line 290
    move-object/from16 v25, v3

    .line 291
    .line 292
    const-string v3, "Authorization"

    .line 293
    .line 294
    invoke-virtual {v12, v3, v0}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const-string v0, "application/json, text/plain, */*"

    .line 298
    .line 299
    iget-object v3, v7, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 300
    .line 301
    const-string v12, "Accept"

    .line 302
    .line 303
    invoke-virtual {v3, v12, v0}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    const-string v0, "Checksum"

    .line 307
    .line 308
    iget-object v3, v7, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 309
    .line 310
    invoke-virtual {v3, v0, v1}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    sget-object v0, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 314
    .line 315
    sget-object v0, Lokhttp3/MediaType;->d:Lai6;

    .line 316
    .line 317
    const-string v0, "application/octet-stream"

    .line 318
    .line 319
    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    const/4 v3, 0x6

    .line 324
    move-object/from16 v12, v23

    .line 325
    .line 326
    invoke-static {v12, v3, v0}, Lokhttp3/RequestBody$Companion;->b([BILokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    const-string v3, "POST"

    .line 331
    .line 332
    invoke-virtual {v7, v3, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 333
    .line 334
    .line 335
    new-instance v0, Lokhttp3/Request;

    .line 336
    .line 337
    invoke-direct {v0, v7}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 338
    .line 339
    .line 340
    iget-object v3, v2, Ljc3;->l:Lokhttp3/OkHttpClient;

    .line 341
    .line 342
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    new-instance v7, Lokhttp3/internal/connection/RealCall;

    .line 346
    .line 347
    invoke-direct {v7, v3, v0}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 348
    .line 349
    .line 350
    iget-object v0, v2, Ljc3;->k:Lbt3;

    .line 351
    .line 352
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    iget-object v0, v2, Ljc3;->p:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    :try_start_0
    iget-boolean v0, v2, Ljc3;->o:Z

    .line 364
    .line 365
    if-eqz v0, :cond_0

    .line 366
    .line 367
    invoke-virtual {v7}, Lokhttp3/internal/connection/RealCall;->cancel()V

    .line 368
    .line 369
    .line 370
    goto :goto_1

    .line 371
    :catchall_0
    move-exception v0

    .line 372
    goto/16 :goto_1c

    .line 373
    .line 374
    :catch_0
    move-exception v0

    .line 375
    move-object/from16 v27, v1

    .line 376
    .line 377
    move-object/from16 v28, v4

    .line 378
    .line 379
    move-object/from16 v29, v5

    .line 380
    .line 381
    move-object/from16 v1, v20

    .line 382
    .line 383
    move-object/from16 v4, v22

    .line 384
    .line 385
    goto/16 :goto_19

    .line 386
    .line 387
    :cond_0
    :goto_1
    iget-boolean v0, v2, Ljc3;->o:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .line 389
    if-nez v0, :cond_11

    .line 390
    .line 391
    :try_start_1
    invoke-virtual {v7}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 392
    .line 393
    .line 394
    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    :try_start_2
    iget-object v0, v3, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 396
    .line 397
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 401
    :try_start_3
    invoke-static {v0}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 406
    .line 407
    .line 408
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    .line 409
    move-object/from16 v27, v1

    .line 410
    .line 411
    :try_start_4
    const-string v1, "status"

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 414
    .line 415
    .line 416
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    .line 417
    if-eqz v1, :cond_1

    .line 418
    .line 419
    :try_start_5
    invoke-virtual {v1}, Lqj4;->e()Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 424
    .line 425
    .line 426
    move-result-object v1
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 427
    :goto_2
    move-object/from16 v28, v4

    .line 428
    .line 429
    goto :goto_4

    .line 430
    :catchall_1
    move-exception v0

    .line 431
    move-object v1, v0

    .line 432
    move-object/from16 v28, v4

    .line 433
    .line 434
    move-object/from16 v29, v5

    .line 435
    .line 436
    :goto_3
    move-object/from16 v4, v22

    .line 437
    .line 438
    goto/16 :goto_18

    .line 439
    .line 440
    :catch_1
    move-exception v0

    .line 441
    move-object/from16 v28, v4

    .line 442
    .line 443
    move-object/from16 v29, v5

    .line 444
    .line 445
    move-object/from16 v4, v22

    .line 446
    .line 447
    goto/16 :goto_17

    .line 448
    .line 449
    :cond_1
    move-object/from16 v1, p0

    .line 450
    .line 451
    goto :goto_2

    .line 452
    :goto_4
    :try_start_6
    iget-boolean v4, v3, Lokhttp3/Response;->H:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    .line 453
    .line 454
    if-nez v4, :cond_5

    .line 455
    .line 456
    :try_start_7
    iget v4, v3, Lokhttp3/Response;->d:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 457
    .line 458
    move-object/from16 v29, v5

    .line 459
    .line 460
    const/16 v5, 0x198

    .line 461
    .line 462
    if-eq v4, v5, :cond_3

    .line 463
    .line 464
    const/16 v5, 0x1ad

    .line 465
    .line 466
    if-eq v4, v5, :cond_3

    .line 467
    .line 468
    const/16 v5, 0x1f4

    .line 469
    .line 470
    if-lt v4, v5, :cond_2

    .line 471
    .line 472
    goto :goto_5

    .line 473
    :cond_2
    move/from16 v5, v17

    .line 474
    .line 475
    goto :goto_6

    .line 476
    :cond_3
    :goto_5
    const/4 v5, 0x1

    .line 477
    :goto_6
    if-nez v5, :cond_4

    .line 478
    .line 479
    goto :goto_8

    .line 480
    :cond_4
    :try_start_8
    new-instance v0, Llb3;

    .line 481
    .line 482
    invoke-direct {v0, v4, v11}, Llb3;-><init>(ILjava/lang/String;)V

    .line 483
    .line 484
    .line 485
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 486
    :catchall_2
    move-exception v0

    .line 487
    :goto_7
    move-object v1, v0

    .line 488
    goto :goto_3

    .line 489
    :catchall_3
    move-exception v0

    .line 490
    move-object/from16 v29, v5

    .line 491
    .line 492
    goto :goto_7

    .line 493
    :cond_5
    move-object/from16 v29, v5

    .line 494
    .line 495
    :goto_8
    :try_start_9
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 496
    .line 497
    invoke-static {v1, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 501
    if-eqz v4, :cond_d

    .line 502
    .line 503
    :try_start_a
    const-string v1, "code"

    .line 504
    .line 505
    invoke-virtual {v0, v1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    if-eqz v1, :cond_7

    .line 510
    .line 511
    instance-of v4, v1, Lel4;

    .line 512
    .line 513
    if-nez v4, :cond_6

    .line 514
    .line 515
    goto :goto_9

    .line 516
    :cond_6
    move-object/from16 v1, p0

    .line 517
    .line 518
    :goto_9
    if-eqz v1, :cond_7

    .line 519
    .line 520
    invoke-virtual {v1}, Lqj4;->o()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 524
    goto :goto_a

    .line 525
    :cond_7
    move-object/from16 v1, p0

    .line 526
    .line 527
    :goto_a
    const-string v4, ""

    .line 528
    .line 529
    if-nez v1, :cond_8

    .line 530
    .line 531
    move-object v1, v4

    .line 532
    :cond_8
    :try_start_b
    const-string v5, "message"

    .line 533
    .line 534
    invoke-virtual {v0, v5}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    if-eqz v0, :cond_a

    .line 539
    .line 540
    instance-of v5, v0, Lel4;

    .line 541
    .line 542
    if-nez v5, :cond_9

    .line 543
    .line 544
    goto :goto_b

    .line 545
    :cond_9
    move-object/from16 v0, p0

    .line 546
    .line 547
    :goto_b
    if-eqz v0, :cond_a

    .line 548
    .line 549
    invoke-virtual {v0}, Lqj4;->o()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    goto :goto_c

    .line 554
    :cond_a
    move-object/from16 v0, p0

    .line 555
    .line 556
    :goto_c
    if-nez v0, :cond_b

    .line 557
    .line 558
    goto :goto_d

    .line 559
    :cond_b
    move-object v4, v0

    .line 560
    :goto_d
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    if-eqz v0, :cond_c

    .line 565
    .line 566
    const-string v4, "Filen chunk upload failed"

    .line 567
    .line 568
    goto :goto_e

    .line 569
    :catch_2
    move-exception v0

    .line 570
    goto :goto_f

    .line 571
    :cond_c
    :goto_e
    new-instance v0, Lua3;

    .line 572
    .line 573
    invoke-direct {v0, v1, v4}, Lua3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    throw v0
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 577
    :goto_f
    :try_start_c
    new-instance v1, Lpb3;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 578
    .line 579
    move-object/from16 v4, v22

    .line 580
    .line 581
    :try_start_d
    invoke-virtual {v4, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v5

    .line 585
    invoke-direct {v1, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 586
    .line 587
    .line 588
    throw v1

    .line 589
    :catchall_4
    move-exception v0

    .line 590
    :goto_10
    move-object v1, v0

    .line 591
    goto/16 :goto_18

    .line 592
    .line 593
    :catchall_5
    move-exception v0

    .line 594
    :goto_11
    move-object/from16 v4, v22

    .line 595
    .line 596
    goto :goto_10

    .line 597
    :cond_d
    move-object/from16 v4, v22

    .line 598
    .line 599
    iget-boolean v5, v3, Lokhttp3/Response;->H:Z

    .line 600
    .line 601
    if-eqz v5, :cond_f

    .line 602
    .line 603
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 604
    .line 605
    invoke-static {v1, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 609
    if-eqz v1, :cond_e

    .line 610
    .line 611
    :try_start_e
    const-string v1, "data"
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 612
    .line 613
    :try_start_f
    iget-object v0, v0, Lfl4;->a:Liw4;

    .line 614
    .line 615
    invoke-virtual {v0, v1}, Liw4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    check-cast v0, Lfl4;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 620
    .line 621
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    .line 623
    .line 624
    const-string v1, "bucket"

    .line 625
    .line 626
    invoke-static {v0, v1}, Ljc3;->a(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    const-string v5, "region"

    .line 631
    .line 632
    invoke-static {v0, v5}, Ljc3;->a(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 636
    :try_start_11
    invoke-virtual {v3}, Lokhttp3/Response;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 637
    .line 638
    .line 639
    iget-object v2, v2, Ljc3;->p:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 640
    .line 641
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    new-instance v2, Lic3;

    .line 648
    .line 649
    move-object/from16 v5, v21

    .line 650
    .line 651
    array-length v3, v5

    .line 652
    invoke-direct {v2, v1, v0, v3}, Lic3;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 653
    .line 654
    .line 655
    return-object v2

    .line 656
    :catch_3
    move-exception v0

    .line 657
    move-object/from16 v5, v21

    .line 658
    .line 659
    :goto_12
    move-object/from16 v1, v20

    .line 660
    .line 661
    goto/16 :goto_19

    .line 662
    .line 663
    :catchall_6
    move-exception v0

    .line 664
    move-object/from16 v5, v21

    .line 665
    .line 666
    goto :goto_10

    .line 667
    :catch_4
    move-exception v0

    .line 668
    move-object/from16 v5, v21

    .line 669
    .line 670
    goto :goto_14

    .line 671
    :catchall_7
    move-exception v0

    .line 672
    move-object/from16 v5, v21

    .line 673
    .line 674
    :goto_13
    move-object v1, v0

    .line 675
    move-object/from16 v21, v5

    .line 676
    .line 677
    goto :goto_18

    .line 678
    :goto_14
    :try_start_12
    new-instance v1, Lpb3;

    .line 679
    .line 680
    invoke-virtual {v4, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v11

    .line 684
    invoke-direct {v1, v11, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 685
    .line 686
    .line 687
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 688
    :catchall_8
    move-exception v0

    .line 689
    goto :goto_13

    .line 690
    :cond_e
    move-object/from16 v5, v21

    .line 691
    .line 692
    :try_start_13
    new-instance v0, Lpb3;

    .line 693
    .line 694
    new-instance v1, Ljava/lang/IllegalArgumentException;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 695
    .line 696
    move-object/from16 v21, v5

    .line 697
    .line 698
    :try_start_14
    const-string v5, "Missing Filen upload response status"

    .line 699
    .line 700
    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v4, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v5

    .line 707
    invoke-direct {v0, v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 708
    .line 709
    .line 710
    throw v0

    .line 711
    :catchall_9
    move-exception v0

    .line 712
    move-object/from16 v21, v5

    .line 713
    .line 714
    goto :goto_10

    .line 715
    :cond_f
    new-instance v0, Llb3;

    .line 716
    .line 717
    iget v1, v3, Lokhttp3/Response;->d:I

    .line 718
    .line 719
    invoke-direct {v0, v1, v11}, Llb3;-><init>(ILjava/lang/String;)V

    .line 720
    .line 721
    .line 722
    throw v0

    .line 723
    :catchall_a
    move-exception v0

    .line 724
    :goto_15
    move-object/from16 v29, v5

    .line 725
    .line 726
    goto/16 :goto_11

    .line 727
    .line 728
    :catchall_b
    move-exception v0

    .line 729
    :goto_16
    move-object/from16 v28, v4

    .line 730
    .line 731
    goto :goto_15

    .line 732
    :goto_17
    new-instance v1, Lpb3;

    .line 733
    .line 734
    invoke-virtual {v4, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v5

    .line 738
    invoke-direct {v1, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 739
    .line 740
    .line 741
    throw v1

    .line 742
    :catchall_c
    move-exception v0

    .line 743
    move-object/from16 v27, v1

    .line 744
    .line 745
    goto :goto_16

    .line 746
    :catch_5
    move-exception v0

    .line 747
    move-object/from16 v27, v1

    .line 748
    .line 749
    move-object/from16 v28, v4

    .line 750
    .line 751
    move-object/from16 v29, v5

    .line 752
    .line 753
    move-object/from16 v4, v22

    .line 754
    .line 755
    iget-boolean v1, v3, Lokhttp3/Response;->H:Z

    .line 756
    .line 757
    if-nez v1, :cond_10

    .line 758
    .line 759
    new-instance v0, Llb3;

    .line 760
    .line 761
    iget v1, v3, Lokhttp3/Response;->d:I

    .line 762
    .line 763
    invoke-direct {v0, v1, v11}, Llb3;-><init>(ILjava/lang/String;)V

    .line 764
    .line 765
    .line 766
    throw v0

    .line 767
    :cond_10
    new-instance v1, Lpb3;

    .line 768
    .line 769
    invoke-virtual {v4, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v5

    .line 773
    invoke-direct {v1, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 774
    .line 775
    .line 776
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 777
    :goto_18
    :try_start_15
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    .line 778
    :catchall_d
    move-exception v0

    .line 779
    :try_start_16
    invoke-static {v3, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 780
    .line 781
    .line 782
    throw v0

    .line 783
    :catch_6
    move-exception v0

    .line 784
    goto :goto_12

    .line 785
    :catch_7
    move-exception v0

    .line 786
    move-object/from16 v27, v1

    .line 787
    .line 788
    move-object/from16 v28, v4

    .line 789
    .line 790
    move-object/from16 v29, v5

    .line 791
    .line 792
    move-object/from16 v4, v22

    .line 793
    .line 794
    goto/16 :goto_12

    .line 795
    .line 796
    :cond_11
    move-object/from16 v27, v1

    .line 797
    .line 798
    move-object/from16 v28, v4

    .line 799
    .line 800
    move-object/from16 v29, v5

    .line 801
    .line 802
    move-object/from16 v4, v22

    .line 803
    .line 804
    new-instance v0, Ljava/lang/IllegalStateException;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 805
    .line 806
    move-object/from16 v1, v20

    .line 807
    .line 808
    :try_start_17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    throw v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 812
    :catch_8
    move-exception v0

    .line 813
    :goto_19
    :try_start_18
    instance-of v3, v0, Lua3;

    .line 814
    .line 815
    if-eqz v3, :cond_12

    .line 816
    .line 817
    move-object v3, v0

    .line 818
    check-cast v3, Lua3;

    .line 819
    .line 820
    iget-object v3, v3, Lua3;->a:Ljava/lang/String;

    .line 821
    .line 822
    invoke-static {v3}, Lw13;->l(Ljava/lang/String;)Z

    .line 823
    .line 824
    .line 825
    move-result v3

    .line 826
    goto :goto_1b

    .line 827
    :cond_12
    instance-of v3, v0, Llb3;

    .line 828
    .line 829
    if-eqz v3, :cond_14

    .line 830
    .line 831
    move-object v3, v0

    .line 832
    check-cast v3, Llb3;

    .line 833
    .line 834
    iget v3, v3, Llb3;->a:I

    .line 835
    .line 836
    const/16 v5, 0x198

    .line 837
    .line 838
    if-eq v3, v5, :cond_14

    .line 839
    .line 840
    const/16 v5, 0x1ad

    .line 841
    .line 842
    if-eq v3, v5, :cond_14

    .line 843
    .line 844
    const/16 v5, 0x1f4

    .line 845
    .line 846
    if-lt v3, v5, :cond_13

    .line 847
    .line 848
    goto :goto_1a

    .line 849
    :cond_13
    move/from16 v3, v17

    .line 850
    .line 851
    goto :goto_1b

    .line 852
    :cond_14
    :goto_1a
    const/4 v3, 0x1

    .line 853
    :goto_1b
    iget-boolean v5, v2, Ljc3;->o:Z

    .line 854
    .line 855
    if-nez v5, :cond_16

    .line 856
    .line 857
    if-eqz v3, :cond_16

    .line 858
    .line 859
    iget v3, v2, Ljc3;->i:I

    .line 860
    .line 861
    const/16 v16, 0x1

    .line 862
    .line 863
    add-int/lit8 v3, v3, -0x1

    .line 864
    .line 865
    if-eq v14, v3, :cond_16

    .line 866
    .line 867
    move-object v3, v0

    .line 868
    move-object/from16 v20, v1

    .line 869
    .line 870
    iget-wide v0, v2, Ljc3;->j:J

    .line 871
    .line 872
    const-wide/16 v22, 0x0

    .line 873
    .line 874
    cmp-long v5, v0, v22

    .line 875
    .line 876
    if-lez v5, :cond_15

    .line 877
    .line 878
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 879
    .line 880
    .line 881
    :cond_15
    iget-object v0, v2, Ljc3;->p:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 882
    .line 883
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    add-int/lit8 v14, v14, 0x1

    .line 890
    .line 891
    move-object v0, v3

    .line 892
    move-object/from16 v22, v4

    .line 893
    .line 894
    move-object/from16 v23, v12

    .line 895
    .line 896
    move-object v12, v15

    .line 897
    move/from16 v7, v24

    .line 898
    .line 899
    move-object/from16 v3, v25

    .line 900
    .line 901
    move-object/from16 v1, v27

    .line 902
    .line 903
    move-object/from16 v4, v28

    .line 904
    .line 905
    move-object/from16 v5, v29

    .line 906
    .line 907
    goto/16 :goto_0

    .line 908
    .line 909
    :cond_16
    move-object v3, v0

    .line 910
    :try_start_19
    throw v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 911
    :goto_1c
    iget-object v1, v2, Ljc3;->p:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 912
    .line 913
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    throw v0

    .line 920
    :cond_17
    invoke-static/range {v20 .. v20}, Ll0;->e(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    return-object p0

    .line 924
    :cond_18
    if-nez v0, :cond_19

    .line 925
    .line 926
    const-string v0, "Required value was null."

    .line 927
    .line 928
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    return-object p0

    .line 932
    :cond_19
    throw v0

    .line 933
    :cond_1a
    const/16 p0, 0x0

    .line 934
    .line 935
    const-string v0, "Failed requirement."

    .line 936
    .line 937
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    return-object p0

    .line 941
    :cond_1b
    move-object/from16 v20, v11

    .line 942
    .line 943
    const/16 p0, 0x0

    .line 944
    .line 945
    invoke-static/range {v20 .. v20}, Ll0;->e(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    return-object p0
.end method
