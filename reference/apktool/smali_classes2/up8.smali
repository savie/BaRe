.class public final Lup8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Laz7;Lqo0;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    and-int/lit8 v1, p2, 0x2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v1, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v1, p1

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v3, p2, 0x4

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x1

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    move v3, v5

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v3, v4

    .line 21
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v6, v0, Laz7;->d:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v0, v0, Laz7;->e:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v7, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v8, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    if-eqz v10, :cond_3

    .line 47
    .line 48
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    move-object v11, v10

    .line 53
    check-cast v11, Lrv7;

    .line 54
    .line 55
    iget-object v11, v11, Lrv7;->a:Lq63;

    .line 56
    .line 57
    invoke-virtual {v11}, Lq63;->v()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    if-eqz v11, :cond_2

    .line 66
    .line 67
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_4

    .line 76
    .line 77
    const-string v0, "WallsTask"

    .line 78
    .line 79
    const-string v1, "runTask: Wall list null or empty"

    .line 80
    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    if-eqz v1, :cond_6

    .line 86
    .line 87
    sget-object v7, Lq05;->CLOUD:Lq05;

    .line 88
    .line 89
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_5

    .line 94
    .line 95
    const v7, 0x7f130087

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    const v7, 0x7f130086

    .line 100
    .line 101
    .line 102
    :goto_3
    sget-object v8, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 103
    .line 104
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v8, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v7}, Lqo0;->i(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_6
    sget-object v7, Lq05;->CLOUD:Lq05;

    .line 119
    .line 120
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-eqz v7, :cond_7

    .line 125
    .line 126
    sget-object v7, Lxj1;->g:Lxj1;

    .line 127
    .line 128
    invoke-virtual {v7}, Ldv;->e()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    goto :goto_4

    .line 133
    :cond_7
    move-object v7, v2

    .line 134
    :goto_4
    new-instance v8, Ljava/util/HashSet;

    .line 135
    .line 136
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 137
    .line 138
    .line 139
    new-instance v9, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    if-eqz v10, :cond_9

    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    move-object v11, v10

    .line 159
    check-cast v11, Lrv7;

    .line 160
    .line 161
    iget-object v11, v11, Lrv7;->a:Lq63;

    .line 162
    .line 163
    invoke-virtual {v11}, Lq63;->A()J

    .line 164
    .line 165
    .line 166
    move-result-wide v11

    .line 167
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v11

    .line 175
    if-eqz v11, :cond_8

    .line 176
    .line 177
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_9
    sget-object v0, Lq05;->DEVICE:Lq05;

    .line 182
    .line 183
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    const/4 v8, 0x2

    .line 188
    if-eqz v0, :cond_e

    .line 189
    .line 190
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    move v10, v4

    .line 195
    move v11, v10

    .line 196
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    if-eqz v12, :cond_e

    .line 201
    .line 202
    add-int/2addr v10, v5

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v12

    .line 207
    check-cast v12, Lrv7;

    .line 208
    .line 209
    sget-object v13, Lc05;->g:Lc05;

    .line 210
    .line 211
    invoke-virtual {v13}, Lc05;->a()Lik6;

    .line 212
    .line 213
    .line 214
    move-result-object v13

    .line 215
    iget-object v13, v13, Lik6;->c:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v13, Ljava/util/List;

    .line 218
    .line 219
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result v14

    .line 223
    if-eqz v14, :cond_a

    .line 224
    .line 225
    goto :goto_8

    .line 226
    :cond_a
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v13

    .line 230
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v14

    .line 234
    if-eqz v14, :cond_c

    .line 235
    .line 236
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v14

    .line 240
    check-cast v14, Lyn8;

    .line 241
    .line 242
    iget-wide v14, v14, Lyn8;->c:J

    .line 243
    .line 244
    iget-object v5, v12, Lrv7;->a:Lq63;

    .line 245
    .line 246
    invoke-virtual {v5}, Lq63;->A()J

    .line 247
    .line 248
    .line 249
    move-result-wide v16

    .line 250
    cmp-long v5, v14, v16

    .line 251
    .line 252
    if-nez v5, :cond_b

    .line 253
    .line 254
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 255
    .line 256
    const-string v5, "Wallpaper ("

    .line 257
    .line 258
    const-string v12, ") already backed up on device"

    .line 259
    .line 260
    invoke-static {v10, v5, v12}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v16

    .line 264
    const/16 v18, 0x4

    .line 265
    .line 266
    const/16 v19, 0x0

    .line 267
    .line 268
    const-string v15, "WallBackupHelper"

    .line 269
    .line 270
    const/16 v17, 0x0

    .line 271
    .line 272
    invoke-static/range {v14 .. v19}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    if-eqz v3, :cond_d

    .line 276
    .line 277
    if-nez v11, :cond_d

    .line 278
    .line 279
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 280
    .line 281
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    const v11, 0x7f1305a6

    .line 286
    .line 287
    .line 288
    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    sget-object v12, Lzn4;->a:Lzn4;

    .line 296
    .line 297
    invoke-static {v5, v11}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const/4 v5, 0x1

    .line 301
    const/4 v11, 0x1

    .line 302
    goto :goto_6

    .line 303
    :cond_b
    const/4 v5, 0x1

    .line 304
    goto :goto_7

    .line 305
    :cond_c
    :goto_8
    new-instance v5, Lq63;

    .line 306
    .line 307
    sget-object v13, Lry5;->u:Ljava/lang/String;

    .line 308
    .line 309
    invoke-static {v4, v2}, Lqy5;->f(ZLzn7;)Lry5;

    .line 310
    .line 311
    .line 312
    move-result-object v13

    .line 313
    iget-object v13, v13, Lry5;->q:Ljava/lang/String;

    .line 314
    .line 315
    iget-object v14, v12, Lrv7;->b:Ljava/lang/String;

    .line 316
    .line 317
    invoke-static {v13, v14}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v13

    .line 321
    invoke-direct {v5, v13, v8}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    iget-object v12, v12, Lrv7;->a:Lq63;

    .line 325
    .line 326
    invoke-virtual {v12, v5, v2}, Lq63;->d(Lq63;Lkl;)V

    .line 327
    .line 328
    .line 329
    sget-object v13, Lc05;->g:Lc05;

    .line 330
    .line 331
    const/16 v17, 0x0

    .line 332
    .line 333
    const/16 v18, 0xe

    .line 334
    .line 335
    const/4 v14, 0x1

    .line 336
    const/4 v15, 0x0

    .line 337
    const/16 v16, 0x0

    .line 338
    .line 339
    invoke-static/range {v13 .. v18}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 340
    .line 341
    .line 342
    :cond_d
    const/4 v5, 0x1

    .line 343
    goto/16 :goto_6

    .line 344
    .line 345
    :cond_e
    sget-object v0, Lq05;->CLOUD:Lq05;

    .line 346
    .line 347
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_10

    .line 352
    .line 353
    new-instance v0, Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    if-eqz v6, :cond_f

    .line 367
    .line 368
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    check-cast v6, Lrv7;

    .line 373
    .line 374
    new-instance v10, Lq63;

    .line 375
    .line 376
    sget-object v9, Lry5;->u:Ljava/lang/String;

    .line 377
    .line 378
    invoke-static {v4, v2}, Lqy5;->f(ZLzn7;)Lry5;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    iget-object v9, v9, Lry5;->r:Ljava/lang/String;

    .line 383
    .line 384
    iget-object v11, v6, Lrv7;->b:Ljava/lang/String;

    .line 385
    .line 386
    invoke-static {v9, v11}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    invoke-direct {v10, v9, v8}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 391
    .line 392
    .line 393
    iget-object v6, v6, Lrv7;->a:Lq63;

    .line 394
    .line 395
    invoke-virtual {v6, v10, v2}, Lq63;->d(Lq63;Lkl;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v10}, Lq63;->A()J

    .line 399
    .line 400
    .line 401
    move-result-wide v11

    .line 402
    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v15

    .line 410
    invoke-virtual {v10}, Lq63;->z()J

    .line 411
    .line 412
    .line 413
    move-result-wide v11

    .line 414
    invoke-virtual {v10}, Lq63;->A()J

    .line 415
    .line 416
    .line 417
    move-result-wide v13

    .line 418
    new-instance v9, Lyn8;

    .line 419
    .line 420
    const/16 v16, 0x30

    .line 421
    .line 422
    invoke-direct/range {v9 .. v16}, Lyn8;-><init>(Lq63;JJLjava/lang/String;I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_f
    new-instance v2, Ljo8;

    .line 430
    .line 431
    invoke-direct {v2, v3}, Ljo8;-><init>(Z)V

    .line 432
    .line 433
    .line 434
    invoke-static {v2, v0, v7}, Ljo8;->a(Ljo8;Ljava/util/ArrayList;Ljava/util/List;)Z

    .line 435
    .line 436
    .line 437
    sget-object v8, Lxj1;->g:Lxj1;

    .line 438
    .line 439
    const/4 v12, 0x0

    .line 440
    const/16 v13, 0xe

    .line 441
    .line 442
    const/4 v9, 0x1

    .line 443
    const/4 v10, 0x0

    .line 444
    const/4 v11, 0x0

    .line 445
    invoke-static/range {v8 .. v13}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 446
    .line 447
    .line 448
    :cond_10
    if-eqz v1, :cond_11

    .line 449
    .line 450
    invoke-virtual {v1}, Lqo0;->f()V

    .line 451
    .line 452
    .line 453
    :cond_11
    return-void
.end method
