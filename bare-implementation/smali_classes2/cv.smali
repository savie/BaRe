.class public final synthetic Lcv;
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

    .line 1
    iput p1, p0, Lcv;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcv;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcv;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lcv;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    iget-object v5, p0, Lcv;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lcv;->b:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;

    .line 16
    .line 17
    check-cast v5, Ljava/util/List;

    .line 18
    .line 19
    sget v0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->S:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object v0, Lzn4;->a:Lzn4;

    .line 26
    .line 27
    new-instance v0, Lt72;

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    invoke-direct {v0, p0, v5, v2, v1}, Lt72;-><init>(Lqo0;Ljava/lang/Object;Ljv1;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 34
    .line 35
    .line 36
    return-object v4

    .line 37
    :pswitch_0
    check-cast p0, Landroid/content/Context;

    .line 38
    .line 39
    check-cast v5, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 50
    .line 51
    .line 52
    return-object v4

    .line 53
    :pswitch_1
    check-cast p0, Ldv;

    .line 54
    .line 55
    check-cast v5, Lik6;

    .line 56
    .line 57
    iget-object v0, p0, Ldv;->a:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v1, v5, Lik6;->d:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Lhk6;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v3, "notifyResult: "

    .line 66
    .line 67
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Ldv;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lgk6;

    .line 97
    .line 98
    invoke-interface {v0, v5}, Lgk6;->a(Lik6;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    return-object v4

    .line 103
    :pswitch_2
    check-cast p0, Lje5;

    .line 104
    .line 105
    check-cast v5, Lvd5;

    .line 106
    .line 107
    invoke-virtual {p0}, Lje5;->U()Lme5;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    sget-object v0, Lzn4;->a:Lzn4;

    .line 118
    .line 119
    new-instance v0, Lt72;

    .line 120
    .line 121
    const/4 v1, 0x2

    .line 122
    invoke-direct {v0, p0, v5, v2, v1}, Lt72;-><init>(Lqo0;Ljava/lang/Object;Ljv1;I)V

    .line 123
    .line 124
    .line 125
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 126
    .line 127
    .line 128
    return-object v4

    .line 129
    :pswitch_3
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 130
    .line 131
    check-cast v5, Lt22;

    .line 132
    .line 133
    invoke-static {p0, v5}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->$r8$lambda$egT11jQPPywk25a7Okkh__7Vf4U(Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :pswitch_4
    check-cast p0, Lzo3;

    .line 139
    .line 140
    check-cast v5, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 141
    .line 142
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 143
    .line 144
    iget-object v7, p0, La55;->b:Ljava/lang/String;

    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v8, "addNewItem: "

    .line 149
    .line 150
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    const/4 v10, 0x4

    .line 161
    const/4 v11, 0x0

    .line 162
    const/4 v9, 0x0

    .line 163
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->isValid()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_1

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_1
    move-object v5, v2

    .line 174
    :goto_1
    if-nez v5, :cond_2

    .line 175
    .line 176
    :goto_2
    move-object v2, v4

    .line 177
    goto :goto_3

    .line 178
    :cond_2
    invoke-static {v5, v3, v1}, Lorg/swiftapps/swiftbackup/folders/data/a;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;ZZ)Lkj3;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lkj3;->h()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-eqz v1, :cond_3

    .line 187
    .line 188
    sget-object v0, Lpz4;->g:Lpz4;

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ldv;->l(Ljl0;)V

    .line 191
    .line 192
    .line 193
    iget-object p0, p0, Lzo3;->e:Lix6;

    .line 194
    .line 195
    sget-object v0, Lto3;->LOCAL:Lto3;

    .line 196
    .line 197
    invoke-virtual {p0, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_3
    invoke-virtual {v0}, Lkj3;->d()Lq63;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    const-string v0, "Failed to save new metadata at "

    .line 206
    .line 207
    invoke-static {p0, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :goto_3
    return-object v2

    .line 215
    :pswitch_5
    check-cast p0, Lq63;

    .line 216
    .line 217
    check-cast v5, Lzn7;

    .line 218
    .line 219
    invoke-virtual {p0}, Lq63;->j()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_5

    .line 224
    .line 225
    invoke-virtual {p0}, Lq63;->x()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_4

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5}, Lzn7;->n()Lq63;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5}, Lzn7;->n()Lq63;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    const-string v4, "Android"

    .line 249
    .line 250
    invoke-virtual {v2, v4}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5}, Lzn7;->n()Lq63;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    const-string v4, "SwiftBackup"

    .line 262
    .line 263
    invoke-virtual {v2, v4}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-nez v0, :cond_5

    .line 275
    .line 276
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_5

    .line 289
    .line 290
    invoke-virtual {p0}, Lq63;->b()Z

    .line 291
    .line 292
    .line 293
    move-result p0

    .line 294
    if-nez p0, :cond_5

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_5
    :goto_4
    move v1, v3

    .line 298
    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    return-object p0

    .line 303
    :pswitch_6
    check-cast p0, Lo23;

    .line 304
    .line 305
    check-cast v5, Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {p0, v3}, Lo23;->z(Z)Ld23;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {p0, v0, v5}, Lo23;->B(Ld23;Ljava/lang/String;)[Lg23;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-static {v0}, Lxh8;->G([Lg23;)Ljava/util/ArrayList;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    const-wide/16 v2, 0x0

    .line 324
    .line 325
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    if-eqz v4, :cond_8

    .line 330
    .line 331
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    check-cast v4, Lg23;

    .line 336
    .line 337
    iget v6, v4, Lg23;->a:I

    .line 338
    .line 339
    if-ne v6, v1, :cond_7

    .line 340
    .line 341
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    iget-object v4, v4, Lg23;->d:Ljava/lang/String;

    .line 346
    .line 347
    if-nez v6, :cond_6

    .line 348
    .line 349
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    goto :goto_7

    .line 353
    :cond_6
    const-string v6, "/"

    .line 354
    .line 355
    invoke-static {v5, v6, v4}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    :goto_7
    invoke-virtual {p0, v4}, Lo23;->y(Ljava/lang/String;)J

    .line 360
    .line 361
    .line 362
    move-result-wide v6

    .line 363
    goto :goto_8

    .line 364
    :cond_7
    iget-wide v6, v4, Lg23;->b:J

    .line 365
    .line 366
    :goto_8
    add-long/2addr v2, v6

    .line 367
    goto :goto_6

    .line 368
    :cond_8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    return-object p0

    .line 373
    :pswitch_7
    check-cast p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 374
    .line 375
    check-cast v5, Lh80;

    .line 376
    .line 377
    sget v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 378
    .line 379
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    invoke-virtual {p0, v5}, Lmk2;->j(Lh80;)V

    .line 384
    .line 385
    .line 386
    return-object v4

    .line 387
    :pswitch_8
    check-cast p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 388
    .line 389
    check-cast v5, Lk12;

    .line 390
    .line 391
    invoke-static {p0, v5}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->$r8$lambda$OS0365DccPc0kfp3Wy5TuxWjQM0(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;Lk12;)Lbe8;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    return-object p0

    .line 396
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 397
    .line 398
    check-cast v5, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 399
    .line 400
    sget v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 401
    .line 402
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    invoke-virtual {p0, v5, v3}, Lqq1;->l(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)V

    .line 407
    .line 408
    .line 409
    return-object v4

    .line 410
    :pswitch_a
    check-cast p0, Luj1;

    .line 411
    .line 412
    check-cast v5, Ljava/lang/String;

    .line 413
    .line 414
    iget-object p0, p0, Luj1;->c:Lng1;

    .line 415
    .line 416
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    iget-object v0, p0, La55;->b:Ljava/lang/String;

    .line 420
    .line 421
    const-string v1, "deleteBackupTag"

    .line 422
    .line 423
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    sget-object v0, Lzn4;->a:Lzn4;

    .line 427
    .line 428
    new-instance v0, Llg1;

    .line 429
    .line 430
    invoke-direct {v0, p0, v5, v2}, Llg1;-><init>(Lng1;Ljava/lang/String;Ljv1;)V

    .line 431
    .line 432
    .line 433
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 434
    .line 435
    .line 436
    return-object v4

    .line 437
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 438
    .line 439
    check-cast v5, Ldf1;

    .line 440
    .line 441
    sget v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 442
    .line 443
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-nez v0, :cond_9

    .line 448
    .line 449
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-nez v0, :cond_9

    .line 454
    .line 455
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->V()Lhf1;

    .line 456
    .line 457
    .line 458
    move-result-object p0

    .line 459
    check-cast v5, Lze1;

    .line 460
    .line 461
    iget-boolean v0, v5, Lze1;->a:Z

    .line 462
    .line 463
    invoke-virtual {p0, v0}, Lhf1;->o(Z)V

    .line 464
    .line 465
    .line 466
    :cond_9
    return-object v4

    .line 467
    :pswitch_c
    check-cast p0, Lrs0;

    .line 468
    .line 469
    check-cast v5, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 470
    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 472
    .line 473
    .line 474
    move-result-wide v1

    .line 475
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 476
    .line 477
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    const v6, 0x7f1301f8

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    invoke-virtual {p0, v0}, Lqo0;->i(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    :try_start_0
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    new-instance v6, Loy7;

    .line 499
    .line 500
    invoke-static {}, Liu;->getEntries()Ljx2;

    .line 501
    .line 502
    .line 503
    move-result-object v7

    .line 504
    invoke-static {}, Lq05;->getEntries()Ljx2;

    .line 505
    .line 506
    .line 507
    move-result-object v8

    .line 508
    new-instance v9, Lly7;

    .line 509
    .line 510
    invoke-direct {v9, v3, v3}, Lly7;-><init>(ZZ)V

    .line 511
    .line 512
    .line 513
    invoke-direct {v6, v7, v8, v9}, Loy7;-><init>(Ljava/util/List;Ljava/util/List;Lny7;)V

    .line 514
    .line 515
    .line 516
    invoke-static {v0, v6}, Lik;->a(Ljava/lang/String;Loy7;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .line 518
    .line 519
    goto :goto_9

    .line 520
    :catch_0
    move-exception v0

    .line 521
    move-object v9, v0

    .line 522
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 523
    .line 524
    iget-object v7, p0, La55;->b:Ljava/lang/String;

    .line 525
    .line 526
    const/16 v11, 0x8

    .line 527
    .line 528
    const/4 v12, 0x0

    .line 529
    const-string v8, "deleteBackups"

    .line 530
    .line 531
    const/4 v10, 0x0

    .line 532
    invoke-static/range {v6 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    :goto_9
    const-wide/16 v6, 0x1f4

    .line 536
    .line 537
    invoke-static {v1, v2, v6, v7}, Lorg/swiftapps/swiftbackup/common/Const;->m(JJ)J

    .line 538
    .line 539
    .line 540
    move-result-wide v0

    .line 541
    invoke-static {v0, v1}, Lai8;->o(J)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {p0}, Lqo0;->f()V

    .line 545
    .line 546
    .line 547
    sget-object p0, Lg00;->a:Lg00;

    .line 548
    .line 549
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object p0

    .line 553
    invoke-static {p0}, Lg00;->F(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    return-object v4

    .line 557
    :pswitch_d
    check-cast p0, Lil0;

    .line 558
    .line 559
    check-cast v5, [Ljava/lang/Class;

    .line 560
    .line 561
    invoke-static {p0}, Lio4;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    array-length v1, v5

    .line 566
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    check-cast v1, [Ljava/lang/Class;

    .line 571
    .line 572
    invoke-virtual {p0, v0, v1}, Lil0;->x(Landroid/view/ViewGroup;[Ljava/lang/Class;)V

    .line 573
    .line 574
    .line 575
    return-object v4

    .line 576
    :pswitch_e
    check-cast p0, Lji;

    .line 577
    .line 578
    check-cast v5, Ldv;

    .line 579
    .line 580
    sget-object v0, Lg00;->a:Lg00;

    .line 581
    .line 582
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    invoke-static {v0, v1}, Lg00;->A(Lg00;Ljava/lang/String;)Z

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    if-nez v0, :cond_a

    .line 591
    .line 592
    goto :goto_a

    .line 593
    :cond_a
    invoke-virtual {v5, p0}, Ldv;->l(Ljl0;)V

    .line 594
    .line 595
    .line 596
    :goto_a
    return-object v4

    .line 597
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
