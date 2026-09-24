.class public final Ljo8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Ljo8;->a:Z

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljo8;Ljava/util/ArrayList;Ljava/util/List;)Z
    .locals 23

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    :cond_0
    move-object/from16 v8, p0

    .line 17
    .line 18
    move-object/from16 v3, p1

    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    move v4, v1

    .line 27
    move v5, v4

    .line 28
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_6

    .line 33
    .line 34
    add-int/2addr v4, v2

    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Lyn8;

    .line 40
    .line 41
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_4

    .line 46
    .line 47
    :cond_3
    move-object/from16 v8, p0

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_3

    .line 59
    .line 60
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    check-cast v8, Lyn8;

    .line 65
    .line 66
    iget-wide v8, v8, Lyn8;->c:J

    .line 67
    .line 68
    iget-wide v10, v6, Lyn8;->c:J

    .line 69
    .line 70
    cmp-long v8, v8, v10

    .line 71
    .line 72
    if-nez v8, :cond_5

    .line 73
    .line 74
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 75
    .line 76
    const-string v6, "Wallpaper ("

    .line 77
    .line 78
    const-string v7, ") already backed up on cloud"

    .line 79
    .line 80
    invoke-static {v4, v6, v7}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    const/4 v13, 0x4

    .line 85
    const/4 v14, 0x0

    .line 86
    const-string v10, "WallUploadHelper"

    .line 87
    .line 88
    const/4 v12, 0x0

    .line 89
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object/from16 v8, p0

    .line 93
    .line 94
    iget-boolean v6, v8, Ljo8;->a:Z

    .line 95
    .line 96
    if-eqz v6, :cond_2

    .line 97
    .line 98
    if-nez v5, :cond_2

    .line 99
    .line 100
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 101
    .line 102
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const v6, 0x7f1305a5

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    sget-object v7, Lzn4;->a:Lzn4;

    .line 117
    .line 118
    invoke-static {v5, v6}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    move v5, v2

    .line 122
    goto :goto_0

    .line 123
    :cond_5
    move-object/from16 v8, p0

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :goto_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-nez v7, :cond_2

    .line 131
    .line 132
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    move-object/from16 v8, p0

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :goto_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    .line 141
    .line 142
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_7

    .line 147
    .line 148
    return v2

    .line 149
    :cond_7
    const/16 v3, 0xa

    .line 150
    .line 151
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-static {v3}, Lx65;->q0(I)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    const/16 v4, 0x10

    .line 160
    .line 161
    if-ge v3, v4, :cond_8

    .line 162
    .line 163
    move v3, v4

    .line 164
    :cond_8
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 165
    .line 166
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_9

    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    move-object v5, v3

    .line 184
    check-cast v5, Lyn8;

    .line 185
    .line 186
    iget-object v5, v5, Lyn8;->a:Lq63;

    .line 187
    .line 188
    invoke-virtual {v5}, Lq63;->v()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_9
    new-instance v18, Ljava/util/concurrent/ConcurrentHashMap;

    .line 197
    .line 198
    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const-wide/16 v5, 0x0

    .line 210
    .line 211
    move-wide v9, v5

    .line 212
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_a

    .line 217
    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Lyn8;

    .line 223
    .line 224
    iget-wide v11, v3, Lyn8;->c:J

    .line 225
    .line 226
    add-long/2addr v9, v11

    .line 227
    goto :goto_6

    .line 228
    :cond_a
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    cmp-long v3, v9, v5

    .line 233
    .line 234
    const/4 v5, 0x0

    .line 235
    if-lez v3, :cond_b

    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_b
    move-object v0, v5

    .line 239
    :goto_7
    if-eqz v0, :cond_c

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 242
    .line 243
    .line 244
    move-result-wide v6

    .line 245
    :goto_8
    move-wide/from16 v21, v6

    .line 246
    .line 247
    goto :goto_9

    .line 248
    :cond_c
    const-wide/16 v6, 0x1

    .line 249
    .line 250
    goto :goto_8

    .line 251
    :goto_9
    new-instance v20, Lkh6;

    .line 252
    .line 253
    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    .line 254
    .line 255
    .line 256
    new-instance v0, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    if-eqz v4, :cond_d

    .line 278
    .line 279
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    check-cast v4, Ljava/util/Map$Entry;

    .line 284
    .line 285
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    move-object/from16 v19, v6

    .line 290
    .line 291
    check-cast v19, Ljava/lang/String;

    .line 292
    .line 293
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    move-object/from16 v17, v4

    .line 298
    .line 299
    check-cast v17, Lyn8;

    .line 300
    .line 301
    sget-object v4, Lzn4;->a:Lzn4;

    .line 302
    .line 303
    new-instance v15, Loz;

    .line 304
    .line 305
    move-object/from16 v16, v8

    .line 306
    .line 307
    invoke-direct/range {v15 .. v22}, Loz;-><init>(Ljo8;Lyn8;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lkh6;J)V

    .line 308
    .line 309
    .line 310
    new-instance v4, Lvn4;

    .line 311
    .line 312
    invoke-direct {v4, v15}, Lvn4;-><init>(Lbt3;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-object/from16 v8, p0

    .line 319
    .line 320
    goto :goto_a

    .line 321
    :cond_d
    sget-object v3, Lzn4;->a:Lzn4;

    .line 322
    .line 323
    :try_start_0
    sget-object v3, Ld45;->b:Ld45;

    .line 324
    .line 325
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    if-eqz v3, :cond_e

    .line 333
    .line 334
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 339
    .line 340
    .line 341
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    goto :goto_b

    .line 343
    :catch_0
    :cond_e
    move-object v3, v5

    .line 344
    :goto_b
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 345
    .line 346
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    if-nez v3, :cond_10

    .line 351
    .line 352
    const-string v3, "parallel_cloud_transfers"

    .line 353
    .line 354
    :try_start_1
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 355
    .line 356
    if-eqz v4, :cond_f

    .line 357
    .line 358
    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    goto :goto_c

    .line 363
    :cond_f
    const-string v3, "prefs"

    .line 364
    .line 365
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    throw v5
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    :catch_1
    move v3, v1

    .line 370
    :goto_c
    if-eqz v3, :cond_10

    .line 371
    .line 372
    move v3, v2

    .line 373
    goto :goto_d

    .line 374
    :cond_10
    move v3, v1

    .line 375
    :goto_d
    const/4 v4, 0x4

    .line 376
    invoke-static {v4, v0, v3}, Lzn4;->a(ILjava/util/ArrayList;Z)Ljava/util/List;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    if-eqz v0, :cond_12

    .line 381
    .line 382
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    if-eqz v3, :cond_12

    .line 387
    .line 388
    :cond_11
    move v1, v2

    .line 389
    goto :goto_e

    .line 390
    :cond_12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-eqz v3, :cond_11

    .line 399
    .line 400
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    check-cast v3, Ljava/lang/Boolean;

    .line 405
    .line 406
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    if-nez v3, :cond_13

    .line 411
    .line 412
    :goto_e
    return v1
.end method
