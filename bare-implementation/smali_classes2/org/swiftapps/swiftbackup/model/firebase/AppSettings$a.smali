.class public final Lorg/swiftapps/swiftbackup/model/firebase/AppSettings$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final withSavedSettings()Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;
    .locals 43

    .line 1
    const-string v0, "prefs"

    .line 2
    .line 3
    sget-object v1, Lh28;->Companion:Lf28;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lf28;->b()Lh28;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lh28;->getThemeId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {}, Lf28;->e()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    move-object v7, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v7, v4

    .line 30
    :goto_0
    sget-object v2, Lzc6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    .line 32
    invoke-static {}, Lyc6;->g()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/16 v3, 0x65

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/16 v5, 0xc9

    .line 43
    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    filled-new-array {v3, v5}, [Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move-object v2, v4

    .line 64
    :goto_1
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move-object v8, v2

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    :goto_2
    move-object v8, v4

    .line 76
    :goto_3
    if-eqz v8, :cond_4

    .line 77
    .line 78
    const/4 v12, 0x0

    .line 79
    const/16 v13, 0x3f

    .line 80
    .line 81
    const/4 v9, 0x0

    .line 82
    const/4 v10, 0x0

    .line 83
    const/4 v11, 0x0

    .line 84
    invoke-static/range {v8 .. v13}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    move-object v8, v2

    .line 89
    goto :goto_4

    .line 90
    :cond_4
    move-object v8, v4

    .line 91
    :goto_4
    sget-object v2, Lyu;->Companion:Lwu;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lwu;->a()Lyu;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lyu;->getId()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-lez v2, :cond_5

    .line 109
    .line 110
    move-object v9, v3

    .line 111
    goto :goto_5

    .line 112
    :cond_5
    move-object v9, v4

    .line 113
    :goto_5
    const-string v2, "restore_special_permissions"

    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 117
    .line 118
    if-eqz v5, :cond_6

    .line 119
    .line 120
    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    goto :goto_6

    .line 125
    :cond_6
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :catch_0
    move v2, v3

    .line 130
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    if-nez v2, :cond_7

    .line 135
    .line 136
    move-object v10, v5

    .line 137
    goto :goto_7

    .line 138
    :cond_7
    move-object v10, v4

    .line 139
    :goto_7
    :try_start_1
    sget-object v2, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 140
    .line 141
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/common/V;->getZ()Landroid/content/SharedPreferences;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    const-string v5, "saved_password_mode"

    .line 146
    .line 147
    sget-object v6, Lux5;->STANDARD_PASSWORD:Lux5;

    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-static {}, Lux5;->getEntries()Ljx2;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Lkx2;

    .line 162
    .line 163
    invoke-virtual {v5, v2}, Lkx2;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Lux5;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    .line 169
    goto :goto_8

    .line 170
    :catch_1
    move-object v2, v4

    .line 171
    :goto_8
    if-nez v2, :cond_8

    .line 172
    .line 173
    sget-object v2, Lux5;->STANDARD_PASSWORD:Lux5;

    .line 174
    .line 175
    :cond_8
    sget-object v5, Lux5;->STANDARD_PASSWORD:Lux5;

    .line 176
    .line 177
    if-eq v2, v5, :cond_9

    .line 178
    .line 179
    goto :goto_9

    .line 180
    :cond_9
    move-object v2, v4

    .line 181
    :goto_9
    if-eqz v2, :cond_a

    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    move-object v11, v2

    .line 192
    goto :goto_a

    .line 193
    :cond_a
    move-object v11, v4

    .line 194
    :goto_a
    invoke-static {}, Lz85;->r()Lxp1;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    sget-object v5, Lxp1;->Companion:Lwp1;

    .line 199
    .line 200
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    if-eq v2, v5, :cond_b

    .line 208
    .line 209
    goto :goto_b

    .line 210
    :cond_b
    move-object v2, v4

    .line 211
    :goto_b
    if-eqz v2, :cond_c

    .line 212
    .line 213
    invoke-virtual {v2}, Lxp1;->getLevel()I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    move-object v12, v2

    .line 222
    goto :goto_c

    .line 223
    :cond_c
    move-object v12, v4

    .line 224
    :goto_c
    sget-object v2, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->c()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->a()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-static {v2, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-nez v5, :cond_d

    .line 242
    .line 243
    move-object v13, v2

    .line 244
    goto :goto_d

    .line 245
    :cond_d
    move-object v13, v4

    .line 246
    :goto_d
    invoke-static {}, Lz85;->w()Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    if-eqz v2, :cond_e

    .line 255
    .line 256
    move-object v14, v5

    .line 257
    goto :goto_e

    .line 258
    :cond_e
    move-object v14, v4

    .line 259
    :goto_e
    invoke-static {}, Lok;->d()Ljava/util/ArrayList;

    .line 260
    .line 261
    .line 262
    move-result-object v16

    .line 263
    const-string v2, "restore_ssaids"

    .line 264
    .line 265
    const/4 v5, 0x0

    .line 266
    :try_start_2
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 267
    .line 268
    if-eqz v6, :cond_f

    .line 269
    .line 270
    invoke-interface {v6, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    goto :goto_f

    .line 275
    :cond_f
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw v4
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 279
    :catch_2
    move v2, v5

    .line 280
    :goto_f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    if-eqz v2, :cond_10

    .line 285
    .line 286
    move-object/from16 v17, v6

    .line 287
    .line 288
    goto :goto_10

    .line 289
    :cond_10
    move-object/from16 v17, v4

    .line 290
    .line 291
    :goto_10
    const-string v2, "in_place_apk_downgrades"

    .line 292
    .line 293
    :try_start_3
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 294
    .line 295
    if-eqz v6, :cond_11

    .line 296
    .line 297
    invoke-interface {v6, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    goto :goto_11

    .line 302
    :cond_11
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw v4
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 306
    :catch_3
    move v2, v5

    .line 307
    :goto_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    if-eqz v2, :cond_12

    .line 312
    .line 313
    move-object/from16 v18, v6

    .line 314
    .line 315
    goto :goto_12

    .line 316
    :cond_12
    move-object/from16 v18, v4

    .line 317
    .line 318
    :goto_12
    const-string v2, "play_notification_sounds"

    .line 319
    .line 320
    :try_start_4
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 321
    .line 322
    if-eqz v6, :cond_13

    .line 323
    .line 324
    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    goto :goto_13

    .line 329
    :cond_13
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw v4
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    .line 333
    :catch_4
    move v2, v3

    .line 334
    :goto_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    if-nez v2, :cond_14

    .line 339
    .line 340
    move-object/from16 v19, v6

    .line 341
    .line 342
    goto :goto_14

    .line 343
    :cond_14
    move-object/from16 v19, v4

    .line 344
    .line 345
    :goto_14
    const-string v2, "dynamic_colors"

    .line 346
    .line 347
    :try_start_5
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 348
    .line 349
    if-eqz v6, :cond_15

    .line 350
    .line 351
    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    goto :goto_15

    .line 356
    :cond_15
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw v4
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    .line 360
    :catch_5
    move v2, v3

    .line 361
    :goto_15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    if-nez v2, :cond_16

    .line 366
    .line 367
    move-object/from16 v20, v6

    .line 368
    .line 369
    goto :goto_16

    .line 370
    :cond_16
    move-object/from16 v20, v4

    .line 371
    .line 372
    :goto_16
    const-string v2, "app_locale"

    .line 373
    .line 374
    :try_start_6
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 375
    .line 376
    if-eqz v6, :cond_17

    .line 377
    .line 378
    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    goto :goto_17

    .line 383
    :cond_17
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v4
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    .line 387
    :catch_6
    move-object v2, v4

    .line 388
    :goto_17
    if-eqz v2, :cond_19

    .line 389
    .line 390
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    if-nez v6, :cond_18

    .line 395
    .line 396
    goto :goto_18

    .line 397
    :cond_18
    invoke-static {v2}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-virtual {v2}, Lis4;->a()Ljava/util/Locale;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    goto :goto_19

    .line 406
    :cond_19
    :goto_18
    invoke-static {}, Lxx3;->h()Lis4;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v2}, Lis4;->a()Ljava/util/Locale;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    :goto_19
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    invoke-static {v6, v2}, Lxx3;->i(Ljava/lang/String;Ljava/lang/String;)Lis4;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-static {}, Lxx3;->h()Lis4;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    invoke-virtual {v2, v6}, Lis4;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v6

    .line 440
    if-nez v6, :cond_1a

    .line 441
    .line 442
    goto :goto_1a

    .line 443
    :cond_1a
    move-object v2, v4

    .line 444
    :goto_1a
    if-eqz v2, :cond_1b

    .line 445
    .line 446
    invoke-virtual {v2}, Lis4;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    move-object/from16 v21, v2

    .line 451
    .line 452
    goto :goto_1b

    .line 453
    :cond_1b
    move-object/from16 v21, v4

    .line 454
    .line 455
    :goto_1b
    invoke-static {}, Lz85;->u()Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v22

    .line 459
    invoke-static {}, Lz85;->s()Lxp1;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    if-eq v2, v6, :cond_1c

    .line 468
    .line 469
    goto :goto_1c

    .line 470
    :cond_1c
    move-object v2, v4

    .line 471
    :goto_1c
    if-eqz v2, :cond_1d

    .line 472
    .line 473
    invoke-virtual {v2}, Lxp1;->getLevel()I

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    move-object/from16 v23, v2

    .line 482
    .line 483
    goto :goto_1d

    .line 484
    :cond_1d
    move-object/from16 v23, v4

    .line 485
    .line 486
    :goto_1d
    const-string v2, "messages_backup_mms"

    .line 487
    .line 488
    :try_start_7
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 489
    .line 490
    if-eqz v6, :cond_1e

    .line 491
    .line 492
    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    goto :goto_1e

    .line 497
    :cond_1e
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    throw v4
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    .line 501
    :catch_7
    :goto_1e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    if-nez v3, :cond_1f

    .line 506
    .line 507
    move-object/from16 v24, v2

    .line 508
    .line 509
    goto :goto_1f

    .line 510
    :cond_1f
    move-object/from16 v24, v4

    .line 511
    .line 512
    :goto_1f
    invoke-static {}, Lho6;->s()Ljava/lang/Integer;

    .line 513
    .line 514
    .line 515
    move-result-object v25

    .line 516
    invoke-static {}, Lho6;->p()Lxp1;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    if-eq v2, v3, :cond_20

    .line 525
    .line 526
    goto :goto_20

    .line 527
    :cond_20
    move-object v2, v4

    .line 528
    :goto_20
    if-eqz v2, :cond_21

    .line 529
    .line 530
    invoke-virtual {v2}, Lxp1;->getLevel()I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    move-object/from16 v26, v2

    .line 539
    .line 540
    goto :goto_21

    .line 541
    :cond_21
    move-object/from16 v26, v4

    .line 542
    .line 543
    :goto_21
    const-string v2, "compression_level_folders"

    .line 544
    .line 545
    const/4 v3, -0x1

    .line 546
    :try_start_8
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 547
    .line 548
    if-eqz v6, :cond_22

    .line 549
    .line 550
    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    goto :goto_22

    .line 555
    :cond_22
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    throw v4
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    .line 559
    :catch_8
    :goto_22
    sget-object v2, Lxp1;->Companion:Lwp1;

    .line 560
    .line 561
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    invoke-static {}, Lwp1;->a()[Lxp1;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    move v6, v5

    .line 569
    :goto_23
    const/4 v15, 0x2

    .line 570
    if-ge v6, v15, :cond_24

    .line 571
    .line 572
    aget-object v15, v2, v6

    .line 573
    .line 574
    move-object/from16 p0, v4

    .line 575
    .line 576
    invoke-virtual {v15}, Lxp1;->getLevel()I

    .line 577
    .line 578
    .line 579
    move-result v4

    .line 580
    if-ne v4, v3, :cond_23

    .line 581
    .line 582
    goto :goto_24

    .line 583
    :cond_23
    add-int/lit8 v6, v6, 0x1

    .line 584
    .line 585
    move-object/from16 v4, p0

    .line 586
    .line 587
    goto :goto_23

    .line 588
    :cond_24
    move-object/from16 p0, v4

    .line 589
    .line 590
    move-object/from16 v15, p0

    .line 591
    .line 592
    :goto_24
    if-nez v15, :cond_25

    .line 593
    .line 594
    sget-object v2, Lxp1;->Companion:Lwp1;

    .line 595
    .line 596
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 600
    .line 601
    .line 602
    move-result-object v15

    .line 603
    :cond_25
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    if-eq v15, v2, :cond_26

    .line 608
    .line 609
    goto :goto_25

    .line 610
    :cond_26
    move-object/from16 v15, p0

    .line 611
    .line 612
    :goto_25
    if-eqz v15, :cond_27

    .line 613
    .line 614
    invoke-virtual {v15}, Lxp1;->getLevel()I

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    move-object/from16 v30, v2

    .line 623
    .line 624
    goto :goto_26

    .line 625
    :cond_27
    move-object/from16 v30, p0

    .line 626
    .line 627
    :goto_26
    const-string v2, "show_system_apps"

    .line 628
    .line 629
    :try_start_9
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 630
    .line 631
    if-eqz v3, :cond_28

    .line 632
    .line 633
    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    goto :goto_27

    .line 638
    :cond_28
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    throw p0
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    .line 642
    :catch_9
    :goto_27
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    if-eqz v5, :cond_29

    .line 647
    .line 648
    move-object/from16 v27, v0

    .line 649
    .line 650
    goto :goto_28

    .line 651
    :cond_29
    move-object/from16 v27, p0

    .line 652
    .line 653
    :goto_28
    sget-object v0, Lxy;->Right:Lxy;

    .line 654
    .line 655
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    .line 657
    .line 658
    invoke-static {v0}, Lho6;->o(Lxy;)Lqy;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    invoke-static {v2}, Lho6;->m(Lqy;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    invoke-static {v0}, Lho6;->j(Lxy;)Lqy;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    invoke-static {v0}, Lho6;->m(Lqy;)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    if-nez v0, :cond_2a

    .line 679
    .line 680
    move-object/from16 v28, v2

    .line 681
    .line 682
    goto :goto_29

    .line 683
    :cond_2a
    move-object/from16 v28, p0

    .line 684
    .line 685
    :goto_29
    sget-object v0, Lxy;->Left:Lxy;

    .line 686
    .line 687
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 688
    .line 689
    .line 690
    invoke-static {v0}, Lho6;->o(Lxy;)Lqy;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-static {v2}, Lho6;->m(Lqy;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    invoke-static {v0}, Lho6;->j(Lxy;)Lqy;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-static {v0}, Lho6;->m(Lqy;)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    if-nez v0, :cond_2b

    .line 711
    .line 712
    move-object/from16 v29, v2

    .line 713
    .line 714
    goto :goto_2a

    .line 715
    :cond_2b
    move-object/from16 v29, p0

    .line 716
    .line 717
    :goto_2a
    sget-object v0, Ltb1;->a:Ltb1;

    .line 718
    .line 719
    invoke-static {}, Lqb1;->m()Z

    .line 720
    .line 721
    .line 722
    move-result v0

    .line 723
    if-eqz v0, :cond_2c

    .line 724
    .line 725
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-virtual {v0}, Ldd1;->getConstant()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    move-object/from16 v31, v0

    .line 734
    .line 735
    goto :goto_2b

    .line 736
    :cond_2c
    move-object/from16 v31, p0

    .line 737
    .line 738
    :goto_2b
    invoke-static {}, Lho6;->B()Z

    .line 739
    .line 740
    .line 741
    move-result v0

    .line 742
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 743
    .line 744
    .line 745
    move-result-object v2

    .line 746
    if-eqz v0, :cond_2d

    .line 747
    .line 748
    move-object/from16 v32, v2

    .line 749
    .line 750
    goto :goto_2c

    .line 751
    :cond_2d
    move-object/from16 v32, p0

    .line 752
    .line 753
    :goto_2c
    invoke-static {}, Lho6;->A()Z

    .line 754
    .line 755
    .line 756
    move-result v0

    .line 757
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    if-eqz v0, :cond_2e

    .line 762
    .line 763
    move-object/from16 v33, v2

    .line 764
    .line 765
    goto :goto_2d

    .line 766
    :cond_2e
    move-object/from16 v33, p0

    .line 767
    .line 768
    :goto_2d
    invoke-static {}, Lho6;->t()I

    .line 769
    .line 770
    .line 771
    move-result v0

    .line 772
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 773
    .line 774
    .line 775
    move-result-object v2

    .line 776
    sget-object v3, Loi5;->L:Lgv7;

    .line 777
    .line 778
    invoke-static {}, Lly8;->v()I

    .line 779
    .line 780
    .line 781
    move-result v3

    .line 782
    if-eq v0, v3, :cond_2f

    .line 783
    .line 784
    move-object/from16 v34, v2

    .line 785
    .line 786
    goto :goto_2e

    .line 787
    :cond_2f
    move-object/from16 v34, p0

    .line 788
    .line 789
    :goto_2e
    invoke-static {}, Lho6;->q()I

    .line 790
    .line 791
    .line 792
    move-result v0

    .line 793
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 794
    .line 795
    .line 796
    move-result-object v2

    .line 797
    const/16 v3, 0x19

    .line 798
    .line 799
    if-eq v0, v3, :cond_30

    .line 800
    .line 801
    move-object/from16 v35, v2

    .line 802
    .line 803
    goto :goto_2f

    .line 804
    :cond_30
    move-object/from16 v35, p0

    .line 805
    .line 806
    :goto_2f
    invoke-static {}, Lho6;->w()I

    .line 807
    .line 808
    .line 809
    move-result v0

    .line 810
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    const/4 v3, 0x5

    .line 815
    if-eq v0, v3, :cond_31

    .line 816
    .line 817
    move-object/from16 v36, v2

    .line 818
    .line 819
    goto :goto_30

    .line 820
    :cond_31
    move-object/from16 v36, p0

    .line 821
    .line 822
    :goto_30
    invoke-static {}, Lho6;->v()I

    .line 823
    .line 824
    .line 825
    move-result v0

    .line 826
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 827
    .line 828
    .line 829
    move-result-object v2

    .line 830
    const/16 v4, 0x64

    .line 831
    .line 832
    if-eq v0, v4, :cond_32

    .line 833
    .line 834
    move-object/from16 v37, v2

    .line 835
    .line 836
    goto :goto_31

    .line 837
    :cond_32
    move-object/from16 v37, p0

    .line 838
    .line 839
    :goto_31
    invoke-static {}, Lho6;->z()Z

    .line 840
    .line 841
    .line 842
    move-result v0

    .line 843
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    if-eqz v0, :cond_33

    .line 848
    .line 849
    move-object/from16 v38, v2

    .line 850
    .line 851
    goto :goto_32

    .line 852
    :cond_33
    move-object/from16 v38, p0

    .line 853
    .line 854
    :goto_32
    invoke-static {}, Lho6;->y()I

    .line 855
    .line 856
    .line 857
    move-result v0

    .line 858
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 859
    .line 860
    .line 861
    move-result-object v2

    .line 862
    if-eq v0, v3, :cond_34

    .line 863
    .line 864
    move-object/from16 v39, v2

    .line 865
    .line 866
    goto :goto_33

    .line 867
    :cond_34
    move-object/from16 v39, p0

    .line 868
    .line 869
    :goto_33
    new-instance v5, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 870
    .line 871
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 872
    .line 873
    .line 874
    move-result-object v6

    .line 875
    const/16 v41, 0x0

    .line 876
    .line 877
    const/16 v42, 0x0

    .line 878
    .line 879
    const/4 v15, 0x0

    .line 880
    const/16 v40, 0x200

    .line 881
    .line 882
    invoke-direct/range {v5 .. v42}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 883
    .line 884
    .line 885
    return-object v5
.end method
