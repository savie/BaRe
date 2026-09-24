.class public final Lbn0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic b:Ljava/lang/StringBuilder;

.field public final synthetic c:Lv64$h;

.field public final synthetic d:Lokhttp3/Request;

.field public final synthetic e:Lcn0;


# direct methods
.method public constructor <init>(Lcn0;Ljava/util/concurrent/CompletableFuture;Ljava/lang/StringBuilder;Lv64$h;Lokhttp3/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbn0;->e:Lcn0;

    .line 5
    .line 6
    iput-object p2, p0, Lbn0;->a:Ljava/util/concurrent/CompletableFuture;

    .line 7
    .line 8
    iput-object p3, p0, Lbn0;->b:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    iput-object p4, p0, Lbn0;->c:Lv64$h;

    .line 11
    .line 12
    iput-object p5, p0, Lbn0;->d:Lokhttp3/Request;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lbn0;->a:Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lokhttp3/Response;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lbn0;->e:Lcn0;

    .line 6
    .line 7
    iget-object v2, v2, Lcn0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    iget-object v3, v0, Lbn0;->c:Lv64$h;

    .line 10
    .line 11
    iget-object v4, v3, Lv64$h;->g:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, v3, Lv64$h;->b:Lv64$d;

    .line 14
    .line 15
    iget-object v6, v1, Lokhttp3/Response;->b:Lokhttp3/Protocol;

    .line 16
    .line 17
    iget-object v7, v1, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 18
    .line 19
    iget-object v6, v6, Lokhttp3/Protocol;->a:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 22
    .line 23
    invoke-virtual {v6, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    iget v8, v1, Lokhttp3/Response;->d:I

    .line 28
    .line 29
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    iget-object v10, v1, Lokhttp3/Response;->c:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v11, v1, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 36
    .line 37
    invoke-virtual {v11}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v12

    .line 41
    filled-new-array {v6, v9, v10, v12}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const-string v9, "%s %d %s%n%s"

    .line 46
    .line 47
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const-string v9, "\n\n"

    .line 52
    .line 53
    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    const-string v12, "\n"

    .line 58
    .line 59
    if-nez v10, :cond_1

    .line 60
    .line 61
    invoke-virtual {v6, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-eqz v10, :cond_0

    .line 66
    .line 67
    move-object v9, v12

    .line 68
    :cond_0
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    :cond_1
    iget-object v9, v0, Lbn0;->b:Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-boolean v6, v1, Lokhttp3/Response;->H:Z

    .line 78
    .line 79
    iget-object v10, v0, Lbn0;->a:Ljava/util/concurrent/CompletableFuture;

    .line 80
    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    invoke-virtual {v10, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    :try_start_0
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->close()V

    .line 92
    .line 93
    .line 94
    const-string v13, ""

    .line 95
    .line 96
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    if-eqz v14, :cond_3

    .line 101
    .line 102
    sget-object v14, Lv64$d;->b:Lv64$d;

    .line 103
    .line 104
    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    if-nez v14, :cond_4

    .line 109
    .line 110
    :cond_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    if-nez v14, :cond_4

    .line 118
    .line 119
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :cond_4
    const-string v14, "----------END-HTTP----------"

    .line 123
    .line 124
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v12, "Content-Type"

    .line 131
    .line 132
    invoke-virtual {v11, v12}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    sget-object v14, Lv64$d;->b:Lv64$d;

    .line 137
    .line 138
    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v15

    .line 142
    move-object/from16 v16, v7

    .line 143
    .line 144
    const-string v7, "server failed with HTTP status code "

    .line 145
    .line 146
    if-nez v15, :cond_8

    .line 147
    .line 148
    if-eqz v12, :cond_5

    .line 149
    .line 150
    const-string v15, ";"

    .line 151
    .line 152
    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v15

    .line 160
    move-object/from16 v18, v9

    .line 161
    .line 162
    const-string v9, "application/xml"

    .line 163
    .line 164
    invoke-interface {v15, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    if-nez v9, :cond_9

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_5
    move-object/from16 v18, v9

    .line 172
    .line 173
    :goto_0
    const/16 v0, 0x130

    .line 174
    .line 175
    if-ne v8, v0, :cond_6

    .line 176
    .line 177
    invoke-virtual/range {v16 .. v16}, Lokhttp3/ResponseBody;->h()J

    .line 178
    .line 179
    .line 180
    move-result-wide v0

    .line 181
    const-wide/16 v2, 0x0

    .line 182
    .line 183
    cmp-long v0, v0, v2

    .line 184
    .line 185
    if-nez v0, :cond_6

    .line 186
    .line 187
    new-instance v0, Lf87;

    .line 188
    .line 189
    invoke-static {v8, v7}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-direct {v0, v1, v8, v2}, Lf87;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v10, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 201
    .line 202
    .line 203
    :cond_6
    new-instance v0, Lhg4;

    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    const/16 v2, 0x400

    .line 210
    .line 211
    if-le v1, v2, :cond_7

    .line 212
    .line 213
    :goto_1
    const/4 v1, 0x0

    .line 214
    goto :goto_2

    .line 215
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    goto :goto_1

    .line 220
    :goto_2
    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-direct {v0, v8, v12, v1, v2}, Lhg4;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_8
    move-object/from16 v18, v9

    .line 236
    .line 237
    :cond_9
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    if-nez v9, :cond_a

    .line 242
    .line 243
    :try_start_1
    const-class v9, Lcy2;

    .line 244
    .line 245
    invoke-static {v9, v6}, Lby8;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    check-cast v6, Lcy2;
    :try_end_1
    .catch Lcy8; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v10, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :cond_a
    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    if-nez v9, :cond_b

    .line 262
    .line 263
    new-instance v0, Lhg4;

    .line 264
    .line 265
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-direct {v0, v8, v12, v6, v1}, Lhg4;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v10, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_b
    const/4 v6, 0x0

    .line 277
    :goto_3
    const-string v9, "RetryHead"

    .line 278
    .line 279
    const-string v12, "NoSuchBucket"

    .line 280
    .line 281
    if-nez v6, :cond_19

    .line 282
    .line 283
    const/16 v6, 0x190

    .line 284
    .line 285
    const/16 v15, 0x133

    .line 286
    .line 287
    const/16 v13, 0x12d

    .line 288
    .line 289
    if-eq v8, v13, :cond_13

    .line 290
    .line 291
    if-eq v8, v15, :cond_13

    .line 292
    .line 293
    if-eq v8, v6, :cond_13

    .line 294
    .line 295
    const/16 v5, 0x199

    .line 296
    .line 297
    const-string v6, "Bucket does not exist"

    .line 298
    .line 299
    if-eq v8, v5, :cond_11

    .line 300
    .line 301
    const/16 v5, 0x19c

    .line 302
    .line 303
    if-eq v8, v5, :cond_10

    .line 304
    .line 305
    const/16 v5, 0x1a0

    .line 306
    .line 307
    if-eq v8, v5, :cond_f

    .line 308
    .line 309
    const/16 v5, 0x1f5

    .line 310
    .line 311
    if-eq v8, v5, :cond_e

    .line 312
    .line 313
    packed-switch v8, :pswitch_data_0

    .line 314
    .line 315
    .line 316
    new-instance v0, Lf87;

    .line 317
    .line 318
    invoke-static {v8, v7}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-direct {v0, v1, v8, v2}, Lf87;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v10, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :pswitch_0
    iget-object v5, v3, Lv64$h;->i:Ljava/lang/String;

    .line 334
    .line 335
    if-eqz v5, :cond_c

    .line 336
    .line 337
    const-string v5, "NoSuchKey"

    .line 338
    .line 339
    const-string v6, "Object does not exist"

    .line 340
    .line 341
    :goto_4
    move-object/from16 v20, v5

    .line 342
    .line 343
    move-object/from16 v21, v6

    .line 344
    .line 345
    goto/16 :goto_8

    .line 346
    .line 347
    :cond_c
    if-eqz v4, :cond_d

    .line 348
    .line 349
    :goto_5
    move-object/from16 v21, v6

    .line 350
    .line 351
    move-object/from16 v20, v12

    .line 352
    .line 353
    goto/16 :goto_8

    .line 354
    .line 355
    :cond_d
    const-string v5, "ResourceNotFound"

    .line 356
    .line 357
    const-string v6, "Request resource not found"

    .line 358
    .line 359
    goto :goto_4

    .line 360
    :pswitch_1
    const-string v5, "AccessDenied"

    .line 361
    .line 362
    const-string v6, "Access denied"

    .line 363
    .line 364
    goto :goto_4

    .line 365
    :cond_e
    :pswitch_2
    const-string v5, "MethodNotAllowed"

    .line 366
    .line 367
    const-string v6, "The specified method is not allowed against this resource"

    .line 368
    .line 369
    goto :goto_4

    .line 370
    :cond_f
    const-string v5, "InvalidRange"

    .line 371
    .line 372
    const-string v6, "The requested range cannot be satisfied"

    .line 373
    .line 374
    goto :goto_4

    .line 375
    :cond_10
    const-string v5, "PreconditionFailed"

    .line 376
    .line 377
    const-string v6, "At least one of the preconditions you specified did not hold"

    .line 378
    .line 379
    goto :goto_4

    .line 380
    :cond_11
    if-eqz v4, :cond_12

    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_12
    const-string v5, "ResourceConflict"

    .line 384
    .line 385
    const-string v6, "Request resource conflicts"

    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_13
    sget v7, Lcn0;->k:I

    .line 389
    .line 390
    if-ne v8, v13, :cond_14

    .line 391
    .line 392
    const-string v6, "PermanentRedirect"

    .line 393
    .line 394
    const-string v7, "Moved Permanently"

    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_14
    if-ne v8, v15, :cond_15

    .line 398
    .line 399
    const-string v6, "Redirect"

    .line 400
    .line 401
    const-string v7, "Temporary redirect"

    .line 402
    .line 403
    goto :goto_6

    .line 404
    :cond_15
    if-ne v8, v6, :cond_16

    .line 405
    .line 406
    const-string v6, "BadRequest"

    .line 407
    .line 408
    const-string v7, "Bad request"

    .line 409
    .line 410
    goto :goto_6

    .line 411
    :cond_16
    const/4 v6, 0x0

    .line 412
    const/4 v7, 0x0

    .line 413
    :goto_6
    const-string v8, "x-amz-bucket-region"

    .line 414
    .line 415
    invoke-virtual {v11, v8}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v8

    .line 419
    if-eqz v7, :cond_17

    .line 420
    .line 421
    if-eqz v8, :cond_17

    .line 422
    .line 423
    const-string v11, ". Use region "

    .line 424
    .line 425
    invoke-static {v7, v11, v8}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    :cond_17
    if-eqz v8, :cond_18

    .line 430
    .line 431
    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    if-eqz v5, :cond_18

    .line 436
    .line 437
    if-eqz v4, :cond_18

    .line 438
    .line 439
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    if-eqz v5, :cond_18

    .line 444
    .line 445
    move-object v6, v9

    .line 446
    const/4 v13, 0x0

    .line 447
    goto :goto_7

    .line 448
    :cond_18
    move-object v13, v7

    .line 449
    :goto_7
    filled-new-array {v6, v13}, [Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    const/16 v17, 0x0

    .line 454
    .line 455
    aget-object v6, v5, v17

    .line 456
    .line 457
    const/4 v7, 0x1

    .line 458
    aget-object v5, v5, v7

    .line 459
    .line 460
    move-object/from16 v21, v5

    .line 461
    .line 462
    move-object/from16 v20, v6

    .line 463
    .line 464
    :goto_8
    new-instance v19, Lcy2;

    .line 465
    .line 466
    iget-object v5, v3, Lv64$h;->g:Ljava/lang/String;

    .line 467
    .line 468
    iget-object v3, v3, Lv64$h;->i:Ljava/lang/String;

    .line 469
    .line 470
    iget-object v0, v0, Lbn0;->d:Lokhttp3/Request;

    .line 471
    .line 472
    iget-object v0, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 473
    .line 474
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v24

    .line 478
    const-string v0, "x-amz-request-id"

    .line 479
    .line 480
    invoke-static {v0, v1}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v25

    .line 484
    const-string v0, "x-amz-id-2"

    .line 485
    .line 486
    invoke-static {v0, v1}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v26

    .line 490
    move-object/from16 v23, v3

    .line 491
    .line 492
    move-object/from16 v22, v5

    .line 493
    .line 494
    invoke-direct/range {v19 .. v26}, Lcy2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    move-object/from16 v6, v19

    .line 498
    .line 499
    :cond_19
    invoke-virtual {v6}, Lcy2;->b()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-nez v0, :cond_1a

    .line 508
    .line 509
    invoke-virtual {v6}, Lcy2;->b()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-eqz v0, :cond_1b

    .line 518
    .line 519
    :cond_1a
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    :cond_1b
    new-instance v0, Ldy2;

    .line 523
    .line 524
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    invoke-direct {v0, v6, v1, v2}, Ldy2;-><init>(Lcy2;Lokhttp3/Response;Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v10, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 532
    .line 533
    .line 534
    return-void

    .line 535
    :catchall_0
    move-exception v0

    .line 536
    move-object/from16 v16, v7

    .line 537
    .line 538
    move-object v1, v0

    .line 539
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 540
    :catchall_1
    move-exception v0

    .line 541
    move-object v2, v0

    .line 542
    if-eqz v16, :cond_1c

    .line 543
    .line 544
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lokhttp3/ResponseBody;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 545
    .line 546
    .line 547
    goto :goto_9

    .line 548
    :catchall_2
    move-exception v0

    .line 549
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 550
    .line 551
    .line 552
    :cond_1c
    :goto_9
    throw v2

    .line 553
    :pswitch_data_0
    .packed-switch 0x193
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
