.class public final Lha7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lha7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lha7;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lha7;->a:Lha7;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;)V
    .locals 13

    .line 1
    const-string v1, "editor"

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lyi5;

    .line 9
    .line 10
    const/4 v3, 0x6

    .line 11
    invoke-direct {v0, p0, v3}, Lyi5;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lha7;->e(Lbt3;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lqb5;

    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    invoke-direct {v0, p0, v3}, Lqb5;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lha7;->e(Lbt3;)V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isShowSystemApps()Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v0, v3

    .line 41
    :goto_0
    const-string v5, "show_system_apps"

    .line 42
    .line 43
    sget-object v6, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    invoke-interface {v6, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    move-object v7, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move-object v7, v0

    .line 71
    :goto_1
    const/4 v9, 0x4

    .line 72
    const/4 v10, 0x0

    .line 73
    const-string v6, "SettingsBackupHelper"

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :goto_2
    :try_start_1
    sget-object v0, Lxy;->Right:Lxy;

    .line 80
    .line 81
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getAppListRightSwipeActions()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {v0, v5}, Lho6;->O(Lxy;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lxy;->Left:Lxy;

    .line 89
    .line 90
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getAppListLeftSwipeActions()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {v0, v5}, Lho6;->O(Lxy;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .line 96
    .line 97
    goto :goto_4

    .line 98
    :catch_1
    move-exception v0

    .line 99
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-nez v0, :cond_3

    .line 106
    .line 107
    move-object v7, v2

    .line 108
    goto :goto_3

    .line 109
    :cond_3
    move-object v7, v0

    .line 110
    :goto_3
    const/4 v9, 0x4

    .line 111
    const/4 v10, 0x0

    .line 112
    const-string v6, "SettingsBackupHelper"

    .line 113
    .line 114
    const/4 v8, 0x0

    .line 115
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :goto_4
    :try_start_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getAppsMultipleBackupStrategy()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 119
    .line 120
    .line 121
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 122
    const-string v5, "apps_multiple_backups_strategy"

    .line 123
    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    :try_start_3
    sget-object v6, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    sget-object v6, Lw14;->a:Lgv7;

    .line 132
    .line 133
    invoke-static {v0, v5}, Lw14;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppBackupArchivingEnabled()Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-static {v0, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->b()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v5}, Lw14;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 162
    .line 163
    .line 164
    goto :goto_6

    .line 165
    :catch_2
    move-exception v0

    .line 166
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-nez v0, :cond_5

    .line 173
    .line 174
    move-object v7, v2

    .line 175
    goto :goto_5

    .line 176
    :cond_5
    move-object v7, v0

    .line 177
    :goto_5
    const/4 v9, 0x4

    .line 178
    const/4 v10, 0x0

    .line 179
    const-string v6, "SettingsBackupHelper"

    .line 180
    .line 181
    const/4 v8, 0x0

    .line 182
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_6
    :goto_6
    :try_start_4
    sget-object v0, Lyu;->Companion:Lwu;

    .line 186
    .line 187
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getRestorePermissionsMode()Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-static {v5}, Lwu;->b(Ljava/lang/Integer;)Lyu;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    const-string v5, "restore_runtime_permissions"

    .line 202
    .line 203
    invoke-virtual {v0}, Lyu;->getId()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    sget-object v6, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 208
    .line 209
    if-eqz v6, :cond_7

    .line 210
    .line 211
    invoke-interface {v6, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 216
    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_7
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 223
    :catch_3
    move-exception v0

    .line 224
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-nez v0, :cond_8

    .line 231
    .line 232
    move-object v7, v2

    .line 233
    goto :goto_7

    .line 234
    :cond_8
    move-object v7, v0

    .line 235
    :goto_7
    const/4 v9, 0x4

    .line 236
    const/4 v10, 0x0

    .line 237
    const-string v6, "SettingsBackupHelper"

    .line 238
    .line 239
    const/4 v8, 0x0

    .line 240
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :goto_8
    const/4 v5, 0x1

    .line 244
    :try_start_5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getRestoreSpecialAppPerms()Ljava/lang/Boolean;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    if-eqz v0, :cond_9

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    goto :goto_9

    .line 255
    :cond_9
    move v0, v5

    .line 256
    :goto_9
    const-string v6, "restore_special_permissions"

    .line 257
    .line 258
    sget-object v7, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 259
    .line 260
    if-eqz v7, :cond_a

    .line 261
    .line 262
    invoke-interface {v7, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    .line 268
    .line 269
    goto :goto_b

    .line 270
    :cond_a
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 274
    :catch_4
    move-exception v0

    .line 275
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    if-nez v0, :cond_b

    .line 282
    .line 283
    move-object v8, v2

    .line 284
    goto :goto_a

    .line 285
    :cond_b
    move-object v8, v0

    .line 286
    :goto_a
    const/4 v10, 0x4

    .line 287
    const/4 v11, 0x0

    .line 288
    const-string v7, "SettingsBackupHelper"

    .line 289
    .line 290
    const/4 v9, 0x0

    .line 291
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    :goto_b
    new-instance v0, Ln55;

    .line 295
    .line 296
    const/4 v6, 0x7

    .line 297
    invoke-direct {v0, p0, v6}, Ln55;-><init>(Ljava/lang/Object;I)V

    .line 298
    .line 299
    .line 300
    invoke-static {v0}, Lha7;->e(Lbt3;)V

    .line 301
    .line 302
    .line 303
    :try_start_6
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isAppCacheBackupReq()Ljava/lang/Boolean;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    if-eqz v0, :cond_c

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    goto :goto_c

    .line 314
    :cond_c
    move v0, v3

    .line 315
    :goto_c
    const-string v7, "backup_app_cache"

    .line 316
    .line 317
    sget-object v8, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 318
    .line 319
    if-eqz v8, :cond_d

    .line 320
    .line 321
    invoke-interface {v8, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 326
    .line 327
    .line 328
    goto :goto_e

    .line 329
    :cond_d
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 333
    :catch_5
    move-exception v0

    .line 334
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    if-nez v0, :cond_e

    .line 341
    .line 342
    move-object v9, v2

    .line 343
    goto :goto_d

    .line 344
    :cond_e
    move-object v9, v0

    .line 345
    :goto_d
    const/4 v11, 0x4

    .line 346
    const/4 v12, 0x0

    .line 347
    const-string v8, "SettingsBackupHelper"

    .line 348
    .line 349
    const/4 v10, 0x0

    .line 350
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    :goto_e
    :try_start_7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isRestoreSsaids()Ljava/lang/Boolean;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    if-eqz v0, :cond_f

    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    goto :goto_f

    .line 364
    :cond_f
    move v0, v3

    .line 365
    :goto_f
    const-string v7, "restore_ssaids"

    .line 366
    .line 367
    sget-object v8, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 368
    .line 369
    if-eqz v8, :cond_10

    .line 370
    .line 371
    invoke-interface {v8, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 376
    .line 377
    .line 378
    goto :goto_11

    .line 379
    :cond_10
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 383
    :catch_6
    move-exception v0

    .line 384
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 385
    .line 386
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    if-nez v0, :cond_11

    .line 391
    .line 392
    move-object v9, v2

    .line 393
    goto :goto_10

    .line 394
    :cond_11
    move-object v9, v0

    .line 395
    :goto_10
    const/4 v11, 0x4

    .line 396
    const/4 v12, 0x0

    .line 397
    const-string v8, "SettingsBackupHelper"

    .line 398
    .line 399
    const/4 v10, 0x0

    .line 400
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    :goto_11
    :try_start_8
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isInPlaceApkDowngradeEnabled()Ljava/lang/Boolean;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    if-eqz v0, :cond_12

    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    goto :goto_12

    .line 414
    :cond_12
    move v0, v3

    .line 415
    :goto_12
    const-string v7, "in_place_apk_downgrades"

    .line 416
    .line 417
    sget-object v8, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 418
    .line 419
    if-eqz v8, :cond_13

    .line 420
    .line 421
    invoke-interface {v8, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 426
    .line 427
    .line 428
    goto :goto_14

    .line 429
    :cond_13
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 433
    :catch_7
    move-exception v0

    .line 434
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 435
    .line 436
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    if-nez v0, :cond_14

    .line 441
    .line 442
    move-object v9, v2

    .line 443
    goto :goto_13

    .line 444
    :cond_14
    move-object v9, v0

    .line 445
    :goto_13
    const/4 v11, 0x4

    .line 446
    const/4 v12, 0x0

    .line 447
    const-string v8, "SettingsBackupHelper"

    .line 448
    .line 449
    const/4 v10, 0x0

    .line 450
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    :goto_14
    new-instance v0, Lto5;

    .line 454
    .line 455
    invoke-direct {v0, p0, v6}, Lto5;-><init>(Ljava/lang/Object;I)V

    .line 456
    .line 457
    .line 458
    invoke-static {v0}, Lha7;->e(Lbt3;)V

    .line 459
    .line 460
    .line 461
    new-instance v0, Lhs4;

    .line 462
    .line 463
    const/16 v6, 0xa

    .line 464
    .line 465
    invoke-direct {v0, p0, v6}, Lhs4;-><init>(Ljava/lang/Object;I)V

    .line 466
    .line 467
    .line 468
    invoke-static {v0}, Lha7;->e(Lbt3;)V

    .line 469
    .line 470
    .line 471
    new-instance v0, Lus5;

    .line 472
    .line 473
    const/4 v6, 0x5

    .line 474
    invoke-direct {v0, p0, v6}, Lus5;-><init>(Ljava/lang/Object;I)V

    .line 475
    .line 476
    .line 477
    invoke-static {v0}, Lha7;->e(Lbt3;)V

    .line 478
    .line 479
    .line 480
    :try_start_9
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isPlayNotificationSounds()Ljava/lang/Boolean;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    if-eqz v0, :cond_15

    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    :cond_15
    const-string v0, "play_notification_sounds"

    .line 491
    .line 492
    sget-object v6, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 493
    .line 494
    if-eqz v6, :cond_16

    .line 495
    .line 496
    invoke-interface {v6, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 501
    .line 502
    .line 503
    goto :goto_16

    .line 504
    :cond_16
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 508
    :catch_8
    move-exception v0

    .line 509
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 510
    .line 511
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    if-nez v0, :cond_17

    .line 516
    .line 517
    move-object v7, v2

    .line 518
    goto :goto_15

    .line 519
    :cond_17
    move-object v7, v0

    .line 520
    :goto_15
    const/4 v9, 0x4

    .line 521
    const/4 v10, 0x0

    .line 522
    const-string v6, "SettingsBackupHelper"

    .line 523
    .line 524
    const/4 v8, 0x0

    .line 525
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    :goto_16
    :try_start_a
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getLanguage()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-static {v0}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-static {}, Lj05;->b()Ljava/util/Locale;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v6

    .line 544
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v5

    .line 551
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    .line 553
    .line 554
    invoke-static {v6, v5}, Lxx3;->i(Ljava/lang/String;Ljava/lang/String;)Lis4;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    invoke-virtual {v0, v5}, Lis4;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v5

    .line 562
    if-nez v5, :cond_19

    .line 563
    .line 564
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    invoke-static {v0, v3}, Lj05;->a(Ljava/util/Locale;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 569
    .line 570
    .line 571
    goto :goto_18

    .line 572
    :catch_9
    move-exception v0

    .line 573
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 574
    .line 575
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    if-nez v0, :cond_18

    .line 580
    .line 581
    move-object v7, v2

    .line 582
    goto :goto_17

    .line 583
    :cond_18
    move-object v7, v0

    .line 584
    :goto_17
    const/4 v9, 0x4

    .line 585
    const/4 v10, 0x0

    .line 586
    const-string v6, "SettingsBackupHelper"

    .line 587
    .line 588
    const/4 v8, 0x0

    .line 589
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 590
    .line 591
    .line 592
    :cond_19
    :goto_18
    :try_start_b
    sget-object v0, Ltb1;->a:Ltb1;

    .line 593
    .line 594
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getCloudConnection()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    if-eqz v0, :cond_1a

    .line 599
    .line 600
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 601
    .line 602
    .line 603
    move-result v3

    .line 604
    if-nez v3, :cond_1b

    .line 605
    .line 606
    :cond_1a
    move-object v0, v4

    .line 607
    :cond_1b
    const-string v3, "setup_cloud_first_startup"

    .line 608
    .line 609
    sget-object v5, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 610
    .line 611
    if-eqz v5, :cond_1c

    .line 612
    .line 613
    invoke-interface {v5, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 618
    .line 619
    .line 620
    goto :goto_1a

    .line 621
    :cond_1c
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    throw v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 625
    :catch_a
    move-exception v0

    .line 626
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 627
    .line 628
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    if-nez v0, :cond_1d

    .line 633
    .line 634
    move-object v5, v2

    .line 635
    goto :goto_19

    .line 636
    :cond_1d
    move-object v5, v0

    .line 637
    :goto_19
    const/4 v7, 0x4

    .line 638
    const/4 v8, 0x0

    .line 639
    const-string v4, "SettingsBackupHelper"

    .line 640
    .line 641
    const/4 v6, 0x0

    .line 642
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 643
    .line 644
    .line 645
    :goto_1a
    new-instance v0, Lno5;

    .line 646
    .line 647
    const/4 v1, 0x4

    .line 648
    invoke-direct {v0, p0, v1}, Lno5;-><init>(Ljava/lang/Object;I)V

    .line 649
    .line 650
    .line 651
    invoke-static {v0}, Lha7;->e(Lbt3;)V

    .line 652
    .line 653
    .line 654
    return-void
.end method

.method public static b(Lorg/swiftapps/swiftbackup/intro/d;)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_8

    .line 15
    .line 16
    sget-object v0, Ld45;->b:Ld45;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v0, :cond_7

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    :try_start_0
    sget-object v3, Ld45;->b:Ld45;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-static {v0, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    if-eqz p0, :cond_2

    .line 58
    .line 59
    const v0, 0x7f1300fd

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lqo0;->h(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-static {}, Lre3;->k()Lzc2;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v3, "appSettings"

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0, v2}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    instance-of v3, v0, Lxe3;

    .line 80
    .line 81
    if-eqz v3, :cond_5

    .line 82
    .line 83
    check-cast v0, Lxe3;

    .line 84
    .line 85
    iget-object v0, v0, Lxe3;->n:Leb2;

    .line 86
    .line 87
    const-class v1, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 94
    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    if-eqz p0, :cond_4

    .line 99
    .line 100
    const v1, 0x7f130498

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lqo0;->h(I)V

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-static {v0}, Lha7;->a(Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;)V

    .line 107
    .line 108
    .line 109
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 110
    .line 111
    const/4 v7, 0x4

    .line 112
    const/4 v8, 0x0

    .line 113
    const-string v4, "SettingsBackupHelper"

    .line 114
    .line 115
    const-string v5, "Restoring settings from cloud complete"

    .line 116
    .line 117
    const/4 v6, 0x0

    .line 118
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return v2

    .line 122
    :cond_5
    instance-of p0, v0, Lwe3;

    .line 123
    .line 124
    if-eqz p0, :cond_6

    .line 125
    .line 126
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 127
    .line 128
    check-cast v0, Lwe3;

    .line 129
    .line 130
    iget-object p0, v0, Lwe3;->n:Lwc2;

    .line 131
    .line 132
    iget-object v4, p0, Lwc2;->b:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    const/4 v6, 0x4

    .line 138
    const/4 v7, 0x0

    .line 139
    const-string v3, "SettingsBackupHelper"

    .line 140
    .line 141
    const/4 v5, 0x0

    .line 142
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    return v1

    .line 146
    :cond_6
    invoke-static {}, Lq;->j()V

    .line 147
    .line 148
    .line 149
    return v1

    .line 150
    :cond_7
    :goto_0
    return v2

    .line 151
    :cond_8
    invoke-static {}, Ld6;->o()V

    .line 152
    .line 153
    .line 154
    return v1
.end method

.method public static synthetic d()V
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->Companion:Lorg/swiftapps/swiftbackup/model/firebase/AppSettings$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings$a;->withSavedSettings()Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lha7;->a:Lha7;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lha7;->c(Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static e(Lbt3;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    move-object p0, v0

    .line 7
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const-string p0, ""

    .line 16
    .line 17
    :cond_0
    move-object v2, p0

    .line 18
    const/4 v4, 0x4

    .line 19
    const/4 v5, 0x0

    .line 20
    const-string v1, "SettingsBackupHelper"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final declared-synchronized c(Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    sget-object v0, Ld45;->b:Ld45;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :try_start_1
    sget-object v1, Ld45;->b:Ld45;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :catch_0
    :cond_0
    :try_start_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lre3;->k()Lzc2;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "appSettings"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :cond_2
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    throw p1
.end method
