.class public final synthetic Lb7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb7;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 7
    iput p2, p0, Lb7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget p0, p0, Lb7;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    sget-object p0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 24
    .line 25
    sget-object p0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 26
    .line 27
    invoke-virtual {p0}, Lgz7;->isRunning()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    sget-object p0, Lgz7;->CANCELLED:Lgz7;

    .line 34
    .line 35
    invoke-static {p0}, Lez7;->b(Lgz7;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lhy7;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lrw6;

    .line 55
    .line 56
    invoke-virtual {v0}, Lrw6;->a()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    sget-object v2, Lbe8;->a:Lbe8;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-static {}, Ld6;->o()V

    .line 64
    .line 65
    .line 66
    :goto_1
    return-object v2

    .line 67
    :pswitch_0
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 68
    .line 69
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_1
    sget p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 79
    .line 80
    sget-object p0, Lzn7;->q:Lyn7;

    .line 81
    .line 82
    invoke-virtual {p0}, Lyn7;->d()Lzn7;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :pswitch_2
    new-instance p0, Lix6;

    .line 88
    .line 89
    invoke-direct {p0}, Lix6;-><init>()V

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_3
    sget p0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 94
    .line 95
    new-instance p0, Lbb4;

    .line 96
    .line 97
    invoke-direct {p0, v2}, Lgm7;-><init>(Lfm7;)V

    .line 98
    .line 99
    .line 100
    return-object p0

    .line 101
    :pswitch_4
    const-string p0, "android.permission.READ_CALL_LOG"

    .line 102
    .line 103
    const-string v0, "android.permission.WRITE_CALL_LOG"

    .line 104
    .line 105
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :pswitch_5
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->e()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :pswitch_6
    new-instance p0, Lwg5$c;

    .line 120
    .line 121
    invoke-direct {p0}, Lwg5$c;-><init>()V

    .line 122
    .line 123
    .line 124
    return-object p0

    .line 125
    :pswitch_7
    invoke-static {}, Lud5;->a()Landroid/app/role/RoleManager;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :pswitch_8
    new-instance p0, Lex6;

    .line 131
    .line 132
    invoke-direct {p0}, Lzy4;-><init>()V

    .line 133
    .line 134
    .line 135
    return-object p0

    .line 136
    :pswitch_9
    sget-object p0, Lc64;->l:Lix6;

    .line 137
    .line 138
    new-instance p0, Lex6;

    .line 139
    .line 140
    invoke-direct {p0}, Lzy4;-><init>()V

    .line 141
    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_a
    sget-object p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 145
    .line 146
    new-instance p0, Lh54;

    .line 147
    .line 148
    invoke-direct {p0}, Lh54;-><init>()V

    .line 149
    .line 150
    .line 151
    return-object p0

    .line 152
    :pswitch_b
    const/16 p0, 0xc

    .line 153
    .line 154
    new-array p0, p0, [B

    .line 155
    .line 156
    new-instance v0, Ljava/security/SecureRandom;

    .line 157
    .line 158
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 162
    .line 163
    .line 164
    return-object p0

    .line 165
    :pswitch_c
    invoke-static {}, Lf13;->d()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    new-instance v0, Ljava/io/File;

    .line 178
    .line 179
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    const-string v4, "SwiftBackup"

    .line 184
    .line 185
    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    filled-new-array {p0, v0}, [Ljava/io/File;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-static {p0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {}, Lf13;->d()Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    new-instance v3, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .line 211
    .line 212
    array-length v4, v0

    .line 213
    :goto_2
    if-ge v1, v4, :cond_4

    .line 214
    .line 215
    aget-object v5, v0, v1

    .line 216
    .line 217
    if-eqz v5, :cond_2

    .line 218
    .line 219
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    goto :goto_3

    .line 224
    :cond_2
    move-object v5, v2

    .line 225
    :goto_3
    if-eqz v5, :cond_3

    .line 226
    .line 227
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_4
    invoke-static {p0, v3}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-static {}, Lf13;->d()Landroid/content/Context;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/content/Context;->getObbDirs()[Ljava/io/File;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-static {v0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {p0, v0}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-static {}, Lf13;->d()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    invoke-static {v0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {p0, v0}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string v1, "appDirs: "

    .line 278
    .line 279
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    const-string v1, "JAM"

    .line 290
    .line 291
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    return-object p0

    .line 295
    :pswitch_d
    sget-boolean p0, Lg42;->a:Z

    .line 296
    .line 297
    const-string p0, "AQKNphqOOtODr8aPI5Hx5aPd4bmazKOHjnpfw6h2MRJCIYf8bnjZ7PMymHcNmXZyq46h1qk="

    .line 298
    .line 299
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    return-object p0

    .line 304
    :pswitch_e
    sget-boolean p0, Lg42;->a:Z

    .line 305
    .line 306
    const-string p0, "AQI1S34OJ00Nk1zCUVnirxbFNUZQLJz6YjA7IEtcm8f/ZVFSLXby9efHc09EnEnCUKinwIMb8Hg3Z19YmdA="

    .line 307
    .line 308
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    return-object p0

    .line 313
    :pswitch_f
    sget-boolean p0, Lg42;->a:Z

    .line 314
    .line 315
    const-string p0, "AQIHXWrMoO63FEP/OuMVSnUDhYYXA1rMg/QEP6wSawlcOHCJrmITh7s9rVO878k7rPs="

    .line 316
    .line 317
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    return-object p0

    .line 322
    :pswitch_10
    invoke-static {}, Lqv1;->c()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    return-object p0

    .line 327
    :pswitch_11
    new-instance p0, Lex6;

    .line 328
    .line 329
    invoke-direct {p0}, Lzy4;-><init>()V

    .line 330
    .line 331
    .line 332
    return-object p0

    .line 333
    :pswitch_12
    invoke-static {}, Ldd1;->c()Ltb1;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    return-object p0

    .line 338
    :pswitch_13
    invoke-static {}, Ldd1;->r()Ltb1;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    return-object p0

    .line 343
    :pswitch_14
    new-instance p0, Lix6;

    .line 344
    .line 345
    invoke-direct {p0}, Lix6;-><init>()V

    .line 346
    .line 347
    .line 348
    return-object p0

    .line 349
    :pswitch_15
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 350
    .line 351
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    if-eqz p0, :cond_5

    .line 360
    .line 361
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    .line 362
    .line 363
    .line 364
    move-result p0

    .line 365
    if-eqz p0, :cond_5

    .line 366
    .line 367
    goto :goto_4

    .line 368
    :cond_5
    move v0, v1

    .line 369
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    return-object p0

    .line 374
    :pswitch_16
    new-instance p0, Li70;

    .line 375
    .line 376
    invoke-direct {p0, v1}, Li70;-><init>(I)V

    .line 377
    .line 378
    .line 379
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    return-object p0

    .line 384
    :pswitch_17
    new-instance p0, Li30;

    .line 385
    .line 386
    invoke-direct {p0, v2}, Lgm7;-><init>(Lfm7;)V

    .line 387
    .line 388
    .line 389
    return-object p0

    .line 390
    :pswitch_18
    :try_start_0
    const-class p0, Landroid/app/ActivityManager;

    .line 391
    .line 392
    const-string v0, "getUidProcessState"

    .line 393
    .line 394
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 395
    .line 396
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 401
    .line 402
    .line 403
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :catch_0
    return-object v2

    .line 405
    :pswitch_19
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 406
    .line 407
    return-object p0

    .line 408
    :pswitch_1a
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 409
    .line 410
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 411
    .line 412
    .line 413
    move-result-object p0

    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_6

    .line 426
    .line 427
    new-instance v2, Lq63;

    .line 428
    .line 429
    invoke-direct {v2, p0, v0}, Lq63;-><init>(Ljava/io/File;I)V

    .line 430
    .line 431
    .line 432
    goto :goto_8

    .line 433
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    if-eqz p0, :cond_c

    .line 438
    .line 439
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    if-eqz v1, :cond_c

    .line 444
    .line 445
    const-string v1, "com.android.vending"

    .line 446
    .line 447
    const-string v3, ".nomedia"

    .line 448
    .line 449
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    invoke-static {v1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    new-instance v3, Ljava/util/ArrayList;

    .line 458
    .line 459
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    :cond_7
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    if-eqz v4, :cond_9

    .line 471
    .line 472
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    check-cast v4, Ljava/lang/String;

    .line 477
    .line 478
    new-instance v5, Lq63;

    .line 479
    .line 480
    invoke-direct {v5, p0, v4, v0}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v5}, Lq63;->j()Z

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    if-eqz v4, :cond_8

    .line 488
    .line 489
    goto :goto_6

    .line 490
    :cond_8
    move-object v5, v2

    .line 491
    :goto_6
    if-eqz v5, :cond_7

    .line 492
    .line 493
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    goto :goto_5

    .line 497
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 498
    .line 499
    .line 500
    move-result-object p0

    .line 501
    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-eqz v0, :cond_b

    .line 506
    .line 507
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    move-object v1, v0

    .line 512
    check-cast v1, Lq63;

    .line 513
    .line 514
    invoke-virtual {v1}, Lq63;->j()Z

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    if-eqz v1, :cond_a

    .line 519
    .line 520
    goto :goto_7

    .line 521
    :cond_b
    move-object v0, v2

    .line 522
    :goto_7
    check-cast v0, Lq63;

    .line 523
    .line 524
    if-eqz v0, :cond_c

    .line 525
    .line 526
    move-object v2, v0

    .line 527
    :cond_c
    :goto_8
    return-object v2

    .line 528
    :pswitch_1b
    sget-object p0, Lg00;->a:Lg00;

    .line 529
    .line 530
    invoke-static {}, Lg00;->i()I

    .line 531
    .line 532
    .line 533
    move-result p0

    .line 534
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object p0

    .line 538
    return-object p0

    .line 539
    :pswitch_1c
    new-instance p0, La7;

    .line 540
    .line 541
    invoke-direct {p0, v2}, Lgm7;-><init>(Lfm7;)V

    .line 542
    .line 543
    .line 544
    return-object p0

    .line 545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
