.class public final synthetic Ljx;
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
    iput p1, p0, Ljx;->a:I

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
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Ljx;->a:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    sget-object v2, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/V;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :pswitch_0
    new-instance v0, Lba5;

    .line 24
    .line 25
    new-instance v1, Lea5;

    .line 26
    .line 27
    sget-object v2, Lgt7;->a:Lgt7;

    .line 28
    .line 29
    sget-object v2, Lgt7;->c:Lgv7;

    .line 30
    .line 31
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lokhttp3/OkHttpClient;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Lea5;-><init>(Lokhttp3/OkHttpClient;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Lba5;-><init>(Lea5;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :pswitch_1
    :try_start_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 45
    .line 46
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->e()[Landroid/content/pm/Signature;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    array-length v1, v0

    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    move-object v0, v5

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    aget-object v0, v0, v4

    .line 58
    .line 59
    :goto_0
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/content/pm/Signature;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    :cond_1
    const-string v0, "566270172"

    .line 70
    .line 71
    invoke-static {v5, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Lorg/swiftapps/swiftbackup/common/IgnoredException;

    .line 82
    .line 83
    invoke-direct {v1, v0}, Lorg/swiftapps/swiftbackup/common/IgnoredException;-><init>(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :pswitch_2
    sget-object v0, Lmk7;->a:Lgv7;

    .line 88
    .line 89
    const-string v0, "ANDROID_SECURE_DATA"

    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Ljava/io/File;

    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    const-string v0, "/data/secure"

    .line 104
    .line 105
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    return-object v1

    .line 109
    :pswitch_3
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 110
    .line 111
    sget-object v0, Ltb1;->a:Ltb1;

    .line 112
    .line 113
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1, v4}, Ltb1;->a(Z)Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    instance-of v2, v1, Lsi1;

    .line 124
    .line 125
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 126
    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v5, "checkConnection (caller:"

    .line 130
    .line 131
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, ") - CloudResult="

    .line 138
    .line 139
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    const/4 v7, 0x4

    .line 150
    const/4 v8, 0x0

    .line 151
    const-string v4, "CloudClient"

    .line 152
    .line 153
    const/4 v6, 0x0

    .line 154
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    return-object v0

    .line 162
    :pswitch_4
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 163
    .line 164
    const-string v0, "create"

    .line 165
    .line 166
    invoke-static {v0}, Lmz6;->u(Ljava/lang/String;)Lz84;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    return-object v0

    .line 171
    :pswitch_5
    invoke-static {}, Lvr6;->b()Ljava/util/concurrent/ExecutorService;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    return-object v0

    .line 176
    :pswitch_6
    sget-boolean v0, Lg42;->a:Z

    .line 177
    .line 178
    const-string v0, "AQLtx28gNYXpyMRmKyV9Yo5p9AR04Uvnp5UkmkR5i39N5ky9ky6+MqOz0sCqR1c="

    .line 179
    .line 180
    invoke-static {v0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    return-object v0

    .line 185
    :pswitch_7
    new-instance v0, Lix6;

    .line 186
    .line 187
    invoke-direct {v0}, Lix6;-><init>()V

    .line 188
    .line 189
    .line 190
    return-object v0

    .line 191
    :pswitch_8
    const-string v0, "android.permission.READ_SMS"

    .line 192
    .line 193
    invoke-static {v0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    return-object v0

    .line 198
    :pswitch_9
    sget-object v0, Lnq5;->i:Ljq5;

    .line 199
    .line 200
    const-string v0, "onedrive_access_token"

    .line 201
    .line 202
    :try_start_1
    sget-object v1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 203
    .line 204
    if-eqz v1, :cond_3

    .line 205
    .line 206
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    goto :goto_2

    .line 211
    :cond_3
    const-string v0, "prefs"

    .line 212
    .line 213
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v5
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    :catch_1
    :goto_2
    return-object v5

    .line 218
    :pswitch_a
    new-instance v0, Lq63;

    .line 219
    .line 220
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 221
    .line 222
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    const-string v2, "chunked_downloads"

    .line 231
    .line 232
    invoke-direct {v0, v1, v2, v3}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 233
    .line 234
    .line 235
    return-object v0

    .line 236
    :pswitch_b
    sget-object v0, Lnb5;->a:Lnb5;

    .line 237
    .line 238
    return-object v0

    .line 239
    :pswitch_c
    invoke-static {}, Lre3;->k()Lzc2;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const-string v1, "labelsData"

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    return-object v0

    .line 250
    :pswitch_d
    sget-object v0, Lc64;->l:Lix6;

    .line 251
    .line 252
    invoke-static {}, Lre3;->l()Lzc2;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    return-object v0

    .line 257
    :pswitch_e
    sget-object v0, Lv53;->a:Lv53;

    .line 258
    .line 259
    invoke-virtual {v0}, Lv53;->b()Ljava/util/Map;

    .line 260
    .line 261
    .line 262
    return-object v2

    .line 263
    :pswitch_f
    sget-boolean v0, Lg42;->a:Z

    .line 264
    .line 265
    const-string v0, "AQJlIWzlh8srP0CxJ+ReT+fjvZCJy+rbFq8vUWzVVsc/RNCJ++HP+tZlqAWpnzPHPVQzg4PhMWOxZqdRl5M23hdG35znYC8NG19DWTXKGzzL2Q=="

    .line 266
    .line 267
    invoke-static {v0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    return-object v0

    .line 272
    :pswitch_10
    sget-boolean v0, Lg42;->a:Z

    .line 273
    .line 274
    const-string v0, "AQIr46gruUTxBkeEaMZbSwog9SkLdUwWdtas6Ukgy9DBQ/Tz5mWHIE3HgOwAV1GqOoX0sXO2oZrFz7CiTIP2djl4ieXHLeGx/ze4ukDl1g=="

    .line 275
    .line 276
    invoke-static {v0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    return-object v0

    .line 281
    :pswitch_11
    sget-boolean v0, Lg42;->a:Z

    .line 282
    .line 283
    const-string v0, "AQJJ7BL8tmWv4RdC8T7cnuiyRRwrWPlpTvFYy1OMi++hx/dCJExsQXJbwbQqfUiG0zzC10nuPoUDa80eng=="

    .line 284
    .line 285
    invoke-static {v0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    return-object v0

    .line 290
    :pswitch_12
    invoke-static {}, Ldd1;->e()Ltb1;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    return-object v0

    .line 295
    :pswitch_13
    invoke-static {}, Ldd1;->E()Ltb1;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    return-object v0

    .line 300
    :pswitch_14
    const v0, 0x7f08010e

    .line 301
    .line 302
    .line 303
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    sget-object v6, Lwq0;->c:Lex6;

    .line 308
    .line 309
    sget-object v7, Lpq0;->a:Lpq0;

    .line 310
    .line 311
    invoke-virtual {v6, v7}, Lex6;->k(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    sget-object v7, Lwq0;->a:Lwq0;

    .line 315
    .line 316
    sget-object v8, Lwq0;->g:Ldq0;

    .line 317
    .line 318
    invoke-virtual {v8}, Ldq0;->v()Z

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    if-nez v8, :cond_4

    .line 323
    .line 324
    invoke-virtual {v7}, Lwq0;->f()V

    .line 325
    .line 326
    .line 327
    sget-object v0, Lmq0;->a:Lmq0;

    .line 328
    .line 329
    goto/16 :goto_40

    .line 330
    .line 331
    :cond_4
    invoke-static {}, Lre3;->b()Lzc2;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    const-string v8, "activeSkus"

    .line 336
    .line 337
    invoke-virtual {v7, v8}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    invoke-static {v7, v4}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    instance-of v8, v7, Lxe3;

    .line 346
    .line 347
    if-eqz v8, :cond_9

    .line 348
    .line 349
    check-cast v7, Lxe3;

    .line 350
    .line 351
    iget-object v7, v7, Lxe3;->n:Leb2;

    .line 352
    .line 353
    invoke-virtual {v7}, Leb2;->b()Ldb2;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    new-instance v8, Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .line 361
    .line 362
    iget-object v9, v7, Ldb2;->b:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast v9, Ljava/util/Iterator;

    .line 365
    .line 366
    :cond_5
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    if-eqz v10, :cond_7

    .line 371
    .line 372
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v10

    .line 376
    check-cast v10, Lhk5;

    .line 377
    .line 378
    iget-object v11, v7, Ldb2;->c:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v11, Leb2;

    .line 381
    .line 382
    iget-object v11, v11, Leb2;->b:Lzc2;

    .line 383
    .line 384
    iget-object v12, v10, Lhk5;->a:Lm61;

    .line 385
    .line 386
    iget-object v12, v12, Lm61;->a:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v11, v12}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 389
    .line 390
    .line 391
    iget-object v10, v10, Lhk5;->b:Lqn5;

    .line 392
    .line 393
    invoke-static {v10}, Lsb4;->d(Lqn5;)Lsb4;

    .line 394
    .line 395
    .line 396
    move-result-object v10

    .line 397
    iget-object v10, v10, Lsb4;->a:Lqn5;

    .line 398
    .line 399
    invoke-interface {v10}, Lqn5;->getValue()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v10

    .line 403
    instance-of v11, v10, Ljava/lang/String;

    .line 404
    .line 405
    if-eqz v11, :cond_6

    .line 406
    .line 407
    check-cast v10, Ljava/lang/String;

    .line 408
    .line 409
    goto :goto_4

    .line 410
    :cond_6
    move-object v10, v5

    .line 411
    :goto_4
    if-eqz v10, :cond_5

    .line 412
    .line 413
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    goto :goto_3

    .line 417
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 418
    .line 419
    .line 420
    move-result v7

    .line 421
    if-nez v7, :cond_8

    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_8
    :goto_5
    move-object v8, v5

    .line 425
    goto :goto_6

    .line 426
    :cond_9
    instance-of v8, v7, Lwe3;

    .line 427
    .line 428
    if-eqz v8, :cond_69

    .line 429
    .line 430
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 431
    .line 432
    check-cast v7, Lwe3;

    .line 433
    .line 434
    iget-object v7, v7, Lwe3;->n:Lwc2;

    .line 435
    .line 436
    iget-object v7, v7, Lwc2;->b:Ljava/lang/String;

    .line 437
    .line 438
    const-string v8, "getActiveSkusFromServer: "

    .line 439
    .line 440
    invoke-static {v8, v7}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v11

    .line 444
    const/4 v13, 0x4

    .line 445
    const/4 v14, 0x0

    .line 446
    const-string v10, "BillingManager"

    .line 447
    .line 448
    const/4 v12, 0x0

    .line 449
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    goto :goto_5

    .line 453
    :goto_6
    if-eqz v8, :cond_68

    .line 454
    .line 455
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 456
    .line 457
    .line 458
    move-result v7

    .line 459
    if-eqz v7, :cond_a

    .line 460
    .line 461
    goto/16 :goto_3f

    .line 462
    .line 463
    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    .line 464
    .line 465
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .line 467
    .line 468
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 469
    .line 470
    .line 471
    move-result-object v9

    .line 472
    :cond_b
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 473
    .line 474
    .line 475
    move-result v10

    .line 476
    if-eqz v10, :cond_c

    .line 477
    .line 478
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v10

    .line 482
    move-object v11, v10

    .line 483
    check-cast v11, Ljava/lang/String;

    .line 484
    .line 485
    const-string v12, "subs:"

    .line 486
    .line 487
    invoke-static {v11, v12, v4}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 488
    .line 489
    .line 490
    move-result v11

    .line 491
    if-eqz v11, :cond_b

    .line 492
    .line 493
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    goto :goto_7

    .line 497
    :cond_c
    new-instance v9, Ljava/util/ArrayList;

    .line 498
    .line 499
    const/16 v10, 0xa

    .line 500
    .line 501
    invoke-static {v7, v10}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 502
    .line 503
    .line 504
    move-result v11

    .line 505
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 509
    .line 510
    .line 511
    move-result-object v7

    .line 512
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 513
    .line 514
    .line 515
    move-result v11

    .line 516
    const-string v12, ""

    .line 517
    .line 518
    const-string v13, ".*"

    .line 519
    .line 520
    const-string v14, ":"

    .line 521
    .line 522
    if-eqz v11, :cond_d

    .line 523
    .line 524
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v11

    .line 528
    check-cast v11, Ljava/lang/String;

    .line 529
    .line 530
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v13

    .line 537
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 538
    .line 539
    .line 540
    move-result-object v13

    .line 541
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v13, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 545
    .line 546
    .line 547
    move-result-object v11

    .line 548
    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v11

    .line 552
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    goto :goto_8

    .line 559
    :cond_d
    new-instance v7, Ljava/util/ArrayList;

    .line 560
    .line 561
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .line 563
    .line 564
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 569
    .line 570
    .line 571
    move-result v11

    .line 572
    if-eqz v11, :cond_f

    .line 573
    .line 574
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v11

    .line 578
    move-object v15, v11

    .line 579
    check-cast v15, Ljava/lang/String;

    .line 580
    .line 581
    const-string v5, "inapp:"

    .line 582
    .line 583
    invoke-static {v15, v5, v4}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 584
    .line 585
    .line 586
    move-result v5

    .line 587
    if-eqz v5, :cond_e

    .line 588
    .line 589
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    :cond_e
    const/4 v5, 0x0

    .line 593
    goto :goto_9

    .line 594
    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    .line 595
    .line 596
    invoke-static {v7, v10}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 597
    .line 598
    .line 599
    move-result v8

    .line 600
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 604
    .line 605
    .line 606
    move-result-object v7

    .line 607
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 608
    .line 609
    .line 610
    move-result v8

    .line 611
    if-eqz v8, :cond_10

    .line 612
    .line 613
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v8

    .line 617
    check-cast v8, Ljava/lang/String;

    .line 618
    .line 619
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v10

    .line 626
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 627
    .line 628
    .line 629
    move-result-object v10

    .line 630
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 634
    .line 635
    .line 636
    move-result-object v8

    .line 637
    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v8

    .line 641
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    goto :goto_a

    .line 648
    :cond_10
    sget-object v15, Lvr6;->INSTANCE:Lvr6;

    .line 649
    .line 650
    invoke-static {v9, v5}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 651
    .line 652
    .line 653
    move-result-object v7

    .line 654
    new-instance v8, Ljava/lang/StringBuilder;

    .line 655
    .line 656
    const-string v10, "skusFromServer: "

    .line 657
    .line 658
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v17

    .line 668
    const/16 v19, 0x4

    .line 669
    .line 670
    const/16 v20, 0x0

    .line 671
    .line 672
    const-string v16, "BillingManager"

    .line 673
    .line 674
    const/16 v18, 0x0

    .line 675
    .line 676
    invoke-static/range {v15 .. v20}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 677
    .line 678
    .line 679
    move v7, v4

    .line 680
    :goto_b
    const-string v8, "subs"

    .line 681
    .line 682
    const-string v10, "inapp"

    .line 683
    .line 684
    const/4 v11, 0x3

    .line 685
    if-ge v7, v11, :cond_23

    .line 686
    .line 687
    if-lez v7, :cond_11

    .line 688
    .line 689
    const-wide/16 v12, 0x3e8

    .line 690
    .line 691
    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 692
    .line 693
    .line 694
    :catch_2
    :cond_11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 695
    .line 696
    .line 697
    move-result-object v12

    .line 698
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 699
    .line 700
    .line 701
    move-result-object v13

    .line 702
    invoke-static {v12, v13}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    move-result v12

    .line 706
    if-nez v12, :cond_22

    .line 707
    .line 708
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 709
    .line 710
    .line 711
    move-result v12

    .line 712
    if-eqz v12, :cond_13

    .line 713
    .line 714
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 715
    .line 716
    .line 717
    move-result v12

    .line 718
    if-nez v12, :cond_12

    .line 719
    .line 720
    goto :goto_d

    .line 721
    :cond_12
    const-string v0, "Empty SKUs!!!"

    .line 722
    .line 723
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    :goto_c
    const/4 v2, 0x0

    .line 727
    goto/16 :goto_41

    .line 728
    .line 729
    :cond_13
    :goto_d
    new-instance v12, Ljava/util/concurrent/CountDownLatch;

    .line 730
    .line 731
    invoke-direct {v12, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 732
    .line 733
    .line 734
    new-instance v13, Ljava/util/ArrayList;

    .line 735
    .line 736
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 740
    .line 741
    .line 742
    move-result v14

    .line 743
    if-eqz v14, :cond_14

    .line 744
    .line 745
    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 746
    .line 747
    .line 748
    goto :goto_e

    .line 749
    :cond_14
    new-instance v14, Liq0;

    .line 750
    .line 751
    invoke-direct {v14, v13, v12}, Liq0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 752
    .line 753
    .line 754
    invoke-static {v8, v9, v14}, Lwq0;->b(Ljava/lang/String;Ljava/util/ArrayList;Lw76;)V

    .line 755
    .line 756
    .line 757
    :goto_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 758
    .line 759
    .line 760
    move-result v14

    .line 761
    if-eqz v14, :cond_15

    .line 762
    .line 763
    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 764
    .line 765
    .line 766
    goto :goto_f

    .line 767
    :cond_15
    new-instance v14, Ljq0;

    .line 768
    .line 769
    invoke-direct {v14, v4, v13, v12}, Ljq0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 770
    .line 771
    .line 772
    invoke-static {v10, v5, v14}, Lwq0;->b(Ljava/lang/String;Ljava/util/ArrayList;Lw76;)V

    .line 773
    .line 774
    .line 775
    :goto_f
    const-wide/16 v14, 0xa

    .line 776
    .line 777
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 778
    .line 779
    invoke-virtual {v12, v14, v15, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 780
    .line 781
    .line 782
    move-result v4

    .line 783
    if-nez v4, :cond_16

    .line 784
    .line 785
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 786
    .line 787
    const/16 v21, 0x4

    .line 788
    .line 789
    const/16 v22, 0x0

    .line 790
    .line 791
    const-string v18, "BillingManager"

    .line 792
    .line 793
    const-string v19, "_queryProductDetailsFromGooglePlay: timed out waiting for Play callbacks"

    .line 794
    .line 795
    const/16 v20, 0x0

    .line 796
    .line 797
    invoke-static/range {v17 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 798
    .line 799
    .line 800
    :cond_16
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 801
    .line 802
    .line 803
    move-result v4

    .line 804
    if-eqz v4, :cond_17

    .line 805
    .line 806
    goto :goto_11

    .line 807
    :cond_17
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 808
    .line 809
    .line 810
    move-result v4

    .line 811
    if-eqz v4, :cond_18

    .line 812
    .line 813
    goto :goto_12

    .line 814
    :cond_18
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 815
    .line 816
    .line 817
    move-result-object v4

    .line 818
    :cond_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 819
    .line 820
    .line 821
    move-result v12

    .line 822
    if-eqz v12, :cond_1b

    .line 823
    .line 824
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v12

    .line 828
    check-cast v12, Lv76;

    .line 829
    .line 830
    if-eqz v12, :cond_1a

    .line 831
    .line 832
    iget-object v12, v12, Lv76;->d:Ljava/lang/String;

    .line 833
    .line 834
    goto :goto_10

    .line 835
    :cond_1a
    const/4 v12, 0x0

    .line 836
    :goto_10
    invoke-static {v12, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 837
    .line 838
    .line 839
    move-result v12

    .line 840
    if-eqz v12, :cond_19

    .line 841
    .line 842
    :goto_11
    move v4, v1

    .line 843
    goto :goto_13

    .line 844
    :cond_1b
    :goto_12
    const/4 v4, 0x0

    .line 845
    :goto_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 846
    .line 847
    .line 848
    move-result v12

    .line 849
    if-eqz v12, :cond_1c

    .line 850
    .line 851
    goto :goto_15

    .line 852
    :cond_1c
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 853
    .line 854
    .line 855
    move-result v12

    .line 856
    if-eqz v12, :cond_1d

    .line 857
    .line 858
    goto :goto_16

    .line 859
    :cond_1d
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 860
    .line 861
    .line 862
    move-result-object v12

    .line 863
    :cond_1e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 864
    .line 865
    .line 866
    move-result v14

    .line 867
    if-eqz v14, :cond_20

    .line 868
    .line 869
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v14

    .line 873
    check-cast v14, Lv76;

    .line 874
    .line 875
    if-eqz v14, :cond_1f

    .line 876
    .line 877
    iget-object v14, v14, Lv76;->d:Ljava/lang/String;

    .line 878
    .line 879
    goto :goto_14

    .line 880
    :cond_1f
    const/4 v14, 0x0

    .line 881
    :goto_14
    invoke-static {v14, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 882
    .line 883
    .line 884
    move-result v14

    .line 885
    if-eqz v14, :cond_1e

    .line 886
    .line 887
    :goto_15
    move v12, v1

    .line 888
    goto :goto_17

    .line 889
    :cond_20
    :goto_16
    const/4 v12, 0x0

    .line 890
    :goto_17
    if-eqz v4, :cond_21

    .line 891
    .line 892
    if-eqz v12, :cond_21

    .line 893
    .line 894
    goto :goto_18

    .line 895
    :cond_21
    add-int/lit8 v7, v7, 0x1

    .line 896
    .line 897
    new-instance v8, Ljava/lang/StringBuilder;

    .line 898
    .line 899
    const-string v10, "queryProductDetailsFromGooglePlay: Incomplete results on attempt "

    .line 900
    .line 901
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 902
    .line 903
    .line 904
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    const-string v10, " \u2014 gotSubs="

    .line 908
    .line 909
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    .line 911
    .line 912
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    const-string v4, ", gotInApp="

    .line 916
    .line 917
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    const-string v4, ". Retrying..."

    .line 924
    .line 925
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v4

    .line 932
    const-string v8, "BillingManager"

    .line 933
    .line 934
    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    .line 936
    .line 937
    const/4 v4, 0x0

    .line 938
    goto/16 :goto_b

    .line 939
    .line 940
    :cond_22
    invoke-static {}, Ld6;->o()V

    .line 941
    .line 942
    .line 943
    goto/16 :goto_c

    .line 944
    .line 945
    :cond_23
    sget-object v13, Lov2;->a:Lov2;

    .line 946
    .line 947
    :goto_18
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 948
    .line 949
    .line 950
    move-result v4

    .line 951
    if-eqz v4, :cond_24

    .line 952
    .line 953
    const-string v0, "productDetailList"

    .line 954
    .line 955
    const-string v1, "Unable to get purchase plans from Google Play Store.\n\nPlease check if Google Play is installed and does not have certification issues."

    .line 956
    .line 957
    invoke-static {v0, v1}, Lwq0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    new-instance v0, Loq0;

    .line 961
    .line 962
    invoke-direct {v0, v1}, Loq0;-><init>(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    goto/16 :goto_40

    .line 966
    .line 967
    :cond_24
    invoke-static {}, Lwq0;->c()Ljava/util/List;

    .line 968
    .line 969
    .line 970
    move-result-object v4

    .line 971
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 972
    .line 973
    .line 974
    move-result-object v5

    .line 975
    :cond_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 976
    .line 977
    .line 978
    move-result v7

    .line 979
    if-eqz v7, :cond_27

    .line 980
    .line 981
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v7

    .line 985
    move-object v9, v7

    .line 986
    check-cast v9, Lv76;

    .line 987
    .line 988
    if-eqz v9, :cond_26

    .line 989
    .line 990
    iget-object v9, v9, Lv76;->d:Ljava/lang/String;

    .line 991
    .line 992
    goto :goto_19

    .line 993
    :cond_26
    const/4 v9, 0x0

    .line 994
    :goto_19
    invoke-static {v9, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 995
    .line 996
    .line 997
    move-result v9

    .line 998
    if-eqz v9, :cond_25

    .line 999
    .line 1000
    goto :goto_1a

    .line 1001
    :cond_27
    const/4 v7, 0x0

    .line 1002
    :goto_1a
    check-cast v7, Lv76;

    .line 1003
    .line 1004
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v5

    .line 1008
    :cond_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1009
    .line 1010
    .line 1011
    move-result v9

    .line 1012
    if-eqz v9, :cond_2a

    .line 1013
    .line 1014
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v9

    .line 1018
    move-object v10, v9

    .line 1019
    check-cast v10, Lv76;

    .line 1020
    .line 1021
    if-eqz v10, :cond_29

    .line 1022
    .line 1023
    iget-object v10, v10, Lv76;->d:Ljava/lang/String;

    .line 1024
    .line 1025
    goto :goto_1b

    .line 1026
    :cond_29
    const/4 v10, 0x0

    .line 1027
    :goto_1b
    invoke-static {v10, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1028
    .line 1029
    .line 1030
    move-result v10

    .line 1031
    if-eqz v10, :cond_28

    .line 1032
    .line 1033
    goto :goto_1c

    .line 1034
    :cond_2a
    const/4 v9, 0x0

    .line 1035
    :goto_1c
    check-cast v9, Lv76;

    .line 1036
    .line 1037
    const v12, 0x7f060023

    .line 1038
    .line 1039
    .line 1040
    const v13, 0x7f130407

    .line 1041
    .line 1042
    .line 1043
    if-eqz v7, :cond_42

    .line 1044
    .line 1045
    if-eqz v4, :cond_31

    .line 1046
    .line 1047
    new-instance v14, Ljava/util/ArrayList;

    .line 1048
    .line 1049
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    .line 1051
    .line 1052
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v15

    .line 1056
    :cond_2b
    :goto_1d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 1057
    .line 1058
    .line 1059
    move-result v17

    .line 1060
    if-eqz v17, :cond_2c

    .line 1061
    .line 1062
    const v26, 0x7f080101

    .line 1063
    .line 1064
    .line 1065
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v5

    .line 1069
    move-object/from16 v17, v5

    .line 1070
    .line 1071
    check-cast v17, Lwb6;

    .line 1072
    .line 1073
    invoke-virtual/range {v17 .. v17}, Lwb6;->getSku()Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v8

    .line 1077
    iget-object v10, v7, Lv76;->c:Ljava/lang/String;

    .line 1078
    .line 1079
    invoke-static {v8, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1080
    .line 1081
    .line 1082
    move-result v8

    .line 1083
    if-eqz v8, :cond_2b

    .line 1084
    .line 1085
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    goto :goto_1d

    .line 1089
    :cond_2c
    const v26, 0x7f080101

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v5

    .line 1096
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1097
    .line 1098
    .line 1099
    move-result v8

    .line 1100
    if-nez v8, :cond_2d

    .line 1101
    .line 1102
    const/4 v8, 0x0

    .line 1103
    goto :goto_1e

    .line 1104
    :cond_2d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v8

    .line 1108
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1109
    .line 1110
    .line 1111
    move-result v10

    .line 1112
    if-nez v10, :cond_2e

    .line 1113
    .line 1114
    goto :goto_1e

    .line 1115
    :cond_2e
    move-object v10, v8

    .line 1116
    check-cast v10, Lwb6;

    .line 1117
    .line 1118
    invoke-virtual {v10}, Lwb6;->getPurchaseTime()Ljava/lang/Long;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v10

    .line 1122
    invoke-static {v10}, Lio4;->h(Ljava/lang/Long;)J

    .line 1123
    .line 1124
    .line 1125
    move-result-wide v14

    .line 1126
    :cond_2f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v10

    .line 1130
    move-object/from16 v17, v10

    .line 1131
    .line 1132
    check-cast v17, Lwb6;

    .line 1133
    .line 1134
    invoke-virtual/range {v17 .. v17}, Lwb6;->getPurchaseTime()Ljava/lang/Long;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v17

    .line 1138
    invoke-static/range {v17 .. v17}, Lio4;->h(Ljava/lang/Long;)J

    .line 1139
    .line 1140
    .line 1141
    move-result-wide v17

    .line 1142
    cmp-long v19, v14, v17

    .line 1143
    .line 1144
    if-gez v19, :cond_30

    .line 1145
    .line 1146
    move-object v8, v10

    .line 1147
    move-wide/from16 v14, v17

    .line 1148
    .line 1149
    :cond_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1150
    .line 1151
    .line 1152
    move-result v10

    .line 1153
    if-nez v10, :cond_2f

    .line 1154
    .line 1155
    :goto_1e
    check-cast v8, Lwb6;

    .line 1156
    .line 1157
    goto :goto_1f

    .line 1158
    :cond_31
    const v26, 0x7f080101

    .line 1159
    .line 1160
    .line 1161
    const/4 v8, 0x0

    .line 1162
    :goto_1f
    if-eqz v8, :cond_32

    .line 1163
    .line 1164
    invoke-virtual {v8}, Lwb6;->getPurchaseStateEnum()Lwb6$b;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v5

    .line 1168
    goto :goto_20

    .line 1169
    :cond_32
    const/4 v5, 0x0

    .line 1170
    :goto_20
    :try_start_3
    sget-object v8, Ld45;->b:Ld45;

    .line 1171
    .line 1172
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1173
    .line 1174
    .line 1175
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v8

    .line 1179
    if-eqz v8, :cond_33

    .line 1180
    .line 1181
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 1182
    .line 1183
    .line 1184
    move-result v8

    .line 1185
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1189
    goto :goto_21

    .line 1190
    :catch_3
    :cond_33
    const/4 v8, 0x0

    .line 1191
    :goto_21
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1192
    .line 1193
    invoke-static {v8, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1194
    .line 1195
    .line 1196
    move-result v8

    .line 1197
    if-nez v8, :cond_34

    .line 1198
    .line 1199
    goto :goto_22

    .line 1200
    :cond_34
    const/4 v5, 0x0

    .line 1201
    :goto_22
    if-nez v5, :cond_35

    .line 1202
    .line 1203
    sget-object v5, Lwb6$b;->UNSPECIFIED_STATE:Lwb6$b;

    .line 1204
    .line 1205
    :cond_35
    sget-object v8, Lsq0;->a:[I

    .line 1206
    .line 1207
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 1208
    .line 1209
    .line 1210
    move-result v10

    .line 1211
    aget v10, v8, v10

    .line 1212
    .line 1213
    if-eq v10, v1, :cond_38

    .line 1214
    .line 1215
    if-eq v10, v3, :cond_37

    .line 1216
    .line 1217
    if-ne v10, v11, :cond_36

    .line 1218
    .line 1219
    move/from16 v22, v13

    .line 1220
    .line 1221
    goto :goto_24

    .line 1222
    :cond_36
    invoke-static {}, Lq;->j()V

    .line 1223
    .line 1224
    .line 1225
    goto/16 :goto_c

    .line 1226
    .line 1227
    :cond_37
    const v10, 0x7f130436

    .line 1228
    .line 1229
    .line 1230
    :goto_23
    move/from16 v22, v10

    .line 1231
    .line 1232
    goto :goto_24

    .line 1233
    :cond_38
    const v10, 0x7f130434

    .line 1234
    .line 1235
    .line 1236
    goto :goto_23

    .line 1237
    :goto_24
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 1238
    .line 1239
    .line 1240
    move-result v10

    .line 1241
    aget v10, v8, v10

    .line 1242
    .line 1243
    if-eq v10, v1, :cond_3b

    .line 1244
    .line 1245
    if-eq v10, v3, :cond_3a

    .line 1246
    .line 1247
    if-ne v10, v11, :cond_39

    .line 1248
    .line 1249
    move v10, v12

    .line 1250
    goto :goto_25

    .line 1251
    :cond_39
    invoke-static {}, Lq;->j()V

    .line 1252
    .line 1253
    .line 1254
    goto/16 :goto_c

    .line 1255
    .line 1256
    :cond_3a
    const v10, 0x7f0600da

    .line 1257
    .line 1258
    .line 1259
    goto :goto_25

    .line 1260
    :cond_3b
    const v10, 0x7f060047

    .line 1261
    .line 1262
    .line 1263
    :goto_25
    sget-object v14, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1264
    .line 1265
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v14

    .line 1269
    invoke-virtual {v14, v10}, Landroid/content/Context;->getColor(I)I

    .line 1270
    .line 1271
    .line 1272
    move-result v23

    .line 1273
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 1274
    .line 1275
    .line 1276
    move-result v10

    .line 1277
    aget v8, v8, v10

    .line 1278
    .line 1279
    if-eq v8, v1, :cond_3e

    .line 1280
    .line 1281
    if-eq v8, v3, :cond_3d

    .line 1282
    .line 1283
    if-ne v8, v11, :cond_3c

    .line 1284
    .line 1285
    move-object/from16 v24, v0

    .line 1286
    .line 1287
    goto :goto_26

    .line 1288
    :cond_3c
    invoke-static {}, Lq;->j()V

    .line 1289
    .line 1290
    .line 1291
    goto/16 :goto_c

    .line 1292
    .line 1293
    :cond_3d
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v8

    .line 1297
    move-object/from16 v24, v8

    .line 1298
    .line 1299
    goto :goto_26

    .line 1300
    :cond_3e
    const/16 v24, 0x0

    .line 1301
    .line 1302
    :goto_26
    new-instance v8, Llx;

    .line 1303
    .line 1304
    invoke-direct {v8, v5, v7}, Llx;-><init>(Lwb6$b;Lv76;)V

    .line 1305
    .line 1306
    .line 1307
    new-instance v17, Lxa4;

    .line 1308
    .line 1309
    sget-object v10, Lwb6$b;->PURCHASED:Lwb6$b;

    .line 1310
    .line 1311
    if-ne v5, v10, :cond_3f

    .line 1312
    .line 1313
    move/from16 v19, v1

    .line 1314
    .line 1315
    goto :goto_27

    .line 1316
    :cond_3f
    const/16 v19, 0x0

    .line 1317
    .line 1318
    :goto_27
    sget-object v10, Lwb6$b;->PENDING:Lwb6$b;

    .line 1319
    .line 1320
    if-ne v5, v10, :cond_40

    .line 1321
    .line 1322
    move/from16 v20, v1

    .line 1323
    .line 1324
    goto :goto_28

    .line 1325
    :cond_40
    const/16 v20, 0x0

    .line 1326
    .line 1327
    :goto_28
    sget-object v10, Lwb6$b;->UNSPECIFIED_STATE:Lwb6$b;

    .line 1328
    .line 1329
    if-ne v5, v10, :cond_41

    .line 1330
    .line 1331
    move/from16 v21, v1

    .line 1332
    .line 1333
    :goto_29
    move-object/from16 v18, v7

    .line 1334
    .line 1335
    move-object/from16 v25, v8

    .line 1336
    .line 1337
    goto :goto_2a

    .line 1338
    :cond_41
    const/16 v21, 0x0

    .line 1339
    .line 1340
    goto :goto_29

    .line 1341
    :goto_2a
    invoke-direct/range {v17 .. v25}, Lxa4;-><init>(Lv76;ZZZIILjava/lang/Integer;Lbt3;)V

    .line 1342
    .line 1343
    .line 1344
    move-object/from16 v5, v17

    .line 1345
    .line 1346
    goto :goto_2b

    .line 1347
    :cond_42
    const v26, 0x7f080101

    .line 1348
    .line 1349
    .line 1350
    const/4 v5, 0x0

    .line 1351
    :goto_2b
    if-eqz v9, :cond_5d

    .line 1352
    .line 1353
    if-eqz v4, :cond_49

    .line 1354
    .line 1355
    new-instance v7, Ljava/util/ArrayList;

    .line 1356
    .line 1357
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    .line 1359
    .line 1360
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v4

    .line 1364
    :cond_43
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1365
    .line 1366
    .line 1367
    move-result v8

    .line 1368
    if-eqz v8, :cond_44

    .line 1369
    .line 1370
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v8

    .line 1374
    move-object v10, v8

    .line 1375
    check-cast v10, Lwb6;

    .line 1376
    .line 1377
    invoke-virtual {v10}, Lwb6;->getSku()Ljava/lang/String;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v10

    .line 1381
    iget-object v14, v9, Lv76;->c:Ljava/lang/String;

    .line 1382
    .line 1383
    invoke-static {v10, v14}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1384
    .line 1385
    .line 1386
    move-result v10

    .line 1387
    if-eqz v10, :cond_43

    .line 1388
    .line 1389
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    .line 1391
    .line 1392
    goto :goto_2c

    .line 1393
    :cond_44
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v4

    .line 1397
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1398
    .line 1399
    .line 1400
    move-result v7

    .line 1401
    if-nez v7, :cond_45

    .line 1402
    .line 1403
    const/4 v7, 0x0

    .line 1404
    goto :goto_2d

    .line 1405
    :cond_45
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v7

    .line 1409
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1410
    .line 1411
    .line 1412
    move-result v8

    .line 1413
    if-nez v8, :cond_46

    .line 1414
    .line 1415
    goto :goto_2d

    .line 1416
    :cond_46
    move-object v8, v7

    .line 1417
    check-cast v8, Lwb6;

    .line 1418
    .line 1419
    invoke-virtual {v8}, Lwb6;->getPurchaseTime()Ljava/lang/Long;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v8

    .line 1423
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    .line 1424
    .line 1425
    .line 1426
    move-result-wide v14

    .line 1427
    :cond_47
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v8

    .line 1431
    move-object v10, v8

    .line 1432
    check-cast v10, Lwb6;

    .line 1433
    .line 1434
    invoke-virtual {v10}, Lwb6;->getPurchaseTime()Ljava/lang/Long;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v10

    .line 1438
    invoke-static {v10}, Lio4;->h(Ljava/lang/Long;)J

    .line 1439
    .line 1440
    .line 1441
    move-result-wide v17

    .line 1442
    cmp-long v10, v14, v17

    .line 1443
    .line 1444
    if-gez v10, :cond_48

    .line 1445
    .line 1446
    move-object v7, v8

    .line 1447
    move-wide/from16 v14, v17

    .line 1448
    .line 1449
    :cond_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1450
    .line 1451
    .line 1452
    move-result v8

    .line 1453
    if-nez v8, :cond_47

    .line 1454
    .line 1455
    :goto_2d
    check-cast v7, Lwb6;

    .line 1456
    .line 1457
    goto :goto_2e

    .line 1458
    :cond_49
    const/4 v7, 0x0

    .line 1459
    :goto_2e
    if-eqz v7, :cond_4a

    .line 1460
    .line 1461
    invoke-virtual {v7}, Lwb6;->getPurchaseStateEnum()Lwb6$b;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v4

    .line 1465
    goto :goto_2f

    .line 1466
    :cond_4a
    const/4 v4, 0x0

    .line 1467
    :goto_2f
    :try_start_4
    sget-object v8, Ld45;->b:Ld45;

    .line 1468
    .line 1469
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1470
    .line 1471
    .line 1472
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v8

    .line 1476
    if-eqz v8, :cond_4b

    .line 1477
    .line 1478
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 1479
    .line 1480
    .line 1481
    move-result v8

    .line 1482
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1486
    goto :goto_30

    .line 1487
    :catch_4
    :cond_4b
    const/4 v8, 0x0

    .line 1488
    :goto_30
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1489
    .line 1490
    invoke-static {v8, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1491
    .line 1492
    .line 1493
    move-result v8

    .line 1494
    if-nez v8, :cond_4c

    .line 1495
    .line 1496
    goto :goto_31

    .line 1497
    :cond_4c
    const/4 v4, 0x0

    .line 1498
    :goto_31
    if-nez v4, :cond_4d

    .line 1499
    .line 1500
    sget-object v4, Lwb6$b;->UNSPECIFIED_STATE:Lwb6$b;

    .line 1501
    .line 1502
    :cond_4d
    if-eqz v7, :cond_4e

    .line 1503
    .line 1504
    invoke-virtual {v7}, Lwb6;->getAutoRenewing()Ljava/lang/Boolean;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v7

    .line 1508
    invoke-static {v7, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1509
    .line 1510
    .line 1511
    move-result v7

    .line 1512
    goto :goto_32

    .line 1513
    :cond_4e
    const/4 v7, 0x0

    .line 1514
    :goto_32
    sget-object v8, Lsq0;->a:[I

    .line 1515
    .line 1516
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 1517
    .line 1518
    .line 1519
    move-result v10

    .line 1520
    aget v10, v8, v10

    .line 1521
    .line 1522
    if-eq v10, v1, :cond_52

    .line 1523
    .line 1524
    if-eq v10, v3, :cond_50

    .line 1525
    .line 1526
    if-ne v10, v11, :cond_4f

    .line 1527
    .line 1528
    :goto_33
    move/from16 v22, v13

    .line 1529
    .line 1530
    goto :goto_34

    .line 1531
    :cond_4f
    invoke-static {}, Lq;->j()V

    .line 1532
    .line 1533
    .line 1534
    goto/16 :goto_c

    .line 1535
    .line 1536
    :cond_50
    if-eqz v7, :cond_51

    .line 1537
    .line 1538
    const v13, 0x7f1300f1

    .line 1539
    .line 1540
    .line 1541
    goto :goto_33

    .line 1542
    :cond_51
    const v13, 0x7f130549

    .line 1543
    .line 1544
    .line 1545
    goto :goto_33

    .line 1546
    :cond_52
    const v13, 0x7f130547

    .line 1547
    .line 1548
    .line 1549
    goto :goto_33

    .line 1550
    :goto_34
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 1551
    .line 1552
    .line 1553
    move-result v10

    .line 1554
    aget v10, v8, v10

    .line 1555
    .line 1556
    if-eq v10, v1, :cond_56

    .line 1557
    .line 1558
    if-eq v10, v3, :cond_54

    .line 1559
    .line 1560
    if-ne v10, v11, :cond_53

    .line 1561
    .line 1562
    move v10, v12

    .line 1563
    goto :goto_35

    .line 1564
    :cond_53
    invoke-static {}, Lq;->j()V

    .line 1565
    .line 1566
    .line 1567
    goto/16 :goto_c

    .line 1568
    .line 1569
    :cond_54
    if-eqz v7, :cond_55

    .line 1570
    .line 1571
    const v10, 0x7f0604ae

    .line 1572
    .line 1573
    .line 1574
    goto :goto_35

    .line 1575
    :cond_55
    const v10, 0x7f0600da

    .line 1576
    .line 1577
    .line 1578
    goto :goto_35

    .line 1579
    :cond_56
    const v10, 0x7f060047

    .line 1580
    .line 1581
    .line 1582
    :goto_35
    sget-object v12, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1583
    .line 1584
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v12

    .line 1588
    invoke-virtual {v12, v10}, Landroid/content/Context;->getColor(I)I

    .line 1589
    .line 1590
    .line 1591
    move-result v23

    .line 1592
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 1593
    .line 1594
    .line 1595
    move-result v10

    .line 1596
    aget v8, v8, v10

    .line 1597
    .line 1598
    if-eq v8, v1, :cond_5a

    .line 1599
    .line 1600
    if-eq v8, v3, :cond_58

    .line 1601
    .line 1602
    if-ne v8, v11, :cond_57

    .line 1603
    .line 1604
    :goto_36
    move-object/from16 v24, v0

    .line 1605
    .line 1606
    goto :goto_38

    .line 1607
    :cond_57
    invoke-static {}, Lq;->j()V

    .line 1608
    .line 1609
    .line 1610
    goto/16 :goto_c

    .line 1611
    .line 1612
    :cond_58
    if-eqz v7, :cond_59

    .line 1613
    .line 1614
    const v0, 0x7f080177

    .line 1615
    .line 1616
    .line 1617
    goto :goto_37

    .line 1618
    :cond_59
    move/from16 v0, v26

    .line 1619
    .line 1620
    :goto_37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v0

    .line 1624
    goto :goto_36

    .line 1625
    :cond_5a
    const/16 v24, 0x0

    .line 1626
    .line 1627
    :goto_38
    new-instance v0, Lrm;

    .line 1628
    .line 1629
    invoke-direct {v0, v4, v9}, Lrm;-><init>(Lwb6$b;Lv76;)V

    .line 1630
    .line 1631
    .line 1632
    new-instance v17, Lxa4;

    .line 1633
    .line 1634
    sget-object v3, Lwb6$b;->PURCHASED:Lwb6$b;

    .line 1635
    .line 1636
    if-ne v4, v3, :cond_5b

    .line 1637
    .line 1638
    move/from16 v19, v1

    .line 1639
    .line 1640
    goto :goto_39

    .line 1641
    :cond_5b
    const/16 v19, 0x0

    .line 1642
    .line 1643
    :goto_39
    sget-object v3, Lwb6$b;->PENDING:Lwb6$b;

    .line 1644
    .line 1645
    if-ne v4, v3, :cond_5c

    .line 1646
    .line 1647
    move/from16 v20, v1

    .line 1648
    .line 1649
    goto :goto_3a

    .line 1650
    :cond_5c
    const/16 v20, 0x0

    .line 1651
    .line 1652
    :goto_3a
    const/16 v21, 0x1

    .line 1653
    .line 1654
    move-object/from16 v25, v0

    .line 1655
    .line 1656
    move-object/from16 v18, v9

    .line 1657
    .line 1658
    invoke-direct/range {v17 .. v25}, Lxa4;-><init>(Lv76;ZZZIILjava/lang/Integer;Lbt3;)V

    .line 1659
    .line 1660
    .line 1661
    move-object/from16 v0, v17

    .line 1662
    .line 1663
    goto :goto_3b

    .line 1664
    :cond_5d
    const/4 v0, 0x0

    .line 1665
    :goto_3b
    filled-new-array {v5, v0}, [Lxa4;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v0

    .line 1669
    invoke-static {v0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v8

    .line 1673
    move-object v0, v8

    .line 1674
    check-cast v0, Ljava/util/ArrayList;

    .line 1675
    .line 1676
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1677
    .line 1678
    .line 1679
    move-result v3

    .line 1680
    if-eqz v3, :cond_5e

    .line 1681
    .line 1682
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 1683
    .line 1684
    const/4 v13, 0x4

    .line 1685
    const/4 v14, 0x0

    .line 1686
    const-string v10, "BillingManager"

    .line 1687
    .line 1688
    const-string v11, "Empty in-app items!"

    .line 1689
    .line 1690
    const/4 v12, 0x0

    .line 1691
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1692
    .line 1693
    .line 1694
    new-instance v0, Loq0;

    .line 1695
    .line 1696
    invoke-direct {v0, v11}, Loq0;-><init>(Ljava/lang/String;)V

    .line 1697
    .line 1698
    .line 1699
    goto/16 :goto_40

    .line 1700
    .line 1701
    :cond_5e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v3

    .line 1705
    :cond_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1706
    .line 1707
    .line 1708
    move-result v4

    .line 1709
    if-eqz v4, :cond_60

    .line 1710
    .line 1711
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v4

    .line 1715
    move-object v5, v4

    .line 1716
    check-cast v5, Lxa4;

    .line 1717
    .line 1718
    invoke-virtual {v5}, Lxa4;->isPurchased()Z

    .line 1719
    .line 1720
    .line 1721
    move-result v5

    .line 1722
    if-eqz v5, :cond_5f

    .line 1723
    .line 1724
    goto :goto_3c

    .line 1725
    :cond_60
    const/4 v4, 0x0

    .line 1726
    :goto_3c
    check-cast v4, Lxa4;

    .line 1727
    .line 1728
    if-nez v4, :cond_63

    .line 1729
    .line 1730
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v3

    .line 1734
    :cond_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1735
    .line 1736
    .line 1737
    move-result v4

    .line 1738
    if-eqz v4, :cond_62

    .line 1739
    .line 1740
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v4

    .line 1744
    move-object v5, v4

    .line 1745
    check-cast v5, Lxa4;

    .line 1746
    .line 1747
    invoke-virtual {v5}, Lxa4;->isLifetime()Z

    .line 1748
    .line 1749
    .line 1750
    move-result v5

    .line 1751
    if-eqz v5, :cond_61

    .line 1752
    .line 1753
    move-object v5, v4

    .line 1754
    goto :goto_3d

    .line 1755
    :cond_62
    const/4 v5, 0x0

    .line 1756
    :goto_3d
    move-object v4, v5

    .line 1757
    check-cast v4, Lxa4;

    .line 1758
    .line 1759
    if-nez v4, :cond_63

    .line 1760
    .line 1761
    invoke-static {v8}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v3

    .line 1765
    move-object v4, v3

    .line 1766
    check-cast v4, Lxa4;

    .line 1767
    .line 1768
    :cond_63
    new-instance v7, Lfm7;

    .line 1769
    .line 1770
    invoke-virtual {v4}, Lxa4;->getItemId()Ljava/lang/String;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v3

    .line 1774
    invoke-static {v3}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v9

    .line 1778
    const/4 v11, 0x0

    .line 1779
    const/16 v12, 0x1c

    .line 1780
    .line 1781
    const/4 v10, 0x0

    .line 1782
    invoke-direct/range {v7 .. v12}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 1783
    .line 1784
    .line 1785
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1786
    .line 1787
    .line 1788
    move-result v3

    .line 1789
    if-eqz v3, :cond_65

    .line 1790
    .line 1791
    :cond_64
    const/4 v1, 0x0

    .line 1792
    goto :goto_3e

    .line 1793
    :cond_65
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v0

    .line 1797
    :cond_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1798
    .line 1799
    .line 1800
    move-result v3

    .line 1801
    if-eqz v3, :cond_64

    .line 1802
    .line 1803
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v3

    .line 1807
    check-cast v3, Lxa4;

    .line 1808
    .line 1809
    invoke-virtual {v3}, Lxa4;->isPurchased()Z

    .line 1810
    .line 1811
    .line 1812
    move-result v3

    .line 1813
    if-eqz v3, :cond_66

    .line 1814
    .line 1815
    :goto_3e
    if-nez v1, :cond_67

    .line 1816
    .line 1817
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 1818
    .line 1819
    const/4 v12, 0x4

    .line 1820
    const/4 v13, 0x0

    .line 1821
    const-string v9, "BillingManager"

    .line 1822
    .line 1823
    const-string v10, "None of the items purchased"

    .line 1824
    .line 1825
    const/4 v11, 0x0

    .line 1826
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1827
    .line 1828
    .line 1829
    sget-object v0, Lwb6;->Companion:Lwb6$a;

    .line 1830
    .line 1831
    invoke-virtual {v0}, Lwb6$a;->default()Lwb6;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v0

    .line 1835
    invoke-static {}, Lre3;->k()Lzc2;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v3

    .line 1839
    const-string v4, "transactions"

    .line 1840
    .line 1841
    invoke-virtual {v3, v4}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v3

    .line 1845
    const-string v4, "premium"

    .line 1846
    .line 1847
    invoke-virtual {v3, v4}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v3

    .line 1851
    invoke-virtual {v3, v0}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v0

    .line 1855
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1856
    .line 1857
    .line 1858
    :cond_67
    new-instance v0, Lnq0;

    .line 1859
    .line 1860
    invoke-direct {v0, v7, v1}, Lnq0;-><init>(Lfm7;Z)V

    .line 1861
    .line 1862
    .line 1863
    goto :goto_40

    .line 1864
    :cond_68
    :goto_3f
    const-string v0, "SKUs"

    .line 1865
    .line 1866
    const-string v1, "Unable to get purchase plans from Firebase server.\n\nPlease disable your ad-blocker or try using a VPN."

    .line 1867
    .line 1868
    invoke-static {v0, v1}, Lwq0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    .line 1870
    .line 1871
    new-instance v0, Loq0;

    .line 1872
    .line 1873
    invoke-direct {v0, v1}, Loq0;-><init>(Ljava/lang/String;)V

    .line 1874
    .line 1875
    .line 1876
    :goto_40
    invoke-virtual {v6, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 1877
    .line 1878
    .line 1879
    goto :goto_41

    .line 1880
    :cond_69
    invoke-static {}, Lq;->j()V

    .line 1881
    .line 1882
    .line 1883
    goto/16 :goto_c

    .line 1884
    .line 1885
    :goto_41
    return-object v2

    .line 1886
    :pswitch_15
    new-instance v0, Lij0;

    .line 1887
    .line 1888
    invoke-direct {v0}, Lr35;-><init>()V

    .line 1889
    .line 1890
    .line 1891
    return-object v0

    .line 1892
    :pswitch_16
    sget-object v0, Ldz5;->a:Ldz5;

    .line 1893
    .line 1894
    invoke-static {}, Ldz5;->n()Z

    .line 1895
    .line 1896
    .line 1897
    move-result v0

    .line 1898
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v0

    .line 1902
    return-object v0

    .line 1903
    :pswitch_17
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1904
    .line 1905
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v0

    .line 1909
    const-class v2, Landroid/os/UserManager;

    .line 1910
    .line 1911
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v0

    .line 1915
    check-cast v0, Landroid/os/UserManager;

    .line 1916
    .line 1917
    if-eqz v0, :cond_6a

    .line 1918
    .line 1919
    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    .line 1920
    .line 1921
    .line 1922
    move-result v0

    .line 1923
    if-nez v0, :cond_6a

    .line 1924
    .line 1925
    goto :goto_42

    .line 1926
    :cond_6a
    const/4 v1, 0x0

    .line 1927
    :goto_42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v0

    .line 1931
    return-object v0

    .line 1932
    :pswitch_18
    new-instance v0, Lai6;

    .line 1933
    .line 1934
    const-string v1, "\\W"

    .line 1935
    .line 1936
    invoke-direct {v0, v1}, Lai6;-><init>(Ljava/lang/String;)V

    .line 1937
    .line 1938
    .line 1939
    return-object v0

    .line 1940
    nop

    .line 1941
    :pswitch_data_0
    .packed-switch 0x0
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
