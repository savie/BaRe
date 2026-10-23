.class public final synthetic Loj;
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
    iput p1, p0, Loj;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Loj;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Loj;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Loj;->d:Ljava/lang/Object;

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
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Loj;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Loj;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iget-object v2, v0, Loj;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lt22;

    .line 17
    .line 18
    iget-object v0, v0, Loj;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lbw3;

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->$r8$lambda$oiqC25vkrJEjP1b7huHgFi11C9A(Ljava/util/concurrent/Executor;Lt22;Lbw3;)Lbe8;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :pswitch_0
    iget-object v1, v0, Loj;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lfs4;

    .line 30
    .line 31
    iget-object v2, v0, Loj;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Lqo0;

    .line 34
    .line 35
    iget-object v0, v0, Loj;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/lang/CharSequence;

    .line 38
    .line 39
    sget-object v4, Lbe8;->a:Lbe8;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/fragment/app/o;->isDetached()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lfs4;->q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v2}, Lqo0;->f()V

    .line 55
    .line 56
    .line 57
    new-instance v2, Ltk0;

    .line 58
    .line 59
    invoke-virtual {v1}, Lfs4;->q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v5, v0}, Ltk0;-><init>(Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lfs4;->q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v0, v3, v3}, Lol1;->F(Lk28;ZZ)V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    return-object v4

    .line 80
    :pswitch_1
    iget-object v1, v0, Loj;->b:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v1, Lqf4;

    .line 83
    .line 84
    iget-object v2, v0, Loj;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v2, Llh6;

    .line 87
    .line 88
    iget-object v0, v0, Loj;->d:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Ljava/lang/Exception;

    .line 91
    .line 92
    iget-object v2, v2, Llh6;->a:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Lzn7;

    .line 95
    .line 96
    monitor-enter v1

    .line 97
    :try_start_0
    iget-boolean v3, v1, Lqf4;->h:Z

    .line 98
    .line 99
    if-nez v3, :cond_3

    .line 100
    .line 101
    iget-object v3, v1, Lqf4;->g:Lpf4;

    .line 102
    .line 103
    sget-object v4, Lpf4;->RUNNING:Lpf4;

    .line 104
    .line 105
    if-eq v3, v4, :cond_2

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    sget-object v3, Lpf4;->FAILED:Lpf4;

    .line 109
    .line 110
    iput-object v3, v1, Lqf4;->g:Lpf4;

    .line 111
    .line 112
    iget-object v4, v1, Lqf4;->e:Ld7;

    .line 113
    .line 114
    invoke-virtual {v4, v3}, Ld7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    iget-object v3, v1, Lqf4;->f:Loh1;

    .line 118
    .line 119
    new-instance v4, Lof4;

    .line 120
    .line 121
    invoke-direct {v4, v2, v0}, Lof4;-><init>(Lzn7;Ljava/lang/Exception;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v4}, Loh1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    monitor-exit v1

    .line 128
    goto :goto_2

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    goto :goto_3

    .line 131
    :cond_3
    :goto_1
    monitor-exit v1

    .line 132
    :goto_2
    sget-object v0, Lbe8;->a:Lbe8;

    .line 133
    .line 134
    return-object v0

    .line 135
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    throw v0

    .line 137
    :pswitch_2
    iget-object v1, v0, Loj;->b:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v1, Leo3;

    .line 140
    .line 141
    iget-object v2, v0, Loj;->c:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v2, Lty7;

    .line 144
    .line 145
    iget-object v0, v0, Loj;->d:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v0, Ldm3;

    .line 148
    .line 149
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    new-instance v3, Lqp3;

    .line 154
    .line 155
    new-instance v4, Lpp3;

    .line 156
    .line 157
    invoke-direct {v4}, Lpp3;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-direct {v3, v1, v2, v4}, Lqp3;-><init>(Ljava/util/List;Lty7;Lpp3;)V

    .line 161
    .line 162
    .line 163
    const-class v1, Lqp3;

    .line 164
    .line 165
    invoke-virtual {v0, v1, v3}, Lqo0;->c(Ljava/lang/Class;Lpw6;)V

    .line 166
    .line 167
    .line 168
    sget-object v0, Lbe8;->a:Lbe8;

    .line 169
    .line 170
    return-object v0

    .line 171
    :pswitch_3
    iget-object v1, v0, Loj;->b:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v1, Lgm;

    .line 174
    .line 175
    iget-object v4, v0, Loj;->c:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v4, Ljava/lang/String;

    .line 178
    .line 179
    iget-object v0, v0, Loj;->d:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v0, Lmk2;

    .line 182
    .line 183
    const-string v5, " with backup id: "

    .line 184
    .line 185
    const-string v6, "app"

    .line 186
    .line 187
    iget-object v7, v1, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 188
    .line 189
    iget-object v1, v1, Lgm;->a:Lhk;

    .line 190
    .line 191
    if-eqz v4, :cond_5

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    if-nez v8, :cond_4

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_4
    const/4 v3, 0x0

    .line 201
    :cond_5
    :goto_4
    if-nez v3, :cond_7

    .line 202
    .line 203
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 204
    .line 205
    iget-object v9, v0, La55;->b:Ljava/lang/String;

    .line 206
    .line 207
    iget-object v10, v0, Lmk2;->e:Lji;

    .line 208
    .line 209
    if-eqz v10, :cond_6

    .line 210
    .line 211
    invoke-virtual {v10}, Lji;->asString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    iget-object v11, v1, Lhk;->a:Ljava/lang/String;

    .line 216
    .line 217
    const-string v12, "Adding note for local backup for "

    .line 218
    .line 219
    invoke-static {v12, v10, v5, v11}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    const/4 v12, 0x4

    .line 224
    const/4 v13, 0x0

    .line 225
    const/4 v11, 0x0

    .line 226
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    iget-object v9, v0, La55;->b:Ljava/lang/String;

    .line 230
    .line 231
    const-string v5, "Note: \'"

    .line 232
    .line 233
    const-string v10, "\'"

    .line 234
    .line 235
    invoke-static {v5, v4, v10}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_6
    invoke-static {v6}, Lpe4;->F(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v2

    .line 247
    :cond_7
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 248
    .line 249
    iget-object v15, v0, La55;->b:Ljava/lang/String;

    .line 250
    .line 251
    iget-object v8, v0, Lmk2;->e:Lji;

    .line 252
    .line 253
    if-eqz v8, :cond_a

    .line 254
    .line 255
    invoke-virtual {v8}, Lji;->asString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    iget-object v9, v1, Lhk;->a:Ljava/lang/String;

    .line 260
    .line 261
    const-string v10, "Removing note from local backup for "

    .line 262
    .line 263
    invoke-static {v10, v8, v5, v9}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v16

    .line 267
    const/16 v18, 0x4

    .line 268
    .line 269
    const/16 v19, 0x0

    .line 270
    .line 271
    const/16 v17, 0x0

    .line 272
    .line 273
    invoke-static/range {v14 .. v19}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    :goto_5
    invoke-virtual {v7, v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->updateNote(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    sget-object v4, Lcu;->a:Lcu;

    .line 280
    .line 281
    invoke-virtual {v1}, Lhk;->v()Lq63;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v4, v7, v1}, Lcu;->f(Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;Lq63;)V

    .line 286
    .line 287
    .line 288
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 289
    .line 290
    iget-object v9, v0, La55;->b:Ljava/lang/String;

    .line 291
    .line 292
    if-nez v3, :cond_8

    .line 293
    .line 294
    const-string v1, "Adding"

    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_8
    const-string v1, "Removing"

    .line 298
    .line 299
    :goto_6
    const-string v3, " note successful"

    .line 300
    .line 301
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v10

    .line 305
    const/4 v12, 0x4

    .line 306
    const/4 v13, 0x0

    .line 307
    const/4 v11, 0x0

    .line 308
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    sget-object v1, Lg00;->a:Lg00;

    .line 312
    .line 313
    iget-object v0, v0, Lmk2;->e:Lji;

    .line 314
    .line 315
    if-eqz v0, :cond_9

    .line 316
    .line 317
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-static {v0}, Lg00;->F(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    sget-object v0, Lbe8;->a:Lbe8;

    .line 325
    .line 326
    return-object v0

    .line 327
    :cond_9
    invoke-static {v6}, Lpe4;->F(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v2

    .line 331
    :cond_a
    invoke-static {v6}, Lpe4;->F(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    throw v2

    .line 335
    :pswitch_4
    iget-object v1, v0, Loj;->b:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v1, Liz4;

    .line 338
    .line 339
    iget-object v3, v0, Loj;->c:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v3, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 342
    .line 343
    iget-object v0, v0, Loj;->d:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 346
    .line 347
    sget v4, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 348
    .line 349
    if-eqz v1, :cond_19

    .line 350
    .line 351
    invoke-virtual {v1}, Liz4;->getBackup()Lgm;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iget-object v0, v0, Lgm;->a:Lhk;

    .line 356
    .line 357
    invoke-virtual {v1}, Liz4;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    if-nez v4, :cond_b

    .line 362
    .line 363
    invoke-virtual {v1}, Liz4;->getBackup()Lgm;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    iget-object v4, v4, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 368
    .line 369
    :cond_b
    invoke-virtual {v1}, Liz4;->getDateBackup()J

    .line 370
    .line 371
    .line 372
    move-result-wide v5

    .line 373
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    invoke-virtual {v1}, Liz4;->getDateUpdated()Ljava/lang/Long;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    invoke-virtual {v1}, Liz4;->getBackupTag()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v10

    .line 385
    new-instance v5, Ld65;

    .line 386
    .line 387
    invoke-direct {v5}, Ld65;-><init>()V

    .line 388
    .line 389
    .line 390
    sget-object v6, Lhk0;->Apk:Lhk0;

    .line 391
    .line 392
    invoke-virtual {v1}, Liz4;->getApkSize()J

    .line 393
    .line 394
    .line 395
    move-result-wide v11

    .line 396
    invoke-static {v5, v6, v11, v12}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Z(Ld65;Lhk0;J)V

    .line 397
    .line 398
    .line 399
    sget-object v6, Lhk0;->SplitApks:Lhk0;

    .line 400
    .line 401
    invoke-virtual {v1}, Liz4;->getSplitsApkSize()J

    .line 402
    .line 403
    .line 404
    move-result-wide v11

    .line 405
    invoke-static {v5, v6, v11, v12}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Z(Ld65;Lhk0;J)V

    .line 406
    .line 407
    .line 408
    sget-object v7, Lhk0;->SharedLibs:Lhk0;

    .line 409
    .line 410
    invoke-virtual {v1}, Liz4;->getSharedLibsSize()J

    .line 411
    .line 412
    .line 413
    move-result-wide v11

    .line 414
    invoke-static {v5, v7, v11, v12}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Z(Ld65;Lhk0;J)V

    .line 415
    .line 416
    .line 417
    sget-object v11, Lhk0;->Data:Lhk0;

    .line 418
    .line 419
    invoke-virtual {v1}, Liz4;->getDataSize()J

    .line 420
    .line 421
    .line 422
    move-result-wide v12

    .line 423
    invoke-static {v5, v11, v12, v13}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Z(Ld65;Lhk0;J)V

    .line 424
    .line 425
    .line 426
    sget-object v12, Lhk0;->ExtData:Lhk0;

    .line 427
    .line 428
    invoke-virtual {v1}, Liz4;->getExtDataSize()J

    .line 429
    .line 430
    .line 431
    move-result-wide v13

    .line 432
    invoke-static {v5, v12, v13, v14}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Z(Ld65;Lhk0;J)V

    .line 433
    .line 434
    .line 435
    sget-object v13, Lhk0;->Media:Lhk0;

    .line 436
    .line 437
    invoke-virtual {v1}, Liz4;->getMediaSize()J

    .line 438
    .line 439
    .line 440
    move-result-wide v14

    .line 441
    invoke-static {v5, v13, v14, v15}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Z(Ld65;Lhk0;J)V

    .line 442
    .line 443
    .line 444
    sget-object v14, Lhk0;->Expansion:Lhk0;

    .line 445
    .line 446
    move-object/from16 v16, v3

    .line 447
    .line 448
    invoke-virtual {v1}, Liz4;->getExpansionSize()J

    .line 449
    .line 450
    .line 451
    move-result-wide v2

    .line 452
    invoke-static {v5, v14, v2, v3}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Z(Ld65;Lhk0;J)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0}, Lhk;->B()Lq63;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {v1}, Lq63;->j()Z

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    if-eqz v1, :cond_c

    .line 464
    .line 465
    sget-object v1, Lhk0;->SpecialData:Lhk0;

    .line 466
    .line 467
    invoke-virtual {v0}, Lhk;->B()Lq63;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-virtual {v2}, Lq63;->A()J

    .line 472
    .line 473
    .line 474
    move-result-wide v2

    .line 475
    invoke-static {v5, v1, v2, v3}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Z(Ld65;Lhk0;J)V

    .line 476
    .line 477
    .line 478
    :cond_c
    invoke-virtual {v5}, Ld65;->b()Ld65;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    new-instance v2, Ld65;

    .line 483
    .line 484
    invoke-direct {v2}, Ld65;-><init>()V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0}, Lhk;->C()Lq63;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    new-instance v5, Lpw5;

    .line 492
    .line 493
    invoke-direct {v5, v6, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0}, Lhk;->z()Lq63;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    new-instance v6, Lpw5;

    .line 501
    .line 502
    invoke-direct {v6, v7, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v0}, Lhk;->g()Lq63;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    new-instance v7, Lpw5;

    .line 510
    .line 511
    invoke-direct {v7, v11, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0}, Lhk;->n()Lq63;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    new-instance v11, Lpw5;

    .line 519
    .line 520
    invoke-direct {v11, v12, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0}, Lhk;->q()Lq63;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    new-instance v12, Lpw5;

    .line 528
    .line 529
    invoke-direct {v12, v13, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0}, Lhk;->m()Lq63;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    new-instance v3, Lpw5;

    .line 537
    .line 538
    invoke-direct {v3, v14, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    move-object/from16 v22, v3

    .line 542
    .line 543
    move-object/from16 v17, v5

    .line 544
    .line 545
    move-object/from16 v18, v6

    .line 546
    .line 547
    move-object/from16 v19, v7

    .line 548
    .line 549
    move-object/from16 v20, v11

    .line 550
    .line 551
    move-object/from16 v21, v12

    .line 552
    .line 553
    filled-new-array/range {v17 .. v22}, [Lpw5;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    :cond_d
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    if-eqz v0, :cond_11

    .line 570
    .line 571
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    check-cast v0, Lpw5;

    .line 576
    .line 577
    iget-object v5, v0, Lpw5;->a:Ljava/lang/Object;

    .line 578
    .line 579
    check-cast v5, Lhk0;

    .line 580
    .line 581
    iget-object v0, v0, Lpw5;->b:Ljava/lang/Object;

    .line 582
    .line 583
    check-cast v0, Lq63;

    .line 584
    .line 585
    :try_start_2
    invoke-virtual {v0}, Lq63;->j()Z

    .line 586
    .line 587
    .line 588
    move-result v6

    .line 589
    if-nez v6, :cond_e

    .line 590
    .line 591
    :goto_8
    const/4 v6, 0x0

    .line 592
    goto :goto_9

    .line 593
    :cond_e
    sget-object v6, Lmz6;->a:Ljava/util/HashSet;

    .line 594
    .line 595
    invoke-static {v0}, Lmz6;->m(Lq63;)Z

    .line 596
    .line 597
    .line 598
    move-result v6

    .line 599
    if-nez v6, :cond_f

    .line 600
    .line 601
    goto :goto_8

    .line 602
    :cond_f
    invoke-static {v0}, Lmz6;->t(Lq63;)Lky6;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    iget-object v0, v0, Lky6;->i:Ljava/util/List;

    .line 607
    .line 608
    new-instance v6, Lfk0;

    .line 609
    .line 610
    sget-object v7, Ljy6;->c:Ljy6;

    .line 611
    .line 612
    invoke-static {v0, v7}, Liz1;->a(Ljava/util/List;Ljj5;)Ljava/lang/Long;

    .line 613
    .line 614
    .line 615
    move-result-object v7

    .line 616
    sget-object v11, Liy6;->c:Liy6;

    .line 617
    .line 618
    invoke-static {v0, v11}, Liz1;->a(Ljava/util/List;Ljj5;)Ljava/lang/Long;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    invoke-direct {v6, v7, v0}, Lfk0;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 623
    .line 624
    .line 625
    goto :goto_9

    .line 626
    :catchall_1
    move-exception v0

    .line 627
    new-instance v6, Lbn6;

    .line 628
    .line 629
    invoke-direct {v6, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 630
    .line 631
    .line 632
    :goto_9
    instance-of v0, v6, Lbn6;

    .line 633
    .line 634
    if-eqz v0, :cond_10

    .line 635
    .line 636
    const/4 v6, 0x0

    .line 637
    :cond_10
    check-cast v6, Lfk0;

    .line 638
    .line 639
    if-eqz v6, :cond_d

    .line 640
    .line 641
    invoke-virtual {v2, v5, v6}, Ld65;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    goto :goto_7

    .line 645
    :cond_11
    invoke-virtual {v2}, Ld65;->b()Ld65;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isProtectedBackup()Z

    .line 653
    .line 654
    .line 655
    move-result v11

    .line 656
    invoke-static {}, Lnc8;->p()Lww4;

    .line 657
    .line 658
    .line 659
    move-result-object v17

    .line 660
    sget-object v2, Lhk0;->Apk:Lhk0;

    .line 661
    .line 662
    invoke-virtual {v1, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    check-cast v3, Ljava/lang/Long;

    .line 667
    .line 668
    if-nez v3, :cond_12

    .line 669
    .line 670
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getApkBackupSize()Ljava/lang/Long;

    .line 671
    .line 672
    .line 673
    move-result-object v3

    .line 674
    :cond_12
    move-object/from16 v19, v3

    .line 675
    .line 676
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getVersionName()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v23

    .line 680
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getVersionCode()Ljava/lang/Long;

    .line 681
    .line 682
    .line 683
    move-result-object v24

    .line 684
    invoke-virtual {v0, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v3

    .line 688
    move-object/from16 v25, v3

    .line 689
    .line 690
    check-cast v25, Lfk0;

    .line 691
    .line 692
    const/16 v26, 0x18

    .line 693
    .line 694
    const/16 v20, 0x0

    .line 695
    .line 696
    const/16 v21, 0x0

    .line 697
    .line 698
    const/16 v22, 0x0

    .line 699
    .line 700
    move-object/from16 v18, v2

    .line 701
    .line 702
    invoke-static/range {v17 .. v26}, Llk;->s(Lww4;Lhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lfk0;I)V

    .line 703
    .line 704
    .line 705
    sget-object v2, Lhk0;->SplitApks:Lhk0;

    .line 706
    .line 707
    invoke-virtual {v1, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v3

    .line 711
    check-cast v3, Ljava/lang/Long;

    .line 712
    .line 713
    if-nez v3, :cond_13

    .line 714
    .line 715
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getSplitsBackupSize()Ljava/lang/Long;

    .line 716
    .line 717
    .line 718
    move-result-object v3

    .line 719
    :cond_13
    move-object/from16 v19, v3

    .line 720
    .line 721
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getSplitsSizeMirrored()Ljava/lang/Long;

    .line 722
    .line 723
    .line 724
    move-result-object v20

    .line 725
    invoke-virtual {v0, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    move-object/from16 v25, v3

    .line 730
    .line 731
    check-cast v25, Lfk0;

    .line 732
    .line 733
    const/16 v26, 0x78

    .line 734
    .line 735
    const/16 v21, 0x0

    .line 736
    .line 737
    const/16 v22, 0x0

    .line 738
    .line 739
    const/16 v23, 0x0

    .line 740
    .line 741
    const/16 v24, 0x0

    .line 742
    .line 743
    move-object/from16 v18, v2

    .line 744
    .line 745
    invoke-static/range {v17 .. v26}, Llk;->s(Lww4;Lhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lfk0;I)V

    .line 746
    .line 747
    .line 748
    sget-object v2, Lhk0;->SharedLibs:Lhk0;

    .line 749
    .line 750
    invoke-virtual {v1, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    check-cast v3, Ljava/lang/Long;

    .line 755
    .line 756
    if-nez v3, :cond_14

    .line 757
    .line 758
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getSharedLibsBackupSize()Ljava/lang/Long;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    :cond_14
    move-object/from16 v19, v3

    .line 763
    .line 764
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getSharedLibsSizeMirrored()Ljava/lang/Long;

    .line 765
    .line 766
    .line 767
    move-result-object v20

    .line 768
    invoke-virtual {v0, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    move-object/from16 v25, v3

    .line 773
    .line 774
    check-cast v25, Lfk0;

    .line 775
    .line 776
    const/16 v26, 0x78

    .line 777
    .line 778
    const/16 v21, 0x0

    .line 779
    .line 780
    const/16 v22, 0x0

    .line 781
    .line 782
    const/16 v23, 0x0

    .line 783
    .line 784
    const/16 v24, 0x0

    .line 785
    .line 786
    move-object/from16 v18, v2

    .line 787
    .line 788
    invoke-static/range {v17 .. v26}, Llk;->s(Lww4;Lhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lfk0;I)V

    .line 789
    .line 790
    .line 791
    sget-object v2, Lhk0;->Data:Lhk0;

    .line 792
    .line 793
    invoke-virtual {v1, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v3

    .line 797
    check-cast v3, Ljava/lang/Long;

    .line 798
    .line 799
    if-nez v3, :cond_15

    .line 800
    .line 801
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDataBackupSize()Ljava/lang/Long;

    .line 802
    .line 803
    .line 804
    move-result-object v3

    .line 805
    :cond_15
    move-object/from16 v19, v3

    .line 806
    .line 807
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDataSizeMirrored()Ljava/lang/Long;

    .line 808
    .line 809
    .line 810
    move-result-object v20

    .line 811
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isDataEncrypted()Ljava/lang/Boolean;

    .line 812
    .line 813
    .line 814
    move-result-object v3

    .line 815
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 816
    .line 817
    invoke-static {v3, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    move-result v21

    .line 821
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDataEncryptionMethod()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v22

    .line 825
    invoke-virtual {v0, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v3

    .line 829
    move-object/from16 v25, v3

    .line 830
    .line 831
    check-cast v25, Lfk0;

    .line 832
    .line 833
    const/16 v26, 0x60

    .line 834
    .line 835
    const/16 v23, 0x0

    .line 836
    .line 837
    const/16 v24, 0x0

    .line 838
    .line 839
    move-object/from16 v18, v2

    .line 840
    .line 841
    invoke-static/range {v17 .. v26}, Llk;->s(Lww4;Lhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lfk0;I)V

    .line 842
    .line 843
    .line 844
    sget-object v2, Lhk0;->ExtData:Lhk0;

    .line 845
    .line 846
    invoke-virtual {v1, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v3

    .line 850
    check-cast v3, Ljava/lang/Long;

    .line 851
    .line 852
    if-nez v3, :cond_16

    .line 853
    .line 854
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataBackupSize()Ljava/lang/Long;

    .line 855
    .line 856
    .line 857
    move-result-object v3

    .line 858
    :cond_16
    move-object/from16 v19, v3

    .line 859
    .line 860
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataSizeMirrored()Ljava/lang/Long;

    .line 861
    .line 862
    .line 863
    move-result-object v20

    .line 864
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isExtDataEncrypted()Ljava/lang/Boolean;

    .line 865
    .line 866
    .line 867
    move-result-object v3

    .line 868
    invoke-static {v3, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    move-result v21

    .line 872
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataEncryptionMethod()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v22

    .line 876
    invoke-virtual {v0, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    move-object/from16 v25, v3

    .line 881
    .line 882
    check-cast v25, Lfk0;

    .line 883
    .line 884
    const/16 v26, 0x60

    .line 885
    .line 886
    const/16 v23, 0x0

    .line 887
    .line 888
    const/16 v24, 0x0

    .line 889
    .line 890
    move-object/from16 v18, v2

    .line 891
    .line 892
    invoke-static/range {v17 .. v26}, Llk;->s(Lww4;Lhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lfk0;I)V

    .line 893
    .line 894
    .line 895
    sget-object v2, Lhk0;->Media:Lhk0;

    .line 896
    .line 897
    invoke-virtual {v1, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v3

    .line 901
    check-cast v3, Ljava/lang/Long;

    .line 902
    .line 903
    if-nez v3, :cond_17

    .line 904
    .line 905
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getMediaBackupSize()Ljava/lang/Long;

    .line 906
    .line 907
    .line 908
    move-result-object v3

    .line 909
    :cond_17
    move-object/from16 v19, v3

    .line 910
    .line 911
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getMediaSizeMirrored()Ljava/lang/Long;

    .line 912
    .line 913
    .line 914
    move-result-object v20

    .line 915
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isMediaEncrypted()Ljava/lang/Boolean;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    invoke-static {v3, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 920
    .line 921
    .line 922
    move-result v21

    .line 923
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getMediaEncryptionMethod()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v22

    .line 927
    invoke-virtual {v0, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    move-object/from16 v25, v3

    .line 932
    .line 933
    check-cast v25, Lfk0;

    .line 934
    .line 935
    const/16 v26, 0x60

    .line 936
    .line 937
    const/16 v23, 0x0

    .line 938
    .line 939
    const/16 v24, 0x0

    .line 940
    .line 941
    move-object/from16 v18, v2

    .line 942
    .line 943
    invoke-static/range {v17 .. v26}, Llk;->s(Lww4;Lhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lfk0;I)V

    .line 944
    .line 945
    .line 946
    sget-object v2, Lhk0;->Expansion:Lhk0;

    .line 947
    .line 948
    invoke-virtual {v1, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v3

    .line 952
    check-cast v3, Ljava/lang/Long;

    .line 953
    .line 954
    if-nez v3, :cond_18

    .line 955
    .line 956
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExpBackupSize()Ljava/lang/Long;

    .line 957
    .line 958
    .line 959
    move-result-object v3

    .line 960
    :cond_18
    move-object/from16 v19, v3

    .line 961
    .line 962
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExpSizeMirrored()Ljava/lang/Long;

    .line 963
    .line 964
    .line 965
    move-result-object v20

    .line 966
    invoke-virtual {v0, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    move-result-object v3

    .line 970
    move-object/from16 v25, v3

    .line 971
    .line 972
    check-cast v25, Lfk0;

    .line 973
    .line 974
    const/16 v26, 0x78

    .line 975
    .line 976
    const/16 v21, 0x0

    .line 977
    .line 978
    const/16 v22, 0x0

    .line 979
    .line 980
    const/16 v23, 0x0

    .line 981
    .line 982
    const/16 v24, 0x0

    .line 983
    .line 984
    move-object/from16 v18, v2

    .line 985
    .line 986
    invoke-static/range {v17 .. v26}, Llk;->s(Lww4;Lhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lfk0;I)V

    .line 987
    .line 988
    .line 989
    sget-object v2, Lhk0;->SpecialData:Lhk0;

    .line 990
    .line 991
    invoke-virtual {v1, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object v1

    .line 995
    move-object/from16 v19, v1

    .line 996
    .line 997
    check-cast v19, Ljava/lang/Long;

    .line 998
    .line 999
    invoke-virtual {v0, v2}, Ld65;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    move-object/from16 v25, v0

    .line 1004
    .line 1005
    check-cast v25, Lfk0;

    .line 1006
    .line 1007
    const/16 v20, 0x0

    .line 1008
    .line 1009
    move-object/from16 v18, v2

    .line 1010
    .line 1011
    invoke-static/range {v17 .. v26}, Llk;->s(Lww4;Lhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lfk0;I)V

    .line 1012
    .line 1013
    .line 1014
    invoke-static/range {v17 .. v17}, Lnc8;->h(Lww4;)Lww4;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v12

    .line 1018
    new-instance v7, Lkk;

    .line 1019
    .line 1020
    invoke-direct/range {v7 .. v12}, Lkk;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZLww4;)V

    .line 1021
    .line 1022
    .line 1023
    move-object v2, v7

    .line 1024
    goto/16 :goto_a

    .line 1025
    .line 1026
    :cond_19
    move-object/from16 v16, v3

    .line 1027
    .line 1028
    if-eqz v0, :cond_1a

    .line 1029
    .line 1030
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v1

    .line 1034
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getDateBackup()J

    .line 1035
    .line 1036
    .line 1037
    move-result-wide v2

    .line 1038
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v5

    .line 1042
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getDateBackedUpOrUpdated()J

    .line 1043
    .line 1044
    .line 1045
    move-result-wide v2

    .line 1046
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v6

    .line 1050
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupTag()Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v7

    .line 1054
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isProtectedBackup()Z

    .line 1058
    .line 1059
    .line 1060
    move-result v8

    .line 1061
    invoke-static {}, Lnc8;->p()Lww4;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v17

    .line 1065
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasApk()Z

    .line 1066
    .line 1067
    .line 1068
    move-result v18

    .line 1069
    sget-object v19, Lhk0;->Apk:Lhk0;

    .line 1070
    .line 1071
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkSize()Ljava/lang/Long;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v20

    .line 1075
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionName()Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v24

    .line 1079
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionCode()Ljava/lang/Long;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v25

    .line 1083
    const/16 v26, 0x30

    .line 1084
    .line 1085
    const/16 v21, 0x0

    .line 1086
    .line 1087
    const/16 v22, 0x0

    .line 1088
    .line 1089
    const/16 v23, 0x0

    .line 1090
    .line 1091
    invoke-static/range {v17 .. v26}, Llk;->q(Lww4;ZLhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    .line 1095
    .line 1096
    .line 1097
    move-result v18

    .line 1098
    sget-object v19, Lhk0;->SplitApks:Lhk0;

    .line 1099
    .line 1100
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSplitsSize()Ljava/lang/Long;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v20

    .line 1104
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSplitsSizeMirrored()Ljava/lang/Long;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v21

    .line 1108
    const/16 v25, 0x0

    .line 1109
    .line 1110
    const/16 v26, 0xf0

    .line 1111
    .line 1112
    const/16 v24, 0x0

    .line 1113
    .line 1114
    invoke-static/range {v17 .. v26}, Llk;->q(Lww4;ZLhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    .line 1118
    .line 1119
    .line 1120
    move-result v18

    .line 1121
    sget-object v19, Lhk0;->SharedLibs:Lhk0;

    .line 1122
    .line 1123
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSharedLibsSize()Ljava/lang/Long;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v20

    .line 1127
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSharedLibsSizeMirrored()Ljava/lang/Long;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v21

    .line 1131
    invoke-static/range {v17 .. v26}, Llk;->q(Lww4;ZLhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasData()Z

    .line 1135
    .line 1136
    .line 1137
    move-result v18

    .line 1138
    sget-object v19, Lhk0;->Data:Lhk0;

    .line 1139
    .line 1140
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataSize()Ljava/lang/Long;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v20

    .line 1144
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataSizeMirrored()Ljava/lang/Long;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v21

    .line 1148
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isDataEncrypted()Ljava/lang/Boolean;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v0

    .line 1152
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1153
    .line 1154
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1155
    .line 1156
    .line 1157
    move-result v22

    .line 1158
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataEncryptionMethod()Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v23

    .line 1162
    const/16 v26, 0xc0

    .line 1163
    .line 1164
    invoke-static/range {v17 .. v26}, Llk;->q(Lww4;ZLhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasExtData()Z

    .line 1168
    .line 1169
    .line 1170
    move-result v18

    .line 1171
    sget-object v19, Lhk0;->ExtData:Lhk0;

    .line 1172
    .line 1173
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataSize()Ljava/lang/Long;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v20

    .line 1177
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataSizeMirrored()Ljava/lang/Long;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v21

    .line 1181
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isExtDataEncrypted()Ljava/lang/Boolean;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1186
    .line 1187
    .line 1188
    move-result v22

    .line 1189
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataEncryptionMethod()Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v23

    .line 1193
    invoke-static/range {v17 .. v26}, Llk;->q(Lww4;ZLhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasMedia()Z

    .line 1197
    .line 1198
    .line 1199
    move-result v18

    .line 1200
    sget-object v19, Lhk0;->Media:Lhk0;

    .line 1201
    .line 1202
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaSize()Ljava/lang/Long;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v20

    .line 1206
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaSizeMirrored()Ljava/lang/Long;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v21

    .line 1210
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isMediaEncrypted()Ljava/lang/Boolean;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v0

    .line 1214
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1215
    .line 1216
    .line 1217
    move-result v22

    .line 1218
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaEncryptionMethod()Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v23

    .line 1222
    invoke-static/range {v17 .. v26}, Llk;->q(Lww4;ZLhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasExpansion()Z

    .line 1226
    .line 1227
    .line 1228
    move-result v18

    .line 1229
    sget-object v19, Lhk0;->Expansion:Lhk0;

    .line 1230
    .line 1231
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpSize()Ljava/lang/Long;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v20

    .line 1235
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpSizeMirrored()Ljava/lang/Long;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v21

    .line 1239
    const/16 v26, 0xf0

    .line 1240
    .line 1241
    const/16 v22, 0x0

    .line 1242
    .line 1243
    const/16 v23, 0x0

    .line 1244
    .line 1245
    invoke-static/range {v17 .. v26}, Llk;->q(Lww4;ZLhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSpecialData()Z

    .line 1249
    .line 1250
    .line 1251
    move-result v18

    .line 1252
    sget-object v19, Lhk0;->SpecialData:Lhk0;

    .line 1253
    .line 1254
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSpecialDataSize()Ljava/lang/Long;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v20

    .line 1258
    const/16 v21, 0x0

    .line 1259
    .line 1260
    invoke-static/range {v17 .. v26}, Llk;->q(Lww4;ZLhk0;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 1261
    .line 1262
    .line 1263
    invoke-static/range {v17 .. v17}, Lnc8;->h(Lww4;)Lww4;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v9

    .line 1267
    new-instance v4, Lkk;

    .line 1268
    .line 1269
    invoke-direct/range {v4 .. v9}, Lkk;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZLww4;)V

    .line 1270
    .line 1271
    .line 1272
    move-object v2, v4

    .line 1273
    goto :goto_a

    .line 1274
    :cond_1a
    const/4 v2, 0x0

    .line 1275
    :goto_a
    if-nez v2, :cond_1b

    .line 1276
    .line 1277
    goto :goto_b

    .line 1278
    :cond_1b
    sget-object v0, Lzn4;->a:Lzn4;

    .line 1279
    .line 1280
    new-instance v0, Ld11;

    .line 1281
    .line 1282
    const/4 v1, 0x7

    .line 1283
    move-object/from16 v3, v16

    .line 1284
    .line 1285
    invoke-direct {v0, v1, v3, v2}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1286
    .line 1287
    .line 1288
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 1289
    .line 1290
    .line 1291
    :goto_b
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1292
    .line 1293
    return-object v0

    .line 1294
    :pswitch_5
    iget-object v1, v0, Loj;->b:Ljava/lang/Object;

    .line 1295
    .line 1296
    check-cast v1, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 1297
    .line 1298
    iget-object v2, v0, Loj;->c:Ljava/lang/Object;

    .line 1299
    .line 1300
    check-cast v2, Ljava/util/ArrayList;

    .line 1301
    .line 1302
    iget-object v0, v0, Loj;->d:Ljava/lang/Object;

    .line 1303
    .line 1304
    check-cast v0, Lry7;

    .line 1305
    .line 1306
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->l0()Lr20;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v1

    .line 1310
    invoke-virtual {v1, v2, v0}, Lr20;->k(Ljava/util/ArrayList;Lty7;)V

    .line 1311
    .line 1312
    .line 1313
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1314
    .line 1315
    return-object v0

    .line 1316
    :pswitch_6
    iget-object v1, v0, Loj;->b:Ljava/lang/Object;

    .line 1317
    .line 1318
    check-cast v1, Lrj;

    .line 1319
    .line 1320
    iget-object v2, v0, Loj;->c:Ljava/lang/Object;

    .line 1321
    .line 1322
    check-cast v2, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 1323
    .line 1324
    iget-object v0, v0, Loj;->d:Ljava/lang/Object;

    .line 1325
    .line 1326
    check-cast v0, Ljava/util/List;

    .line 1327
    .line 1328
    iget-object v3, v1, Lrj;->e:Lk28;

    .line 1329
    .line 1330
    if-nez v2, :cond_1c

    .line 1331
    .line 1332
    sget-object v2, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->Companion:Lcs0;

    .line 1333
    .line 1334
    iget-object v4, v1, Lrj;->f:Lji;

    .line 1335
    .line 1336
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1340
    .line 1341
    .line 1342
    new-instance v5, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 1343
    .line 1344
    invoke-virtual {v4}, Lji;->getName()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v6

    .line 1348
    invoke-virtual {v4}, Lji;->getPackageName()Ljava/lang/String;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v7

    .line 1352
    const/4 v9, 0x4

    .line 1353
    const/4 v10, 0x0

    .line 1354
    const/4 v8, 0x0

    .line 1355
    invoke-direct/range {v5 .. v10}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {v4}, Lji;->isInstalled()Z

    .line 1359
    .line 1360
    .line 1361
    move-result v2

    .line 1362
    invoke-virtual {v5, v2}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->setInstalled(Z)V

    .line 1363
    .line 1364
    .line 1365
    move-object v2, v5

    .line 1366
    :cond_1c
    new-instance v4, Ljava/util/ArrayList;

    .line 1367
    .line 1368
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1369
    .line 1370
    .line 1371
    new-instance v0, Lxi;

    .line 1372
    .line 1373
    const/4 v5, 0x2

    .line 1374
    invoke-direct {v0, v1, v5}, Lxi;-><init>(Lrj;I)V

    .line 1375
    .line 1376
    .line 1377
    invoke-static {v3, v2, v4, v0}, Lns0;->l(Lzm;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljava/util/ArrayList;Lxi;)V

    .line 1378
    .line 1379
    .line 1380
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1381
    .line 1382
    return-object v0

    .line 1383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
