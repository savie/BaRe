.class public final Lyn7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a()Ljava/util/List;
    .locals 17

    .line 1
    invoke-static {}, Lyn7;->f()Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-static {}, Lyn7;->g()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v4, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v6, "usb"

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x1

    .line 31
    const/4 v9, 0x0

    .line 32
    if-eqz v0, :cond_8

    .line 33
    .line 34
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v10, v0

    .line 39
    check-cast v10, Landroid/os/storage/StorageVolume;

    .line 40
    .line 41
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v11, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v12, "Assessing volume: "

    .line 48
    .line 49
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v12, ", state: "

    .line 56
    .line 57
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0, v3}, Lyn7;->b(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lb67;->c()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    :try_start_0
    const-class v0, Landroid/os/storage/StorageVolume;

    .line 82
    .line 83
    const-string v11, "mPath"

    .line 84
    .line 85
    invoke-virtual {v0, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 107
    .line 108
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v12, "getVolumeDirectory: "

    .line 113
    .line 114
    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    const/4 v15, 0x4

    .line 119
    const/16 v16, 0x0

    .line 120
    .line 121
    const-string v12, "Storage"

    .line 122
    .line 123
    const/4 v14, 0x0

    .line 124
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    move-object v0, v9

    .line 128
    :goto_1
    if-nez v0, :cond_2

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v6, "Couldn\'t find volDir for "

    .line 133
    .line 134
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0, v3}, Lyn7;->b(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :cond_2
    new-instance v11, Lq63;

    .line 150
    .line 151
    invoke-direct {v11, v0, v8}, Lq63;-><init>(Ljava/io/File;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11}, Lq63;->j()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_3

    .line 159
    .line 160
    invoke-virtual {v11}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_4

    .line 173
    .line 174
    :cond_3
    invoke-virtual {v11}, Lq63;->j()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-virtual {v11}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    invoke-virtual {v12}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    invoke-virtual {v12}, Ljava/io/File;->canRead()Z

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    new-instance v13, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v14, "Volume directory not found or isn\'t accessible at "

    .line 193
    .line 194
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v14, ". Exists="

    .line 201
    .line 202
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v0, ", canRead="

    .line 209
    .line 210
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v0, v3}, Lyn7;->b(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 221
    .line 222
    .line 223
    :cond_4
    new-instance v0, Lzn7;

    .line 224
    .line 225
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    if-nez v1, :cond_5

    .line 230
    .line 231
    sget-object v9, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 232
    .line 233
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    invoke-virtual {v10, v9}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    if-eqz v9, :cond_7

    .line 242
    .line 243
    invoke-static {v9, v6, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    if-ne v6, v8, :cond_7

    .line 248
    .line 249
    move v7, v8

    .line 250
    goto :goto_2

    .line 251
    :cond_5
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    if-eqz v6, :cond_7

    .line 256
    .line 257
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    if-lez v13, :cond_6

    .line 262
    .line 263
    invoke-static {v6}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v13

    .line 267
    if-nez v13, :cond_6

    .line 268
    .line 269
    move-object v9, v6

    .line 270
    :cond_6
    if-eqz v9, :cond_7

    .line 271
    .line 272
    sget-object v6, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 273
    .line 274
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    invoke-virtual {v10, v6}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-static {v6, v9, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    :cond_7
    :goto_2
    invoke-direct {v0, v11, v12, v7}, Lzn7;-><init>(Lq63;ZZ)V

    .line 290
    .line 291
    .line 292
    move-object v9, v0

    .line 293
    :goto_3
    if-eqz v9, :cond_0

    .line 294
    .line 295
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    const/4 v1, 0x2

    .line 305
    if-eqz v0, :cond_15

    .line 306
    .line 307
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 308
    .line 309
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    const-string v4, "/"

    .line 318
    .line 319
    const-string v5, " accessible storages found! Fallback to legacy search."

    .line 320
    .line 321
    const-string v11, "findStoragesN: "

    .line 322
    .line 323
    invoke-static {v11, v0, v4, v5, v2}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v12

    .line 327
    const/4 v14, 0x4

    .line 328
    const/4 v15, 0x0

    .line 329
    const-string v11, "Storage"

    .line 330
    .line 331
    const/4 v13, 0x0

    .line 332
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-nez v0, :cond_9

    .line 340
    .line 341
    const/4 v14, 0x4

    .line 342
    const/4 v15, 0x0

    .line 343
    const-string v11, "Storage"

    .line 344
    .line 345
    const-string v12, "Relevant logs below"

    .line 346
    .line 347
    const/4 v13, 0x0

    .line 348
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    if-eqz v2, :cond_9

    .line 360
    .line 361
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    move-object v12, v2

    .line 366
    check-cast v12, Ljava/lang/String;

    .line 367
    .line 368
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 369
    .line 370
    const/4 v14, 0x4

    .line 371
    const/4 v15, 0x0

    .line 372
    const-string v11, "Storage"

    .line 373
    .line 374
    const/4 v13, 0x0

    .line 375
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    goto :goto_4

    .line 379
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .line 383
    .line 384
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 385
    .line 386
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {v0, v9}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    invoke-static {v0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    const-class v3, Landroid/os/storage/StorageManager;

    .line 406
    .line 407
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    check-cast v2, Landroid/os/storage/StorageManager;

    .line 415
    .line 416
    invoke-static {}, Lyn7;->f()Landroid/hardware/usb/UsbDevice;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    check-cast v0, Ljava/util/ArrayList;

    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-eqz v0, :cond_e

    .line 431
    .line 432
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    check-cast v0, Ljava/io/File;

    .line 437
    .line 438
    :try_start_1
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    .line 439
    .line 440
    .line 441
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 442
    new-instance v11, Lzn7;

    .line 443
    .line 444
    new-instance v12, Lq63;

    .line 445
    .line 446
    invoke-direct {v12, v0, v1}, Lq63;-><init>(Ljava/io/File;I)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    if-nez v3, :cond_a

    .line 454
    .line 455
    if-eqz v0, :cond_d

    .line 456
    .line 457
    sget-object v13, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 458
    .line 459
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 460
    .line 461
    .line 462
    move-result-object v13

    .line 463
    invoke-virtual {v0, v13}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    if-eqz v0, :cond_d

    .line 468
    .line 469
    invoke-static {v0, v6, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-ne v0, v8, :cond_d

    .line 474
    .line 475
    move v0, v8

    .line 476
    goto :goto_8

    .line 477
    :cond_a
    if-nez v0, :cond_b

    .line 478
    .line 479
    goto :goto_7

    .line 480
    :cond_b
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v13

    .line 484
    if-eqz v13, :cond_d

    .line 485
    .line 486
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 487
    .line 488
    .line 489
    move-result v14

    .line 490
    if-lez v14, :cond_c

    .line 491
    .line 492
    invoke-static {v13}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 493
    .line 494
    .line 495
    move-result v14

    .line 496
    if-nez v14, :cond_c

    .line 497
    .line 498
    goto :goto_6

    .line 499
    :cond_c
    move-object v13, v9

    .line 500
    :goto_6
    if-eqz v13, :cond_d

    .line 501
    .line 502
    sget-object v14, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 503
    .line 504
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 505
    .line 506
    .line 507
    move-result-object v14

    .line 508
    invoke-virtual {v0, v14}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    invoke-static {v0, v13, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    goto :goto_8

    .line 520
    :cond_d
    :goto_7
    move v0, v7

    .line 521
    :goto_8
    invoke-direct {v11, v12, v10, v0}, Lzn7;-><init>(Lq63;ZZ)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    goto :goto_5

    .line 528
    :catch_1
    move-exception v0

    .line 529
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 530
    .line 531
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    const-string v11, "findStoragesLegacy: Error in isRemovable check: "

    .line 536
    .line 537
    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v12

    .line 541
    const/4 v14, 0x4

    .line 542
    const/4 v15, 0x0

    .line 543
    const-string v11, "Storage"

    .line 544
    .line 545
    const/4 v13, 0x0

    .line 546
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    goto :goto_5

    .line 550
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-nez v0, :cond_11

    .line 555
    .line 556
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    if-eqz v0, :cond_f

    .line 561
    .line 562
    goto :goto_9

    .line 563
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    if-eqz v2, :cond_11

    .line 572
    .line 573
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    check-cast v2, Lzn7;

    .line 578
    .line 579
    iget-boolean v2, v2, Lzn7;->b:Z

    .line 580
    .line 581
    if-nez v2, :cond_10

    .line 582
    .line 583
    goto :goto_b

    .line 584
    :cond_11
    :goto_9
    new-instance v0, Lq63;

    .line 585
    .line 586
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 591
    .line 592
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    const-string v5, "Android/data/"

    .line 601
    .line 602
    const-string v6, "/files"

    .line 603
    .line 604
    invoke-static {v5, v3, v6}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    invoke-direct {v0, v2, v3, v1}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 612
    .line 613
    .line 614
    move-result v2

    .line 615
    if-eqz v2, :cond_12

    .line 616
    .line 617
    goto :goto_a

    .line 618
    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 623
    .line 624
    .line 625
    move-result v3

    .line 626
    if-eqz v3, :cond_14

    .line 627
    .line 628
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    check-cast v3, Lzn7;

    .line 633
    .line 634
    iget-object v3, v3, Lzn7;->a:Lq63;

    .line 635
    .line 636
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v5

    .line 644
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v3

    .line 648
    if-eqz v3, :cond_13

    .line 649
    .line 650
    goto :goto_b

    .line 651
    :cond_14
    :goto_a
    new-instance v2, Lzn7;

    .line 652
    .line 653
    invoke-direct {v2, v0, v7, v7}, Lzn7;-><init>(Lq63;ZZ)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v4, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    :cond_15
    :goto_b
    new-array v0, v1, [Lmt3;

    .line 660
    .line 661
    sget-object v1, Lwn7;->c:Lwn7;

    .line 662
    .line 663
    aput-object v1, v0, v7

    .line 664
    .line 665
    sget-object v1, Lxn7;->c:Lxn7;

    .line 666
    .line 667
    aput-object v1, v0, v8

    .line 668
    .line 669
    invoke-static {v0}, Lms8;->m([Lmt3;)Lzm1;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    invoke-static {v4, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    return-object v0
.end method

.method public static final b(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    const-string p1, "findStoragesN: "

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string p1, "Storage"

    .line 11
    .line 12
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "mount | grep "

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const-string p0, "mount"

    .line 18
    .line 19
    :goto_1
    sget-object v0, Lmp6;->a:Lmp6;

    .line 20
    .line 21
    filled-new-array {p0}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object v1, Lip6;->ANY:Lip6;

    .line 26
    .line 27
    invoke-virtual {v0, p0, v1}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static e()Lq63;
    .locals 3

    .line 1
    const-string v0, "preferred_storage_dir"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "prefs"

    .line 14
    .line 15
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-object v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-lez v2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v0, v1

    .line 30
    :goto_1
    if-eqz v0, :cond_2

    .line 31
    .line 32
    new-instance v1, Lq63;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-direct {v1, v0, v2}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-object v1
.end method

.method public static f()Landroid/hardware/usb/UsbDevice;
    .locals 8

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 3
    .line 4
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-class v2, Landroid/hardware/usb/UsbManager;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x0

    .line 53
    :goto_0
    if-ge v4, v3, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2, v4}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 60
    .line 61
    .line 62
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/16 v6, 0x8

    .line 64
    .line 65
    if-ne v5, v6, :cond_2

    .line 66
    .line 67
    return-object v2

    .line 68
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    :goto_1
    return-object v1

    .line 74
    :goto_2
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 75
    .line 76
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const/4 v6, 0x4

    .line 81
    const/4 v7, 0x0

    .line 82
    const-string v3, "Storage"

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-object v1
.end method

.method public static g()Ljava/util/List;
    .locals 7

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Landroid/os/storage/StorageManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lb67;->c()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getRecentStorageVolumes()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const-string v4, "unknown"

    .line 59
    .line 60
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_0

    .line 65
    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_0

    .line 71
    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/4 v2, 0x0

    .line 81
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v6, "searchStorageVolumes: volume["

    .line 102
    .line 103
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v6, "]="

    .line 110
    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v3, ", state="

    .line 118
    .line 119
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const-string v4, "Storage"

    .line 130
    .line 131
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    return-object v1
.end method


# virtual methods
.method public final d()Lzn7;
    .locals 12

    .line 1
    invoke-static {}, Lyn7;->a()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lzn7;

    .line 10
    .line 11
    invoke-static {}, Lyn7;->e()Lq63;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    move-object v5, v3

    .line 34
    check-cast v5, Lzn7;

    .line 35
    .line 36
    invoke-virtual {v5}, Lzn7;->l()Lq63;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5}, Lq63;->v()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move-object v3, v4

    .line 56
    :goto_0
    check-cast v3, Lzn7;

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Lzn7;->l()Lq63;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v6, "Saved storage not found at "

    .line 67
    .line 68
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, ". Reverting to default storage at "

    .line 75
    .line 76
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 87
    .line 88
    const/4 v10, 0x4

    .line 89
    const/4 v11, 0x0

    .line 90
    const-string v7, "Storage"

    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v4}, Lyn7;->h(Lzn7;)V

    .line 97
    .line 98
    .line 99
    const-string p0, "Storage: "

    .line 100
    .line 101
    invoke-virtual {p0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->E(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    if-nez v3, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    move-object v1, v3

    .line 112
    :goto_1
    iget-boolean p0, v1, Lzn7;->b:Z

    .line 113
    .line 114
    if-eqz p0, :cond_5

    .line 115
    .line 116
    sget-object p0, Leo7;->a:Leo7;

    .line 117
    .line 118
    invoke-virtual {p0}, Leo7;->a()V

    .line 119
    .line 120
    .line 121
    :cond_5
    return-object v1
.end method

.method public final declared-synchronized h(Lzn7;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-boolean v0, p1, Lzn7;->b:Z

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Leo7;->a:Leo7;

    .line 10
    .line 11
    invoke-virtual {v0}, Leo7;->a()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    :goto_0
    const-string v0, "preferred_storage_dir"

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lzn7;->l()Lq63;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object p1, v1

    .line 34
    :goto_1
    sget-object v2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :cond_2
    :try_start_1
    const-string p1, "editor"

    .line 48
    .line 49
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p1
.end method
