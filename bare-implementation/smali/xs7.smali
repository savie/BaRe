.class public final synthetic Lxs7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/SwiftApp;

.field public final synthetic b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/SwiftApp;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxs7;->a:Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 5
    .line 6
    iput-object p2, p0, Lxs7;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {v2}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 19
    .line 20
    const/4 v8, 0x4

    .line 21
    const/4 v9, 0x0

    .line 22
    const-string v5, "Crash"

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v6}, Lorg/swiftapps/swiftbackup/common/Const;->U(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->a:Lgv7;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v4, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v4, v3

    .line 46
    :goto_0
    const-wide/16 v7, 0x0

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    :try_start_0
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    const-string v9, "error.txt"

    .line 60
    .line 61
    invoke-static {v0, v9}, Lnc3;->U(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move-object v0, v5

    .line 67
    :goto_1
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-static {v0}, Lf13;->b(Ljava/io/File;)Z

    .line 70
    .line 71
    .line 72
    :cond_2
    if-eqz v0, :cond_3

    .line 73
    .line 74
    sget-object v9, Lf51;->a:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v10, Ljava/io/FileOutputStream;

    .line 80
    .line 81
    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :try_start_1
    invoke-static {v10, v6, v9}, Lnc3;->X(Ljava/io/FileOutputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    move-object v9, v0

    .line 93
    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    :try_start_4
    invoke-static {v10, v9}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_4

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 108
    .line 109
    .line 110
    move-result-wide v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 111
    cmp-long v9, v9, v7

    .line 112
    .line 113
    if-lez v9, :cond_4

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :catch_0
    :cond_4
    move-object v0, v5

    .line 117
    :goto_3
    new-instance v9, Lwo5;

    .line 118
    .line 119
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    const-string v11, "crash_error_channel"

    .line 124
    .line 125
    invoke-direct {v9, v10, v11}, Lwo5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->c()I

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    iput v10, v9, Lwo5;->r:I

    .line 133
    .line 134
    const v10, 0x7f0801f6

    .line 135
    .line 136
    .line 137
    iget-object v11, v9, Lwo5;->u:Landroid/app/Notification;

    .line 138
    .line 139
    iput v10, v11, Landroid/app/Notification;->icon:I

    .line 140
    .line 141
    const-string v10, "Swift Backup crashed"

    .line 142
    .line 143
    invoke-static {v10}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    iput-object v10, v9, Lwo5;->e:Ljava/lang/CharSequence;

    .line 148
    .line 149
    invoke-static {v4}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iput-object v4, v9, Lwo5;->f:Ljava/lang/CharSequence;

    .line 154
    .line 155
    const/16 v4, 0x8

    .line 156
    .line 157
    invoke-virtual {v9, v4}, Lwo5;->c(I)V

    .line 158
    .line 159
    .line 160
    const/16 v4, 0x10

    .line 161
    .line 162
    invoke-virtual {v9, v4}, Lwo5;->c(I)V

    .line 163
    .line 164
    .line 165
    const/4 v4, 0x1

    .line 166
    const/4 v10, 0x0

    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    invoke-static {v0}, Lf93;->b(Ljava/io/File;)Landroid/net/Uri;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    new-instance v11, Landroid/content/Intent;

    .line 174
    .line 175
    const-string v12, "android.intent.action.VIEW"

    .line 176
    .line 177
    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string v12, "text/plain"

    .line 181
    .line 182
    invoke-virtual {v11, v0, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    invoke-static {}, Lb67;->d()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_5

    .line 193
    .line 194
    const/high16 v0, 0x4000000

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_5
    move v0, v10

    .line 198
    :goto_4
    const/high16 v12, 0x8000000

    .line 199
    .line 200
    or-int/2addr v0, v12

    .line 201
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    invoke-static {v12, v10, v11, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    iput-object v0, v9, Lwo5;->g:Landroid/app/PendingIntent;

    .line 210
    .line 211
    :cond_6
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->d()Landroid/app/NotificationManager;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const/16 v11, 0x390

    .line 216
    .line 217
    invoke-virtual {v9}, Lwo5;->a()Landroid/app/Notification;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    invoke-virtual {v0, v11, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 222
    .line 223
    .line 224
    sget-object v0, Lzn7;->q:Lyn7;

    .line 225
    .line 226
    invoke-virtual {v0}, Lyn7;->d()Lzn7;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    sget-object v9, Lry5;->u:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Lzn7;->n()Lq63;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-static {v9}, Lqy5;->c(Lq63;)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    const-string v11, "Unknown"

    .line 244
    .line 245
    if-eqz v9, :cond_7

    .line 246
    .line 247
    sget-object v12, Lp93;->a:Lp93;

    .line 248
    .line 249
    invoke-static {v9}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    goto :goto_5

    .line 254
    :cond_7
    move-object v9, v11

    .line 255
    :goto_5
    invoke-virtual {v0}, Lzn7;->l()Lq63;

    .line 256
    .line 257
    .line 258
    move-result-object v12

    .line 259
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v12}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 263
    .line 264
    .line 265
    move-result-object v12

    .line 266
    invoke-virtual {v12}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 267
    .line 268
    .line 269
    move-result-object v12

    .line 270
    invoke-virtual {v12}, Ljava/io/File;->getTotalSpace()J

    .line 271
    .line 272
    .line 273
    move-result-wide v12

    .line 274
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 275
    .line 276
    .line 277
    move-result-object v14

    .line 278
    cmp-long v7, v12, v7

    .line 279
    .line 280
    if-lez v7, :cond_8

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_8
    move-object v14, v5

    .line 284
    :goto_6
    if-eqz v14, :cond_9

    .line 285
    .line 286
    sget-object v7, Lp93;->a:Lp93;

    .line 287
    .line 288
    invoke-static {v14}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    :cond_9
    invoke-virtual {v0}, Lzn7;->u()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    invoke-virtual {v0, v5}, Lzn7;->e(Ljava/util/List;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v8

    .line 300
    const-string v12, "Free "

    .line 301
    .line 302
    const-string v13, " of "

    .line 303
    .line 304
    invoke-static {v12, v9, v13, v11}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    invoke-static {v7}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 317
    .line 318
    const/4 v15, 0x0

    .line 319
    const/16 v16, 0x3f

    .line 320
    .line 321
    const/4 v12, 0x0

    .line 322
    const/4 v13, 0x0

    .line 323
    const/4 v14, 0x0

    .line 324
    invoke-static/range {v11 .. v16}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v14

    .line 328
    const/16 v16, 0x4

    .line 329
    .line 330
    const/16 v17, 0x0

    .line 331
    .line 332
    const-string v13, "SwiftApp"

    .line 333
    .line 334
    move-object v12, v7

    .line 335
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    iget-boolean v0, v0, Lzn7;->b:Z

    .line 339
    .line 340
    iget-object v7, v1, Lxs7;->a:Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 341
    .line 342
    if-eqz v0, :cond_c

    .line 343
    .line 344
    const-string v0, "FileNotFoundException"

    .line 345
    .line 346
    const-string v8, "IOException"

    .line 347
    .line 348
    filled-new-array {v0, v8}, [Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 357
    .line 358
    .line 359
    move-result v8

    .line 360
    if-eqz v8, :cond_a

    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    .line 369
    .line 370
    move-result v8

    .line 371
    if-eqz v8, :cond_c

    .line 372
    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    check-cast v8, Ljava/lang/String;

    .line 378
    .line 379
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    invoke-static {v6, v8, v10}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 383
    .line 384
    .line 385
    move-result v8

    .line 386
    if-nez v8, :cond_b

    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_b
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 390
    .line 391
    const/4 v15, 0x4

    .line 392
    const/16 v16, 0x0

    .line 393
    .line 394
    const-string v12, "SwiftApp"

    .line 395
    .line 396
    const-string v13, "IO Exception on a removable storage, avoid crash report."

    .line 397
    .line 398
    const/4 v14, 0x0

    .line 399
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v7, v13}, Lorg/swiftapps/swiftbackup/SwiftApp;->c(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v5

    .line 406
    :cond_c
    :goto_8
    const-string v0, "ShizukuRemoteProcess"

    .line 407
    .line 408
    const-string v8, "android.os.DeadObjectException"

    .line 409
    .line 410
    filled-new-array {v0, v8}, [Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 419
    .line 420
    .line 421
    move-result v8

    .line 422
    if-eqz v8, :cond_d

    .line 423
    .line 424
    goto :goto_9

    .line 425
    :cond_d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 430
    .line 431
    .line 432
    move-result v8

    .line 433
    if-eqz v8, :cond_f

    .line 434
    .line 435
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    check-cast v8, Ljava/lang/String;

    .line 440
    .line 441
    invoke-static {v6, v8, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 442
    .line 443
    .line 444
    move-result v8

    .line 445
    if-nez v8, :cond_e

    .line 446
    .line 447
    move v4, v10

    .line 448
    :cond_f
    :goto_9
    instance-of v0, v2, Ljava/lang/OutOfMemoryError;

    .line 449
    .line 450
    if-nez v0, :cond_15

    .line 451
    .line 452
    instance-of v0, v2, Lorg/swiftapps/swiftbackup/common/IgnoredException;

    .line 453
    .line 454
    if-nez v0, :cond_15

    .line 455
    .line 456
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    const-string v6, "RemoteServiceException"

    .line 465
    .line 466
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    if-nez v0, :cond_15

    .line 471
    .line 472
    if-nez v4, :cond_15

    .line 473
    .line 474
    const-string v0, "Binary XML"

    .line 475
    .line 476
    const-string v4, "InflateException"

    .line 477
    .line 478
    const-string v6, "Resources$NotFoundException"

    .line 479
    .line 480
    filled-new-array {v6, v0, v4}, [Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 489
    .line 490
    .line 491
    move-result v4

    .line 492
    if-eqz v4, :cond_10

    .line 493
    .line 494
    goto :goto_b

    .line 495
    :cond_10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    if-eqz v4, :cond_11

    .line 504
    .line 505
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    check-cast v4, Ljava/lang/String;

    .line 510
    .line 511
    invoke-static {v3, v4, v10}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    if-nez v4, :cond_15

    .line 516
    .line 517
    goto :goto_a

    .line 518
    :cond_11
    :goto_b
    const-string v0, "EPERM (Operation not permitted)"

    .line 519
    .line 520
    const-string v4, "ENOSPC (No space left on device)"

    .line 521
    .line 522
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    if-eqz v4, :cond_12

    .line 535
    .line 536
    goto :goto_d

    .line 537
    :cond_12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 542
    .line 543
    .line 544
    move-result v4

    .line 545
    if-eqz v4, :cond_13

    .line 546
    .line 547
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    check-cast v4, Ljava/lang/String;

    .line 552
    .line 553
    invoke-static {v3, v4, v10}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 554
    .line 555
    .line 556
    move-result v4

    .line 557
    if-nez v4, :cond_15

    .line 558
    .line 559
    goto :goto_c

    .line 560
    :cond_13
    :goto_d
    iget-object v0, v1, Lxs7;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 561
    .line 562
    if-eqz v0, :cond_14

    .line 563
    .line 564
    move-object/from16 v1, p1

    .line 565
    .line 566
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 567
    .line 568
    .line 569
    :cond_14
    return-void

    .line 570
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-virtual {v7, v0}, Lorg/swiftapps/swiftbackup/SwiftApp;->c(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    throw v5
.end method
