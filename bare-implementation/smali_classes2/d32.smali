.class public final synthetic Ld32;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ld32;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ld32;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ld32;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Ld32;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ld32;->a:I

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    sget-object v3, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    iget-object v4, v0, Ld32;->d:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, v0, Ld32;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v0, v0, Ld32;->b:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 18
    .line 19
    check-cast v5, Ljava/util/ArrayList;

    .line 20
    .line 21
    check-cast v4, Lvy7;

    .line 22
    .line 23
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y()Lqo3;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v5, v4}, Lqo3;->j(Ljava/util/ArrayList;Lty7;)V

    .line 30
    .line 31
    .line 32
    return-object v3

    .line 33
    :pswitch_0
    check-cast v0, Landroid/os/Parcelable;

    .line 34
    .line 35
    check-cast v5, Lin3;

    .line 36
    .line 37
    iget-object v1, v5, Lin3;->m:Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    check-cast v4, Lbn3;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v5}, Lin3;->k()Lhn3;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    iget-object v6, v6, Lhn3;->c:Lq63;

    .line 48
    .line 49
    invoke-virtual {v6}, Lq63;->v()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, v4, Lbn3;->a:Lq63;

    .line 57
    .line 58
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    new-instance v1, Lrm;

    .line 66
    .line 67
    invoke-direct {v1, v2, v5, v0}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v0, v1}, Lin3;->m(Lq63;Lbt3;)V

    .line 71
    .line 72
    .line 73
    return-object v3

    .line 74
    :pswitch_1
    check-cast v0, Lkj3;

    .line 75
    .line 76
    check-cast v5, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 77
    .line 78
    check-cast v4, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 79
    .line 80
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 81
    .line 82
    sget-object v1, Lov2;->a:Lov2;

    .line 83
    .line 84
    const-wide/16 v6, 0x0

    .line 85
    .line 86
    const/16 v8, 0xa

    .line 87
    .line 88
    const/4 v9, 0x0

    .line 89
    if-eqz v0, :cond_13

    .line 90
    .line 91
    invoke-virtual {v0}, Lkj3;->h()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v0}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->exists()Z

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    if-eqz v11, :cond_1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    move-object v10, v9

    .line 107
    :goto_0
    invoke-virtual {v0}, Lkj3;->a()Ljava/util/ArrayList;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    if-nez v11, :cond_2

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    move-object v1, v11

    .line 115
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    if-eqz v12, :cond_4

    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    move-object v13, v12

    .line 135
    check-cast v13, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 136
    .line 137
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->exists()Z

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    if-eqz v13, :cond_3

    .line 142
    .line 143
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    if-eqz v10, :cond_5

    .line 148
    .line 149
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getDate()J

    .line 150
    .line 151
    .line 152
    move-result-wide v12

    .line 153
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    goto :goto_3

    .line 158
    :cond_5
    move-object v1, v9

    .line 159
    :goto_3
    invoke-static {v1}, Lfl1;->B0(Ljava/lang/Object;)Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    new-instance v12, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-static {v11, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v14

    .line 180
    if-eqz v14, :cond_6

    .line 181
    .line 182
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    check-cast v14, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 187
    .line 188
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getDate()J

    .line 189
    .line 190
    .line 191
    move-result-wide v14

    .line 192
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 193
    .line 194
    .line 195
    move-result-object v14

    .line 196
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_6
    invoke-static {v1, v12}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    if-eqz v5, :cond_7

    .line 205
    .line 206
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    if-eqz v5, :cond_7

    .line 211
    .line 212
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    if-nez v5, :cond_8

    .line 217
    .line 218
    :cond_7
    invoke-virtual {v0}, Lkj3;->e()Lq63;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    :cond_8
    if-eqz v10, :cond_9

    .line 227
    .line 228
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getDate()J

    .line 229
    .line 230
    .line 231
    move-result-wide v12

    .line 232
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    cmp-long v12, v12, v6

    .line 237
    .line 238
    if-lez v12, :cond_9

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_9
    move-object v0, v9

    .line 242
    :goto_5
    invoke-static {v1}, Lel1;->c1(Ljava/util/List;)Ljava/lang/Comparable;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    check-cast v1, Ljava/lang/Long;

    .line 247
    .line 248
    if-eqz v1, :cond_a

    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 251
    .line 252
    .line 253
    move-result-wide v12

    .line 254
    cmp-long v14, v12, v6

    .line 255
    .line 256
    if-lez v14, :cond_a

    .line 257
    .line 258
    if-eqz v10, :cond_b

    .line 259
    .line 260
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getDate()J

    .line 261
    .line 262
    .line 263
    move-result-wide v14

    .line 264
    cmp-long v12, v12, v14

    .line 265
    .line 266
    if-nez v12, :cond_b

    .line 267
    .line 268
    :cond_a
    move-object v1, v9

    .line 269
    :cond_b
    invoke-static {}, Lnc8;->p()Lww4;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    if-eqz v10, :cond_d

    .line 274
    .line 275
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 276
    .line 277
    .line 278
    move-result-object v13

    .line 279
    invoke-static {v13}, Ltm3;->b(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    .line 280
    .line 281
    .line 282
    move-result-object v13

    .line 283
    move-object v14, v13

    .line 284
    sget-object v13, Lpj3;->BaseBackup:Lpj3;

    .line 285
    .line 286
    if-eqz v14, :cond_c

    .line 287
    .line 288
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->baseOriginalSize()J

    .line 289
    .line 290
    .line 291
    move-result-wide v14

    .line 292
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 293
    .line 294
    .line 295
    move-result-object v14

    .line 296
    goto :goto_6

    .line 297
    :cond_c
    move-object v14, v9

    .line 298
    :goto_6
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 299
    .line 300
    .line 301
    move-result-object v15

    .line 302
    invoke-virtual {v15}, Lq63;->A()J

    .line 303
    .line 304
    .line 305
    move-result-wide v15

    .line 306
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 307
    .line 308
    .line 309
    move-result-object v15

    .line 310
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    invoke-virtual {v10}, Lq63;->A()J

    .line 315
    .line 316
    .line 317
    move-result-wide v16

    .line 318
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 319
    .line 320
    .line 321
    move-result-object v16

    .line 322
    const/16 v17, 0x0

    .line 323
    .line 324
    invoke-static/range {v12 .. v17}, Lnj3;->a(Lww4;Lpj3;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 325
    .line 326
    .line 327
    :cond_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 328
    .line 329
    .line 330
    move-result v10

    .line 331
    if-eqz v10, :cond_e

    .line 332
    .line 333
    goto/16 :goto_b

    .line 334
    .line 335
    :cond_e
    new-instance v10, Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-static {v11, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 338
    .line 339
    .line 340
    move-result v8

    .line 341
    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 349
    .line 350
    .line 351
    move-result v13

    .line 352
    if-eqz v13, :cond_10

    .line 353
    .line 354
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v13

    .line 358
    check-cast v13, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 359
    .line 360
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 361
    .line 362
    .line 363
    move-result-object v13

    .line 364
    invoke-static {v13}, Ltm3;->b(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/Manifest;

    .line 365
    .line 366
    .line 367
    move-result-object v13

    .line 368
    if-eqz v13, :cond_f

    .line 369
    .line 370
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/Manifest;->incrementalOriginalSize()J

    .line 371
    .line 372
    .line 373
    move-result-wide v13

    .line 374
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 375
    .line 376
    .line 377
    move-result-object v13

    .line 378
    goto :goto_8

    .line 379
    :cond_f
    move-object v13, v9

    .line 380
    :goto_8
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    goto :goto_7

    .line 384
    :cond_10
    invoke-static {v10}, Lnj3;->c(Ljava/util/ArrayList;)Ljava/lang/Long;

    .line 385
    .line 386
    .line 387
    move-result-object v14

    .line 388
    sget-object v13, Lpj3;->IncrementalBackups:Lpj3;

    .line 389
    .line 390
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 391
    .line 392
    .line 393
    move-result-object v8

    .line 394
    move-wide v9, v6

    .line 395
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 396
    .line 397
    .line 398
    move-result v15

    .line 399
    if-eqz v15, :cond_11

    .line 400
    .line 401
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v15

    .line 405
    check-cast v15, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 406
    .line 407
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 408
    .line 409
    .line 410
    move-result-object v15

    .line 411
    invoke-virtual {v15}, Lq63;->A()J

    .line 412
    .line 413
    .line 414
    move-result-wide v15

    .line 415
    add-long/2addr v9, v15

    .line 416
    goto :goto_9

    .line 417
    :cond_11
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 418
    .line 419
    .line 420
    move-result-object v15

    .line 421
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 426
    .line 427
    .line 428
    move-result v9

    .line 429
    if-eqz v9, :cond_12

    .line 430
    .line 431
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    check-cast v9, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 436
    .line 437
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 438
    .line 439
    .line 440
    move-result-object v9

    .line 441
    invoke-virtual {v9}, Lq63;->A()J

    .line 442
    .line 443
    .line 444
    move-result-wide v9

    .line 445
    add-long/2addr v6, v9

    .line 446
    goto :goto_a

    .line 447
    :cond_12
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 448
    .line 449
    .line 450
    move-result-object v16

    .line 451
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v17

    .line 459
    invoke-static/range {v12 .. v17}, Lnj3;->a(Lww4;Lpj3;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 460
    .line 461
    .line 462
    :goto_b
    invoke-static {v12}, Lnc8;->h(Lww4;)Lww4;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    new-instance v9, Lmj3;

    .line 467
    .line 468
    invoke-direct {v9, v5, v0, v1, v6}, Lmj3;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lww4;)V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_17

    .line 472
    .line 473
    :cond_13
    if-eqz v5, :cond_23

    .line 474
    .line 475
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getBaseBackup()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    if-eqz v0, :cond_14

    .line 480
    .line 481
    invoke-virtual {v0}, Lvm3;->isValid()Z

    .line 482
    .line 483
    .line 484
    move-result v10

    .line 485
    if-eqz v10, :cond_14

    .line 486
    .line 487
    goto :goto_c

    .line 488
    :cond_14
    move-object v0, v9

    .line 489
    :goto_c
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getIncrementalBackups()Ljava/util/Map;

    .line 490
    .line 491
    .line 492
    move-result-object v10

    .line 493
    if-eqz v10, :cond_15

    .line 494
    .line 495
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 496
    .line 497
    .line 498
    move-result-object v10

    .line 499
    goto :goto_d

    .line 500
    :cond_15
    move-object v10, v9

    .line 501
    :goto_d
    if-nez v10, :cond_16

    .line 502
    .line 503
    goto :goto_e

    .line 504
    :cond_16
    move-object v1, v10

    .line 505
    :goto_e
    new-instance v10, Ljava/util/ArrayList;

    .line 506
    .line 507
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .line 509
    .line 510
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    :cond_17
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 515
    .line 516
    .line 517
    move-result v11

    .line 518
    if-eqz v11, :cond_18

    .line 519
    .line 520
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v11

    .line 524
    move-object v12, v11

    .line 525
    check-cast v12, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 526
    .line 527
    invoke-virtual {v12}, Lvm3;->isValid()Z

    .line 528
    .line 529
    .line 530
    move-result v12

    .line 531
    if-eqz v12, :cond_17

    .line 532
    .line 533
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    goto :goto_f

    .line 537
    :cond_18
    new-instance v1, Llw1;

    .line 538
    .line 539
    const/4 v11, 0x1

    .line 540
    invoke-direct {v1, v11}, Llw1;-><init>(I)V

    .line 541
    .line 542
    .line 543
    invoke-static {v10, v1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    if-eqz v0, :cond_19

    .line 548
    .line 549
    invoke-static {v0}, Lnj3;->b(Lvm3;)Ljava/lang/Long;

    .line 550
    .line 551
    .line 552
    move-result-object v10

    .line 553
    goto :goto_10

    .line 554
    :cond_19
    move-object v10, v9

    .line 555
    :goto_10
    invoke-static {v10}, Lfl1;->B0(Ljava/lang/Object;)Ljava/util/List;

    .line 556
    .line 557
    .line 558
    move-result-object v11

    .line 559
    new-instance v12, Ljava/util/ArrayList;

    .line 560
    .line 561
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .line 563
    .line 564
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 565
    .line 566
    .line 567
    move-result-object v13

    .line 568
    :cond_1a
    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 569
    .line 570
    .line 571
    move-result v14

    .line 572
    if-eqz v14, :cond_1b

    .line 573
    .line 574
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v14

    .line 578
    check-cast v14, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 579
    .line 580
    invoke-static {v14}, Lnj3;->b(Lvm3;)Ljava/lang/Long;

    .line 581
    .line 582
    .line 583
    move-result-object v14

    .line 584
    if-eqz v14, :cond_1a

    .line 585
    .line 586
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    goto :goto_11

    .line 590
    :cond_1b
    invoke-static {v11, v12}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 591
    .line 592
    .line 593
    move-result-object v11

    .line 594
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 595
    .line 596
    .line 597
    move-result-object v5

    .line 598
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v5

    .line 602
    invoke-static {v11}, Lel1;->c1(Ljava/util/List;)Ljava/lang/Comparable;

    .line 603
    .line 604
    .line 605
    move-result-object v11

    .line 606
    check-cast v11, Ljava/lang/Long;

    .line 607
    .line 608
    if-eqz v11, :cond_1d

    .line 609
    .line 610
    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    .line 611
    .line 612
    .line 613
    move-result-wide v12

    .line 614
    cmp-long v14, v12, v6

    .line 615
    .line 616
    if-lez v14, :cond_1d

    .line 617
    .line 618
    if-nez v10, :cond_1c

    .line 619
    .line 620
    goto :goto_12

    .line 621
    :cond_1c
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 622
    .line 623
    .line 624
    move-result-wide v14

    .line 625
    cmp-long v12, v12, v14

    .line 626
    .line 627
    if-eqz v12, :cond_1d

    .line 628
    .line 629
    :goto_12
    move-object v9, v11

    .line 630
    :cond_1d
    invoke-static {}, Lnc8;->p()Lww4;

    .line 631
    .line 632
    .line 633
    move-result-object v11

    .line 634
    if-eqz v0, :cond_1e

    .line 635
    .line 636
    sget-object v12, Lpj3;->BaseBackup:Lpj3;

    .line 637
    .line 638
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->getOriginalSize()Ljava/lang/Long;

    .line 639
    .line 640
    .line 641
    move-result-object v13

    .line 642
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->getBackupSize()Ljava/lang/Long;

    .line 643
    .line 644
    .line 645
    move-result-object v14

    .line 646
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->getManifestSize()Ljava/lang/Long;

    .line 647
    .line 648
    .line 649
    move-result-object v15

    .line 650
    const/16 v16, 0x0

    .line 651
    .line 652
    invoke-static/range {v11 .. v16}, Lnj3;->a(Lww4;Lpj3;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 653
    .line 654
    .line 655
    :cond_1e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    if-eqz v0, :cond_1f

    .line 660
    .line 661
    goto :goto_16

    .line 662
    :cond_1f
    sget-object v12, Lpj3;->IncrementalBackups:Lpj3;

    .line 663
    .line 664
    new-instance v0, Ljava/util/ArrayList;

    .line 665
    .line 666
    invoke-static {v1, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 667
    .line 668
    .line 669
    move-result v8

    .line 670
    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 671
    .line 672
    .line 673
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 674
    .line 675
    .line 676
    move-result-object v8

    .line 677
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 678
    .line 679
    .line 680
    move-result v13

    .line 681
    if-eqz v13, :cond_20

    .line 682
    .line 683
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v13

    .line 687
    check-cast v13, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 688
    .line 689
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getOriginalSize()Ljava/lang/Long;

    .line 690
    .line 691
    .line 692
    move-result-object v13

    .line 693
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    goto :goto_13

    .line 697
    :cond_20
    invoke-static {v0}, Lnj3;->c(Ljava/util/ArrayList;)Ljava/lang/Long;

    .line 698
    .line 699
    .line 700
    move-result-object v13

    .line 701
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    move-wide v14, v6

    .line 706
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 707
    .line 708
    .line 709
    move-result v8

    .line 710
    if-eqz v8, :cond_21

    .line 711
    .line 712
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v8

    .line 716
    check-cast v8, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 717
    .line 718
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getBackupSize()Ljava/lang/Long;

    .line 719
    .line 720
    .line 721
    move-result-object v8

    .line 722
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    .line 723
    .line 724
    .line 725
    move-result-wide v16

    .line 726
    add-long v14, v16, v14

    .line 727
    .line 728
    goto :goto_14

    .line 729
    :cond_21
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 730
    .line 731
    .line 732
    move-result-object v14

    .line 733
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 738
    .line 739
    .line 740
    move-result v8

    .line 741
    if-eqz v8, :cond_22

    .line 742
    .line 743
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v8

    .line 747
    check-cast v8, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 748
    .line 749
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getManifestSize()Ljava/lang/Long;

    .line 750
    .line 751
    .line 752
    move-result-object v8

    .line 753
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    .line 754
    .line 755
    .line 756
    move-result-wide v15

    .line 757
    add-long/2addr v6, v15

    .line 758
    goto :goto_15

    .line 759
    :cond_22
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 760
    .line 761
    .line 762
    move-result-object v15

    .line 763
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 768
    .line 769
    .line 770
    move-result-object v16

    .line 771
    invoke-static/range {v11 .. v16}, Lnj3;->a(Lww4;Lpj3;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 772
    .line 773
    .line 774
    :goto_16
    invoke-static {v11}, Lnc8;->h(Lww4;)Lww4;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    new-instance v1, Lmj3;

    .line 779
    .line 780
    invoke-direct {v1, v5, v10, v9, v0}, Lmj3;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lww4;)V

    .line 781
    .line 782
    .line 783
    move-object v9, v1

    .line 784
    :cond_23
    :goto_17
    if-nez v9, :cond_24

    .line 785
    .line 786
    goto :goto_18

    .line 787
    :cond_24
    sget-object v0, Lzn4;->a:Lzn4;

    .line 788
    .line 789
    new-instance v0, Lxq;

    .line 790
    .line 791
    invoke-direct {v0, v2, v4, v9}, Lxq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 792
    .line 793
    .line 794
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 795
    .line 796
    .line 797
    :goto_18
    return-object v3

    .line 798
    :pswitch_2
    check-cast v0, Lo23;

    .line 799
    .line 800
    check-cast v5, Ljava/lang/String;

    .line 801
    .line 802
    check-cast v4, Ljava/lang/String;

    .line 803
    .line 804
    invoke-static {v5}, Lo23;->F(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    invoke-static {v4}, Lo23;->F(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v0, v5}, Lo23;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    invoke-virtual {v0, v4}, Lo23;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v2

    .line 818
    invoke-virtual {v0, v2}, Lo23;->r(Ljava/lang/String;)Z

    .line 819
    .line 820
    .line 821
    move-result v6

    .line 822
    if-eqz v6, :cond_25

    .line 823
    .line 824
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 825
    .line 826
    const-string v6, "Deleting existing file at "

    .line 827
    .line 828
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v9

    .line 832
    const/4 v11, 0x4

    .line 833
    const/4 v12, 0x0

    .line 834
    const-string v8, "FTPService"

    .line 835
    .line 836
    const/4 v10, 0x0

    .line 837
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v0, v2}, Lo23;->j(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    :cond_25
    invoke-virtual {v0, v2}, Lo23;->w(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    const/4 v6, 0x0

    .line 847
    invoke-virtual {v0, v6}, Lo23;->z(Z)Ld23;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    const-string v7, "RNFR"

    .line 852
    .line 853
    invoke-virtual {v0, v7, v1}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    .line 855
    .line 856
    move-result v1

    .line 857
    const/16 v7, 0x12c

    .line 858
    .line 859
    if-lt v1, v7, :cond_26

    .line 860
    .line 861
    const/16 v7, 0x190

    .line 862
    .line 863
    if-ge v1, v7, :cond_26

    .line 864
    .line 865
    const-string v1, "RNTO"

    .line 866
    .line 867
    invoke-virtual {v0, v1, v2}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    .line 869
    .line 870
    move-result v1

    .line 871
    invoke-static {v1}, Lk55;->x(I)Z

    .line 872
    .line 873
    .line 874
    move-result v6

    .line 875
    :cond_26
    if-eqz v6, :cond_27

    .line 876
    .line 877
    return-object v3

    .line 878
    :cond_27
    invoke-virtual {v0}, Lz13;->i()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    const-string v1, " to "

    .line 883
    .line 884
    const-string v2, ". Reply="

    .line 885
    .line 886
    const-string v3, "FTPService.move failed from "

    .line 887
    .line 888
    invoke-static {v3, v5, v1, v4, v2}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    move-result-object v1

    .line 892
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 900
    .line 901
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    throw v1

    .line 909
    :pswitch_3
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 910
    .line 911
    check-cast v5, Lt22;

    .line 912
    .line 913
    check-cast v4, Lk12;

    .line 914
    .line 915
    invoke-static {v0, v5, v4}, Landroidx/credentials/playservices/controllers/blockstore/createrestorecredential/CredentialProviderCreateRestoreCredentialController;->$r8$lambda$V4druqlY-hhCgN7H_7gBE-CCd2E(Ljava/util/concurrent/Executor;Lt22;Lk12;)Lbe8;

    .line 916
    .line 917
    .line 918
    move-result-object v0

    .line 919
    return-object v0

    .line 920
    nop

    .line 921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
