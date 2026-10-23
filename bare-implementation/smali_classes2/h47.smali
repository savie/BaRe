.class public final synthetic Lh47;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lq47;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lq47;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh47;->a:Lq47;

    .line 5
    .line 6
    iput-boolean p2, p0, Lh47;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lh47;->a:Lq47;

    .line 4
    .line 5
    iget-object v1, v1, Lq47;->f:Lex6;

    .line 6
    .line 7
    invoke-static {}, Lo37;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_3c

    .line 12
    .line 13
    sget-object v2, Lpz4;->g:Lpz4;

    .line 14
    .line 15
    invoke-virtual {v2}, Ldv;->e()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    sget-object v3, Lzn4;->a:Lzn4;

    .line 19
    .line 20
    new-instance v3, Lp47;

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-direct {v3, v4, v5}, Lws7;-><init>(ILjv1;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v5, v3}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 28
    .line 29
    .line 30
    sget-object v3, Lc47;->a:Lc47;

    .line 31
    .line 32
    invoke-virtual {v3}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getFoldersSchedules()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v2}, Ldv;->e()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/16 v7, 0xa

    .line 45
    .line 46
    invoke-static {v2, v7}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    invoke-static {v8}, Lx65;->q0(I)I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    const/16 v9, 0x10

    .line 55
    .line 56
    if-ge v8, v9, :cond_0

    .line 57
    .line 58
    move v8, v9

    .line 59
    :cond_0
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    invoke-direct {v9, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_1

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    move-object v10, v8

    .line 79
    check-cast v10, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 80
    .line 81
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    if-eqz v4, :cond_6

    .line 94
    .line 95
    new-instance v10, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-static {v4, v7}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const/4 v11, 0x0

    .line 109
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    if-eqz v12, :cond_5

    .line 114
    .line 115
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    move-object v13, v12

    .line 120
    check-cast v13, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 121
    .line 122
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->get_folderItems()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    if-eqz v12, :cond_4

    .line 127
    .line 128
    new-instance v14, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-static {v12, v7}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    if-eqz v15, :cond_3

    .line 146
    .line 147
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    check-cast v15, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 152
    .line 153
    move-object/from16 v25, v5

    .line 154
    .line 155
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v9, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 164
    .line 165
    if-eqz v5, :cond_2

    .line 166
    .line 167
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 168
    .line 169
    .line 170
    move-result-object v16

    .line 171
    invoke-virtual/range {v16 .. v16}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    invoke-static {v7, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    if-nez v7, :cond_2

    .line 184
    .line 185
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 186
    .line 187
    .line 188
    move-result-object v15

    .line 189
    const/4 v11, 0x1

    .line 190
    :cond_2
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-object/from16 v5, v25

    .line 194
    .line 195
    const/16 v7, 0xa

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_3
    move-object/from16 v25, v5

    .line 199
    .line 200
    move-object/from16 v17, v14

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_4
    move-object/from16 v25, v5

    .line 204
    .line 205
    move-object/from16 v17, v25

    .line 206
    .line 207
    :goto_3
    const/16 v23, 0x1f7

    .line 208
    .line 209
    const/16 v24, 0x0

    .line 210
    .line 211
    const/4 v14, 0x0

    .line 212
    const/4 v15, 0x0

    .line 213
    const/16 v16, 0x0

    .line 214
    .line 215
    const/16 v18, 0x0

    .line 216
    .line 217
    const/16 v19, 0x0

    .line 218
    .line 219
    const/16 v20, 0x0

    .line 220
    .line 221
    const/16 v21, 0x0

    .line 222
    .line 223
    const/16 v22, 0x0

    .line 224
    .line 225
    invoke-static/range {v13 .. v24}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-object/from16 v5, v25

    .line 233
    .line 234
    const/16 v7, 0xa

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_5
    move-object/from16 v25, v5

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_6
    move-object/from16 v25, v5

    .line 241
    .line 242
    move-object/from16 v10, v25

    .line 243
    .line 244
    const/4 v11, 0x0

    .line 245
    :goto_4
    if-eqz v11, :cond_7

    .line 246
    .line 247
    move-object/from16 v18, v10

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_7
    move-object/from16 v18, v25

    .line 251
    .line 252
    :goto_5
    if-eqz v18, :cond_8

    .line 253
    .line 254
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-eqz v4, :cond_9

    .line 259
    .line 260
    :cond_8
    const/4 v4, 0x0

    .line 261
    const/16 v5, 0xa

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_9
    const/16 v20, 0x17ff

    .line 265
    .line 266
    const/16 v21, 0x0

    .line 267
    .line 268
    const/4 v7, 0x0

    .line 269
    const/4 v8, 0x0

    .line 270
    const/4 v9, 0x0

    .line 271
    const/4 v10, 0x0

    .line 272
    const/4 v11, 0x0

    .line 273
    const/4 v12, 0x0

    .line 274
    const/4 v13, 0x0

    .line 275
    const/4 v14, 0x0

    .line 276
    const/4 v15, 0x0

    .line 277
    const/16 v16, 0x0

    .line 278
    .line 279
    const/16 v17, 0x0

    .line 280
    .line 281
    const/16 v19, 0x0

    .line 282
    .line 283
    const/4 v4, 0x0

    .line 284
    const/16 v5, 0xa

    .line 285
    .line 286
    invoke-static/range {v6 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    invoke-virtual {v3, v7}, Lc47;->e(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 291
    .line 292
    .line 293
    const/4 v7, 0x0

    .line 294
    invoke-static/range {v6 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    :goto_6
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getSchedules()Ljava/util/List;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    sget-object v7, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 306
    .line 307
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    new-instance v8, Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-static {v3, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 314
    .line 315
    .line 316
    move-result v9

    .line 317
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 318
    .line 319
    .line 320
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 325
    .line 326
    .line 327
    move-result v9

    .line 328
    if-eqz v9, :cond_3b

    .line 329
    .line 330
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    check-cast v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 335
    .line 336
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->isEnabled()Z

    .line 337
    .line 338
    .line 339
    move-result v13

    .line 340
    if-eqz v13, :cond_a

    .line 341
    .line 342
    const v10, 0x7f13057a

    .line 343
    .line 344
    .line 345
    goto :goto_8

    .line 346
    :cond_a
    const v10, 0x7f13057b

    .line 347
    .line 348
    .line 349
    :goto_8
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v20

    .line 353
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    instance-of v10, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 357
    .line 358
    const v11, 0x7f13049e

    .line 359
    .line 360
    .line 361
    sget-object v12, Lov2;->a:Lov2;

    .line 362
    .line 363
    if-eqz v10, :cond_12

    .line 364
    .line 365
    move-object/from16 v21, v9

    .line 366
    .line 367
    check-cast v21, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 368
    .line 369
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getQuickActionNames()Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v14

    .line 373
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getTitle()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v22

    .line 377
    if-nez v13, :cond_b

    .line 378
    .line 379
    sget-boolean v10, Lmp6;->g:Z

    .line 380
    .line 381
    if-nez v10, :cond_b

    .line 382
    .line 383
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->isRootNeeded()Z

    .line 384
    .line 385
    .line 386
    move-result v10

    .line 387
    if-eqz v10, :cond_b

    .line 388
    .line 389
    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v10

    .line 393
    :goto_9
    move-object/from16 v23, v10

    .line 394
    .line 395
    goto :goto_a

    .line 396
    :cond_b
    if-nez v13, :cond_c

    .line 397
    .line 398
    const/16 v18, 0x0

    .line 399
    .line 400
    const/16 v19, 0x3f

    .line 401
    .line 402
    const/4 v15, 0x0

    .line 403
    const/16 v16, 0x0

    .line 404
    .line 405
    const/16 v17, 0x0

    .line 406
    .line 407
    invoke-static/range {v14 .. v19}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v10

    .line 411
    goto :goto_9

    .line 412
    :cond_c
    move-object/from16 v23, v25

    .line 413
    .line 414
    :goto_a
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getLocations()Ljava/util/List;

    .line 415
    .line 416
    .line 417
    move-result-object v10

    .line 418
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 419
    .line 420
    .line 421
    move-result-object v11

    .line 422
    if-nez v13, :cond_d

    .line 423
    .line 424
    move-object/from16 v34, v3

    .line 425
    .line 426
    const/4 v3, 0x1

    .line 427
    goto/16 :goto_f

    .line 428
    .line 429
    :cond_d
    move-object v12, v11

    .line 430
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getItemId()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v11

    .line 434
    move-object v15, v12

    .line 435
    sget-object v12, Lw37;->QuickActions:Lw37;

    .line 436
    .line 437
    const v4, 0x7f13043b

    .line 438
    .line 439
    .line 440
    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v16

    .line 444
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    new-instance v4, Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-static {v14, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    .line 455
    .line 456
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 461
    .line 462
    .line 463
    move-result v14

    .line 464
    if-eqz v14, :cond_e

    .line 465
    .line 466
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v14

    .line 470
    check-cast v14, Ljava/lang/String;

    .line 471
    .line 472
    new-instance v5, Lx37;

    .line 473
    .line 474
    invoke-direct {v5, v14}, Lx37;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    const/16 v5, 0xa

    .line 481
    .line 482
    goto :goto_b

    .line 483
    :cond_e
    new-instance v28, Ly37;

    .line 484
    .line 485
    const/4 v14, 0x0

    .line 486
    move-object v2, v15

    .line 487
    const v15, 0x7f0801a5

    .line 488
    .line 489
    .line 490
    const/16 v18, 0x0

    .line 491
    .line 492
    const/16 v19, 0x188

    .line 493
    .line 494
    move-object/from16 v17, v4

    .line 495
    .line 496
    move-object v4, v2

    .line 497
    move-object v2, v10

    .line 498
    move-object/from16 v10, v28

    .line 499
    .line 500
    invoke-direct/range {v10 .. v19}, Ly37;-><init>(Ljava/lang/String;Lw37;ZZILjava/lang/String;Ljava/util/List;Ljava/util/Set;I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getItemId()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v11

    .line 507
    sget-object v12, Lw37;->AllowedApps:Lw37;

    .line 508
    .line 509
    const v5, 0x7f130033

    .line 510
    .line 511
    .line 512
    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v16

    .line 516
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getAllowedApps()Ljava/util/List;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    new-instance v10, Ljava/util/ArrayList;

    .line 524
    .line 525
    const/16 v14, 0xa

    .line 526
    .line 527
    invoke-static {v5, v14}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 528
    .line 529
    .line 530
    move-result v15

    .line 531
    invoke-direct {v10, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 532
    .line 533
    .line 534
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 539
    .line 540
    .line 541
    move-result v14

    .line 542
    if-eqz v14, :cond_f

    .line 543
    .line 544
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v14

    .line 548
    check-cast v14, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;

    .line 549
    .line 550
    new-instance v15, Lx37;

    .line 551
    .line 552
    move-object/from16 v34, v3

    .line 553
    .line 554
    const/4 v3, 0x1

    .line 555
    invoke-virtual {v14, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;->toDisplayString(Z)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v14

    .line 559
    invoke-direct {v15, v14}, Lx37;-><init>(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-object/from16 v3, v34

    .line 566
    .line 567
    goto :goto_c

    .line 568
    :cond_f
    move-object/from16 v34, v3

    .line 569
    .line 570
    const/4 v3, 0x1

    .line 571
    new-instance v29, Ly37;

    .line 572
    .line 573
    const/4 v14, 0x0

    .line 574
    const v15, 0x7f080151

    .line 575
    .line 576
    .line 577
    const/16 v18, 0x0

    .line 578
    .line 579
    const/16 v19, 0x188

    .line 580
    .line 581
    move-object/from16 v17, v10

    .line 582
    .line 583
    move-object/from16 v10, v29

    .line 584
    .line 585
    invoke-direct/range {v10 .. v19}, Ly37;-><init>(Ljava/lang/String;Lw37;ZZILjava/lang/String;Ljava/util/List;Ljava/util/Set;I)V

    .line 586
    .line 587
    .line 588
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getAppParts()Ljava/util/List;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    invoke-static {v9, v13, v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->a(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLjava/util/List;)Ly37;

    .line 593
    .line 594
    .line 595
    move-result-object v30

    .line 596
    invoke-static {v9, v13, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->b(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLjava/util/List;)Ly37;

    .line 597
    .line 598
    .line 599
    move-result-object v5

    .line 600
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->isSyncOnly()Z

    .line 601
    .line 602
    .line 603
    move-result v11

    .line 604
    if-nez v11, :cond_10

    .line 605
    .line 606
    move-object/from16 v31, v5

    .line 607
    .line 608
    goto :goto_d

    .line 609
    :cond_10
    move-object/from16 v31, v25

    .line 610
    .line 611
    :goto_d
    sget-object v5, Lq05;->CLOUD:Lq05;

    .line 612
    .line 613
    invoke-interface {v2, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v2

    .line 617
    if-eqz v2, :cond_11

    .line 618
    .line 619
    invoke-static {v9, v13, v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->d(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Ly37;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    move-object/from16 v32, v2

    .line 624
    .line 625
    goto :goto_e

    .line 626
    :cond_11
    move-object/from16 v32, v25

    .line 627
    .line 628
    :goto_e
    invoke-static {v9, v13}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->c(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Z)Ly37;

    .line 629
    .line 630
    .line 631
    move-result-object v33

    .line 632
    move-object/from16 v29, v10

    .line 633
    .line 634
    filled-new-array/range {v28 .. v33}, [Ly37;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    invoke-static {v2}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 639
    .line 640
    .line 641
    move-result-object v12

    .line 642
    :goto_f
    move-object/from16 v18, v12

    .line 643
    .line 644
    move-object/from16 v11, v22

    .line 645
    .line 646
    move-object/from16 v12, v23

    .line 647
    .line 648
    :goto_10
    const/16 v26, 0xa

    .line 649
    .line 650
    goto/16 :goto_2a

    .line 651
    .line 652
    :cond_12
    move-object/from16 v34, v3

    .line 653
    .line 654
    const/4 v3, 0x1

    .line 655
    instance-of v2, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 656
    .line 657
    if-eqz v2, :cond_1b

    .line 658
    .line 659
    move-object v2, v9

    .line 660
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 661
    .line 662
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLabelNames()Ljava/util/List;

    .line 663
    .line 664
    .line 665
    move-result-object v14

    .line 666
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getTitle()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v22

    .line 670
    if-nez v13, :cond_13

    .line 671
    .line 672
    sget-boolean v4, Lmp6;->g:Z

    .line 673
    .line 674
    if-nez v4, :cond_13

    .line 675
    .line 676
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->isRootNeeded()Z

    .line 677
    .line 678
    .line 679
    move-result v4

    .line 680
    if-eqz v4, :cond_13

    .line 681
    .line 682
    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v4

    .line 686
    :goto_11
    move-object/from16 v23, v4

    .line 687
    .line 688
    goto :goto_12

    .line 689
    :cond_13
    if-nez v13, :cond_14

    .line 690
    .line 691
    const/16 v18, 0x0

    .line 692
    .line 693
    const/16 v19, 0x3f

    .line 694
    .line 695
    const/4 v15, 0x0

    .line 696
    const/16 v16, 0x0

    .line 697
    .line 698
    const/16 v17, 0x0

    .line 699
    .line 700
    invoke-static/range {v14 .. v19}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    goto :goto_11

    .line 705
    :cond_14
    move-object/from16 v23, v25

    .line 706
    .line 707
    :goto_12
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLocations()Ljava/util/List;

    .line 708
    .line 709
    .line 710
    move-result-object v4

    .line 711
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 712
    .line 713
    .line 714
    move-result-object v5

    .line 715
    if-nez v13, :cond_15

    .line 716
    .line 717
    goto :goto_f

    .line 718
    :cond_15
    new-instance v10, Ly37;

    .line 719
    .line 720
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getItemId()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v11

    .line 724
    move-object v15, v12

    .line 725
    sget-object v12, Lw37;->Labels:Lw37;

    .line 726
    .line 727
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLabels()Ljava/util/Set;

    .line 728
    .line 729
    .line 730
    move-result-object v16

    .line 731
    if-eqz v16, :cond_17

    .line 732
    .line 733
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    .line 734
    .line 735
    .line 736
    move-result v16

    .line 737
    if-eqz v16, :cond_16

    .line 738
    .line 739
    goto :goto_13

    .line 740
    :cond_16
    move-object/from16 v16, v14

    .line 741
    .line 742
    const/4 v14, 0x0

    .line 743
    goto :goto_14

    .line 744
    :cond_17
    :goto_13
    move-object/from16 v16, v14

    .line 745
    .line 746
    move v14, v3

    .line 747
    :goto_14
    const v3, 0x7f1302e3

    .line 748
    .line 749
    .line 750
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 755
    .line 756
    .line 757
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    .line 758
    .line 759
    .line 760
    move-result v16

    .line 761
    if-eqz v16, :cond_18

    .line 762
    .line 763
    new-instance v15, Lx37;

    .line 764
    .line 765
    move-object/from16 v21, v2

    .line 766
    .line 767
    const v2, 0x7f1304de

    .line 768
    .line 769
    .line 770
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    invoke-direct {v15, v2}, Lx37;-><init>(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    invoke-static {v15}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 778
    .line 779
    .line 780
    move-result-object v2

    .line 781
    move-object/from16 v17, v2

    .line 782
    .line 783
    goto :goto_15

    .line 784
    :cond_18
    move-object/from16 v21, v2

    .line 785
    .line 786
    move-object/from16 v17, v15

    .line 787
    .line 788
    :goto_15
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLabels()Ljava/util/Set;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    if-nez v2, :cond_19

    .line 793
    .line 794
    sget-object v2, Lsv2;->a:Lsv2;

    .line 795
    .line 796
    :cond_19
    move-object/from16 v18, v2

    .line 797
    .line 798
    const/16 v19, 0x100

    .line 799
    .line 800
    const v15, 0x7f080165

    .line 801
    .line 802
    .line 803
    move-object/from16 v16, v3

    .line 804
    .line 805
    invoke-direct/range {v10 .. v19}, Ly37;-><init>(Ljava/lang/String;Lw37;ZZILjava/lang/String;Ljava/util/List;Ljava/util/Set;I)V

    .line 806
    .line 807
    .line 808
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getAppParts()Ljava/util/List;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    invoke-static {v9, v13, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->a(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLjava/util/List;)Ly37;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    invoke-static {v9, v13, v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->b(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLjava/util/List;)Ly37;

    .line 817
    .line 818
    .line 819
    move-result-object v3

    .line 820
    sget-object v11, Lq05;->CLOUD:Lq05;

    .line 821
    .line 822
    invoke-interface {v4, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    move-result v4

    .line 826
    if-eqz v4, :cond_1a

    .line 827
    .line 828
    invoke-static {v9, v13, v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->d(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Ly37;

    .line 829
    .line 830
    .line 831
    move-result-object v4

    .line 832
    goto :goto_16

    .line 833
    :cond_1a
    move-object/from16 v4, v25

    .line 834
    .line 835
    :goto_16
    invoke-static {v9, v13}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->c(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Z)Ly37;

    .line 836
    .line 837
    .line 838
    move-result-object v5

    .line 839
    filled-new-array {v10, v2, v3, v4, v5}, [Ly37;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    invoke-static {v2}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 844
    .line 845
    .line 846
    move-result-object v12

    .line 847
    goto/16 :goto_f

    .line 848
    .line 849
    :cond_1b
    move-object v15, v12

    .line 850
    instance-of v2, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 851
    .line 852
    if-eqz v2, :cond_21

    .line 853
    .line 854
    move-object v2, v9

    .line 855
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 856
    .line 857
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->getTitle()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v22

    .line 861
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->getConfig()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 862
    .line 863
    .line 864
    move-result-object v3

    .line 865
    if-nez v13, :cond_1c

    .line 866
    .line 867
    sget-boolean v4, Lmp6;->g:Z

    .line 868
    .line 869
    if-nez v4, :cond_1c

    .line 870
    .line 871
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->isRootNeeded()Z

    .line 872
    .line 873
    .line 874
    move-result v4

    .line 875
    if-eqz v4, :cond_1c

    .line 876
    .line 877
    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v4

    .line 881
    :goto_17
    move-object/from16 v23, v4

    .line 882
    .line 883
    goto :goto_18

    .line 884
    :cond_1c
    if-nez v13, :cond_1d

    .line 885
    .line 886
    if-eqz v3, :cond_1d

    .line 887
    .line 888
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getName()Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v4

    .line 892
    goto :goto_17

    .line 893
    :cond_1d
    move-object/from16 v23, v25

    .line 894
    .line 895
    :goto_18
    if-nez v13, :cond_1e

    .line 896
    .line 897
    move-object v12, v15

    .line 898
    const/4 v4, 0x0

    .line 899
    goto/16 :goto_f

    .line 900
    .line 901
    :cond_1e
    new-instance v10, Ly37;

    .line 902
    .line 903
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->getItemId()Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v11

    .line 907
    sget-object v12, Lw37;->Config:Lw37;

    .line 908
    .line 909
    if-nez v3, :cond_1f

    .line 910
    .line 911
    const/4 v14, 0x1

    .line 912
    goto :goto_19

    .line 913
    :cond_1f
    const/4 v14, 0x0

    .line 914
    :goto_19
    const v2, 0x7f1301b0

    .line 915
    .line 916
    .line 917
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v16

    .line 921
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 922
    .line 923
    .line 924
    if-eqz v3, :cond_20

    .line 925
    .line 926
    new-instance v2, Lx37;

    .line 927
    .line 928
    const/4 v4, 0x0

    .line 929
    invoke-static {v3, v4}, Lsq1;->a(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)Z

    .line 930
    .line 931
    .line 932
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getName()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v3

    .line 936
    invoke-direct {v2, v3}, Lx37;-><init>(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 940
    .line 941
    .line 942
    move-result-object v2

    .line 943
    :goto_1a
    move-object/from16 v17, v2

    .line 944
    .line 945
    goto :goto_1b

    .line 946
    :cond_20
    const/4 v4, 0x0

    .line 947
    new-instance v2, Lx37;

    .line 948
    .line 949
    const v3, 0x7f1304db

    .line 950
    .line 951
    .line 952
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v3

    .line 956
    invoke-direct {v2, v3}, Lx37;-><init>(Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 960
    .line 961
    .line 962
    move-result-object v2

    .line 963
    goto :goto_1a

    .line 964
    :goto_1b
    const/16 v18, 0x0

    .line 965
    .line 966
    const/16 v19, 0x180

    .line 967
    .line 968
    const v15, 0x7f08011d

    .line 969
    .line 970
    .line 971
    invoke-direct/range {v10 .. v19}, Ly37;-><init>(Ljava/lang/String;Lw37;ZZILjava/lang/String;Ljava/util/List;Ljava/util/Set;I)V

    .line 972
    .line 973
    .line 974
    invoke-static {v9, v13}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->c(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Z)Ly37;

    .line 975
    .line 976
    .line 977
    move-result-object v2

    .line 978
    filled-new-array {v10, v2}, [Ly37;

    .line 979
    .line 980
    .line 981
    move-result-object v2

    .line 982
    invoke-static {v2}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 983
    .line 984
    .line 985
    move-result-object v12

    .line 986
    goto/16 :goto_f

    .line 987
    .line 988
    :cond_21
    const/4 v4, 0x0

    .line 989
    instance-of v2, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 990
    .line 991
    const v3, 0x7f13029b

    .line 992
    .line 993
    .line 994
    if-eqz v2, :cond_25

    .line 995
    .line 996
    move-object v2, v9

    .line 997
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 998
    .line 999
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getTitle()Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v22

    .line 1003
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->isPermissionsGranted()Z

    .line 1004
    .line 1005
    .line 1006
    move-result v5

    .line 1007
    if-nez v5, :cond_22

    .line 1008
    .line 1009
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v3

    .line 1013
    move-object/from16 v23, v3

    .line 1014
    .line 1015
    goto :goto_1c

    .line 1016
    :cond_22
    move-object/from16 v23, v25

    .line 1017
    .line 1018
    :goto_1c
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getLocations()Ljava/util/List;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v3

    .line 1022
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v2

    .line 1026
    if-nez v13, :cond_23

    .line 1027
    .line 1028
    :goto_1d
    move-object v12, v15

    .line 1029
    goto/16 :goto_f

    .line 1030
    .line 1031
    :cond_23
    new-instance v12, Ljava/util/ArrayList;

    .line 1032
    .line 1033
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    .line 1035
    .line 1036
    invoke-static {v9, v13, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->b(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLjava/util/List;)Ly37;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v5

    .line 1040
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    .line 1042
    .line 1043
    sget-object v5, Lq05;->CLOUD:Lq05;

    .line 1044
    .line 1045
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 1046
    .line 1047
    .line 1048
    move-result v3

    .line 1049
    if-eqz v3, :cond_24

    .line 1050
    .line 1051
    invoke-static {v9, v13, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->d(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Ly37;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v2

    .line 1055
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    .line 1057
    .line 1058
    :cond_24
    invoke-static {v9, v13}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->c(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Z)Ly37;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v2

    .line 1062
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    .line 1064
    .line 1065
    goto/16 :goto_f

    .line 1066
    .line 1067
    :cond_25
    instance-of v2, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 1068
    .line 1069
    if-eqz v2, :cond_29

    .line 1070
    .line 1071
    move-object v2, v9

    .line 1072
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 1073
    .line 1074
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->getTitle()Ljava/lang/String;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v22

    .line 1078
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->isPermissionsGranted()Z

    .line 1079
    .line 1080
    .line 1081
    move-result v5

    .line 1082
    if-nez v5, :cond_26

    .line 1083
    .line 1084
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v3

    .line 1088
    move-object/from16 v23, v3

    .line 1089
    .line 1090
    goto :goto_1e

    .line 1091
    :cond_26
    move-object/from16 v23, v25

    .line 1092
    .line 1093
    :goto_1e
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->getLocations()Ljava/util/List;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v3

    .line 1097
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v2

    .line 1101
    if-nez v13, :cond_27

    .line 1102
    .line 1103
    goto :goto_1d

    .line 1104
    :cond_27
    new-instance v12, Ljava/util/ArrayList;

    .line 1105
    .line 1106
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    .line 1108
    .line 1109
    invoke-static {v9, v13, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->b(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLjava/util/List;)Ly37;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v5

    .line 1113
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    .line 1115
    .line 1116
    sget-object v5, Lq05;->CLOUD:Lq05;

    .line 1117
    .line 1118
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 1119
    .line 1120
    .line 1121
    move-result v3

    .line 1122
    if-eqz v3, :cond_28

    .line 1123
    .line 1124
    invoke-static {v9, v13, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->d(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Ly37;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v2

    .line 1128
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    .line 1130
    .line 1131
    :cond_28
    invoke-static {v9, v13}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->c(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Z)Ly37;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v2

    .line 1135
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    .line 1137
    .line 1138
    goto/16 :goto_f

    .line 1139
    .line 1140
    :cond_29
    instance-of v2, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 1141
    .line 1142
    if-eqz v2, :cond_2c

    .line 1143
    .line 1144
    move-object v2, v9

    .line 1145
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 1146
    .line 1147
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getTitle()Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v22

    .line 1151
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getLocations()Ljava/util/List;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v3

    .line 1155
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v2

    .line 1159
    if-nez v13, :cond_2a

    .line 1160
    .line 1161
    move-object v12, v15

    .line 1162
    goto :goto_1f

    .line 1163
    :cond_2a
    new-instance v12, Ljava/util/ArrayList;

    .line 1164
    .line 1165
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    .line 1167
    .line 1168
    invoke-static {v9, v13, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->b(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLjava/util/List;)Ly37;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v5

    .line 1172
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    .line 1174
    .line 1175
    sget-object v5, Lq05;->CLOUD:Lq05;

    .line 1176
    .line 1177
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 1178
    .line 1179
    .line 1180
    move-result v3

    .line 1181
    if-eqz v3, :cond_2b

    .line 1182
    .line 1183
    invoke-static {v9, v13, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->d(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Ly37;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v2

    .line 1187
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    .line 1189
    .line 1190
    :cond_2b
    invoke-static {v9, v13}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->c(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Z)Ly37;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v2

    .line 1194
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    .line 1196
    .line 1197
    :goto_1f
    move-object/from16 v18, v12

    .line 1198
    .line 1199
    move-object/from16 v11, v22

    .line 1200
    .line 1201
    move-object/from16 v12, v25

    .line 1202
    .line 1203
    goto/16 :goto_10

    .line 1204
    .line 1205
    :cond_2c
    instance-of v2, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 1206
    .line 1207
    if-eqz v2, :cond_30

    .line 1208
    .line 1209
    move-object v2, v9

    .line 1210
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 1211
    .line 1212
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getTitle()Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v22

    .line 1216
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->isBackupRequirementPossible()Z

    .line 1217
    .line 1218
    .line 1219
    move-result v3

    .line 1220
    if-nez v3, :cond_2d

    .line 1221
    .line 1222
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getBackupRequirement()Lsk0;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v3

    .line 1226
    invoke-virtual {v3, v7}, Lsk0;->conditionMsg(Landroid/content/Context;)Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v3

    .line 1230
    move-object/from16 v23, v3

    .line 1231
    .line 1232
    goto :goto_20

    .line 1233
    :cond_2d
    move-object/from16 v23, v25

    .line 1234
    .line 1235
    :goto_20
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getLocations()Ljava/util/List;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v3

    .line 1239
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v2

    .line 1243
    if-nez v13, :cond_2e

    .line 1244
    .line 1245
    goto/16 :goto_1d

    .line 1246
    .line 1247
    :cond_2e
    new-instance v12, Ljava/util/ArrayList;

    .line 1248
    .line 1249
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    .line 1251
    .line 1252
    invoke-static {v9, v13, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->b(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLjava/util/List;)Ly37;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v5

    .line 1256
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    .line 1258
    .line 1259
    sget-object v5, Lq05;->CLOUD:Lq05;

    .line 1260
    .line 1261
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 1262
    .line 1263
    .line 1264
    move-result v3

    .line 1265
    if-eqz v3, :cond_2f

    .line 1266
    .line 1267
    invoke-static {v9, v13, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->d(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Ly37;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v2

    .line 1271
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    .line 1273
    .line 1274
    :cond_2f
    invoke-static {v9, v13}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->c(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Z)Ly37;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v2

    .line 1278
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    .line 1280
    .line 1281
    goto/16 :goto_f

    .line 1282
    .line 1283
    :cond_30
    instance-of v2, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 1284
    .line 1285
    if-eqz v2, :cond_3a

    .line 1286
    .line 1287
    move-object v2, v9

    .line 1288
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 1289
    .line 1290
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getFolderNames()Ljava/util/List;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v27

    .line 1294
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getTitle()Ljava/lang/String;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v22

    .line 1298
    if-nez v13, :cond_31

    .line 1299
    .line 1300
    const/16 v31, 0x0

    .line 1301
    .line 1302
    const/16 v32, 0x3f

    .line 1303
    .line 1304
    const/16 v28, 0x0

    .line 1305
    .line 1306
    const/16 v29, 0x0

    .line 1307
    .line 1308
    const/16 v30, 0x0

    .line 1309
    .line 1310
    invoke-static/range {v27 .. v32}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v3

    .line 1314
    move-object/from16 v23, v3

    .line 1315
    .line 1316
    :goto_21
    move-object/from16 v5, v27

    .line 1317
    .line 1318
    goto :goto_22

    .line 1319
    :cond_31
    move-object/from16 v23, v25

    .line 1320
    .line 1321
    goto :goto_21

    .line 1322
    :goto_22
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getLocations()Ljava/util/List;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v3

    .line 1326
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v10

    .line 1330
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getBackupStrategy()Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v21

    .line 1334
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->isBackupAllFolders()Z

    .line 1335
    .line 1336
    .line 1337
    move-result v27

    .line 1338
    if-nez v13, :cond_32

    .line 1339
    .line 1340
    move-object v12, v15

    .line 1341
    const/16 v26, 0xa

    .line 1342
    .line 1343
    goto/16 :goto_29

    .line 1344
    .line 1345
    :cond_32
    new-instance v12, Ljava/util/ArrayList;

    .line 1346
    .line 1347
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    .line 1349
    .line 1350
    move-object v11, v10

    .line 1351
    new-instance v10, Ly37;

    .line 1352
    .line 1353
    move-object v14, v11

    .line 1354
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getItemId()Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v11

    .line 1358
    move-object v15, v12

    .line 1359
    sget-object v12, Lw37;->FolderMode:Lw37;

    .line 1360
    .line 1361
    const v4, 0x7f13027f

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v16

    .line 1368
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1369
    .line 1370
    .line 1371
    new-instance v4, Lx37;

    .line 1372
    .line 1373
    if-eqz v27, :cond_33

    .line 1374
    .line 1375
    move-object/from16 v29, v2

    .line 1376
    .line 1377
    const v2, 0x7f130031

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v2

    .line 1384
    goto :goto_23

    .line 1385
    :cond_33
    move-object/from16 v29, v2

    .line 1386
    .line 1387
    const v2, 0x7f1304e8

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v2

    .line 1394
    :goto_23
    invoke-direct {v4, v2}, Lx37;-><init>(Ljava/lang/String;)V

    .line 1395
    .line 1396
    .line 1397
    invoke-static {v4}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v17

    .line 1401
    const/16 v18, 0x0

    .line 1402
    .line 1403
    const/16 v19, 0x188

    .line 1404
    .line 1405
    move-object v2, v14

    .line 1406
    const/4 v14, 0x0

    .line 1407
    move-object v4, v15

    .line 1408
    const v15, 0x7f080151

    .line 1409
    .line 1410
    .line 1411
    invoke-direct/range {v10 .. v19}, Ly37;-><init>(Ljava/lang/String;Lw37;ZZILjava/lang/String;Ljava/util/List;Ljava/util/Set;I)V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    .line 1416
    .line 1417
    if-nez v27, :cond_38

    .line 1418
    .line 1419
    invoke-virtual/range {v29 .. v29}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getItemId()Ljava/lang/String;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v11

    .line 1423
    sget-object v12, Lw37;->Folders:Lw37;

    .line 1424
    .line 1425
    invoke-virtual/range {v29 .. v29}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getFolderItems()Ljava/util/List;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v10

    .line 1429
    if-eqz v10, :cond_35

    .line 1430
    .line 1431
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 1432
    .line 1433
    .line 1434
    move-result v10

    .line 1435
    if-eqz v10, :cond_34

    .line 1436
    .line 1437
    goto :goto_24

    .line 1438
    :cond_34
    const/4 v14, 0x0

    .line 1439
    goto :goto_25

    .line 1440
    :cond_35
    :goto_24
    const/4 v14, 0x1

    .line 1441
    :goto_25
    const v10, 0x7f1304dd

    .line 1442
    .line 1443
    .line 1444
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v16

    .line 1448
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1449
    .line 1450
    .line 1451
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 1452
    .line 1453
    .line 1454
    move-result v10

    .line 1455
    if-eqz v10, :cond_36

    .line 1456
    .line 1457
    new-instance v5, Lx37;

    .line 1458
    .line 1459
    const-string v10, "Select folders"

    .line 1460
    .line 1461
    invoke-direct {v5, v10}, Lx37;-><init>(Ljava/lang/String;)V

    .line 1462
    .line 1463
    .line 1464
    invoke-static {v5}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v5

    .line 1468
    move-object/from16 v17, v11

    .line 1469
    .line 1470
    goto :goto_27

    .line 1471
    :cond_36
    new-instance v10, Ljava/util/ArrayList;

    .line 1472
    .line 1473
    move-object/from16 v17, v11

    .line 1474
    .line 1475
    const/16 v15, 0xa

    .line 1476
    .line 1477
    invoke-static {v5, v15}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1478
    .line 1479
    .line 1480
    move-result v11

    .line 1481
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1482
    .line 1483
    .line 1484
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v5

    .line 1488
    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1489
    .line 1490
    .line 1491
    move-result v11

    .line 1492
    if-eqz v11, :cond_37

    .line 1493
    .line 1494
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v11

    .line 1498
    check-cast v11, Ljava/lang/String;

    .line 1499
    .line 1500
    new-instance v15, Lx37;

    .line 1501
    .line 1502
    invoke-direct {v15, v11}, Lx37;-><init>(Ljava/lang/String;)V

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    .line 1507
    .line 1508
    const/16 v15, 0xa

    .line 1509
    .line 1510
    goto :goto_26

    .line 1511
    :cond_37
    move-object v5, v10

    .line 1512
    :goto_27
    new-instance v10, Ly37;

    .line 1513
    .line 1514
    const v15, 0x7f08014a

    .line 1515
    .line 1516
    .line 1517
    const/16 v18, 0x0

    .line 1518
    .line 1519
    const/16 v19, 0x180

    .line 1520
    .line 1521
    move-object/from16 v11, v17

    .line 1522
    .line 1523
    const/16 v26, 0xa

    .line 1524
    .line 1525
    move-object/from16 v17, v5

    .line 1526
    .line 1527
    invoke-direct/range {v10 .. v19}, Ly37;-><init>(Ljava/lang/String;Lw37;ZZILjava/lang/String;Ljava/util/List;Ljava/util/Set;I)V

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    .line 1532
    .line 1533
    goto :goto_28

    .line 1534
    :cond_38
    const/16 v26, 0xa

    .line 1535
    .line 1536
    :goto_28
    invoke-static {v9, v13, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->b(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLjava/util/List;)Ly37;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v5

    .line 1540
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1541
    .line 1542
    .line 1543
    sget-object v5, Lq05;->CLOUD:Lq05;

    .line 1544
    .line 1545
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 1546
    .line 1547
    .line 1548
    move-result v3

    .line 1549
    if-eqz v3, :cond_39

    .line 1550
    .line 1551
    invoke-static {v9, v13, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->d(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Ly37;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v2

    .line 1555
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1556
    .line 1557
    .line 1558
    :cond_39
    new-instance v10, Ly37;

    .line 1559
    .line 1560
    invoke-virtual/range {v29 .. v29}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getItemId()Ljava/lang/String;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v11

    .line 1564
    sget-object v12, Lw37;->BackupStrategy:Lw37;

    .line 1565
    .line 1566
    const v2, 0x7f130266

    .line 1567
    .line 1568
    .line 1569
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v16

    .line 1573
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1574
    .line 1575
    .line 1576
    new-instance v2, Lx37;

    .line 1577
    .line 1578
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->getTitleStringRes()I

    .line 1579
    .line 1580
    .line 1581
    move-result v3

    .line 1582
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v3

    .line 1586
    invoke-direct {v2, v3}, Lx37;-><init>(Ljava/lang/String;)V

    .line 1587
    .line 1588
    .line 1589
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v17

    .line 1593
    const/16 v18, 0x0

    .line 1594
    .line 1595
    const/16 v19, 0x188

    .line 1596
    .line 1597
    const/4 v14, 0x0

    .line 1598
    const v15, 0x7f080189

    .line 1599
    .line 1600
    .line 1601
    invoke-direct/range {v10 .. v19}, Ly37;-><init>(Ljava/lang/String;Lw37;ZZILjava/lang/String;Ljava/util/List;Ljava/util/Set;I)V

    .line 1602
    .line 1603
    .line 1604
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    .line 1606
    .line 1607
    invoke-static {v9, v13}, Lorg/swiftapps/swiftbackup/home/schedule/data/a;->c(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Z)Ly37;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v2

    .line 1611
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1612
    .line 1613
    .line 1614
    move-object v12, v4

    .line 1615
    :goto_29
    move-object/from16 v18, v12

    .line 1616
    .line 1617
    move-object/from16 v11, v22

    .line 1618
    .line 1619
    move-object/from16 v12, v23

    .line 1620
    .line 1621
    :goto_2a
    new-instance v10, Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 1622
    .line 1623
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getNextRunText()Ljava/lang/String;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v15

    .line 1627
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getLastRunText()Ljava/lang/CharSequence;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v16

    .line 1631
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->hasLastRunError()Z

    .line 1632
    .line 1633
    .line 1634
    move-result v17

    .line 1635
    new-instance v2, Lz28;

    .line 1636
    .line 1637
    const/16 v3, 0x11

    .line 1638
    .line 1639
    invoke-direct {v2, v9, v3}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 1640
    .line 1641
    .line 1642
    move-object/from16 v19, v2

    .line 1643
    .line 1644
    move v14, v13

    .line 1645
    move-object/from16 v13, v20

    .line 1646
    .line 1647
    invoke-direct/range {v10 .. v19}, Lorg/swiftapps/swiftbackup/home/schedule/data/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/util/List;Lz28;)V

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    .line 1652
    .line 1653
    move/from16 v5, v26

    .line 1654
    .line 1655
    move-object/from16 v3, v34

    .line 1656
    .line 1657
    const/4 v4, 0x0

    .line 1658
    goto/16 :goto_7

    .line 1659
    .line 1660
    :cond_3a
    invoke-static {}, Lq;->j()V

    .line 1661
    .line 1662
    .line 1663
    return-object v25

    .line 1664
    :cond_3b
    new-instance v2, Lm47;

    .line 1665
    .line 1666
    iget-boolean v0, v0, Lh47;->b:Z

    .line 1667
    .line 1668
    invoke-direct {v2, v8, v0, v6}, Lm47;-><init>(Ljava/util/ArrayList;ZLorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 1669
    .line 1670
    .line 1671
    goto :goto_2b

    .line 1672
    :cond_3c
    sget-object v2, Ll47;->a:Ll47;

    .line 1673
    .line 1674
    :goto_2b
    invoke-virtual {v1, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 1675
    .line 1676
    .line 1677
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1678
    .line 1679
    return-object v0
.end method
