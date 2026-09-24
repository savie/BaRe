.class public abstract Lpn3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Ldo3;ZLorg/swiftapps/swiftbackup/folders/data/FolderState;)Lnn3;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ldo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->toDisplayString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, v0, Ldo3;->d:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v5, "Checking if restore is needed for: "

    .line 14
    .line 15
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ". Restore strategy: "

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 34
    .line 35
    const/4 v9, 0x4

    .line 36
    const/4 v10, 0x0

    .line 37
    const-string v6, "FolderRestoreHelper"

    .line 38
    .line 39
    move-object v5, v8

    .line 40
    const/4 v8, 0x0

    .line 41
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object v8, v5

    .line 45
    new-instance v2, Lq63;

    .line 46
    .line 47
    iget-object v4, v0, Ldo3;->e:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object v4, v5

    .line 60
    :goto_0
    if-nez v4, :cond_2

    .line 61
    .line 62
    :cond_1
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    :cond_2
    const/4 v1, 0x1

    .line 67
    invoke-direct {v2, v4, v1}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v2}, Lq63;->j()Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    const/4 v7, 0x0

    .line 79
    if-nez v6, :cond_3

    .line 80
    .line 81
    const/4 v12, 0x4

    .line 82
    const/4 v13, 0x0

    .line 83
    const-string v9, "FolderRestoreHelper"

    .line 84
    .line 85
    const-string v10, "Target folder does not exist, restore needed"

    .line 86
    .line 87
    const/4 v11, 0x0

    .line 88
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lnn3;

    .line 92
    .line 93
    invoke-direct {v0, v1, v4, v7, v5}, Lnn3;-><init>(ZLjava/lang/String;ZLorg/swiftapps/swiftbackup/folders/data/FolderState;)V

    .line 94
    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_3
    iget-object v9, v0, Ldo3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 98
    .line 99
    if-eqz v9, :cond_5

    .line 100
    .line 101
    if-nez p1, :cond_5

    .line 102
    .line 103
    if-eqz v9, :cond_4

    .line 104
    .line 105
    invoke-static {v9}, Lsk3;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)Lq63;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    const-string v0, "props.cloudBackup cannot be null!"

    .line 111
    .line 112
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v5

    .line 116
    :cond_5
    iget-object v0, v0, Ldo3;->b:Lkj3;

    .line 117
    .line 118
    if-eqz v0, :cond_14

    .line 119
    .line 120
    invoke-virtual {v0}, Lkj3;->g()Lq63;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    :goto_1
    if-nez v0, :cond_6

    .line 125
    .line 126
    const/4 v12, 0x4

    .line 127
    const/4 v13, 0x0

    .line 128
    const-string v9, "FolderRestoreHelper"

    .line 129
    .line 130
    const-string v10, "Failed to download latest manifest, assuming restore needed"

    .line 131
    .line 132
    const/4 v11, 0x0

    .line 133
    invoke-static/range {v8 .. v13}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Lnn3;

    .line 137
    .line 138
    invoke-direct {v0, v1, v4, v6, v5}, Lnn3;-><init>(ZLjava/lang/String;ZLorg/swiftapps/swiftbackup/folders/data/FolderState;)V

    .line 139
    .line 140
    .line 141
    return-object v0

    .line 142
    :cond_6
    invoke-static {v0}, Ltm3;->b(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-nez v0, :cond_7

    .line 147
    .line 148
    const/4 v12, 0x4

    .line 149
    const/4 v13, 0x0

    .line 150
    const-string v9, "FolderRestoreHelper"

    .line 151
    .line 152
    const-string v10, "Failed to read manifest, assuming restore needed"

    .line 153
    .line 154
    const/4 v11, 0x0

    .line 155
    invoke-static/range {v8 .. v13}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    new-instance v0, Lnn3;

    .line 159
    .line 160
    invoke-direct {v0, v1, v4, v6, v5}, Lnn3;-><init>(ZLjava/lang/String;ZLorg/swiftapps/swiftbackup/folders/data/FolderState;)V

    .line 161
    .line 162
    .line 163
    return-object v0

    .line 164
    :cond_7
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->getCurrentState()Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    new-instance v9, Lyn3;

    .line 169
    .line 170
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 171
    .line 172
    .line 173
    if-nez p2, :cond_8

    .line 174
    .line 175
    invoke-virtual {v9, v2}, Lyn3;->d(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    move-object v14, v9

    .line 180
    goto :goto_2

    .line 181
    :cond_8
    move-object/from16 v14, p2

    .line 182
    .line 183
    :goto_2
    invoke-static {v0, v14}, Lyn3;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderState;Lorg/swiftapps/swiftbackup/folders/data/FolderState;)Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    sget-object v10, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->FULL_RESTORE:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 188
    .line 189
    if-ne v3, v10, :cond_9

    .line 190
    .line 191
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->hasOnlyDeletions()Z

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    if-eqz v10, :cond_9

    .line 196
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v5, "Only deletions detected for "

    .line 200
    .line 201
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v3, ", handle deletions & skip restore"

    .line 208
    .line 209
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    const/4 v12, 0x4

    .line 217
    const/4 v13, 0x0

    .line 218
    const-string v9, "FolderRestoreHelper"

    .line 219
    .line 220
    const/4 v11, 0x0

    .line 221
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    invoke-static {v2, v0, v14}, Lpn3;->b(Lq63;Lorg/swiftapps/swiftbackup/folders/data/FolderState;Lorg/swiftapps/swiftbackup/folders/data/FolderState;)V

    .line 225
    .line 226
    .line 227
    new-instance v0, Lnn3;

    .line 228
    .line 229
    invoke-direct {v0, v7, v4, v6, v14}, Lnn3;-><init>(ZLjava/lang/String;ZLorg/swiftapps/swiftbackup/folders/data/FolderState;)V

    .line 230
    .line 231
    .line 232
    return-object v0

    .line 233
    :cond_9
    sget-object v0, Lon3;->a:[I

    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    aget v0, v0, v2

    .line 240
    .line 241
    const-string v2, "Restore not needed ("

    .line 242
    .line 243
    const-string v10, "): "

    .line 244
    .line 245
    const-string v11, "Restore needed ("

    .line 246
    .line 247
    if-eq v0, v1, :cond_10

    .line 248
    .line 249
    const/4 v12, 0x2

    .line 250
    const-string v13, "), local folder matches backup state"

    .line 251
    .line 252
    if-eq v0, v12, :cond_c

    .line 253
    .line 254
    const/4 v12, 0x3

    .line 255
    if-ne v0, v12, :cond_b

    .line 256
    .line 257
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    xor-int/lit8 v15, v0, 0x1

    .line 262
    .line 263
    if-nez v0, :cond_a

    .line 264
    .line 265
    invoke-static {v9, v7, v1, v5}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->asString$default(Lorg/swiftapps/swiftbackup/folders/data/Changes;ZILjava/lang/Object;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    const/4 v12, 0x4

    .line 288
    const/4 v13, 0x0

    .line 289
    const-string v9, "FolderRestoreHelper"

    .line 290
    .line 291
    const/4 v11, 0x0

    .line 292
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_7

    .line 296
    .line 297
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    const/4 v12, 0x4

    .line 313
    const/4 v13, 0x0

    .line 314
    const-string v9, "FolderRestoreHelper"

    .line 315
    .line 316
    const/4 v11, 0x0

    .line 317
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_7

    .line 321
    .line 322
    :cond_b
    invoke-static {}, Lq;->j()V

    .line 323
    .line 324
    .line 325
    return-object v5

    .line 326
    :cond_c
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesAdded()Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_e

    .line 335
    .line 336
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesModified()Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-eqz v0, :cond_e

    .line 345
    .line 346
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getDirectoriesAdded()Ljava/util/List;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-nez v0, :cond_d

    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_d
    move v15, v7

    .line 358
    goto :goto_4

    .line 359
    :cond_e
    :goto_3
    move v15, v1

    .line 360
    :goto_4
    if-eqz v15, :cond_f

    .line 361
    .line 362
    invoke-static {v9, v7, v1, v5}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->asString$default(Lorg/swiftapps/swiftbackup/folders/data/Changes;ZILjava/lang/Object;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v10

    .line 384
    const/4 v12, 0x4

    .line 385
    const/4 v13, 0x0

    .line 386
    const-string v9, "FolderRestoreHelper"

    .line 387
    .line 388
    const/4 v11, 0x0

    .line 389
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v10

    .line 408
    const/4 v12, 0x4

    .line 409
    const/4 v13, 0x0

    .line 410
    const-string v9, "FolderRestoreHelper"

    .line 411
    .line 412
    const/4 v11, 0x0

    .line 413
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    goto :goto_7

    .line 417
    :cond_10
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getFilesAdded()Ljava/util/List;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-eqz v0, :cond_12

    .line 426
    .line 427
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->getDirectoriesAdded()Ljava/util/List;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-nez v0, :cond_11

    .line 436
    .line 437
    goto :goto_5

    .line 438
    :cond_11
    move v15, v7

    .line 439
    goto :goto_6

    .line 440
    :cond_12
    :goto_5
    move v15, v1

    .line 441
    :goto_6
    if-eqz v15, :cond_13

    .line 442
    .line 443
    invoke-static {v9, v7, v1, v5}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->asString$default(Lorg/swiftapps/swiftbackup/folders/data/Changes;ZILjava/lang/Object;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v10

    .line 465
    const/4 v12, 0x4

    .line 466
    const/4 v13, 0x0

    .line 467
    const-string v9, "FolderRestoreHelper"

    .line 468
    .line 469
    const/4 v11, 0x0

    .line 470
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    goto :goto_7

    .line 474
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v1, "), all files exist locally"

    .line 483
    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v10

    .line 491
    const/4 v12, 0x4

    .line 492
    const/4 v13, 0x0

    .line 493
    const-string v9, "FolderRestoreHelper"

    .line 494
    .line 495
    const/4 v11, 0x0

    .line 496
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    :goto_7
    new-instance v0, Lnn3;

    .line 500
    .line 501
    invoke-direct {v0, v15, v4, v6, v14}, Lnn3;-><init>(ZLjava/lang/String;ZLorg/swiftapps/swiftbackup/folders/data/FolderState;)V

    .line 502
    .line 503
    .line 504
    return-object v0

    .line 505
    :cond_14
    const-string v0, "props.localBackup cannot be null!"

    .line 506
    .line 507
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    return-object v5
.end method

.method public static b(Lq63;Lorg/swiftapps/swiftbackup/folders/data/FolderState;Lorg/swiftapps/swiftbackup/folders/data/FolderState;)V
    .locals 10

    .line 1
    new-instance v0, Lyn3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lyn3;->d(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :cond_0
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    move-object v3, v2

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    move-object v3, v2

    .line 88
    check-cast v3, Ljava/lang/String;

    .line 89
    .line 90
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_3

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    new-instance p1, Ljc1;

    .line 101
    .line 102
    const/4 p2, 0x2

    .line 103
    invoke-direct {p1, p2}, Ljc1;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, p1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    const-string v3, "handleDeletions"

    .line 115
    .line 116
    if-eqz p2, :cond_5

    .line 117
    .line 118
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-nez p2, :cond_6

    .line 123
    .line 124
    :cond_5
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 125
    .line 126
    const/4 v6, 0x4

    .line 127
    const/4 v7, 0x0

    .line 128
    const-string v4, "Handling deletions for files not in backup state"

    .line 129
    .line 130
    const/4 v5, 0x0

    .line 131
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    const/4 v0, 0x0

    .line 139
    const/4 v2, 0x0

    .line 140
    if-eqz p2, :cond_7

    .line 141
    .line 142
    move v1, v2

    .line 143
    goto :goto_3

    .line 144
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    move v1, v2

    .line 149
    :cond_8
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_a

    .line 154
    .line 155
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    check-cast v4, Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {p0, v4}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v4}, Lq63;->h()Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_8

    .line 170
    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 172
    .line 173
    if-ltz v1, :cond_9

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_9
    invoke-static {}, Lfl1;->E0()V

    .line 177
    .line 178
    .line 179
    throw v0

    .line 180
    :cond_a
    :goto_3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-eqz p2, :cond_b

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_b
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    :cond_c
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    if-eqz p2, :cond_e

    .line 196
    .line 197
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    check-cast p2, Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p0, p2}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p2}, Lq63;->h()Z

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    if-eqz p2, :cond_c

    .line 212
    .line 213
    add-int/lit8 v2, v2, 0x1

    .line 214
    .line 215
    if-ltz v2, :cond_d

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_d
    invoke-static {}, Lfl1;->E0()V

    .line 219
    .line 220
    .line 221
    throw v0

    .line 222
    :cond_e
    :goto_5
    if-gtz v1, :cond_10

    .line 223
    .line 224
    if-lez v2, :cond_f

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_f
    return-void

    .line 228
    :cond_10
    :goto_6
    new-instance v4, Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .line 232
    .line 233
    if-lez v1, :cond_11

    .line 234
    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string p1, " files"

    .line 244
    .line 245
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    :cond_11
    if-lez v2, :cond_12

    .line 256
    .line 257
    new-instance p0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string p1, " directories"

    .line 266
    .line 267
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    :cond_12
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 278
    .line 279
    const/4 v8, 0x0

    .line 280
    const/16 v9, 0x3e

    .line 281
    .line 282
    const-string v5, " and "

    .line 283
    .line 284
    const/4 v6, 0x0

    .line 285
    const/4 v7, 0x0

    .line 286
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    const-string p1, "Deleted "

    .line 291
    .line 292
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    const/4 v6, 0x4

    .line 297
    const/4 v5, 0x0

    .line 298
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    return-void
.end method
