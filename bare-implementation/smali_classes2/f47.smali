.class public final synthetic Lf47;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

.field public final synthetic d:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;

.field public final synthetic e:Lky7;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;Lky7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lf47;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lf47;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lf47;->c:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 9
    .line 10
    iput-object p4, p0, Lf47;->d:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;

    .line 11
    .line 12
    iput-object p5, p0, Lf47;->e:Lky7;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 4
    .line 5
    iget v1, v0, Lf47;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    iget-object v3, v0, Lf47;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget-object v4, v0, Lf47;->c:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 16
    .line 17
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->toDisplayString()Ljava/lang/String;

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
    const-string v8, "Preparing app backup tasks for QuickActions schedules ("

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
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getLocations()Ljava/util/List;

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
    iget-object v10, v0, Lf47;->d:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;

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
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getItemId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

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
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

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
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getItemId()Ljava/lang/String;

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
    move-object v9, v8

    .line 178
    goto/16 :goto_19

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
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getItemId()Ljava/lang/String;

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
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getQuickActionIds()Ljava/util/Set;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    const/16 v9, 0x69

    .line 221
    .line 222
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    sget-object v9, Lzc6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 231
    .line 232
    invoke-static {}, Lyc6;->a()Ljava/util/ArrayList;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    new-instance v10, Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v11

    .line 249
    if-eqz v11, :cond_6

    .line 250
    .line 251
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    move-object v12, v11

    .line 256
    check-cast v12, Lzc6;

    .line 257
    .line 258
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getQuickActionIds()Ljava/util/Set;

    .line 259
    .line 260
    .line 261
    move-result-object v13

    .line 262
    iget v12, v12, Lzc6;->b:I

    .line 263
    .line 264
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v12

    .line 272
    if-eqz v12, :cond_5

    .line 273
    .line 274
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    if-eqz v11, :cond_23

    .line 292
    .line 293
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v11

    .line 297
    check-cast v11, Lzc6;

    .line 298
    .line 299
    iget-object v11, v11, Lzc6;->a:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getAllowedApps()Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v12

    .line 305
    invoke-static {v5}, Lji8;->t(Ljava/util/Collection;)Z

    .line 306
    .line 307
    .line 308
    move-result v13

    .line 309
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    sget-object v14, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;->User:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;

    .line 316
    .line 317
    invoke-interface {v12, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v14

    .line 321
    sget-object v15, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;->System:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;

    .line 322
    .line 323
    invoke-interface {v12, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v15

    .line 327
    move/from16 v16, v2

    .line 328
    .line 329
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;->Fav:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;

    .line 330
    .line 331
    invoke-interface {v12, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 336
    .line 337
    .line 338
    move-result v12

    .line 339
    sparse-switch v12, :sswitch_data_0

    .line 340
    .line 341
    .line 342
    :cond_7
    move-object/from16 v20, v8

    .line 343
    .line 344
    goto/16 :goto_12

    .line 345
    .line 346
    :sswitch_0
    const-string v12, "ID_BACKUP_PENDING_APPS"

    .line 347
    .line 348
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v12

    .line 352
    if-eqz v12, :cond_7

    .line 353
    .line 354
    if-eqz v13, :cond_a

    .line 355
    .line 356
    sget-object v12, Lg00;->a:Lg00;

    .line 357
    .line 358
    invoke-static/range {v16 .. v16}, Lg00;->m(Z)Ljava/util/List;

    .line 359
    .line 360
    .line 361
    move-result-object v12

    .line 362
    sget-object v13, Lce3;->NotSynced:Lce3;

    .line 363
    .line 364
    invoke-static {v12, v13}, Lqq;->b(Ljava/util/List;Lce3;)Ljava/util/List;

    .line 365
    .line 366
    .line 367
    move-result-object v12

    .line 368
    new-instance v13, Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 374
    .line 375
    .line 376
    move-result-object v12

    .line 377
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 378
    .line 379
    .line 380
    move-result v17

    .line 381
    if-eqz v17, :cond_9

    .line 382
    .line 383
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    move-object v7, v6

    .line 388
    check-cast v7, Lji;

    .line 389
    .line 390
    invoke-virtual {v7}, Lji;->isInstalled()Z

    .line 391
    .line 392
    .line 393
    move-result v19

    .line 394
    if-eqz v19, :cond_8

    .line 395
    .line 396
    invoke-static {v14, v15, v2, v7}, Lt27;->a(ZZZLji;)Z

    .line 397
    .line 398
    .line 399
    move-result v7

    .line 400
    if-eqz v7, :cond_8

    .line 401
    .line 402
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    :cond_8
    const-wide/16 v6, 0x0

    .line 406
    .line 407
    goto :goto_4

    .line 408
    :cond_9
    move-object/from16 v20, v8

    .line 409
    .line 410
    goto/16 :goto_10

    .line 411
    .line 412
    :cond_a
    sget-object v6, Lg00;->a:Lg00;

    .line 413
    .line 414
    invoke-static/range {v16 .. v16}, Lg00;->m(Z)Ljava/util/List;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    new-instance v7, Ljava/util/ArrayList;

    .line 419
    .line 420
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    :cond_b
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 428
    .line 429
    .line 430
    move-result v12

    .line 431
    if-eqz v12, :cond_c

    .line 432
    .line 433
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v12

    .line 437
    move-object v13, v12

    .line 438
    check-cast v13, Lji;

    .line 439
    .line 440
    invoke-virtual {v13}, Lji;->isInstalled()Z

    .line 441
    .line 442
    .line 443
    move-result v19

    .line 444
    if-eqz v19, :cond_b

    .line 445
    .line 446
    invoke-static {v14, v15, v2, v13}, Lt27;->a(ZZZLji;)Z

    .line 447
    .line 448
    .line 449
    move-result v13

    .line 450
    if-eqz v13, :cond_b

    .line 451
    .line 452
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    goto :goto_5

    .line 456
    :cond_c
    new-instance v13, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    :cond_d
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 466
    .line 467
    .line 468
    move-result v6

    .line 469
    if-eqz v6, :cond_9

    .line 470
    .line 471
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v6

    .line 475
    move-object v7, v6

    .line 476
    check-cast v7, Lji;

    .line 477
    .line 478
    invoke-virtual {v7}, Lji;->getLocalBackups()Ljava/util/List;

    .line 479
    .line 480
    .line 481
    move-result-object v7

    .line 482
    if-eqz v7, :cond_e

    .line 483
    .line 484
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 485
    .line 486
    .line 487
    move-result v7

    .line 488
    if-eqz v7, :cond_d

    .line 489
    .line 490
    :cond_e
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    goto :goto_6

    .line 494
    :sswitch_1
    const-string v6, "ID_BACKUP_SYNC_APPS"

    .line 495
    .line 496
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result v6

    .line 500
    if-eqz v6, :cond_7

    .line 501
    .line 502
    sget-object v6, Lg00;->a:Lg00;

    .line 503
    .line 504
    invoke-static/range {v16 .. v16}, Lg00;->m(Z)Ljava/util/List;

    .line 505
    .line 506
    .line 507
    move-result-object v6

    .line 508
    new-instance v7, Ljava/util/ArrayList;

    .line 509
    .line 510
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .line 512
    .line 513
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    :cond_f
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 518
    .line 519
    .line 520
    move-result v12

    .line 521
    if-eqz v12, :cond_10

    .line 522
    .line 523
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v12

    .line 527
    move-object v13, v12

    .line 528
    check-cast v13, Lji;

    .line 529
    .line 530
    invoke-static {v14, v15, v2, v13}, Lt27;->a(ZZZLji;)Z

    .line 531
    .line 532
    .line 533
    move-result v13

    .line 534
    if-eqz v13, :cond_f

    .line 535
    .line 536
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    goto :goto_7

    .line 540
    :cond_10
    new-instance v13, Ljava/util/ArrayList;

    .line 541
    .line 542
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    :cond_11
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 550
    .line 551
    .line 552
    move-result v6

    .line 553
    if-eqz v6, :cond_9

    .line 554
    .line 555
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    move-object v7, v6

    .line 560
    check-cast v7, Lji;

    .line 561
    .line 562
    invoke-virtual {v7}, Lji;->getLocalBackups()Ljava/util/List;

    .line 563
    .line 564
    .line 565
    move-result-object v7

    .line 566
    if-eqz v7, :cond_11

    .line 567
    .line 568
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 569
    .line 570
    .line 571
    move-result v7

    .line 572
    if-eqz v7, :cond_12

    .line 573
    .line 574
    goto :goto_8

    .line 575
    :cond_12
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    goto :goto_8

    .line 579
    :sswitch_2
    const-string v6, "ID_BACKUP_UPDATED_APPS"

    .line 580
    .line 581
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v6

    .line 585
    if-eqz v6, :cond_7

    .line 586
    .line 587
    if-eqz v13, :cond_13

    .line 588
    .line 589
    sget-object v6, Lua1;->g:Lua1;

    .line 590
    .line 591
    invoke-virtual {v6}, Lua1;->a()Lik6;

    .line 592
    .line 593
    .line 594
    move-result-object v6

    .line 595
    iget-object v6, v6, Lik6;->c:Ljava/lang/Object;

    .line 596
    .line 597
    check-cast v6, Ljava/util/List;

    .line 598
    .line 599
    goto :goto_9

    .line 600
    :cond_13
    sget-object v6, Lg00;->a:Lg00;

    .line 601
    .line 602
    invoke-static/range {v16 .. v16}, Lg00;->m(Z)Ljava/util/List;

    .line 603
    .line 604
    .line 605
    move-result-object v6

    .line 606
    :goto_9
    new-instance v7, Ljava/util/ArrayList;

    .line 607
    .line 608
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .line 610
    .line 611
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 612
    .line 613
    .line 614
    move-result-object v6

    .line 615
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 616
    .line 617
    .line 618
    move-result v12

    .line 619
    if-eqz v12, :cond_15

    .line 620
    .line 621
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v12

    .line 625
    move-object/from16 v20, v8

    .line 626
    .line 627
    move-object v8, v12

    .line 628
    check-cast v8, Lji;

    .line 629
    .line 630
    invoke-virtual {v8}, Lji;->isInstalled()Z

    .line 631
    .line 632
    .line 633
    move-result v19

    .line 634
    if-eqz v19, :cond_14

    .line 635
    .line 636
    invoke-static {v14, v15, v2, v8}, Lt27;->a(ZZZLji;)Z

    .line 637
    .line 638
    .line 639
    move-result v8

    .line 640
    if-eqz v8, :cond_14

    .line 641
    .line 642
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    :cond_14
    move-object/from16 v8, v20

    .line 646
    .line 647
    goto :goto_a

    .line 648
    :cond_15
    move-object/from16 v20, v8

    .line 649
    .line 650
    new-instance v2, Ljava/util/ArrayList;

    .line 651
    .line 652
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 656
    .line 657
    .line 658
    move-result-object v6

    .line 659
    :cond_16
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 660
    .line 661
    .line 662
    move-result v7

    .line 663
    if-eqz v7, :cond_17

    .line 664
    .line 665
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v7

    .line 669
    move-object v8, v7

    .line 670
    check-cast v8, Lji;

    .line 671
    .line 672
    invoke-static {v8, v13}, Lqq;->f(Lji;Z)Z

    .line 673
    .line 674
    .line 675
    move-result v8

    .line 676
    if-eqz v8, :cond_16

    .line 677
    .line 678
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    goto :goto_b

    .line 682
    :cond_17
    move-object v13, v2

    .line 683
    goto/16 :goto_10

    .line 684
    .line 685
    :sswitch_3
    move-object/from16 v20, v8

    .line 686
    .line 687
    const-string v6, "ID_BACKUP_ALL_APPS"

    .line 688
    .line 689
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v6

    .line 693
    if-eqz v6, :cond_22

    .line 694
    .line 695
    sget-object v6, Lg00;->a:Lg00;

    .line 696
    .line 697
    invoke-static/range {v16 .. v16}, Lg00;->m(Z)Ljava/util/List;

    .line 698
    .line 699
    .line 700
    move-result-object v6

    .line 701
    new-instance v13, Ljava/util/ArrayList;

    .line 702
    .line 703
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .line 705
    .line 706
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 707
    .line 708
    .line 709
    move-result-object v6

    .line 710
    :cond_18
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 711
    .line 712
    .line 713
    move-result v7

    .line 714
    if-eqz v7, :cond_1f

    .line 715
    .line 716
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v7

    .line 720
    move-object v8, v7

    .line 721
    check-cast v8, Lji;

    .line 722
    .line 723
    invoke-virtual {v8}, Lji;->isInstalled()Z

    .line 724
    .line 725
    .line 726
    move-result v12

    .line 727
    if-eqz v12, :cond_18

    .line 728
    .line 729
    invoke-static {v14, v15, v2, v8}, Lt27;->a(ZZZLji;)Z

    .line 730
    .line 731
    .line 732
    move-result v8

    .line 733
    if-eqz v8, :cond_18

    .line 734
    .line 735
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    goto :goto_c

    .line 739
    :sswitch_4
    move-object/from16 v20, v8

    .line 740
    .line 741
    const-string v6, "ID_BACKUP_REDO_APPS"

    .line 742
    .line 743
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    move-result v6

    .line 747
    if-eqz v6, :cond_22

    .line 748
    .line 749
    if-eqz v13, :cond_1a

    .line 750
    .line 751
    sget-object v6, Lua1;->g:Lua1;

    .line 752
    .line 753
    invoke-virtual {v6}, Lua1;->a()Lik6;

    .line 754
    .line 755
    .line 756
    move-result-object v6

    .line 757
    iget-object v6, v6, Lik6;->c:Ljava/lang/Object;

    .line 758
    .line 759
    check-cast v6, Ljava/util/List;

    .line 760
    .line 761
    new-instance v13, Ljava/util/ArrayList;

    .line 762
    .line 763
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .line 765
    .line 766
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 767
    .line 768
    .line 769
    move-result-object v6

    .line 770
    :cond_19
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 771
    .line 772
    .line 773
    move-result v7

    .line 774
    if-eqz v7, :cond_1f

    .line 775
    .line 776
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-result-object v7

    .line 780
    move-object v8, v7

    .line 781
    check-cast v8, Lji;

    .line 782
    .line 783
    invoke-virtual {v8}, Lji;->isInstalled()Z

    .line 784
    .line 785
    .line 786
    move-result v12

    .line 787
    if-eqz v12, :cond_19

    .line 788
    .line 789
    invoke-static {v14, v15, v2, v8}, Lt27;->a(ZZZLji;)Z

    .line 790
    .line 791
    .line 792
    move-result v8

    .line 793
    if-eqz v8, :cond_19

    .line 794
    .line 795
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    goto :goto_d

    .line 799
    :cond_1a
    sget-object v6, Lg00;->a:Lg00;

    .line 800
    .line 801
    invoke-static/range {v16 .. v16}, Lg00;->m(Z)Ljava/util/List;

    .line 802
    .line 803
    .line 804
    move-result-object v6

    .line 805
    new-instance v7, Ljava/util/ArrayList;

    .line 806
    .line 807
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .line 809
    .line 810
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 811
    .line 812
    .line 813
    move-result-object v6

    .line 814
    :cond_1b
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 815
    .line 816
    .line 817
    move-result v8

    .line 818
    if-eqz v8, :cond_1c

    .line 819
    .line 820
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v8

    .line 824
    move-object v12, v8

    .line 825
    check-cast v12, Lji;

    .line 826
    .line 827
    invoke-virtual {v12}, Lji;->isInstalled()Z

    .line 828
    .line 829
    .line 830
    move-result v13

    .line 831
    if-eqz v13, :cond_1b

    .line 832
    .line 833
    invoke-static {v14, v15, v2, v12}, Lt27;->a(ZZZLji;)Z

    .line 834
    .line 835
    .line 836
    move-result v12

    .line 837
    if-eqz v12, :cond_1b

    .line 838
    .line 839
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    goto :goto_e

    .line 843
    :cond_1c
    new-instance v13, Ljava/util/ArrayList;

    .line 844
    .line 845
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    :cond_1d
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 853
    .line 854
    .line 855
    move-result v6

    .line 856
    if-eqz v6, :cond_1f

    .line 857
    .line 858
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v6

    .line 862
    move-object v7, v6

    .line 863
    check-cast v7, Lji;

    .line 864
    .line 865
    invoke-virtual {v7}, Lji;->getLocalBackups()Ljava/util/List;

    .line 866
    .line 867
    .line 868
    move-result-object v7

    .line 869
    if-eqz v7, :cond_1d

    .line 870
    .line 871
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 872
    .line 873
    .line 874
    move-result v7

    .line 875
    if-eqz v7, :cond_1e

    .line 876
    .line 877
    goto :goto_f

    .line 878
    :cond_1e
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    goto :goto_f

    .line 882
    :cond_1f
    :goto_10
    sget-object v21, Lvr6;->INSTANCE:Lvr6;

    .line 883
    .line 884
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 885
    .line 886
    .line 887
    move-result v2

    .line 888
    const-string v6, "Apps list compiled with size "

    .line 889
    .line 890
    const-string v7, " for QuickAction: "

    .line 891
    .line 892
    invoke-static {v2, v6, v7, v11}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v23

    .line 896
    const/16 v25, 0x4

    .line 897
    .line 898
    const/16 v26, 0x0

    .line 899
    .line 900
    const-string v22, "ScheduleAppsLoader"

    .line 901
    .line 902
    const/16 v24, 0x0

    .line 903
    .line 904
    invoke-static/range {v21 .. v26}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 905
    .line 906
    .line 907
    new-instance v2, Ljava/util/HashSet;

    .line 908
    .line 909
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 910
    .line 911
    .line 912
    new-instance v6, Ljava/util/ArrayList;

    .line 913
    .line 914
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .line 916
    .line 917
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 918
    .line 919
    .line 920
    move-result-object v7

    .line 921
    :cond_20
    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 922
    .line 923
    .line 924
    move-result v8

    .line 925
    if-eqz v8, :cond_21

    .line 926
    .line 927
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v8

    .line 931
    move-object v11, v8

    .line 932
    check-cast v11, Lji;

    .line 933
    .line 934
    invoke-virtual {v11}, Lji;->getPackageName()Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v11

    .line 938
    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 939
    .line 940
    .line 941
    move-result v11

    .line 942
    if-eqz v11, :cond_20

    .line 943
    .line 944
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    .line 946
    .line 947
    goto :goto_11

    .line 948
    :cond_21
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 949
    .line 950
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 951
    .line 952
    .line 953
    new-instance v2, Lb01;

    .line 954
    .line 955
    const/4 v7, 0x2

    .line 956
    invoke-direct {v2, v7}, Lb01;-><init>(I)V

    .line 957
    .line 958
    .line 959
    invoke-static {v6, v2}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 960
    .line 961
    .line 962
    move-result-object v2

    .line 963
    invoke-static {v2, v9}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 964
    .line 965
    .line 966
    move/from16 v2, v16

    .line 967
    .line 968
    move-object/from16 v8, v20

    .line 969
    .line 970
    const-wide/16 v6, 0x0

    .line 971
    .line 972
    goto/16 :goto_3

    .line 973
    .line 974
    :cond_22
    :goto_12
    const-string v0, "Quick action not implemented for QuickAction id: "

    .line 975
    .line 976
    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v0

    .line 980
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    return-object v20

    .line 984
    :cond_23
    move/from16 v16, v2

    .line 985
    .line 986
    move-object/from16 v20, v8

    .line 987
    .line 988
    new-instance v2, Ljava/util/HashSet;

    .line 989
    .line 990
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 991
    .line 992
    .line 993
    new-instance v6, Ljava/util/ArrayList;

    .line 994
    .line 995
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 996
    .line 997
    .line 998
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 999
    .line 1000
    .line 1001
    move-result-object v7

    .line 1002
    :cond_24
    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1003
    .line 1004
    .line 1005
    move-result v8

    .line 1006
    if-eqz v8, :cond_25

    .line 1007
    .line 1008
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v8

    .line 1012
    move-object v9, v8

    .line 1013
    check-cast v9, Lji;

    .line 1014
    .line 1015
    invoke-virtual {v9}, Lji;->getPackageName()Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v9

    .line 1019
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1020
    .line 1021
    .line 1022
    move-result v9

    .line 1023
    if-eqz v9, :cond_24

    .line 1024
    .line 1025
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    .line 1027
    .line 1028
    goto :goto_13

    .line 1029
    :cond_25
    if-nez v3, :cond_26

    .line 1030
    .line 1031
    new-instance v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;

    .line 1032
    .line 1033
    move/from16 v2, v16

    .line 1034
    .line 1035
    move-object/from16 v9, v20

    .line 1036
    .line 1037
    const-wide/16 v7, 0x0

    .line 1038
    .line 1039
    invoke-direct {v3, v7, v8, v2, v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1040
    .line 1041
    .line 1042
    :cond_26
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 1043
    .line 1044
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getItemId()Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v7

    .line 1048
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1049
    .line 1050
    .line 1051
    invoke-static {v7, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1055
    .line 1056
    .line 1057
    move-result v2

    .line 1058
    if-eqz v2, :cond_27

    .line 1059
    .line 1060
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 1061
    .line 1062
    sget-object v8, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 1063
    .line 1064
    const/4 v11, 0x4

    .line 1065
    const/4 v12, 0x0

    .line 1066
    const-string v9, "No apps matching the schedule requirements, skipping schedule."

    .line 1067
    .line 1068
    const/4 v10, 0x0

    .line 1069
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1070
    .line 1071
    .line 1072
    const/4 v9, 0x0

    .line 1073
    goto/16 :goto_19

    .line 1074
    .line 1075
    :cond_27
    invoke-static {}, Liu;->getEntries()Ljx2;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v2

    .line 1079
    new-instance v12, Ljava/util/ArrayList;

    .line 1080
    .line 1081
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .line 1083
    .line 1084
    check-cast v2, Lz3;

    .line 1085
    .line 1086
    invoke-virtual {v2}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v2

    .line 1090
    :cond_28
    :goto_14
    move-object v3, v2

    .line 1091
    check-cast v3, Lw3;

    .line 1092
    .line 1093
    invoke-virtual {v3}, Lw3;->hasNext()Z

    .line 1094
    .line 1095
    .line 1096
    move-result v7

    .line 1097
    if-eqz v7, :cond_2b

    .line 1098
    .line 1099
    invoke-virtual {v3}, Lw3;->next()Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v3

    .line 1103
    move-object v9, v3

    .line 1104
    check-cast v9, Liu;

    .line 1105
    .line 1106
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getAppParts()Ljava/util/List;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v3

    .line 1110
    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1111
    .line 1112
    .line 1113
    move-result v3

    .line 1114
    if-nez v3, :cond_29

    .line 1115
    .line 1116
    :goto_15
    const/4 v9, 0x0

    .line 1117
    goto :goto_16

    .line 1118
    :cond_29
    invoke-virtual {v9}, Liu;->getBackupReq()Lsk0;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v3

    .line 1122
    invoke-virtual {v3}, Lsk0;->isPossible()Z

    .line 1123
    .line 1124
    .line 1125
    move-result v3

    .line 1126
    if-nez v3, :cond_2a

    .line 1127
    .line 1128
    goto :goto_15

    .line 1129
    :cond_2a
    :goto_16
    if-eqz v9, :cond_28

    .line 1130
    .line 1131
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    .line 1133
    .line 1134
    goto :goto_14

    .line 1135
    :cond_2b
    new-instance v9, Ljava/util/ArrayList;

    .line 1136
    .line 1137
    const/16 v2, 0xa

    .line 1138
    .line 1139
    invoke-static {v6, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1140
    .line 1141
    .line 1142
    move-result v2

    .line 1143
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v2

    .line 1150
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1151
    .line 1152
    .line 1153
    move-result v3

    .line 1154
    if-eqz v3, :cond_2d

    .line 1155
    .line 1156
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v3

    .line 1160
    move-object v11, v3

    .line 1161
    check-cast v11, Lji;

    .line 1162
    .line 1163
    if-eqz v1, :cond_2c

    .line 1164
    .line 1165
    invoke-virtual {v11}, Lji;->getLocalBackups()Ljava/util/List;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v3

    .line 1169
    if-eqz v3, :cond_2c

    .line 1170
    .line 1171
    invoke-static {v3}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v3

    .line 1175
    check-cast v3, Lgm;

    .line 1176
    .line 1177
    if-eqz v3, :cond_2c

    .line 1178
    .line 1179
    iget-object v3, v3, Lgm;->a:Lhk;

    .line 1180
    .line 1181
    move-object v14, v3

    .line 1182
    goto :goto_18

    .line 1183
    :cond_2c
    const/4 v14, 0x0

    .line 1184
    :goto_18
    new-instance v10, Lhz;

    .line 1185
    .line 1186
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v15

    .line 1190
    invoke-static {}, Lz85;->w()Z

    .line 1191
    .line 1192
    .line 1193
    move-result v16

    .line 1194
    invoke-static {}, Lz85;->r()Lxp1;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v17

    .line 1198
    sget-object v3, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 1199
    .line 1200
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1201
    .line 1202
    .line 1203
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->c()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v18

    .line 1207
    invoke-static {}, Lok;->d()Ljava/util/ArrayList;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v19

    .line 1211
    move-object v13, v5

    .line 1212
    invoke-direct/range {v10 .. v19}, Lhz;-><init>(Lji;Ljava/util/List;Ljava/util/List;Lhk;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;ZLxp1;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/util/List;)V

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    .line 1217
    .line 1218
    goto :goto_17

    .line 1219
    :cond_2d
    :goto_19
    if-nez v9, :cond_2e

    .line 1220
    .line 1221
    const/16 v20, 0x0

    .line 1222
    .line 1223
    return-object v20

    .line 1224
    :cond_2e
    new-instance v1, Lc40;

    .line 1225
    .line 1226
    new-instance v2, Lb40;

    .line 1227
    .line 1228
    invoke-direct {v2}, Lb40;-><init>()V

    .line 1229
    .line 1230
    .line 1231
    iget-object v0, v0, Lf47;->e:Lky7;

    .line 1232
    .line 1233
    invoke-direct {v1, v9, v0, v2}, Lc40;-><init>(Ljava/util/List;Lty7;Lb40;)V

    .line 1234
    .line 1235
    .line 1236
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 1237
    .line 1238
    sget-object v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 1239
    .line 1240
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 1241
    .line 1242
    .line 1243
    move-result v0

    .line 1244
    const-string v2, "Added "

    .line 1245
    .line 1246
    const-string v5, " tasks"

    .line 1247
    .line 1248
    invoke-static {v0, v2, v5}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v5

    .line 1252
    const/4 v7, 0x4

    .line 1253
    const/4 v8, 0x0

    .line 1254
    const/4 v6, 0x0

    .line 1255
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1256
    .line 1257
    .line 1258
    return-object v1

    .line 1259
    :sswitch_data_0
    .sparse-switch
        -0x6b3f5b86 -> :sswitch_4
        -0x3716ced7 -> :sswitch_3
        0x286d1dcf -> :sswitch_2
        0x4320bdfd -> :sswitch_1
        0x4e569e73 -> :sswitch_0
    .end sparse-switch
.end method
