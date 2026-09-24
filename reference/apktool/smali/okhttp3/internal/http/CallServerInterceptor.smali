.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final a:Lokhttp3/internal/http/CallServerInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/http/CallServerInterceptor;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokhttp3/internal/http/CallServerInterceptor;->a:Lokhttp3/internal/http/CallServerInterceptor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "close"

    .line 4
    .line 5
    iget-object v2, v0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v3, v2, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 11
    .line 12
    iget-object v4, v2, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 13
    .line 14
    iget-object v5, v2, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    .line 15
    .line 16
    iget-object v6, v0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 17
    .line 18
    iget-object v0, v6, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 19
    .line 20
    iget-object v7, v6, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v8

    .line 26
    iget-object v10, v6, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v10}, Lokhttp3/internal/http/HttpMethod;->a(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v10

    .line 32
    const/4 v12, 0x1

    .line 33
    if-eqz v10, :cond_0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    move v10, v12

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v10, 0x0

    .line 40
    :goto_0
    const-string v13, "Connection"

    .line 41
    .line 42
    invoke-virtual {v7, v13}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v14

    .line 46
    const-string v15, "upgrade"

    .line 47
    .line 48
    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v14

    .line 52
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-interface {v3, v6}, Lokhttp3/internal/http/ExchangeCodec;->b(Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    .line 56
    .line 57
    .line 58
    if-nez v14, :cond_6

    .line 59
    .line 60
    if-eqz v10, :cond_5

    .line 61
    .line 62
    :try_start_1
    const-string v10, "100-continue"

    .line 63
    .line 64
    const-string v11, "Expect"

    .line 65
    .line 66
    invoke-virtual {v7, v11}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 74
    if-eqz v7, :cond_1

    .line 75
    .line 76
    :try_start_2
    invoke-interface {v3}, Lokhttp3/internal/http/ExchangeCodec;->f()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 77
    .line 78
    .line 79
    :try_start_3
    invoke-virtual {v2, v12}, Lokhttp3/internal/connection/Exchange;->e(Z)Lokhttp3/Response$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 83
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 84
    .line 85
    .line 86
    move-object v10, v7

    .line 87
    const/4 v7, 0x0

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    move-object/from16 v16, v3

    .line 91
    .line 92
    goto/16 :goto_8

    .line 93
    .line 94
    :catch_1
    move-exception v0

    .line 95
    move-object/from16 v16, v3

    .line 96
    .line 97
    const/4 v7, 0x0

    .line 98
    goto/16 :goto_8

    .line 99
    .line 100
    :catch_2
    move-exception v0

    .line 101
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/Exchange;->f(Ljava/io/IOException;)V

    .line 105
    .line 106
    .line 107
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 108
    :cond_1
    move v7, v12

    .line 109
    const/4 v10, 0x0

    .line 110
    :goto_1
    if-nez v10, :cond_2

    .line 111
    .line 112
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v6}, Lokhttp3/internal/connection/Exchange;->b(Lokhttp3/Request;)Lnh7;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    new-instance v12, Lrf6;

    .line 120
    .line 121
    invoke-direct {v12, v11}, Lrf6;-><init>(Lnh7;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v12}, Lokhttp3/RequestBody;->d(Lyw0;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v12}, Lrf6;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 128
    .line 129
    .line 130
    move-object/from16 v16, v3

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :catch_3
    move-exception v0

    .line 134
    move-object/from16 v16, v3

    .line 135
    .line 136
    :goto_2
    move v12, v7

    .line 137
    move-object v7, v10

    .line 138
    goto :goto_8

    .line 139
    :cond_2
    move-object/from16 v16, v3

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    const/4 v11, 0x0

    .line 143
    :try_start_7
    invoke-virtual {v5, v2, v12, v11, v3}, Lokhttp3/internal/connection/RealCall;->e(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->t:Lokhttp3/internal/http2/Http2Connection;

    .line 151
    .line 152
    if-eqz v0, :cond_3

    .line 153
    .line 154
    const/4 v0, 0x1

    .line 155
    goto :goto_3

    .line 156
    :cond_3
    const/4 v0, 0x0

    .line 157
    :goto_3
    if-nez v0, :cond_4

    .line 158
    .line 159
    invoke-interface/range {v16 .. v16}, Lokhttp3/internal/http/ExchangeCodec;->h()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->f()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 164
    .line 165
    .line 166
    :cond_4
    :goto_4
    move v3, v7

    .line 167
    move-object v7, v10

    .line 168
    goto :goto_7

    .line 169
    :catch_4
    move-exception v0

    .line 170
    goto :goto_2

    .line 171
    :catch_5
    move-exception v0

    .line 172
    move-object/from16 v16, v3

    .line 173
    .line 174
    :goto_5
    const/4 v7, 0x0

    .line 175
    const/4 v12, 0x1

    .line 176
    goto :goto_8

    .line 177
    :cond_5
    move-object/from16 v16, v3

    .line 178
    .line 179
    const/4 v3, 0x0

    .line 180
    const/4 v11, 0x0

    .line 181
    :try_start_8
    invoke-virtual {v5, v2, v12, v11, v3}, Lokhttp3/internal/connection/RealCall;->e(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 182
    .line 183
    .line 184
    goto :goto_6

    .line 185
    :catch_6
    move-exception v0

    .line 186
    goto :goto_5

    .line 187
    :cond_6
    move-object/from16 v16, v3

    .line 188
    .line 189
    :goto_6
    const/4 v3, 0x1

    .line 190
    const/4 v7, 0x0

    .line 191
    :goto_7
    :try_start_9
    invoke-interface/range {v16 .. v16}, Lokhttp3/internal/http/ExchangeCodec;->a()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 192
    .line 193
    .line 194
    move-object v0, v7

    .line 195
    const/4 v7, 0x0

    .line 196
    goto :goto_9

    .line 197
    :catch_7
    move-exception v0

    .line 198
    :try_start_a
    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/Exchange;->f(Ljava/io/IOException;)V

    .line 199
    .line 200
    .line 201
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 202
    :catch_8
    move-exception v0

    .line 203
    move v12, v3

    .line 204
    goto :goto_8

    .line 205
    :catch_9
    move-exception v0

    .line 206
    move-object/from16 v16, v3

    .line 207
    .line 208
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/Exchange;->f(Ljava/io/IOException;)V

    .line 212
    .line 213
    .line 214
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 215
    :goto_8
    instance-of v3, v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 216
    .line 217
    if-nez v3, :cond_1a

    .line 218
    .line 219
    iget-boolean v3, v2, Lokhttp3/internal/connection/Exchange;->f:Z

    .line 220
    .line 221
    if-eqz v3, :cond_19

    .line 222
    .line 223
    move-object v3, v7

    .line 224
    move-object v7, v0

    .line 225
    move-object v0, v3

    .line 226
    move v3, v12

    .line 227
    :goto_9
    if-nez v0, :cond_7

    .line 228
    .line 229
    const/4 v11, 0x0

    .line 230
    :try_start_c
    invoke-virtual {v2, v11}, Lokhttp3/internal/connection/Exchange;->e(Z)Lokhttp3/Response$Builder;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    if-eqz v3, :cond_7

    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    const/4 v3, 0x0

    .line 243
    goto :goto_a

    .line 244
    :catch_a
    move-exception v0

    .line 245
    goto/16 :goto_13

    .line 246
    .line 247
    :cond_7
    :goto_a
    iput-object v6, v0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 248
    .line 249
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    iget-object v10, v10, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Handshake;

    .line 254
    .line 255
    iput-object v10, v0, Lokhttp3/Response$Builder;->e:Lokhttp3/Handshake;

    .line 256
    .line 257
    iput-wide v8, v0, Lokhttp3/Response$Builder;->l:J

    .line 258
    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 260
    .line 261
    .line 262
    move-result-wide v10

    .line 263
    iput-wide v10, v0, Lokhttp3/Response$Builder;->m:J

    .line 264
    .line 265
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iget v10, v0, Lokhttp3/Response;->d:I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 270
    .line 271
    :goto_b
    iget-object v11, v0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 272
    .line 273
    const/16 v12, 0x64

    .line 274
    .line 275
    if-ne v10, v12, :cond_8

    .line 276
    .line 277
    :goto_c
    const/4 v11, 0x0

    .line 278
    goto :goto_d

    .line 279
    :cond_8
    const/16 v12, 0x66

    .line 280
    .line 281
    if-gt v12, v10, :cond_a

    .line 282
    .line 283
    const/16 v12, 0xc8

    .line 284
    .line 285
    if-ge v10, v12, :cond_a

    .line 286
    .line 287
    goto :goto_c

    .line 288
    :goto_d
    :try_start_d
    invoke-virtual {v2, v11}, Lokhttp3/internal/connection/Exchange;->e(Z)Lokhttp3/Response$Builder;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    if-eqz v3, :cond_9

    .line 296
    .line 297
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    :cond_9
    iput-object v6, v0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 301
    .line 302
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    .line 303
    .line 304
    .line 305
    move-result-object v10

    .line 306
    iget-object v10, v10, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/Handshake;

    .line 307
    .line 308
    iput-object v10, v0, Lokhttp3/Response$Builder;->e:Lokhttp3/Handshake;

    .line 309
    .line 310
    iput-wide v8, v0, Lokhttp3/Response$Builder;->l:J

    .line 311
    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 313
    .line 314
    .line 315
    move-result-wide v10

    .line 316
    iput-wide v10, v0, Lokhttp3/Response$Builder;->m:J

    .line 317
    .line 318
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    iget v10, v0, Lokhttp3/Response;->d:I

    .line 323
    .line 324
    goto :goto_b

    .line 325
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    const/16 v3, 0x65

    .line 329
    .line 330
    if-ne v10, v3, :cond_b

    .line 331
    .line 332
    const/4 v3, 0x1

    .line 333
    goto :goto_e

    .line 334
    :cond_b
    const/4 v3, 0x0

    .line 335
    :goto_e
    if-eqz v3, :cond_e

    .line 336
    .line 337
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    iget-object v4, v4, Lokhttp3/internal/connection/RealConnection;->t:Lokhttp3/internal/http2/Http2Connection;

    .line 342
    .line 343
    if-eqz v4, :cond_c

    .line 344
    .line 345
    const/4 v4, 0x1

    .line 346
    goto :goto_f

    .line 347
    :cond_c
    const/4 v4, 0x0

    .line 348
    :goto_f
    if-nez v4, :cond_d

    .line 349
    .line 350
    goto :goto_10

    .line 351
    :cond_d
    new-instance v0, Ljava/net/ProtocolException;

    .line 352
    .line 353
    const-string v1, "Unexpected 101 code on HTTP/2 connection"

    .line 354
    .line 355
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_e
    :goto_10
    if-eqz v3, :cond_f

    .line 360
    .line 361
    invoke-static {v13, v0}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    invoke-virtual {v15, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    if-eqz v3, :cond_f

    .line 370
    .line 371
    const/4 v3, 0x1

    .line 372
    goto :goto_11

    .line 373
    :cond_f
    const/4 v3, 0x0

    .line 374
    :goto_11
    if-eqz v14, :cond_11

    .line 375
    .line 376
    if-eqz v3, :cond_11

    .line 377
    .line 378
    invoke-virtual {v0}, Lokhttp3/Response;->g()Lokhttp3/Response$Builder;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    new-instance v3, Lokhttp3/internal/UnreadableResponseBody;

    .line 383
    .line 384
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->j()Lokhttp3/MediaType;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->h()J

    .line 389
    .line 390
    .line 391
    move-result-wide v8

    .line 392
    invoke-direct {v3, v4, v8, v9}, Lokhttp3/internal/UnreadableResponseBody;-><init>(Lokhttp3/MediaType;J)V

    .line 393
    .line 394
    .line 395
    iput-object v3, v0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 396
    .line 397
    const/4 v12, 0x1

    .line 398
    iput-boolean v12, v2, Lokhttp3/internal/connection/Exchange;->e:Z

    .line 399
    .line 400
    iget-boolean v3, v5, Lokhttp3/internal/connection/RealCall;->q:Z

    .line 401
    .line 402
    if-nez v3, :cond_10

    .line 403
    .line 404
    iput-boolean v12, v5, Lokhttp3/internal/connection/RealCall;->q:Z

    .line 405
    .line 406
    iget-object v3, v5, Lokhttp3/internal/connection/RealCall;->e:Lokhttp3/internal/connection/RealCall$timeout$1;

    .line 407
    .line 408
    invoke-virtual {v3}, Lc70;->i()Z

    .line 409
    .line 410
    .line 411
    invoke-interface/range {v16 .. v16}, Lokhttp3/internal/http/ExchangeCodec;->h()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    check-cast v3, Lokhttp3/internal/connection/RealConnection;

    .line 419
    .line 420
    iget-object v4, v3, Lokhttp3/internal/connection/RealConnection;->f:Ljava/net/Socket;

    .line 421
    .line 422
    const/4 v11, 0x0

    .line 423
    invoke-virtual {v4, v11}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealConnection;->f()V

    .line 427
    .line 428
    .line 429
    new-instance v3, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;

    .line 430
    .line 431
    invoke-direct {v3, v2}, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;-><init>(Lokhttp3/internal/connection/Exchange;)V

    .line 432
    .line 433
    .line 434
    iput-object v3, v0, Lokhttp3/Response$Builder;->h:Lwi7;

    .line 435
    .line 436
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    goto :goto_12

    .line 441
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 442
    .line 443
    const-string v1, "Check failed."

    .line 444
    .line 445
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw v0

    .line 449
    :cond_11
    if-eqz v14, :cond_12

    .line 450
    .line 451
    const/4 v3, 0x0

    .line 452
    const/4 v11, 0x0

    .line 453
    const/4 v12, 0x1

    .line 454
    invoke-virtual {v5, v2, v12, v11, v3}, Lokhttp3/internal/connection/RealCall;->e(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 455
    .line 456
    .line 457
    :cond_12
    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/Exchange;->d(Lokhttp3/Response;)Lokhttp3/internal/http/RealResponseBody;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v0}, Lokhttp3/Response;->g()Lokhttp3/Response$Builder;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    iput-object v2, v0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 466
    .line 467
    new-instance v2, Lokhttp3/internal/http/CallServerInterceptor$intercept$1;

    .line 468
    .line 469
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 470
    .line 471
    .line 472
    iput-object v2, v0, Lokhttp3/Response$Builder;->o:Lokhttp3/TrailersSource;

    .line 473
    .line 474
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    :goto_12
    iget-object v2, v0, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 479
    .line 480
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    .line 482
    .line 483
    iget-object v2, v2, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 484
    .line 485
    invoke-virtual {v2, v13}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-nez v2, :cond_13

    .line 494
    .line 495
    invoke-static {v13, v0}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    if-eqz v1, :cond_14

    .line 504
    .line 505
    :cond_13
    invoke-interface/range {v16 .. v16}, Lokhttp3/internal/http/ExchangeCodec;->h()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->f()V

    .line 510
    .line 511
    .line 512
    :cond_14
    const/16 v1, 0xcc

    .line 513
    .line 514
    if-eq v10, v1, :cond_15

    .line 515
    .line 516
    const/16 v1, 0xcd

    .line 517
    .line 518
    if-ne v10, v1, :cond_16

    .line 519
    .line 520
    :cond_15
    iget-object v1, v0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 521
    .line 522
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->h()J

    .line 523
    .line 524
    .line 525
    move-result-wide v1

    .line 526
    const-wide/16 v3, 0x0

    .line 527
    .line 528
    cmp-long v1, v1, v3

    .line 529
    .line 530
    if-gtz v1, :cond_17

    .line 531
    .line 532
    :cond_16
    return-object v0

    .line 533
    :cond_17
    new-instance v1, Ljava/net/ProtocolException;

    .line 534
    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .line 539
    .line 540
    const-string v3, "HTTP "

    .line 541
    .line 542
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    const-string v3, " had non-zero Content-Length: "

    .line 549
    .line 550
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    iget-object v0, v0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 554
    .line 555
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->h()J

    .line 556
    .line 557
    .line 558
    move-result-wide v3

    .line 559
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    throw v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 570
    :goto_13
    if-eqz v7, :cond_18

    .line 571
    .line 572
    invoke-static {v7, v0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 573
    .line 574
    .line 575
    throw v7

    .line 576
    :cond_18
    throw v0

    .line 577
    :cond_19
    throw v0

    .line 578
    :cond_1a
    throw v0
.end method
