.class public abstract Lorg/swiftapps/swiftbackup/home/schedule/data/d;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static final a(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;
    .locals 31

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppsQuickActionSchedules()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/16 v3, 0xa

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v4

    .line 20
    :goto_0
    if-eqz v0, :cond_4

    .line 21
    .line 22
    new-instance v5, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_3

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    move-object v7, v6

    .line 46
    check-cast v7, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 47
    .line 48
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->isRootNeeded()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    sget-boolean v6, Lmp6;->g:Z

    .line 55
    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->isEnabled()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_1

    .line 63
    .line 64
    move/from16 v16, v2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    move/from16 v16, v1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->isEnabled()Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    move/from16 v16, v6

    .line 75
    .line 76
    :goto_2
    const/16 v17, 0xff

    .line 77
    .line 78
    const/16 v18, 0x0

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    const/4 v9, 0x0

    .line 82
    const/4 v10, 0x0

    .line 83
    const/4 v11, 0x0

    .line 84
    const/4 v12, 0x0

    .line 85
    const/4 v13, 0x0

    .line 86
    const/4 v14, 0x0

    .line 87
    const/4 v15, 0x0

    .line 88
    invoke-static/range {v7 .. v18}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    move-object v12, v5

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    move-object v12, v4

    .line 99
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppsLabelSchedules()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_9

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_5

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_5
    move-object v0, v4

    .line 113
    :goto_4
    if-eqz v0, :cond_9

    .line 114
    .line 115
    new-instance v5, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_8

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    move-object v13, v6

    .line 139
    check-cast v13, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 140
    .line 141
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->isRootNeeded()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_7

    .line 146
    .line 147
    sget-boolean v6, Lmp6;->g:Z

    .line 148
    .line 149
    if-eqz v6, :cond_6

    .line 150
    .line 151
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->isEnabled()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_6

    .line 156
    .line 157
    move/from16 v21, v2

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_6
    move/from16 v21, v1

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_7
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->isEnabled()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    move/from16 v21, v6

    .line 168
    .line 169
    :goto_6
    const/16 v22, 0x7f

    .line 170
    .line 171
    const/16 v23, 0x0

    .line 172
    .line 173
    const/4 v14, 0x0

    .line 174
    const/4 v15, 0x0

    .line 175
    const/16 v16, 0x0

    .line 176
    .line 177
    const/16 v17, 0x0

    .line 178
    .line 179
    const/16 v18, 0x0

    .line 180
    .line 181
    const/16 v19, 0x0

    .line 182
    .line 183
    const/16 v20, 0x0

    .line 184
    .line 185
    invoke-static/range {v13 .. v23}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_8
    move-object v13, v5

    .line 194
    goto :goto_7

    .line 195
    :cond_9
    move-object v13, v4

    .line 196
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppConfigSchedules()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-eqz v0, :cond_e

    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-nez v5, :cond_a

    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_a
    move-object v0, v4

    .line 210
    :goto_8
    if-eqz v0, :cond_e

    .line 211
    .line 212
    new-instance v5, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-eqz v6, :cond_d

    .line 230
    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    move-object v14, v6

    .line 236
    check-cast v14, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 237
    .line 238
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->isRootNeeded()Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-eqz v6, :cond_c

    .line 243
    .line 244
    sget-boolean v6, Lmp6;->g:Z

    .line 245
    .line 246
    if-eqz v6, :cond_b

    .line 247
    .line 248
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->isEnabled()Z

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    if-eqz v6, :cond_b

    .line 253
    .line 254
    move/from16 v19, v2

    .line 255
    .line 256
    goto :goto_a

    .line 257
    :cond_b
    move/from16 v19, v1

    .line 258
    .line 259
    goto :goto_a

    .line 260
    :cond_c
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->isEnabled()Z

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    move/from16 v19, v6

    .line 265
    .line 266
    :goto_a
    const/16 v20, 0xf

    .line 267
    .line 268
    const/16 v21, 0x0

    .line 269
    .line 270
    const/4 v15, 0x0

    .line 271
    const/16 v16, 0x0

    .line 272
    .line 273
    const/16 v17, 0x0

    .line 274
    .line 275
    const/16 v18, 0x0

    .line 276
    .line 277
    invoke-static/range {v14 .. v21}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_d
    move-object v14, v5

    .line 286
    goto :goto_b

    .line 287
    :cond_e
    move-object v14, v4

    .line 288
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getMessagesSchedules()Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    if-eqz v0, :cond_11

    .line 293
    .line 294
    new-instance v5, Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 301
    .line 302
    .line 303
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    if-eqz v6, :cond_10

    .line 312
    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    move-object v15, v6

    .line 318
    check-cast v15, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 319
    .line 320
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->isEnabled()Z

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    if-eqz v6, :cond_f

    .line 325
    .line 326
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->isPermissionsGranted()Z

    .line 327
    .line 328
    .line 329
    move-result v6

    .line 330
    if-eqz v6, :cond_f

    .line 331
    .line 332
    move/from16 v21, v2

    .line 333
    .line 334
    goto :goto_d

    .line 335
    :cond_f
    move/from16 v21, v1

    .line 336
    .line 337
    :goto_d
    const/16 v22, 0x1f

    .line 338
    .line 339
    const/16 v23, 0x0

    .line 340
    .line 341
    const/16 v16, 0x0

    .line 342
    .line 343
    const/16 v17, 0x0

    .line 344
    .line 345
    const/16 v18, 0x0

    .line 346
    .line 347
    const/16 v19, 0x0

    .line 348
    .line 349
    const/16 v20, 0x0

    .line 350
    .line 351
    invoke-static/range {v15 .. v23}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    goto :goto_c

    .line 359
    :cond_10
    move-object v15, v5

    .line 360
    goto :goto_e

    .line 361
    :cond_11
    move-object v15, v4

    .line 362
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getCallLogsSchedules()Ljava/util/List;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    if-eqz v0, :cond_14

    .line 367
    .line 368
    new-instance v5, Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 371
    .line 372
    .line 373
    move-result v6

    .line 374
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 375
    .line 376
    .line 377
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    if-eqz v6, :cond_13

    .line 386
    .line 387
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    move-object/from16 v16, v6

    .line 392
    .line 393
    check-cast v16, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 394
    .line 395
    invoke-virtual/range {v16 .. v16}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->isEnabled()Z

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    if-eqz v6, :cond_12

    .line 400
    .line 401
    invoke-virtual/range {v16 .. v16}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->isPermissionsGranted()Z

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    if-eqz v6, :cond_12

    .line 406
    .line 407
    move/from16 v22, v2

    .line 408
    .line 409
    goto :goto_10

    .line 410
    :cond_12
    move/from16 v22, v1

    .line 411
    .line 412
    :goto_10
    const/16 v23, 0x1f

    .line 413
    .line 414
    const/16 v24, 0x0

    .line 415
    .line 416
    const/16 v17, 0x0

    .line 417
    .line 418
    const/16 v18, 0x0

    .line 419
    .line 420
    const/16 v19, 0x0

    .line 421
    .line 422
    const/16 v20, 0x0

    .line 423
    .line 424
    const/16 v21, 0x0

    .line 425
    .line 426
    invoke-static/range {v16 .. v24}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    goto :goto_f

    .line 434
    :cond_13
    move-object/from16 v16, v5

    .line 435
    .line 436
    goto :goto_11

    .line 437
    :cond_14
    move-object/from16 v16, v4

    .line 438
    .line 439
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getWallsSchedules()Ljava/util/List;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    if-eqz v0, :cond_16

    .line 444
    .line 445
    new-instance v1, Ljava/util/ArrayList;

    .line 446
    .line 447
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 452
    .line 453
    .line 454
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    if-eqz v2, :cond_15

    .line 463
    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    move-object/from16 v17, v2

    .line 469
    .line 470
    check-cast v17, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 471
    .line 472
    invoke-virtual/range {v17 .. v17}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->isEnabled()Z

    .line 473
    .line 474
    .line 475
    move-result v23

    .line 476
    const/16 v24, 0x1f

    .line 477
    .line 478
    const/16 v25, 0x0

    .line 479
    .line 480
    const/16 v18, 0x0

    .line 481
    .line 482
    const/16 v19, 0x0

    .line 483
    .line 484
    const/16 v20, 0x0

    .line 485
    .line 486
    const/16 v21, 0x0

    .line 487
    .line 488
    const/16 v22, 0x0

    .line 489
    .line 490
    invoke-static/range {v17 .. v25}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    goto :goto_12

    .line 498
    :cond_15
    move-object/from16 v17, v1

    .line 499
    .line 500
    goto :goto_13

    .line 501
    :cond_16
    move-object/from16 v17, v4

    .line 502
    .line 503
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getWifiSchedules()Ljava/util/List;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    if-eqz v0, :cond_18

    .line 508
    .line 509
    new-instance v1, Ljava/util/ArrayList;

    .line 510
    .line 511
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 516
    .line 517
    .line 518
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    if-eqz v2, :cond_17

    .line 527
    .line 528
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    move-object/from16 v18, v2

    .line 533
    .line 534
    check-cast v18, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 535
    .line 536
    invoke-virtual/range {v18 .. v18}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->isEnabled()Z

    .line 537
    .line 538
    .line 539
    move-result v24

    .line 540
    const/16 v25, 0x1f

    .line 541
    .line 542
    const/16 v26, 0x0

    .line 543
    .line 544
    const/16 v19, 0x0

    .line 545
    .line 546
    const/16 v20, 0x0

    .line 547
    .line 548
    const/16 v21, 0x0

    .line 549
    .line 550
    const/16 v22, 0x0

    .line 551
    .line 552
    const/16 v23, 0x0

    .line 553
    .line 554
    invoke-static/range {v18 .. v26}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    goto :goto_14

    .line 562
    :cond_17
    move-object/from16 v18, v1

    .line 563
    .line 564
    goto :goto_15

    .line 565
    :cond_18
    move-object/from16 v18, v4

    .line 566
    .line 567
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getFoldersSchedules()Ljava/util/List;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    if-eqz v0, :cond_19

    .line 572
    .line 573
    new-instance v4, Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 580
    .line 581
    .line 582
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    if-eqz v1, :cond_19

    .line 591
    .line 592
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    move-object/from16 v19, v1

    .line 597
    .line 598
    check-cast v19, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 599
    .line 600
    invoke-virtual/range {v19 .. v19}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->isEnabled()Z

    .line 601
    .line 602
    .line 603
    move-result v28

    .line 604
    const/16 v29, 0xff

    .line 605
    .line 606
    const/16 v30, 0x0

    .line 607
    .line 608
    const/16 v20, 0x0

    .line 609
    .line 610
    const/16 v21, 0x0

    .line 611
    .line 612
    const/16 v22, 0x0

    .line 613
    .line 614
    const/16 v23, 0x0

    .line 615
    .line 616
    const/16 v24, 0x0

    .line 617
    .line 618
    const/16 v25, 0x0

    .line 619
    .line 620
    const/16 v26, 0x0

    .line 621
    .line 622
    const/16 v27, 0x0

    .line 623
    .line 624
    invoke-static/range {v19 .. v30}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    goto :goto_16

    .line 632
    :cond_19
    move-object/from16 v19, v4

    .line 633
    .line 634
    const/16 v21, 0x100f

    .line 635
    .line 636
    const/16 v22, 0x0

    .line 637
    .line 638
    const/4 v8, 0x0

    .line 639
    const/4 v9, 0x0

    .line 640
    const/4 v10, 0x0

    .line 641
    const/4 v11, 0x0

    .line 642
    const/16 v20, 0x0

    .line 643
    .line 644
    move-object/from16 v7, p0

    .line 645
    .line 646
    invoke-static/range {v7 .. v22}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    return-object v0
.end method
