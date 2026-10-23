.class public final synthetic Ln20;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lr20;

.field public final synthetic b:Lzc6;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lr20;Lzc6;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln20;->a:Lr20;

    .line 5
    .line 6
    iput-object p2, p0, Ln20;->b:Lzc6;

    .line 7
    .line 8
    iput-boolean p3, p0, Ln20;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ln20;->a:Lr20;

    .line 4
    .line 5
    iget-object v2, v1, Lr20;->k:Lex6;

    .line 6
    .line 7
    sget-object v3, Lym7;->LOADING:Lym7;

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Ln20;->b:Lzc6;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-boolean v3, v2, Lzc6;->q:Z

    .line 18
    .line 19
    iget-object v4, v2, Lzc6;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const-string v6, "ID_RESTORE_MISSING_APPS"

    .line 26
    .line 27
    const-string v7, "key_filter_app_enabled"

    .line 28
    .line 29
    const-string v8, "key_filter_favorites"

    .line 30
    .line 31
    sget-object v9, Lud3;->a:Lud3;

    .line 32
    .line 33
    const-string v10, "prefs"

    .line 34
    .line 35
    sparse-switch v5, :sswitch_data_0

    .line 36
    .line 37
    .line 38
    :cond_0
    const/16 v18, 0x0

    .line 39
    .line 40
    goto/16 :goto_8f

    .line 41
    .line 42
    :sswitch_0
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    sget-object v5, Lua1;->g:Lua1;

    .line 51
    .line 52
    invoke-virtual {v5}, Ldv;->e()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    :goto_0
    move-object v12, v5

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    sget-object v5, Lkz4;->g:Lkz4;

    .line 59
    .line 60
    invoke-virtual {v5}, Ldv;->e()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    goto :goto_0

    .line 65
    :goto_1
    iget-boolean v13, v2, Lzc6;->q:Z

    .line 66
    .line 67
    invoke-static {}, Ldd3;->e()Lcd3;

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    invoke-static {}, Lge3;->e()Lfe3;

    .line 72
    .line 73
    .line 74
    move-result-object v15

    .line 75
    invoke-virtual {v9}, Lud3;->f()Ltd3;

    .line 76
    .line 77
    .line 78
    move-result-object v16

    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    sget-object v5, Lfd3;->All:Lfd3;

    .line 82
    .line 83
    :goto_2
    move-object/from16 v17, v5

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_2
    sget-object v5, Lfd3;->BackedUp:Lfd3;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :goto_3
    sget-object v5, Lld3;->All:Lld3;

    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    const/16 v18, 0x0

    .line 96
    .line 97
    :try_start_0
    sget-object v11, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 98
    .line 99
    if-eqz v11, :cond_3

    .line 100
    .line 101
    invoke-interface {v11, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    goto :goto_4

    .line 106
    :cond_3
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v18
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :catch_0
    :goto_4
    if-eqz v5, :cond_6

    .line 111
    .line 112
    invoke-static {}, Lld3;->getEntries()Ljx2;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    check-cast v8, Lz3;

    .line 117
    .line 118
    invoke-virtual {v8}, Lz3;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    :goto_5
    move-object v11, v8

    .line 123
    check-cast v11, Lw3;

    .line 124
    .line 125
    invoke-virtual {v11}, Lw3;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v19

    .line 129
    if-eqz v19, :cond_5

    .line 130
    .line 131
    invoke-virtual {v11}, Lw3;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    move-object/from16 v19, v11

    .line 136
    .line 137
    check-cast v19, Lld3;

    .line 138
    .line 139
    move-object/from16 v20, v8

    .line 140
    .line 141
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-static {v8, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    if-eqz v8, :cond_4

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_4
    move-object/from16 v8, v20

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_5
    move-object/from16 v11, v18

    .line 156
    .line 157
    :goto_6
    check-cast v11, Lld3;

    .line 158
    .line 159
    if-nez v11, :cond_7

    .line 160
    .line 161
    :cond_6
    sget-object v11, Lld3;->All:Lld3;

    .line 162
    .line 163
    :cond_7
    sget-object v19, Lqd3;->NotInstalled:Lqd3;

    .line 164
    .line 165
    sget-object v5, Lid3;->All:Lid3;

    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    :try_start_1
    sget-object v8, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 172
    .line 173
    if-eqz v8, :cond_8

    .line 174
    .line 175
    invoke-interface {v8, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    goto :goto_7

    .line 180
    :cond_8
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v18
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    :catch_1
    :goto_7
    if-eqz v5, :cond_c

    .line 185
    .line 186
    invoke-static {}, Lid3;->getEntries()Ljx2;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    check-cast v7, Lz3;

    .line 191
    .line 192
    invoke-virtual {v7}, Lz3;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    :cond_9
    move-object v8, v7

    .line 197
    check-cast v8, Lw3;

    .line 198
    .line 199
    invoke-virtual {v8}, Lw3;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    if-eqz v10, :cond_a

    .line 204
    .line 205
    invoke-virtual {v8}, Lw3;->next()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    move-object v10, v8

    .line 210
    check-cast v10, Lid3;

    .line 211
    .line 212
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    invoke-static {v10, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    if-eqz v10, :cond_9

    .line 221
    .line 222
    move-object/from16 v18, v8

    .line 223
    .line 224
    :cond_a
    check-cast v18, Lid3;

    .line 225
    .line 226
    if-nez v18, :cond_b

    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_b
    :goto_8
    move-object/from16 v20, v18

    .line 230
    .line 231
    goto :goto_a

    .line 232
    :cond_c
    :goto_9
    sget-object v18, Lid3;->All:Lid3;

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :goto_a
    sget-object v21, Lzd3;->All:Lzd3;

    .line 236
    .line 237
    move-object/from16 v18, v11

    .line 238
    .line 239
    invoke-static/range {v12 .. v21}, Lqq;->a(Ljava/util/List;ZLcd3;Lfe3;Ltd3;Lfd3;Lld3;Lqd3;Lid3;Lzd3;)Ljava/util/ArrayList;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    new-instance v7, Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    :cond_d
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    if-eqz v8, :cond_81

    .line 257
    .line 258
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    move-object v10, v8

    .line 263
    check-cast v10, Lji;

    .line 264
    .line 265
    invoke-virtual {v10, v3}, Lji;->hasRestorableBackup(Z)Z

    .line 266
    .line 267
    .line 268
    move-result v10

    .line 269
    if-eqz v10, :cond_d

    .line 270
    .line 271
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    goto :goto_b

    .line 275
    :sswitch_1
    const/16 v18, 0x0

    .line 276
    .line 277
    const-string v5, "ID_RESTORE_NEW_VERSIONS_APPS"

    .line 278
    .line 279
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_87

    .line 284
    .line 285
    if-eqz v3, :cond_e

    .line 286
    .line 287
    sget-object v5, Lua1;->g:Lua1;

    .line 288
    .line 289
    invoke-virtual {v5}, Ldv;->e()Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    :goto_c
    move-object/from16 v19, v5

    .line 294
    .line 295
    goto :goto_d

    .line 296
    :cond_e
    sget-object v5, Lkz4;->g:Lkz4;

    .line 297
    .line 298
    invoke-virtual {v5}, Ldv;->e()Ljava/util/List;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    goto :goto_c

    .line 303
    :goto_d
    iget-boolean v5, v2, Lzc6;->q:Z

    .line 304
    .line 305
    invoke-static {}, Ldd3;->e()Lcd3;

    .line 306
    .line 307
    .line 308
    move-result-object v21

    .line 309
    invoke-static {}, Lge3;->e()Lfe3;

    .line 310
    .line 311
    .line 312
    move-result-object v22

    .line 313
    invoke-virtual {v9}, Lud3;->f()Ltd3;

    .line 314
    .line 315
    .line 316
    move-result-object v23

    .line 317
    if-eqz v3, :cond_f

    .line 318
    .line 319
    sget-object v11, Lfd3;->All:Lfd3;

    .line 320
    .line 321
    :goto_e
    move-object/from16 v24, v11

    .line 322
    .line 323
    goto :goto_f

    .line 324
    :cond_f
    sget-object v11, Lfd3;->BackedUp:Lfd3;

    .line 325
    .line 326
    goto :goto_e

    .line 327
    :goto_f
    sget-object v11, Lld3;->All:Lld3;

    .line 328
    .line 329
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v11

    .line 333
    :try_start_2
    sget-object v12, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 334
    .line 335
    if-eqz v12, :cond_10

    .line 336
    .line 337
    invoke-interface {v12, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v11

    .line 341
    goto :goto_10

    .line 342
    :cond_10
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw v18
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 346
    :catch_2
    :goto_10
    if-eqz v11, :cond_14

    .line 347
    .line 348
    invoke-static {}, Lld3;->getEntries()Ljx2;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    check-cast v8, Lz3;

    .line 353
    .line 354
    invoke-virtual {v8}, Lz3;->iterator()Ljava/util/Iterator;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    :cond_11
    move-object v12, v8

    .line 359
    check-cast v12, Lw3;

    .line 360
    .line 361
    invoke-virtual {v12}, Lw3;->hasNext()Z

    .line 362
    .line 363
    .line 364
    move-result v13

    .line 365
    if-eqz v13, :cond_12

    .line 366
    .line 367
    invoke-virtual {v12}, Lw3;->next()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v12

    .line 371
    move-object v13, v12

    .line 372
    check-cast v13, Lld3;

    .line 373
    .line 374
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v13

    .line 378
    invoke-static {v13, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v13

    .line 382
    if-eqz v13, :cond_11

    .line 383
    .line 384
    goto :goto_11

    .line 385
    :cond_12
    move-object/from16 v12, v18

    .line 386
    .line 387
    :goto_11
    check-cast v12, Lld3;

    .line 388
    .line 389
    if-nez v12, :cond_13

    .line 390
    .line 391
    goto :goto_13

    .line 392
    :cond_13
    :goto_12
    move-object/from16 v25, v12

    .line 393
    .line 394
    goto :goto_14

    .line 395
    :cond_14
    :goto_13
    sget-object v12, Lld3;->All:Lld3;

    .line 396
    .line 397
    goto :goto_12

    .line 398
    :goto_14
    sget-object v26, Lqd3;->All:Lqd3;

    .line 399
    .line 400
    sget-object v8, Lid3;->All:Lid3;

    .line 401
    .line 402
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    :try_start_3
    sget-object v11, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 407
    .line 408
    if-eqz v11, :cond_15

    .line 409
    .line 410
    invoke-interface {v11, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v8

    .line 414
    goto :goto_15

    .line 415
    :cond_15
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    throw v18
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 419
    :catch_3
    :goto_15
    if-eqz v8, :cond_19

    .line 420
    .line 421
    invoke-static {}, Lid3;->getEntries()Ljx2;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    check-cast v7, Lz3;

    .line 426
    .line 427
    invoke-virtual {v7}, Lz3;->iterator()Ljava/util/Iterator;

    .line 428
    .line 429
    .line 430
    move-result-object v7

    .line 431
    :cond_16
    move-object v10, v7

    .line 432
    check-cast v10, Lw3;

    .line 433
    .line 434
    invoke-virtual {v10}, Lw3;->hasNext()Z

    .line 435
    .line 436
    .line 437
    move-result v11

    .line 438
    if-eqz v11, :cond_17

    .line 439
    .line 440
    invoke-virtual {v10}, Lw3;->next()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v10

    .line 444
    move-object v11, v10

    .line 445
    check-cast v11, Lid3;

    .line 446
    .line 447
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v11

    .line 451
    invoke-static {v11, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v11

    .line 455
    if-eqz v11, :cond_16

    .line 456
    .line 457
    move-object v11, v10

    .line 458
    goto :goto_16

    .line 459
    :cond_17
    move-object/from16 v11, v18

    .line 460
    .line 461
    :goto_16
    check-cast v11, Lid3;

    .line 462
    .line 463
    if-nez v11, :cond_18

    .line 464
    .line 465
    goto :goto_18

    .line 466
    :cond_18
    :goto_17
    move-object/from16 v27, v11

    .line 467
    .line 468
    goto :goto_19

    .line 469
    :cond_19
    :goto_18
    sget-object v11, Lid3;->All:Lid3;

    .line 470
    .line 471
    goto :goto_17

    .line 472
    :goto_19
    sget-object v28, Lzd3;->BackupNew:Lzd3;

    .line 473
    .line 474
    move/from16 v20, v5

    .line 475
    .line 476
    invoke-static/range {v19 .. v28}, Lqq;->a(Ljava/util/List;ZLcd3;Lfe3;Ltd3;Lfd3;Lld3;Lqd3;Lid3;Lzd3;)Ljava/util/ArrayList;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    new-instance v7, Ljava/util/ArrayList;

    .line 481
    .line 482
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    :cond_1a
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 490
    .line 491
    .line 492
    move-result v8

    .line 493
    if-eqz v8, :cond_81

    .line 494
    .line 495
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v8

    .line 499
    move-object v10, v8

    .line 500
    check-cast v10, Lji;

    .line 501
    .line 502
    invoke-virtual {v10, v3}, Lji;->hasRestorableBackup(Z)Z

    .line 503
    .line 504
    .line 505
    move-result v10

    .line 506
    if-eqz v10, :cond_1a

    .line 507
    .line 508
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    goto :goto_1a

    .line 512
    :sswitch_2
    const/16 v18, 0x0

    .line 513
    .line 514
    const-string v5, "ID_BACKUP_PENDING_APPS"

    .line 515
    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v5

    .line 520
    if-eqz v5, :cond_87

    .line 521
    .line 522
    if-eqz v3, :cond_1b

    .line 523
    .line 524
    sget-object v5, Lkz4;->g:Lkz4;

    .line 525
    .line 526
    invoke-virtual {v5}, Ldv;->e()Ljava/util/List;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    sget-object v11, Lce3;->NotSynced:Lce3;

    .line 531
    .line 532
    invoke-static {v5, v11}, Lqq;->b(Ljava/util/List;Lce3;)Ljava/util/List;

    .line 533
    .line 534
    .line 535
    move-result-object v5

    .line 536
    :goto_1b
    move-object/from16 v19, v5

    .line 537
    .line 538
    goto :goto_1c

    .line 539
    :cond_1b
    sget-object v5, Lkz4;->g:Lkz4;

    .line 540
    .line 541
    invoke-virtual {v5}, Ldv;->e()Ljava/util/List;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    goto :goto_1b

    .line 546
    :goto_1c
    invoke-static {}, Ldd3;->e()Lcd3;

    .line 547
    .line 548
    .line 549
    move-result-object v21

    .line 550
    invoke-static {}, Lge3;->e()Lfe3;

    .line 551
    .line 552
    .line 553
    move-result-object v22

    .line 554
    invoke-virtual {v9}, Lud3;->f()Ltd3;

    .line 555
    .line 556
    .line 557
    move-result-object v23

    .line 558
    if-eqz v3, :cond_1c

    .line 559
    .line 560
    sget-object v3, Lfd3;->All:Lfd3;

    .line 561
    .line 562
    :goto_1d
    move-object/from16 v24, v3

    .line 563
    .line 564
    goto :goto_1e

    .line 565
    :cond_1c
    sget-object v3, Lfd3;->NotBackedUp:Lfd3;

    .line 566
    .line 567
    goto :goto_1d

    .line 568
    :goto_1e
    sget-object v3, Lld3;->All:Lld3;

    .line 569
    .line 570
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    :try_start_4
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 575
    .line 576
    if-eqz v5, :cond_1d

    .line 577
    .line 578
    invoke-interface {v5, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    goto :goto_1f

    .line 583
    :cond_1d
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    throw v18
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    .line 587
    :catch_4
    :goto_1f
    if-eqz v3, :cond_21

    .line 588
    .line 589
    invoke-static {}, Lld3;->getEntries()Ljx2;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    check-cast v5, Lz3;

    .line 594
    .line 595
    invoke-virtual {v5}, Lz3;->iterator()Ljava/util/Iterator;

    .line 596
    .line 597
    .line 598
    move-result-object v5

    .line 599
    :cond_1e
    move-object v8, v5

    .line 600
    check-cast v8, Lw3;

    .line 601
    .line 602
    invoke-virtual {v8}, Lw3;->hasNext()Z

    .line 603
    .line 604
    .line 605
    move-result v11

    .line 606
    if-eqz v11, :cond_1f

    .line 607
    .line 608
    invoke-virtual {v8}, Lw3;->next()Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v8

    .line 612
    move-object v11, v8

    .line 613
    check-cast v11, Lld3;

    .line 614
    .line 615
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v11

    .line 619
    invoke-static {v11, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v11

    .line 623
    if-eqz v11, :cond_1e

    .line 624
    .line 625
    goto :goto_20

    .line 626
    :cond_1f
    move-object/from16 v8, v18

    .line 627
    .line 628
    :goto_20
    check-cast v8, Lld3;

    .line 629
    .line 630
    if-nez v8, :cond_20

    .line 631
    .line 632
    goto :goto_22

    .line 633
    :cond_20
    :goto_21
    move-object/from16 v25, v8

    .line 634
    .line 635
    goto :goto_23

    .line 636
    :cond_21
    :goto_22
    sget-object v8, Lld3;->All:Lld3;

    .line 637
    .line 638
    goto :goto_21

    .line 639
    :goto_23
    sget-object v26, Lqd3;->Installed:Lqd3;

    .line 640
    .line 641
    sget-object v3, Lid3;->All:Lid3;

    .line 642
    .line 643
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    :try_start_5
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 648
    .line 649
    if-eqz v5, :cond_22

    .line 650
    .line 651
    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    goto :goto_24

    .line 656
    :cond_22
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    throw v18
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    .line 660
    :catch_5
    :goto_24
    if-eqz v3, :cond_26

    .line 661
    .line 662
    invoke-static {}, Lid3;->getEntries()Ljx2;

    .line 663
    .line 664
    .line 665
    move-result-object v5

    .line 666
    check-cast v5, Lz3;

    .line 667
    .line 668
    invoke-virtual {v5}, Lz3;->iterator()Ljava/util/Iterator;

    .line 669
    .line 670
    .line 671
    move-result-object v5

    .line 672
    :cond_23
    move-object v7, v5

    .line 673
    check-cast v7, Lw3;

    .line 674
    .line 675
    invoke-virtual {v7}, Lw3;->hasNext()Z

    .line 676
    .line 677
    .line 678
    move-result v8

    .line 679
    if-eqz v8, :cond_24

    .line 680
    .line 681
    invoke-virtual {v7}, Lw3;->next()Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v7

    .line 685
    move-object v8, v7

    .line 686
    check-cast v8, Lid3;

    .line 687
    .line 688
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v8

    .line 692
    invoke-static {v8, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    move-result v8

    .line 696
    if-eqz v8, :cond_23

    .line 697
    .line 698
    move-object v11, v7

    .line 699
    goto :goto_25

    .line 700
    :cond_24
    move-object/from16 v11, v18

    .line 701
    .line 702
    :goto_25
    check-cast v11, Lid3;

    .line 703
    .line 704
    if-nez v11, :cond_25

    .line 705
    .line 706
    goto :goto_27

    .line 707
    :cond_25
    :goto_26
    move-object/from16 v27, v11

    .line 708
    .line 709
    goto :goto_28

    .line 710
    :cond_26
    :goto_27
    sget-object v11, Lid3;->All:Lid3;

    .line 711
    .line 712
    goto :goto_26

    .line 713
    :goto_28
    sget-object v28, Lzd3;->All:Lzd3;

    .line 714
    .line 715
    const/16 v20, 0x0

    .line 716
    .line 717
    invoke-static/range {v19 .. v28}, Lqq;->a(Ljava/util/List;ZLcd3;Lfe3;Ltd3;Lfd3;Lld3;Lqd3;Lid3;Lzd3;)Ljava/util/ArrayList;

    .line 718
    .line 719
    .line 720
    move-result-object v7

    .line 721
    goto/16 :goto_8b

    .line 722
    .line 723
    :sswitch_3
    const/16 v18, 0x0

    .line 724
    .line 725
    const-string v5, "ID_RESTORE_ALL_APPS"

    .line 726
    .line 727
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 728
    .line 729
    .line 730
    move-result v5

    .line 731
    if-eqz v5, :cond_87

    .line 732
    .line 733
    if-eqz v3, :cond_27

    .line 734
    .line 735
    sget-object v5, Lua1;->g:Lua1;

    .line 736
    .line 737
    invoke-virtual {v5}, Ldv;->e()Ljava/util/List;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    :goto_29
    move-object/from16 v19, v5

    .line 742
    .line 743
    goto :goto_2a

    .line 744
    :cond_27
    sget-object v5, Lkz4;->g:Lkz4;

    .line 745
    .line 746
    invoke-virtual {v5}, Ldv;->e()Ljava/util/List;

    .line 747
    .line 748
    .line 749
    move-result-object v5

    .line 750
    goto :goto_29

    .line 751
    :goto_2a
    iget-boolean v5, v2, Lzc6;->q:Z

    .line 752
    .line 753
    invoke-static {}, Ldd3;->e()Lcd3;

    .line 754
    .line 755
    .line 756
    move-result-object v21

    .line 757
    invoke-static {}, Lge3;->e()Lfe3;

    .line 758
    .line 759
    .line 760
    move-result-object v22

    .line 761
    invoke-virtual {v9}, Lud3;->f()Ltd3;

    .line 762
    .line 763
    .line 764
    move-result-object v23

    .line 765
    if-eqz v3, :cond_28

    .line 766
    .line 767
    sget-object v11, Lfd3;->All:Lfd3;

    .line 768
    .line 769
    :goto_2b
    move-object/from16 v24, v11

    .line 770
    .line 771
    goto :goto_2c

    .line 772
    :cond_28
    sget-object v11, Lfd3;->BackedUp:Lfd3;

    .line 773
    .line 774
    goto :goto_2b

    .line 775
    :goto_2c
    sget-object v11, Lld3;->All:Lld3;

    .line 776
    .line 777
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v11

    .line 781
    :try_start_6
    sget-object v12, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 782
    .line 783
    if-eqz v12, :cond_29

    .line 784
    .line 785
    invoke-interface {v12, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v11

    .line 789
    goto :goto_2d

    .line 790
    :cond_29
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    throw v18
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    .line 794
    :catch_6
    :goto_2d
    if-eqz v11, :cond_2d

    .line 795
    .line 796
    invoke-static {}, Lld3;->getEntries()Ljx2;

    .line 797
    .line 798
    .line 799
    move-result-object v8

    .line 800
    check-cast v8, Lz3;

    .line 801
    .line 802
    invoke-virtual {v8}, Lz3;->iterator()Ljava/util/Iterator;

    .line 803
    .line 804
    .line 805
    move-result-object v8

    .line 806
    :cond_2a
    move-object v12, v8

    .line 807
    check-cast v12, Lw3;

    .line 808
    .line 809
    invoke-virtual {v12}, Lw3;->hasNext()Z

    .line 810
    .line 811
    .line 812
    move-result v13

    .line 813
    if-eqz v13, :cond_2b

    .line 814
    .line 815
    invoke-virtual {v12}, Lw3;->next()Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v12

    .line 819
    move-object v13, v12

    .line 820
    check-cast v13, Lld3;

    .line 821
    .line 822
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v13

    .line 826
    invoke-static {v13, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v13

    .line 830
    if-eqz v13, :cond_2a

    .line 831
    .line 832
    goto :goto_2e

    .line 833
    :cond_2b
    move-object/from16 v12, v18

    .line 834
    .line 835
    :goto_2e
    check-cast v12, Lld3;

    .line 836
    .line 837
    if-nez v12, :cond_2c

    .line 838
    .line 839
    goto :goto_30

    .line 840
    :cond_2c
    :goto_2f
    move-object/from16 v25, v12

    .line 841
    .line 842
    goto :goto_31

    .line 843
    :cond_2d
    :goto_30
    sget-object v12, Lld3;->All:Lld3;

    .line 844
    .line 845
    goto :goto_2f

    .line 846
    :goto_31
    sget-object v26, Lqd3;->All:Lqd3;

    .line 847
    .line 848
    sget-object v8, Lid3;->All:Lid3;

    .line 849
    .line 850
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v8

    .line 854
    :try_start_7
    sget-object v11, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 855
    .line 856
    if-eqz v11, :cond_2e

    .line 857
    .line 858
    invoke-interface {v11, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v8

    .line 862
    goto :goto_32

    .line 863
    :cond_2e
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 864
    .line 865
    .line 866
    throw v18
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    .line 867
    :catch_7
    :goto_32
    if-eqz v8, :cond_32

    .line 868
    .line 869
    invoke-static {}, Lid3;->getEntries()Ljx2;

    .line 870
    .line 871
    .line 872
    move-result-object v7

    .line 873
    check-cast v7, Lz3;

    .line 874
    .line 875
    invoke-virtual {v7}, Lz3;->iterator()Ljava/util/Iterator;

    .line 876
    .line 877
    .line 878
    move-result-object v7

    .line 879
    :cond_2f
    move-object v10, v7

    .line 880
    check-cast v10, Lw3;

    .line 881
    .line 882
    invoke-virtual {v10}, Lw3;->hasNext()Z

    .line 883
    .line 884
    .line 885
    move-result v11

    .line 886
    if-eqz v11, :cond_30

    .line 887
    .line 888
    invoke-virtual {v10}, Lw3;->next()Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v10

    .line 892
    move-object v11, v10

    .line 893
    check-cast v11, Lid3;

    .line 894
    .line 895
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v11

    .line 899
    invoke-static {v11, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 900
    .line 901
    .line 902
    move-result v11

    .line 903
    if-eqz v11, :cond_2f

    .line 904
    .line 905
    move-object v11, v10

    .line 906
    goto :goto_33

    .line 907
    :cond_30
    move-object/from16 v11, v18

    .line 908
    .line 909
    :goto_33
    check-cast v11, Lid3;

    .line 910
    .line 911
    if-nez v11, :cond_31

    .line 912
    .line 913
    goto :goto_35

    .line 914
    :cond_31
    :goto_34
    move-object/from16 v27, v11

    .line 915
    .line 916
    goto :goto_36

    .line 917
    :cond_32
    :goto_35
    sget-object v11, Lid3;->All:Lid3;

    .line 918
    .line 919
    goto :goto_34

    .line 920
    :goto_36
    sget-object v28, Lzd3;->All:Lzd3;

    .line 921
    .line 922
    move/from16 v20, v5

    .line 923
    .line 924
    invoke-static/range {v19 .. v28}, Lqq;->a(Ljava/util/List;ZLcd3;Lfe3;Ltd3;Lfd3;Lld3;Lqd3;Lid3;Lzd3;)Ljava/util/ArrayList;

    .line 925
    .line 926
    .line 927
    move-result-object v5

    .line 928
    new-instance v7, Ljava/util/ArrayList;

    .line 929
    .line 930
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 931
    .line 932
    .line 933
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 934
    .line 935
    .line 936
    move-result-object v5

    .line 937
    :cond_33
    :goto_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 938
    .line 939
    .line 940
    move-result v8

    .line 941
    if-eqz v8, :cond_81

    .line 942
    .line 943
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object v8

    .line 947
    move-object v10, v8

    .line 948
    check-cast v10, Lji;

    .line 949
    .line 950
    invoke-virtual {v10, v3}, Lji;->hasRestorableBackup(Z)Z

    .line 951
    .line 952
    .line 953
    move-result v10

    .line 954
    if-eqz v10, :cond_33

    .line 955
    .line 956
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    .line 958
    .line 959
    goto :goto_37

    .line 960
    :sswitch_4
    const/16 v18, 0x0

    .line 961
    .line 962
    const-string v3, "ID_BACKUP_SYNC_APPS"

    .line 963
    .line 964
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 965
    .line 966
    .line 967
    move-result v3

    .line 968
    if-eqz v3, :cond_87

    .line 969
    .line 970
    sget-object v3, Lkz4;->g:Lkz4;

    .line 971
    .line 972
    invoke-virtual {v3}, Ldv;->e()Ljava/util/List;

    .line 973
    .line 974
    .line 975
    move-result-object v19

    .line 976
    invoke-static {}, Ldd3;->e()Lcd3;

    .line 977
    .line 978
    .line 979
    move-result-object v21

    .line 980
    invoke-static {}, Lge3;->e()Lfe3;

    .line 981
    .line 982
    .line 983
    move-result-object v22

    .line 984
    invoke-virtual {v9}, Lud3;->f()Ltd3;

    .line 985
    .line 986
    .line 987
    move-result-object v23

    .line 988
    sget-object v24, Lfd3;->BackedUp:Lfd3;

    .line 989
    .line 990
    sget-object v3, Lld3;->All:Lld3;

    .line 991
    .line 992
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v3

    .line 996
    :try_start_8
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 997
    .line 998
    if-eqz v5, :cond_34

    .line 999
    .line 1000
    invoke-interface {v5, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v3

    .line 1004
    goto :goto_38

    .line 1005
    :cond_34
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    throw v18
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1009
    :catch_8
    :goto_38
    if-eqz v3, :cond_38

    .line 1010
    .line 1011
    invoke-static {}, Lld3;->getEntries()Ljx2;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v5

    .line 1015
    check-cast v5, Lz3;

    .line 1016
    .line 1017
    invoke-virtual {v5}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v5

    .line 1021
    :cond_35
    move-object v8, v5

    .line 1022
    check-cast v8, Lw3;

    .line 1023
    .line 1024
    invoke-virtual {v8}, Lw3;->hasNext()Z

    .line 1025
    .line 1026
    .line 1027
    move-result v11

    .line 1028
    if-eqz v11, :cond_36

    .line 1029
    .line 1030
    invoke-virtual {v8}, Lw3;->next()Ljava/lang/Object;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v8

    .line 1034
    move-object v11, v8

    .line 1035
    check-cast v11, Lld3;

    .line 1036
    .line 1037
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v11

    .line 1041
    invoke-static {v11, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v11

    .line 1045
    if-eqz v11, :cond_35

    .line 1046
    .line 1047
    goto :goto_39

    .line 1048
    :cond_36
    move-object/from16 v8, v18

    .line 1049
    .line 1050
    :goto_39
    check-cast v8, Lld3;

    .line 1051
    .line 1052
    if-nez v8, :cond_37

    .line 1053
    .line 1054
    goto :goto_3b

    .line 1055
    :cond_37
    :goto_3a
    move-object/from16 v25, v8

    .line 1056
    .line 1057
    goto :goto_3c

    .line 1058
    :cond_38
    :goto_3b
    sget-object v8, Lld3;->All:Lld3;

    .line 1059
    .line 1060
    goto :goto_3a

    .line 1061
    :goto_3c
    const-string v3, "key_filter_app_install"

    .line 1062
    .line 1063
    sget-object v5, Lqd3;->All:Lqd3;

    .line 1064
    .line 1065
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v5

    .line 1069
    :try_start_9
    sget-object v8, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1070
    .line 1071
    if-eqz v8, :cond_39

    .line 1072
    .line 1073
    invoke-interface {v8, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v5

    .line 1077
    goto :goto_3d

    .line 1078
    :cond_39
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 1079
    .line 1080
    .line 1081
    throw v18
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1082
    :catch_9
    :goto_3d
    if-eqz v5, :cond_3d

    .line 1083
    .line 1084
    invoke-static {}, Lqd3;->getEntries()Ljx2;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v3

    .line 1088
    check-cast v3, Lz3;

    .line 1089
    .line 1090
    invoke-virtual {v3}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v3

    .line 1094
    :cond_3a
    move-object v8, v3

    .line 1095
    check-cast v8, Lw3;

    .line 1096
    .line 1097
    invoke-virtual {v8}, Lw3;->hasNext()Z

    .line 1098
    .line 1099
    .line 1100
    move-result v11

    .line 1101
    if-eqz v11, :cond_3b

    .line 1102
    .line 1103
    invoke-virtual {v8}, Lw3;->next()Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v8

    .line 1107
    move-object v11, v8

    .line 1108
    check-cast v11, Lqd3;

    .line 1109
    .line 1110
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v11

    .line 1114
    invoke-static {v11, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1115
    .line 1116
    .line 1117
    move-result v11

    .line 1118
    if-eqz v11, :cond_3a

    .line 1119
    .line 1120
    goto :goto_3e

    .line 1121
    :cond_3b
    move-object/from16 v8, v18

    .line 1122
    .line 1123
    :goto_3e
    check-cast v8, Lqd3;

    .line 1124
    .line 1125
    if-nez v8, :cond_3c

    .line 1126
    .line 1127
    goto :goto_40

    .line 1128
    :cond_3c
    :goto_3f
    move-object/from16 v26, v8

    .line 1129
    .line 1130
    goto :goto_41

    .line 1131
    :cond_3d
    :goto_40
    sget-object v8, Lqd3;->All:Lqd3;

    .line 1132
    .line 1133
    goto :goto_3f

    .line 1134
    :goto_41
    sget-object v3, Lid3;->All:Lid3;

    .line 1135
    .line 1136
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v3

    .line 1140
    :try_start_a
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1141
    .line 1142
    if-eqz v5, :cond_3e

    .line 1143
    .line 1144
    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v3

    .line 1148
    goto :goto_42

    .line 1149
    :cond_3e
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    throw v18
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    .line 1153
    :catch_a
    :goto_42
    if-eqz v3, :cond_42

    .line 1154
    .line 1155
    invoke-static {}, Lid3;->getEntries()Ljx2;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v5

    .line 1159
    check-cast v5, Lz3;

    .line 1160
    .line 1161
    invoke-virtual {v5}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v5

    .line 1165
    :cond_3f
    move-object v7, v5

    .line 1166
    check-cast v7, Lw3;

    .line 1167
    .line 1168
    invoke-virtual {v7}, Lw3;->hasNext()Z

    .line 1169
    .line 1170
    .line 1171
    move-result v8

    .line 1172
    if-eqz v8, :cond_40

    .line 1173
    .line 1174
    invoke-virtual {v7}, Lw3;->next()Ljava/lang/Object;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v7

    .line 1178
    move-object v8, v7

    .line 1179
    check-cast v8, Lid3;

    .line 1180
    .line 1181
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v8

    .line 1185
    invoke-static {v8, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1186
    .line 1187
    .line 1188
    move-result v8

    .line 1189
    if-eqz v8, :cond_3f

    .line 1190
    .line 1191
    move-object v11, v7

    .line 1192
    goto :goto_43

    .line 1193
    :cond_40
    move-object/from16 v11, v18

    .line 1194
    .line 1195
    :goto_43
    check-cast v11, Lid3;

    .line 1196
    .line 1197
    if-nez v11, :cond_41

    .line 1198
    .line 1199
    goto :goto_45

    .line 1200
    :cond_41
    :goto_44
    move-object/from16 v27, v11

    .line 1201
    .line 1202
    goto :goto_46

    .line 1203
    :cond_42
    :goto_45
    sget-object v11, Lid3;->All:Lid3;

    .line 1204
    .line 1205
    goto :goto_44

    .line 1206
    :goto_46
    sget-object v28, Lzd3;->All:Lzd3;

    .line 1207
    .line 1208
    const/16 v20, 0x0

    .line 1209
    .line 1210
    invoke-static/range {v19 .. v28}, Lqq;->a(Ljava/util/List;ZLcd3;Lfe3;Ltd3;Lfd3;Lld3;Lqd3;Lid3;Lzd3;)Ljava/util/ArrayList;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v7

    .line 1214
    goto/16 :goto_8b

    .line 1215
    .line 1216
    :sswitch_5
    const/16 v18, 0x0

    .line 1217
    .line 1218
    const-string v5, "ID_BACKUP_UPDATED_APPS"

    .line 1219
    .line 1220
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1221
    .line 1222
    .line 1223
    move-result v5

    .line 1224
    if-eqz v5, :cond_87

    .line 1225
    .line 1226
    if-eqz v3, :cond_43

    .line 1227
    .line 1228
    sget-object v5, Lua1;->g:Lua1;

    .line 1229
    .line 1230
    invoke-virtual {v5}, Ldv;->e()Ljava/util/List;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v5

    .line 1234
    :goto_47
    move-object/from16 v19, v5

    .line 1235
    .line 1236
    goto :goto_48

    .line 1237
    :cond_43
    sget-object v5, Lkz4;->g:Lkz4;

    .line 1238
    .line 1239
    invoke-virtual {v5}, Ldv;->e()Ljava/util/List;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v5

    .line 1243
    goto :goto_47

    .line 1244
    :goto_48
    iget-boolean v5, v2, Lzc6;->q:Z

    .line 1245
    .line 1246
    invoke-static {}, Ldd3;->e()Lcd3;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v21

    .line 1250
    invoke-static {}, Lge3;->e()Lfe3;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v22

    .line 1254
    invoke-virtual {v9}, Lud3;->f()Ltd3;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v23

    .line 1258
    if-eqz v3, :cond_44

    .line 1259
    .line 1260
    sget-object v3, Lfd3;->All:Lfd3;

    .line 1261
    .line 1262
    :goto_49
    move-object/from16 v24, v3

    .line 1263
    .line 1264
    goto :goto_4a

    .line 1265
    :cond_44
    sget-object v3, Lfd3;->BackedUp:Lfd3;

    .line 1266
    .line 1267
    goto :goto_49

    .line 1268
    :goto_4a
    sget-object v3, Lld3;->All:Lld3;

    .line 1269
    .line 1270
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v3

    .line 1274
    :try_start_b
    sget-object v11, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1275
    .line 1276
    if-eqz v11, :cond_45

    .line 1277
    .line 1278
    invoke-interface {v11, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v3

    .line 1282
    goto :goto_4b

    .line 1283
    :cond_45
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 1284
    .line 1285
    .line 1286
    throw v18
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    .line 1287
    :catch_b
    :goto_4b
    if-eqz v3, :cond_49

    .line 1288
    .line 1289
    invoke-static {}, Lld3;->getEntries()Ljx2;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v8

    .line 1293
    check-cast v8, Lz3;

    .line 1294
    .line 1295
    invoke-virtual {v8}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v8

    .line 1299
    :cond_46
    move-object v11, v8

    .line 1300
    check-cast v11, Lw3;

    .line 1301
    .line 1302
    invoke-virtual {v11}, Lw3;->hasNext()Z

    .line 1303
    .line 1304
    .line 1305
    move-result v12

    .line 1306
    if-eqz v12, :cond_47

    .line 1307
    .line 1308
    invoke-virtual {v11}, Lw3;->next()Ljava/lang/Object;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v11

    .line 1312
    move-object v12, v11

    .line 1313
    check-cast v12, Lld3;

    .line 1314
    .line 1315
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v12

    .line 1319
    invoke-static {v12, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1320
    .line 1321
    .line 1322
    move-result v12

    .line 1323
    if-eqz v12, :cond_46

    .line 1324
    .line 1325
    goto :goto_4c

    .line 1326
    :cond_47
    move-object/from16 v11, v18

    .line 1327
    .line 1328
    :goto_4c
    check-cast v11, Lld3;

    .line 1329
    .line 1330
    if-nez v11, :cond_48

    .line 1331
    .line 1332
    goto :goto_4e

    .line 1333
    :cond_48
    :goto_4d
    move-object/from16 v25, v11

    .line 1334
    .line 1335
    goto :goto_4f

    .line 1336
    :cond_49
    :goto_4e
    sget-object v11, Lld3;->All:Lld3;

    .line 1337
    .line 1338
    goto :goto_4d

    .line 1339
    :goto_4f
    sget-object v26, Lqd3;->Installed:Lqd3;

    .line 1340
    .line 1341
    sget-object v3, Lid3;->All:Lid3;

    .line 1342
    .line 1343
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v3

    .line 1347
    :try_start_c
    sget-object v8, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1348
    .line 1349
    if-eqz v8, :cond_4a

    .line 1350
    .line 1351
    invoke-interface {v8, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v3

    .line 1355
    goto :goto_50

    .line 1356
    :cond_4a
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 1357
    .line 1358
    .line 1359
    throw v18
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    .line 1360
    :catch_c
    :goto_50
    if-eqz v3, :cond_4e

    .line 1361
    .line 1362
    invoke-static {}, Lid3;->getEntries()Ljx2;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v7

    .line 1366
    check-cast v7, Lz3;

    .line 1367
    .line 1368
    invoke-virtual {v7}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v7

    .line 1372
    :cond_4b
    move-object v8, v7

    .line 1373
    check-cast v8, Lw3;

    .line 1374
    .line 1375
    invoke-virtual {v8}, Lw3;->hasNext()Z

    .line 1376
    .line 1377
    .line 1378
    move-result v10

    .line 1379
    if-eqz v10, :cond_4c

    .line 1380
    .line 1381
    invoke-virtual {v8}, Lw3;->next()Ljava/lang/Object;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v8

    .line 1385
    move-object v10, v8

    .line 1386
    check-cast v10, Lid3;

    .line 1387
    .line 1388
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v10

    .line 1392
    invoke-static {v10, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1393
    .line 1394
    .line 1395
    move-result v10

    .line 1396
    if-eqz v10, :cond_4b

    .line 1397
    .line 1398
    move-object v11, v8

    .line 1399
    goto :goto_51

    .line 1400
    :cond_4c
    move-object/from16 v11, v18

    .line 1401
    .line 1402
    :goto_51
    check-cast v11, Lid3;

    .line 1403
    .line 1404
    if-nez v11, :cond_4d

    .line 1405
    .line 1406
    goto :goto_53

    .line 1407
    :cond_4d
    :goto_52
    move-object/from16 v27, v11

    .line 1408
    .line 1409
    goto :goto_54

    .line 1410
    :cond_4e
    :goto_53
    sget-object v11, Lid3;->All:Lid3;

    .line 1411
    .line 1412
    goto :goto_52

    .line 1413
    :goto_54
    sget-object v28, Lzd3;->BackupOld:Lzd3;

    .line 1414
    .line 1415
    move/from16 v20, v5

    .line 1416
    .line 1417
    invoke-static/range {v19 .. v28}, Lqq;->a(Ljava/util/List;ZLcd3;Lfe3;Ltd3;Lfd3;Lld3;Lqd3;Lid3;Lzd3;)Ljava/util/ArrayList;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v7

    .line 1421
    goto/16 :goto_8b

    .line 1422
    .line 1423
    :sswitch_6
    const/16 v18, 0x0

    .line 1424
    .line 1425
    const-string v3, "ID_ENABLE_DISABLE_APPS_APPS"

    .line 1426
    .line 1427
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1428
    .line 1429
    .line 1430
    move-result v3

    .line 1431
    if-eqz v3, :cond_87

    .line 1432
    .line 1433
    sget-object v3, Lkz4;->g:Lkz4;

    .line 1434
    .line 1435
    invoke-virtual {v3}, Ldv;->e()Ljava/util/List;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v19

    .line 1439
    invoke-static {}, Ldd3;->e()Lcd3;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v21

    .line 1443
    invoke-static {}, Lge3;->e()Lfe3;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v22

    .line 1447
    invoke-virtual {v9}, Lud3;->f()Ltd3;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v23

    .line 1451
    sget-object v24, Lfd3;->All:Lfd3;

    .line 1452
    .line 1453
    sget-object v3, Lld3;->All:Lld3;

    .line 1454
    .line 1455
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v3

    .line 1459
    :try_start_d
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1460
    .line 1461
    if-eqz v5, :cond_4f

    .line 1462
    .line 1463
    invoke-interface {v5, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v3

    .line 1467
    goto :goto_55

    .line 1468
    :cond_4f
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 1469
    .line 1470
    .line 1471
    throw v18
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_d

    .line 1472
    :catch_d
    :goto_55
    if-eqz v3, :cond_53

    .line 1473
    .line 1474
    invoke-static {}, Lld3;->getEntries()Ljx2;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v5

    .line 1478
    check-cast v5, Lz3;

    .line 1479
    .line 1480
    invoke-virtual {v5}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v5

    .line 1484
    :cond_50
    move-object v8, v5

    .line 1485
    check-cast v8, Lw3;

    .line 1486
    .line 1487
    invoke-virtual {v8}, Lw3;->hasNext()Z

    .line 1488
    .line 1489
    .line 1490
    move-result v11

    .line 1491
    if-eqz v11, :cond_51

    .line 1492
    .line 1493
    invoke-virtual {v8}, Lw3;->next()Ljava/lang/Object;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v8

    .line 1497
    move-object v11, v8

    .line 1498
    check-cast v11, Lld3;

    .line 1499
    .line 1500
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v11

    .line 1504
    invoke-static {v11, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1505
    .line 1506
    .line 1507
    move-result v11

    .line 1508
    if-eqz v11, :cond_50

    .line 1509
    .line 1510
    goto :goto_56

    .line 1511
    :cond_51
    move-object/from16 v8, v18

    .line 1512
    .line 1513
    :goto_56
    check-cast v8, Lld3;

    .line 1514
    .line 1515
    if-nez v8, :cond_52

    .line 1516
    .line 1517
    goto :goto_58

    .line 1518
    :cond_52
    :goto_57
    move-object/from16 v25, v8

    .line 1519
    .line 1520
    goto :goto_59

    .line 1521
    :cond_53
    :goto_58
    sget-object v8, Lld3;->All:Lld3;

    .line 1522
    .line 1523
    goto :goto_57

    .line 1524
    :goto_59
    sget-object v26, Lqd3;->Installed:Lqd3;

    .line 1525
    .line 1526
    sget-object v3, Lid3;->All:Lid3;

    .line 1527
    .line 1528
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v3

    .line 1532
    :try_start_e
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1533
    .line 1534
    if-eqz v5, :cond_54

    .line 1535
    .line 1536
    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v3

    .line 1540
    goto :goto_5a

    .line 1541
    :cond_54
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 1542
    .line 1543
    .line 1544
    throw v18
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_e

    .line 1545
    :catch_e
    :goto_5a
    if-eqz v3, :cond_58

    .line 1546
    .line 1547
    invoke-static {}, Lid3;->getEntries()Ljx2;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v5

    .line 1551
    check-cast v5, Lz3;

    .line 1552
    .line 1553
    invoke-virtual {v5}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v5

    .line 1557
    :cond_55
    move-object v7, v5

    .line 1558
    check-cast v7, Lw3;

    .line 1559
    .line 1560
    invoke-virtual {v7}, Lw3;->hasNext()Z

    .line 1561
    .line 1562
    .line 1563
    move-result v8

    .line 1564
    if-eqz v8, :cond_56

    .line 1565
    .line 1566
    invoke-virtual {v7}, Lw3;->next()Ljava/lang/Object;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v7

    .line 1570
    move-object v8, v7

    .line 1571
    check-cast v8, Lid3;

    .line 1572
    .line 1573
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v8

    .line 1577
    invoke-static {v8, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1578
    .line 1579
    .line 1580
    move-result v8

    .line 1581
    if-eqz v8, :cond_55

    .line 1582
    .line 1583
    move-object v11, v7

    .line 1584
    goto :goto_5b

    .line 1585
    :cond_56
    move-object/from16 v11, v18

    .line 1586
    .line 1587
    :goto_5b
    check-cast v11, Lid3;

    .line 1588
    .line 1589
    if-nez v11, :cond_57

    .line 1590
    .line 1591
    goto :goto_5d

    .line 1592
    :cond_57
    :goto_5c
    move-object/from16 v27, v11

    .line 1593
    .line 1594
    goto :goto_5e

    .line 1595
    :cond_58
    :goto_5d
    sget-object v11, Lid3;->All:Lid3;

    .line 1596
    .line 1597
    goto :goto_5c

    .line 1598
    :goto_5e
    sget-object v28, Lzd3;->All:Lzd3;

    .line 1599
    .line 1600
    const/16 v20, 0x0

    .line 1601
    .line 1602
    invoke-static/range {v19 .. v28}, Lqq;->a(Ljava/util/List;ZLcd3;Lfe3;Ltd3;Lfd3;Lld3;Lqd3;Lid3;Lzd3;)Ljava/util/ArrayList;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v7

    .line 1606
    goto/16 :goto_8b

    .line 1607
    .line 1608
    :sswitch_7
    const/16 v18, 0x0

    .line 1609
    .line 1610
    const-string v3, "ID_BACKUP_ALL_APPS"

    .line 1611
    .line 1612
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1613
    .line 1614
    .line 1615
    move-result v3

    .line 1616
    if-eqz v3, :cond_87

    .line 1617
    .line 1618
    sget-object v3, Lkz4;->g:Lkz4;

    .line 1619
    .line 1620
    invoke-virtual {v3}, Ldv;->e()Ljava/util/List;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v19

    .line 1624
    invoke-static {}, Ldd3;->e()Lcd3;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v21

    .line 1628
    invoke-static {}, Lge3;->e()Lfe3;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v22

    .line 1632
    invoke-virtual {v9}, Lud3;->f()Ltd3;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v23

    .line 1636
    sget-object v24, Lfd3;->All:Lfd3;

    .line 1637
    .line 1638
    sget-object v3, Lld3;->All:Lld3;

    .line 1639
    .line 1640
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v3

    .line 1644
    :try_start_f
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1645
    .line 1646
    if-eqz v5, :cond_59

    .line 1647
    .line 1648
    invoke-interface {v5, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v3

    .line 1652
    goto :goto_5f

    .line 1653
    :cond_59
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 1654
    .line 1655
    .line 1656
    throw v18
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_f

    .line 1657
    :catch_f
    :goto_5f
    if-eqz v3, :cond_5d

    .line 1658
    .line 1659
    invoke-static {}, Lld3;->getEntries()Ljx2;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v5

    .line 1663
    check-cast v5, Lz3;

    .line 1664
    .line 1665
    invoke-virtual {v5}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v5

    .line 1669
    :cond_5a
    move-object v8, v5

    .line 1670
    check-cast v8, Lw3;

    .line 1671
    .line 1672
    invoke-virtual {v8}, Lw3;->hasNext()Z

    .line 1673
    .line 1674
    .line 1675
    move-result v11

    .line 1676
    if-eqz v11, :cond_5b

    .line 1677
    .line 1678
    invoke-virtual {v8}, Lw3;->next()Ljava/lang/Object;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v8

    .line 1682
    move-object v11, v8

    .line 1683
    check-cast v11, Lld3;

    .line 1684
    .line 1685
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v11

    .line 1689
    invoke-static {v11, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1690
    .line 1691
    .line 1692
    move-result v11

    .line 1693
    if-eqz v11, :cond_5a

    .line 1694
    .line 1695
    goto :goto_60

    .line 1696
    :cond_5b
    move-object/from16 v8, v18

    .line 1697
    .line 1698
    :goto_60
    check-cast v8, Lld3;

    .line 1699
    .line 1700
    if-nez v8, :cond_5c

    .line 1701
    .line 1702
    goto :goto_62

    .line 1703
    :cond_5c
    :goto_61
    move-object/from16 v25, v8

    .line 1704
    .line 1705
    goto :goto_63

    .line 1706
    :cond_5d
    :goto_62
    sget-object v8, Lld3;->All:Lld3;

    .line 1707
    .line 1708
    goto :goto_61

    .line 1709
    :goto_63
    sget-object v26, Lqd3;->Installed:Lqd3;

    .line 1710
    .line 1711
    sget-object v3, Lid3;->All:Lid3;

    .line 1712
    .line 1713
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v3

    .line 1717
    :try_start_10
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1718
    .line 1719
    if-eqz v5, :cond_5e

    .line 1720
    .line 1721
    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v3

    .line 1725
    goto :goto_64

    .line 1726
    :cond_5e
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 1727
    .line 1728
    .line 1729
    throw v18
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_10

    .line 1730
    :catch_10
    :goto_64
    if-eqz v3, :cond_62

    .line 1731
    .line 1732
    invoke-static {}, Lid3;->getEntries()Ljx2;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v5

    .line 1736
    check-cast v5, Lz3;

    .line 1737
    .line 1738
    invoke-virtual {v5}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v5

    .line 1742
    :cond_5f
    move-object v7, v5

    .line 1743
    check-cast v7, Lw3;

    .line 1744
    .line 1745
    invoke-virtual {v7}, Lw3;->hasNext()Z

    .line 1746
    .line 1747
    .line 1748
    move-result v8

    .line 1749
    if-eqz v8, :cond_60

    .line 1750
    .line 1751
    invoke-virtual {v7}, Lw3;->next()Ljava/lang/Object;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v7

    .line 1755
    move-object v8, v7

    .line 1756
    check-cast v8, Lid3;

    .line 1757
    .line 1758
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v8

    .line 1762
    invoke-static {v8, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1763
    .line 1764
    .line 1765
    move-result v8

    .line 1766
    if-eqz v8, :cond_5f

    .line 1767
    .line 1768
    goto :goto_65

    .line 1769
    :cond_60
    move-object/from16 v7, v18

    .line 1770
    .line 1771
    :goto_65
    check-cast v7, Lid3;

    .line 1772
    .line 1773
    if-nez v7, :cond_61

    .line 1774
    .line 1775
    goto :goto_67

    .line 1776
    :cond_61
    :goto_66
    move-object/from16 v27, v7

    .line 1777
    .line 1778
    goto :goto_68

    .line 1779
    :cond_62
    :goto_67
    sget-object v7, Lid3;->All:Lid3;

    .line 1780
    .line 1781
    goto :goto_66

    .line 1782
    :goto_68
    const-string v3, "key_filter_app_backup_age"

    .line 1783
    .line 1784
    sget-object v5, Lzd3;->All:Lzd3;

    .line 1785
    .line 1786
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v5

    .line 1790
    :try_start_11
    sget-object v7, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1791
    .line 1792
    if-eqz v7, :cond_63

    .line 1793
    .line 1794
    invoke-interface {v7, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v5

    .line 1798
    goto :goto_69

    .line 1799
    :cond_63
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 1800
    .line 1801
    .line 1802
    throw v18
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_11} :catch_11

    .line 1803
    :catch_11
    :goto_69
    if-eqz v5, :cond_67

    .line 1804
    .line 1805
    invoke-static {}, Lzd3;->getEntries()Ljx2;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v3

    .line 1809
    check-cast v3, Lz3;

    .line 1810
    .line 1811
    invoke-virtual {v3}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v3

    .line 1815
    :cond_64
    move-object v7, v3

    .line 1816
    check-cast v7, Lw3;

    .line 1817
    .line 1818
    invoke-virtual {v7}, Lw3;->hasNext()Z

    .line 1819
    .line 1820
    .line 1821
    move-result v8

    .line 1822
    if-eqz v8, :cond_65

    .line 1823
    .line 1824
    invoke-virtual {v7}, Lw3;->next()Ljava/lang/Object;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v7

    .line 1828
    move-object v8, v7

    .line 1829
    check-cast v8, Lzd3;

    .line 1830
    .line 1831
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v8

    .line 1835
    invoke-static {v8, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1836
    .line 1837
    .line 1838
    move-result v8

    .line 1839
    if-eqz v8, :cond_64

    .line 1840
    .line 1841
    move-object v11, v7

    .line 1842
    goto :goto_6a

    .line 1843
    :cond_65
    move-object/from16 v11, v18

    .line 1844
    .line 1845
    :goto_6a
    check-cast v11, Lzd3;

    .line 1846
    .line 1847
    if-nez v11, :cond_66

    .line 1848
    .line 1849
    goto :goto_6c

    .line 1850
    :cond_66
    :goto_6b
    move-object/from16 v28, v11

    .line 1851
    .line 1852
    goto :goto_6d

    .line 1853
    :cond_67
    :goto_6c
    sget-object v11, Lzd3;->All:Lzd3;

    .line 1854
    .line 1855
    goto :goto_6b

    .line 1856
    :goto_6d
    const/16 v20, 0x0

    .line 1857
    .line 1858
    invoke-static/range {v19 .. v28}, Lqq;->a(Ljava/util/List;ZLcd3;Lfe3;Ltd3;Lfd3;Lld3;Lqd3;Lid3;Lzd3;)Ljava/util/ArrayList;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v7

    .line 1862
    goto/16 :goto_8b

    .line 1863
    .line 1864
    :sswitch_8
    const/16 v18, 0x0

    .line 1865
    .line 1866
    const-string v5, "ID_BACKUP_REDO_APPS"

    .line 1867
    .line 1868
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1869
    .line 1870
    .line 1871
    move-result v5

    .line 1872
    if-eqz v5, :cond_87

    .line 1873
    .line 1874
    if-eqz v3, :cond_68

    .line 1875
    .line 1876
    sget-object v5, Lua1;->g:Lua1;

    .line 1877
    .line 1878
    invoke-virtual {v5}, Ldv;->e()Ljava/util/List;

    .line 1879
    .line 1880
    .line 1881
    move-result-object v5

    .line 1882
    :goto_6e
    move-object/from16 v19, v5

    .line 1883
    .line 1884
    goto :goto_6f

    .line 1885
    :cond_68
    sget-object v5, Lkz4;->g:Lkz4;

    .line 1886
    .line 1887
    invoke-virtual {v5}, Ldv;->e()Ljava/util/List;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v5

    .line 1891
    goto :goto_6e

    .line 1892
    :goto_6f
    iget-boolean v5, v2, Lzc6;->q:Z

    .line 1893
    .line 1894
    invoke-static {}, Ldd3;->e()Lcd3;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v21

    .line 1898
    invoke-static {}, Lge3;->e()Lfe3;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v22

    .line 1902
    invoke-virtual {v9}, Lud3;->f()Ltd3;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v23

    .line 1906
    if-eqz v3, :cond_69

    .line 1907
    .line 1908
    sget-object v3, Lfd3;->All:Lfd3;

    .line 1909
    .line 1910
    :goto_70
    move-object/from16 v24, v3

    .line 1911
    .line 1912
    goto :goto_71

    .line 1913
    :cond_69
    sget-object v3, Lfd3;->BackedUp:Lfd3;

    .line 1914
    .line 1915
    goto :goto_70

    .line 1916
    :goto_71
    sget-object v3, Lld3;->All:Lld3;

    .line 1917
    .line 1918
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v3

    .line 1922
    :try_start_12
    sget-object v11, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1923
    .line 1924
    if-eqz v11, :cond_6a

    .line 1925
    .line 1926
    invoke-interface {v11, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v3

    .line 1930
    goto :goto_72

    .line 1931
    :cond_6a
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 1932
    .line 1933
    .line 1934
    throw v18
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_12} :catch_12

    .line 1935
    :catch_12
    :goto_72
    if-eqz v3, :cond_6e

    .line 1936
    .line 1937
    invoke-static {}, Lld3;->getEntries()Ljx2;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v8

    .line 1941
    check-cast v8, Lz3;

    .line 1942
    .line 1943
    invoke-virtual {v8}, Lz3;->iterator()Ljava/util/Iterator;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v8

    .line 1947
    :cond_6b
    move-object v11, v8

    .line 1948
    check-cast v11, Lw3;

    .line 1949
    .line 1950
    invoke-virtual {v11}, Lw3;->hasNext()Z

    .line 1951
    .line 1952
    .line 1953
    move-result v12

    .line 1954
    if-eqz v12, :cond_6c

    .line 1955
    .line 1956
    invoke-virtual {v11}, Lw3;->next()Ljava/lang/Object;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v11

    .line 1960
    move-object v12, v11

    .line 1961
    check-cast v12, Lld3;

    .line 1962
    .line 1963
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v12

    .line 1967
    invoke-static {v12, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1968
    .line 1969
    .line 1970
    move-result v12

    .line 1971
    if-eqz v12, :cond_6b

    .line 1972
    .line 1973
    goto :goto_73

    .line 1974
    :cond_6c
    move-object/from16 v11, v18

    .line 1975
    .line 1976
    :goto_73
    check-cast v11, Lld3;

    .line 1977
    .line 1978
    if-nez v11, :cond_6d

    .line 1979
    .line 1980
    goto :goto_75

    .line 1981
    :cond_6d
    :goto_74
    move-object/from16 v25, v11

    .line 1982
    .line 1983
    goto :goto_76

    .line 1984
    :cond_6e
    :goto_75
    sget-object v11, Lld3;->All:Lld3;

    .line 1985
    .line 1986
    goto :goto_74

    .line 1987
    :goto_76
    sget-object v26, Lqd3;->Installed:Lqd3;

    .line 1988
    .line 1989
    sget-object v3, Lid3;->All:Lid3;

    .line 1990
    .line 1991
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1992
    .line 1993
    .line 1994
    move-result-object v3

    .line 1995
    :try_start_13
    sget-object v8, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 1996
    .line 1997
    if-eqz v8, :cond_6f

    .line 1998
    .line 1999
    invoke-interface {v8, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v3

    .line 2003
    goto :goto_77

    .line 2004
    :cond_6f
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 2005
    .line 2006
    .line 2007
    throw v18
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_13} :catch_13

    .line 2008
    :catch_13
    :goto_77
    if-eqz v3, :cond_73

    .line 2009
    .line 2010
    invoke-static {}, Lid3;->getEntries()Ljx2;

    .line 2011
    .line 2012
    .line 2013
    move-result-object v7

    .line 2014
    check-cast v7, Lz3;

    .line 2015
    .line 2016
    invoke-virtual {v7}, Lz3;->iterator()Ljava/util/Iterator;

    .line 2017
    .line 2018
    .line 2019
    move-result-object v7

    .line 2020
    :cond_70
    move-object v8, v7

    .line 2021
    check-cast v8, Lw3;

    .line 2022
    .line 2023
    invoke-virtual {v8}, Lw3;->hasNext()Z

    .line 2024
    .line 2025
    .line 2026
    move-result v10

    .line 2027
    if-eqz v10, :cond_71

    .line 2028
    .line 2029
    invoke-virtual {v8}, Lw3;->next()Ljava/lang/Object;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v8

    .line 2033
    move-object v10, v8

    .line 2034
    check-cast v10, Lid3;

    .line 2035
    .line 2036
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2037
    .line 2038
    .line 2039
    move-result-object v10

    .line 2040
    invoke-static {v10, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2041
    .line 2042
    .line 2043
    move-result v10

    .line 2044
    if-eqz v10, :cond_70

    .line 2045
    .line 2046
    move-object v11, v8

    .line 2047
    goto :goto_78

    .line 2048
    :cond_71
    move-object/from16 v11, v18

    .line 2049
    .line 2050
    :goto_78
    check-cast v11, Lid3;

    .line 2051
    .line 2052
    if-nez v11, :cond_72

    .line 2053
    .line 2054
    goto :goto_7a

    .line 2055
    :cond_72
    :goto_79
    move-object/from16 v27, v11

    .line 2056
    .line 2057
    goto :goto_7b

    .line 2058
    :cond_73
    :goto_7a
    sget-object v11, Lid3;->All:Lid3;

    .line 2059
    .line 2060
    goto :goto_79

    .line 2061
    :goto_7b
    sget-object v28, Lzd3;->All:Lzd3;

    .line 2062
    .line 2063
    move/from16 v20, v5

    .line 2064
    .line 2065
    invoke-static/range {v19 .. v28}, Lqq;->a(Ljava/util/List;ZLcd3;Lfe3;Ltd3;Lfd3;Lld3;Lqd3;Lid3;Lzd3;)Ljava/util/ArrayList;

    .line 2066
    .line 2067
    .line 2068
    move-result-object v7

    .line 2069
    goto/16 :goto_8b

    .line 2070
    .line 2071
    :sswitch_9
    const/16 v18, 0x0

    .line 2072
    .line 2073
    const-string v5, "ID_DELETE_BACKUPS_UNINSTALLED_APPS"

    .line 2074
    .line 2075
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2076
    .line 2077
    .line 2078
    move-result v5

    .line 2079
    if-eqz v5, :cond_87

    .line 2080
    .line 2081
    if-eqz v3, :cond_74

    .line 2082
    .line 2083
    sget-object v5, Lua1;->g:Lua1;

    .line 2084
    .line 2085
    invoke-virtual {v5}, Ldv;->e()Ljava/util/List;

    .line 2086
    .line 2087
    .line 2088
    move-result-object v5

    .line 2089
    :goto_7c
    move-object/from16 v19, v5

    .line 2090
    .line 2091
    goto :goto_7d

    .line 2092
    :cond_74
    sget-object v5, Lkz4;->g:Lkz4;

    .line 2093
    .line 2094
    invoke-virtual {v5}, Ldv;->e()Ljava/util/List;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v5

    .line 2098
    goto :goto_7c

    .line 2099
    :goto_7d
    iget-boolean v5, v2, Lzc6;->q:Z

    .line 2100
    .line 2101
    invoke-static {}, Ldd3;->e()Lcd3;

    .line 2102
    .line 2103
    .line 2104
    move-result-object v21

    .line 2105
    invoke-static {}, Lge3;->e()Lfe3;

    .line 2106
    .line 2107
    .line 2108
    move-result-object v22

    .line 2109
    invoke-virtual {v9}, Lud3;->f()Ltd3;

    .line 2110
    .line 2111
    .line 2112
    move-result-object v23

    .line 2113
    if-eqz v3, :cond_75

    .line 2114
    .line 2115
    sget-object v11, Lfd3;->All:Lfd3;

    .line 2116
    .line 2117
    :goto_7e
    move-object/from16 v24, v11

    .line 2118
    .line 2119
    goto :goto_7f

    .line 2120
    :cond_75
    sget-object v11, Lfd3;->BackedUp:Lfd3;

    .line 2121
    .line 2122
    goto :goto_7e

    .line 2123
    :goto_7f
    sget-object v11, Lld3;->All:Lld3;

    .line 2124
    .line 2125
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2126
    .line 2127
    .line 2128
    move-result-object v11

    .line 2129
    :try_start_14
    sget-object v12, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 2130
    .line 2131
    if-eqz v12, :cond_76

    .line 2132
    .line 2133
    invoke-interface {v12, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2134
    .line 2135
    .line 2136
    move-result-object v11

    .line 2137
    goto :goto_80

    .line 2138
    :cond_76
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 2139
    .line 2140
    .line 2141
    throw v18
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_14} :catch_14

    .line 2142
    :catch_14
    :goto_80
    if-eqz v11, :cond_7a

    .line 2143
    .line 2144
    invoke-static {}, Lld3;->getEntries()Ljx2;

    .line 2145
    .line 2146
    .line 2147
    move-result-object v8

    .line 2148
    check-cast v8, Lz3;

    .line 2149
    .line 2150
    invoke-virtual {v8}, Lz3;->iterator()Ljava/util/Iterator;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v8

    .line 2154
    :cond_77
    move-object v12, v8

    .line 2155
    check-cast v12, Lw3;

    .line 2156
    .line 2157
    invoke-virtual {v12}, Lw3;->hasNext()Z

    .line 2158
    .line 2159
    .line 2160
    move-result v13

    .line 2161
    if-eqz v13, :cond_78

    .line 2162
    .line 2163
    invoke-virtual {v12}, Lw3;->next()Ljava/lang/Object;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v12

    .line 2167
    move-object v13, v12

    .line 2168
    check-cast v13, Lld3;

    .line 2169
    .line 2170
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2171
    .line 2172
    .line 2173
    move-result-object v13

    .line 2174
    invoke-static {v13, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2175
    .line 2176
    .line 2177
    move-result v13

    .line 2178
    if-eqz v13, :cond_77

    .line 2179
    .line 2180
    goto :goto_81

    .line 2181
    :cond_78
    move-object/from16 v12, v18

    .line 2182
    .line 2183
    :goto_81
    check-cast v12, Lld3;

    .line 2184
    .line 2185
    if-nez v12, :cond_79

    .line 2186
    .line 2187
    goto :goto_83

    .line 2188
    :cond_79
    :goto_82
    move-object/from16 v25, v12

    .line 2189
    .line 2190
    goto :goto_84

    .line 2191
    :cond_7a
    :goto_83
    sget-object v12, Lld3;->All:Lld3;

    .line 2192
    .line 2193
    goto :goto_82

    .line 2194
    :goto_84
    sget-object v26, Lqd3;->NotInstalled:Lqd3;

    .line 2195
    .line 2196
    sget-object v8, Lid3;->All:Lid3;

    .line 2197
    .line 2198
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v8

    .line 2202
    :try_start_15
    sget-object v11, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 2203
    .line 2204
    if-eqz v11, :cond_7b

    .line 2205
    .line 2206
    invoke-interface {v11, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2207
    .line 2208
    .line 2209
    move-result-object v8

    .line 2210
    goto :goto_85

    .line 2211
    :cond_7b
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 2212
    .line 2213
    .line 2214
    throw v18
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_15} :catch_15

    .line 2215
    :catch_15
    :goto_85
    if-eqz v8, :cond_7f

    .line 2216
    .line 2217
    invoke-static {}, Lid3;->getEntries()Ljx2;

    .line 2218
    .line 2219
    .line 2220
    move-result-object v7

    .line 2221
    check-cast v7, Lz3;

    .line 2222
    .line 2223
    invoke-virtual {v7}, Lz3;->iterator()Ljava/util/Iterator;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v7

    .line 2227
    :cond_7c
    move-object v10, v7

    .line 2228
    check-cast v10, Lw3;

    .line 2229
    .line 2230
    invoke-virtual {v10}, Lw3;->hasNext()Z

    .line 2231
    .line 2232
    .line 2233
    move-result v11

    .line 2234
    if-eqz v11, :cond_7d

    .line 2235
    .line 2236
    invoke-virtual {v10}, Lw3;->next()Ljava/lang/Object;

    .line 2237
    .line 2238
    .line 2239
    move-result-object v10

    .line 2240
    move-object v11, v10

    .line 2241
    check-cast v11, Lid3;

    .line 2242
    .line 2243
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2244
    .line 2245
    .line 2246
    move-result-object v11

    .line 2247
    invoke-static {v11, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2248
    .line 2249
    .line 2250
    move-result v11

    .line 2251
    if-eqz v11, :cond_7c

    .line 2252
    .line 2253
    move-object v11, v10

    .line 2254
    goto :goto_86

    .line 2255
    :cond_7d
    move-object/from16 v11, v18

    .line 2256
    .line 2257
    :goto_86
    check-cast v11, Lid3;

    .line 2258
    .line 2259
    if-nez v11, :cond_7e

    .line 2260
    .line 2261
    goto :goto_88

    .line 2262
    :cond_7e
    :goto_87
    move-object/from16 v27, v11

    .line 2263
    .line 2264
    goto :goto_89

    .line 2265
    :cond_7f
    :goto_88
    sget-object v11, Lid3;->All:Lid3;

    .line 2266
    .line 2267
    goto :goto_87

    .line 2268
    :goto_89
    sget-object v28, Lzd3;->All:Lzd3;

    .line 2269
    .line 2270
    move/from16 v20, v5

    .line 2271
    .line 2272
    invoke-static/range {v19 .. v28}, Lqq;->a(Ljava/util/List;ZLcd3;Lfe3;Ltd3;Lfd3;Lld3;Lqd3;Lid3;Lzd3;)Ljava/util/ArrayList;

    .line 2273
    .line 2274
    .line 2275
    move-result-object v5

    .line 2276
    new-instance v7, Ljava/util/ArrayList;

    .line 2277
    .line 2278
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2279
    .line 2280
    .line 2281
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2282
    .line 2283
    .line 2284
    move-result-object v5

    .line 2285
    :cond_80
    :goto_8a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 2286
    .line 2287
    .line 2288
    move-result v8

    .line 2289
    if-eqz v8, :cond_81

    .line 2290
    .line 2291
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v8

    .line 2295
    move-object v10, v8

    .line 2296
    check-cast v10, Lji;

    .line 2297
    .line 2298
    invoke-virtual {v10, v3}, Lji;->hasBackup(Z)Z

    .line 2299
    .line 2300
    .line 2301
    move-result v10

    .line 2302
    if-eqz v10, :cond_80

    .line 2303
    .line 2304
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2305
    .line 2306
    .line 2307
    goto :goto_8a

    .line 2308
    :cond_81
    :goto_8b
    iget-boolean v3, v1, Let;->e:Z

    .line 2309
    .line 2310
    sget-object v5, Liy;->a:Liy;

    .line 2311
    .line 2312
    invoke-virtual {v5, v7, v3}, Liy;->e(Ljava/util/List;Z)Ljava/util/List;

    .line 2313
    .line 2314
    .line 2315
    move-result-object v3

    .line 2316
    new-instance v5, Ljava/util/ArrayList;

    .line 2317
    .line 2318
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2319
    .line 2320
    .line 2321
    new-instance v3, Ljava/util/ArrayList;

    .line 2322
    .line 2323
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2324
    .line 2325
    .line 2326
    sget-object v7, Ldd3;->a:Ldd3;

    .line 2327
    .line 2328
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2329
    .line 2330
    .line 2331
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2332
    .line 2333
    .line 2334
    sget-object v7, Lmd3;->a:Lmd3;

    .line 2335
    .line 2336
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    .line 2338
    .line 2339
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2340
    .line 2341
    .line 2342
    move-result v4

    .line 2343
    if-nez v4, :cond_82

    .line 2344
    .line 2345
    sget-object v4, Ljd3;->a:Ljd3;

    .line 2346
    .line 2347
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2348
    .line 2349
    .line 2350
    :cond_82
    sget-object v4, Lae3;->a:Lae3;

    .line 2351
    .line 2352
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2353
    .line 2354
    .line 2355
    iput-object v3, v1, Lr20;->j:Ljava/util/ArrayList;

    .line 2356
    .line 2357
    iget-boolean v4, v1, Let;->e:Z

    .line 2358
    .line 2359
    invoke-static {v3, v4}, Lqq;->c(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v3

    .line 2363
    invoke-virtual {v1, v3}, Let;->j(Ljava/util/ArrayList;)V

    .line 2364
    .line 2365
    .line 2366
    iget-boolean v0, v0, Ln20;->c:Z

    .line 2367
    .line 2368
    if-eqz v0, :cond_83

    .line 2369
    .line 2370
    const-wide/16 v3, 0x1f4

    .line 2371
    .line 2372
    invoke-static {v3, v4}, Lai8;->o(J)V

    .line 2373
    .line 2374
    .line 2375
    :cond_83
    invoke-virtual {v2}, Lzc6;->g()Z

    .line 2376
    .line 2377
    .line 2378
    move-result v0

    .line 2379
    if-nez v0, :cond_85

    .line 2380
    .line 2381
    new-instance v0, Ljava/util/ArrayList;

    .line 2382
    .line 2383
    const/16 v2, 0xa

    .line 2384
    .line 2385
    invoke-static {v5, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 2386
    .line 2387
    .line 2388
    move-result v2

    .line 2389
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2390
    .line 2391
    .line 2392
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2393
    .line 2394
    .line 2395
    move-result-object v2

    .line 2396
    :goto_8c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2397
    .line 2398
    .line 2399
    move-result v3

    .line 2400
    if-eqz v3, :cond_84

    .line 2401
    .line 2402
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2403
    .line 2404
    .line 2405
    move-result-object v3

    .line 2406
    check-cast v3, Lji;

    .line 2407
    .line 2408
    invoke-virtual {v3}, Lji;->getItemId()Ljava/lang/String;

    .line 2409
    .line 2410
    .line 2411
    move-result-object v3

    .line 2412
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2413
    .line 2414
    .line 2415
    goto :goto_8c

    .line 2416
    :cond_84
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 2417
    .line 2418
    .line 2419
    move-result-object v0

    .line 2420
    goto :goto_8d

    .line 2421
    :cond_85
    sget-object v0, Lsv2;->a:Lsv2;

    .line 2422
    .line 2423
    :goto_8d
    iget-boolean v2, v1, Lr20;->o:Z

    .line 2424
    .line 2425
    if-eqz v2, :cond_86

    .line 2426
    .line 2427
    iget-object v2, v1, Lr20;->p:Ljava/lang/String;

    .line 2428
    .line 2429
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 2430
    .line 2431
    .line 2432
    move-result v2

    .line 2433
    if-lez v2, :cond_86

    .line 2434
    .line 2435
    iget-object v2, v1, Lr20;->p:Ljava/lang/String;

    .line 2436
    .line 2437
    invoke-virtual {v1, v2, v5, v0}, Lr20;->l(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    .line 2438
    .line 2439
    .line 2440
    goto :goto_8e

    .line 2441
    :cond_86
    invoke-virtual {v1, v5, v0}, Lr20;->m(Ljava/util/List;Ljava/util/Set;)V

    .line 2442
    .line 2443
    .line 2444
    :goto_8e
    sget-object v0, Lbe8;->a:Lbe8;

    .line 2445
    .line 2446
    return-object v0

    .line 2447
    :cond_87
    :goto_8f
    const-string v0, "loadAppsForQuickAction not implemented for "

    .line 2448
    .line 2449
    const-string v1, "!!!"

    .line 2450
    .line 2451
    invoke-static {v0, v4, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2452
    .line 2453
    .line 2454
    move-result-object v0

    .line 2455
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 2456
    .line 2457
    .line 2458
    return-object v18

    :sswitch_data_0
    .sparse-switch
        -0x77bcf852 -> :sswitch_9
        -0x6b3f5b86 -> :sswitch_8
        -0x3716ced7 -> :sswitch_7
        -0x6f389b0 -> :sswitch_6
        0x286d1dcf -> :sswitch_5
        0x4320bdfd -> :sswitch_4
        0x4bf647c5 -> :sswitch_3
        0x4e569e73 -> :sswitch_2
        0x5ac78362 -> :sswitch_1
        0x736e98a0 -> :sswitch_0
    .end sparse-switch
.end method
