.class public final synthetic Lel;
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
    iput p1, p0, Lel;->a:I

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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lel;->a:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-object v0, Lqe7;->a:Lgv7;

    .line 12
    .line 13
    invoke-static {}, Lle7;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :pswitch_0
    const-string v0, "android.app.AppGlobals"

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "getInitialApplication"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    check-cast v0, Landroid/content/Context;

    .line 42
    .line 43
    return-object v0

    .line 44
    :pswitch_1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 45
    .line 46
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 47
    .line 48
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/String;

    .line 78
    .line 79
    const-string v4, "xiaomi"

    .line 80
    .line 81
    invoke-static {v3, v4, v2}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_2

    .line 86
    .line 87
    const-string v4, "redmi"

    .line 88
    .line 89
    invoke-static {v3, v4, v2}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_2

    .line 94
    .line 95
    const-string v4, "poco"

    .line 96
    .line 97
    invoke-static {v3, v4, v2}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    :cond_2
    move v1, v2

    .line 104
    :cond_3
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    :pswitch_2
    sget-object v0, Ld45;->b:Ld45;

    .line 110
    .line 111
    return-object v0

    .line 112
    :pswitch_3
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sget-object v1, Lfm6;->a:Ljava/lang/ThreadLocal;

    .line 117
    .line 118
    const v1, 0x1080093

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    .line 124
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :catch_0
    if-nez v3, :cond_4

    .line 126
    .line 127
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 128
    .line 129
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const v1, 0x7f0802b0

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    :cond_4
    return-object v3

    .line 144
    :pswitch_4
    invoke-static {}, Lyn7;->a()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_6

    .line 162
    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    move-object v3, v2

    .line 168
    check-cast v3, Lzn7;

    .line 169
    .line 170
    invoke-virtual {v3}, Lzn7;->m()Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-nez v3, :cond_5

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_6
    return-object v1

    .line 181
    :pswitch_5
    sget-object v0, Lkb3;->L:Ljava/util/List;

    .line 182
    .line 183
    sget-object v0, Lbe8;->a:Lbe8;

    .line 184
    .line 185
    return-object v0

    .line 186
    :pswitch_6
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->P:I

    .line 187
    .line 188
    const-string v4, "mzc5bxvbe0960q1"

    .line 189
    .line 190
    new-instance v1, Luj;

    .line 191
    .line 192
    const-string v2, "https://www.dropbox.com/oauth2/authorize"

    .line 193
    .line 194
    const-string v3, "https://api.dropboxapi.com/oauth2/token"

    .line 195
    .line 196
    const-string v5, "db-mzc5bxvbe0960q1://1/connect"

    .line 197
    .line 198
    const-string v0, "token_access_type"

    .line 199
    .line 200
    const-string v6, "offline"

    .line 201
    .line 202
    invoke-static {v0, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    const/4 v8, 0x0

    .line 210
    const/16 v9, 0xd0

    .line 211
    .line 212
    const/4 v6, 0x0

    .line 213
    invoke-direct/range {v1 .. v9}, Luj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxj;Ljava/util/Map;Ljava/util/List;I)V

    .line 214
    .line 215
    .line 216
    return-object v1

    .line 217
    :pswitch_7
    sget-boolean v0, Lg42;->a:Z

    .line 218
    .line 219
    const-string v0, "AQJXLdktuB1xR36cajUhxl854XLsqziB9Cjdhx6mzQ1L9mcOh24PCZ2Dnq0ESoU="

    .line 220
    .line 221
    invoke-static {v0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    return-object v0

    .line 226
    :pswitch_8
    sget-boolean v0, Lmp6;->k:Z

    .line 227
    .line 228
    if-eqz v0, :cond_7

    .line 229
    .line 230
    goto/16 :goto_3

    .line 231
    .line 232
    :cond_7
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 233
    .line 234
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {v0}, Lg42;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 250
    .line 251
    invoke-static {v0, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_8

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_8
    sget-object v0, Lg00;->a:Lg00;

    .line 259
    .line 260
    invoke-static {v2}, Lg00;->m(Z)Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    move v4, v1

    .line 269
    move v5, v4

    .line 270
    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    if-eqz v6, :cond_b

    .line 275
    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    check-cast v6, Lji;

    .line 281
    .line 282
    invoke-virtual {v6}, Lji;->getPackageName()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    invoke-static {v6}, Lg42;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    if-eqz v6, :cond_9

    .line 291
    .line 292
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-eqz v6, :cond_a

    .line 297
    .line 298
    add-int/lit8 v4, v4, 0x1

    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 302
    .line 303
    goto :goto_2

    .line 304
    :cond_b
    sget-boolean v0, Lg42;->a:Z

    .line 305
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    const-string v6, "numO1Large="

    .line 309
    .line 310
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-static {v0}, Lg42;->c(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string v6, "numO2Large="

    .line 326
    .line 327
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-static {v0}, Lg42;->c(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    if-le v4, v5, :cond_c

    .line 341
    .line 342
    goto :goto_3

    .line 343
    :cond_c
    sget-object v0, Lzn4;->a:Lzn4;

    .line 344
    .line 345
    new-instance v0, Lf42;

    .line 346
    .line 347
    const/4 v1, 0x2

    .line 348
    invoke-direct {v0, v1, v3}, Lws7;-><init>(ILjv1;)V

    .line 349
    .line 350
    .line 351
    invoke-static {v3, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 352
    .line 353
    .line 354
    move v1, v2

    .line 355
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    return-object v0

    .line 360
    :pswitch_9
    sget-boolean v0, Lg42;->a:Z

    .line 361
    .line 362
    const-string v0, "AQJ6urHq7+wHCUOWI8mx1N38frQBU0wLKaK3VEcFTqOxLm9/NCZcHTlhCoMnRA=="

    .line 363
    .line 364
    invoke-static {v0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    return-object v0

    .line 369
    :pswitch_a
    sget-boolean v0, Lg42;->a:Z

    .line 370
    .line 371
    const-string v0, "AQJw4u6kzZwTbsO3vAyfnytuQ6BIklqzt3ulI0x6SpZz5VcryIBUCxcaz1SgS/nfexesWxNO+IBPedMsOmKc4g=="

    .line 372
    .line 373
    invoke-static {v0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    return-object v0

    .line 378
    :pswitch_b
    sget-object v0, Lbe8;->a:Lbe8;

    .line 379
    .line 380
    sget-object v1, Lbr1;->a:Lbr1;

    .line 381
    .line 382
    invoke-virtual {v1}, Lbr1;->a()V

    .line 383
    .line 384
    .line 385
    sget-object v1, Lzn4;->a:Lzn4;

    .line 386
    .line 387
    new-instance v1, Lfl;

    .line 388
    .line 389
    const/4 v2, 0x4

    .line 390
    invoke-direct {v1, v2}, Lfl;-><init>(I)V

    .line 391
    .line 392
    .line 393
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 394
    .line 395
    .line 396
    return-object v0

    .line 397
    :pswitch_c
    new-instance v3, Lsl1;

    .line 398
    .line 399
    sget-object v0, Lsl1;->e:Lgv7;

    .line 400
    .line 401
    const v0, 0x7f030014

    .line 402
    .line 403
    .line 404
    invoke-static {v0}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-direct {v3, v0}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 409
    .line 410
    .line 411
    new-instance v4, Lsl1;

    .line 412
    .line 413
    const v0, 0x7f030012

    .line 414
    .line 415
    .line 416
    invoke-static {v0}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-direct {v4, v0}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 421
    .line 422
    .line 423
    new-instance v5, Lsl1;

    .line 424
    .line 425
    const v0, 0x7f030013

    .line 426
    .line 427
    .line 428
    invoke-static {v0}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-direct {v5, v0}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 433
    .line 434
    .line 435
    new-instance v6, Lsl1;

    .line 436
    .line 437
    const v0, 0x7f03000a

    .line 438
    .line 439
    .line 440
    invoke-static {v0}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-direct {v6, v0}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 445
    .line 446
    .line 447
    new-instance v7, Lsl1;

    .line 448
    .line 449
    const v0, 0x7f03000f

    .line 450
    .line 451
    .line 452
    invoke-static {v0}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-direct {v7, v0}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 457
    .line 458
    .line 459
    sget-object v0, Lsl1;->e:Lgv7;

    .line 460
    .line 461
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    move-object v8, v0

    .line 466
    check-cast v8, Lsl1;

    .line 467
    .line 468
    new-instance v9, Lsl1;

    .line 469
    .line 470
    const v0, 0x7f030009

    .line 471
    .line 472
    .line 473
    invoke-static {v0}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-direct {v9, v0}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 478
    .line 479
    .line 480
    new-instance v10, Lsl1;

    .line 481
    .line 482
    const v0, 0x7f030015

    .line 483
    .line 484
    .line 485
    invoke-static {v0}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-direct {v10, v0}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 490
    .line 491
    .line 492
    new-instance v11, Lsl1;

    .line 493
    .line 494
    const v0, 0x7f03000d

    .line 495
    .line 496
    .line 497
    invoke-static {v0}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-direct {v11, v0}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 502
    .line 503
    .line 504
    new-instance v12, Lsl1;

    .line 505
    .line 506
    const v0, 0x7f030010

    .line 507
    .line 508
    .line 509
    invoke-static {v0}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-direct {v12, v0}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 514
    .line 515
    .line 516
    new-instance v13, Lsl1;

    .line 517
    .line 518
    const v0, 0x7f030016

    .line 519
    .line 520
    .line 521
    invoke-static {v0}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-direct {v13, v0}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 526
    .line 527
    .line 528
    new-instance v14, Lsl1;

    .line 529
    .line 530
    const v0, 0x7f030011

    .line 531
    .line 532
    .line 533
    invoke-static {v0}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-direct {v14, v0}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 538
    .line 539
    .line 540
    new-instance v15, Lsl1;

    .line 541
    .line 542
    const v0, 0x7f030003

    .line 543
    .line 544
    .line 545
    invoke-static {v0}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-direct {v15, v0}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 550
    .line 551
    .line 552
    new-instance v0, Lsl1;

    .line 553
    .line 554
    const v1, 0x7f03000c

    .line 555
    .line 556
    .line 557
    invoke-static {v1}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-direct {v0, v1}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 562
    .line 563
    .line 564
    new-instance v1, Lsl1;

    .line 565
    .line 566
    const v2, 0x7f030001

    .line 567
    .line 568
    .line 569
    invoke-static {v2}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-direct {v1, v2}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 574
    .line 575
    .line 576
    move-object/from16 v16, v0

    .line 577
    .line 578
    move-object/from16 v17, v1

    .line 579
    .line 580
    filled-new-array/range {v3 .. v17}, [Lsl1;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    return-object v0

    .line 589
    :pswitch_d
    new-instance v0, Lvg1;

    .line 590
    .line 591
    new-instance v1, Lqg1;

    .line 592
    .line 593
    sget-object v3, Lhy7;->a:Lhy7;

    .line 594
    .line 595
    const-class v4, Lhy7;

    .line 596
    .line 597
    const-string v5, "hasActiveTask"

    .line 598
    .line 599
    const-string v6, "hasActiveTask$app()Z"

    .line 600
    .line 601
    const/4 v7, 0x0

    .line 602
    const/4 v8, 0x0

    .line 603
    const/4 v2, 0x0

    .line 604
    invoke-direct/range {v1 .. v8}, Lqg1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 605
    .line 606
    .line 607
    invoke-direct {v0, v1}, Lvg1;-><init>(Lqg1;)V

    .line 608
    .line 609
    .line 610
    return-object v0

    .line 611
    :pswitch_e
    invoke-static {}, Ldd1;->A()Ltb1;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    return-object v0

    .line 616
    :pswitch_f
    invoke-static {}, Ldd1;->p()Ltb1;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    return-object v0

    .line 621
    :pswitch_10
    sget-object v0, Lzu0;->a:Lzu0;

    .line 622
    .line 623
    sget-object v1, Lzu0;->c:Ljava/lang/Object;

    .line 624
    .line 625
    monitor-enter v1

    .line 626
    :try_start_1
    invoke-virtual {v0}, Lzu0;->g()Lvj;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    iget-object v0, v0, Lvj;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    .line 632
    monitor-exit v1

    .line 633
    return-object v0

    .line 634
    :catchall_0
    move-exception v0

    .line 635
    monitor-exit v1

    .line 636
    throw v0

    .line 637
    :pswitch_11
    new-instance v0, Lex6;

    .line 638
    .line 639
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 640
    .line 641
    .line 642
    return-object v0

    .line 643
    :pswitch_12
    sget-object v0, Lmp6;->a:Lmp6;

    .line 644
    .line 645
    sget-boolean v1, Lg42;->a:Z

    .line 646
    .line 647
    sget-object v1, Lg42;->C:Lgv7;

    .line 648
    .line 649
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    check-cast v1, Ljava/lang/String;

    .line 654
    .line 655
    const-string v4, "get"

    .line 656
    .line 657
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v4

    .line 661
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    filled-new-array {v1}, [Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    sget-object v2, Lip6;->SHIZUKU:Lip6;

    .line 674
    .line 675
    invoke-virtual {v0, v1, v2}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    invoke-static {v0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    check-cast v0, Ljava/lang/String;

    .line 684
    .line 685
    if-eqz v0, :cond_e

    .line 686
    .line 687
    const-string v1, ":"

    .line 688
    .line 689
    filled-new-array {v1}, [Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    const/4 v2, 0x6

    .line 694
    invoke-static {v0, v1, v2}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    const/16 v1, 0xa

    .line 699
    .line 700
    invoke-static {v0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 701
    .line 702
    .line 703
    move-result v1

    .line 704
    invoke-static {v1}, Lx65;->q0(I)I

    .line 705
    .line 706
    .line 707
    move-result v1

    .line 708
    const/16 v2, 0x10

    .line 709
    .line 710
    if-ge v1, v2, :cond_d

    .line 711
    .line 712
    move v1, v2

    .line 713
    :cond_d
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 714
    .line 715
    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 716
    .line 717
    .line 718
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    if-eqz v1, :cond_e

    .line 727
    .line 728
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    check-cast v1, Ljava/lang/String;

    .line 733
    .line 734
    const-string v2, "/"

    .line 735
    .line 736
    invoke-static {v1, v2, v1}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    goto :goto_4

    .line 744
    :cond_e
    if-eqz v3, :cond_10

    .line 745
    .line 746
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 747
    .line 748
    .line 749
    move-result v0

    .line 750
    if-eqz v0, :cond_f

    .line 751
    .line 752
    goto :goto_5

    .line 753
    :cond_f
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 754
    .line 755
    const-string v5, "AccessibilityServicesMap"

    .line 756
    .line 757
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 758
    .line 759
    .line 760
    move-result v0

    .line 761
    const-string v1, "Map built with "

    .line 762
    .line 763
    const-string v2, " entries"

    .line 764
    .line 765
    invoke-static {v0, v1, v2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v6

    .line 769
    const/4 v8, 0x4

    .line 770
    const/4 v9, 0x0

    .line 771
    const/4 v7, 0x0

    .line 772
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 773
    .line 774
    .line 775
    :cond_10
    :goto_5
    new-instance v0, Lo6;

    .line 776
    .line 777
    invoke-direct {v0, v3}, Lo6;-><init>(Ljava/util/LinkedHashMap;)V

    .line 778
    .line 779
    .line 780
    return-object v0

    .line 781
    :pswitch_data_0
    .packed-switch 0x0
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
