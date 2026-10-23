.class public final synthetic Lrm;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p1, p0, Lrm;->a:I

    iput-object p2, p0, Lrm;->b:Ljava/lang/Object;

    iput-object p3, p0, Lrm;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lwb6$b;Lv76;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lrm;->a:I

    .line 3
    .line 4
    sget-object v0, Lwq0;->a:Lwq0;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lrm;->b:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p2, p0, Lrm;->c:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lrm;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, ""

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/16 v5, 0xa

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    sget-object v8, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    iget-object v9, v0, Lrm;->c:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, v0, Lrm;->b:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v0, Ljava/util/List;

    .line 23
    .line 24
    check-cast v9, Liu8;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {v9}, Liu8;->j()Lus8;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lcz;

    .line 40
    .line 41
    const/16 v4, 0x18

    .line 42
    .line 43
    invoke-direct {v2, v9, v4}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v1, v1, Lus8;->b:Ldt8;

    .line 50
    .line 51
    invoke-interface {v1, v0, v2}, Ldt8;->b(Ljava/util/List;Lcz;)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {v9}, Liu8;->l()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-le v1, v6, :cond_3

    .line 62
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-static {v0, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_1

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Let8;

    .line 87
    .line 88
    invoke-virtual {v4}, Let8;->getSSID()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v5, "\""

    .line 93
    .line 94
    invoke-static {v4, v5, v3}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    iget-object v2, v9, Liu8;->j:Lix6;

    .line 103
    .line 104
    new-instance v3, Lvt8;

    .line 105
    .line 106
    invoke-direct {v3, v0, v1}, Lvt8;-><init>(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Lix6;->k(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    :goto_1
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->L()V

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_2
    return-object v8

    .line 117
    :pswitch_0
    check-cast v0, Lq47;

    .line 118
    .line 119
    check-cast v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 120
    .line 121
    sget-object v1, Lc47;->a:Lc47;

    .line 122
    .line 123
    invoke-virtual {v1}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppsQuickActionSchedules()Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    new-instance v2, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_5

    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 157
    .line 158
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getItemId()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-static {v4, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-eqz v4, :cond_4

    .line 171
    .line 172
    instance-of v4, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 173
    .line 174
    if-eqz v4, :cond_4

    .line 175
    .line 176
    move-object v3, v9

    .line 177
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 178
    .line 179
    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_5
    move-object v15, v2

    .line 184
    goto :goto_4

    .line 185
    :cond_6
    move-object v15, v7

    .line 186
    :goto_4
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppsLabelSchedules()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-eqz v1, :cond_9

    .line 191
    .line 192
    new-instance v2, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_8

    .line 210
    .line 211
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 216
    .line 217
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getItemId()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-static {v4, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-eqz v4, :cond_7

    .line 230
    .line 231
    instance-of v4, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 232
    .line 233
    if-eqz v4, :cond_7

    .line 234
    .line 235
    move-object v3, v9

    .line 236
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 237
    .line 238
    :cond_7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_8
    move-object/from16 v16, v2

    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_9
    move-object/from16 v16, v7

    .line 246
    .line 247
    :goto_6
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getAppConfigSchedules()Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    if-eqz v1, :cond_c

    .line 252
    .line 253
    new-instance v2, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    .line 261
    .line 262
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_b

    .line 271
    .line 272
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 277
    .line 278
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->getItemId()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    invoke-static {v4, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    if-eqz v4, :cond_a

    .line 291
    .line 292
    instance-of v4, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 293
    .line 294
    if-eqz v4, :cond_a

    .line 295
    .line 296
    move-object v3, v9

    .line 297
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 298
    .line 299
    :cond_a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_b
    move-object/from16 v17, v2

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_c
    move-object/from16 v17, v7

    .line 307
    .line 308
    :goto_8
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getMessagesSchedules()Ljava/util/List;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    if-eqz v1, :cond_f

    .line 313
    .line 314
    new-instance v2, Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-eqz v3, :cond_e

    .line 332
    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 338
    .line 339
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getItemId()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    invoke-static {v4, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    if-eqz v4, :cond_d

    .line 352
    .line 353
    instance-of v4, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 354
    .line 355
    if-eqz v4, :cond_d

    .line 356
    .line 357
    move-object v3, v9

    .line 358
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 359
    .line 360
    :cond_d
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    goto :goto_9

    .line 364
    :cond_e
    move-object/from16 v18, v2

    .line 365
    .line 366
    goto :goto_a

    .line 367
    :cond_f
    move-object/from16 v18, v7

    .line 368
    .line 369
    :goto_a
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getCallLogsSchedules()Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    if-eqz v1, :cond_12

    .line 374
    .line 375
    new-instance v2, Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    .line 383
    .line 384
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-eqz v3, :cond_11

    .line 393
    .line 394
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 399
    .line 400
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->getItemId()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    invoke-static {v4, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    if-eqz v4, :cond_10

    .line 413
    .line 414
    instance-of v4, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 415
    .line 416
    if-eqz v4, :cond_10

    .line 417
    .line 418
    move-object v3, v9

    .line 419
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 420
    .line 421
    :cond_10
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    goto :goto_b

    .line 425
    :cond_11
    move-object/from16 v19, v2

    .line 426
    .line 427
    goto :goto_c

    .line 428
    :cond_12
    move-object/from16 v19, v7

    .line 429
    .line 430
    :goto_c
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getWallsSchedules()Ljava/util/List;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    if-eqz v1, :cond_15

    .line 435
    .line 436
    new-instance v2, Ljava/util/ArrayList;

    .line 437
    .line 438
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 443
    .line 444
    .line 445
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    if-eqz v3, :cond_14

    .line 454
    .line 455
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 460
    .line 461
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getItemId()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v6

    .line 469
    invoke-static {v4, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    if-eqz v4, :cond_13

    .line 474
    .line 475
    instance-of v4, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 476
    .line 477
    if-eqz v4, :cond_13

    .line 478
    .line 479
    move-object v3, v9

    .line 480
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 481
    .line 482
    :cond_13
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    goto :goto_d

    .line 486
    :cond_14
    move-object/from16 v20, v2

    .line 487
    .line 488
    goto :goto_e

    .line 489
    :cond_15
    move-object/from16 v20, v7

    .line 490
    .line 491
    :goto_e
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getWifiSchedules()Ljava/util/List;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    if-eqz v1, :cond_18

    .line 496
    .line 497
    new-instance v2, Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 504
    .line 505
    .line 506
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    if-eqz v3, :cond_17

    .line 515
    .line 516
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 521
    .line 522
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getItemId()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v4

    .line 526
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    invoke-static {v4, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    if-eqz v4, :cond_16

    .line 535
    .line 536
    instance-of v4, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 537
    .line 538
    if-eqz v4, :cond_16

    .line 539
    .line 540
    move-object v3, v9

    .line 541
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 542
    .line 543
    :cond_16
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    goto :goto_f

    .line 547
    :cond_17
    move-object/from16 v21, v2

    .line 548
    .line 549
    goto :goto_10

    .line 550
    :cond_18
    move-object/from16 v21, v7

    .line 551
    .line 552
    :goto_10
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getFoldersSchedules()Ljava/util/List;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    if-eqz v1, :cond_1a

    .line 557
    .line 558
    new-instance v7, Ljava/util/ArrayList;

    .line 559
    .line 560
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 561
    .line 562
    .line 563
    move-result v2

    .line 564
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 565
    .line 566
    .line 567
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    if-eqz v2, :cond_1a

    .line 576
    .line 577
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 582
    .line 583
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getItemId()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    if-eqz v3, :cond_19

    .line 596
    .line 597
    instance-of v3, v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 598
    .line 599
    if-eqz v3, :cond_19

    .line 600
    .line 601
    move-object v2, v9

    .line 602
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 603
    .line 604
    :cond_19
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    goto :goto_11

    .line 608
    :cond_1a
    move-object/from16 v22, v7

    .line 609
    .line 610
    const/16 v24, 0x100f

    .line 611
    .line 612
    const/16 v25, 0x0

    .line 613
    .line 614
    const/4 v11, 0x0

    .line 615
    const/4 v12, 0x0

    .line 616
    const/4 v13, 0x0

    .line 617
    const/4 v14, 0x0

    .line 618
    const/16 v23, 0x0

    .line 619
    .line 620
    invoke-static/range {v10 .. v25}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    invoke-static {v0, v1}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 625
    .line 626
    .line 627
    return-object v8

    .line 628
    :pswitch_1
    check-cast v0, Lbt3;

    .line 629
    .line 630
    check-cast v9, Lrw6;

    .line 631
    .line 632
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    check-cast v0, Lpw6;

    .line 637
    .line 638
    new-instance v1, Lqw6;

    .line 639
    .line 640
    invoke-direct {v1, v0}, Lqw6;-><init>(Lpw6;)V

    .line 641
    .line 642
    .line 643
    iput-object v1, v9, Lrw6;->c:Lqw6;

    .line 644
    .line 645
    iget-object v0, v9, Lrw6;->b:Lex6;

    .line 646
    .line 647
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 648
    .line 649
    .line 650
    iget-object v0, v9, Lrw6;->c:Lqw6;

    .line 651
    .line 652
    return-object v0

    .line 653
    :pswitch_2
    check-cast v0, Lgp3;

    .line 654
    .line 655
    check-cast v9, Ljava/util/ArrayList;

    .line 656
    .line 657
    invoke-virtual {v0, v9}, Lgp3;->d(Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    return-object v8

    .line 661
    :pswitch_3
    check-cast v0, Lokhttp3/internal/http2/Http2Connection;

    .line 662
    .line 663
    check-cast v9, Llh6;

    .line 664
    .line 665
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->a:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 666
    .line 667
    iget-object v2, v9, Llh6;->a:Ljava/lang/Object;

    .line 668
    .line 669
    check-cast v2, Lokhttp3/internal/http2/Settings;

    .line 670
    .line 671
    invoke-virtual {v1, v0, v2}, Lokhttp3/internal/http2/Http2Connection$Listener;->a(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V

    .line 672
    .line 673
    .line 674
    return-object v8

    .line 675
    :pswitch_4
    check-cast v0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 676
    .line 677
    check-cast v9, Ldd1;

    .line 678
    .line 679
    sget-object v1, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 680
    .line 681
    invoke-static {v0, v9, v7, v4}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 682
    .line 683
    .line 684
    return-object v8

    .line 685
    :pswitch_5
    check-cast v0, Lnq5;

    .line 686
    .line 687
    check-cast v9, Lzx3;

    .line 688
    .line 689
    iget-object v1, v9, Lzx3;->a:Lyn8;

    .line 690
    .line 691
    iget-object v1, v1, Lyn8;->f:Ljava/lang/String;

    .line 692
    .line 693
    if-nez v1, :cond_1b

    .line 694
    .line 695
    goto :goto_12

    .line 696
    :cond_1b
    move-object v3, v1

    .line 697
    :goto_12
    invoke-virtual {v0, v3}, Lnq5;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    if-eqz v0, :cond_1d

    .line 702
    .line 703
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 704
    .line 705
    .line 706
    move-result v1

    .line 707
    if-nez v1, :cond_1c

    .line 708
    .line 709
    goto :goto_13

    .line 710
    :cond_1c
    sget-object v1, Ltb1;->a:Ltb1;

    .line 711
    .line 712
    invoke-static {v0, v7}, Lqb1;->k(Ljava/lang/String;Lt15;)Lokhttp3/Response;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    iget-object v0, v0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 717
    .line 718
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    .line 719
    .line 720
    .line 721
    move-result-object v7

    .line 722
    :cond_1d
    :goto_13
    return-object v7

    .line 723
    :pswitch_6
    check-cast v0, Lih6;

    .line 724
    .line 725
    check-cast v9, Lih6;

    .line 726
    .line 727
    iput-boolean v6, v0, Lih6;->a:Z

    .line 728
    .line 729
    iput-boolean v2, v9, Lih6;->a:Z

    .line 730
    .line 731
    return-object v8

    .line 732
    :pswitch_7
    check-cast v0, Ljava/util/ArrayList;

    .line 733
    .line 734
    check-cast v9, Lqo3;

    .line 735
    .line 736
    sget-object v1, Lpz4;->g:Lpz4;

    .line 737
    .line 738
    invoke-virtual {v1}, Ldv;->e()Ljava/util/List;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    new-instance v3, Ljava/util/ArrayList;

    .line 743
    .line 744
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 745
    .line 746
    .line 747
    move-result v4

    .line 748
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 749
    .line 750
    .line 751
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 756
    .line 757
    .line 758
    move-result v4

    .line 759
    if-eqz v4, :cond_1e

    .line 760
    .line 761
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v4

    .line 765
    check-cast v4, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 766
    .line 767
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 768
    .line 769
    .line 770
    move-result-object v4

    .line 771
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    goto :goto_14

    .line 775
    :cond_1e
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 776
    .line 777
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 781
    .line 782
    .line 783
    move-result-object v3

    .line 784
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 785
    .line 786
    .line 787
    move-result v4

    .line 788
    if-eqz v4, :cond_1f

    .line 789
    .line 790
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v4

    .line 794
    check-cast v4, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 795
    .line 796
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v4

    .line 800
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    goto :goto_15

    .line 804
    :cond_1f
    new-instance v3, Ljava/util/ArrayList;

    .line 805
    .line 806
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    :cond_20
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 814
    .line 815
    .line 816
    move-result v4

    .line 817
    if-eqz v4, :cond_21

    .line 818
    .line 819
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v4

    .line 823
    move-object v5, v4

    .line 824
    check-cast v5, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 825
    .line 826
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v5

    .line 830
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 831
    .line 832
    .line 833
    move-result v5

    .line 834
    if-nez v5, :cond_20

    .line 835
    .line 836
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    .line 838
    .line 839
    goto :goto_16

    .line 840
    :cond_21
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 845
    .line 846
    .line 847
    move-result v1

    .line 848
    if-eqz v1, :cond_23

    .line 849
    .line 850
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    check-cast v1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 855
    .line 856
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    .line 858
    .line 859
    invoke-static {v1, v2, v6}, Lorg/swiftapps/swiftbackup/folders/data/a;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;ZZ)Lkj3;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    invoke-virtual {v1}, Lkj3;->h()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 864
    .line 865
    .line 866
    move-result-object v4

    .line 867
    if-eqz v4, :cond_22

    .line 868
    .line 869
    sget-object v1, Lpz4;->g:Lpz4;

    .line 870
    .line 871
    invoke-virtual {v1, v4}, Ldv;->l(Ljl0;)V

    .line 872
    .line 873
    .line 874
    goto :goto_17

    .line 875
    :cond_22
    invoke-virtual {v1}, Lkj3;->d()Lq63;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    const-string v1, "Failed to copy folder setup to "

    .line 880
    .line 881
    invoke-static {v0, v1}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 886
    .line 887
    .line 888
    goto :goto_18

    .line 889
    :cond_23
    iget-object v0, v9, Lqo3;->j:Lix6;

    .line 890
    .line 891
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 892
    .line 893
    .line 894
    move-result v1

    .line 895
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 896
    .line 897
    .line 898
    move-result-object v1

    .line 899
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 900
    .line 901
    .line 902
    move-object v7, v8

    .line 903
    :goto_18
    return-object v7

    .line 904
    :pswitch_8
    check-cast v0, Lln3;

    .line 905
    .line 906
    check-cast v9, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 907
    .line 908
    iput-object v9, v0, Lln3;->Y:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 909
    .line 910
    iget-object v1, v0, Lln3;->Q:Lil0;

    .line 911
    .line 912
    iget-object v2, v0, Lu35;->K:Ljk8;

    .line 913
    .line 914
    check-cast v2, Lmn3;

    .line 915
    .line 916
    iget-object v2, v2, Lmn3;->a:Landroidx/core/widget/NestedScrollView;

    .line 917
    .line 918
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 919
    .line 920
    .line 921
    const-class v3, Landroid/widget/TextView;

    .line 922
    .line 923
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 924
    .line 925
    .line 926
    move-result-object v3

    .line 927
    invoke-virtual {v1, v2, v3}, Lil0;->x(Landroid/view/ViewGroup;[Ljava/lang/Class;)V

    .line 928
    .line 929
    .line 930
    invoke-virtual {v0}, Lln3;->l()V

    .line 931
    .line 932
    .line 933
    return-object v8

    .line 934
    :pswitch_9
    check-cast v0, Lin3;

    .line 935
    .line 936
    check-cast v9, Lq63;

    .line 937
    .line 938
    new-instance v1, Lhn3;

    .line 939
    .line 940
    invoke-virtual {v0, v9}, Lin3;->j(Lq63;)Lzn7;

    .line 941
    .line 942
    .line 943
    move-result-object v2

    .line 944
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 945
    .line 946
    .line 947
    invoke-virtual {v0}, Lin3;->l()Ljava/util/List;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    invoke-direct {v1, v2, v0, v9}, Lhn3;-><init>(Lzn7;Ljava/util/List;Lq63;)V

    .line 952
    .line 953
    .line 954
    return-object v1

    .line 955
    :pswitch_a
    check-cast v0, Lo23;

    .line 956
    .line 957
    check-cast v9, Ld23;

    .line 958
    .line 959
    iput-boolean v6, v0, Lo23;->k:Z

    .line 960
    .line 961
    const/16 v0, 0xb

    .line 962
    .line 963
    invoke-virtual {v9, v0}, Lz13;->l(I)I

    .line 964
    .line 965
    .line 966
    move-result v0

    .line 967
    invoke-static {v0}, Lk55;->x(I)Z

    .line 968
    .line 969
    .line 970
    move-result v0

    .line 971
    if-eqz v0, :cond_24

    .line 972
    .line 973
    invoke-virtual {v9}, Lz13;->i()Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v7

    .line 977
    :cond_24
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 978
    .line 979
    const-string v1, "Capabilities = "

    .line 980
    .line 981
    invoke-static {v1, v7}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v2

    .line 985
    const/4 v4, 0x4

    .line 986
    const/4 v5, 0x0

    .line 987
    const-string v1, "FTPService"

    .line 988
    .line 989
    const/4 v3, 0x0

    .line 990
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 991
    .line 992
    .line 993
    return-object v8

    .line 994
    :pswitch_b
    check-cast v0, Lil0;

    .line 995
    .line 996
    check-cast v9, Ljava/lang/String;

    .line 997
    .line 998
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 999
    .line 1000
    .line 1001
    move-result v1

    .line 1002
    if-nez v1, :cond_25

    .line 1003
    .line 1004
    invoke-virtual {v0}, Lil0;->H()V

    .line 1005
    .line 1006
    .line 1007
    :cond_25
    invoke-static {v9}, Lorg/swiftapps/swiftbackup/common/Const;->E(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    return-object v8

    .line 1011
    :pswitch_c
    check-cast v0, Lnq5;

    .line 1012
    .line 1013
    check-cast v9, Ljava/lang/String;

    .line 1014
    .line 1015
    invoke-virtual {v0, v9}, Lnq5;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    return-object v0

    .line 1020
    :pswitch_d
    check-cast v0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 1021
    .line 1022
    check-cast v9, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 1023
    .line 1024
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->O()Lrs0;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    sget-object v1, Lzn4;->a:Lzn4;

    .line 1029
    .line 1030
    new-instance v1, Lcv;

    .line 1031
    .line 1032
    invoke-direct {v1, v4, v0, v9}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1033
    .line 1034
    .line 1035
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 1036
    .line 1037
    .line 1038
    return-object v8

    .line 1039
    :pswitch_e
    check-cast v0, Lwb6$b;

    .line 1040
    .line 1041
    sget-object v1, Lwq0;->a:Lwq0;

    .line 1042
    .line 1043
    check-cast v9, Lv76;

    .line 1044
    .line 1045
    sget-object v1, Lwq0;->e:Lix6;

    .line 1046
    .line 1047
    sget-object v2, Lsq0;->a:[I

    .line 1048
    .line 1049
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 1050
    .line 1051
    .line 1052
    move-result v0

    .line 1053
    aget v0, v2, v0

    .line 1054
    .line 1055
    if-eq v0, v6, :cond_28

    .line 1056
    .line 1057
    if-eq v0, v4, :cond_27

    .line 1058
    .line 1059
    const/4 v2, 0x3

    .line 1060
    if-ne v0, v2, :cond_26

    .line 1061
    .line 1062
    invoke-virtual {v1, v9}, Lix6;->k(Ljava/lang/Object;)V

    .line 1063
    .line 1064
    .line 1065
    goto :goto_19

    .line 1066
    :cond_26
    invoke-static {}, Lq;->j()V

    .line 1067
    .line 1068
    .line 1069
    goto :goto_1a

    .line 1070
    :cond_27
    invoke-virtual {v1, v9}, Lix6;->k(Ljava/lang/Object;)V

    .line 1071
    .line 1072
    .line 1073
    goto :goto_19

    .line 1074
    :cond_28
    sget-object v0, Lwq0;->d:Lix6;

    .line 1075
    .line 1076
    invoke-virtual {v0, v9}, Lix6;->k(Ljava/lang/Object;)V

    .line 1077
    .line 1078
    .line 1079
    :goto_19
    move-object v7, v8

    .line 1080
    :goto_1a
    return-object v7

    .line 1081
    :pswitch_f
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 1082
    .line 1083
    check-cast v9, Landroid/content/pm/PackageManager;

    .line 1084
    .line 1085
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1086
    .line 1087
    if-eqz v0, :cond_29

    .line 1088
    .line 1089
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v0

    .line 1093
    if-eqz v0, :cond_29

    .line 1094
    .line 1095
    invoke-static {v0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v7

    .line 1099
    :cond_29
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v0

    .line 1103
    return-object v0

    .line 1104
    nop

    .line 1105
    :pswitch_data_0
    .packed-switch 0x0
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
