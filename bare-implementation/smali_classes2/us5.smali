.class public final synthetic Lus5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lus5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lus5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lus5;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lbe8;->a:Lbe8;

    .line 5
    .line 6
    iget-object p0, p0, Lus5;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Liu8;

    .line 12
    .line 13
    const v0, 0x7f1301f8

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lqo0;->h(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Liu8;->j()Lus8;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v0, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v3, 0x0

    .line 39
    if-nez v0, :cond_6

    .line 40
    .line 41
    new-instance v0, Lq63;

    .line 42
    .line 43
    sget-object v4, Lry5;->u:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1, v3}, Lqy5;->f(ZLzn7;)Lry5;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iget-object v4, v4, Lry5;->o:Ljava/lang/String;

    .line 50
    .line 51
    const-string v5, "wifi_networks.wfi"

    .line 52
    .line 53
    invoke-static {v4, v5}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const/4 v5, 0x2

    .line 58
    invoke-direct {v0, v4, v5}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    filled-new-array {v0}, [Lq63;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    aget-object v0, v0, v1

    .line 66
    .line 67
    invoke-virtual {v0}, Lq63;->h()Z

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lus8;->c()Lorg/swiftapps/swiftbackup/model/firebase/WifiCloudDetails;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/firebase/WifiCloudDetails;->getDriveId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    move-object v0, v3

    .line 82
    :goto_0
    if-eqz v0, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    invoke-static {}, Lre3;->g()Lzc2;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const-string v5, "wifi"

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v4, v3}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    sget-object v5, Lze3;->b:Lze3;

    .line 106
    .line 107
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_2

    .line 112
    .line 113
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v1, Ljd1;

    .line 118
    .line 119
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 120
    .line 121
    invoke-direct {v3, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v3}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {v1, v0}, Ljd1;-><init>(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    sget-object v0, Ltb1;->a:Ltb1;

    .line 132
    .line 133
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0, v1}, Ltb1;->b(Lzv1;)Lxh2;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lxh2;->c()Ljq6;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljq6;->q()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    goto :goto_2

    .line 150
    :cond_2
    instance-of v0, v4, Lye3;

    .line 151
    .line 152
    if-eqz v0, :cond_3

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_3
    invoke-static {}, Lq;->j()V

    .line 156
    .line 157
    .line 158
    :goto_1
    move-object v2, v3

    .line 159
    goto :goto_3

    .line 160
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lqo0;->f()V

    .line 161
    .line 162
    .line 163
    if-nez v1, :cond_5

    .line 164
    .line 165
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 166
    .line 167
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    const v0, 0x7f130581

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    sget-object v1, Lzn4;->a:Lzn4;

    .line 182
    .line 183
    invoke-static {p0, v0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_5
    sget-object p0, Lvr8;->CLOUD:Lvr8;

    .line 188
    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    new-instance v0, Lwr8;

    .line 193
    .line 194
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 195
    .line 196
    .line 197
    iput-object p0, v0, Lwr8;->a:Lvr8;

    .line 198
    .line 199
    invoke-static {}, Lny2;->b()Lny2;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-virtual {p0, v0}, Lny2;->e(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_6
    invoke-static {}, Ld6;->o()V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :goto_3
    return-object v2

    .line 212
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 213
    .line 214
    sget-object v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 215
    .line 216
    new-instance v0, Landroid/content/Intent;

    .line 217
    .line 218
    const-string v1, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    .line 219
    .line 220
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    .line 231
    .line 232
    if-nez v1, :cond_7

    .line 233
    .line 234
    const/high16 v1, 0x10000000

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :catch_0
    move-exception v0

    .line 241
    goto :goto_5

    .line 242
    :cond_7
    :goto_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :goto_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    sget-object v1, Lzn4;->a:Lzn4;

    .line 262
    .line 263
    invoke-static {p0, v0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :goto_6
    return-object v2

    .line 267
    :pswitch_1
    check-cast p0, Lokhttp3/Response;

    .line 268
    .line 269
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 270
    .line 271
    .line 272
    return-object v2

    .line 273
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 274
    .line 275
    sget v0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->W:I

    .line 276
    .line 277
    new-instance v0, Lto8;

    .line 278
    .line 279
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->X()Lro8;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    iget-object v1, v1, Lro8;->d:Lxp3;

    .line 284
    .line 285
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->Y()Lpp8;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-direct {v0, p0, v1, v2}, Lto8;-><init>(Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;Lxp3;Lpp8;)V

    .line 290
    .line 291
    .line 292
    return-object v0

    .line 293
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;

    .line 294
    .line 295
    sget v0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O:I

    .line 296
    .line 297
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O()V

    .line 298
    .line 299
    .line 300
    return-object v2

    .line 301
    :pswitch_4
    check-cast p0, Lpa8;

    .line 302
    .line 303
    iget-object p0, p0, Lu35;->K:Ljk8;

    .line 304
    .line 305
    check-cast p0, Lqa8;

    .line 306
    .line 307
    iget-object p0, p0, Lqa8;->e:Landroidx/core/widget/NestedScrollView;

    .line 308
    .line 309
    return-object p0

    .line 310
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 311
    .line 312
    sget v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 313
    .line 314
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->N()Lay7;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    iget-object p0, p0, Lay7;->c:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 319
    .line 320
    return-object p0

    .line 321
    :pswitch_6
    check-cast p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 322
    .line 323
    sget v0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 324
    .line 325
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Y:Lgv7;

    .line 326
    .line 327
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    check-cast p0, Loo7;

    .line 332
    .line 333
    iget-object p0, p0, Loo7;->c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 334
    .line 335
    return-object p0

    .line 336
    :pswitch_7
    check-cast p0, Lzn7;

    .line 337
    .line 338
    new-instance v0, Lq63;

    .line 339
    .line 340
    iget-object v3, p0, Lzn7;->a:Lq63;

    .line 341
    .line 342
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    const-string p0, "/Android/"

    .line 347
    .line 348
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    invoke-static {v1}, Lnq7;->t0(I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 363
    .line 364
    .line 365
    move-result p0

    .line 366
    if-nez p0, :cond_8

    .line 367
    .line 368
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object p0

    .line 376
    goto :goto_7

    .line 377
    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    .line 378
    .line 379
    const/16 p0, 0xa

    .line 380
    .line 381
    invoke-direct {v6, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    .line 383
    .line 384
    move p0, v1

    .line 385
    :cond_9
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    invoke-virtual {v4, p0, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 390
    .line 391
    .line 392
    move-result-object p0

    .line 393
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    .line 401
    .line 402
    .line 403
    move-result p0

    .line 404
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    if-nez v2, :cond_9

    .line 409
    .line 410
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    invoke-virtual {v4, p0, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-object p0, v6

    .line 426
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    if-nez v2, :cond_b

    .line 431
    .line 432
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    invoke-interface {p0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    :goto_8
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 441
    .line 442
    .line 443
    move-result v4

    .line 444
    if-eqz v4, :cond_b

    .line 445
    .line 446
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    check-cast v4, Ljava/lang/String;

    .line 451
    .line 452
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    if-nez v4, :cond_a

    .line 457
    .line 458
    goto :goto_8

    .line 459
    :cond_a
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    add-int/lit8 v2, v2, 0x1

    .line 464
    .line 465
    invoke-static {p0, v2}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 466
    .line 467
    .line 468
    move-result-object p0

    .line 469
    goto :goto_9

    .line 470
    :cond_b
    sget-object p0, Lov2;->a:Lov2;

    .line 471
    .line 472
    :goto_9
    new-array v2, v1, [Ljava/lang/String;

    .line 473
    .line 474
    invoke-interface {p0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object p0

    .line 478
    check-cast p0, [Ljava/lang/String;

    .line 479
    .line 480
    aget-object p0, p0, v1

    .line 481
    .line 482
    invoke-virtual {v3}, Lq63;->o()I

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    invoke-direct {v0, p0, v1}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 487
    .line 488
    .line 489
    return-object v0

    .line 490
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 491
    .line 492
    invoke-static {}, Lux5;->getEntries()Ljx2;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getPasswordStrategy()Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object p0

    .line 500
    if-eqz p0, :cond_c

    .line 501
    .line 502
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    :cond_c
    check-cast v0, Lkx2;

    .line 507
    .line 508
    invoke-virtual {v0, v1}, Lkx2;->get(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object p0

    .line 512
    check-cast p0, Lux5;

    .line 513
    .line 514
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    .line 516
    .line 517
    invoke-static {}, Lux5;->getEntries()Ljx2;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    check-cast v0, Lkx2;

    .line 522
    .line 523
    invoke-virtual {v0, p0}, Lkx2;->indexOf(Ljava/lang/Object;)I

    .line 524
    .line 525
    .line 526
    move-result p0

    .line 527
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 528
    .line 529
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getZ()Landroid/content/SharedPreferences;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    const-string v1, "saved_password_mode"

    .line 538
    .line 539
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 540
    .line 541
    .line 542
    move-result-object p0

    .line 543
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 544
    .line 545
    .line 546
    return-object v2

    .line 547
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 548
    .line 549
    sget v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 550
    .line 551
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->N()Ls37;

    .line 552
    .line 553
    .line 554
    move-result-object p0

    .line 555
    iget-object p0, p0, Ls37;->c:Lcom/google/android/material/button/MaterialButton;

    .line 556
    .line 557
    return-object p0

    .line 558
    :pswitch_a
    check-cast p0, Lj76;

    .line 559
    .line 560
    iget-object p0, p0, Lj76;->a:Landroid/content/Context;

    .line 561
    .line 562
    invoke-static {p0}, Li6;->c(Landroid/content/Context;)Lk76;

    .line 563
    .line 564
    .line 565
    move-result-object p0

    .line 566
    return-object p0

    .line 567
    :pswitch_b
    check-cast p0, Ld26;

    .line 568
    .line 569
    iget-object v0, p0, Ld26;->j:Los4;

    .line 570
    .line 571
    invoke-interface {v0}, Los4;->getValue()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    check-cast v0, [Lp77;

    .line 576
    .line 577
    invoke-static {p0, v0}, Lzh8;->t(Lp77;[Lp77;)I

    .line 578
    .line 579
    .line 580
    move-result p0

    .line 581
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 582
    .line 583
    .line 584
    move-result-object p0

    .line 585
    return-object p0

    .line 586
    :pswitch_c
    check-cast p0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;

    .line 587
    .line 588
    sget v0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->O:I

    .line 589
    .line 590
    new-instance v0, Lvx5;

    .line 591
    .line 592
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->L:Lgv7;

    .line 593
    .line 594
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    check-cast v1, Lwx5;

    .line 599
    .line 600
    iget-object v1, v1, Lwx5;->d:Le38;

    .line 601
    .line 602
    invoke-direct {v0, p0, v1}, Lvx5;-><init>(Lil0;Le38;)V

    .line 603
    .line 604
    .line 605
    return-object v0

    .line 606
    :pswitch_d
    check-cast p0, Lzs5;

    .line 607
    .line 608
    new-instance v0, Lws5;

    .line 609
    .line 610
    invoke-direct {v0, p0}, Lws5;-><init>(Lzs5;)V

    .line 611
    .line 612
    .line 613
    return-object v0

    .line 614
    nop

    .line 615
    :pswitch_data_0
    .packed-switch 0x0
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
