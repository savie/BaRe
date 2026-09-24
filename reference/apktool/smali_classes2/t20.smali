.class public final synthetic Lt20;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lt20;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lt20;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lt20;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    .line 1
    iget p1, p0, Lt20;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/16 v1, 0xe

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lt20;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lpj2;

    .line 14
    .line 15
    iget-object p0, p0, Lt20;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lwj2;

    .line 18
    .line 19
    iget-object v6, p1, Lpj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 20
    .line 21
    iget-object v0, v6, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->S:Lgv7;

    .line 22
    .line 23
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move-object v5, v0

    .line 28
    check-cast v5, Lxi0;

    .line 29
    .line 30
    iget-object p0, p0, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    iget-object p1, p1, Lpj2;->b:Lmk2;

    .line 37
    .line 38
    invoke-virtual {p1}, Lmk2;->k()Lji;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lji;->isInstalled()Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    invoke-virtual {p1}, Lmk2;->k()Lji;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lji;->isBundled()Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    new-instance v10, Lcd;

    .line 55
    .line 56
    const/4 p1, 0x4

    .line 57
    invoke-direct {v10, p1, v2, p0}, Lcd;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v11, v6, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->a0:Lfu;

    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    if-nez v8, :cond_0

    .line 72
    .line 73
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasApk()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_0

    .line 78
    .line 79
    new-instance p0, Lnj0;

    .line 80
    .line 81
    invoke-direct {p0}, Lnj0;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, p0, v3, v10, v11}, Lxi0;->f(Lpj0;ZLcd;Lri0;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    sget-object p0, Lzn4;->a:Lzn4;

    .line 89
    .line 90
    new-instance v4, Lvi0;

    .line 91
    .line 92
    const/4 v12, 0x0

    .line 93
    invoke-direct/range {v4 .. v12}, Lvi0;-><init>(Lxi0;Landroid/app/Activity;ZZLorg/swiftapps/swiftbackup/model/app/CloudMetadata;Lcd;Lri0;Ljv1;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v4}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object p1, p0, Lt20;->b:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 103
    .line 104
    iget-object p0, p0, Lt20;->c:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 107
    .line 108
    sget v4, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 109
    .line 110
    invoke-static {p1, v3}, Lsq1;->a(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_1

    .line 115
    .line 116
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    sget-object v5, Lbr1;->a:Lbr1;

    .line 124
    .line 125
    monitor-enter v5

    .line 126
    :try_start_0
    sget-object v6, Lzn4;->a:Lzn4;

    .line 127
    .line 128
    new-instance v6, Ld76;

    .line 129
    .line 130
    const/16 v7, 0xf

    .line 131
    .line 132
    invoke-direct {v6, p1, v7}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 133
    .line 134
    .line 135
    invoke-static {v6}, Lzn4;->c(Lbt3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    monitor-exit v5

    .line 139
    invoke-virtual {v4, p1, v0}, Lqq1;->l(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)V

    .line 140
    .line 141
    .line 142
    const p1, 0x7f1301af

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    new-instance v0, Lcv;

    .line 153
    .line 154
    invoke-direct {v0, v1, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    move-object p0, v0

    .line 163
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    throw p0

    .line 165
    :cond_1
    :goto_1
    invoke-static {p0}, Lio4;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    if-eqz p1, :cond_2

    .line 174
    .line 175
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    move-object v2, p1

    .line 182
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 183
    .line 184
    :cond_2
    if-eqz v2, :cond_3

    .line 185
    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-virtual {v2, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 191
    .line 192
    .line 193
    :cond_3
    return-void

    .line 194
    :pswitch_1
    iget-object p1, p0, Lt20;->b:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 197
    .line 198
    iget-object p0, p0, Lt20;->c:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p0, Ljava/util/ArrayList;

    .line 201
    .line 202
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 203
    .line 204
    new-instance v0, Lqf;

    .line 205
    .line 206
    const/4 v1, 0x3

    .line 207
    invoke-direct {v0, v1, p1, p0}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    const p0, 0x7f1301e2

    .line 211
    .line 212
    .line 213
    invoke-static {p1, p0, v0, v2}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :pswitch_2
    iget-object p1, p0, Lt20;->b:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast p1, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 220
    .line 221
    iget-object p0, p0, Lt20;->c:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast p0, Lk30;

    .line 224
    .line 225
    const-string v4, "mAdapter"

    .line 226
    .line 227
    iget-object v5, p1, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->j0:Lf30;

    .line 228
    .line 229
    if-eqz v5, :cond_1d

    .line 230
    .line 231
    iget-object v5, v5, Lgm7;->e:Lfm7;

    .line 232
    .line 233
    iget-object v5, v5, Lfm7;->b:Ljava/util/Set;

    .line 234
    .line 235
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-eqz v5, :cond_4

    .line 240
    .line 241
    const p0, 0x7f1304e3

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    sget-object v0, Lzn4;->a:Lzn4;

    .line 252
    .line 253
    new-instance v0, Lcv;

    .line 254
    .line 255
    invoke-direct {v0, v1, p1, p0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_6

    .line 262
    .line 263
    :cond_4
    iget-object p0, p0, Lk30;->a:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    const v6, -0x5b5c9592

    .line 270
    .line 271
    .line 272
    const v7, 0x7f13007a

    .line 273
    .line 274
    .line 275
    if-eq v5, v6, :cond_12

    .line 276
    .line 277
    const v6, 0x503d6637

    .line 278
    .line 279
    .line 280
    if-eq v5, v6, :cond_10

    .line 281
    .line 282
    const v6, 0x762561e2

    .line 283
    .line 284
    .line 285
    if-eq v5, v6, :cond_5

    .line 286
    .line 287
    goto/16 :goto_6

    .line 288
    .line 289
    :cond_5
    const-string v5, "Backup"

    .line 290
    .line 291
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result p0

    .line 295
    if-nez p0, :cond_6

    .line 296
    .line 297
    goto/16 :goto_6

    .line 298
    .line 299
    :cond_6
    iget-object p0, p1, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->j0:Lf30;

    .line 300
    .line 301
    if-eqz p0, :cond_f

    .line 302
    .line 303
    invoke-virtual {p0}, Lgm7;->l()Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->i0()Ln30;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    iget-object v4, v4, Ln30;->i:Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    new-instance v5, Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    if-eqz v6, :cond_a

    .line 330
    .line 331
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    move-object v8, v6

    .line 336
    check-cast v8, Lkz;

    .line 337
    .line 338
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 339
    .line 340
    .line 341
    move-result v9

    .line 342
    if-eqz v9, :cond_8

    .line 343
    .line 344
    goto :goto_2

    .line 345
    :cond_8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v9

    .line 349
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v10

    .line 353
    if-eqz v10, :cond_7

    .line 354
    .line 355
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    check-cast v10, Lji;

    .line 360
    .line 361
    invoke-virtual {v10}, Lji;->getPackageName()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v10

    .line 365
    invoke-virtual {v8}, Lkz;->a()Lji;

    .line 366
    .line 367
    .line 368
    move-result-object v11

    .line 369
    invoke-virtual {v11}, Lji;->getPackageName()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    invoke-static {v10, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v10

    .line 377
    if-eqz v10, :cond_9

    .line 378
    .line 379
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    goto :goto_2

    .line 383
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 384
    .line 385
    .line 386
    move-result p0

    .line 387
    if-eqz p0, :cond_b

    .line 388
    .line 389
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 390
    .line 391
    invoke-virtual {p1}, Lk28;->r()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v9

    .line 395
    const-string v10, "runBackup: propsList empty!"

    .line 396
    .line 397
    const/4 v12, 0x4

    .line 398
    const/4 v13, 0x0

    .line 399
    const/4 v11, 0x0

    .line 400
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    sget-object v0, Lzn4;->a:Lzn4;

    .line 411
    .line 412
    new-instance v0, Lcv;

    .line 413
    .line 414
    invoke-direct {v0, v1, p1, p0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_6

    .line 421
    .line 422
    :cond_b
    new-instance p0, Lky7;

    .line 423
    .line 424
    const/4 v1, 0x2

    .line 425
    invoke-direct {p0, v1, v3}, Lty7;-><init>(II)V

    .line 426
    .line 427
    .line 428
    new-instance v1, Lu20;

    .line 429
    .line 430
    invoke-direct {v1, v3, p1, v5, p0}, Lu20;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 434
    .line 435
    .line 436
    move-result p0

    .line 437
    if-eqz p0, :cond_c

    .line 438
    .line 439
    goto :goto_3

    .line 440
    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    if-eqz v3, :cond_e

    .line 449
    .line 450
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    check-cast v3, Lkz;

    .line 455
    .line 456
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    check-cast v3, Lhz;

    .line 460
    .line 461
    iget-object v3, v3, Lhz;->d:Ljava/util/List;

    .line 462
    .line 463
    invoke-static {v3}, Lji8;->r(Ljava/util/Collection;)Z

    .line 464
    .line 465
    .line 466
    move-result v3

    .line 467
    if-eqz v3, :cond_d

    .line 468
    .line 469
    invoke-static {p1, v2, v1, v0}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_6

    .line 473
    .line 474
    :cond_e
    :goto_3
    invoke-virtual {v1}, Lu20;->invoke()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    goto/16 :goto_6

    .line 478
    .line 479
    :cond_f
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    throw v2

    .line 483
    :cond_10
    const-string v0, "Premium"

    .line 484
    .line 485
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result p0

    .line 489
    if-nez p0, :cond_11

    .line 490
    .line 491
    goto/16 :goto_6

    .line 492
    .line 493
    :cond_11
    sget-object p0, Lzn4;->a:Lzn4;

    .line 494
    .line 495
    new-instance p0, Lb56;

    .line 496
    .line 497
    invoke-direct {p0, p1, v3}, Lb56;-><init>(Lk28;I)V

    .line 498
    .line 499
    .line 500
    invoke-static {p0}, Lzn4;->e(Lbt3;)V

    .line 501
    .line 502
    .line 503
    goto/16 :goto_6

    .line 504
    .line 505
    :cond_12
    const-string v5, "Restore"

    .line 506
    .line 507
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result p0

    .line 511
    if-nez p0, :cond_13

    .line 512
    .line 513
    goto/16 :goto_6

    .line 514
    .line 515
    :cond_13
    iget-object p0, p1, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->j0:Lf30;

    .line 516
    .line 517
    if-eqz p0, :cond_1c

    .line 518
    .line 519
    invoke-virtual {p0}, Lgm7;->l()Ljava/util/List;

    .line 520
    .line 521
    .line 522
    move-result-object p0

    .line 523
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->i0()Ln30;

    .line 524
    .line 525
    .line 526
    move-result-object v4

    .line 527
    iget-object v4, v4, Ln30;->i:Ljava/util/ArrayList;

    .line 528
    .line 529
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    .line 531
    .line 532
    new-instance v5, Ljava/util/ArrayList;

    .line 533
    .line 534
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    :cond_14
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 542
    .line 543
    .line 544
    move-result v6

    .line 545
    if-eqz v6, :cond_17

    .line 546
    .line 547
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v6

    .line 551
    move-object v8, v6

    .line 552
    check-cast v8, Lkz;

    .line 553
    .line 554
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 555
    .line 556
    .line 557
    move-result v9

    .line 558
    if-eqz v9, :cond_15

    .line 559
    .line 560
    goto :goto_4

    .line 561
    :cond_15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 562
    .line 563
    .line 564
    move-result-object v9

    .line 565
    :cond_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 566
    .line 567
    .line 568
    move-result v10

    .line 569
    if-eqz v10, :cond_14

    .line 570
    .line 571
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v10

    .line 575
    check-cast v10, Lji;

    .line 576
    .line 577
    invoke-virtual {v10}, Lji;->getPackageName()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v10

    .line 581
    invoke-virtual {v8}, Lkz;->a()Lji;

    .line 582
    .line 583
    .line 584
    move-result-object v11

    .line 585
    invoke-virtual {v11}, Lji;->getPackageName()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v11

    .line 589
    invoke-static {v10, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v10

    .line 593
    if-eqz v10, :cond_16

    .line 594
    .line 595
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    goto :goto_4

    .line 599
    :cond_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 600
    .line 601
    .line 602
    move-result p0

    .line 603
    if-eqz p0, :cond_18

    .line 604
    .line 605
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 606
    .line 607
    invoke-virtual {p1}, Lk28;->r()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v9

    .line 611
    const-string v10, "runRestore: propsList empty!"

    .line 612
    .line 613
    const/4 v12, 0x4

    .line 614
    const/4 v13, 0x0

    .line 615
    const/4 v11, 0x0

    .line 616
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object p0

    .line 623
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    sget-object v0, Lzn4;->a:Lzn4;

    .line 627
    .line 628
    new-instance v0, Lcv;

    .line 629
    .line 630
    invoke-direct {v0, v1, p1, p0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 631
    .line 632
    .line 633
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 634
    .line 635
    .line 636
    goto :goto_6

    .line 637
    :cond_18
    new-instance p0, Lry7;

    .line 638
    .line 639
    invoke-direct {p0, v3}, Lry7;-><init>(Z)V

    .line 640
    .line 641
    .line 642
    new-instance v1, Lv20;

    .line 643
    .line 644
    invoke-direct {v1, v3, p1, v5, p0}, Lv20;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 648
    .line 649
    .line 650
    move-result p0

    .line 651
    if-eqz p0, :cond_19

    .line 652
    .line 653
    goto :goto_5

    .line 654
    :cond_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 655
    .line 656
    .line 657
    move-result-object p0

    .line 658
    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    if-eqz v3, :cond_1b

    .line 663
    .line 664
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    check-cast v3, Lkz;

    .line 669
    .line 670
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 671
    .line 672
    .line 673
    check-cast v3, Ljz;

    .line 674
    .line 675
    iget-object v3, v3, Ljz;->h:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 676
    .line 677
    if-eqz v3, :cond_1a

    .line 678
    .line 679
    invoke-static {p1, v2, v1, v0}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 680
    .line 681
    .line 682
    goto :goto_6

    .line 683
    :cond_1b
    :goto_5
    invoke-virtual {v1}, Lv20;->invoke()Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    :goto_6
    return-void

    .line 687
    :cond_1c
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    throw v2

    .line 691
    :cond_1d
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    throw v2

    .line 695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
