.class public final synthetic Le47;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

.field public final synthetic d:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;

.field public final synthetic e:Lky7;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;Lky7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Le47;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Le47;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Le47;->c:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 9
    .line 10
    iput-object p4, p0, Le47;->d:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;

    .line 11
    .line 12
    iput-object p5, p0, Le47;->e:Lky7;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 4
    .line 5
    iget v1, v0, Le47;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    iget-object v3, v0, Le47;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget-object v4, v0, Le47;->c:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 16
    .line 17
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->toDisplayString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string v6, "/"

    .line 22
    .line 23
    const-string v7, "): "

    .line 24
    .line 25
    const-string v8, "Preparing app backup tasks for Labels schedules ("

    .line 26
    .line 27
    invoke-static {v8, v1, v6, v7, v3}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 39
    .line 40
    sget-object v7, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v10, 0x4

    .line 43
    const/4 v11, 0x0

    .line 44
    move-object v6, v9

    .line 45
    const/4 v9, 0x0

    .line 46
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move-object v9, v6

    .line 50
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLocations()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 59
    .line 60
    const/4 v14, 0x0

    .line 61
    const/16 v15, 0x3e

    .line 62
    .line 63
    const-string v11, ", "

    .line 64
    .line 65
    const/4 v12, 0x0

    .line 66
    const/4 v13, 0x0

    .line 67
    invoke-static/range {v10 .. v15}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    move-object v5, v10

    .line 72
    const-string v6, "PrepareAppsTask: Backup locations: "

    .line 73
    .line 74
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    const/4 v13, 0x4

    .line 79
    move-object v10, v1

    .line 80
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v1, Lq05;->CLOUD:Lq05;

    .line 84
    .line 85
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    const-wide/16 v6, 0x0

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    if-eqz v3, :cond_2

    .line 93
    .line 94
    const-string v3, "PrepareAppsTask: "

    .line 95
    .line 96
    iget-object v10, v0, Le47;->d:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;

    .line 97
    .line 98
    invoke-virtual {v10, v3, v5}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->g(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-nez v3, :cond_3

    .line 103
    .line 104
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getItemId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    invoke-virtual {v10, v11, v12}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->f(Ljava/lang/String;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-nez v10, :cond_3

    .line 117
    .line 118
    sget-object v10, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    new-instance v11, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v12, "PrepareAppsTask: Sync option not met: "

    .line 127
    .line 128
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    const/4 v13, 0x4

    .line 139
    const/4 v14, 0x0

    .line 140
    const/4 v12, 0x0

    .line 141
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    new-instance v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;

    .line 145
    .line 146
    invoke-direct {v3, v6, v7, v2, v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v5}, Lji8;->t(Ljava/util/Collection;)Z

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    if-eqz v10, :cond_1

    .line 154
    .line 155
    sget-object v10, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 156
    .line 157
    const/4 v13, 0x4

    .line 158
    const/4 v14, 0x0

    .line 159
    const-string v11, "PrepareAppsTask: Can\'t proceed as syncing isn\'t possible and destination is only cloud"

    .line 160
    .line 161
    const/4 v12, 0x0

    .line 162
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 166
    .line 167
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getItemId()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {v2, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 175
    .line 176
    .line 177
    :cond_0
    :goto_0
    move-object v2, v8

    .line 178
    goto/16 :goto_e

    .line 179
    .line 180
    :cond_1
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    sget-object v10, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 184
    .line 185
    const/4 v13, 0x4

    .line 186
    const/4 v14, 0x0

    .line 187
    const-string v11, "PrepareAppsTask: Removed cloud location"

    .line 188
    .line 189
    const/4 v12, 0x0

    .line 190
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_2
    move-object v3, v8

    .line 195
    :cond_3
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_4

    .line 200
    .line 201
    if-eqz v3, :cond_0

    .line 202
    .line 203
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 204
    .line 205
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getItemId()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-static {v2, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_4
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLabelIds()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    if-eqz v1, :cond_1d

    .line 221
    .line 222
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    if-nez v9, :cond_1d

    .line 227
    .line 228
    new-instance v9, Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    if-eqz v11, :cond_6

    .line 242
    .line 243
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v11

    .line 247
    move-object v12, v11

    .line 248
    check-cast v12, Ljava/lang/String;

    .line 249
    .line 250
    sget-object v13, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 251
    .line 252
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    invoke-static {v12}, Lhr4;->c(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v12

    .line 259
    if-nez v12, :cond_5

    .line 260
    .line 261
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_6
    new-instance v10, Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result v11

    .line 278
    if-eqz v11, :cond_8

    .line 279
    .line 280
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    move-object v12, v11

    .line 285
    check-cast v12, Ljava/lang/String;

    .line 286
    .line 287
    sget-object v13, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 288
    .line 289
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    invoke-static {v12}, Lhr4;->c(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v12

    .line 296
    if-eqz v12, :cond_7

    .line 297
    .line 298
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_8
    sget-object v1, Lg00;->a:Lg00;

    .line 303
    .line 304
    invoke-static {v2}, Lg00;->m(Z)Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    new-instance v11, Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 318
    .line 319
    .line 320
    move-result v12

    .line 321
    if-eqz v12, :cond_a

    .line 322
    .line 323
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v12

    .line 327
    move-object v13, v12

    .line 328
    check-cast v13, Lji;

    .line 329
    .line 330
    invoke-virtual {v13}, Lji;->isInstalled()Z

    .line 331
    .line 332
    .line 333
    move-result v13

    .line 334
    if-eqz v13, :cond_9

    .line 335
    .line 336
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v11

    .line 349
    :cond_b
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v12

    .line 353
    if-eqz v12, :cond_12

    .line 354
    .line 355
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v12

    .line 359
    check-cast v12, Lji;

    .line 360
    .line 361
    invoke-virtual {v12}, Lji;->getLabels()Ljava/util/Set;

    .line 362
    .line 363
    .line 364
    move-result-object v13

    .line 365
    if-eqz v13, :cond_e

    .line 366
    .line 367
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    .line 368
    .line 369
    .line 370
    move-result v14

    .line 371
    if-eqz v14, :cond_c

    .line 372
    .line 373
    goto :goto_6

    .line 374
    :cond_c
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object v13

    .line 378
    :cond_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 379
    .line 380
    .line 381
    move-result v14

    .line 382
    if-eqz v14, :cond_e

    .line 383
    .line 384
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v14

    .line 388
    check-cast v14, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 389
    .line 390
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v14

    .line 394
    invoke-static {v9, v14}, Lel1;->M0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v14

    .line 398
    if-eqz v14, :cond_d

    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_e
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 402
    .line 403
    .line 404
    move-result v13

    .line 405
    if-eqz v13, :cond_f

    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_f
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 409
    .line 410
    .line 411
    move-result-object v13

    .line 412
    :cond_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v14

    .line 416
    if-eqz v14, :cond_11

    .line 417
    .line 418
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v14

    .line 422
    check-cast v14, Ljava/lang/String;

    .line 423
    .line 424
    sget-object v15, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 425
    .line 426
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    invoke-static {v12, v14}, Lhr4;->b(Lji;Ljava/lang/String;)Z

    .line 430
    .line 431
    .line 432
    move-result v14

    .line 433
    if-eqz v14, :cond_10

    .line 434
    .line 435
    goto :goto_8

    .line 436
    :cond_11
    :goto_7
    move-object v12, v8

    .line 437
    :goto_8
    if-eqz v12, :cond_b

    .line 438
    .line 439
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    goto :goto_5

    .line 443
    :cond_12
    new-instance v9, Ljava/util/HashSet;

    .line 444
    .line 445
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 446
    .line 447
    .line 448
    new-instance v10, Ljava/util/ArrayList;

    .line 449
    .line 450
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    :cond_13
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 458
    .line 459
    .line 460
    move-result v11

    .line 461
    if-eqz v11, :cond_14

    .line 462
    .line 463
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v11

    .line 467
    move-object v12, v11

    .line 468
    check-cast v12, Lji;

    .line 469
    .line 470
    invoke-virtual {v12}, Lji;->getPackageName()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v12

    .line 474
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v12

    .line 478
    if-eqz v12, :cond_13

    .line 479
    .line 480
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    goto :goto_9

    .line 484
    :cond_14
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 485
    .line 486
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    new-instance v1, La01;

    .line 490
    .line 491
    const/4 v9, 0x2

    .line 492
    invoke-direct {v1, v9}, La01;-><init>(I)V

    .line 493
    .line 494
    .line 495
    invoke-static {v10, v1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    if-nez v3, :cond_15

    .line 500
    .line 501
    new-instance v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;

    .line 502
    .line 503
    invoke-direct {v3, v6, v7, v2, v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 504
    .line 505
    .line 506
    :cond_15
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 507
    .line 508
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getItemId()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    invoke-static {v6, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 516
    .line 517
    .line 518
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    if-eqz v2, :cond_16

    .line 523
    .line 524
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 525
    .line 526
    sget-object v10, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 527
    .line 528
    const/4 v13, 0x4

    .line 529
    const/4 v14, 0x0

    .line 530
    const-string v11, "No apps matching the schedule requirements, skipping schedule."

    .line 531
    .line 532
    const/4 v12, 0x0

    .line 533
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    goto/16 :goto_0

    .line 537
    .line 538
    :cond_16
    invoke-static {}, Liu;->getEntries()Ljx2;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    new-instance v12, Ljava/util/ArrayList;

    .line 543
    .line 544
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .line 546
    .line 547
    check-cast v2, Lz3;

    .line 548
    .line 549
    invoke-virtual {v2}, Lz3;->iterator()Ljava/util/Iterator;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    :cond_17
    :goto_a
    move-object v3, v2

    .line 554
    check-cast v3, Lw3;

    .line 555
    .line 556
    invoke-virtual {v3}, Lw3;->hasNext()Z

    .line 557
    .line 558
    .line 559
    move-result v6

    .line 560
    if-eqz v6, :cond_1a

    .line 561
    .line 562
    invoke-virtual {v3}, Lw3;->next()Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    check-cast v3, Liu;

    .line 567
    .line 568
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getAppParts()Ljava/util/List;

    .line 569
    .line 570
    .line 571
    move-result-object v6

    .line 572
    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v6

    .line 576
    if-nez v6, :cond_18

    .line 577
    .line 578
    :goto_b
    move-object v3, v8

    .line 579
    goto :goto_c

    .line 580
    :cond_18
    invoke-virtual {v3}, Liu;->getBackupReq()Lsk0;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    invoke-virtual {v6}, Lsk0;->isPossible()Z

    .line 585
    .line 586
    .line 587
    move-result v6

    .line 588
    if-nez v6, :cond_19

    .line 589
    .line 590
    goto :goto_b

    .line 591
    :cond_19
    :goto_c
    if-eqz v3, :cond_17

    .line 592
    .line 593
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    goto :goto_a

    .line 597
    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    .line 598
    .line 599
    const/16 v3, 0xa

    .line 600
    .line 601
    invoke-static {v1, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 602
    .line 603
    .line 604
    move-result v3

    .line 605
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 606
    .line 607
    .line 608
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 613
    .line 614
    .line 615
    move-result v3

    .line 616
    if-eqz v3, :cond_1b

    .line 617
    .line 618
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v3

    .line 622
    move-object v11, v3

    .line 623
    check-cast v11, Lji;

    .line 624
    .line 625
    new-instance v10, Lhz;

    .line 626
    .line 627
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 628
    .line 629
    .line 630
    move-result-object v15

    .line 631
    invoke-static {}, Lz85;->w()Z

    .line 632
    .line 633
    .line 634
    move-result v16

    .line 635
    invoke-static {}, Lz85;->r()Lxp1;

    .line 636
    .line 637
    .line 638
    move-result-object v17

    .line 639
    sget-object v3, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 640
    .line 641
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->c()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 645
    .line 646
    .line 647
    move-result-object v18

    .line 648
    invoke-static {}, Lok;->d()Ljava/util/ArrayList;

    .line 649
    .line 650
    .line 651
    move-result-object v19

    .line 652
    const/4 v14, 0x0

    .line 653
    move-object v13, v5

    .line 654
    invoke-direct/range {v10 .. v19}, Lhz;-><init>(Lji;Ljava/util/List;Ljava/util/List;Lhk;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;ZLxp1;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/util/List;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    goto :goto_d

    .line 661
    :cond_1b
    :goto_e
    if-nez v2, :cond_1c

    .line 662
    .line 663
    return-object v8

    .line 664
    :cond_1c
    new-instance v1, Lc40;

    .line 665
    .line 666
    new-instance v3, Lb40;

    .line 667
    .line 668
    invoke-direct {v3}, Lb40;-><init>()V

    .line 669
    .line 670
    .line 671
    iget-object v0, v0, Le47;->e:Lky7;

    .line 672
    .line 673
    invoke-direct {v1, v2, v0, v3}, Lc40;-><init>(Ljava/util/List;Lty7;Lb40;)V

    .line 674
    .line 675
    .line 676
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 677
    .line 678
    sget-object v5, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 679
    .line 680
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 681
    .line 682
    .line 683
    move-result v0

    .line 684
    const-string v2, "Added "

    .line 685
    .line 686
    const-string v3, " tasks"

    .line 687
    .line 688
    invoke-static {v0, v2, v3}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v6

    .line 692
    const/4 v8, 0x4

    .line 693
    const/4 v9, 0x0

    .line 694
    const/4 v7, 0x0

    .line 695
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    return-object v1

    .line 699
    :cond_1d
    const-string v0, "Invalid label ids! ["

    .line 700
    .line 701
    const-string v2, "]"

    .line 702
    .line 703
    invoke-static {v1, v2, v0}, Lf6;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    return-object v8
.end method
