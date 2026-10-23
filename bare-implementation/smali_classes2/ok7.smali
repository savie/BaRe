.class public final Lok7;
.super Lmk7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 17

    .line 1
    const-string v0, "Failed r/w access check for file: "

    .line 2
    .line 3
    const-string v1, "File not found: "

    .line 4
    .line 5
    sget-boolean v2, Lmp6;->g:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-object v3

    .line 11
    :cond_0
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 12
    .line 13
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v4, "settings_ssaid_"

    .line 22
    .line 23
    const-string v5, ".xml"

    .line 24
    .line 25
    invoke-static {v4, v5, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    :try_start_0
    sget-object v2, Lg00;->a:Lg00;

    .line 33
    .line 34
    invoke-static {}, Lg00;->i()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    new-instance v4, Ljr7;

    .line 39
    .line 40
    new-instance v5, Ljava/io/File;

    .line 41
    .line 42
    new-instance v6, Ljava/io/File;

    .line 43
    .line 44
    new-instance v7, Ljava/io/File;

    .line 45
    .line 46
    sget-object v8, Lmk7;->a:Lgv7;

    .line 47
    .line 48
    invoke-virtual {v8}, Lgv7;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    check-cast v8, Ljava/io/File;

    .line 53
    .line 54
    const-string v10, "system"

    .line 55
    .line 56
    invoke-direct {v7, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v8, "users"

    .line 60
    .line 61
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v2, "settings_ssaid.xml"

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-direct {v4, v5, v2}, Ljr7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v4}, Lxx3;->x(Ljava/io/File;)Ljava/io/InputStream;

    .line 81
    .line 82
    .line 83
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    .line 85
    .line 86
    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 87
    .line 88
    .line 89
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    const/high16 v5, 0x40000

    .line 93
    .line 94
    invoke-static {v2, v4, v5}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 95
    .line 96
    .line 97
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 98
    .line 99
    .line 100
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_9

    .line 108
    .line 109
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_8

    .line 120
    .line 121
    new-instance v8, Ljava/lang/Object;

    .line 122
    .line 123
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance v1, Landroid/os/HandlerThread;

    .line 127
    .line 128
    const-string v0, "SettingsProvider2"

    .line 129
    .line 130
    const/16 v2, 0xa

    .line 131
    .line 132
    invoke-direct {v1, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Landroid/util/SparseArray;

    .line 136
    .line 137
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 141
    .line 142
    .line 143
    :try_start_5
    invoke-static {}, Lg00;->i()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    sget v4, Lva7;->l:I

    .line 148
    .line 149
    const/high16 v4, 0x30000000

    .line 150
    .line 151
    or-int/2addr v2, v4

    .line 152
    ushr-int/lit8 v5, v2, 0x1c

    .line 153
    .line 154
    if-eqz v5, :cond_1

    .line 155
    .line 156
    const/4 v6, 0x2

    .line 157
    if-eq v5, v6, :cond_1

    .line 158
    .line 159
    const/4 v6, 0x3

    .line 160
    if-eq v5, v6, :cond_1

    .line 161
    .line 162
    const/4 v6, 0x4

    .line 163
    if-eq v5, v6, :cond_1

    .line 164
    .line 165
    const/16 v5, 0x4e20

    .line 166
    .line 167
    :goto_0
    move v10, v5

    .line 168
    goto :goto_1

    .line 169
    :cond_1
    const/4 v5, -0x1

    .line 170
    goto :goto_0

    .line 171
    :goto_1
    new-instance v6, Lva7;

    .line 172
    .line 173
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 174
    .line 175
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    invoke-direct/range {v6 .. v11}, Lva7;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;ILandroid/os/Looper;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lg00;->i()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    or-int/2addr v2, v4

    .line 194
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Lva7;

    .line 199
    .line 200
    iget-object v2, v0, Lva7;->d:Landroid/util/ArrayMap;

    .line 201
    .line 202
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-nez v2, :cond_7

    .line 214
    .line 215
    iget-object v0, v0, Lva7;->d:Landroid/util/ArrayMap;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    new-instance v2, Ljava/util/HashMap;

    .line 225
    .line 226
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_5

    .line 238
    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    check-cast v4, Lua7;

    .line 244
    .line 245
    new-instance v5, Lkk7;

    .line 246
    .line 247
    iget-object v6, v4, Lua7;->e:Ljava/lang/String;

    .line 248
    .line 249
    iget-object v7, v4, Lua7;->d:Ljava/lang/String;

    .line 250
    .line 251
    iget-object v8, v4, Lua7;->b:Ljava/lang/String;

    .line 252
    .line 253
    invoke-direct {v5, v6, v7, v8}, Lkk7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    sget-object v6, Llk7;->a:Lai6;

    .line 257
    .line 258
    if-eqz v7, :cond_4

    .line 259
    .line 260
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    if-nez v6, :cond_3

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_3
    if-eqz v8, :cond_4

    .line 268
    .line 269
    sget-object v6, Llk7;->a:Lai6;

    .line 270
    .line 271
    invoke-virtual {v6, v8}, Lai6;->b(Ljava/lang/CharSequence;)Z

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    if-eqz v6, :cond_4

    .line 276
    .line 277
    const/4 v6, 0x1

    .line 278
    goto :goto_4

    .line 279
    :cond_4
    :goto_3
    const/4 v6, 0x0

    .line 280
    :goto_4
    if-eqz v6, :cond_2

    .line 281
    .line 282
    iget-object v4, v4, Lua7;->d:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    goto :goto_2

    .line 288
    :catchall_0
    move-exception v0

    .line 289
    goto :goto_6

    .line 290
    :cond_5
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-nez v0, :cond_6

    .line 295
    .line 296
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 297
    .line 298
    const-string v11, "SsaidHelper"

    .line 299
    .line 300
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    const-string v5, "Built with "

    .line 310
    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v0, " valid entries"

    .line 318
    .line 319
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v12

    .line 326
    const/4 v14, 0x4

    .line 327
    const/4 v15, 0x0

    .line 328
    const/4 v13, 0x0

    .line 329
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 330
    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_6
    move-object v2, v3

    .line 334
    :goto_5
    :try_start_6
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 335
    .line 336
    .line 337
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 338
    .line 339
    .line 340
    return-object v2

    .line 341
    :catchall_1
    move-exception v0

    .line 342
    goto :goto_9

    .line 343
    :catch_0
    move-exception v0

    .line 344
    move-object v13, v0

    .line 345
    goto :goto_8

    .line 346
    :cond_7
    :try_start_7
    const-string v0, "Empty settings"

    .line 347
    .line 348
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 349
    .line 350
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 354
    :goto_6
    :try_start_8
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 355
    .line 356
    .line 357
    throw v0

    .line 358
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 371
    .line 372
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw v1

    .line 380
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 402
    :catchall_2
    move-exception v0

    .line 403
    move-object v1, v0

    .line 404
    goto :goto_7

    .line 405
    :catchall_3
    move-exception v0

    .line 406
    move-object v1, v0

    .line 407
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 408
    :catchall_4
    move-exception v0

    .line 409
    :try_start_a
    invoke-static {v4, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 410
    .line 411
    .line 412
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 413
    :goto_7
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 414
    :catchall_5
    move-exception v0

    .line 415
    :try_start_c
    invoke-static {v2, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 416
    .line 417
    .line 418
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 419
    :goto_8
    :try_start_d
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 420
    .line 421
    const-string v11, "SsaidHelper"

    .line 422
    .line 423
    const-string v12, "buildMap"

    .line 424
    .line 425
    const/16 v15, 0x8

    .line 426
    .line 427
    const/16 v16, 0x0

    .line 428
    .line 429
    const/4 v14, 0x0

    .line 430
    invoke-static/range {v10 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 431
    .line 432
    .line 433
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 434
    .line 435
    .line 436
    return-object v3

    .line 437
    :goto_9
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 438
    .line 439
    .line 440
    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 34

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "SettingsProvider2"

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 14
    .line 15
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "settings_ssaid_"

    .line 24
    .line 25
    const-string v5, ".xml"

    .line 26
    .line 27
    invoke-static {v4, v5, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    :try_start_0
    sget-boolean v3, Lmp6;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    :try_start_1
    sget-object v3, Llk7;->a:Lai6;

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Lai6;->b(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1e

    .line 49
    .line 50
    sget-object v3, Lg00;->a:Lg00;

    .line 51
    .line 52
    invoke-static {}, Lg00;->i()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    new-instance v4, Ljr7;

    .line 57
    .line 58
    new-instance v5, Ljava/io/File;

    .line 59
    .line 60
    new-instance v6, Ljava/io/File;

    .line 61
    .line 62
    new-instance v7, Ljava/io/File;

    .line 63
    .line 64
    sget-object v8, Lmk7;->a:Lgv7;

    .line 65
    .line 66
    invoke-virtual {v8}, Lgv7;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    check-cast v8, Ljava/io/File;

    .line 71
    .line 72
    const-string v10, "system"

    .line 73
    .line 74
    invoke-direct {v7, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v8, "users"

    .line 78
    .line 79
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v3, "settings_ssaid.xml"

    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-direct {v4, v5, v3}, Ljr7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v4}, Lxx3;->x(Ljava/io/File;)Ljava/io/InputStream;

    .line 99
    .line 100
    .line 101
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    .line 103
    .line 104
    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 105
    .line 106
    .line 107
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    const/high16 v5, 0x40000

    .line 111
    .line 112
    invoke-static {v3, v4, v5}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    .line 113
    .line 114
    .line 115
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    .line 116
    .line 117
    .line 118
    :try_start_5
    invoke-interface {v3}, Ljava/io/Closeable;->close()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 122
    .line 123
    .line 124
    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    const-string v4, "File not found: "

    .line 126
    .line 127
    if-eqz v3, :cond_1d

    .line 128
    .line 129
    :try_start_6
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    .line 130
    .line 131
    .line 132
    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 133
    const-string v12, "Failed r/w access check for file: "

    .line 134
    .line 135
    if-eqz v3, :cond_1c

    .line 136
    .line 137
    :try_start_7
    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_1c

    .line 142
    .line 143
    new-instance v8, Ljava/lang/Object;

    .line 144
    .line 145
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 146
    .line 147
    .line 148
    new-instance v3, Landroid/os/HandlerThread;

    .line 149
    .line 150
    const/16 v13, 0xa

    .line 151
    .line 152
    invoke-direct {v3, v2, v13}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    new-instance v14, Landroid/util/SparseArray;

    .line 156
    .line 157
    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 161
    .line 162
    .line 163
    :try_start_8
    invoke-static {}, Lg00;->i()I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    sget v7, Lva7;->l:I

    .line 168
    .line 169
    const/high16 v15, 0x30000000

    .line 170
    .line 171
    or-int/2addr v6, v15

    .line 172
    ushr-int/lit8 v7, v6, 0x1c

    .line 173
    .line 174
    const/16 v16, -0x1

    .line 175
    .line 176
    const/16 v17, 0x4e20

    .line 177
    .line 178
    const/4 v10, 0x4

    .line 179
    const/4 v11, 0x2

    .line 180
    move/from16 p0, v15

    .line 181
    .line 182
    const/4 v15, 0x3

    .line 183
    if-eqz v7, :cond_1

    .line 184
    .line 185
    if-eq v7, v11, :cond_1

    .line 186
    .line 187
    if-eq v7, v15, :cond_1

    .line 188
    .line 189
    if-eq v7, v10, :cond_1

    .line 190
    .line 191
    move v7, v10

    .line 192
    move/from16 v10, v17

    .line 193
    .line 194
    :goto_0
    move/from16 v18, v6

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_1
    move v7, v10

    .line 198
    move/from16 v10, v16

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :goto_1
    new-instance v6, Lva7;

    .line 202
    .line 203
    sget-object v19, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 204
    .line 205
    move/from16 v19, v7

    .line 206
    .line 207
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    move/from16 v20, v11

    .line 212
    .line 213
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    move/from16 v5, v18

    .line 218
    .line 219
    move/from16 v15, v20

    .line 220
    .line 221
    invoke-direct/range {v6 .. v11}, Lva7;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;ILandroid/os/Looper;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v14, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    invoke-static {}, Lg00;->i()I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    or-int v5, p0, v5

    .line 232
    .line 233
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    check-cast v5, Lva7;

    .line 238
    .line 239
    iget-object v6, v5, Lva7;->d:Landroid/util/ArrayMap;

    .line 240
    .line 241
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 249
    .line 250
    .line 251
    move-result v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 252
    const-string v14, "Empty settings"

    .line 253
    .line 254
    if-nez v7, :cond_1b

    .line 255
    .line 256
    :try_start_9
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    const/4 v10, 0x0

    .line 272
    if-eqz v8, :cond_3

    .line 273
    .line 274
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    move-object v11, v8

    .line 279
    check-cast v11, Lua7;

    .line 280
    .line 281
    iget-object v11, v11, Lua7;->d:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {v11, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    if-eqz v11, :cond_2

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :catchall_0
    move-exception v0

    .line 291
    goto/16 :goto_f

    .line 292
    .line 293
    :cond_3
    move-object v8, v10

    .line 294
    :goto_2
    check-cast v8, Lua7;

    .line 295
    .line 296
    sget-object v7, Lg00;->a:Lg00;

    .line 297
    .line 298
    const/4 v7, 0x0

    .line 299
    invoke-static {v7, v0}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 300
    .line 301
    .line 302
    move-result-object v11

    .line 303
    if-eqz v11, :cond_1a

    .line 304
    .line 305
    iget-object v11, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 306
    .line 307
    if-eqz v11, :cond_4

    .line 308
    .line 309
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 310
    .line 311
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v11

    .line 315
    goto :goto_3

    .line 316
    :cond_4
    move-object v11, v10

    .line 317
    :goto_3
    if-eqz v11, :cond_19

    .line 318
    .line 319
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 320
    .line 321
    .line 322
    move-result v11

    .line 323
    if-eqz v8, :cond_7

    .line 324
    .line 325
    iget-object v8, v8, Lua7;->b:Ljava/lang/String;

    .line 326
    .line 327
    invoke-static {v8, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v8

    .line 331
    if-eqz v8, :cond_5

    .line 332
    .line 333
    sget-object v22, Lvr6;->INSTANCE:Lvr6;

    .line 334
    .line 335
    const-string v23, "SsaidHelper"

    .line 336
    .line 337
    const-string v24, "No change in ssaid"

    .line 338
    .line 339
    const/16 v26, 0x4

    .line 340
    .line 341
    const/16 v27, 0x0

    .line 342
    .line 343
    const/16 v25, 0x0

    .line 344
    .line 345
    invoke-static/range {v22 .. v27}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 346
    .line 347
    .line 348
    :try_start_a
    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 349
    .line 350
    .line 351
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :catchall_1
    move-exception v0

    .line 356
    goto/16 :goto_12

    .line 357
    .line 358
    :catch_0
    move-exception v0

    .line 359
    move-object v4, v0

    .line 360
    goto/16 :goto_11

    .line 361
    .line 362
    :cond_5
    :try_start_b
    sget-object v22, Lvr6;->INSTANCE:Lvr6;

    .line 363
    .line 364
    const-string v23, "SsaidHelper"

    .line 365
    .line 366
    const-string v24, "Updating ssaid"

    .line 367
    .line 368
    const/16 v26, 0x4

    .line 369
    .line 370
    const/16 v27, 0x0

    .line 371
    .line 372
    const/16 v25, 0x0

    .line 373
    .line 374
    invoke-static/range {v22 .. v27}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v8

    .line 381
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    if-ltz v6, :cond_6

    .line 386
    .line 387
    invoke-virtual {v5, v8, v1, v0}, Lva7;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    goto :goto_4

    .line 392
    :cond_6
    const-string v5, "SettingsState"

    .line 393
    .line 394
    const-string v6, "Settings isn\'t locked!"

    .line 395
    .line 396
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    goto :goto_4

    .line 400
    :cond_7
    sget-object v22, Lvr6;->INSTANCE:Lvr6;

    .line 401
    .line 402
    const-string v23, "SsaidHelper"

    .line 403
    .line 404
    const-string v24, "Adding ssaid"

    .line 405
    .line 406
    const/16 v26, 0x4

    .line 407
    .line 408
    const/16 v27, 0x0

    .line 409
    .line 410
    const/16 v25, 0x0

    .line 411
    .line 412
    invoke-static/range {v22 .. v27}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    invoke-virtual {v5, v6, v1, v0}, Lva7;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 420
    .line 421
    .line 422
    move-result v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 423
    :goto_4
    if-eqz v7, :cond_18

    .line 424
    .line 425
    :try_start_c
    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 426
    .line 427
    .line 428
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    if-eqz v3, :cond_17

    .line 433
    .line 434
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    if-eqz v3, :cond_16

    .line 439
    .line 440
    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    if-eqz v3, :cond_16

    .line 445
    .line 446
    new-instance v8, Ljava/lang/Object;

    .line 447
    .line 448
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 449
    .line 450
    .line 451
    new-instance v3, Landroid/os/HandlerThread;

    .line 452
    .line 453
    invoke-direct {v3, v2, v13}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 454
    .line 455
    .line 456
    new-instance v5, Landroid/util/SparseArray;

    .line 457
    .line 458
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 462
    .line 463
    .line 464
    :try_start_d
    invoke-static {}, Lg00;->i()I

    .line 465
    .line 466
    .line 467
    move-result v6

    .line 468
    invoke-static {v6}, Lva7;->e(I)I

    .line 469
    .line 470
    .line 471
    move-result v6

    .line 472
    ushr-int/lit8 v7, v6, 0x1c

    .line 473
    .line 474
    if-eqz v7, :cond_8

    .line 475
    .line 476
    if-eq v7, v15, :cond_8

    .line 477
    .line 478
    const/4 v11, 0x3

    .line 479
    if-eq v7, v11, :cond_8

    .line 480
    .line 481
    const/4 v11, 0x4

    .line 482
    if-eq v7, v11, :cond_9

    .line 483
    .line 484
    move-object v7, v10

    .line 485
    move/from16 v10, v17

    .line 486
    .line 487
    :goto_5
    move/from16 v19, v6

    .line 488
    .line 489
    goto :goto_6

    .line 490
    :cond_8
    const/4 v11, 0x4

    .line 491
    :cond_9
    move-object v7, v10

    .line 492
    move/from16 v10, v16

    .line 493
    .line 494
    goto :goto_5

    .line 495
    :goto_6
    new-instance v6, Lva7;

    .line 496
    .line 497
    sget-object v20, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 498
    .line 499
    move-object/from16 v20, v7

    .line 500
    .line 501
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 502
    .line 503
    .line 504
    move-result-object v7

    .line 505
    move/from16 v21, v11

    .line 506
    .line 507
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 508
    .line 509
    .line 510
    move-result-object v11

    .line 511
    move/from16 v13, v19

    .line 512
    .line 513
    move-object/from16 v15, v20

    .line 514
    .line 515
    invoke-direct/range {v6 .. v11}, Lva7;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;ILandroid/os/Looper;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v5, v13, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    invoke-static {}, Lg00;->i()I

    .line 522
    .line 523
    .line 524
    move-result v6

    .line 525
    invoke-static {v6}, Lva7;->e(I)I

    .line 526
    .line 527
    .line 528
    move-result v6

    .line 529
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    check-cast v5, Lva7;

    .line 534
    .line 535
    iget-object v6, v5, Lva7;->d:Landroid/util/ArrayMap;

    .line 536
    .line 537
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 538
    .line 539
    .line 540
    move-result-object v6

    .line 541
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 545
    .line 546
    .line 547
    move-result v6

    .line 548
    if-nez v6, :cond_15

    .line 549
    .line 550
    iget-object v5, v5, Lva7;->d:Landroid/util/ArrayMap;

    .line 551
    .line 552
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 553
    .line 554
    .line 555
    move-result-object v5

    .line 556
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 564
    .line 565
    .line 566
    move-result v6

    .line 567
    if-eqz v6, :cond_b

    .line 568
    .line 569
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v10

    .line 573
    move-object v6, v10

    .line 574
    check-cast v6, Lua7;

    .line 575
    .line 576
    iget-object v6, v6, Lua7;->d:Ljava/lang/String;

    .line 577
    .line 578
    invoke-static {v6, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v6

    .line 582
    if-eqz v6, :cond_a

    .line 583
    .line 584
    goto :goto_7

    .line 585
    :catchall_2
    move-exception v0

    .line 586
    goto/16 :goto_e

    .line 587
    .line 588
    :cond_b
    move-object v10, v15

    .line 589
    :goto_7
    check-cast v10, Lua7;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 590
    .line 591
    :try_start_e
    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 592
    .line 593
    .line 594
    if-eqz v10, :cond_14

    .line 595
    .line 596
    iget-object v3, v10, Lua7;->b:Ljava/lang/String;

    .line 597
    .line 598
    invoke-static {v3, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    if-eqz v3, :cond_14

    .line 603
    .line 604
    new-instance v3, Ljava/io/FileInputStream;

    .line 605
    .line 606
    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 607
    .line 608
    .line 609
    :try_start_f
    sget-object v28, Lvr6;->INSTANCE:Lvr6;

    .line 610
    .line 611
    const-string v29, "SsaidHelper"

    .line 612
    .line 613
    const-string v30, "Committing app ssaid, requires device reboot to take effect"

    .line 614
    .line 615
    const/16 v32, 0x4

    .line 616
    .line 617
    const/16 v33, 0x0

    .line 618
    .line 619
    const/16 v31, 0x0

    .line 620
    .line 621
    invoke-static/range {v28 .. v33}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    invoke-static {}, Lb05;->h()Ljr7;

    .line 625
    .line 626
    .line 627
    move-result-object v5

    .line 628
    invoke-static {v5}, Ljd4;->D(Ljr7;)Ljava/io/OutputStream;

    .line 629
    .line 630
    .line 631
    move-result-object v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 632
    :try_start_10
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    .line 634
    .line 635
    const/high16 v6, 0x40000

    .line 636
    .line 637
    invoke-static {v3, v5, v6}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 638
    .line 639
    .line 640
    :try_start_11
    invoke-static {v5, v15}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 641
    .line 642
    .line 643
    :try_start_12
    invoke-static {v3, v15}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 644
    .line 645
    .line 646
    invoke-static {}, Lb05;->h()Ljr7;

    .line 647
    .line 648
    .line 649
    move-result-object v3

    .line 650
    invoke-static {v3}, Lxx3;->x(Ljava/io/File;)Ljava/io/InputStream;

    .line 651
    .line 652
    .line 653
    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 654
    :try_start_13
    new-instance v5, Ljava/io/FileOutputStream;

    .line 655
    .line 656
    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 657
    .line 658
    .line 659
    :try_start_14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    .line 661
    .line 662
    const/high16 v6, 0x40000

    .line 663
    .line 664
    invoke-static {v3, v5, v6}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 665
    .line 666
    .line 667
    :try_start_15
    invoke-static {v5, v15}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 668
    .line 669
    .line 670
    :try_start_16
    invoke-static {v3, v15}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 674
    .line 675
    .line 676
    move-result v3

    .line 677
    if-eqz v3, :cond_13

    .line 678
    .line 679
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    .line 680
    .line 681
    .line 682
    move-result v3

    .line 683
    if-eqz v3, :cond_12

    .line 684
    .line 685
    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    .line 686
    .line 687
    .line 688
    move-result v3

    .line 689
    if-eqz v3, :cond_12

    .line 690
    .line 691
    new-instance v8, Ljava/lang/Object;

    .line 692
    .line 693
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 694
    .line 695
    .line 696
    new-instance v3, Landroid/os/HandlerThread;

    .line 697
    .line 698
    const/16 v4, 0xa

    .line 699
    .line 700
    invoke-direct {v3, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 701
    .line 702
    .line 703
    new-instance v2, Landroid/util/SparseArray;

    .line 704
    .line 705
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 709
    .line 710
    .line 711
    :try_start_17
    sget-object v4, Lg00;->a:Lg00;

    .line 712
    .line 713
    invoke-static {}, Lg00;->i()I

    .line 714
    .line 715
    .line 716
    move-result v4

    .line 717
    invoke-static {v4}, Lva7;->e(I)I

    .line 718
    .line 719
    .line 720
    move-result v4

    .line 721
    ushr-int/lit8 v5, v4, 0x1c

    .line 722
    .line 723
    if-eqz v5, :cond_c

    .line 724
    .line 725
    const/4 v6, 0x2

    .line 726
    if-eq v5, v6, :cond_c

    .line 727
    .line 728
    const/4 v11, 0x3

    .line 729
    if-eq v5, v11, :cond_c

    .line 730
    .line 731
    const/4 v7, 0x4

    .line 732
    if-eq v5, v7, :cond_c

    .line 733
    .line 734
    move/from16 v10, v17

    .line 735
    .line 736
    goto :goto_8

    .line 737
    :cond_c
    move/from16 v10, v16

    .line 738
    .line 739
    :goto_8
    new-instance v6, Lva7;

    .line 740
    .line 741
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 742
    .line 743
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 744
    .line 745
    .line 746
    move-result-object v7

    .line 747
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 748
    .line 749
    .line 750
    move-result-object v11

    .line 751
    invoke-direct/range {v6 .. v11}, Lva7;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;ILandroid/os/Looper;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v2, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 755
    .line 756
    .line 757
    invoke-static {}, Lg00;->i()I

    .line 758
    .line 759
    .line 760
    move-result v4

    .line 761
    invoke-static {v4}, Lva7;->e(I)I

    .line 762
    .line 763
    .line 764
    move-result v4

    .line 765
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    check-cast v2, Lva7;

    .line 770
    .line 771
    iget-object v4, v2, Lva7;->d:Landroid/util/ArrayMap;

    .line 772
    .line 773
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 774
    .line 775
    .line 776
    move-result-object v4

    .line 777
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 778
    .line 779
    .line 780
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 781
    .line 782
    .line 783
    move-result v4

    .line 784
    if-nez v4, :cond_11

    .line 785
    .line 786
    iget-object v2, v2, Lva7;->d:Landroid/util/ArrayMap;

    .line 787
    .line 788
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    .line 794
    .line 795
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 796
    .line 797
    .line 798
    move-result-object v2

    .line 799
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 800
    .line 801
    .line 802
    move-result v4

    .line 803
    if-eqz v4, :cond_e

    .line 804
    .line 805
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v10

    .line 809
    move-object v4, v10

    .line 810
    check-cast v4, Lua7;

    .line 811
    .line 812
    iget-object v4, v4, Lua7;->d:Ljava/lang/String;

    .line 813
    .line 814
    invoke-static {v4, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v4

    .line 818
    if-eqz v4, :cond_d

    .line 819
    .line 820
    goto :goto_9

    .line 821
    :catchall_3
    move-exception v0

    .line 822
    goto :goto_b

    .line 823
    :cond_e
    move-object v10, v15

    .line 824
    :goto_9
    check-cast v10, Lua7;

    .line 825
    .line 826
    if-eqz v10, :cond_f

    .line 827
    .line 828
    iget-object v10, v10, Lua7;->b:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 829
    .line 830
    goto :goto_a

    .line 831
    :cond_f
    move-object v10, v15

    .line 832
    :goto_a
    :try_start_18
    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 833
    .line 834
    .line 835
    invoke-static {v10, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 836
    .line 837
    .line 838
    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 839
    if-eqz v0, :cond_10

    .line 840
    .line 841
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 842
    .line 843
    .line 844
    return-void

    .line 845
    :cond_10
    :try_start_19
    const-string v0, "Verification of committed ssaid failed"

    .line 846
    .line 847
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 848
    .line 849
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    throw v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 853
    :cond_11
    :try_start_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 854
    .line 855
    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 859
    :goto_b
    :try_start_1b
    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 860
    .line 861
    .line 862
    throw v0

    .line 863
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 864
    .line 865
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 879
    .line 880
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    throw v1

    .line 888
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 889
    .line 890
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 904
    .line 905
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    throw v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 913
    :catchall_4
    move-exception v0

    .line 914
    move-object v1, v0

    .line 915
    goto :goto_c

    .line 916
    :catchall_5
    move-exception v0

    .line 917
    move-object v1, v0

    .line 918
    :try_start_1c
    throw v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 919
    :catchall_6
    move-exception v0

    .line 920
    :try_start_1d
    invoke-static {v5, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 921
    .line 922
    .line 923
    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    .line 924
    :goto_c
    :try_start_1e
    throw v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 925
    :catchall_7
    move-exception v0

    .line 926
    :try_start_1f
    invoke-static {v3, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 927
    .line 928
    .line 929
    throw v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 930
    :catchall_8
    move-exception v0

    .line 931
    move-object v1, v0

    .line 932
    goto :goto_d

    .line 933
    :catchall_9
    move-exception v0

    .line 934
    move-object v1, v0

    .line 935
    :try_start_20
    throw v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 936
    :catchall_a
    move-exception v0

    .line 937
    :try_start_21
    invoke-static {v5, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 938
    .line 939
    .line 940
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 941
    :goto_d
    :try_start_22
    throw v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 942
    :catchall_b
    move-exception v0

    .line 943
    :try_start_23
    invoke-static {v3, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 944
    .line 945
    .line 946
    throw v0

    .line 947
    :cond_14
    const-string v0, "Verification of new ssaid failed"

    .line 948
    .line 949
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 950
    .line 951
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    throw v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    .line 955
    :cond_15
    :try_start_24
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 956
    .line 957
    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    .line 961
    :goto_e
    :try_start_25
    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 962
    .line 963
    .line 964
    throw v0

    .line 965
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 966
    .line 967
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v0

    .line 980
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 981
    .line 982
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    throw v1

    .line 990
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 991
    .line 992
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 993
    .line 994
    .line 995
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1006
    .line 1007
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v0

    .line 1011
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    throw v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 1015
    :cond_18
    :try_start_26
    const-string v0, "Failed restoring ssaid"

    .line 1016
    .line 1017
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1018
    .line 1019
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    throw v1

    .line 1023
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1026
    .line 1027
    .line 1028
    const-string v2, "App uid not available: "

    .line 1029
    .line 1030
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v0

    .line 1040
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1041
    .line 1042
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v0

    .line 1046
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    throw v1

    .line 1050
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1053
    .line 1054
    .line 1055
    const-string v2, "App not installed: "

    .line 1056
    .line 1057
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v0

    .line 1067
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1068
    .line 1069
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    throw v1

    .line 1077
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1078
    .line 1079
    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1080
    .line 1081
    .line 1082
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 1083
    :goto_f
    :try_start_27
    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1084
    .line 1085
    .line 1086
    throw v0

    .line 1087
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v0

    .line 1099
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1100
    .line 1101
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v0

    .line 1105
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    throw v1

    .line 1109
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v0

    .line 1121
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1122
    .line 1123
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    throw v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    .line 1131
    :catchall_c
    move-exception v0

    .line 1132
    move-object v1, v0

    .line 1133
    goto :goto_10

    .line 1134
    :catchall_d
    move-exception v0

    .line 1135
    move-object v1, v0

    .line 1136
    :try_start_28
    throw v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    .line 1137
    :catchall_e
    move-exception v0

    .line 1138
    :try_start_29
    invoke-static {v4, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1139
    .line 1140
    .line 1141
    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    .line 1142
    :goto_10
    :try_start_2a
    throw v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_f

    .line 1143
    :catchall_f
    move-exception v0

    .line 1144
    :try_start_2b
    invoke-static {v3, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1145
    .line 1146
    .line 1147
    throw v0

    .line 1148
    :cond_1e
    const-string v0, "Invalid backed up ssaid value"

    .line 1149
    .line 1150
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1151
    .line 1152
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1153
    .line 1154
    .line 1155
    throw v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_0
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    .line 1156
    :goto_11
    :try_start_2c
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 1157
    .line 1158
    const-string v2, "SsaidHelper"

    .line 1159
    .line 1160
    const-string v3, "restoreSsaid"

    .line 1161
    .line 1162
    const/16 v6, 0x8

    .line 1163
    .line 1164
    const/4 v7, 0x0

    .line 1165
    const/4 v5, 0x0

    .line 1166
    invoke-static/range {v1 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1170
    .line 1171
    .line 1172
    return-void

    .line 1173
    :goto_12
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1174
    .line 1175
    .line 1176
    throw v0
.end method
