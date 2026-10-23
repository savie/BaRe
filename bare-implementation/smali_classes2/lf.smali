.class public final synthetic Llf;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Llf;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Llf;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Llf;->a:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v5, 0x1

    .line 7
    const/4 v6, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Loi5;

    .line 15
    .line 16
    iget-object v0, v1, Loi5;->H:Lgv7;

    .line 17
    .line 18
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Number;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v2, "Check failed."

    .line 29
    .line 30
    iget-wide v8, v1, Loi5;->c:J

    .line 31
    .line 32
    const-wide/32 v10, 0x7fffffff

    .line 33
    .line 34
    .line 35
    cmp-long v10, v8, v10

    .line 36
    .line 37
    if-lez v10, :cond_0

    .line 38
    .line 39
    const v10, 0x7fffffff

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    long-to-int v10, v8

    .line 44
    :goto_0
    if-ge v10, v5, :cond_1

    .line 45
    .line 46
    move v10, v5

    .line 47
    :cond_1
    if-le v0, v10, :cond_2

    .line 48
    .line 49
    move v0, v10

    .line 50
    :cond_2
    int-to-long v10, v0

    .line 51
    div-long v10, v8, v10

    .line 52
    .line 53
    new-instance v12, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    const-wide/16 v15, 0x0

    .line 59
    .line 60
    :goto_1
    const-wide/16 v19, 0x1

    .line 61
    .line 62
    if-ge v6, v0, :cond_4

    .line 63
    .line 64
    add-int/lit8 v13, v0, -0x1

    .line 65
    .line 66
    if-ne v6, v13, :cond_3

    .line 67
    .line 68
    sub-long v13, v8, v19

    .line 69
    .line 70
    :goto_2
    move-wide/from16 v17, v13

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    add-long v13, v15, v10

    .line 74
    .line 75
    sub-long v13, v13, v19

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :goto_3
    new-instance v13, Lni5;

    .line 79
    .line 80
    add-int/lit8 v14, v6, 0x1

    .line 81
    .line 82
    invoke-direct/range {v13 .. v18}, Lni5;-><init>(IJJ)V

    .line 83
    .line 84
    .line 85
    move-wide/from16 v3, v17

    .line 86
    .line 87
    move-wide/from16 v17, v8

    .line 88
    .line 89
    move-wide v7, v3

    .line 90
    move-object v6, v13

    .line 91
    move-wide v3, v15

    .line 92
    const-wide/16 v15, 0x0

    .line 93
    .line 94
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    iget-object v6, v1, Loi5;->k:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v9, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v13, "Chunk #"

    .line 102
    .line 103
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v13, ": Range: bytes="

    .line 110
    .line 111
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v3, "-"

    .line 118
    .line 119
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    add-long v3, v7, v19

    .line 133
    .line 134
    move-wide v15, v3

    .line 135
    move v6, v14

    .line 136
    move-wide/from16 v8, v17

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    move-wide/from16 v17, v8

    .line 140
    .line 141
    const-wide/16 v15, 0x0

    .line 142
    .line 143
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_10

    .line 148
    .line 149
    invoke-static {v12}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lni5;

    .line 154
    .line 155
    iget-wide v3, v0, Lni5;->b:J

    .line 156
    .line 157
    cmp-long v0, v3, v15

    .line 158
    .line 159
    if-nez v0, :cond_f

    .line 160
    .line 161
    invoke-static {v12}, Lel1;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lni5;

    .line 166
    .line 167
    iget-wide v3, v0, Lni5;->c:J

    .line 168
    .line 169
    sub-long v8, v17, v19

    .line 170
    .line 171
    cmp-long v0, v3, v8

    .line 172
    .line 173
    if-nez v0, :cond_e

    .line 174
    .line 175
    iget-boolean v0, v1, Loi5;->d:Z

    .line 176
    .line 177
    if-eqz v0, :cond_9

    .line 178
    .line 179
    iget-object v0, v1, Loi5;->x:Lq63;

    .line 180
    .line 181
    invoke-virtual {v0}, Lq63;->j()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_9

    .line 186
    .line 187
    iget-object v0, v1, Loi5;->y:Lq63;

    .line 188
    .line 189
    invoke-virtual {v0}, Lq63;->j()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_9

    .line 194
    .line 195
    iget-object v0, v1, Loi5;->G:Lgv7;

    .line 196
    .line 197
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_9

    .line 208
    .line 209
    iget-object v2, v1, Loi5;->p:Ljava/lang/Object;

    .line 210
    .line 211
    monitor-enter v2

    .line 212
    :try_start_0
    iget-object v0, v1, Loi5;->x:Lq63;

    .line 213
    .line 214
    invoke-virtual {v0}, Lq63;->j()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_8

    .line 219
    .line 220
    iget-object v0, v1, Loi5;->y:Lq63;

    .line 221
    .line 222
    invoke-virtual {v0}, Lq63;->j()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_5

    .line 227
    .line 228
    goto/16 :goto_7

    .line 229
    .line 230
    :cond_5
    new-instance v0, Ljava/util/Properties;

    .line 231
    .line 232
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .line 234
    .line 235
    :try_start_1
    iget-object v3, v1, Loi5;->y:Lq63;

    .line 236
    .line 237
    invoke-virtual {v3, v5}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 238
    .line 239
    .line 240
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 242
    .line 243
    .line 244
    :try_start_3
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    .line 246
    .line 247
    :try_start_4
    const-string v3, "version"

    .line 248
    .line 249
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    const-string v4, "1"

    .line 254
    .line 255
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-eqz v3, :cond_8

    .line 260
    .line 261
    const-string v3, "cacheKeyHash"

    .line 262
    .line 263
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    iget-object v4, v1, Loi5;->q:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-eqz v3, :cond_8

    .line 274
    .line 275
    const-string v3, "outputPath"

    .line 276
    .line 277
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    iget-object v4, v1, Loi5;->b:Lq63;

    .line 282
    .line 283
    invoke-virtual {v4}, Lq63;->v()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_8

    .line 292
    .line 293
    const-string v3, "totalBytes"

    .line 294
    .line 295
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    iget-wide v4, v1, Loi5;->c:J

    .line 300
    .line 301
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_8

    .line 310
    .line 311
    const-string v3, "chunkCount"

    .line 312
    .line 313
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    if-eqz v3, :cond_8

    .line 330
    .line 331
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-eqz v3, :cond_6

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-eqz v4, :cond_7

    .line 347
    .line 348
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    check-cast v4, Lni5;

    .line 353
    .line 354
    iget v5, v4, Lni5;->a:I

    .line 355
    .line 356
    new-instance v6, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    const-string v7, "chunk."

    .line 362
    .line 363
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v5, ".rangeStart"

    .line 370
    .line 371
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    iget-wide v6, v4, Lni5;->b:J

    .line 383
    .line 384
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    invoke-static {v5, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    if-eqz v5, :cond_8

    .line 393
    .line 394
    iget v5, v4, Lni5;->a:I

    .line 395
    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .line 400
    .line 401
    const-string v7, "chunk."

    .line 402
    .line 403
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v5, ".rangeEnd"

    .line 410
    .line 411
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    iget-wide v6, v4, Lni5;->c:J

    .line 423
    .line 424
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    invoke-static {v5, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 432
    if-eqz v4, :cond_8

    .line 433
    .line 434
    goto :goto_4

    .line 435
    :catchall_0
    move-exception v0

    .line 436
    goto :goto_9

    .line 437
    :cond_7
    :goto_5
    move-object v7, v0

    .line 438
    goto :goto_8

    .line 439
    :catch_0
    move-exception v0

    .line 440
    goto :goto_6

    .line 441
    :catchall_1
    move-exception v0

    .line 442
    move-object v4, v0

    .line 443
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 444
    :catchall_2
    move-exception v0

    .line 445
    :try_start_6
    invoke-static {v3, v4}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 446
    .line 447
    .line 448
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 449
    :goto_6
    :try_start_7
    iget-object v3, v1, Loi5;->k:Ljava/lang/String;

    .line 450
    .line 451
    const-string v4, "Unable to read download manifest. Restarting download."

    .line 452
    .line 453
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 454
    .line 455
    .line 456
    :cond_8
    :goto_7
    const/4 v7, 0x0

    .line 457
    :goto_8
    monitor-exit v2

    .line 458
    goto :goto_a

    .line 459
    :goto_9
    monitor-exit v2

    .line 460
    throw v0

    .line 461
    :cond_9
    const/4 v7, 0x0

    .line 462
    :goto_a
    if-nez v7, :cond_a

    .line 463
    .line 464
    :try_start_8
    iget-object v0, v1, Loi5;->x:Lq63;

    .line 465
    .line 466
    invoke-virtual {v0}, Lq63;->h()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 467
    .line 468
    .line 469
    :catch_1
    :try_start_9
    iget-object v0, v1, Loi5;->y:Lq63;

    .line 470
    .line 471
    invoke-virtual {v0}, Lq63;->h()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 472
    .line 473
    .line 474
    :catch_2
    invoke-virtual {v1, v12}, Loi5;->h(Ljava/util/List;)V

    .line 475
    .line 476
    .line 477
    goto :goto_d

    .line 478
    :cond_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    if-eqz v2, :cond_d

    .line 487
    .line 488
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    check-cast v2, Lni5;

    .line 493
    .line 494
    iget v3, v2, Lni5;->a:I

    .line 495
    .line 496
    new-instance v4, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    const-string v5, "chunk."

    .line 499
    .line 500
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    const-string v3, ".completed"

    .line 507
    .line 508
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    invoke-virtual {v7, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    if-eqz v3, :cond_c

    .line 520
    .line 521
    invoke-static {v3}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    if-eqz v3, :cond_c

    .line 526
    .line 527
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 528
    .line 529
    .line 530
    move-result-wide v3

    .line 531
    goto :goto_c

    .line 532
    :cond_c
    move-wide v3, v15

    .line 533
    :goto_c
    cmp-long v5, v15, v3

    .line 534
    .line 535
    if-gtz v5, :cond_b

    .line 536
    .line 537
    iget-wide v5, v2, Lni5;->e:J

    .line 538
    .line 539
    cmp-long v5, v3, v5

    .line 540
    .line 541
    if-gtz v5, :cond_b

    .line 542
    .line 543
    iget-object v2, v2, Lni5;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 544
    .line 545
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 546
    .line 547
    .line 548
    goto :goto_b

    .line 549
    :cond_d
    invoke-virtual {v1, v12}, Loi5;->h(Ljava/util/List;)V

    .line 550
    .line 551
    .line 552
    :goto_d
    move-object v7, v12

    .line 553
    goto :goto_f

    .line 554
    :cond_e
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    :goto_e
    const/4 v7, 0x0

    .line 558
    goto :goto_f

    .line 559
    :cond_f
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    goto :goto_e

    .line 563
    :cond_10
    const-string v0, "No download chunks prepared."

    .line 564
    .line 565
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    goto :goto_e

    .line 569
    :goto_f
    return-object v7

    .line 570
    :pswitch_0
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 573
    .line 574
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 575
    .line 576
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->X()Lzx2;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    iget-object v0, v0, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 581
    .line 582
    return-object v0

    .line 583
    :pswitch_1
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v0, Lis4;

    .line 586
    .line 587
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 592
    .line 593
    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    return-object v0

    .line 598
    :pswitch_2
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 599
    .line 600
    check-cast v0, Lfs4;

    .line 601
    .line 602
    const-string v1, "extend_data_sync_fgs_timeout_for_schedules"

    .line 603
    .line 604
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 612
    .line 613
    return-object v0

    .line 614
    :pswitch_3
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 617
    .line 618
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 619
    .line 620
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Q()Lrr4;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    iget-object v0, v0, Lrr4;->c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 625
    .line 626
    return-object v0

    .line 627
    :pswitch_4
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 628
    .line 629
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 630
    .line 631
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 632
    .line 633
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->N()Lyq4;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    iget-object v0, v0, Lyq4;->e:Lcom/google/android/material/textfield/TextInputEditText;

    .line 638
    .line 639
    return-object v0

    .line 640
    :pswitch_5
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 641
    .line 642
    check-cast v0, Lc64;

    .line 643
    .line 644
    sget-object v1, Lc64;->l:Lix6;

    .line 645
    .line 646
    sget-object v1, Llz3;->d:Llz3;

    .line 647
    .line 648
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 649
    .line 650
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    sget v3, Lmz3;->a:I

    .line 655
    .line 656
    invoke-virtual {v1, v2, v3}, Lmz3;->c(Landroid/content/Context;I)I

    .line 657
    .line 658
    .line 659
    move-result v1

    .line 660
    if-nez v1, :cond_11

    .line 661
    .line 662
    move v2, v5

    .line 663
    goto :goto_10

    .line 664
    :cond_11
    move v2, v6

    .line 665
    :goto_10
    if-nez v2, :cond_12

    .line 666
    .line 667
    sget v3, Lu04;->e:I

    .line 668
    .line 669
    invoke-static {v1}, Lhs1;->q(I)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 674
    .line 675
    .line 676
    move-result v3

    .line 677
    if-lez v3, :cond_12

    .line 678
    .line 679
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 680
    .line 681
    const-string v8, "GmsUtil"

    .line 682
    .line 683
    const-string v3, "isGooglePlayServicesAvailable: "

    .line 684
    .line 685
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v9

    .line 689
    const/4 v11, 0x4

    .line 690
    const/4 v12, 0x0

    .line 691
    const/4 v10, 0x0

    .line 692
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 693
    .line 694
    .line 695
    :cond_12
    if-eqz v2, :cond_14

    .line 696
    .line 697
    sget-object v1, Lwq0;->a:Lwq0;

    .line 698
    .line 699
    invoke-static {}, Lwq0;->c()Ljava/util/List;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    invoke-static {v1}, Lwq0;->a(Ljava/util/List;)Lwb6;

    .line 704
    .line 705
    .line 706
    move-result-object v13

    .line 707
    if-nez v13, :cond_13

    .line 708
    .line 709
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 710
    .line 711
    iget-object v8, v0, La55;->b:Ljava/lang/String;

    .line 712
    .line 713
    const-string v9, "Purchases not available from Google Play"

    .line 714
    .line 715
    const/4 v11, 0x4

    .line 716
    const/4 v12, 0x0

    .line 717
    const/4 v10, 0x0

    .line 718
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 719
    .line 720
    .line 721
    :cond_13
    move-object/from16 v22, v13

    .line 722
    .line 723
    goto :goto_11

    .line 724
    :cond_14
    const/16 v22, 0x0

    .line 725
    .line 726
    :goto_11
    if-eqz v2, :cond_15

    .line 727
    .line 728
    sget-object v1, Lwq0;->a:Lwq0;

    .line 729
    .line 730
    invoke-static {}, Lre3;->k()Lzc2;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    const-string v3, "transactions"

    .line 735
    .line 736
    invoke-virtual {v1, v3}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    const-string v3, "premium"

    .line 741
    .line 742
    invoke-virtual {v1, v3}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    invoke-static {v1, v5}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    instance-of v3, v1, Lxe3;

    .line 751
    .line 752
    if-eqz v3, :cond_15

    .line 753
    .line 754
    check-cast v1, Lxe3;

    .line 755
    .line 756
    iget-object v1, v1, Lxe3;->n:Leb2;

    .line 757
    .line 758
    const-class v3, Lwb6;

    .line 759
    .line 760
    invoke-virtual {v1, v3}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    move-object v13, v1

    .line 765
    check-cast v13, Lwb6;

    .line 766
    .line 767
    goto :goto_12

    .line 768
    :cond_15
    const/4 v13, 0x0

    .line 769
    :goto_12
    if-eqz v2, :cond_16

    .line 770
    .line 771
    if-nez v22, :cond_16

    .line 772
    .line 773
    if-nez v13, :cond_16

    .line 774
    .line 775
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 776
    .line 777
    iget-object v8, v0, La55;->b:Ljava/lang/String;

    .line 778
    .line 779
    const-string v9, "No purchases found"

    .line 780
    .line 781
    const/4 v11, 0x4

    .line 782
    const/4 v12, 0x0

    .line 783
    const/4 v10, 0x0

    .line 784
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 785
    .line 786
    .line 787
    :cond_16
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 788
    .line 789
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getV()J

    .line 790
    .line 791
    .line 792
    move-result-wide v1

    .line 793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 794
    .line 795
    .line 796
    move-result-wide v3

    .line 797
    sub-long v1, v3, v1

    .line 798
    .line 799
    const-wide/32 v7, 0x36ee80

    .line 800
    .line 801
    .line 802
    cmp-long v1, v1, v7

    .line 803
    .line 804
    if-ltz v1, :cond_17

    .line 805
    .line 806
    goto :goto_13

    .line 807
    :cond_17
    move v5, v6

    .line 808
    :goto_13
    if-nez v5, :cond_1c

    .line 809
    .line 810
    if-eqz v22, :cond_18

    .line 811
    .line 812
    invoke-virtual/range {v22 .. v22}, Lwb6;->getPurchaseToken()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    goto :goto_14

    .line 817
    :cond_18
    const/4 v1, 0x0

    .line 818
    :goto_14
    if-eqz v13, :cond_19

    .line 819
    .line 820
    invoke-virtual {v13}, Lwb6;->getPurchaseToken()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    goto :goto_15

    .line 825
    :cond_19
    const/4 v2, 0x0

    .line 826
    :goto_15
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v1

    .line 830
    if-eqz v1, :cond_1c

    .line 831
    .line 832
    if-eqz v22, :cond_1a

    .line 833
    .line 834
    invoke-virtual/range {v22 .. v22}, Lwb6;->getPurchaseState()Ljava/lang/Integer;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    goto :goto_16

    .line 839
    :cond_1a
    const/4 v1, 0x0

    .line 840
    :goto_16
    if-eqz v13, :cond_1b

    .line 841
    .line 842
    invoke-virtual {v13}, Lwb6;->getPurchaseState()Ljava/lang/Integer;

    .line 843
    .line 844
    .line 845
    move-result-object v2

    .line 846
    goto :goto_17

    .line 847
    :cond_1b
    const/4 v2, 0x0

    .line 848
    :goto_17
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v1

    .line 852
    if-nez v1, :cond_21

    .line 853
    .line 854
    :cond_1c
    invoke-virtual {v0, v3, v4}, Lorg/swiftapps/swiftbackup/common/V;->setV(J)V

    .line 855
    .line 856
    .line 857
    if-eqz v22, :cond_1d

    .line 858
    .line 859
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 860
    .line 861
    .line 862
    move-result-object v33

    .line 863
    const/16 v34, 0x3ff

    .line 864
    .line 865
    const/16 v35, 0x0

    .line 866
    .line 867
    const/16 v23, 0x0

    .line 868
    .line 869
    const/16 v24, 0x0

    .line 870
    .line 871
    const/16 v25, 0x0

    .line 872
    .line 873
    const/16 v26, 0x0

    .line 874
    .line 875
    const/16 v27, 0x0

    .line 876
    .line 877
    const/16 v28, 0x0

    .line 878
    .line 879
    const/16 v29, 0x0

    .line 880
    .line 881
    const/16 v30, 0x0

    .line 882
    .line 883
    const/16 v31, 0x0

    .line 884
    .line 885
    const/16 v32, 0x0

    .line 886
    .line 887
    invoke-static/range {v22 .. v35}, Lwb6;->copy$default(Lwb6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;ILjava/lang/Object;)Lwb6;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    if-nez v0, :cond_20

    .line 892
    .line 893
    :cond_1d
    if-eqz v13, :cond_1e

    .line 894
    .line 895
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 896
    .line 897
    .line 898
    move-result-object v34

    .line 899
    const/16 v35, 0x3ff

    .line 900
    .line 901
    const/16 v36, 0x0

    .line 902
    .line 903
    const/16 v24, 0x0

    .line 904
    .line 905
    const/16 v25, 0x0

    .line 906
    .line 907
    const/16 v26, 0x0

    .line 908
    .line 909
    const/16 v27, 0x0

    .line 910
    .line 911
    const/16 v28, 0x0

    .line 912
    .line 913
    const/16 v29, 0x0

    .line 914
    .line 915
    const/16 v30, 0x0

    .line 916
    .line 917
    const/16 v31, 0x0

    .line 918
    .line 919
    const/16 v32, 0x0

    .line 920
    .line 921
    const/16 v33, 0x0

    .line 922
    .line 923
    move-object/from16 v23, v13

    .line 924
    .line 925
    invoke-static/range {v23 .. v36}, Lwb6;->copy$default(Lwb6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;ILjava/lang/Object;)Lwb6;

    .line 926
    .line 927
    .line 928
    move-result-object v13

    .line 929
    if-eqz v13, :cond_1e

    .line 930
    .line 931
    if-nez v5, :cond_1e

    .line 932
    .line 933
    goto :goto_18

    .line 934
    :cond_1e
    const/4 v13, 0x0

    .line 935
    :goto_18
    if-nez v13, :cond_1f

    .line 936
    .line 937
    sget-object v0, Lwb6;->Companion:Lwb6$a;

    .line 938
    .line 939
    invoke-virtual {v0}, Lwb6$a;->default()Lwb6;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    goto :goto_19

    .line 944
    :cond_1f
    move-object v0, v13

    .line 945
    :cond_20
    :goto_19
    sget-object v1, Lwq0;->a:Lwq0;

    .line 946
    .line 947
    const/4 v13, 0x0

    .line 948
    invoke-static {v0, v13}, Lwq0;->g(Lwb6;Lhq0;)V

    .line 949
    .line 950
    .line 951
    :cond_21
    sget-object v0, Lbe8;->a:Lbe8;

    .line 952
    .line 953
    return-object v0

    .line 954
    :pswitch_6
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 955
    .line 956
    check-cast v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 957
    .line 958
    sget-object v1, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 959
    .line 960
    new-instance v1, Lr54;

    .line 961
    .line 962
    invoke-direct {v1, v0}, Lr54;-><init>(Lil0;)V

    .line 963
    .line 964
    .line 965
    return-object v1

    .line 966
    :pswitch_7
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 967
    .line 968
    check-cast v0, Ldm3;

    .line 969
    .line 970
    new-instance v1, Lq63;

    .line 971
    .line 972
    invoke-virtual {v0}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 973
    .line 974
    .line 975
    move-result-object v3

    .line 976
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v3

    .line 980
    invoke-direct {v1, v3, v2}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v1}, Lq63;->g()Z

    .line 984
    .line 985
    .line 986
    move-result v2

    .line 987
    if-eqz v2, :cond_22

    .line 988
    .line 989
    const-string v3, "successful"

    .line 990
    .line 991
    goto :goto_1a

    .line 992
    :cond_22
    const-string v3, "failed"

    .line 993
    .line 994
    :goto_1a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 995
    .line 996
    const-string v5, "Deleting source folder at "

    .line 997
    .line 998
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1002
    .line 1003
    .line 1004
    const-string v1, " "

    .line 1005
    .line 1006
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    .line 1011
    .line 1012
    const-string v1, "."

    .line 1013
    .line 1014
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v7

    .line 1021
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 1022
    .line 1023
    if-eqz v2, :cond_23

    .line 1024
    .line 1025
    iget-object v6, v0, La55;->b:Ljava/lang/String;

    .line 1026
    .line 1027
    const/4 v9, 0x4

    .line 1028
    const/4 v10, 0x0

    .line 1029
    const/4 v8, 0x0

    .line 1030
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1031
    .line 1032
    .line 1033
    goto :goto_1b

    .line 1034
    :cond_23
    iget-object v6, v0, La55;->b:Ljava/lang/String;

    .line 1035
    .line 1036
    const/4 v9, 0x4

    .line 1037
    const/4 v10, 0x0

    .line 1038
    const/4 v8, 0x0

    .line 1039
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1040
    .line 1041
    .line 1042
    :goto_1b
    if-eqz v2, :cond_24

    .line 1043
    .line 1044
    iget-object v1, v0, Ldm3;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1045
    .line 1046
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1047
    .line 1048
    .line 1049
    iget-object v0, v0, Ldm3;->g:Lex6;

    .line 1050
    .line 1051
    sget-object v1, Lam3;->a:Lam3;

    .line 1052
    .line 1053
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 1054
    .line 1055
    .line 1056
    goto :goto_1c

    .line 1057
    :cond_24
    new-instance v1, Lek;

    .line 1058
    .line 1059
    const/16 v2, 0x1b

    .line 1060
    .line 1061
    invoke-direct {v1, v0, v2}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 1062
    .line 1063
    .line 1064
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 1065
    .line 1066
    .line 1067
    :goto_1c
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1068
    .line 1069
    return-object v0

    .line 1070
    :pswitch_8
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1071
    .line 1072
    check-cast v0, Lrj3;

    .line 1073
    .line 1074
    iget-object v0, v0, Lrj3;->Q:Lil0;

    .line 1075
    .line 1076
    sget-object v1, Ltb1;->a:Ltb1;

    .line 1077
    .line 1078
    invoke-static {}, Lqb1;->m()Z

    .line 1079
    .line 1080
    .line 1081
    move-result v1

    .line 1082
    if-eqz v1, :cond_25

    .line 1083
    .line 1084
    sget v1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 1085
    .line 1086
    invoke-static {v0}, Lrs9;->u(Lk28;)V

    .line 1087
    .line 1088
    .line 1089
    goto :goto_1d

    .line 1090
    :cond_25
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->Q:I

    .line 1091
    .line 1092
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1093
    .line 1094
    .line 1095
    new-instance v1, Landroid/content/Intent;

    .line 1096
    .line 1097
    const-class v2, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 1098
    .line 1099
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1100
    .line 1101
    .line 1102
    const-string v2, "cloud_constant"

    .line 1103
    .line 1104
    const/4 v13, 0x0

    .line 1105
    invoke-virtual {v1, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v1

    .line 1109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1110
    .line 1111
    .line 1112
    const/16 v2, 0x7d4

    .line 1113
    .line 1114
    invoke-virtual {v0, v1, v2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1115
    .line 1116
    .line 1117
    :goto_1d
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1118
    .line 1119
    return-object v0

    .line 1120
    :pswitch_9
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1121
    .line 1122
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;

    .line 1123
    .line 1124
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N:I

    .line 1125
    .line 1126
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    invoke-static {v0}, Lub5;->a(Landroid/view/LayoutInflater;)Lub5;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v0

    .line 1134
    return-object v0

    .line 1135
    :pswitch_a
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1136
    .line 1137
    check-cast v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 1138
    .line 1139
    sget v1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 1140
    .line 1141
    new-instance v1, Lqj2;

    .line 1142
    .line 1143
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->X()Ldj2;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v2

    .line 1147
    iget-object v2, v2, Ldj2;->d:Lej2;

    .line 1148
    .line 1149
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v3

    .line 1153
    invoke-direct {v1, v0, v2, v3}, Lqj2;-><init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Lej2;Lmk2;)V

    .line 1154
    .line 1155
    .line 1156
    return-object v1

    .line 1157
    :pswitch_b
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1158
    .line 1159
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;

    .line 1160
    .line 1161
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->O:I

    .line 1162
    .line 1163
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    const v1, 0x7f0d0064

    .line 1168
    .line 1169
    .line 1170
    const/4 v13, 0x0

    .line 1171
    invoke-virtual {v0, v1, v13, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v0

    .line 1175
    const v1, 0x7f0a00a9

    .line 1176
    .line 1177
    .line 1178
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v2

    .line 1182
    if-eqz v2, :cond_27

    .line 1183
    .line 1184
    invoke-static {v2}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v1

    .line 1188
    move-object v2, v0

    .line 1189
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1190
    .line 1191
    const v3, 0x7f0a03bf

    .line 1192
    .line 1193
    .line 1194
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v4

    .line 1198
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 1199
    .line 1200
    if-eqz v4, :cond_26

    .line 1201
    .line 1202
    new-instance v7, Lsv1;

    .line 1203
    .line 1204
    invoke-direct {v7, v2, v1, v4}, Lsv1;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1205
    .line 1206
    .line 1207
    goto :goto_1e

    .line 1208
    :cond_26
    move v1, v3

    .line 1209
    :cond_27
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v0

    .line 1217
    const-string v1, "Missing required view with ID: "

    .line 1218
    .line 1219
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v0

    .line 1223
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    move-object v7, v13

    .line 1227
    :goto_1e
    return-object v7

    .line 1228
    :pswitch_c
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1229
    .line 1230
    check-cast v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;

    .line 1231
    .line 1232
    sget v1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->S:I

    .line 1233
    .line 1234
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->N()Lov1;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v0

    .line 1238
    iget-object v0, v0, Lov1;->c:Lcom/google/android/material/textfield/TextInputEditText;

    .line 1239
    .line 1240
    return-object v0

    .line 1241
    :pswitch_d
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1242
    .line 1243
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 1244
    .line 1245
    sget v1, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 1246
    .line 1247
    new-instance v1, Lyq1;

    .line 1248
    .line 1249
    invoke-direct {v1, v0}, Lyq1;-><init>(Lil0;)V

    .line 1250
    .line 1251
    .line 1252
    return-object v1

    .line 1253
    :pswitch_e
    const/4 v13, 0x0

    .line 1254
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1255
    .line 1256
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 1257
    .line 1258
    sget v1, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 1259
    .line 1260
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U()Lkq1;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    iget-object v0, v0, Lkq1;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 1265
    .line 1266
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v1

    .line 1270
    if-eqz v1, :cond_28

    .line 1271
    .line 1272
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1273
    .line 1274
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v1

    .line 1278
    move-object v7, v1

    .line 1279
    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 1280
    .line 1281
    goto :goto_1f

    .line 1282
    :cond_28
    move-object v7, v13

    .line 1283
    :goto_1f
    if-eqz v7, :cond_29

    .line 1284
    .line 1285
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v0

    .line 1289
    invoke-virtual {v7, v0, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1290
    .line 1291
    .line 1292
    :cond_29
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1293
    .line 1294
    return-object v0

    .line 1295
    :pswitch_f
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1296
    .line 1297
    check-cast v0, Lko1;

    .line 1298
    .line 1299
    new-instance v1, Lzs5;

    .line 1300
    .line 1301
    new-instance v3, Lo10;

    .line 1302
    .line 1303
    invoke-direct {v3, v0, v2}, Lo10;-><init>(Ljava/lang/Object;I)V

    .line 1304
    .line 1305
    .line 1306
    invoke-direct {v1, v3}, Lzs5;-><init>(Ljava/lang/Runnable;)V

    .line 1307
    .line 1308
    .line 1309
    return-object v1

    .line 1310
    :pswitch_10
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1311
    .line 1312
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 1313
    .line 1314
    sget v1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 1315
    .line 1316
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v0

    .line 1320
    const-string v1, "org.swiftapps.swiftbackup.cloud.diagnostics.extra.INCLUDE_LARGE_ROUND_TRIP"

    .line 1321
    .line 1322
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1323
    .line 1324
    .line 1325
    move-result v0

    .line 1326
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    return-object v0

    .line 1331
    :pswitch_11
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1332
    .line 1333
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;

    .line 1334
    .line 1335
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->O:I

    .line 1336
    .line 1337
    new-instance v1, Lo51;

    .line 1338
    .line 1339
    invoke-direct {v1, v0}, Lo51;-><init>(Landroid/content/Context;)V

    .line 1340
    .line 1341
    .line 1342
    return-object v1

    .line 1343
    :pswitch_12
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1344
    .line 1345
    check-cast v0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 1346
    .line 1347
    sget v1, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->P:I

    .line 1348
    .line 1349
    new-instance v1, Lbs0;

    .line 1350
    .line 1351
    invoke-direct {v1, v0}, Lbs0;-><init>(Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;)V

    .line 1352
    .line 1353
    .line 1354
    return-object v1

    .line 1355
    :pswitch_13
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1356
    .line 1357
    check-cast v0, Lil0;

    .line 1358
    .line 1359
    new-instance v1, Lw45;

    .line 1360
    .line 1361
    invoke-direct {v1, v0}, Lw45;-><init>(Lio1;)V

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1365
    .line 1366
    .line 1367
    return-object v1

    .line 1368
    :pswitch_14
    const/4 v13, 0x0

    .line 1369
    const-wide/16 v15, 0x0

    .line 1370
    .line 1371
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1372
    .line 1373
    check-cast v0, Lqk0;

    .line 1374
    .line 1375
    iget-object v1, v0, Lqk0;->h:Lji;

    .line 1376
    .line 1377
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v2

    .line 1381
    if-eqz v2, :cond_2a

    .line 1382
    .line 1383
    iget-object v0, v0, Lqk0;->a:Lhz;

    .line 1384
    .line 1385
    iget-boolean v0, v0, Lhz;->g:Z

    .line 1386
    .line 1387
    invoke-virtual {v2, v0}, Lqx;->getTotalDataSize(Z)J

    .line 1388
    .line 1389
    .line 1390
    move-result-wide v2

    .line 1391
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v21

    .line 1395
    goto :goto_20

    .line 1396
    :cond_2a
    move-object/from16 v21, v13

    .line 1397
    .line 1398
    :goto_20
    invoke-static/range {v21 .. v21}, Lio4;->h(Ljava/lang/Long;)J

    .line 1399
    .line 1400
    .line 1401
    move-result-wide v2

    .line 1402
    cmp-long v0, v2, v15

    .line 1403
    .line 1404
    if-nez v0, :cond_2e

    .line 1405
    .line 1406
    invoke-virtual {v1}, Lji;->getDataDir()Ljava/lang/String;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v0

    .line 1410
    if-eqz v0, :cond_2c

    .line 1411
    .line 1412
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 1413
    .line 1414
    .line 1415
    move-result v2

    .line 1416
    if-nez v2, :cond_2b

    .line 1417
    .line 1418
    move-object v7, v0

    .line 1419
    goto :goto_21

    .line 1420
    :cond_2b
    move-object v7, v13

    .line 1421
    :goto_21
    if-eqz v7, :cond_2c

    .line 1422
    .line 1423
    new-instance v0, Lq63;

    .line 1424
    .line 1425
    invoke-direct {v0, v7, v5}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 1426
    .line 1427
    .line 1428
    invoke-virtual {v0}, Lq63;->j()Z

    .line 1429
    .line 1430
    .line 1431
    move-result v0

    .line 1432
    goto :goto_22

    .line 1433
    :cond_2c
    move v0, v6

    .line 1434
    :goto_22
    if-eqz v0, :cond_2d

    .line 1435
    .line 1436
    goto :goto_23

    .line 1437
    :cond_2d
    move v5, v6

    .line 1438
    :cond_2e
    :goto_23
    if-nez v5, :cond_2f

    .line 1439
    .line 1440
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 1441
    .line 1442
    const-string v7, "BackupPlan"

    .line 1443
    .line 1444
    invoke-virtual {v1}, Lji;->getDataDir()Ljava/lang/String;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v0

    .line 1448
    const-string v1, "Skipping Data backup because the data directory does not exist: "

    .line 1449
    .line 1450
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v8

    .line 1454
    const/4 v10, 0x4

    .line 1455
    const/4 v11, 0x0

    .line 1456
    const/4 v9, 0x0

    .line 1457
    invoke-static/range {v6 .. v11}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1458
    .line 1459
    .line 1460
    :cond_2f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v0

    .line 1464
    return-object v0

    .line 1465
    :pswitch_15
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1466
    .line 1467
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 1468
    .line 1469
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 1470
    .line 1471
    new-instance v1, Lxi0;

    .line 1472
    .line 1473
    invoke-direct {v1, v0}, Lxi0;-><init>(Lil0;)V

    .line 1474
    .line 1475
    .line 1476
    return-object v1

    .line 1477
    :pswitch_16
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1478
    .line 1479
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/a;

    .line 1480
    .line 1481
    const-string v1, "restore_runtime_permissions"

    .line 1482
    .line 1483
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v0

    .line 1487
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1488
    .line 1489
    .line 1490
    return-object v0

    .line 1491
    :pswitch_17
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1492
    .line 1493
    check-cast v0, Lxw;

    .line 1494
    .line 1495
    iget-object v0, v0, Lxw;->k:Lhk;

    .line 1496
    .line 1497
    invoke-virtual {v0}, Lhk;->u()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v0

    .line 1501
    return-object v0

    .line 1502
    :pswitch_18
    const/4 v13, 0x0

    .line 1503
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1504
    .line 1505
    check-cast v0, Lcm;

    .line 1506
    .line 1507
    iget-object v0, v0, Lcm;->b:Ljava/util/List;

    .line 1508
    .line 1509
    if-eqz v0, :cond_33

    .line 1510
    .line 1511
    new-instance v1, Ljava/util/ArrayList;

    .line 1512
    .line 1513
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    .line 1515
    .line 1516
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v0

    .line 1520
    :cond_30
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1521
    .line 1522
    .line 1523
    move-result v2

    .line 1524
    if-eqz v2, :cond_32

    .line 1525
    .line 1526
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v2

    .line 1530
    check-cast v2, Lyc7;

    .line 1531
    .line 1532
    new-instance v3, Lq63;

    .line 1533
    .line 1534
    invoke-virtual {v2}, Lyc7;->getApkPath()Ljava/lang/String;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v2

    .line 1538
    invoke-direct {v3, v2, v5}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v3}, Lq63;->j()Z

    .line 1542
    .line 1543
    .line 1544
    move-result v2

    .line 1545
    if-eqz v2, :cond_31

    .line 1546
    .line 1547
    goto :goto_25

    .line 1548
    :cond_31
    move-object v3, v13

    .line 1549
    :goto_25
    if-eqz v3, :cond_30

    .line 1550
    .line 1551
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1552
    .line 1553
    .line 1554
    goto :goto_24

    .line 1555
    :cond_32
    move-object v7, v1

    .line 1556
    goto :goto_26

    .line 1557
    :cond_33
    move-object v7, v13

    .line 1558
    :goto_26
    if-nez v7, :cond_34

    .line 1559
    .line 1560
    sget-object v7, Lov2;->a:Lov2;

    .line 1561
    .line 1562
    :cond_34
    return-object v7

    .line 1563
    :pswitch_19
    const/4 v13, 0x0

    .line 1564
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1565
    .line 1566
    check-cast v0, Lvl;

    .line 1567
    .line 1568
    iget-object v0, v0, Lvl;->o:Lgv7;

    .line 1569
    .line 1570
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v0

    .line 1574
    check-cast v0, [C

    .line 1575
    .line 1576
    if-eqz v0, :cond_38

    .line 1577
    .line 1578
    array-length v1, v0

    .line 1579
    if-nez v1, :cond_35

    .line 1580
    .line 1581
    goto :goto_27

    .line 1582
    :cond_35
    new-instance v1, Ljava/lang/String;

    .line 1583
    .line 1584
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 1585
    .line 1586
    .line 1587
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1588
    .line 1589
    .line 1590
    move-result v0

    .line 1591
    if-nez v0, :cond_36

    .line 1592
    .line 1593
    goto :goto_27

    .line 1594
    :cond_36
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 1595
    .line 1596
    .line 1597
    move-result v0

    .line 1598
    if-eqz v0, :cond_37

    .line 1599
    .line 1600
    goto :goto_27

    .line 1601
    :cond_37
    invoke-static {v1}, Lsz8;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v7

    .line 1605
    goto :goto_28

    .line 1606
    :cond_38
    :goto_27
    move-object v7, v13

    .line 1607
    :goto_28
    return-object v7

    .line 1608
    :pswitch_1a
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1609
    .line 1610
    check-cast v0, Lgl;

    .line 1611
    .line 1612
    iget-object v0, v0, Lgl;->g:Lgv7;

    .line 1613
    .line 1614
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v0

    .line 1618
    check-cast v0, Ljava/util/Set;

    .line 1619
    .line 1620
    return-object v0

    .line 1621
    :pswitch_1b
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1622
    .line 1623
    check-cast v0, Lhk;

    .line 1624
    .line 1625
    invoke-virtual {v0}, Lhk;->e()Lq63;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v1

    .line 1629
    iget-object v0, v0, Lhk;->b:Ljava/lang/String;

    .line 1630
    .line 1631
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1632
    .line 1633
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    .line 1638
    .line 1639
    const-string v0, ".med"

    .line 1640
    .line 1641
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v0

    .line 1648
    invoke-virtual {v1, v0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v0

    .line 1652
    return-object v0

    .line 1653
    :pswitch_1c
    iget-object v0, v0, Llf;->b:Ljava/lang/Object;

    .line 1654
    .line 1655
    check-cast v0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 1656
    .line 1657
    sget v1, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->Q:I

    .line 1658
    .line 1659
    new-instance v1, Ljava/util/ArrayList;

    .line 1660
    .line 1661
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v2

    .line 1668
    iget-object v2, v2, Lyf;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1669
    .line 1670
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1671
    .line 1672
    .line 1673
    move-result v2

    .line 1674
    :goto_29
    if-ge v6, v2, :cond_39

    .line 1675
    .line 1676
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v3

    .line 1680
    iget-object v3, v3, Lyf;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1681
    .line 1682
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v3

    .line 1686
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1687
    .line 1688
    .line 1689
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    .line 1691
    .line 1692
    add-int/lit8 v6, v6, 0x1

    .line 1693
    .line 1694
    goto :goto_29

    .line 1695
    :cond_39
    return-object v1

    .line 1696
    nop

    .line 1697
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
