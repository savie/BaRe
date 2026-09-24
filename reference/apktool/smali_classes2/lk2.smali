.class public final Llk2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Laj8;


# instance fields
.field public final synthetic a:Lmk2;


# direct methods
.method public constructor <init>(Lmk2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llk2;->a:Lmk2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCancelled(Lwc2;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Llk2;->a:Lmk2;

    .line 5
    .line 6
    iget-object v0, p0, La55;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "onCancelled: "

    .line 9
    .line 10
    invoke-virtual {p1}, Lwc2;->c()Lxc2;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lmk2;->l:Lex6;

    .line 18
    .line 19
    new-instance p1, Lyj2;

    .line 20
    .line 21
    sget-object v0, Lxj2;->NetworkError:Lxj2;

    .line 22
    .line 23
    invoke-direct {p1, v0}, Lyj2;-><init>(Lxj2;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onDataChange(Leb2;)V
    .locals 26

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->Companion:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;->fromSnapshot(Leb2;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object/from16 v1, p0

    .line 10
    .line 11
    iget-object v1, v1, Llk2;->a:Lmk2;

    .line 12
    .line 13
    iget-object v2, v1, Lmk2;->l:Lex6;

    .line 14
    .line 15
    iget-object v1, v1, Lmk2;->e:Lji;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_15

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lji;->setCloudBackups(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;)V

    .line 21
    .line 22
    .line 23
    if-eqz v0, :cond_14

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->hasBackups()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto/16 :goto_c

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getBackups()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    const/16 v4, 0xa

    .line 40
    .line 41
    invoke-static {v0, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_13

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    move-object v6, v4

    .line 63
    check-cast v6, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 64
    .line 65
    sget-object v4, Lre3;->a:Lzc2;

    .line 66
    .line 67
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getAppId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v4, v5}, Lre3;->a(Ljava/lang/String;Ljava/lang/String;)Lzc2;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasBackups()Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_1

    .line 92
    .line 93
    invoke-virtual {v4, v3}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    new-instance v5, Ldq;

    .line 101
    .line 102
    const/4 v7, 0x3

    .line 103
    invoke-direct {v5, v7}, Ldq;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getTotalApkSize()J

    .line 107
    .line 108
    .line 109
    move-result-wide v7

    .line 110
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v5, v7}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    check-cast v7, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataSize()Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v5, v8}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    check-cast v8, Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataSize()Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-virtual {v5, v9}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    check-cast v9, Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaSize()Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    invoke-virtual {v5, v10}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    check-cast v10, Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpSize()Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    invoke-virtual {v5, v11}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    move-object/from16 v19, v11

    .line 159
    .line 160
    check-cast v19, Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getTotalSize()J

    .line 163
    .line 164
    .line 165
    move-result-wide v11

    .line 166
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    invoke-virtual {v5, v11}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    check-cast v5, Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDateBackupUpdated()Ljava/lang/Long;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    const-string v12, ")"

    .line 185
    .line 186
    const-string v13, " ("

    .line 187
    .line 188
    const-string v14, ": "

    .line 189
    .line 190
    if-eqz v11, :cond_2

    .line 191
    .line 192
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDateBackupUpdated()Ljava/lang/Long;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    invoke-static {v11}, Lio4;->h(Ljava/lang/Long;)J

    .line 201
    .line 202
    .line 203
    move-result-wide v15

    .line 204
    invoke-static/range {v15 .. v16}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    sget-object v15, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 209
    .line 210
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 211
    .line 212
    .line 213
    move-result-object v15

    .line 214
    move-object/from16 p0, v3

    .line 215
    .line 216
    const v3, 0x7f130588

    .line 217
    .line 218
    .line 219
    invoke-virtual {v15, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    new-instance v15, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    :goto_1
    move-object/from16 v21, v3

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_2
    move-object/from16 p0, v3

    .line 254
    .line 255
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getDateBackup()J

    .line 256
    .line 257
    .line 258
    move-result-wide v15

    .line 259
    invoke-static/range {v15 .. v16}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-static {v3, v13, v5, v12}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    goto :goto_1

    .line 268
    :goto_2
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkLink()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    const v15, 0x7f13059f

    .line 273
    .line 274
    .line 275
    if-eqz v3, :cond_3

    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-nez v3, :cond_4

    .line 282
    .line 283
    :cond_3
    move-object/from16 v25, v0

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_4
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 287
    .line 288
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v3, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionName()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v15

    .line 300
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionCode()Ljava/lang/Long;

    .line 301
    .line 302
    .line 303
    move-result-object v11

    .line 304
    move-object/from16 v25, v0

    .line 305
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    :goto_3
    move-object/from16 v23, v0

    .line 334
    .line 335
    goto :goto_5

    .line 336
    :goto_4
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 337
    .line 338
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    const v3, 0x7f1303bc

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    goto :goto_3

    .line 350
    :goto_5
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkLink()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    if-eqz v0, :cond_6

    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-nez v0, :cond_5

    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_5
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 367
    .line 368
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    const v3, 0x7f13059f

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionName()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-static {v0, v14, v3}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    :goto_6
    move-object/from16 v22, v0

    .line 388
    .line 389
    goto :goto_8

    .line 390
    :cond_6
    :goto_7
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 391
    .line 392
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    const v3, 0x7f1303bc

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    goto :goto_6

    .line 404
    :goto_8
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    move-object v0, v8

    .line 408
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    .line 409
    .line 410
    .line 411
    move-result v8

    .line 412
    move-object v3, v9

    .line 413
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    .line 414
    .line 415
    .line 416
    move-result v9

    .line 417
    if-eqz v0, :cond_7

    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 420
    .line 421
    .line 422
    move-result v11

    .line 423
    if-nez v11, :cond_8

    .line 424
    .line 425
    :cond_7
    move-object/from16 v0, p0

    .line 426
    .line 427
    :cond_8
    const-string v11, " \ud83d\udd12"

    .line 428
    .line 429
    if-eqz v0, :cond_a

    .line 430
    .line 431
    invoke-static {v0}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isDataEncrypted()Ljava/lang/Boolean;

    .line 436
    .line 437
    .line 438
    move-result-object v12

    .line 439
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 440
    .line 441
    invoke-static {v12, v13}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v12

    .line 445
    if-eqz v12, :cond_9

    .line 446
    .line 447
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    goto :goto_9

    .line 455
    :cond_a
    move-object/from16 v0, p0

    .line 456
    .line 457
    :goto_9
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isDataEncrypted()Ljava/lang/Boolean;

    .line 458
    .line 459
    .line 460
    move-result-object v12

    .line 461
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 462
    .line 463
    invoke-static {v12, v13}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v12

    .line 467
    move v14, v12

    .line 468
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataEncryptionMethod()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v12

    .line 472
    if-eqz v3, :cond_b

    .line 473
    .line 474
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 475
    .line 476
    .line 477
    move-result v15

    .line 478
    if-nez v15, :cond_c

    .line 479
    .line 480
    :cond_b
    move-object/from16 v3, p0

    .line 481
    .line 482
    :cond_c
    if-eqz v3, :cond_e

    .line 483
    .line 484
    invoke-static {v3}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isExtDataEncrypted()Ljava/lang/Boolean;

    .line 489
    .line 490
    .line 491
    move-result-object v15

    .line 492
    invoke-static {v15, v13}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    move-result v15

    .line 496
    if-eqz v15, :cond_d

    .line 497
    .line 498
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    goto :goto_a

    .line 506
    :cond_e
    move-object/from16 v3, p0

    .line 507
    .line 508
    :goto_a
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isExtDataEncrypted()Ljava/lang/Boolean;

    .line 509
    .line 510
    .line 511
    move-result-object v15

    .line 512
    invoke-static {v15, v13}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v15

    .line 516
    move/from16 v16, v14

    .line 517
    .line 518
    move v14, v15

    .line 519
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataEncryptionMethod()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v15

    .line 523
    if-eqz v10, :cond_f

    .line 524
    .line 525
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 526
    .line 527
    .line 528
    move-result v17

    .line 529
    if-nez v17, :cond_10

    .line 530
    .line 531
    :cond_f
    move-object/from16 v10, p0

    .line 532
    .line 533
    :cond_10
    if-eqz v10, :cond_12

    .line 534
    .line 535
    invoke-static {v10}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    move-result-object v10

    .line 539
    move-object/from16 p1, v0

    .line 540
    .line 541
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isMediaEncrypted()Ljava/lang/Boolean;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-static {v0, v13}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-eqz v0, :cond_11

    .line 550
    .line 551
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    :cond_11
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    goto :goto_b

    .line 559
    :cond_12
    move-object/from16 p1, v0

    .line 560
    .line 561
    move-object/from16 v0, p0

    .line 562
    .line 563
    :goto_b
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isMediaEncrypted()Ljava/lang/Boolean;

    .line 564
    .line 565
    .line 566
    move-result-object v10

    .line 567
    invoke-static {v10, v13}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v17

    .line 571
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaEncryptionMethod()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v18

    .line 575
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isProtectedBackup()Z

    .line 576
    .line 577
    .line 578
    move-result v24

    .line 579
    move-object/from16 v20, v5

    .line 580
    .line 581
    new-instance v5, Lwj2;

    .line 582
    .line 583
    move-object/from16 v10, p1

    .line 584
    .line 585
    move-object v13, v3

    .line 586
    move/from16 v11, v16

    .line 587
    .line 588
    move-object/from16 v16, v0

    .line 589
    .line 590
    invoke-direct/range {v5 .. v24}, Lwj2;-><init>(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-object/from16 v3, p0

    .line 597
    .line 598
    move-object/from16 v0, v25

    .line 599
    .line 600
    goto/16 :goto_0

    .line 601
    .line 602
    :cond_13
    new-instance v0, Lyj2;

    .line 603
    .line 604
    sget-object v3, Lxj2;->BackedUp:Lxj2;

    .line 605
    .line 606
    invoke-direct {v0, v3, v1}, Lyj2;-><init>(Lxj2;Ljava/util/List;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v2, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    return-void

    .line 613
    :cond_14
    :goto_c
    new-instance v0, Lyj2;

    .line 614
    .line 615
    sget-object v1, Lxj2;->NoBackup:Lxj2;

    .line 616
    .line 617
    invoke-direct {v0, v1}, Lyj2;-><init>(Lxj2;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v2, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 621
    .line 622
    .line 623
    return-void

    .line 624
    :cond_15
    move-object/from16 p0, v3

    .line 625
    .line 626
    const-string v0, "app"

    .line 627
    .line 628
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    throw p0
.end method
