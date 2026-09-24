.class public final synthetic Lkg;
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
    iput p1, p0, Lkg;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lkg;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lkg;->c:Ljava/lang/Object;

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
    .locals 15

    .line 1
    iget v0, p0, Lkg;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lop8;

    .line 13
    .line 14
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lsv7;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object v2, Luv7;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object v0, Luv7;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lop8;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lsv7;->a:Lrv7;

    .line 53
    .line 54
    iget-object v5, p0, Lsv7;->b:Lrv7;

    .line 55
    .line 56
    iget-object v2, v2, Lop8;->a:Lpp8;

    .line 57
    .line 58
    iget-object v6, v2, Lpp8;->r:Lex6;

    .line 59
    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    sget-object v4, Lvo8;->a:Lvo8;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    new-instance v7, Lxo8;

    .line 66
    .line 67
    if-nez v5, :cond_2

    .line 68
    .line 69
    move-object v5, v4

    .line 70
    :cond_2
    invoke-direct {v7, v4, v5}, Lxo8;-><init>(Lrv7;Lrv7;)V

    .line 71
    .line 72
    .line 73
    move-object v4, v7

    .line 74
    :goto_1
    invoke-virtual {v6, v4}, Lex6;->k(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v4, v2, Lpp8;->p:Landroid/util/SparseIntArray;

    .line 78
    .line 79
    iget-object v2, v2, Lpp8;->n:Lgv7;

    .line 80
    .line 81
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Landroid/app/WallpaperManager;

    .line 86
    .line 87
    invoke-virtual {v5, v3}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Landroid/app/WallpaperManager;

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {v4, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_0
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Landroid/view/MenuItem;

    .line 114
    .line 115
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 118
    .line 119
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 120
    .line 121
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 134
    .line 135
    if-eqz v0, :cond_4

    .line 136
    .line 137
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->b:Lmt3;

    .line 138
    .line 139
    if-eqz p0, :cond_4

    .line 140
    .line 141
    invoke-interface {p0, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    :cond_4
    sget-object p0, Lbe8;->a:Lbe8;

    .line 145
    .line 146
    return-object p0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 150
    .line 151
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p0, Lt22;

    .line 154
    .line 155
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->$r8$lambda$Rj_QcAAEo31zdXJsqOqntcts71A(Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    return-object p0

    .line 160
    :pswitch_2
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v0, Lzc6;

    .line 163
    .line 164
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p0, Lnd6;

    .line 167
    .line 168
    sget-object v1, Lzn4;->a:Lzn4;

    .line 169
    .line 170
    new-instance v1, Lfc2;

    .line 171
    .line 172
    invoke-direct {v1, v0, p0, v4}, Lfc2;-><init>(Lzc6;Lnd6;Ljv1;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v4, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0

    .line 180
    :pswitch_3
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Landroid/app/Activity;

    .line 183
    .line 184
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast p0, Ll30;

    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_5

    .line 193
    .line 194
    invoke-virtual {p0}, Ll30;->invoke()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :cond_5
    sget-object p0, Lbe8;->a:Lbe8;

    .line 198
    .line 199
    return-object p0

    .line 200
    :pswitch_4
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 201
    .line 202
    move-object v1, v0

    .line 203
    check-cast v1, Lqf4;

    .line 204
    .line 205
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p0, Lmt3;

    .line 208
    .line 209
    new-instance v4, Llh6;

    .line 210
    .line 211
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 212
    .line 213
    .line 214
    :try_start_0
    iget-object v0, v1, Lqf4;->c:Lqg1;

    .line 215
    .line 216
    invoke-virtual {v0}, Lqg1;->invoke()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iput-object v0, v4, Llh6;->a:Ljava/lang/Object;

    .line 221
    .line 222
    iget-object v5, v1, Lqf4;->d:Lou;

    .line 223
    .line 224
    invoke-virtual {v5, v0}, Lou;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .line 226
    .line 227
    monitor-enter v1

    .line 228
    :try_start_1
    iget-boolean v0, v1, Lqf4;->h:Z

    .line 229
    .line 230
    if-nez v0, :cond_6

    .line 231
    .line 232
    iget-object v0, v1, Lqf4;->g:Lpf4;

    .line 233
    .line 234
    sget-object v5, Lpf4;->RUNNING:Lpf4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    .line 236
    if-ne v0, v5, :cond_6

    .line 237
    .line 238
    move v2, v3

    .line 239
    goto :goto_2

    .line 240
    :catchall_0
    move-exception v0

    .line 241
    move-object p0, v0

    .line 242
    goto :goto_3

    .line 243
    :cond_6
    :goto_2
    monitor-exit v1

    .line 244
    if-eqz v2, :cond_7

    .line 245
    .line 246
    iget-object v0, v4, Llh6;->a:Ljava/lang/Object;

    .line 247
    .line 248
    invoke-interface {p0, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    throw p0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    move-object p0, v0

    .line 256
    iget-object v0, v1, Lqf4;->b:Lx11;

    .line 257
    .line 258
    new-instance v2, Loj;

    .line 259
    .line 260
    const/4 v3, 0x5

    .line 261
    invoke-direct {v2, v3, v1, v4, p0}, Loj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v2}, Lx11;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    :cond_7
    :goto_4
    sget-object p0, Lbe8;->a:Lbe8;

    .line 268
    .line 269
    return-object p0

    .line 270
    :pswitch_5
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 273
    .line 274
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast p0, Lzc6;

    .line 277
    .line 278
    sget-object v1, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 279
    .line 280
    sget-object v1, Lbe8;->a:Lbe8;

    .line 281
    .line 282
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_8

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_8
    invoke-virtual {p0}, Lzc6;->c()Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-eqz v3, :cond_9

    .line 294
    .line 295
    sget-object v3, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 296
    .line 297
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    if-nez v3, :cond_9

    .line 302
    .line 303
    sget-object p0, Lzn4;->a:Lzn4;

    .line 304
    .line 305
    new-instance p0, Lb56;

    .line 306
    .line 307
    invoke-direct {p0, v0, v2}, Lb56;-><init>(Lk28;I)V

    .line 308
    .line 309
    .line 310
    invoke-static {p0}, Lzn4;->e(Lbt3;)V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_9
    invoke-virtual {v0}, Lil0;->G()Lqo0;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v2, p0}, Lqo0;->g(Lzc6;)V

    .line 319
    .line 320
    .line 321
    :goto_5
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V()V

    .line 322
    .line 323
    .line 324
    :goto_6
    return-object v1

    .line 325
    :pswitch_6
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v0, Lqo0;

    .line 328
    .line 329
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast p0, Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 334
    .line 335
    .line 336
    move-result-wide v5

    .line 337
    if-eqz v0, :cond_a

    .line 338
    .line 339
    const v3, 0x7f13042d

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v3}, Lqo0;->h(I)V

    .line 343
    .line 344
    .line 345
    :cond_a
    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 346
    .line 347
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    new-instance v3, Llw1;

    .line 351
    .line 352
    invoke-direct {v3, v1}, Llw1;-><init>(I)V

    .line 353
    .line 354
    .line 355
    invoke-static {p0, v3}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-eqz v3, :cond_e

    .line 368
    .line 369
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    add-int/lit8 v7, v2, 0x1

    .line 374
    .line 375
    if-ltz v2, :cond_d

    .line 376
    .line 377
    check-cast v3, Lbz3;

    .line 378
    .line 379
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    iget-object v8, v3, Lbz3;->a:Ljava/lang/String;

    .line 384
    .line 385
    const-string v9, "Deleting GMS files "

    .line 386
    .line 387
    const-string v10, "/"

    .line 388
    .line 389
    const-string v11, "\n\n"

    .line 390
    .line 391
    invoke-static {v9, v7, v10, v11, v2}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    if-eqz v0, :cond_b

    .line 403
    .line 404
    invoke-virtual {v0, v2}, Lqo0;->i(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    :cond_b
    sget-object v2, Lg00;->a:Lg00;

    .line 408
    .line 409
    iget-object v2, v3, Lbz3;->b:Ljava/lang/String;

    .line 410
    .line 411
    invoke-static {v2}, Lg00;->g(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iget-object v2, v3, Lbz3;->c:Ljava/util/List;

    .line 415
    .line 416
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    if-eqz v3, :cond_c

    .line 425
    .line 426
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    check-cast v3, Lq63;

    .line 431
    .line 432
    invoke-virtual {v3}, Lq63;->h()Z

    .line 433
    .line 434
    .line 435
    goto :goto_8

    .line 436
    :cond_c
    move v2, v7

    .line 437
    goto :goto_7

    .line 438
    :cond_d
    invoke-static {}, Lfl1;->F0()V

    .line 439
    .line 440
    .line 441
    throw v4

    .line 442
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 443
    .line 444
    .line 445
    move-result-wide v1

    .line 446
    sub-long/2addr v1, v5

    .line 447
    const-wide/16 v3, 0x3e8

    .line 448
    .line 449
    cmp-long p0, v1, v3

    .line 450
    .line 451
    if-gez p0, :cond_f

    .line 452
    .line 453
    sub-long/2addr v3, v1

    .line 454
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 455
    .line 456
    .line 457
    :catch_1
    :cond_f
    if-eqz v0, :cond_10

    .line 458
    .line 459
    invoke-virtual {v0}, Lqo0;->f()V

    .line 460
    .line 461
    .line 462
    :cond_10
    sget-object p0, Lbe8;->a:Lbe8;

    .line 463
    .line 464
    return-object p0

    .line 465
    :pswitch_7
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v0, Ldm3;

    .line 468
    .line 469
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast p0, Luy7;

    .line 472
    .line 473
    new-instance v1, Lbo3;

    .line 474
    .line 475
    invoke-virtual {v0}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    iget-object v3, p0, Luy7;->f:Ljava/util/List;

    .line 480
    .line 481
    iget-object v5, p0, Luy7;->g:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 482
    .line 483
    invoke-direct {v1, v2, v3, v4, v5}, Lbo3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/util/List;Lkj3;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;)V

    .line 484
    .line 485
    .line 486
    new-instance v2, Loj;

    .line 487
    .line 488
    const/4 v3, 0x4

    .line 489
    invoke-direct {v2, v3, v1, p0, v0}, Loj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    invoke-static {v2}, Lzn4;->c(Lbt3;)V

    .line 493
    .line 494
    .line 495
    sget-object p0, Lbe8;->a:Lbe8;

    .line 496
    .line 497
    return-object p0

    .line 498
    :pswitch_8
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 499
    .line 500
    move-object v1, v0

    .line 501
    check-cast v1, Lo23;

    .line 502
    .line 503
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast p0, Ljava/lang/String;

    .line 506
    .line 507
    const-string v5, ". Reply="

    .line 508
    .line 509
    invoke-static {p0}, Lo23;->F(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1, p0}, Lo23;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    :try_start_4
    invoke-virtual {v1, p0}, Lo23;->A(Ljava/lang/String;)Lg23;

    .line 517
    .line 518
    .line 519
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 520
    goto :goto_9

    .line 521
    :catch_2
    move-exception v0

    .line 522
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 523
    .line 524
    const-string v8, "FTPService"

    .line 525
    .line 526
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    const-string v9, "getFile: "

    .line 531
    .line 532
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v9

    .line 536
    const/4 v11, 0x4

    .line 537
    const/4 v12, 0x0

    .line 538
    const/4 v10, 0x0

    .line 539
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 540
    .line 541
    .line 542
    move-object v0, v4

    .line 543
    :goto_9
    if-eqz v0, :cond_15

    .line 544
    .line 545
    iget v0, v0, Lg23;->a:I

    .line 546
    .line 547
    if-ne v0, v3, :cond_13

    .line 548
    .line 549
    invoke-virtual {v1, v2}, Lo23;->z(Z)Ld23;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    invoke-virtual {v1, v0, v6}, Lo23;->B(Ld23;Ljava/lang/String;)[Lg23;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-static {v0}, Lxh8;->G([Lg23;)Ljava/util/ArrayList;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 566
    .line 567
    .line 568
    move-result v3

    .line 569
    if-eqz v3, :cond_11

    .line 570
    .line 571
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    check-cast v3, Lg23;

    .line 576
    .line 577
    iget-object v3, v3, Lg23;->d:Ljava/lang/String;

    .line 578
    .line 579
    new-instance v7, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    const-string v8, "/"

    .line 588
    .line 589
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    invoke-virtual {v1, v3}, Lo23;->j(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    goto :goto_a

    .line 603
    :cond_11
    invoke-virtual {v1, v2}, Lo23;->z(Z)Ld23;

    .line 604
    .line 605
    .line 606
    move-result-object p0

    .line 607
    const-string v0, "RMD"

    .line 608
    .line 609
    invoke-virtual {p0, v0, v6}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    invoke-static {v0}, Lk55;->x(I)Z

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    if-eqz v0, :cond_12

    .line 618
    .line 619
    goto :goto_b

    .line 620
    :cond_12
    invoke-virtual {p0}, Lz13;->i()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object p0

    .line 624
    const-string v0, "Failed to removeDirectory at "

    .line 625
    .line 626
    invoke-static {v0, v6, v5, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object p0

    .line 630
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 631
    .line 632
    .line 633
    goto :goto_c

    .line 634
    :cond_13
    invoke-virtual {v1, v2}, Lo23;->z(Z)Ld23;

    .line 635
    .line 636
    .line 637
    move-result-object p0

    .line 638
    const-string v0, "DELE"

    .line 639
    .line 640
    invoke-virtual {p0, v0, v6}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    .line 642
    .line 643
    move-result v0

    .line 644
    invoke-static {v0}, Lk55;->x(I)Z

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    if-eqz v0, :cond_14

    .line 649
    .line 650
    :goto_b
    sget-object v4, Lbe8;->a:Lbe8;

    .line 651
    .line 652
    goto :goto_c

    .line 653
    :cond_14
    invoke-virtual {p0}, Lz13;->i()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object p0

    .line 657
    const-string v0, "Failed to deleteFile at "

    .line 658
    .line 659
    invoke-static {v0, v6, v5, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object p0

    .line 663
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 664
    .line 665
    .line 666
    :cond_15
    :goto_c
    return-object v4

    .line 667
    :pswitch_9
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 668
    .line 669
    check-cast v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 670
    .line 671
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 672
    .line 673
    check-cast p0, Liz4;

    .line 674
    .line 675
    sget v1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 676
    .line 677
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 682
    .line 683
    .line 684
    new-instance v1, Ljava/util/ArrayList;

    .line 685
    .line 686
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .line 688
    .line 689
    invoke-virtual {p0}, Liz4;->hasApk()Z

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    if-eqz v2, :cond_16

    .line 694
    .line 695
    sget-object v2, Liu;->APP:Liu;

    .line 696
    .line 697
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    :cond_16
    invoke-virtual {p0}, Liz4;->hasData()Z

    .line 701
    .line 702
    .line 703
    move-result v2

    .line 704
    if-eqz v2, :cond_17

    .line 705
    .line 706
    sget-object v2, Liu;->DATA:Liu;

    .line 707
    .line 708
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    :cond_17
    invoke-virtual {p0}, Liz4;->hasExtData()Z

    .line 712
    .line 713
    .line 714
    move-result v2

    .line 715
    if-eqz v2, :cond_18

    .line 716
    .line 717
    sget-object v2, Liu;->EXTDATA:Liu;

    .line 718
    .line 719
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    :cond_18
    invoke-virtual {p0}, Liz4;->hasMedia()Z

    .line 723
    .line 724
    .line 725
    move-result v2

    .line 726
    if-eqz v2, :cond_19

    .line 727
    .line 728
    sget-object v2, Liu;->MEDIA:Liu;

    .line 729
    .line 730
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    :cond_19
    invoke-virtual {p0}, Liz4;->hasExpansion()Z

    .line 734
    .line 735
    .line 736
    move-result v2

    .line 737
    if-eqz v2, :cond_1a

    .line 738
    .line 739
    sget-object v2, Liu;->EXPANSION:Liu;

    .line 740
    .line 741
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    :cond_1a
    invoke-virtual {p0}, Liz4;->getBackup()Lgm;

    .line 745
    .line 746
    .line 747
    move-result-object p0

    .line 748
    iget-object p0, p0, Lgm;->a:Lhk;

    .line 749
    .line 750
    invoke-virtual {v0, v1, p0}, Lmk2;->m(Ljava/util/List;Lhk;)V

    .line 751
    .line 752
    .line 753
    sget-object p0, Lbe8;->a:Lbe8;

    .line 754
    .line 755
    return-object p0

    .line 756
    :pswitch_a
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 757
    .line 758
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 759
    .line 760
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 761
    .line 762
    check-cast p0, Lc12;

    .line 763
    .line 764
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$1xal5EcOrqxKwSMl2tXgYESvv4g(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Lc12;)Lbe8;

    .line 765
    .line 766
    .line 767
    move-result-object p0

    .line 768
    return-object p0

    .line 769
    :pswitch_b
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 770
    .line 771
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 772
    .line 773
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 774
    .line 775
    check-cast p0, Lwv3;

    .line 776
    .line 777
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$eTZAmLqkj1qZUxDjGlpLTelvv2c(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;Lwv3;)Lbe8;

    .line 778
    .line 779
    .line 780
    move-result-object p0

    .line 781
    return-object p0

    .line 782
    :pswitch_c
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 783
    .line 784
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;

    .line 785
    .line 786
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 787
    .line 788
    check-cast p0, Lk12;

    .line 789
    .line 790
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$7Pbaj8QY0qWYXijdVr1avx6m7cE(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Lk12;)Lbe8;

    .line 791
    .line 792
    .line 793
    move-result-object p0

    .line 794
    return-object p0

    .line 795
    :pswitch_d
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 796
    .line 797
    check-cast v0, Lt10;

    .line 798
    .line 799
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 800
    .line 801
    move-object v5, p0

    .line 802
    check-cast v5, Ljava/util/ArrayList;

    .line 803
    .line 804
    iget-object p0, v0, Lt10;->Q:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 805
    .line 806
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 807
    .line 808
    .line 809
    move-result p0

    .line 810
    if-nez p0, :cond_1b

    .line 811
    .line 812
    iget-object p0, v0, Lt10;->S:Lgv7;

    .line 813
    .line 814
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object p0

    .line 818
    check-cast p0, Lr10;

    .line 819
    .line 820
    new-instance v4, Lfm7;

    .line 821
    .line 822
    const/4 v8, 0x0

    .line 823
    const/16 v9, 0x1e

    .line 824
    .line 825
    const/4 v6, 0x0

    .line 826
    const/4 v7, 0x0

    .line 827
    invoke-direct/range {v4 .. v9}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {p0, v4, v3}, Lgm7;->w(Lfm7;Z)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v0}, Lu35;->isShowing()Z

    .line 834
    .line 835
    .line 836
    move-result p0

    .line 837
    if-nez p0, :cond_1b

    .line 838
    .line 839
    invoke-virtual {v0}, Lu35;->show()V

    .line 840
    .line 841
    .line 842
    :cond_1b
    sget-object p0, Lbe8;->a:Lbe8;

    .line 843
    .line 844
    return-object p0

    .line 845
    :pswitch_e
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 846
    .line 847
    move-object v1, v0

    .line 848
    check-cast v1, Ltt;

    .line 849
    .line 850
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 851
    .line 852
    check-cast p0, Lik6;

    .line 853
    .line 854
    iget-object v0, v1, La55;->b:Ljava/lang/String;

    .line 855
    .line 856
    iget-object v2, p0, Lik6;->d:Ljava/lang/Object;

    .line 857
    .line 858
    check-cast v2, Lhk6;

    .line 859
    .line 860
    new-instance v3, Ljava/lang/StringBuilder;

    .line 861
    .line 862
    const-string v5, "RepositoryListener.onResult: "

    .line 863
    .line 864
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v2

    .line 874
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    .line 876
    .line 877
    const-string v0, "analyseRepositoryResult: "

    .line 878
    .line 879
    monitor-enter v1

    .line 880
    :try_start_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 881
    .line 882
    .line 883
    move-result-object v2

    .line 884
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 885
    .line 886
    .line 887
    move-result-object v3

    .line 888
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 889
    .line 890
    .line 891
    move-result v2

    .line 892
    if-nez v2, :cond_37

    .line 893
    .line 894
    iget-object v2, v1, La55;->b:Ljava/lang/String;

    .line 895
    .line 896
    new-instance v3, Ljava/lang/StringBuilder;

    .line 897
    .line 898
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 902
    .line 903
    .line 904
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v0

    .line 908
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    .line 910
    .line 911
    iget-object v0, p0, Lik6;->d:Ljava/lang/Object;

    .line 912
    .line 913
    check-cast v0, Lhk6;

    .line 914
    .line 915
    sget-object v2, Lrt;->a:[I

    .line 916
    .line 917
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 918
    .line 919
    .line 920
    move-result v0

    .line 921
    aget v0, v2, v0

    .line 922
    .line 923
    packed-switch v0, :pswitch_data_1

    .line 924
    .line 925
    .line 926
    new-instance p0, Lmn5;

    .line 927
    .line 928
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 929
    .line 930
    .line 931
    throw p0

    .line 932
    :catchall_1
    move-exception v0

    .line 933
    move-object p0, v0

    .line 934
    goto/16 :goto_27

    .line 935
    .line 936
    :pswitch_f
    sget-object v0, Lot;->a:Lot;

    .line 937
    .line 938
    new-instance v2, Ljava/util/ArrayList;

    .line 939
    .line 940
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 941
    .line 942
    .line 943
    iget-boolean p0, p0, Lik6;->b:Z

    .line 944
    .line 945
    invoke-virtual {v1, v0, v2, p0}, Ltt;->n(Lqt;Ljava/util/List;Z)V

    .line 946
    .line 947
    .line 948
    goto/16 :goto_25

    .line 949
    .line 950
    :pswitch_10
    sget-object v0, Ljt;->a:Ljt;

    .line 951
    .line 952
    new-instance v2, Ljava/util/ArrayList;

    .line 953
    .line 954
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 955
    .line 956
    .line 957
    iget-boolean p0, p0, Lik6;->b:Z

    .line 958
    .line 959
    invoke-virtual {v1, v0, v2, p0}, Ltt;->n(Lqt;Ljava/util/List;Z)V

    .line 960
    .line 961
    .line 962
    goto/16 :goto_25

    .line 963
    .line 964
    :pswitch_11
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 965
    .line 966
    const-string v0, "DriveNotConnected not implemented for analyseRepositoryResult"

    .line 967
    .line 968
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    throw p0

    .line 972
    :pswitch_12
    sget-object v0, Lkt;->a:Lkt;

    .line 973
    .line 974
    new-instance v2, Ljava/util/ArrayList;

    .line 975
    .line 976
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .line 978
    .line 979
    iget-boolean p0, p0, Lik6;->b:Z

    .line 980
    .line 981
    invoke-virtual {v1, v0, v2, p0}, Ltt;->n(Lqt;Ljava/util/List;Z)V

    .line 982
    .line 983
    .line 984
    goto/16 :goto_25

    .line 985
    .line 986
    :pswitch_13
    iget-object v0, p0, Lik6;->c:Ljava/lang/Object;

    .line 987
    .line 988
    move-object v5, v0

    .line 989
    check-cast v5, Ljava/util/List;

    .line 990
    .line 991
    iget-boolean v6, v1, Let;->e:Z

    .line 992
    .line 993
    invoke-static {}, Ldd3;->e()Lcd3;

    .line 994
    .line 995
    .line 996
    move-result-object v7

    .line 997
    invoke-static {}, Lge3;->e()Lfe3;

    .line 998
    .line 999
    .line 1000
    move-result-object v8

    .line 1001
    sget-object v0, Lud3;->a:Lud3;

    .line 1002
    .line 1003
    invoke-virtual {v0}, Lud3;->f()Ltd3;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v9

    .line 1007
    const-string v0, "key_filter_app_backup"

    .line 1008
    .line 1009
    sget-object v2, Lfd3;->All:Lfd3;

    .line 1010
    .line 1011
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1015
    :try_start_6
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1016
    .line 1017
    if-eqz v3, :cond_1c

    .line 1018
    .line 1019
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v2

    .line 1023
    goto :goto_d

    .line 1024
    :cond_1c
    const-string v0, "prefs"

    .line 1025
    .line 1026
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    throw v4
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1030
    :catch_3
    :goto_d
    if-eqz v2, :cond_20

    .line 1031
    .line 1032
    :try_start_7
    invoke-static {}, Lfd3;->getEntries()Ljx2;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    check-cast v0, Lz3;

    .line 1037
    .line 1038
    invoke-virtual {v0}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v0

    .line 1042
    :cond_1d
    move-object v3, v0

    .line 1043
    check-cast v3, Lw3;

    .line 1044
    .line 1045
    invoke-virtual {v3}, Lw3;->hasNext()Z

    .line 1046
    .line 1047
    .line 1048
    move-result v10

    .line 1049
    if-eqz v10, :cond_1e

    .line 1050
    .line 1051
    invoke-virtual {v3}, Lw3;->next()Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v3

    .line 1055
    move-object v10, v3

    .line 1056
    check-cast v10, Lfd3;

    .line 1057
    .line 1058
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v10

    .line 1062
    invoke-static {v10, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1063
    .line 1064
    .line 1065
    move-result v10

    .line 1066
    if-eqz v10, :cond_1d

    .line 1067
    .line 1068
    goto :goto_e

    .line 1069
    :cond_1e
    move-object v3, v4

    .line 1070
    :goto_e
    check-cast v3, Lfd3;

    .line 1071
    .line 1072
    if-nez v3, :cond_1f

    .line 1073
    .line 1074
    goto :goto_10

    .line 1075
    :cond_1f
    :goto_f
    move-object v10, v3

    .line 1076
    goto :goto_11

    .line 1077
    :cond_20
    :goto_10
    sget-object v3, Lfd3;->All:Lfd3;

    .line 1078
    .line 1079
    goto :goto_f

    .line 1080
    :goto_11
    const-string v0, "key_filter_favorites"

    .line 1081
    .line 1082
    sget-object v2, Lld3;->All:Lld3;

    .line 1083
    .line 1084
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1088
    :try_start_8
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1089
    .line 1090
    if-eqz v3, :cond_21

    .line 1091
    .line 1092
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v2

    .line 1096
    goto :goto_12

    .line 1097
    :cond_21
    const-string v0, "prefs"

    .line 1098
    .line 1099
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 1100
    .line 1101
    .line 1102
    throw v4
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1103
    :catch_4
    :goto_12
    if-eqz v2, :cond_25

    .line 1104
    .line 1105
    :try_start_9
    invoke-static {}, Lld3;->getEntries()Ljx2;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    check-cast v0, Lz3;

    .line 1110
    .line 1111
    invoke-virtual {v0}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    :cond_22
    move-object v3, v0

    .line 1116
    check-cast v3, Lw3;

    .line 1117
    .line 1118
    invoke-virtual {v3}, Lw3;->hasNext()Z

    .line 1119
    .line 1120
    .line 1121
    move-result v11

    .line 1122
    if-eqz v11, :cond_23

    .line 1123
    .line 1124
    invoke-virtual {v3}, Lw3;->next()Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v3

    .line 1128
    move-object v11, v3

    .line 1129
    check-cast v11, Lld3;

    .line 1130
    .line 1131
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v11

    .line 1135
    invoke-static {v11, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1136
    .line 1137
    .line 1138
    move-result v11

    .line 1139
    if-eqz v11, :cond_22

    .line 1140
    .line 1141
    goto :goto_13

    .line 1142
    :cond_23
    move-object v3, v4

    .line 1143
    :goto_13
    check-cast v3, Lld3;

    .line 1144
    .line 1145
    if-nez v3, :cond_24

    .line 1146
    .line 1147
    goto :goto_15

    .line 1148
    :cond_24
    :goto_14
    move-object v11, v3

    .line 1149
    goto :goto_16

    .line 1150
    :cond_25
    :goto_15
    sget-object v3, Lld3;->All:Lld3;

    .line 1151
    .line 1152
    goto :goto_14

    .line 1153
    :goto_16
    const-string v0, "key_filter_app_install"

    .line 1154
    .line 1155
    sget-object v2, Lqd3;->All:Lqd3;

    .line 1156
    .line 1157
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1161
    :try_start_a
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1162
    .line 1163
    if-eqz v3, :cond_26

    .line 1164
    .line 1165
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v2

    .line 1169
    goto :goto_17

    .line 1170
    :cond_26
    const-string v0, "prefs"

    .line 1171
    .line 1172
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    throw v4
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1176
    :catch_5
    :goto_17
    if-eqz v2, :cond_2a

    .line 1177
    .line 1178
    :try_start_b
    invoke-static {}, Lqd3;->getEntries()Ljx2;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v0

    .line 1182
    check-cast v0, Lz3;

    .line 1183
    .line 1184
    invoke-virtual {v0}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v0

    .line 1188
    :cond_27
    move-object v3, v0

    .line 1189
    check-cast v3, Lw3;

    .line 1190
    .line 1191
    invoke-virtual {v3}, Lw3;->hasNext()Z

    .line 1192
    .line 1193
    .line 1194
    move-result v12

    .line 1195
    if-eqz v12, :cond_28

    .line 1196
    .line 1197
    invoke-virtual {v3}, Lw3;->next()Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v3

    .line 1201
    move-object v12, v3

    .line 1202
    check-cast v12, Lqd3;

    .line 1203
    .line 1204
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v12

    .line 1208
    invoke-static {v12, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1209
    .line 1210
    .line 1211
    move-result v12

    .line 1212
    if-eqz v12, :cond_27

    .line 1213
    .line 1214
    goto :goto_18

    .line 1215
    :cond_28
    move-object v3, v4

    .line 1216
    :goto_18
    check-cast v3, Lqd3;

    .line 1217
    .line 1218
    if-nez v3, :cond_29

    .line 1219
    .line 1220
    goto :goto_1a

    .line 1221
    :cond_29
    :goto_19
    move-object v12, v3

    .line 1222
    goto :goto_1b

    .line 1223
    :cond_2a
    :goto_1a
    sget-object v3, Lqd3;->All:Lqd3;

    .line 1224
    .line 1225
    goto :goto_19

    .line 1226
    :goto_1b
    const-string v0, "key_filter_app_enabled"

    .line 1227
    .line 1228
    sget-object v2, Lid3;->All:Lid3;

    .line 1229
    .line 1230
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1234
    :try_start_c
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1235
    .line 1236
    if-eqz v3, :cond_2b

    .line 1237
    .line 1238
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v2

    .line 1242
    goto :goto_1c

    .line 1243
    :cond_2b
    const-string v0, "prefs"

    .line 1244
    .line 1245
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 1246
    .line 1247
    .line 1248
    throw v4
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1249
    :catch_6
    :goto_1c
    if-eqz v2, :cond_2f

    .line 1250
    .line 1251
    :try_start_d
    invoke-static {}, Lid3;->getEntries()Ljx2;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    check-cast v0, Lz3;

    .line 1256
    .line 1257
    invoke-virtual {v0}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v0

    .line 1261
    :cond_2c
    move-object v3, v0

    .line 1262
    check-cast v3, Lw3;

    .line 1263
    .line 1264
    invoke-virtual {v3}, Lw3;->hasNext()Z

    .line 1265
    .line 1266
    .line 1267
    move-result v13

    .line 1268
    if-eqz v13, :cond_2d

    .line 1269
    .line 1270
    invoke-virtual {v3}, Lw3;->next()Ljava/lang/Object;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v3

    .line 1274
    move-object v13, v3

    .line 1275
    check-cast v13, Lid3;

    .line 1276
    .line 1277
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v13

    .line 1281
    invoke-static {v13, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1282
    .line 1283
    .line 1284
    move-result v13

    .line 1285
    if-eqz v13, :cond_2c

    .line 1286
    .line 1287
    goto :goto_1d

    .line 1288
    :cond_2d
    move-object v3, v4

    .line 1289
    :goto_1d
    check-cast v3, Lid3;

    .line 1290
    .line 1291
    if-nez v3, :cond_2e

    .line 1292
    .line 1293
    goto :goto_1f

    .line 1294
    :cond_2e
    :goto_1e
    move-object v13, v3

    .line 1295
    goto :goto_20

    .line 1296
    :cond_2f
    :goto_1f
    sget-object v3, Lid3;->All:Lid3;

    .line 1297
    .line 1298
    goto :goto_1e

    .line 1299
    :goto_20
    const-string v0, "key_filter_app_backup_age"

    .line 1300
    .line 1301
    sget-object v2, Lzd3;->All:Lzd3;

    .line 1302
    .line 1303
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1307
    :try_start_e
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1308
    .line 1309
    if-eqz v3, :cond_30

    .line 1310
    .line 1311
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v2

    .line 1315
    goto :goto_21

    .line 1316
    :cond_30
    const-string v0, "prefs"

    .line 1317
    .line 1318
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    throw v4
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1322
    :catch_7
    :goto_21
    if-eqz v2, :cond_34

    .line 1323
    .line 1324
    :try_start_f
    invoke-static {}, Lzd3;->getEntries()Ljx2;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v0

    .line 1328
    check-cast v0, Lz3;

    .line 1329
    .line 1330
    invoke-virtual {v0}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v0

    .line 1334
    :cond_31
    move-object v3, v0

    .line 1335
    check-cast v3, Lw3;

    .line 1336
    .line 1337
    invoke-virtual {v3}, Lw3;->hasNext()Z

    .line 1338
    .line 1339
    .line 1340
    move-result v14

    .line 1341
    if-eqz v14, :cond_32

    .line 1342
    .line 1343
    invoke-virtual {v3}, Lw3;->next()Ljava/lang/Object;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v3

    .line 1347
    move-object v14, v3

    .line 1348
    check-cast v14, Lzd3;

    .line 1349
    .line 1350
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v14

    .line 1354
    invoke-static {v14, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1355
    .line 1356
    .line 1357
    move-result v14

    .line 1358
    if-eqz v14, :cond_31

    .line 1359
    .line 1360
    move-object v4, v3

    .line 1361
    :cond_32
    check-cast v4, Lzd3;

    .line 1362
    .line 1363
    if-nez v4, :cond_33

    .line 1364
    .line 1365
    goto :goto_23

    .line 1366
    :cond_33
    :goto_22
    move-object v14, v4

    .line 1367
    goto :goto_24

    .line 1368
    :cond_34
    :goto_23
    sget-object v4, Lzd3;->All:Lzd3;

    .line 1369
    .line 1370
    goto :goto_22

    .line 1371
    :goto_24
    invoke-static/range {v5 .. v14}, Lqq;->a(Ljava/util/List;ZLcd3;Lfe3;Ltd3;Lfd3;Lld3;Lqd3;Lid3;Lzd3;)Ljava/util/ArrayList;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v0

    .line 1375
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1376
    .line 1377
    .line 1378
    move-result v2

    .line 1379
    if-eqz v2, :cond_35

    .line 1380
    .line 1381
    sget-object v0, Llt;->a:Llt;

    .line 1382
    .line 1383
    new-instance v2, Ljava/util/ArrayList;

    .line 1384
    .line 1385
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    .line 1387
    .line 1388
    iget-boolean p0, p0, Lik6;->b:Z

    .line 1389
    .line 1390
    invoke-virtual {v1, v0, v2, p0}, Ltt;->n(Lqt;Ljava/util/List;Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1391
    .line 1392
    .line 1393
    monitor-exit v1

    .line 1394
    goto :goto_26

    .line 1395
    :cond_35
    :try_start_10
    sget-object v2, Liy;->a:Liy;

    .line 1396
    .line 1397
    iget-boolean v3, v1, Let;->e:Z

    .line 1398
    .line 1399
    invoke-virtual {v2, v0, v3}, Liy;->e(Ljava/util/List;Z)Ljava/util/List;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v0

    .line 1403
    iget-boolean v2, v1, Ltt;->k:Z

    .line 1404
    .line 1405
    if-eqz v2, :cond_36

    .line 1406
    .line 1407
    iget-object v2, v1, Ltt;->l:Ljava/lang/String;

    .line 1408
    .line 1409
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1410
    .line 1411
    .line 1412
    move-result v2

    .line 1413
    if-lez v2, :cond_36

    .line 1414
    .line 1415
    iget-object p0, v1, Ltt;->l:Ljava/lang/String;

    .line 1416
    .line 1417
    invoke-virtual {v1, p0, v0}, Ltt;->m(Ljava/lang/String;Ljava/util/List;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1418
    .line 1419
    .line 1420
    monitor-exit v1

    .line 1421
    goto :goto_26

    .line 1422
    :cond_36
    :try_start_11
    sget-object v2, Lpt;->a:Lpt;

    .line 1423
    .line 1424
    new-instance v3, Ljava/util/ArrayList;

    .line 1425
    .line 1426
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1427
    .line 1428
    .line 1429
    iget-boolean p0, p0, Lik6;->b:Z

    .line 1430
    .line 1431
    invoke-virtual {v1, v2, v3, p0}, Ltt;->n(Lqt;Ljava/util/List;Z)V

    .line 1432
    .line 1433
    .line 1434
    goto :goto_25

    .line 1435
    :pswitch_14
    sget-object v0, Lnt;->a:Lnt;

    .line 1436
    .line 1437
    new-instance v2, Ljava/util/ArrayList;

    .line 1438
    .line 1439
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    .line 1441
    .line 1442
    iget-boolean p0, p0, Lik6;->b:Z

    .line 1443
    .line 1444
    invoke-virtual {v1, v0, v2, p0}, Ltt;->n(Lqt;Ljava/util/List;Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1445
    .line 1446
    .line 1447
    :goto_25
    monitor-exit v1

    .line 1448
    :goto_26
    invoke-virtual {v1}, Ltt;->l()V

    .line 1449
    .line 1450
    .line 1451
    sget-object p0, Lbe8;->a:Lbe8;

    .line 1452
    .line 1453
    return-object p0

    .line 1454
    :cond_37
    :try_start_12
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    .line 1455
    .line 1456
    const-string v0, "Method called from main thread"

    .line 1457
    .line 1458
    invoke-direct {p0, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    .line 1459
    .line 1460
    .line 1461
    throw p0

    .line 1462
    :goto_27
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1463
    throw p0

    .line 1464
    :pswitch_15
    iget-object v0, p0, Lkg;->b:Ljava/lang/Object;

    .line 1465
    .line 1466
    move-object v1, v0

    .line 1467
    check-cast v1, Lmg;

    .line 1468
    .line 1469
    iget-object p0, p0, Lkg;->c:Ljava/lang/Object;

    .line 1470
    .line 1471
    check-cast p0, Lzf;

    .line 1472
    .line 1473
    :try_start_13
    new-instance v0, Lbi;

    .line 1474
    .line 1475
    iget-object v2, p0, Lzf;->b:Ljava/util/List;

    .line 1476
    .line 1477
    iget-object v3, p0, Lzf;->c:Ljava/util/List;

    .line 1478
    .line 1479
    iget-object v5, p0, Lzf;->d:Ljava/lang/String;

    .line 1480
    .line 1481
    invoke-direct {v0, v5, v2, v3}, Lbi;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1482
    .line 1483
    .line 1484
    invoke-static {v0}, Lgi;->a(Lbi;)Lfi;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1488
    goto :goto_28

    .line 1489
    :catchall_2
    move-exception v0

    .line 1490
    new-instance v2, Lbn6;

    .line 1491
    .line 1492
    invoke-direct {v2, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 1493
    .line 1494
    .line 1495
    move-object v0, v2

    .line 1496
    :goto_28
    nop

    .line 1497
    instance-of v2, v0, Lbn6;

    .line 1498
    .line 1499
    if-nez v2, :cond_3b

    .line 1500
    .line 1501
    move-object v2, v0

    .line 1502
    check-cast v2, Lfi;

    .line 1503
    .line 1504
    instance-of v3, v2, Lei;

    .line 1505
    .line 1506
    if-eqz v3, :cond_38

    .line 1507
    .line 1508
    invoke-virtual {v1, p0}, Lmg;->j(Lzf;)V

    .line 1509
    .line 1510
    .line 1511
    new-instance v3, Lhg;

    .line 1512
    .line 1513
    invoke-virtual {v1}, Lmg;->l()Lbg;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v4

    .line 1517
    check-cast v2, Lei;

    .line 1518
    .line 1519
    iget-object v2, v2, Lei;->a:Ljava/lang/String;

    .line 1520
    .line 1521
    invoke-direct {v3, v4, v2}, Lhg;-><init>(Lbg;Ljava/lang/String;)V

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual {v1, v3}, Lmg;->o(Lig;)V

    .line 1525
    .line 1526
    .line 1527
    goto :goto_29

    .line 1528
    :cond_38
    instance-of v3, v2, Lci;

    .line 1529
    .line 1530
    if-eqz v3, :cond_39

    .line 1531
    .line 1532
    invoke-virtual {v1, p0}, Lmg;->j(Lzf;)V

    .line 1533
    .line 1534
    .line 1535
    new-instance v3, Leg;

    .line 1536
    .line 1537
    invoke-virtual {v1}, Lmg;->l()Lbg;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v4

    .line 1541
    check-cast v2, Lci;

    .line 1542
    .line 1543
    iget-object v2, v2, Lci;->a:Lcw5;

    .line 1544
    .line 1545
    invoke-direct {v3, v4, v2}, Leg;-><init>(Lbg;Lcw5;)V

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual {v1, v3}, Lmg;->o(Lig;)V

    .line 1549
    .line 1550
    .line 1551
    goto :goto_29

    .line 1552
    :cond_39
    sget-object v3, Ldi;->a:Ldi;

    .line 1553
    .line 1554
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1555
    .line 1556
    .line 1557
    move-result v2

    .line 1558
    if-eqz v2, :cond_3a

    .line 1559
    .line 1560
    iget-object v2, v1, Lmg;->f:Lix6;

    .line 1561
    .line 1562
    invoke-virtual {v2, p0}, Lix6;->k(Ljava/lang/Object;)V

    .line 1563
    .line 1564
    .line 1565
    goto :goto_29

    .line 1566
    :cond_3a
    invoke-static {}, Lq;->j()V

    .line 1567
    .line 1568
    .line 1569
    goto :goto_2a

    .line 1570
    :cond_3b
    :goto_29
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v0

    .line 1574
    if-eqz v0, :cond_3c

    .line 1575
    .line 1576
    invoke-virtual {v1, p0}, Lmg;->j(Lzf;)V

    .line 1577
    .line 1578
    .line 1579
    new-instance p0, Leg;

    .line 1580
    .line 1581
    invoke-virtual {v1}, Lmg;->l()Lbg;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v2

    .line 1585
    new-instance v3, Lcw5;

    .line 1586
    .line 1587
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1588
    .line 1589
    const v4, 0x7f130047

    .line 1590
    .line 1591
    .line 1592
    invoke-static {v4}, Ldj7;->g(I)Ljava/lang/String;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v4

    .line 1596
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v0

    .line 1600
    invoke-direct {v3, v4, v0}, Lcw5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    .line 1602
    .line 1603
    invoke-direct {p0, v2, v3}, Leg;-><init>(Lbg;Lcw5;)V

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v1, p0}, Lmg;->o(Lig;)V

    .line 1607
    .line 1608
    .line 1609
    :cond_3c
    sget-object v4, Lbe8;->a:Lbe8;

    .line 1610
    .line 1611
    :goto_2a
    return-object v4

    .line 1612
    nop

    .line 1613
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
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

    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method
