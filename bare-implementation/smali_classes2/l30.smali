.class public final synthetic Ll30;
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

    .line 13
    iput p1, p0, Ll30;->a:I

    iput-object p2, p0, Ll30;->b:Ljava/lang/Object;

    iput-object p3, p0, Ll30;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    iput v0, p0, Ll30;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Ll30;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Ll30;->b:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ll30;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    sget-object v5, Lbe8;->a:Lbe8;

    .line 9
    .line 10
    iget-object v6, v0, Ll30;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v0, v0, Ll30;->b:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Landroid/content/Context;

    .line 18
    .line 19
    check-cast v6, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 30
    .line 31
    .line 32
    return-object v5

    .line 33
    :pswitch_0
    check-cast v0, Lq63;

    .line 34
    .line 35
    check-cast v6, Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0, v6}, Lq63;->K(Lq63;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_1
    check-cast v0, Lx27;

    .line 44
    .line 45
    check-cast v6, Lq47;

    .line 46
    .line 47
    sget-object v1, Lc47;->a:Lc47;

    .line 48
    .line 49
    invoke-virtual {v1}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    iget-object v1, v0, Lx27;->a:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    iget v0, v0, Lx27;->b:I

    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->MINIMUM_PERCENT:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 66
    .line 67
    if-ne v1, v2, :cond_0

    .line 68
    .line 69
    move-object v11, v0

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move-object v11, v3

    .line 72
    :goto_0
    const/16 v21, 0x1ff3

    .line 73
    .line 74
    const/16 v22, 0x0

    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v9, 0x0

    .line 78
    const/4 v12, 0x0

    .line 79
    const/4 v13, 0x0

    .line 80
    const/4 v14, 0x0

    .line 81
    const/4 v15, 0x0

    .line 82
    const/16 v16, 0x0

    .line 83
    .line 84
    const/16 v17, 0x0

    .line 85
    .line 86
    const/16 v18, 0x0

    .line 87
    .line 88
    const/16 v19, 0x0

    .line 89
    .line 90
    const/16 v20, 0x0

    .line 91
    .line 92
    invoke-static/range {v7 .. v22}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v6, v0}, Lq47;->k(Lq47;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 97
    .line 98
    .line 99
    return-object v5

    .line 100
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 101
    .line 102
    check-cast v6, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;

    .line 103
    .line 104
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->isBackupAllFolders()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    const/16 v5, 0xa

    .line 111
    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    sget-object v1, Lpz4;->g:Lpz4;

    .line 115
    .line 116
    invoke-virtual {v1}, Ldv;->e()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    new-instance v7, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_1

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    check-cast v8, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 144
    .line 145
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_1
    invoke-static {v7}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getFolderItems()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    if-nez v1, :cond_3

    .line 163
    .line 164
    sget-object v1, Lov2;->a:Lov2;

    .line 165
    .line 166
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-eqz v7, :cond_4

    .line 171
    .line 172
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 173
    .line 174
    sget-object v9, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getItemId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const-string v1, "No folders found for schedule "

    .line 181
    .line 182
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    const/4 v12, 0x4

    .line 187
    const/4 v13, 0x0

    .line 188
    const/4 v11, 0x0

    .line 189
    invoke-static/range {v8 .. v13}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_8

    .line 193
    .line 194
    :cond_4
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getItemId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getLocations()Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getBackupStrategy()Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    invoke-static {v8}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 211
    .line 212
    sget-object v16, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 213
    .line 214
    const/4 v14, 0x0

    .line 215
    const/16 v15, 0x3e

    .line 216
    .line 217
    const-string v11, ", "

    .line 218
    .line 219
    const/4 v12, 0x0

    .line 220
    const/4 v13, 0x0

    .line 221
    invoke-static/range {v10 .. v15}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    const-string v12, "getFoldersTaskParams: Backup locations: "

    .line 226
    .line 227
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v13

    .line 231
    const/4 v15, 0x4

    .line 232
    move-object/from16 v12, v16

    .line 233
    .line 234
    const/16 v16, 0x0

    .line 235
    .line 236
    move-object v11, v8

    .line 237
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    const-string v8, "getFoldersTaskParams: "

    .line 241
    .line 242
    invoke-virtual {v6, v8, v10}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->g(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-eqz v8, :cond_6

    .line 251
    .line 252
    if-eqz v6, :cond_5

    .line 253
    .line 254
    sget-object v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 255
    .line 256
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    invoke-static {v7, v6}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 260
    .line 261
    .line 262
    :cond_5
    move-object v4, v3

    .line 263
    goto :goto_3

    .line 264
    :cond_6
    if-nez v6, :cond_7

    .line 265
    .line 266
    new-instance v6, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;

    .line 267
    .line 268
    const-wide/16 v11, 0x0

    .line 269
    .line 270
    invoke-direct {v6, v11, v12, v4, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 271
    .line 272
    .line 273
    :cond_7
    sget-object v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 274
    .line 275
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-static {v7, v6}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 279
    .line 280
    .line 281
    new-instance v4, Luy7;

    .line 282
    .line 283
    invoke-direct {v4, v10, v9, v2}, Luy7;-><init>(Ljava/util/List;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;Z)V

    .line 284
    .line 285
    .line 286
    :goto_3
    if-nez v4, :cond_8

    .line 287
    .line 288
    goto/16 :goto_8

    .line 289
    .line 290
    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    .line 298
    .line 299
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-eqz v5, :cond_d

    .line 308
    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    move-object v8, v5

    .line 314
    check-cast v8, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 315
    .line 316
    new-instance v7, Lbo3;

    .line 317
    .line 318
    iget-object v9, v4, Luy7;->f:Ljava/util/List;

    .line 319
    .line 320
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getBackupStrategy()Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 321
    .line 322
    .line 323
    move-result-object v11

    .line 324
    const-string v5, "compression_level_folders"

    .line 325
    .line 326
    const/4 v10, -0x1

    .line 327
    :try_start_0
    sget-object v12, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 328
    .line 329
    if-eqz v12, :cond_9

    .line 330
    .line 331
    invoke-interface {v12, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 332
    .line 333
    .line 334
    move-result v10

    .line 335
    goto :goto_5

    .line 336
    :cond_9
    const-string v5, "prefs"

    .line 337
    .line 338
    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :catch_0
    :goto_5
    sget-object v5, Lxp1;->Companion:Lwp1;

    .line 343
    .line 344
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    invoke-static {}, Lwp1;->a()[Lxp1;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    move v12, v2

    .line 352
    :goto_6
    const/4 v13, 0x2

    .line 353
    if-ge v12, v13, :cond_b

    .line 354
    .line 355
    aget-object v13, v5, v12

    .line 356
    .line 357
    invoke-virtual {v13}, Lxp1;->getLevel()I

    .line 358
    .line 359
    .line 360
    move-result v14

    .line 361
    if-ne v14, v10, :cond_a

    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_b
    move-object v13, v3

    .line 368
    :goto_7
    if-nez v13, :cond_c

    .line 369
    .line 370
    sget-object v5, Lxp1;->Companion:Lwp1;

    .line 371
    .line 372
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 376
    .line 377
    .line 378
    move-result-object v13

    .line 379
    :cond_c
    move-object v12, v13

    .line 380
    const/4 v10, 0x0

    .line 381
    invoke-direct/range {v7 .. v12}, Lbo3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/util/List;Lkj3;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;Lxp1;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_d
    new-instance v3, Lqp3;

    .line 389
    .line 390
    new-instance v0, Lpp3;

    .line 391
    .line 392
    invoke-direct {v0}, Lpp3;-><init>()V

    .line 393
    .line 394
    .line 395
    invoke-direct {v3, v6, v4, v0}, Lqp3;-><init>(Ljava/util/List;Lty7;Lpp3;)V

    .line 396
    .line 397
    .line 398
    :goto_8
    return-object v3

    .line 399
    :pswitch_3
    check-cast v0, Lnd6;

    .line 400
    .line 401
    check-cast v6, Lkg;

    .line 402
    .line 403
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    check-cast v1, Lsa1;

    .line 408
    .line 409
    if-nez v1, :cond_e

    .line 410
    .line 411
    goto :goto_9

    .line 412
    :cond_e
    invoke-virtual {v0}, Landroidx/fragment/app/o;->isAdded()Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-eqz v0, :cond_10

    .line 417
    .line 418
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-nez v0, :cond_10

    .line 423
    .line 424
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-eqz v0, :cond_f

    .line 429
    .line 430
    goto :goto_9

    .line 431
    :cond_f
    invoke-virtual {v6}, Lkg;->invoke()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    :cond_10
    :goto_9
    return-object v5

    .line 435
    :pswitch_4
    check-cast v6, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 436
    .line 437
    check-cast v0, Ljava/util/ArrayList;

    .line 438
    .line 439
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 440
    .line 441
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->Z()Lye5;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-virtual {v1, v0, v4}, Lme5;->j(Ljava/util/List;Z)V

    .line 446
    .line 447
    .line 448
    return-object v5

    .line 449
    :pswitch_5
    check-cast v0, Lcom/jcraft/jsch/ChannelSftp;

    .line 450
    .line 451
    check-cast v6, Lcom/jcraft/jsch/Session;

    .line 452
    .line 453
    :try_start_1
    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 454
    .line 455
    .line 456
    :catch_1
    :try_start_2
    invoke-virtual {v6}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 457
    .line 458
    .line 459
    :catch_2
    return-object v5

    .line 460
    :pswitch_6
    check-cast v0, Lzo3;

    .line 461
    .line 462
    check-cast v6, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 463
    .line 464
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    new-instance v1, Lik3;

    .line 468
    .line 469
    invoke-direct {v1, v0, v6, v4}, Lik3;-><init>(Lkk3;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Z)V

    .line 470
    .line 471
    .line 472
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 473
    .line 474
    .line 475
    iget-object v0, v0, Lzo3;->e:Lix6;

    .line 476
    .line 477
    sget-object v1, Lto3;->LOCAL:Lto3;

    .line 478
    .line 479
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    return-object v5

    .line 483
    :pswitch_7
    check-cast v0, Lo23;

    .line 484
    .line 485
    check-cast v6, Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual {v0, v2}, Lo23;->z(Z)Ld23;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-virtual {v0, v6}, Lo23;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    new-instance v6, Ljava/io/File;

    .line 496
    .line 497
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v6

    .line 504
    if-eqz v6, :cond_11

    .line 505
    .line 506
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 507
    .line 508
    .line 509
    move-result v7

    .line 510
    if-nez v7, :cond_12

    .line 511
    .line 512
    :cond_11
    move-object v6, v3

    .line 513
    :cond_12
    invoke-virtual {v0, v1, v6}, Lo23;->B(Ld23;Ljava/lang/String;)[Lg23;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    iget v7, v1, Lz13;->k:I

    .line 518
    .line 519
    invoke-static {v7}, Lk55;->x(I)Z

    .line 520
    .line 521
    .line 522
    move-result v7

    .line 523
    if-eqz v7, :cond_16

    .line 524
    .line 525
    array-length v1, v0

    .line 526
    move v6, v2

    .line 527
    :goto_a
    if-ge v6, v1, :cond_17

    .line 528
    .line 529
    aget-object v7, v0, v6

    .line 530
    .line 531
    iget-object v8, v7, Lg23;->d:Ljava/lang/String;

    .line 532
    .line 533
    sget-char v9, Lmc3;->a:C

    .line 534
    .line 535
    if-nez v5, :cond_13

    .line 536
    .line 537
    move-object v9, v3

    .line 538
    goto :goto_b

    .line 539
    :cond_13
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    .line 540
    .line 541
    .line 542
    move-result v9

    .line 543
    if-gez v9, :cond_15

    .line 544
    .line 545
    const/16 v9, 0x2f

    .line 546
    .line 547
    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(I)I

    .line 548
    .line 549
    .line 550
    move-result v9

    .line 551
    const/16 v10, 0x5c

    .line 552
    .line 553
    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(I)I

    .line 554
    .line 555
    .line 556
    move-result v10

    .line 557
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 558
    .line 559
    .line 560
    move-result v9

    .line 561
    add-int/2addr v9, v4

    .line 562
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v9

    .line 566
    :goto_b
    invoke-static {v8, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v8

    .line 570
    if-eqz v8, :cond_14

    .line 571
    .line 572
    move-object v3, v7

    .line 573
    goto :goto_c

    .line 574
    :cond_14
    add-int/lit8 v6, v6, 0x1

    .line 575
    .line 576
    goto :goto_a

    .line 577
    :cond_15
    const-string v0, "Null character present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it"

    .line 578
    .line 579
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    goto :goto_c

    .line 583
    :cond_16
    invoke-virtual {v1}, Lz13;->i()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    const-string v1, "LIST failed for metadata path="

    .line 588
    .line 589
    const-string v2, ". Reply="

    .line 590
    .line 591
    invoke-static {v1, v6, v2, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    .line 596
    .line 597
    .line 598
    :cond_17
    :goto_c
    return-object v3

    .line 599
    :pswitch_8
    check-cast v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 600
    .line 601
    check-cast v6, Lek2;

    .line 602
    .line 603
    iget-boolean v1, v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->X:Z

    .line 604
    .line 605
    if-nez v1, :cond_18

    .line 606
    .line 607
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->X()Ldj2;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    iget-object v1, v1, Ldj2;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y:Lgv7;

    .line 617
    .line 618
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    check-cast v2, Landroid/transition/TransitionSet;

    .line 623
    .line 624
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    .line 626
    .line 627
    const-class v3, Landroid/widget/TextView;

    .line 628
    .line 629
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    invoke-static {v1, v2, v3}, Lil0;->w(Landroid/view/ViewGroup;Landroid/transition/Transition;[Ljava/lang/Class;)V

    .line 634
    .line 635
    .line 636
    :cond_18
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    iget-object v1, v1, Lmk2;->j:Lex6;

    .line 641
    .line 642
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    invoke-static {v6, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    if-eqz v1, :cond_19

    .line 651
    .line 652
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->U:Lgv7;

    .line 653
    .line 654
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    check-cast v0, Lrj2;

    .line 659
    .line 660
    invoke-virtual {v0, v6}, Lrj2;->b(Lek2;)V

    .line 661
    .line 662
    .line 663
    :cond_19
    return-object v5

    .line 664
    :pswitch_9
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    .line 665
    .line 666
    check-cast v6, Lwv3;

    .line 667
    .line 668
    invoke-static {v0, v6}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->$r8$lambda$vmSIjKvCYXLOA-Edstl3SfT4_g8(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lwv3;)Lbe8;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    return-object v0

    .line 673
    :pswitch_a
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 674
    .line 675
    check-cast v6, Lk12;

    .line 676
    .line 677
    invoke-static {v0, v6}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$tMlp5CR9RweECHA2WWRJ6onKrVY(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Lk12;)Lbe8;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    return-object v0

    .line 682
    :pswitch_b
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;

    .line 683
    .line 684
    check-cast v6, Lk12;

    .line 685
    .line 686
    invoke-static {v0, v6}, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;->$r8$lambda$wfYryug0mga7GcBFvFrtxrNu1C0(Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;Lk12;)Lbe8;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    return-object v0

    .line 691
    :pswitch_c
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;

    .line 692
    .line 693
    check-cast v6, Lc12;

    .line 694
    .line 695
    invoke-static {v0, v6}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$cXqt7RJ41JfjJIeUD7hpYzA5MEM(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Lc12;)Lbe8;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    return-object v0

    .line 700
    :pswitch_d
    check-cast v0, Lfu3;

    .line 701
    .line 702
    check-cast v6, Ljava/lang/String;

    .line 703
    .line 704
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 705
    .line 706
    .line 707
    iget-object v0, v0, Lfu3;->h:Ld04;

    .line 708
    .line 709
    const-string v1, "id, thumbnailLink"

    .line 710
    .line 711
    invoke-virtual {v0, v6, v1}, Ld04;->i(Ljava/lang/String;Ljava/lang/String;)Lyz3;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    iget-object v0, v0, Lyz3;->f:Ljava/lang/String;

    .line 716
    .line 717
    return-object v0

    .line 718
    :pswitch_e
    check-cast v0, Ljava/util/ArrayList;

    .line 719
    .line 720
    check-cast v6, Lty7;

    .line 721
    .line 722
    new-instance v1, Lc40;

    .line 723
    .line 724
    new-instance v2, Lb40;

    .line 725
    .line 726
    invoke-direct {v2}, Lb40;-><init>()V

    .line 727
    .line 728
    .line 729
    invoke-direct {v1, v0, v6, v2}, Lc40;-><init>(Ljava/util/List;Lty7;Lb40;)V

    .line 730
    .line 731
    .line 732
    return-object v1

    .line 733
    :pswitch_data_0
    .packed-switch 0x0
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
