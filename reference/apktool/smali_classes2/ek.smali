.class public final synthetic Lek;
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
    iput p2, p0, Lek;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lek;->b:Ljava/lang/Object;

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
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lek;->a:I

    .line 4
    .line 5
    const-string v2, "Missing required view with ID: "

    .line 6
    .line 7
    const v3, 0x7f0a00a9

    .line 8
    .line 9
    .line 10
    const-string v4, " "

    .line 11
    .line 12
    const/4 v7, 0x2

    .line 13
    const/4 v8, 0x6

    .line 14
    const/4 v9, 0x1

    .line 15
    const/4 v10, 0x0

    .line 16
    sget-object v11, Lbe8;->a:Lbe8;

    .line 17
    .line 18
    const/4 v12, 0x0

    .line 19
    iget-object v0, v0, Lek;->b:Ljava/lang/Object;

    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    check-cast v0, Lin3;

    .line 25
    .line 26
    invoke-virtual {v0}, Lin3;->k()Lhn3;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, v1, Lhn3;->c:Lq63;

    .line 31
    .line 32
    iget-object v1, v1, Lhn3;->a:Lzn7;

    .line 33
    .line 34
    invoke-virtual {v1}, Lzn7;->n()Lq63;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v2, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lin3;->k()Lhn3;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v1, v1, Lhn3;->c:Lq63;

    .line 50
    .line 51
    invoke-virtual {v1}, Lq63;->t()Lq63;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v2, Llx;

    .line 59
    .line 60
    invoke-direct {v2, v8, v0, v1}, Llx;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lin3;->m(Lq63;Lbt3;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-object v11

    .line 67
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 68
    .line 69
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 70
    .line 71
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->Z()Lkm3;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v0, v0, Lkm3;->d:Lcom/google/android/material/button/MaterialButton;

    .line 76
    .line 77
    return-object v0

    .line 78
    :pswitch_1
    check-cast v0, Ldm3;

    .line 79
    .line 80
    invoke-virtual {v0}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    iget-object v1, v0, Ldm3;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    new-instance v3, Lq63;

    .line 95
    .line 96
    invoke-direct {v3, v14, v9}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Lq63;->j()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    sget-object v5, Lam3;->a:Lam3;

    .line 104
    .line 105
    if-nez v4, :cond_2

    .line 106
    .line 107
    invoke-static {v0, v1, v2, v14, v5}, Ldm3;->m(Ldm3;JLjava/lang/String;Lbm3;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_5

    .line 111
    .line 112
    :cond_2
    iget-object v4, v0, Ldm3;->g:Lex6;

    .line 113
    .line 114
    invoke-virtual {v4}, Lzy4;->d()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    if-nez v4, :cond_3

    .line 119
    .line 120
    sget-object v4, Lzl3;->a:Lzl3;

    .line 121
    .line 122
    invoke-static {v0, v1, v2, v14, v4}, Ldm3;->m(Ldm3;JLjava/lang/String;Lbm3;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    sget-object v4, Lp93;->a:Lp93;

    .line 126
    .line 127
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-static {v6}, Ljr7;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    const-string v7, " -type f | toybox wc -l); folders=$(toybox find "

    .line 136
    .line 137
    const-string v8, " -type d | toybox wc -l); echo \"$files $folders\""

    .line 138
    .line 139
    const-string v13, "files=$(toybox find "

    .line 140
    .line 141
    invoke-static {v13, v6, v7, v6, v8}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    sget-object v7, Lmp6;->a:Lmp6;

    .line 146
    .line 147
    filled-new-array {v6}, [Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    sget-object v8, Lip6;->ANY:Lip6;

    .line 152
    .line 153
    invoke-virtual {v7, v6, v8}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-static {v6}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    check-cast v6, Ljava/lang/String;

    .line 162
    .line 163
    const/16 v7, 0xa

    .line 164
    .line 165
    if-eqz v6, :cond_6

    .line 166
    .line 167
    invoke-static {v6}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    if-eqz v6, :cond_6

    .line 176
    .line 177
    const-string v8, "\\s+"

    .line 178
    .line 179
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-static {v10}, Lnq7;->t0(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 194
    .line 195
    .line 196
    move-result v12

    .line 197
    if-nez v12, :cond_4

    .line 198
    .line 199
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-static {v6}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    move-object v12, v6

    .line 208
    goto :goto_1

    .line 209
    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v13, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .line 213
    .line 214
    move v12, v10

    .line 215
    :cond_5
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    .line 216
    .line 217
    .line 218
    move-result v15

    .line 219
    invoke-virtual {v6, v12, v15}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    .line 231
    .line 232
    .line 233
    move-result v12

    .line 234
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 235
    .line 236
    .line 237
    move-result v15

    .line 238
    if-nez v15, :cond_5

    .line 239
    .line 240
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    invoke-virtual {v6, v12, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-object v12, v13

    .line 256
    :cond_6
    :goto_1
    if-nez v12, :cond_7

    .line 257
    .line 258
    sget-object v12, Lov2;->a:Lov2;

    .line 259
    .line 260
    :cond_7
    invoke-static {v10, v12}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    check-cast v6, Ljava/lang/String;

    .line 265
    .line 266
    if-eqz v6, :cond_8

    .line 267
    .line 268
    invoke-static {v7, v6}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    if-eqz v6, :cond_8

    .line 273
    .line 274
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    move/from16 v20, v6

    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_8
    move/from16 v20, v10

    .line 282
    .line 283
    :goto_2
    invoke-static {v9, v12}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    check-cast v6, Ljava/lang/String;

    .line 288
    .line 289
    if-eqz v6, :cond_9

    .line 290
    .line 291
    invoke-static {v7, v6}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    if-eqz v6, :cond_9

    .line 296
    .line 297
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    sub-int/2addr v6, v9

    .line 302
    goto :goto_3

    .line 303
    :cond_9
    move v6, v10

    .line 304
    :goto_3
    if-gez v6, :cond_a

    .line 305
    .line 306
    move/from16 v19, v10

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_a
    move/from16 v19, v6

    .line 310
    .line 311
    :goto_4
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    invoke-virtual {v4, v6}, Lp93;->f(Ljava/lang/String;)J

    .line 316
    .line 317
    .line 318
    move-result-wide v15

    .line 319
    invoke-virtual {v3}, Lq63;->j()Z

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    if-nez v4, :cond_b

    .line 324
    .line 325
    invoke-static {v0, v1, v2, v14, v5}, Ldm3;->m(Ldm3;JLjava/lang/String;Lbm3;)V

    .line 326
    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_b
    new-instance v13, Lyl3;

    .line 330
    .line 331
    invoke-virtual {v3}, Lq63;->z()J

    .line 332
    .line 333
    .line 334
    move-result-wide v17

    .line 335
    invoke-direct/range {v13 .. v20}, Lyl3;-><init>(Ljava/lang/String;JJII)V

    .line 336
    .line 337
    .line 338
    invoke-static {v0, v1, v2, v14, v13}, Ldm3;->m(Ldm3;JLjava/lang/String;Lbm3;)V

    .line 339
    .line 340
    .line 341
    :goto_5
    return-object v11

    .line 342
    :pswitch_2
    check-cast v0, Lwj3;

    .line 343
    .line 344
    iget-object v0, v0, Lwj3;->a:Lqp3;

    .line 345
    .line 346
    iget-boolean v0, v0, Lpw6;->l:Z

    .line 347
    .line 348
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    return-object v0

    .line 353
    :pswitch_3
    check-cast v0, Lrj3;

    .line 354
    .line 355
    iget-object v0, v0, Lu35;->K:Ljk8;

    .line 356
    .line 357
    check-cast v0, Lsj3;

    .line 358
    .line 359
    iget-object v0, v0, Lsj3;->c:Landroid/widget/LinearLayout;

    .line 360
    .line 361
    return-object v0

    .line 362
    :pswitch_4
    check-cast v0, Lkj3;

    .line 363
    .line 364
    new-instance v1, Lq63;

    .line 365
    .line 366
    invoke-virtual {v0}, Lkj3;->b()Lq63;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    const-string v2, ".working"

    .line 371
    .line 372
    invoke-direct {v1, v7, v0, v2}, Lq63;-><init>(ILq63;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    return-object v1

    .line 376
    :pswitch_5
    check-cast v0, Landroid/content/Context;

    .line 377
    .line 378
    const-string v1, "firebaseSessions/sessionDataStore.data"

    .line 379
    .line 380
    invoke-static {v0, v1}, Lji8;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-static {v0}, Lge;->z(Ljava/io/File;)V

    .line 385
    .line 386
    .line 387
    return-object v0

    .line 388
    :pswitch_6
    check-cast v0, Lmk2;

    .line 389
    .line 390
    iget-object v1, v0, Lmk2;->j:Lex6;

    .line 391
    .line 392
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 393
    .line 394
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    const v3, 0x7f0b0002

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    int-to-long v2, v2

    .line 410
    const-wide/16 v7, 0x32

    .line 411
    .line 412
    add-long/2addr v2, v7

    .line 413
    iget-object v7, v0, Lmk2;->e:Lji;

    .line 414
    .line 415
    const-string v8, "app"

    .line 416
    .line 417
    if-eqz v7, :cond_25

    .line 418
    .line 419
    invoke-virtual {v7}, Lji;->isInstalled()Z

    .line 420
    .line 421
    .line 422
    move-result v7

    .line 423
    if-nez v7, :cond_c

    .line 424
    .line 425
    invoke-static {v2, v3}, Lai8;->o(J)V

    .line 426
    .line 427
    .line 428
    sget-object v0, Lck2;->a:Lck2;

    .line 429
    .line 430
    invoke-virtual {v1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_14

    .line 434
    .line 435
    :cond_c
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v7

    .line 439
    if-nez v7, :cond_d

    .line 440
    .line 441
    sget-object v7, Lbk2;->a:Lbk2;

    .line 442
    .line 443
    invoke-virtual {v1, v7}, Lex6;->k(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 447
    .line 448
    .line 449
    move-result-wide v13

    .line 450
    const-string v7, "prefs"

    .line 451
    .line 452
    const-string v15, "backup_app_cache"

    .line 453
    .line 454
    const-wide/16 v16, 0x0

    .line 455
    .line 456
    const-string v5, "KEY_BACKUP_APP_CACHE"

    .line 457
    .line 458
    :try_start_0
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 459
    .line 460
    if-eqz v6, :cond_e

    .line 461
    .line 462
    invoke-interface {v6, v5, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    goto :goto_6

    .line 467
    :cond_e
    invoke-static {v7}, Lpe4;->F(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw v12
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :catch_0
    move v5, v10

    .line 472
    :goto_6
    :try_start_1
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 473
    .line 474
    if-eqz v6, :cond_f

    .line 475
    .line 476
    invoke-interface {v6, v15, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 477
    .line 478
    .line 479
    move-result v5

    .line 480
    goto :goto_7

    .line 481
    :cond_f
    invoke-static {v7}, Lpe4;->F(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    throw v12
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 485
    :catch_1
    :goto_7
    iget-object v6, v0, Lmk2;->e:Lji;

    .line 486
    .line 487
    if-eqz v6, :cond_24

    .line 488
    .line 489
    invoke-virtual {v6, v9, v9, v9, v9}, Lji;->calculateSize(ZZZZ)V

    .line 490
    .line 491
    .line 492
    iget-object v6, v0, Lmk2;->e:Lji;

    .line 493
    .line 494
    if-eqz v6, :cond_23

    .line 495
    .line 496
    invoke-virtual {v6}, Lji;->getSizeInfo()Lqx;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    if-nez v6, :cond_10

    .line 501
    .line 502
    new-instance v18, Lqx;

    .line 503
    .line 504
    const/16 v41, 0x7ff

    .line 505
    .line 506
    const/16 v42, 0x0

    .line 507
    .line 508
    const-wide/16 v19, 0x0

    .line 509
    .line 510
    const-wide/16 v21, 0x0

    .line 511
    .line 512
    const-wide/16 v23, 0x0

    .line 513
    .line 514
    const-wide/16 v25, 0x0

    .line 515
    .line 516
    const-wide/16 v27, 0x0

    .line 517
    .line 518
    const-wide/16 v29, 0x0

    .line 519
    .line 520
    const-wide/16 v31, 0x0

    .line 521
    .line 522
    const-wide/16 v33, 0x0

    .line 523
    .line 524
    const-wide/16 v35, 0x0

    .line 525
    .line 526
    const-wide/16 v37, 0x0

    .line 527
    .line 528
    const-wide/16 v39, 0x0

    .line 529
    .line 530
    invoke-direct/range {v18 .. v42}, Lqx;-><init>(JJJJJJJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 531
    .line 532
    .line 533
    move-object/from16 v6, v18

    .line 534
    .line 535
    :cond_10
    invoke-virtual {v6}, Lqx;->getTotalApkSize()J

    .line 536
    .line 537
    .line 538
    move-result-wide v18

    .line 539
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 540
    .line 541
    .line 542
    move-result-object v7

    .line 543
    cmp-long v9, v18, v16

    .line 544
    .line 545
    if-lez v9, :cond_11

    .line 546
    .line 547
    goto :goto_8

    .line 548
    :cond_11
    move-object v7, v12

    .line 549
    :goto_8
    if-eqz v7, :cond_12

    .line 550
    .line 551
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 552
    .line 553
    .line 554
    move-result-wide v18

    .line 555
    sget-object v7, Lp93;->a:Lp93;

    .line 556
    .line 557
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 558
    .line 559
    .line 560
    move-result-object v7

    .line 561
    invoke-static {v7}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v7

    .line 565
    move-object/from16 v19, v7

    .line 566
    .line 567
    goto :goto_9

    .line 568
    :cond_12
    move-object/from16 v19, v12

    .line 569
    .line 570
    :goto_9
    invoke-virtual {v6, v5}, Lqx;->getTotalDataSize(Z)J

    .line 571
    .line 572
    .line 573
    move-result-wide v20

    .line 574
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 575
    .line 576
    .line 577
    move-result-object v7

    .line 578
    cmp-long v9, v20, v16

    .line 579
    .line 580
    if-lez v9, :cond_13

    .line 581
    .line 582
    goto :goto_a

    .line 583
    :cond_13
    move-object v7, v12

    .line 584
    :goto_a
    if-eqz v7, :cond_14

    .line 585
    .line 586
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 587
    .line 588
    .line 589
    move-result-wide v20

    .line 590
    sget-object v7, Lp93;->a:Lp93;

    .line 591
    .line 592
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 593
    .line 594
    .line 595
    move-result-object v7

    .line 596
    invoke-static {v7}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v7

    .line 600
    move-object/from16 v22, v7

    .line 601
    .line 602
    goto :goto_b

    .line 603
    :cond_14
    move-object/from16 v22, v12

    .line 604
    .line 605
    :goto_b
    invoke-virtual {v6, v5}, Lqx;->getExtDataSize(Z)J

    .line 606
    .line 607
    .line 608
    move-result-wide v20

    .line 609
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 610
    .line 611
    .line 612
    move-result-object v7

    .line 613
    cmp-long v9, v20, v16

    .line 614
    .line 615
    if-lez v9, :cond_16

    .line 616
    .line 617
    iget-object v9, v0, Lmk2;->e:Lji;

    .line 618
    .line 619
    if-eqz v9, :cond_15

    .line 620
    .line 621
    invoke-virtual {v9, v5}, Lji;->hasExternalData(Z)Z

    .line 622
    .line 623
    .line 624
    move-result v5

    .line 625
    if-eqz v5, :cond_16

    .line 626
    .line 627
    goto :goto_c

    .line 628
    :cond_15
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    throw v12

    .line 632
    :cond_16
    move-object v7, v12

    .line 633
    :goto_c
    if-eqz v7, :cond_17

    .line 634
    .line 635
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 636
    .line 637
    .line 638
    move-result-wide v20

    .line 639
    sget-object v5, Lp93;->a:Lp93;

    .line 640
    .line 641
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 642
    .line 643
    .line 644
    move-result-object v5

    .line 645
    invoke-static {v5}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v5

    .line 649
    move-object/from16 v23, v5

    .line 650
    .line 651
    goto :goto_d

    .line 652
    :cond_17
    move-object/from16 v23, v12

    .line 653
    .line 654
    :goto_d
    invoke-virtual {v6}, Lqx;->getMediaSize()J

    .line 655
    .line 656
    .line 657
    move-result-wide v20

    .line 658
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 659
    .line 660
    .line 661
    move-result-object v5

    .line 662
    cmp-long v7, v20, v16

    .line 663
    .line 664
    if-lez v7, :cond_19

    .line 665
    .line 666
    iget-object v7, v0, Lmk2;->e:Lji;

    .line 667
    .line 668
    if-eqz v7, :cond_18

    .line 669
    .line 670
    invoke-virtual {v7}, Lji;->hasMedia()Z

    .line 671
    .line 672
    .line 673
    move-result v7

    .line 674
    if-eqz v7, :cond_19

    .line 675
    .line 676
    goto :goto_e

    .line 677
    :cond_18
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    throw v12

    .line 681
    :cond_19
    move-object v5, v12

    .line 682
    :goto_e
    if-eqz v5, :cond_1a

    .line 683
    .line 684
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 685
    .line 686
    .line 687
    move-result-wide v20

    .line 688
    sget-object v5, Lp93;->a:Lp93;

    .line 689
    .line 690
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 691
    .line 692
    .line 693
    move-result-object v5

    .line 694
    invoke-static {v5}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v5

    .line 698
    move-object/from16 v24, v5

    .line 699
    .line 700
    goto :goto_f

    .line 701
    :cond_1a
    move-object/from16 v24, v12

    .line 702
    .line 703
    :goto_f
    invoke-virtual {v6}, Lqx;->getExternalObbSize()J

    .line 704
    .line 705
    .line 706
    move-result-wide v20

    .line 707
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 708
    .line 709
    .line 710
    move-result-object v5

    .line 711
    cmp-long v7, v20, v16

    .line 712
    .line 713
    if-lez v7, :cond_1c

    .line 714
    .line 715
    iget-object v7, v0, Lmk2;->e:Lji;

    .line 716
    .line 717
    if-eqz v7, :cond_1b

    .line 718
    .line 719
    invoke-virtual {v7}, Lji;->hasExpansion()Z

    .line 720
    .line 721
    .line 722
    move-result v7

    .line 723
    if-eqz v7, :cond_1c

    .line 724
    .line 725
    goto :goto_10

    .line 726
    :cond_1b
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    throw v12

    .line 730
    :cond_1c
    move-object v5, v12

    .line 731
    :goto_10
    if-eqz v5, :cond_1d

    .line 732
    .line 733
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 734
    .line 735
    .line 736
    move-result-wide v20

    .line 737
    sget-object v5, Lp93;->a:Lp93;

    .line 738
    .line 739
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 740
    .line 741
    .line 742
    move-result-object v5

    .line 743
    invoke-static {v5}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v5

    .line 747
    move-object/from16 v25, v5

    .line 748
    .line 749
    goto :goto_11

    .line 750
    :cond_1d
    move-object/from16 v25, v12

    .line 751
    .line 752
    :goto_11
    iget-object v5, v0, Lmk2;->e:Lji;

    .line 753
    .line 754
    if-eqz v5, :cond_22

    .line 755
    .line 756
    invoke-virtual {v5}, Lji;->getDateUpdated()Ljava/lang/Long;

    .line 757
    .line 758
    .line 759
    move-result-object v5

    .line 760
    invoke-static {v5}, Lio4;->h(Ljava/lang/Long;)J

    .line 761
    .line 762
    .line 763
    move-result-wide v20

    .line 764
    iget-object v5, v0, Lmk2;->e:Lji;

    .line 765
    .line 766
    if-eqz v5, :cond_21

    .line 767
    .line 768
    invoke-virtual {v5}, Lji;->getDateInstalled()Ljava/lang/Long;

    .line 769
    .line 770
    .line 771
    move-result-object v5

    .line 772
    invoke-static {v5}, Lio4;->h(Ljava/lang/Long;)J

    .line 773
    .line 774
    .line 775
    move-result-wide v26

    .line 776
    cmp-long v5, v20, v16

    .line 777
    .line 778
    if-lez v5, :cond_1e

    .line 779
    .line 780
    cmp-long v5, v20, v26

    .line 781
    .line 782
    if-lez v5, :cond_1e

    .line 783
    .line 784
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 785
    .line 786
    .line 787
    move-result-object v5

    .line 788
    const v7, 0x7f1302eb

    .line 789
    .line 790
    .line 791
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v5

    .line 795
    invoke-static/range {v20 .. v21}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v7

    .line 799
    const-string v9, ": "

    .line 800
    .line 801
    invoke-static {v5, v9, v7}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v5

    .line 805
    goto :goto_12

    .line 806
    :cond_1e
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 807
    .line 808
    .line 809
    move-result-object v5

    .line 810
    invoke-static/range {v26 .. v27}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v7

    .line 814
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v7

    .line 818
    const v9, 0x7f1302c4

    .line 819
    .line 820
    .line 821
    invoke-virtual {v5, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v5

    .line 825
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 826
    .line 827
    .line 828
    :goto_12
    new-instance v7, Ljava/lang/StringBuilder;

    .line 829
    .line 830
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v6, v10}, Lqx;->getTotalSize(Z)J

    .line 834
    .line 835
    .line 836
    move-result-wide v9

    .line 837
    sget-object v15, Lp93;->a:Lp93;

    .line 838
    .line 839
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 840
    .line 841
    .line 842
    move-result-object v9

    .line 843
    invoke-static {v9}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v9

    .line 847
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v6}, Lqx;->getTotalCacheSizes()J

    .line 851
    .line 852
    .line 853
    move-result-wide v9

    .line 854
    cmp-long v9, v9, v16

    .line 855
    .line 856
    if-lez v9, :cond_1f

    .line 857
    .line 858
    const v9, 0x7f1300e0

    .line 859
    .line 860
    .line 861
    invoke-static {v9}, Ldj7;->g(I)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v9

    .line 865
    invoke-virtual {v6}, Lqx;->getTotalCacheSizesString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v10

    .line 869
    new-instance v15, Ljava/lang/StringBuilder;

    .line 870
    .line 871
    move-object/from16 v18, v12

    .line 872
    .line 873
    const-string v12, " + "

    .line 874
    .line 875
    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v4

    .line 891
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    goto :goto_13

    .line 895
    :cond_1f
    move-object/from16 v18, v12

    .line 896
    .line 897
    :goto_13
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v4

    .line 901
    const-string v7, " ("

    .line 902
    .line 903
    const-string v9, ")"

    .line 904
    .line 905
    invoke-static {v5, v7, v4, v9}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v26

    .line 909
    invoke-static {v13, v14, v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->m(JJ)J

    .line 910
    .line 911
    .line 912
    move-result-wide v2

    .line 913
    invoke-static {v2, v3}, Lai8;->o(J)V

    .line 914
    .line 915
    .line 916
    move-object/from16 v4, v18

    .line 917
    .line 918
    new-instance v18, Ldk2;

    .line 919
    .line 920
    invoke-virtual {v6}, Lqx;->hasSplits()Z

    .line 921
    .line 922
    .line 923
    move-result v20

    .line 924
    invoke-virtual {v6}, Lqx;->hasSharedLibs()Z

    .line 925
    .line 926
    .line 927
    move-result v21

    .line 928
    iget-object v0, v0, Lmk2;->e:Lji;

    .line 929
    .line 930
    if-eqz v0, :cond_20

    .line 931
    .line 932
    invoke-virtual {v0}, Lji;->getVersionName()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v27

    .line 936
    invoke-direct/range {v18 .. v27}, Ldk2;-><init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    move-object/from16 v0, v18

    .line 940
    .line 941
    invoke-virtual {v1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 942
    .line 943
    .line 944
    :goto_14
    return-object v11

    .line 945
    :cond_20
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    throw v4

    .line 949
    :cond_21
    move-object v4, v12

    .line 950
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    throw v4

    .line 954
    :cond_22
    move-object v4, v12

    .line 955
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    throw v4

    .line 959
    :cond_23
    move-object v4, v12

    .line 960
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    throw v4

    .line 964
    :cond_24
    move-object v4, v12

    .line 965
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    throw v4

    .line 969
    :cond_25
    move-object v4, v12

    .line 970
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    throw v4

    .line 974
    :pswitch_7
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 975
    .line 976
    invoke-static {v0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$GvK00uElfYLpBvi_bqSrzcaE3Io(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;)Lbe8;

    .line 977
    .line 978
    .line 979
    move-result-object v0

    .line 980
    return-object v0

    .line 981
    :pswitch_8
    check-cast v0, Llr1;

    .line 982
    .line 983
    const-string v1, "config_backup_app_cache"

    .line 984
    .line 985
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 990
    .line 991
    .line 992
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 993
    .line 994
    return-object v0

    .line 995
    :pswitch_9
    move-object v4, v12

    .line 996
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 997
    .line 998
    sget v1, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->V:I

    .line 999
    .line 1000
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    const v1, 0x7f0d005f

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v0, v1, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v0

    .line 1011
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v1

    .line 1015
    if-eqz v1, :cond_27

    .line 1016
    .line 1017
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v1

    .line 1021
    const v3, 0x7f0a0177

    .line 1022
    .line 1023
    .line 1024
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v4

    .line 1028
    if-eqz v4, :cond_27

    .line 1029
    .line 1030
    invoke-static {v4}, Lny1;->a(Landroid/view/View;)Lny1;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v3

    .line 1034
    const v4, 0x7f0a0181

    .line 1035
    .line 1036
    .line 1037
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v5

    .line 1041
    check-cast v5, Lcom/google/android/material/card/MaterialCardView;

    .line 1042
    .line 1043
    if-eqz v5, :cond_26

    .line 1044
    .line 1045
    const v4, 0x7f0a0182

    .line 1046
    .line 1047
    .line 1048
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v5

    .line 1052
    if-eqz v5, :cond_26

    .line 1053
    .line 1054
    const v4, 0x7f0a0183

    .line 1055
    .line 1056
    .line 1057
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v6

    .line 1061
    check-cast v6, Landroid/widget/LinearLayout;

    .line 1062
    .line 1063
    if-eqz v6, :cond_26

    .line 1064
    .line 1065
    const v4, 0x7f0a0449

    .line 1066
    .line 1067
    .line 1068
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v6

    .line 1072
    check-cast v6, Landroidx/fragment/app/FragmentContainerView;

    .line 1073
    .line 1074
    if-eqz v6, :cond_26

    .line 1075
    .line 1076
    const v4, 0x7f0a0515

    .line 1077
    .line 1078
    .line 1079
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v6

    .line 1083
    check-cast v6, Landroid/widget/TextView;

    .line 1084
    .line 1085
    if-eqz v6, :cond_26

    .line 1086
    .line 1087
    new-instance v12, Lfr1;

    .line 1088
    .line 1089
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1090
    .line 1091
    invoke-direct {v12, v0, v1, v3, v5}, Lfr1;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lny1;Landroid/view/View;)V

    .line 1092
    .line 1093
    .line 1094
    goto :goto_15

    .line 1095
    :cond_26
    move v3, v4

    .line 1096
    :cond_27
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1109
    .line 1110
    .line 1111
    const/4 v12, 0x0

    .line 1112
    :goto_15
    return-object v12

    .line 1113
    :pswitch_a
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/list/a;

    .line 1114
    .line 1115
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/appconfigs/list/a;->h:Lu95;

    .line 1116
    .line 1117
    sget-object v2, Lbr1;->a:Lbr1;

    .line 1118
    .line 1119
    sget-object v2, Lbr1;->f:Lgv7;

    .line 1120
    .line 1121
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v2

    .line 1125
    check-cast v2, Lex6;

    .line 1126
    .line 1127
    new-instance v3, Lpx;

    .line 1128
    .line 1129
    const/4 v4, 0x4

    .line 1130
    invoke-direct {v3, v0, v4}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 1131
    .line 1132
    .line 1133
    new-instance v0, Lo01;

    .line 1134
    .line 1135
    invoke-direct {v0, v7, v3}, Lo01;-><init>(ILmt3;)V

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v1, v2, v0}, Lu95;->l(Lex6;Les5;)V

    .line 1139
    .line 1140
    .line 1141
    return-object v11

    .line 1142
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 1143
    .line 1144
    sget v1, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 1145
    .line 1146
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v0

    .line 1150
    const v1, 0x7f0d005b

    .line 1151
    .line 1152
    .line 1153
    const/4 v4, 0x0

    .line 1154
    invoke-virtual {v0, v1, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v1

    .line 1162
    if-eqz v1, :cond_29

    .line 1163
    .line 1164
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v12

    .line 1168
    const v3, 0x7f0a00e2

    .line 1169
    .line 1170
    .line 1171
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v1

    .line 1175
    move-object v13, v1

    .line 1176
    check-cast v13, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1177
    .line 1178
    if-eqz v13, :cond_29

    .line 1179
    .line 1180
    const v3, 0x7f0a00e7

    .line 1181
    .line 1182
    .line 1183
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v1

    .line 1187
    move-object v14, v1

    .line 1188
    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 1189
    .line 1190
    if-eqz v14, :cond_29

    .line 1191
    .line 1192
    const v3, 0x7f0a0176

    .line 1193
    .line 1194
    .line 1195
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v1

    .line 1199
    if-eqz v1, :cond_29

    .line 1200
    .line 1201
    const v3, 0x7f0a02a1

    .line 1202
    .line 1203
    .line 1204
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v5

    .line 1208
    check-cast v5, Landroid/widget/ImageView;

    .line 1209
    .line 1210
    if-eqz v5, :cond_28

    .line 1211
    .line 1212
    const v3, 0x7f0a05ba

    .line 1213
    .line 1214
    .line 1215
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v5

    .line 1219
    check-cast v5, Landroid/widget/TextView;

    .line 1220
    .line 1221
    if-eqz v5, :cond_28

    .line 1222
    .line 1223
    new-instance v15, Ll39;

    .line 1224
    .line 1225
    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 1226
    .line 1227
    invoke-direct {v15, v9, v1, v5}, Ll39;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1228
    .line 1229
    .line 1230
    move-object v11, v0

    .line 1231
    check-cast v11, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1232
    .line 1233
    const v3, 0x7f0a020d

    .line 1234
    .line 1235
    .line 1236
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v1

    .line 1240
    move-object/from16 v16, v1

    .line 1241
    .line 1242
    check-cast v16, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1243
    .line 1244
    if-eqz v16, :cond_29

    .line 1245
    .line 1246
    const v3, 0x7f0a03bf

    .line 1247
    .line 1248
    .line 1249
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v1

    .line 1253
    move-object/from16 v17, v1

    .line 1254
    .line 1255
    check-cast v17, Landroidx/recyclerview/widget/RecyclerView;

    .line 1256
    .line 1257
    if-eqz v17, :cond_29

    .line 1258
    .line 1259
    const v3, 0x7f0a04c5

    .line 1260
    .line 1261
    .line 1262
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v1

    .line 1266
    move-object/from16 v18, v1

    .line 1267
    .line 1268
    check-cast v18, Lcom/google/android/material/textfield/TextInputLayout;

    .line 1269
    .line 1270
    if-eqz v18, :cond_29

    .line 1271
    .line 1272
    const v3, 0x7f0a055d

    .line 1273
    .line 1274
    .line 1275
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v1

    .line 1279
    check-cast v1, Landroid/widget/TextView;

    .line 1280
    .line 1281
    if-eqz v1, :cond_29

    .line 1282
    .line 1283
    const v3, 0x7f0a055f

    .line 1284
    .line 1285
    .line 1286
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v1

    .line 1290
    check-cast v1, Landroid/widget/TextView;

    .line 1291
    .line 1292
    if-eqz v1, :cond_29

    .line 1293
    .line 1294
    new-instance v10, Lkq1;

    .line 1295
    .line 1296
    invoke-direct/range {v10 .. v18}, Lkq1;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/button/MaterialButton;Ll39;Lcom/google/android/material/textfield/TextInputEditText;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 1297
    .line 1298
    .line 1299
    move-object v12, v10

    .line 1300
    goto :goto_17

    .line 1301
    :cond_28
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v0

    .line 1305
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v0

    .line 1309
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v0

    .line 1313
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1314
    .line 1315
    .line 1316
    :goto_16
    move-object v12, v4

    .line 1317
    goto :goto_17

    .line 1318
    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v0

    .line 1322
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v0

    .line 1326
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1331
    .line 1332
    .line 1333
    goto :goto_16

    .line 1334
    :goto_17
    return-object v12

    .line 1335
    :pswitch_c
    check-cast v0, Lio1;

    .line 1336
    .line 1337
    invoke-virtual {v0}, Lio1;->reportFullyDrawn()V

    .line 1338
    .line 1339
    .line 1340
    return-object v11

    .line 1341
    :pswitch_d
    check-cast v0, Lq63;

    .line 1342
    .line 1343
    invoke-virtual {v0}, Lq63;->f()Z

    .line 1344
    .line 1345
    .line 1346
    move-result v0

    .line 1347
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v0

    .line 1351
    return-object v0

    .line 1352
    :pswitch_e
    check-cast v0, Lsl1;

    .line 1353
    .line 1354
    iget-object v0, v0, Lsl1;->b:Lgv7;

    .line 1355
    .line 1356
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v0

    .line 1360
    check-cast v0, Ljava/lang/String;

    .line 1361
    .line 1362
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1363
    .line 1364
    .line 1365
    move-result v0

    .line 1366
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v0

    .line 1370
    return-object v0

    .line 1371
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 1372
    .line 1373
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->Q:I

    .line 1374
    .line 1375
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->L:Lgv7;

    .line 1376
    .line 1377
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v0

    .line 1381
    check-cast v0, Lxb1;

    .line 1382
    .line 1383
    iget-object v0, v0, Lxb1;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 1384
    .line 1385
    return-object v0

    .line 1386
    :pswitch_10
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;

    .line 1387
    .line 1388
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->T:I

    .line 1389
    .line 1390
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->Q:Lgv7;

    .line 1391
    .line 1392
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v0

    .line 1396
    check-cast v0, Lni7;

    .line 1397
    .line 1398
    iget-object v0, v0, Lni7;->d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 1399
    .line 1400
    return-object v0

    .line 1401
    :pswitch_11
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 1402
    .line 1403
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->c0:I

    .line 1404
    .line 1405
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->W()Lzx2;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v0

    .line 1409
    iget-object v0, v0, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 1410
    .line 1411
    return-object v0

    .line 1412
    :pswitch_12
    check-cast v0, Lqk0;

    .line 1413
    .line 1414
    iget-boolean v1, v0, Lqk0;->c:Z

    .line 1415
    .line 1416
    if-eqz v1, :cond_2a

    .line 1417
    .line 1418
    sget-object v1, Lgs0;->a:Lgs0;

    .line 1419
    .line 1420
    iget-object v0, v0, Lqk0;->h:Lji;

    .line 1421
    .line 1422
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v0

    .line 1426
    sget-object v1, Lis0;->NoData:Lis0;

    .line 1427
    .line 1428
    invoke-static {v0, v1}, Lgs0;->c(Ljava/lang/String;Lis0;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v0

    .line 1432
    if-eqz v0, :cond_2a

    .line 1433
    .line 1434
    goto :goto_18

    .line 1435
    :cond_2a
    move v9, v10

    .line 1436
    :goto_18
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v0

    .line 1440
    return-object v0

    .line 1441
    :pswitch_13
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 1442
    .line 1443
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->m0:I

    .line 1444
    .line 1445
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->h0()La30;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v0

    .line 1449
    iget-object v0, v0, La30;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 1450
    .line 1451
    return-object v0

    .line 1452
    :pswitch_14
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 1453
    .line 1454
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 1455
    .line 1456
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->k0()Lg20;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v0

    .line 1460
    iget-object v0, v0, Lg20;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 1461
    .line 1462
    return-object v0

    .line 1463
    :pswitch_15
    check-cast v0, Lqx;

    .line 1464
    .line 1465
    invoke-static {v0}, Lqx;->n(Lqx;)Ljava/lang/String;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v0

    .line 1469
    return-object v0

    .line 1470
    :pswitch_16
    check-cast v0, Ljava/lang/String;

    .line 1471
    .line 1472
    filled-new-array {v4}, [Ljava/lang/String;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v1

    .line 1476
    invoke-static {v0, v1, v8}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v0

    .line 1480
    return-object v0

    .line 1481
    :pswitch_17
    check-cast v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 1482
    .line 1483
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->c(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)J

    .line 1484
    .line 1485
    .line 1486
    move-result-wide v0

    .line 1487
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v0

    .line 1491
    return-object v0

    .line 1492
    :pswitch_18
    move-object v4, v12

    .line 1493
    const-wide/16 v16, 0x0

    .line 1494
    .line 1495
    check-cast v0, Lyl;

    .line 1496
    .line 1497
    iget-object v1, v0, Lyl;->f:Lgv7;

    .line 1498
    .line 1499
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v1

    .line 1503
    check-cast v1, Ljava/lang/Boolean;

    .line 1504
    .line 1505
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1506
    .line 1507
    .line 1508
    move-result v1

    .line 1509
    if-eqz v1, :cond_2c

    .line 1510
    .line 1511
    iget-object v1, v0, Lyl;->b:Lji;

    .line 1512
    .line 1513
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v1

    .line 1517
    if-eqz v1, :cond_2b

    .line 1518
    .line 1519
    iget-boolean v0, v0, Lyl;->c:Z

    .line 1520
    .line 1521
    invoke-virtual {v1, v0}, Lqx;->getDeDataSize(Z)J

    .line 1522
    .line 1523
    .line 1524
    move-result-wide v0

    .line 1525
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v12

    .line 1529
    goto :goto_19

    .line 1530
    :cond_2b
    move-object v12, v4

    .line 1531
    :goto_19
    invoke-static {v12}, Lio4;->h(Ljava/lang/Long;)J

    .line 1532
    .line 1533
    .line 1534
    move-result-wide v5

    .line 1535
    goto :goto_1a

    .line 1536
    :cond_2c
    move-wide/from16 v5, v16

    .line 1537
    .line 1538
    :goto_1a
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v0

    .line 1542
    return-object v0

    .line 1543
    :pswitch_19
    check-cast v0, Lvl;

    .line 1544
    .line 1545
    invoke-virtual {v0}, Lvl;->i()Z

    .line 1546
    .line 1547
    .line 1548
    move-result v0

    .line 1549
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v0

    .line 1553
    return-object v0

    .line 1554
    :pswitch_1a
    check-cast v0, Lgl;

    .line 1555
    .line 1556
    iget-object v0, v0, Lgl;->b:Lgv7;

    .line 1557
    .line 1558
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1559
    .line 1560
    .line 1561
    move-result-object v0

    .line 1562
    check-cast v0, Ljava/util/HashMap;

    .line 1563
    .line 1564
    return-object v0

    .line 1565
    :pswitch_1b
    move-object v3, v0

    .line 1566
    check-cast v3, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;

    .line 1567
    .line 1568
    sget v0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->M:I

    .line 1569
    .line 1570
    sget-object v0, Liu;->DATA:Liu;

    .line 1571
    .line 1572
    new-instance v9, Lqk;

    .line 1573
    .line 1574
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->P()Lvk;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v1

    .line 1578
    iget-object v10, v1, Lvk;->b:Lju7;

    .line 1579
    .line 1580
    new-instance v1, Lrk;

    .line 1581
    .line 1582
    const/4 v7, 0x0

    .line 1583
    const/4 v8, 0x0

    .line 1584
    const/4 v2, 0x0

    .line 1585
    const-class v4, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;

    .line 1586
    .line 1587
    const-string v5, "onValuesChanged"

    .line 1588
    .line 1589
    const-string v6, "onValuesChanged()V"

    .line 1590
    .line 1591
    invoke-direct/range {v1 .. v8}, Lrk;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1592
    .line 1593
    .line 1594
    invoke-direct {v9, v10, v1}, Lqk;-><init>(Lju7;Lbt3;)V

    .line 1595
    .line 1596
    .line 1597
    new-instance v10, Lpw5;

    .line 1598
    .line 1599
    invoke-direct {v10, v0, v9}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1600
    .line 1601
    .line 1602
    sget-object v0, Liu;->EXTDATA:Liu;

    .line 1603
    .line 1604
    new-instance v8, Lqk;

    .line 1605
    .line 1606
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->P()Lvk;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v1

    .line 1610
    iget-object v9, v1, Lvk;->d:Lju7;

    .line 1611
    .line 1612
    new-instance v1, Lsk;

    .line 1613
    .line 1614
    const-string v6, "onValuesChanged()V"

    .line 1615
    .line 1616
    const-class v4, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;

    .line 1617
    .line 1618
    const-string v5, "onValuesChanged"

    .line 1619
    .line 1620
    invoke-direct/range {v1 .. v7}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1621
    .line 1622
    .line 1623
    invoke-direct {v8, v9, v1}, Lqk;-><init>(Lju7;Lbt3;)V

    .line 1624
    .line 1625
    .line 1626
    new-instance v9, Lpw5;

    .line 1627
    .line 1628
    invoke-direct {v9, v0, v8}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1629
    .line 1630
    .line 1631
    sget-object v0, Liu;->MEDIA:Liu;

    .line 1632
    .line 1633
    new-instance v8, Lqk;

    .line 1634
    .line 1635
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->P()Lvk;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v1

    .line 1639
    iget-object v11, v1, Lvk;->e:Lju7;

    .line 1640
    .line 1641
    new-instance v1, Ltk;

    .line 1642
    .line 1643
    const-string v6, "onValuesChanged()V"

    .line 1644
    .line 1645
    const-class v4, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;

    .line 1646
    .line 1647
    const-string v5, "onValuesChanged"

    .line 1648
    .line 1649
    invoke-direct/range {v1 .. v7}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1650
    .line 1651
    .line 1652
    invoke-direct {v8, v11, v1}, Lqk;-><init>(Lju7;Lbt3;)V

    .line 1653
    .line 1654
    .line 1655
    new-instance v11, Lpw5;

    .line 1656
    .line 1657
    invoke-direct {v11, v0, v8}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1658
    .line 1659
    .line 1660
    sget-object v0, Liu;->EXPANSION:Liu;

    .line 1661
    .line 1662
    new-instance v12, Lqk;

    .line 1663
    .line 1664
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->P()Lvk;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v1

    .line 1668
    iget-object v13, v1, Lvk;->c:Lju7;

    .line 1669
    .line 1670
    new-instance v1, Luk;

    .line 1671
    .line 1672
    const/4 v8, 0x0

    .line 1673
    const-class v4, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;

    .line 1674
    .line 1675
    const-string v5, "onValuesChanged"

    .line 1676
    .line 1677
    const-string v6, "onValuesChanged()V"

    .line 1678
    .line 1679
    invoke-direct/range {v1 .. v8}, Luk;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1680
    .line 1681
    .line 1682
    invoke-direct {v12, v13, v1}, Lqk;-><init>(Lju7;Lbt3;)V

    .line 1683
    .line 1684
    .line 1685
    new-instance v1, Lpw5;

    .line 1686
    .line 1687
    invoke-direct {v1, v0, v12}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1688
    .line 1689
    .line 1690
    filled-new-array {v10, v9, v11, v1}, [Lpw5;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v0

    .line 1694
    invoke-static {v0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v0

    .line 1698
    return-object v0

    .line 1699
    :pswitch_1c
    check-cast v0, Lhk;

    .line 1700
    .line 1701
    invoke-virtual {v0}, Lhk;->e()Lq63;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v1

    .line 1705
    iget-object v0, v0, Lhk;->b:Ljava/lang/String;

    .line 1706
    .line 1707
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1708
    .line 1709
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1710
    .line 1711
    .line 1712
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    .line 1714
    .line 1715
    const-string v0, ".splits"

    .line 1716
    .line 1717
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    .line 1719
    .line 1720
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v0

    .line 1724
    invoke-virtual {v1, v0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v0

    .line 1728
    return-object v0

    .line 1729
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
