.class public final synthetic Lfl;
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
    iput p1, p0, Lfl;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget p0, p0, Lfl;->a:I

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    sget-object v1, Lbe8;->a:Lbe8;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p0, Loa5;

    .line 13
    .line 14
    new-instance v0, Lea5;

    .line 15
    .line 16
    sget-object v1, Lgt7;->a:Lgt7;

    .line 17
    .line 18
    sget-object v1, Lgt7;->c:Lgv7;

    .line 19
    .line 20
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lokhttp3/OkHttpClient;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lea5;-><init>(Lokhttp3/OkHttpClient;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Loa5;-><init>(Lea5;)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_0
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 34
    .line 35
    new-instance p0, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 36
    .line 37
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;-><init>()V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_1
    const-class p0, [Ljava/lang/String;

    .line 42
    .line 43
    const-class v0, Ljava/lang/String;

    .line 44
    .line 45
    filled-new-array {p0, p0, v0}, [Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-class v0, Lle7;

    .line 50
    .line 51
    const-string v1, "newProcess"

    .line 52
    .line 53
    invoke-virtual {v0, v1, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_2
    new-instance p0, Lwv4;

    .line 62
    .line 63
    sget-object v0, Lhq7;->a:Lhq7;

    .line 64
    .line 65
    sget-object v0, Lg76;->a:Lg76;

    .line 66
    .line 67
    invoke-direct {p0, v0}, Lwv4;-><init>(Ldo4;)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_3
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 72
    .line 73
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 74
    .line 75
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lai8;->i(Landroid/content/Context;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    invoke-static {}, Lai8;->h()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    .line 91
    move v2, v3

    .line 92
    :cond_0
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "isInternetConnected (caller:"

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p0, ") - "

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    const/4 v7, 0x4

    .line 117
    const/4 v8, 0x0

    .line 118
    const-string v4, "Const"

    .line 119
    .line 120
    const/4 v6, 0x0

    .line 121
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :pswitch_4
    sget p0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->O:I

    .line 130
    .line 131
    new-instance p0, Lt55;

    .line 132
    .line 133
    invoke-direct {p0}, Lt55;-><init>()V

    .line 134
    .line 135
    .line 136
    return-object p0

    .line 137
    :pswitch_5
    new-instance p0, Lun4;

    .line 138
    .line 139
    invoke-direct {p0}, Lun4;-><init>()V

    .line 140
    .line 141
    .line 142
    return-object p0

    .line 143
    :pswitch_6
    sget-object p0, Ld45;->b:Ld45;

    .line 144
    .line 145
    return-object p0

    .line 146
    :pswitch_7
    sget-boolean p0, Lg42;->a:Z

    .line 147
    .line 148
    const-string p0, "AQJZt8TjHYVoTl3oQp1tSa0QMgr3TBBRcRM+dsyFg3kS65JP0Sd8GNQ7CtMn"

    .line 149
    .line 150
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :pswitch_8
    sget-boolean p0, Lg42;->a:Z

    .line 156
    .line 157
    const-string p0, "AQJAYwQ/l7DpAJ5+3ZBI5NWdIdGnzyy+v+6smqkGYOgWoMYpWmFMeLZrHTmkuK/k5g=="

    .line 158
    .line 159
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    return-object p0

    .line 164
    :pswitch_9
    sget-boolean p0, Lg42;->a:Z

    .line 165
    .line 166
    const-string p0, "AQJWE7Fr/D8u7v7tbUpymwR3MOg0BlikgOXUnmj1KWobVQGfO55sb7+GWpuT9Oc7YQ=="

    .line 167
    .line 168
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :pswitch_a
    sget-object p0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 174
    .line 175
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    if-nez p0, :cond_1

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_1
    const-string p0, "ConfigRepo"

    .line 183
    .line 184
    const-string v0, "fetchFromCloud"

    .line 185
    .line 186
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    sget-object p0, Lre3;->a:Lzc2;

    .line 190
    .line 191
    sget-object p0, Lbr1;->c:Lzc2;

    .line 192
    .line 193
    sget-object v0, Lbr1;->d:Lar1;

    .line 194
    .line 195
    invoke-static {p0, v0}, Lre3;->n(Lzc2;Laj8;)V

    .line 196
    .line 197
    .line 198
    new-instance v0, Lar1;

    .line 199
    .line 200
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 201
    .line 202
    .line 203
    sput-object v0, Lbr1;->d:Lar1;

    .line 204
    .line 205
    invoke-virtual {p0, v0}, Lzc2;->c(Laj8;)V

    .line 206
    .line 207
    .line 208
    :goto_0
    return-object v1

    .line 209
    :pswitch_b
    invoke-static {}, Ldd1;->C()Ltb1;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    return-object p0

    .line 214
    :pswitch_c
    sget-object p0, Lgs0;->a:Lgs0;

    .line 215
    .line 216
    invoke-virtual {p0}, Lgs0;->a()Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 217
    .line 218
    .line 219
    return-object v1

    .line 220
    :pswitch_d
    new-instance p0, Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v1, "inapp"

    .line 226
    .line 227
    const-string v3, "subs"

    .line 228
    .line 229
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-static {v1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .line 238
    .line 239
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-eqz v5, :cond_4

    .line 255
    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    check-cast v5, Ljava/lang/String;

    .line 261
    .line 262
    if-eqz v5, :cond_3

    .line 263
    .line 264
    sget-object v6, Lwq0;->g:Ldq0;

    .line 265
    .line 266
    new-instance v7, Llq0;

    .line 267
    .line 268
    invoke-direct {v7, v5, p0, v3}, Llq0;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    new-instance v8, Ly99;

    .line 275
    .line 276
    invoke-direct {v8, v6, v7, v5}, Ly99;-><init>(Ldq0;Llq0;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    new-instance v11, Li8;

    .line 280
    .line 281
    invoke-direct {v11, v6, v7, v0, v2}, Li8;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6}, Ldq0;->k()Landroid/os/Handler;

    .line 285
    .line 286
    .line 287
    move-result-object v12

    .line 288
    invoke-virtual {v6}, Ldq0;->e()Ljava/util/concurrent/ExecutorService;

    .line 289
    .line 290
    .line 291
    move-result-object v13

    .line 292
    const-wide/16 v9, 0x7530

    .line 293
    .line 294
    invoke-static/range {v8 .. v13}, Ldq0;->f(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    if-nez v5, :cond_2

    .line 299
    .line 300
    invoke-virtual {v6}, Ldq0;->n()Lyq0;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    const/16 v8, 0x19

    .line 305
    .line 306
    const/16 v9, 0x9

    .line 307
    .line 308
    invoke-virtual {v6, v8, v9, v5}, Ldq0;->y(IILyq0;)V

    .line 309
    .line 310
    .line 311
    sget-object v6, Lma9;->b:Lga9;

    .line 312
    .line 313
    sget-object v6, Lmb9;->e:Lmb9;

    .line 314
    .line 315
    invoke-virtual {v7, v5, v6}, Llq0;->b(Lyq0;Ljava/util/List;)V

    .line 316
    .line 317
    .line 318
    goto :goto_1

    .line 319
    :cond_3
    const-string p0, "Product type must be set"

    .line 320
    .line 321
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_4
    const-wide/16 v0, 0xa

    .line 326
    .line 327
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 328
    .line 329
    invoke-virtual {v3, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-nez v0, :cond_5

    .line 334
    .line 335
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 336
    .line 337
    const/4 v5, 0x4

    .line 338
    const/4 v6, 0x0

    .line 339
    const-string v2, "BillingManager"

    .line 340
    .line 341
    const-string v3, "queryPurchasesPlayCache: timed out waiting for Play callbacks"

    .line 342
    .line 343
    const/4 v4, 0x0

    .line 344
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    :cond_5
    invoke-static {p0}, Lel1;->Q0(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    :goto_2
    return-object v4

    .line 352
    :pswitch_e
    sget-object p0, Lg00;->a:Lg00;

    .line 353
    .line 354
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-static {p0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result p0

    .line 366
    if-nez p0, :cond_9

    .line 367
    .line 368
    sget-object p0, Lmp6;->a:Lmp6;

    .line 369
    .line 370
    sget-boolean v1, Lg42;->a:Z

    .line 371
    .line 372
    sget-object v1, Lg42;->J:Lgv7;

    .line 373
    .line 374
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    check-cast v1, Ljava/lang/String;

    .line 379
    .line 380
    const-string v2, "list"

    .line 381
    .line 382
    const-string v3, ""

    .line 383
    .line 384
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    const/4 v5, 0x2

    .line 389
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    filled-new-array {v1}, [Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    sget-object v2, Lip6;->SHIZUKU:Lip6;

    .line 402
    .line 403
    invoke-virtual {p0, v1, v2}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    invoke-static {p0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object p0

    .line 411
    check-cast p0, Ljava/lang/String;

    .line 412
    .line 413
    if-nez p0, :cond_6

    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_6
    const-string v1, ":"

    .line 417
    .line 418
    invoke-static {p0, v1, v3}, Lnq7;->z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p0

    .line 430
    const-string v1, " "

    .line 431
    .line 432
    filled-new-array {v1}, [Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-static {p0, v1, v0}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 437
    .line 438
    .line 439
    move-result-object p0

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    .line 441
    .line 442
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .line 444
    .line 445
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-eqz v1, :cond_8

    .line 454
    .line 455
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    check-cast v1, Ljava/lang/String;

    .line 460
    .line 461
    invoke-static {v1}, Luq7;->X(Ljava/lang/String;)Ljava/lang/Integer;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    if-eqz v1, :cond_7

    .line 466
    .line 467
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    goto :goto_3

    .line 471
    :cond_8
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 472
    .line 473
    .line 474
    move-result-object p0

    .line 475
    invoke-static {p0}, Lg00;->s(Ljava/util/Set;)Ljava/util/LinkedHashSet;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    goto :goto_4

    .line 480
    :cond_9
    invoke-static {}, Ld6;->o()V

    .line 481
    .line 482
    .line 483
    :goto_4
    return-object v4

    .line 484
    nop

    .line 485
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
