.class public final synthetic Lqm;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Lqm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lhf1;)V
    .locals 0

    .line 1
    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lqm;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget p0, p0, Lqm;->a:I

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch p0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v6, Lpw5;

    .line 18
    .line 19
    const-string v2, "None"

    .line 20
    .line 21
    invoke-direct {v6, p0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance v7, Lpw5;

    .line 29
    .line 30
    const-string v2, "PAP"

    .line 31
    .line 32
    invoke-direct {v7, p0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance v8, Lpw5;

    .line 40
    .line 41
    const-string v1, "MSCHAP"

    .line 42
    .line 43
    invoke-direct {v8, p0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x3

    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    new-instance v9, Lpw5;

    .line 52
    .line 53
    const-string v1, "MSCHAPV2"

    .line 54
    .line 55
    invoke-direct {v9, p0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance v10, Lpw5;

    .line 63
    .line 64
    const-string v0, "GTC"

    .line 65
    .line 66
    invoke-direct {v10, p0, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x5

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    new-instance v11, Lpw5;

    .line 75
    .line 76
    const-string v0, "SIM"

    .line 77
    .line 78
    invoke-direct {v11, p0, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x6

    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance v12, Lpw5;

    .line 87
    .line 88
    const-string v0, "AKA"

    .line 89
    .line 90
    invoke-direct {v12, p0, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x7

    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    new-instance v13, Lpw5;

    .line 99
    .line 100
    const-string v0, "AKA\'"

    .line 101
    .line 102
    invoke-direct {v13, p0, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    filled-new-array/range {v6 .. v13}, [Lpw5;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :pswitch_0
    sget p0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->W:I

    .line 115
    .line 116
    new-instance p0, Lhz4;

    .line 117
    .line 118
    invoke-direct {p0}, Lhz4;-><init>()V

    .line 119
    .line 120
    .line 121
    return-object p0

    .line 122
    :pswitch_1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 123
    .line 124
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    sget-boolean v1, Lhp0;->a:Z

    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {p0, v4}, Lhp0;->a(Ljava/lang/String;Z)V

    .line 138
    .line 139
    .line 140
    sget-object v1, Leu;->allow:Leu;

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    sget-object v2, Lmp6;->a:Lmp6;

    .line 146
    .line 147
    sget-boolean v4, Lg42;->a:Z

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    const-string v7, "set"

    .line 161
    .line 162
    const-string v8, "android:run_in_background"

    .line 163
    .line 164
    filled-new-array {v7, p0, v8, v4}, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    filled-new-array {v4}, [Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    sget-object v6, Lip6;->SHIZUKU:Lip6;

    .line 181
    .line 182
    invoke-virtual {v2, v5, v4, v6}, Lmp6;->j(Z[Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    const-string v8, "android:run_any_in_background"

    .line 197
    .line 198
    filled-new-array {v7, p0, v8, v1}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    filled-new-array {p0}, [Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {v2, v5, p0, v6}, Lmp6;->j(Z[Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    return-object v3

    .line 218
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 219
    .line 220
    .line 221
    move-result-wide v0

    .line 222
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    return-object p0

    .line 227
    :pswitch_3
    sget-boolean p0, Lmp6;->g:Z

    .line 228
    .line 229
    if-nez p0, :cond_0

    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_0
    new-instance p0, Lq63;

    .line 233
    .line 234
    invoke-static {v5}, Ltv7;->b(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-direct {p0, v0, v5}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v5}, Lq63;->r(I)Landroid/os/ParcelFileDescriptor;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    :goto_0
    return-object v2

    .line 246
    :pswitch_4
    sget-object p0, Lg00;->a:Lg00;

    .line 247
    .line 248
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 249
    .line 250
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-static {v4, p0}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    if-nez p0, :cond_1

    .line 263
    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 267
    .line 268
    if-nez v0, :cond_2

    .line 269
    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :cond_2
    new-instance v6, Ljava/io/File;

    .line 273
    .line 274
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 275
    .line 276
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    const-string v0, "5.1.0"

    .line 280
    .line 281
    const-string v7, "dev"

    .line 282
    .line 283
    invoke-static {v0, v7, v5}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    if-eqz v8, :cond_3

    .line 288
    .line 289
    goto :goto_1

    .line 290
    :cond_3
    const-string v7, "alpha"

    .line 291
    .line 292
    invoke-static {v0, v7, v5}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    if-eqz v8, :cond_4

    .line 297
    .line 298
    goto :goto_1

    .line 299
    :cond_4
    const-string v7, "beta"

    .line 300
    .line 301
    invoke-static {v0, v7, v5}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 302
    .line 303
    .line 304
    move-result v8

    .line 305
    if-eqz v8, :cond_5

    .line 306
    .line 307
    goto :goto_1

    .line 308
    :cond_5
    const-string v7, "rc"

    .line 309
    .line 310
    invoke-static {v0, v7, v5}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_6

    .line 315
    .line 316
    goto :goto_1

    .line 317
    :cond_6
    move-object v7, v2

    .line 318
    :goto_1
    if-nez v7, :cond_7

    .line 319
    .line 320
    const-string v7, "stable"

    .line 321
    .line 322
    :cond_7
    new-instance v0, Lq63;

    .line 323
    .line 324
    sget-object v8, Lry5;->u:Ljava/lang/String;

    .line 325
    .line 326
    invoke-static {v4, v2}, Lqy5;->f(ZLzn7;)Lry5;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    iget-object v2, v2, Lry5;->a:Ljava/lang/String;

    .line 331
    .line 332
    const-string v4, "swift_backup_apks/"

    .line 333
    .line 334
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    invoke-direct {v0, v2, v4, v1}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 342
    .line 343
    invoke-static {p0}, Ljd4;->r(Landroid/content/pm/PackageInfo;)J

    .line 344
    .line 345
    .line 346
    move-result-wide v7

    .line 347
    new-instance p0, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v2, " ("

    .line 356
    .line 357
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v2, ").apk"

    .line 364
    .line 365
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    new-instance v2, Lq63;

    .line 373
    .line 374
    invoke-direct {v2, v1, v0, p0}, Lq63;-><init>(ILq63;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Lq63;->j()Z

    .line 378
    .line 379
    .line 380
    move-result p0

    .line 381
    if-eqz p0, :cond_8

    .line 382
    .line 383
    invoke-virtual {v2}, Lq63;->A()J

    .line 384
    .line 385
    .line 386
    move-result-wide v7

    .line 387
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 388
    .line 389
    .line 390
    move-result-wide v9

    .line 391
    cmp-long p0, v7, v9

    .line 392
    .line 393
    if-nez p0, :cond_8

    .line 394
    .line 395
    const-string p0, "SwiftBackupApkSaver"

    .line 396
    .line 397
    const-string v0, "APK already saved to SwiftBackup folder"

    .line 398
    .line 399
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    goto :goto_2

    .line 403
    :cond_8
    invoke-static {v0}, Lcy0;->e(Lq63;)V

    .line 404
    .line 405
    .line 406
    invoke-static {v2}, Lio4;->g(Lq63;)V

    .line 407
    .line 408
    .line 409
    new-instance p0, Ljava/io/FileInputStream;

    .line 410
    .line 411
    invoke-direct {p0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v2, v5}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    const/high16 v0, 0x40000

    .line 419
    .line 420
    :try_start_0
    invoke-static {p0, v1, v0}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 421
    .line 422
    .line 423
    :try_start_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    .line 425
    .line 426
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2}, Lq63;->A()J

    .line 430
    .line 431
    .line 432
    move-result-wide v0

    .line 433
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 434
    .line 435
    .line 436
    move-result-wide v4

    .line 437
    cmp-long p0, v0, v4

    .line 438
    .line 439
    if-nez p0, :cond_9

    .line 440
    .line 441
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 442
    .line 443
    const-string p0, "Copied Swift Backup APK to "

    .line 444
    .line 445
    invoke-static {v2, p0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    const/4 v8, 0x4

    .line 450
    const/4 v9, 0x0

    .line 451
    const-string v5, "SwiftBackupApkSaver"

    .line 452
    .line 453
    const/4 v7, 0x0

    .line 454
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    :cond_9
    :goto_2
    return-object v3

    .line 458
    :catchall_0
    move-exception v0

    .line 459
    move-object v1, v0

    .line 460
    goto :goto_3

    .line 461
    :catchall_1
    move-exception v0

    .line 462
    move-object v2, v0

    .line 463
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 464
    :catchall_2
    move-exception v0

    .line 465
    :try_start_3
    invoke-static {v1, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 466
    .line 467
    .line 468
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 469
    :goto_3
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 470
    :catchall_3
    move-exception v0

    .line 471
    invoke-static {p0, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 472
    .line 473
    .line 474
    throw v0

    .line 475
    :pswitch_5
    sget-object p0, Lmz6;->a:Ljava/util/HashSet;

    .line 476
    .line 477
    const-string p0, "extract"

    .line 478
    .line 479
    invoke-static {p0}, Lmz6;->u(Ljava/lang/String;)Lz84;

    .line 480
    .line 481
    .line 482
    move-result-object p0

    .line 483
    return-object p0

    .line 484
    :pswitch_6
    new-instance p0, Lpu;

    .line 485
    .line 486
    const/16 v0, 0xb

    .line 487
    .line 488
    invoke-direct {p0, v0}, Lpu;-><init>(I)V

    .line 489
    .line 490
    .line 491
    const/16 v0, 0x8

    .line 492
    .line 493
    const-string v1, "OClient"

    .line 494
    .line 495
    const-string v2, "clearSavedAccounts"

    .line 496
    .line 497
    invoke-static {v1, v2, v5, p0, v0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    return-object v3

    .line 501
    :pswitch_7
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->c()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 502
    .line 503
    .line 504
    move-result-object p0

    .line 505
    return-object p0

    .line 506
    :pswitch_8
    invoke-static {}, Lre3;->b()Lzc2;

    .line 507
    .line 508
    .line 509
    move-result-object p0

    .line 510
    const-string v0, "credits/v1/Translator"

    .line 511
    .line 512
    invoke-virtual {p0, v0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 513
    .line 514
    .line 515
    move-result-object p0

    .line 516
    return-object p0

    .line 517
    :pswitch_9
    new-instance p0, Landroid/graphics/ColorMatrix;

    .line 518
    .line 519
    invoke-direct {p0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 520
    .line 521
    .line 522
    const/4 v0, 0x0

    .line 523
    invoke-virtual {p0, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 524
    .line 525
    .line 526
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    .line 527
    .line 528
    invoke-direct {v0, p0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 529
    .line 530
    .line 531
    return-object v0

    .line 532
    :pswitch_a
    :try_start_5
    const-class p0, Landroid/database/sqlite/SQLiteDatabase;

    .line 533
    .line 534
    const-string v0, "getThreadSession"

    .line 535
    .line 536
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 537
    .line 538
    .line 539
    move-result-object p0

    .line 540
    invoke-virtual {p0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 541
    .line 542
    .line 543
    move-object v2, p0

    .line 544
    :catchall_4
    return-object v2

    .line 545
    :pswitch_b
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 546
    .line 547
    const-string v0, "en-IN"

    .line 548
    .line 549
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    const-string v1, "dd/MMM/yy hh:mm:ss aa"

    .line 554
    .line 555
    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 556
    .line 557
    .line 558
    return-object p0

    .line 559
    :pswitch_c
    sget-boolean p0, Lg42;->a:Z

    .line 560
    .line 561
    const-string p0, "AQL2kKRVHyAVCLEYYJzY+6Nvn4OlF4vu1TZxfZcoMkYdtmsCsH07ARDZwzhqAtw/06CH1Yy8Vr9g\nSkeCT/uzbu7Sdc/9Mw=="

    .line 562
    .line 563
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object p0

    .line 567
    return-object p0

    .line 568
    :pswitch_d
    sget-boolean p0, Lg42;->a:Z

    .line 569
    .line 570
    const-string p0, "AQJZSCjaAUPchkJggPFOJhiR9oENI1BhssuSCvuq5HXEE792XMTtZ/CzTgkGiKN6HQ5vODmO+ADwWoPtVV0OvYohzR8wZ0j9r30sxXBp2vUHkI+qXq8akCvxhAxTKgNpLw0="

    .line 571
    .line 572
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object p0

    .line 576
    return-object p0

    .line 577
    :pswitch_e
    sget-boolean p0, Lg42;->a:Z

    .line 578
    .line 579
    const-string p0, "AQImEc3Z2CblYPFXQWsD9rUCco2urG6dUiBYR5nMECsrlYsCyJZ0bu2pI38JN6/ZRYXRrFH/G2sXnRxTYsz5ReF1BlEoicvTCOnuEqmgwA=="

    .line 580
    .line 581
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object p0

    .line 585
    return-object p0

    .line 586
    :pswitch_f
    sget-object p0, Ly32;->a:Lgv7;

    .line 587
    .line 588
    sget-object p0, Ld45;->b:Ld45;

    .line 589
    .line 590
    invoke-static {}, Lb45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 591
    .line 592
    .line 593
    move-result-object p0

    .line 594
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object p0

    .line 598
    invoke-static {}, Lrb;->t()Lrb;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    new-instance v1, Lf45;

    .line 603
    .line 604
    invoke-direct {v1, p0}, Lf45;-><init>(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    new-instance p0, Lx32;

    .line 608
    .line 609
    iget-object v0, v0, Lrb;->b:Ljava/lang/Object;

    .line 610
    .line 611
    check-cast v0, Lov7;

    .line 612
    .line 613
    invoke-direct {p0, v1, v0}, Lx32;-><init>(Lgk1;Lov7;)V

    .line 614
    .line 615
    .line 616
    :try_start_6
    sget-object v0, Ld45;->b:Ld45;

    .line 617
    .line 618
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 619
    .line 620
    .line 621
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    if-eqz v0, :cond_a

    .line 626
    .line 627
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 632
    .line 633
    .line 634
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 635
    goto :goto_4

    .line 636
    :catch_0
    :cond_a
    move-object v0, v2

    .line 637
    :goto_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 638
    .line 639
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    if-nez v0, :cond_b

    .line 644
    .line 645
    move-object v2, p0

    .line 646
    :cond_b
    return-object v2

    .line 647
    :pswitch_10
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 648
    .line 649
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 650
    .line 651
    .line 652
    move-result-object p0

    .line 653
    const v0, 0x7f1302f4

    .line 654
    .line 655
    .line 656
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 661
    .line 662
    .line 663
    sget-object v1, Lzn4;->a:Lzn4;

    .line 664
    .line 665
    invoke-static {p0, v0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    return-object v3

    .line 669
    :pswitch_11
    new-instance p0, Lwe1;

    .line 670
    .line 671
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 672
    .line 673
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    invoke-direct {p0, v0}, Lwe1;-><init>(Landroid/content/Context;)V

    .line 678
    .line 679
    .line 680
    return-object p0

    .line 681
    :pswitch_12
    invoke-static {}, Ldd1;->o()Ltb1;

    .line 682
    .line 683
    .line 684
    move-result-object p0

    .line 685
    return-object p0

    .line 686
    :pswitch_13
    sget-object p0, Ltb1;->a:Ltb1;

    .line 687
    .line 688
    invoke-static {}, Lqb1;->l()Ldd1;

    .line 689
    .line 690
    .line 691
    move-result-object p0

    .line 692
    if-nez p0, :cond_c

    .line 693
    .line 694
    goto :goto_5

    .line 695
    :cond_c
    invoke-virtual {p0}, Ldd1;->getClient()Ltb1;

    .line 696
    .line 697
    .line 698
    move-result-object p0

    .line 699
    instance-of v0, p0, Lv52;

    .line 700
    .line 701
    if-eqz v0, :cond_d

    .line 702
    .line 703
    check-cast p0, Lv52;

    .line 704
    .line 705
    iget-object p0, p0, Lv52;->g:Ljh1;

    .line 706
    .line 707
    invoke-interface {p0}, Ljh1;->i()Z

    .line 708
    .line 709
    .line 710
    move-result v4

    .line 711
    goto :goto_5

    .line 712
    :cond_d
    invoke-static {}, Lqb1;->d()Z

    .line 713
    .line 714
    .line 715
    move-result v4

    .line 716
    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 717
    .line 718
    .line 719
    move-result-object p0

    .line 720
    return-object p0

    .line 721
    :pswitch_14
    new-instance p0, Le00;

    .line 722
    .line 723
    const-string v0, "PROCESS_STATE_PERSISTENT"

    .line 724
    .line 725
    invoke-static {v0}, Ltu0;->u(Ljava/lang/String;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 730
    .line 731
    .line 732
    check-cast v0, Ljava/lang/Integer;

    .line 733
    .line 734
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 735
    .line 736
    .line 737
    move-result v0

    .line 738
    const-string v1, "PROCESS_STATE_PERSISTENT_UI"

    .line 739
    .line 740
    invoke-static {v1}, Ltu0;->u(Ljava/lang/String;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 745
    .line 746
    .line 747
    check-cast v1, Ljava/lang/Integer;

    .line 748
    .line 749
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 750
    .line 751
    .line 752
    move-result v1

    .line 753
    const-string v2, "PROCESS_STATE_NONEXISTENT"

    .line 754
    .line 755
    invoke-static {v2}, Ltu0;->u(Ljava/lang/String;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 760
    .line 761
    .line 762
    check-cast v2, Ljava/lang/Integer;

    .line 763
    .line 764
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 765
    .line 766
    .line 767
    move-result v2

    .line 768
    invoke-direct {p0, v0, v1, v2}, Le00;-><init>(III)V

    .line 769
    .line 770
    .line 771
    return-object p0

    .line 772
    :pswitch_15
    sget-object p0, Lav;->b:Lgv7;

    .line 773
    .line 774
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object p0

    .line 778
    check-cast p0, Ljava/util/Map;

    .line 779
    .line 780
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 781
    .line 782
    .line 783
    move-result-object p0

    .line 784
    const/16 v0, 0xa

    .line 785
    .line 786
    invoke-static {p0, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 787
    .line 788
    .line 789
    move-result v0

    .line 790
    invoke-static {v0}, Lx65;->q0(I)I

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    const/16 v1, 0x10

    .line 795
    .line 796
    if-ge v0, v1, :cond_e

    .line 797
    .line 798
    move v0, v1

    .line 799
    :cond_e
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 800
    .line 801
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 802
    .line 803
    .line 804
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 805
    .line 806
    .line 807
    move-result-object p0

    .line 808
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    if-eqz v0, :cond_f

    .line 813
    .line 814
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    check-cast v0, Ljava/util/Map$Entry;

    .line 819
    .line 820
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    check-cast v2, Ljava/lang/Number;

    .line 825
    .line 826
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 827
    .line 828
    .line 829
    move-result v2

    .line 830
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    check-cast v0, Ljava/lang/String;

    .line 835
    .line 836
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 837
    .line 838
    .line 839
    move-result-object v2

    .line 840
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    goto :goto_6

    .line 844
    :cond_f
    return-object v1

    .line 845
    :pswitch_16
    invoke-static {}, Ly35;->a()Lorg/swiftapps/swiftbackup/database/MDatabase;

    .line 846
    .line 847
    .line 848
    move-result-object p0

    .line 849
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/database/MDatabase;->l()Lom;

    .line 850
    .line 851
    .line 852
    move-result-object p0

    .line 853
    return-object p0

    .line 854
    nop

    .line 855
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
