.class public final synthetic Lld6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ComponentCallbacks;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentCallbacks;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lld6;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lld6;->b:Landroid/content/ComponentCallbacks;

    .line 4
    .line 5
    iput-object p2, p0, Lld6;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lld6;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lld6;->e:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lld6;->a:I

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object v5, v0, Lld6;->e:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v6, v0, Lld6;->d:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, v0, Lld6;->c:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v0, v0, Lld6;->b:Landroid/content/ComponentCallbacks;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;

    .line 21
    .line 22
    check-cast v7, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 23
    .line 24
    check-cast v6, Ljava/util/List;

    .line 25
    .line 26
    check-cast v5, Lus8;

    .line 27
    .line 28
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getItemId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getLocations()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-static {v2}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 47
    .line 48
    sget-object v15, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v13, 0x0

    .line 51
    const/16 v14, 0x3e

    .line 52
    .line 53
    const-string v10, ", "

    .line 54
    .line 55
    const/4 v11, 0x0

    .line 56
    const/4 v12, 0x0

    .line 57
    invoke-static/range {v9 .. v14}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    const-string v11, "getWifiTaskParams: Backup locations: "

    .line 62
    .line 63
    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    const/4 v14, 0x4

    .line 68
    move-object v11, v15

    .line 69
    const/4 v15, 0x0

    .line 70
    move-object v10, v2

    .line 71
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    sget-object v2, Lq05;->CLOUD:Lq05;

    .line 75
    .line 76
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    const-wide/16 v12, 0x0

    .line 81
    .line 82
    if-eqz v11, :cond_3

    .line 83
    .line 84
    const-string v11, "getWifiTaskParams: "

    .line 85
    .line 86
    invoke-virtual {v0, v11, v9}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->g(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    if-nez v11, :cond_2

    .line 91
    .line 92
    invoke-virtual {v0, v1, v8}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->f(Ljava/lang/String;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    sget-object v11, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v14, "getWifiTaskParams: Sync option not met: "

    .line 103
    .line 104
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const/4 v14, 0x4

    .line 115
    const/4 v15, 0x0

    .line 116
    move-wide/from16 v16, v12

    .line 117
    .line 118
    const/4 v13, 0x0

    .line 119
    move-object v12, v0

    .line 120
    move-object/from16 p0, v7

    .line 121
    .line 122
    move-wide/from16 v7, v16

    .line 123
    .line 124
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;

    .line 128
    .line 129
    invoke-direct {v0, v7, v8, v4, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v9}, Lji8;->t(Ljava/util/Collection;)Z

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    if-eqz v11, :cond_1

    .line 137
    .line 138
    sget-object v11, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 139
    .line 140
    const/4 v14, 0x4

    .line 141
    const/4 v15, 0x0

    .line 142
    const-string v12, "getWifiTaskParams: Can\'t proceed as syncing isn\'t possible and destination is only cloud"

    .line 143
    .line 144
    const/4 v13, 0x0

    .line 145
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-static {v1, v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 154
    .line 155
    .line 156
    :cond_0
    :goto_0
    move-object v0, v3

    .line 157
    goto :goto_2

    .line 158
    :cond_1
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    sget-object v11, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 162
    .line 163
    const/4 v14, 0x4

    .line 164
    const/4 v15, 0x0

    .line 165
    const-string v12, "getWifiTaskParams: Removed cloud location"

    .line 166
    .line 167
    const/4 v13, 0x0

    .line 168
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    move-object v11, v0

    .line 172
    goto :goto_1

    .line 173
    :cond_2
    move-object/from16 p0, v7

    .line 174
    .line 175
    move-wide v7, v12

    .line 176
    goto :goto_1

    .line 177
    :cond_3
    move-object/from16 p0, v7

    .line 178
    .line 179
    move-wide v7, v12

    .line 180
    move-object v11, v3

    .line 181
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_4

    .line 186
    .line 187
    if-eqz v11, :cond_0

    .line 188
    .line 189
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-static {v1, v11}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_4
    if-nez v11, :cond_5

    .line 199
    .line 200
    new-instance v11, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;

    .line 201
    .line 202
    invoke-direct {v11, v7, v8, v4, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 203
    .line 204
    .line 205
    :cond_5
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-static {v1, v11}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Lbz7;

    .line 214
    .line 215
    const/4 v1, 0x0

    .line 216
    invoke-direct {v0, v6, v9, v1}, Lbz7;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    .line 217
    .line 218
    .line 219
    :goto_2
    if-nez v0, :cond_6

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_6
    new-instance v1, Lpx;

    .line 223
    .line 224
    const/16 v2, 0xf

    .line 225
    .line 226
    move-object/from16 v7, p0

    .line 227
    .line 228
    invoke-direct {v1, v7, v2}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 229
    .line 230
    .line 231
    new-instance v3, Ltt8;

    .line 232
    .line 233
    invoke-direct {v3, v0, v5, v1}, Ltt8;-><init>(Lbz7;Lus8;Lpx;)V

    .line 234
    .line 235
    .line 236
    :goto_3
    return-object v3

    .line 237
    :pswitch_0
    move-object v1, v0

    .line 238
    check-cast v1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 239
    .line 240
    check-cast v7, Lq63;

    .line 241
    .line 242
    check-cast v6, Ljava/lang/String;

    .line 243
    .line 244
    check-cast v5, Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_7

    .line 251
    .line 252
    goto/16 :goto_8

    .line 253
    .line 254
    :cond_7
    invoke-virtual {v1}, Lil0;->H()V

    .line 255
    .line 256
    .line 257
    if-eqz v7, :cond_a

    .line 258
    .line 259
    invoke-virtual {v7}, Lq63;->j()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_8

    .line 264
    .line 265
    goto/16 :goto_7

    .line 266
    .line 267
    :cond_8
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    invoke-static {v7}, Lf93;->a(Lq63;)Landroid/net/Uri;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    invoke-virtual {v7}, Lq63;->p()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    const-string v9, "SwiftLogger Logs"

    .line 283
    .line 284
    new-instance v10, Landroid/content/Intent;

    .line 285
    .line 286
    const-string v11, "android.intent.action.SEND"

    .line 287
    .line 288
    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string v11, "android.intent.extra.EMAIL"

    .line 292
    .line 293
    const-string v12, "support@swiftapps.org"

    .line 294
    .line 295
    filled-new-array {v12}, [Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    .line 301
    .line 302
    const-string v11, "android.intent.extra.SUBJECT"

    .line 303
    .line 304
    invoke-virtual {v10, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    .line 306
    .line 307
    const-string v9, "android.intent.extra.TEXT"

    .line 308
    .line 309
    invoke-virtual {v10, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    .line 311
    .line 312
    const-string v5, "android.intent.extra.STREAM"

    .line 313
    .line 314
    invoke-virtual {v10, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 315
    .line 316
    .line 317
    invoke-static {v0, v7, v8}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v10, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 325
    .line 326
    .line 327
    const-string v0, "application/x-7z-compressed"

    .line 328
    .line 329
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .line 331
    .line 332
    move-object v3, v10

    .line 333
    goto :goto_6

    .line 334
    :goto_4
    move-object v10, v0

    .line 335
    goto :goto_5

    .line 336
    :catch_0
    move-exception v0

    .line 337
    goto :goto_4

    .line 338
    :goto_5
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 339
    .line 340
    invoke-virtual {v1}, Lk28;->r()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v8

    .line 344
    const/16 v12, 0x8

    .line 345
    .line 346
    const/4 v13, 0x0

    .line 347
    const-string v9, "Failed to create SwiftLogger archive share intent"

    .line 348
    .line 349
    const/4 v11, 0x0

    .line 350
    invoke-static/range {v7 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    :goto_6
    if-eqz v3, :cond_9

    .line 354
    .line 355
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    const/high16 v4, 0x10000

    .line 360
    .line 361
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-nez v0, :cond_9

    .line 373
    .line 374
    const v0, 0x7f1304f7

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-static {v3, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 386
    .line 387
    .line 388
    goto :goto_8

    .line 389
    :cond_9
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 390
    .line 391
    invoke-virtual {v1}, Lk28;->r()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v8

    .line 395
    const/4 v11, 0x4

    .line 396
    const/4 v12, 0x0

    .line 397
    const-string v9, "No app found for SwiftLogger archive, falling back to text-only report"

    .line 398
    .line 399
    const/4 v10, 0x0

    .line 400
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1, v6}, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->P(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    goto :goto_8

    .line 407
    :cond_a
    :goto_7
    sget-object v13, Lvr6;->INSTANCE:Lvr6;

    .line 408
    .line 409
    invoke-virtual {v1}, Lk28;->r()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v14

    .line 413
    const/16 v17, 0x4

    .line 414
    .line 415
    const/16 v18, 0x0

    .line 416
    .line 417
    const-string v15, "SwiftLogger archive unavailable, falling back to text-only report"

    .line 418
    .line 419
    const/16 v16, 0x0

    .line 420
    .line 421
    invoke-static/range {v13 .. v18}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1, v6}, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->P(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    :goto_8
    return-object v2

    .line 428
    :pswitch_1
    check-cast v0, Lnd6;

    .line 429
    .line 430
    check-cast v7, Ljava/util/ArrayList;

    .line 431
    .line 432
    check-cast v6, Lzc6;

    .line 433
    .line 434
    check-cast v5, Llk3;

    .line 435
    .line 436
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    check-cast v1, Lsa1;

    .line 441
    .line 442
    if-nez v1, :cond_b

    .line 443
    .line 444
    goto/16 :goto_a

    .line 445
    .line 446
    :cond_b
    invoke-virtual {v0}, Landroidx/fragment/app/o;->isAdded()Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-eqz v0, :cond_12

    .line 451
    .line 452
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-nez v0, :cond_12

    .line 457
    .line 458
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    if-eqz v0, :cond_c

    .line 463
    .line 464
    goto :goto_a

    .line 465
    :cond_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-eqz v0, :cond_10

    .line 470
    .line 471
    iget-boolean v0, v6, Lzc6;->e:Z

    .line 472
    .line 473
    if-eqz v0, :cond_f

    .line 474
    .line 475
    if-eqz v0, :cond_d

    .line 476
    .line 477
    if-eqz v0, :cond_d

    .line 478
    .line 479
    iget-boolean v3, v6, Lzc6;->q:Z

    .line 480
    .line 481
    if-eqz v3, :cond_d

    .line 482
    .line 483
    const v0, 0x7f1303bd

    .line 484
    .line 485
    .line 486
    goto :goto_9

    .line 487
    :cond_d
    if-eqz v0, :cond_e

    .line 488
    .line 489
    const v0, 0x7f1303be

    .line 490
    .line 491
    .line 492
    goto :goto_9

    .line 493
    :cond_e
    const v0, 0x7f13026c

    .line 494
    .line 495
    .line 496
    :goto_9
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    sget-object v3, Lzn4;->a:Lzn4;

    .line 504
    .line 505
    new-instance v3, Lcv;

    .line 506
    .line 507
    const/16 v4, 0xe

    .line 508
    .line 509
    invoke-direct {v3, v4, v1, v0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    invoke-static {v3}, Lzn4;->e(Lbt3;)V

    .line 513
    .line 514
    .line 515
    goto :goto_a

    .line 516
    :cond_f
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U:I

    .line 517
    .line 518
    sget-object v0, Lto3;->LOCAL:Lto3;

    .line 519
    .line 520
    invoke-static {v1, v0}, Lnc8;->k0(Lil0;Lto3;)V

    .line 521
    .line 522
    .line 523
    goto :goto_a

    .line 524
    :cond_10
    invoke-virtual {v5}, Llk3;->c()Z

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    if-eqz v0, :cond_11

    .line 529
    .line 530
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 531
    .line 532
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    if-nez v0, :cond_11

    .line 537
    .line 538
    sget v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 539
    .line 540
    invoke-static {v1}, Lrs9;->u(Lk28;)V

    .line 541
    .line 542
    .line 543
    goto :goto_a

    .line 544
    :cond_11
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 545
    .line 546
    invoke-static {v1, v5, v7}, Llg7;->G(Lil0;Llk3;Ljava/util/List;)V

    .line 547
    .line 548
    .line 549
    :cond_12
    :goto_a
    return-object v2

    .line 550
    nop

    .line 551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
