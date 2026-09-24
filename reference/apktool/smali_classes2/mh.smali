.class public final synthetic Lmh;
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
    iput p1, p0, Lmh;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lmh;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lmh;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lmh;->d:Ljava/lang/Object;

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
    .locals 15

    .line 1
    iget v0, p0, Lmh;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lmh;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, p0, Lmh;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p0, p0, Lmh;->b:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;

    .line 17
    .line 18
    check-cast v5, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 19
    .line 20
    check-cast v4, Ljava/util/List;

    .line 21
    .line 22
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getItemId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getLocations()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-static {v1}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 41
    .line 42
    sget-object v12, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    const/16 v11, 0x3e

    .line 46
    .line 47
    const-string v7, ", "

    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    const/4 v9, 0x0

    .line 51
    invoke-static/range {v6 .. v11}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    const-string v8, "getWallsTaskParams: Backup locations: "

    .line 56
    .line 57
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    const/4 v11, 0x4

    .line 62
    move-object v8, v12

    .line 63
    const/4 v12, 0x0

    .line 64
    move-object v7, v1

    .line 65
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lq05;->CLOUD:Lq05;

    .line 69
    .line 70
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    const-wide/16 v13, 0x0

    .line 75
    .line 76
    if-eqz v8, :cond_2

    .line 77
    .line 78
    const-string v8, "getWallsTaskParams: "

    .line 79
    .line 80
    invoke-virtual {p0, v8, v6}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->g(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    if-nez v8, :cond_3

    .line 85
    .line 86
    invoke-virtual {p0, v0, v5}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->f(Ljava/lang/String;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-nez p0, :cond_3

    .line 91
    .line 92
    sget-object v8, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 93
    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v9, "getWallsTaskParams: Sync option not met: "

    .line 97
    .line 98
    invoke-direct {p0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    const/4 v11, 0x4

    .line 109
    const/4 v12, 0x0

    .line 110
    const/4 v10, 0x0

    .line 111
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    new-instance p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;

    .line 115
    .line 116
    invoke-direct {p0, v13, v14, v3, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v6}, Lji8;->t(Ljava/util/Collection;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_1

    .line 124
    .line 125
    sget-object v8, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 126
    .line 127
    const/4 v11, 0x4

    .line 128
    const/4 v12, 0x0

    .line 129
    const-string v9, "getWallsTaskParams: Can\'t proceed as syncing isn\'t possible and destination is only cloud"

    .line 130
    .line 131
    const/4 v10, 0x0

    .line 132
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-static {v0, p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 141
    .line 142
    .line 143
    :cond_0
    :goto_0
    move-object p0, v2

    .line 144
    goto :goto_2

    .line 145
    :cond_1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    sget-object v8, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 149
    .line 150
    const/4 v11, 0x4

    .line 151
    const/4 v12, 0x0

    .line 152
    const-string v9, "getWallsTaskParams: Removed cloud location"

    .line 153
    .line 154
    const/4 v10, 0x0

    .line 155
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    move-object v8, p0

    .line 159
    goto :goto_1

    .line 160
    :cond_2
    move-object v8, v2

    .line 161
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-eqz p0, :cond_4

    .line 166
    .line 167
    if-eqz v8, :cond_0

    .line 168
    .line 169
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {v0, v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_4
    if-nez v8, :cond_5

    .line 179
    .line 180
    new-instance v8, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;

    .line 181
    .line 182
    invoke-direct {v8, v13, v14, v3, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 183
    .line 184
    .line 185
    :cond_5
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 186
    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 191
    .line 192
    .line 193
    new-instance p0, Laz7;

    .line 194
    .line 195
    invoke-direct {p0, v4, v6}, Laz7;-><init>(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 196
    .line 197
    .line 198
    :goto_2
    if-nez p0, :cond_6

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_6
    new-instance v2, Lwp8;

    .line 202
    .line 203
    invoke-direct {v2, p0}, Lwp8;-><init>(Laz7;)V

    .line 204
    .line 205
    .line 206
    :goto_3
    return-object v2

    .line 207
    :pswitch_0
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 208
    .line 209
    check-cast v5, Lt22;

    .line 210
    .line 211
    check-cast v4, Ljava/lang/Exception;

    .line 212
    .line 213
    invoke-static {p0, v5, v4}, Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;->$r8$lambda$82BNbyG1HnSoswvjbSpH7RSPSSc(Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)Lbe8;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    return-object p0

    .line 218
    :pswitch_1
    check-cast p0, Ljava/lang/String;

    .line 219
    .line 220
    check-cast v5, Liu;

    .line 221
    .line 222
    check-cast v4, Ljava/lang/String;

    .line 223
    .line 224
    if-nez p0, :cond_7

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    invoke-static {p0, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_8

    .line 235
    .line 236
    const-string v0, "Password hash changed, Backup: "

    .line 237
    .line 238
    const-string v1, ", Current: "

    .line 239
    .line 240
    invoke-static {v0, v4, v1, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 245
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v1, ": "

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    const/4 v10, 0x4

    .line 267
    const/4 v11, 0x0

    .line 268
    const-string v7, "AppDataChangeChecker"

    .line 269
    .line 270
    const/4 v9, 0x0

    .line 271
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_8
    :goto_4
    const/4 v3, 0x0

    .line 276
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    return-object p0

    .line 281
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 282
    .line 283
    check-cast v5, Ljava/util/ArrayList;

    .line 284
    .line 285
    check-cast v4, Lty7;

    .line 286
    .line 287
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->l0()Lr20;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-virtual {p0, v5, v4}, Lr20;->k(Ljava/util/ArrayList;Lty7;)V

    .line 292
    .line 293
    .line 294
    return-object v1

    .line 295
    :pswitch_3
    check-cast p0, Lw45;

    .line 296
    .line 297
    check-cast v4, Lnh;

    .line 298
    .line 299
    iget-object v0, v4, Lnh;->b:Ljava/lang/Object;

    .line 300
    .line 301
    move-object v4, v0

    .line 302
    check-cast v4, Lzm;

    .line 303
    .line 304
    invoke-static {p0}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 305
    .line 306
    .line 307
    instance-of p0, v5, Lbn6;

    .line 308
    .line 309
    if-nez p0, :cond_a

    .line 310
    .line 311
    move-object p0, v5

    .line 312
    check-cast p0, Lrh;

    .line 313
    .line 314
    iget-object v0, p0, Lrh;->a:Lq63;

    .line 315
    .line 316
    invoke-static {v0}, Lf93;->a(Lq63;)Landroid/net/Uri;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    new-instance v7, Landroid/content/Intent;

    .line 321
    .line 322
    const-string v8, "android.intent.action.SEND"

    .line 323
    .line 324
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const-string v8, "android.intent.extra.STREAM"

    .line 328
    .line 329
    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    iget-object p0, p0, Lrh;->b:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v7, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    invoke-virtual {v7, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    invoke-virtual {v0}, Lq63;->p()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {v7, v0, v6}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 356
    .line 357
    .line 358
    const-string v0, "application/octet-stream"

    .line 359
    .line 360
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result p0

    .line 364
    if-eqz p0, :cond_9

    .line 365
    .line 366
    const p0, 0x7f1304f6

    .line 367
    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_9
    const p0, 0x7f1304f5

    .line 371
    .line 372
    .line 373
    :goto_6
    invoke-virtual {v4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    invoke-static {v3, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    :try_start_0
    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .line 389
    .line 390
    goto :goto_7

    .line 391
    :catch_0
    move-exception v0

    .line 392
    move-object p0, v0

    .line 393
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p0

    .line 408
    sget-object v3, Lzn4;->a:Lzn4;

    .line 409
    .line 410
    invoke-static {v0, p0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    :cond_a
    :goto_7
    invoke-static {v5}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 414
    .line 415
    .line 416
    move-result-object p0

    .line 417
    if-eqz p0, :cond_f

    .line 418
    .line 419
    const v0, 0x7f130222

    .line 420
    .line 421
    .line 422
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p0

    .line 430
    const v3, 0x7f1303e6

    .line 431
    .line 432
    .line 433
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    new-instance v6, Lhv1;

    .line 438
    .line 439
    const v7, 0x7f140160

    .line 440
    .line 441
    .line 442
    invoke-direct {v6, v4, v7}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 443
    .line 444
    .line 445
    new-instance v8, Ls35;

    .line 446
    .line 447
    invoke-direct {v8, v4, v7, v6, v2}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 448
    .line 449
    .line 450
    iget-object v6, v8, Lva;->b:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast v6, Lra;

    .line 453
    .line 454
    if-eqz v0, :cond_c

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 457
    .line 458
    .line 459
    move-result v7

    .line 460
    if-nez v7, :cond_b

    .line 461
    .line 462
    goto :goto_8

    .line 463
    :cond_b
    iput-object v0, v6, Lra;->d:Ljava/lang/CharSequence;

    .line 464
    .line 465
    :cond_c
    :goto_8
    iput-object p0, v6, Lra;->f:Ljava/lang/CharSequence;

    .line 466
    .line 467
    if-eqz v5, :cond_d

    .line 468
    .line 469
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 470
    .line 471
    .line 472
    move-result p0

    .line 473
    if-nez p0, :cond_e

    .line 474
    .line 475
    :cond_d
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    :cond_e
    invoke-virtual {v8, v5, v2}, Lv75;->t(Ljava/lang/String;Lkb1;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v8}, Ls35;->m()Lwa;

    .line 486
    .line 487
    .line 488
    :cond_f
    return-object v1

    .line 489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
