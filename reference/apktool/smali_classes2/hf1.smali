.class public final Lhf1;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lex6;

.field public final f:Lix6;

.field public final g:Lgv7;

.field public h:Lef1;

.field public i:Lbl7;

.field public j:Ljava/lang/Boolean;

.field public k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lhf1;->e:Lex6;

    .line 10
    .line 11
    new-instance v0, Lix6;

    .line 12
    .line 13
    invoke-direct {v0}, Lix6;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lhf1;->f:Lix6;

    .line 17
    .line 18
    new-instance v0, Lqm;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lqm;-><init>(Lhf1;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lgv7;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lhf1;->g:Lgv7;

    .line 29
    .line 30
    return-void
.end method

.method public static final j(Lhf1;Lsd1;Lmt3;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lbz;

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    invoke-direct {v0, v1, p1, p2}, Lbz;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lhf1;->p(Lmt3;)Lef1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method public static k(Lef1;Ljava/util/Set;)Lye1;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lef1;->g:Ljava/util/List;

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move-object v4, v3

    .line 25
    check-cast v4, Lmd1;

    .line 26
    .line 27
    iget-object v4, v4, Lmd1;->a:Lqd1;

    .line 28
    .line 29
    iget-object v4, v4, Lqd1;->a:Lsd1;

    .line 30
    .line 31
    move-object/from16 v5, p1

    .line 32
    .line 33
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v5, 0x0

    .line 57
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_5

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Lmd1;

    .line 68
    .line 69
    iget-object v6, v6, Lmd1;->c:Lrd1;

    .line 70
    .line 71
    sget-object v7, Lrd1;->PASSED:Lrd1;

    .line 72
    .line 73
    if-ne v6, v7, :cond_3

    .line 74
    .line 75
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    if-ltz v5, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    invoke-static {}, Lfl1;->E0()V

    .line 81
    .line 82
    .line 83
    throw v3

    .line 84
    :cond_5
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_7

    .line 98
    .line 99
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    move-object v8, v7

    .line 104
    check-cast v8, Lmd1;

    .line 105
    .line 106
    iget-object v8, v8, Lmd1;->c:Lrd1;

    .line 107
    .line 108
    invoke-virtual {v8}, Lrd1;->isReportableFailure()Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-eqz v8, :cond_6

    .line 113
    .line 114
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    :cond_8
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_9

    .line 132
    .line 133
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    move-object v9, v8

    .line 138
    check-cast v9, Lmd1;

    .line 139
    .line 140
    iget-object v9, v9, Lmd1;->c:Lrd1;

    .line 141
    .line 142
    sget-object v10, Lrd1;->ACTION_REQUIRED:Lrd1;

    .line 143
    .line 144
    if-ne v9, v10, :cond_8

    .line 145
    .line 146
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-eqz v7, :cond_a

    .line 155
    .line 156
    const/4 v8, 0x0

    .line 157
    goto :goto_6

    .line 158
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    const/4 v8, 0x0

    .line 163
    :cond_b
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    if-eqz v9, :cond_d

    .line 168
    .line 169
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    check-cast v9, Lmd1;

    .line 174
    .line 175
    iget-object v9, v9, Lmd1;->c:Lrd1;

    .line 176
    .line 177
    sget-object v10, Lrd1;->SKIPPED:Lrd1;

    .line 178
    .line 179
    if-ne v9, v10, :cond_b

    .line 180
    .line 181
    add-int/lit8 v8, v8, 0x1

    .line 182
    .line 183
    if-ltz v8, :cond_c

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_c
    invoke-static {}, Lfl1;->E0()V

    .line 187
    .line 188
    .line 189
    throw v3

    .line 190
    :cond_d
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-eqz v7, :cond_e

    .line 195
    .line 196
    const/4 v9, 0x0

    .line 197
    goto :goto_8

    .line 198
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    const/4 v9, 0x0

    .line 203
    :cond_f
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    if-eqz v10, :cond_11

    .line 208
    .line 209
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    check-cast v10, Lmd1;

    .line 214
    .line 215
    iget-object v10, v10, Lmd1;->c:Lrd1;

    .line 216
    .line 217
    invoke-virtual {v10}, Lrd1;->isCompleted()Z

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    if-eqz v10, :cond_f

    .line 222
    .line 223
    add-int/lit8 v9, v9, 0x1

    .line 224
    .line 225
    if-ltz v9, :cond_10

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_10
    invoke-static {}, Lfl1;->E0()V

    .line 229
    .line 230
    .line 231
    throw v3

    .line 232
    :cond_11
    :goto_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    sub-int/2addr v2, v9

    .line 237
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    if-nez v7, :cond_12

    .line 242
    .line 243
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 244
    .line 245
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    filled-new-array {v1, v5, v6}, [Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    const v5, 0x7f130136

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    goto :goto_9

    .line 277
    :cond_12
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-nez v1, :cond_13

    .line 282
    .line 283
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 284
    .line 285
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    filled-new-array {v2, v5}, [Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    const v5, 0x7f130135

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    goto :goto_9

    .line 313
    :cond_13
    if-lez v2, :cond_14

    .line 314
    .line 315
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 316
    .line 317
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    filled-new-array {v5, v2}, [Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    const v5, 0x7f130139

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    goto :goto_9

    .line 341
    :cond_14
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 342
    .line 343
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    filled-new-array {v2, v5}, [Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    const v5, 0x7f13013a

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    :goto_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    iget-object v2, v0, Lef1;->b:Ljava/lang/String;

    .line 370
    .line 371
    iget-object v5, v0, Lef1;->e:Ljava/lang/String;

    .line 372
    .line 373
    iget-object v6, v0, Lef1;->f:Ljava/lang/String;

    .line 374
    .line 375
    iget-object v0, v0, Lef1;->g:Ljava/util/List;

    .line 376
    .line 377
    new-instance v7, Ljava/util/ArrayList;

    .line 378
    .line 379
    const/16 v8, 0xa

    .line 380
    .line 381
    invoke-static {v0, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 382
    .line 383
    .line 384
    move-result v9

    .line 385
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 386
    .line 387
    .line 388
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    if-eqz v9, :cond_15

    .line 397
    .line 398
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v9

    .line 402
    check-cast v9, Lmd1;

    .line 403
    .line 404
    new-instance v10, Lhe1;

    .line 405
    .line 406
    sget-object v11, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 407
    .line 408
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 409
    .line 410
    .line 411
    move-result-object v11

    .line 412
    iget-object v12, v9, Lmd1;->a:Lqd1;

    .line 413
    .line 414
    iget v12, v12, Lqd1;->b:I

    .line 415
    .line 416
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v11

    .line 420
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    iget-object v12, v9, Lmd1;->c:Lrd1;

    .line 424
    .line 425
    iget-object v13, v9, Lmd1;->d:Ljava/lang/String;

    .line 426
    .line 427
    iget-object v14, v9, Lmd1;->f:Ljava/lang/Long;

    .line 428
    .line 429
    iget-boolean v15, v9, Lmd1;->b:Z

    .line 430
    .line 431
    iget-object v9, v9, Lmd1;->a:Lqd1;

    .line 432
    .line 433
    iget-boolean v9, v9, Lqd1;->d:Z

    .line 434
    .line 435
    move/from16 v16, v9

    .line 436
    .line 437
    invoke-direct/range {v10 .. v16}, Lhe1;-><init>(Ljava/lang/String;Lrd1;Ljava/lang/String;Ljava/lang/Long;ZZ)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    goto :goto_a

    .line 444
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    new-instance v0, Lye1;

    .line 448
    .line 449
    new-instance v9, Ljava/util/ArrayList;

    .line 450
    .line 451
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 455
    .line 456
    .line 457
    move-result-object v10

    .line 458
    :cond_16
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 459
    .line 460
    .line 461
    move-result v11

    .line 462
    if-eqz v11, :cond_17

    .line 463
    .line 464
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v11

    .line 468
    move-object v12, v11

    .line 469
    check-cast v12, Lhe1;

    .line 470
    .line 471
    sget-object v13, Lje1;->a:Lai6;

    .line 472
    .line 473
    iget-boolean v13, v12, Lhe1;->e:Z

    .line 474
    .line 475
    if-eqz v13, :cond_16

    .line 476
    .line 477
    iget-boolean v13, v12, Lhe1;->f:Z

    .line 478
    .line 479
    if-eqz v13, :cond_16

    .line 480
    .line 481
    iget-object v12, v12, Lhe1;->b:Lrd1;

    .line 482
    .line 483
    sget-object v13, Lrd1;->NOT_RUN:Lrd1;

    .line 484
    .line 485
    if-eq v12, v13, :cond_16

    .line 486
    .line 487
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    goto :goto_b

    .line 491
    :cond_17
    new-instance v14, Ljava/util/ArrayList;

    .line 492
    .line 493
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 497
    .line 498
    .line 499
    move-result-object v10

    .line 500
    :cond_18
    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 501
    .line 502
    .line 503
    move-result v11

    .line 504
    if-eqz v11, :cond_1a

    .line 505
    .line 506
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v11

    .line 510
    move-object v12, v11

    .line 511
    check-cast v12, Lhe1;

    .line 512
    .line 513
    sget-object v13, Lje1;->a:Lai6;

    .line 514
    .line 515
    iget-boolean v13, v12, Lhe1;->e:Z

    .line 516
    .line 517
    if-eqz v13, :cond_19

    .line 518
    .line 519
    iget-boolean v13, v12, Lhe1;->f:Z

    .line 520
    .line 521
    if-eqz v13, :cond_19

    .line 522
    .line 523
    iget-object v12, v12, Lhe1;->b:Lrd1;

    .line 524
    .line 525
    sget-object v13, Lrd1;->NOT_RUN:Lrd1;

    .line 526
    .line 527
    if-ne v12, v13, :cond_18

    .line 528
    .line 529
    :cond_19
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    goto :goto_c

    .line 533
    :cond_1a
    new-instance v10, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    const-string v11, "# Cloud diagnostics report\n\n## Summary\n"

    .line 536
    .line 537
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    sget-object v11, Lje1;->a:Lai6;

    .line 541
    .line 542
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 543
    .line 544
    .line 545
    move-result v11

    .line 546
    if-eqz v11, :cond_1b

    .line 547
    .line 548
    goto :goto_d

    .line 549
    :cond_1b
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 550
    .line 551
    .line 552
    move-result-object v11

    .line 553
    :cond_1c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 554
    .line 555
    .line 556
    move-result v12

    .line 557
    if-eqz v12, :cond_1d

    .line 558
    .line 559
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v12

    .line 563
    check-cast v12, Lhe1;

    .line 564
    .line 565
    iget-object v12, v12, Lhe1;->b:Lrd1;

    .line 566
    .line 567
    sget-object v13, Lrd1;->FAILED:Lrd1;

    .line 568
    .line 569
    if-ne v12, v13, :cond_1c

    .line 570
    .line 571
    invoke-static {v13}, Lje1;->b(Lrd1;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v11

    .line 575
    goto :goto_10

    .line 576
    :cond_1d
    :goto_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 577
    .line 578
    .line 579
    move-result v11

    .line 580
    if-eqz v11, :cond_1e

    .line 581
    .line 582
    goto :goto_e

    .line 583
    :cond_1e
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 584
    .line 585
    .line 586
    move-result-object v11

    .line 587
    :cond_1f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 588
    .line 589
    .line 590
    move-result v12

    .line 591
    if-eqz v12, :cond_20

    .line 592
    .line 593
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v12

    .line 597
    check-cast v12, Lhe1;

    .line 598
    .line 599
    iget-object v12, v12, Lhe1;->b:Lrd1;

    .line 600
    .line 601
    sget-object v13, Lrd1;->ACTION_REQUIRED:Lrd1;

    .line 602
    .line 603
    if-ne v12, v13, :cond_1f

    .line 604
    .line 605
    invoke-static {v13}, Lje1;->b(Lrd1;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v11

    .line 609
    goto :goto_10

    .line 610
    :cond_20
    :goto_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 611
    .line 612
    .line 613
    move-result v11

    .line 614
    if-eqz v11, :cond_21

    .line 615
    .line 616
    goto :goto_f

    .line 617
    :cond_21
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 618
    .line 619
    .line 620
    move-result-object v11

    .line 621
    :cond_22
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 622
    .line 623
    .line 624
    move-result v12

    .line 625
    if-eqz v12, :cond_23

    .line 626
    .line 627
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v12

    .line 631
    check-cast v12, Lhe1;

    .line 632
    .line 633
    iget-object v12, v12, Lhe1;->b:Lrd1;

    .line 634
    .line 635
    sget-object v13, Lrd1;->SKIPPED:Lrd1;

    .line 636
    .line 637
    if-ne v12, v13, :cond_22

    .line 638
    .line 639
    invoke-static {v13}, Lje1;->b(Lrd1;)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v11

    .line 643
    goto :goto_10

    .line 644
    :cond_23
    :goto_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 645
    .line 646
    .line 647
    move-result v11

    .line 648
    if-eqz v11, :cond_24

    .line 649
    .line 650
    const-string v11, "\u25cb"

    .line 651
    .line 652
    goto :goto_10

    .line 653
    :cond_24
    sget-object v11, Lrd1;->PASSED:Lrd1;

    .line 654
    .line 655
    invoke-static {v11}, Lje1;->b(Lrd1;)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v11

    .line 659
    :goto_10
    sget-object v12, Lrd1;->PASSED:Lrd1;

    .line 660
    .line 661
    invoke-static {v12}, Lje1;->b(Lrd1;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v12

    .line 665
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    move-result v12

    .line 669
    if-eqz v12, :cond_27

    .line 670
    .line 671
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 672
    .line 673
    .line 674
    move-result v12

    .line 675
    if-eqz v12, :cond_25

    .line 676
    .line 677
    goto :goto_11

    .line 678
    :cond_25
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 679
    .line 680
    .line 681
    move-result-object v12

    .line 682
    :cond_26
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 683
    .line 684
    .line 685
    move-result v13

    .line 686
    if-eqz v13, :cond_27

    .line 687
    .line 688
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v13

    .line 692
    check-cast v13, Lhe1;

    .line 693
    .line 694
    iget-boolean v15, v13, Lhe1;->e:Z

    .line 695
    .line 696
    if-eqz v15, :cond_26

    .line 697
    .line 698
    iget-boolean v15, v13, Lhe1;->f:Z

    .line 699
    .line 700
    if-eqz v15, :cond_26

    .line 701
    .line 702
    iget-object v13, v13, Lhe1;->b:Lrd1;

    .line 703
    .line 704
    sget-object v15, Lrd1;->NOT_RUN:Lrd1;

    .line 705
    .line 706
    if-ne v13, v15, :cond_26

    .line 707
    .line 708
    invoke-static {v15}, Lje1;->b(Lrd1;)Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v11

    .line 712
    :cond_27
    :goto_11
    new-instance v12, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    const-string v11, " "

    .line 721
    .line 722
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    sget-object v1, Lrd1;->PASSED:Lrd1;

    .line 739
    .line 740
    sget-object v12, Lrd1;->FAILED:Lrd1;

    .line 741
    .line 742
    sget-object v13, Lrd1;->ACTION_REQUIRED:Lrd1;

    .line 743
    .line 744
    sget-object v15, Lrd1;->SKIPPED:Lrd1;

    .line 745
    .line 746
    filled-new-array {v1, v12, v13, v15}, [Lrd1;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    invoke-static {v1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 759
    .line 760
    .line 761
    move-result v12

    .line 762
    const-string v13, "- "

    .line 763
    .line 764
    if-eqz v12, :cond_2d

    .line 765
    .line 766
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v12

    .line 770
    check-cast v12, Lrd1;

    .line 771
    .line 772
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 773
    .line 774
    .line 775
    move-result v15

    .line 776
    if-eqz v15, :cond_28

    .line 777
    .line 778
    move-object/from16 p1, v3

    .line 779
    .line 780
    const/4 v3, 0x0

    .line 781
    goto :goto_14

    .line 782
    :cond_28
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 783
    .line 784
    .line 785
    move-result-object v15

    .line 786
    const/16 v16, 0x0

    .line 787
    .line 788
    :goto_13
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 789
    .line 790
    .line 791
    move-result v17

    .line 792
    if-eqz v17, :cond_2b

    .line 793
    .line 794
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-result-object v17

    .line 798
    move-object/from16 p1, v3

    .line 799
    .line 800
    move-object/from16 v3, v17

    .line 801
    .line 802
    check-cast v3, Lhe1;

    .line 803
    .line 804
    iget-object v3, v3, Lhe1;->b:Lrd1;

    .line 805
    .line 806
    if-ne v3, v12, :cond_29

    .line 807
    .line 808
    add-int/lit8 v16, v16, 0x1

    .line 809
    .line 810
    if-ltz v16, :cond_2a

    .line 811
    .line 812
    :cond_29
    move-object/from16 v3, p1

    .line 813
    .line 814
    goto :goto_13

    .line 815
    :cond_2a
    invoke-static {}, Lfl1;->E0()V

    .line 816
    .line 817
    .line 818
    throw p1

    .line 819
    :cond_2b
    move-object/from16 p1, v3

    .line 820
    .line 821
    move/from16 v3, v16

    .line 822
    .line 823
    :goto_14
    if-lez v3, :cond_2c

    .line 824
    .line 825
    invoke-static {v12}, Lje1;->b(Lrd1;)Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v15

    .line 829
    invoke-static {v12}, Lje1;->a(Lrd1;)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v12

    .line 833
    const-string v4, ": "

    .line 834
    .line 835
    invoke-static {v13, v15, v11, v12, v4}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    move-result-object v4

    .line 839
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    :cond_2c
    move-object/from16 v3, p1

    .line 853
    .line 854
    goto :goto_12

    .line 855
    :cond_2d
    move-object/from16 p1, v3

    .line 856
    .line 857
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    if-nez v1, :cond_2e

    .line 862
    .line 863
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 864
    .line 865
    .line 866
    move-result v1

    .line 867
    new-instance v3, Ljava/lang/StringBuilder;

    .line 868
    .line 869
    const-string v4, "- \u25cb Not run/selected: "

    .line 870
    .line 871
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    :cond_2e
    const-string v1, "\n## Provider\n"

    .line 888
    .line 889
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    const-string v1, "- **Cloud:** "

    .line 893
    .line 894
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 902
    .line 903
    .line 904
    sget-object v1, Lje1;->a:Lai6;

    .line 905
    .line 906
    const-string v2, "Redacted"

    .line 907
    .line 908
    invoke-virtual {v1, v5, v2}, Lai6;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v1

    .line 912
    const-string v2, "- **Account:** "

    .line 913
    .line 914
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v1

    .line 918
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    .line 920
    .line 921
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    const-string v1, "- **Backup tag:** "

    .line 925
    .line 926
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v1

    .line 930
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    const-string v1, "\n\n## Results\n"

    .line 934
    .line 935
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 939
    .line 940
    .line 941
    move-result-object v1

    .line 942
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 943
    .line 944
    .line 945
    move-result v2

    .line 946
    const/4 v3, 0x1

    .line 947
    if-eqz v2, :cond_33

    .line 948
    .line 949
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v2

    .line 953
    check-cast v2, Lhe1;

    .line 954
    .line 955
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    iget-object v4, v2, Lhe1;->b:Lrd1;

    .line 959
    .line 960
    invoke-static {v4}, Lje1;->b(Lrd1;)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v4

    .line 964
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    const-string v4, " **"

    .line 968
    .line 969
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    iget-object v4, v2, Lhe1;->a:Ljava/lang/String;

    .line 973
    .line 974
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    const-string v4, ":** "

    .line 978
    .line 979
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    iget-object v4, v2, Lhe1;->b:Lrd1;

    .line 983
    .line 984
    invoke-static {v4}, Lje1;->a(Lrd1;)Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v4

    .line 988
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    .line 990
    .line 991
    iget-object v4, v2, Lhe1;->d:Ljava/lang/Long;

    .line 992
    .line 993
    if-eqz v4, :cond_30

    .line 994
    .line 995
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 996
    .line 997
    .line 998
    move-result-wide v4

    .line 999
    const-string v6, " ("

    .line 1000
    .line 1001
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    .line 1003
    .line 1004
    const-wide/16 v11, 0x3e8

    .line 1005
    .line 1006
    cmp-long v6, v4, v11

    .line 1007
    .line 1008
    if-gez v6, :cond_2f

    .line 1009
    .line 1010
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    const-string v4, " ms"

    .line 1019
    .line 1020
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v3

    .line 1027
    goto :goto_16

    .line 1028
    :cond_2f
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1029
    .line 1030
    long-to-double v4, v4

    .line 1031
    const-wide v11, 0x408f400000000000L    # 1000.0

    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    div-double/2addr v4, v11

    .line 1037
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v4

    .line 1041
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v4

    .line 1045
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v3

    .line 1049
    const-string v4, "%.1f s"

    .line 1050
    .line 1051
    invoke-static {v6, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v3

    .line 1055
    :goto_16
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    .line 1058
    const-string v3, ")"

    .line 1059
    .line 1060
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    :cond_30
    iget-object v2, v2, Lhe1;->c:Ljava/lang/String;

    .line 1064
    .line 1065
    if-eqz v2, :cond_32

    .line 1066
    .line 1067
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 1068
    .line 1069
    .line 1070
    move-result v3

    .line 1071
    if-nez v3, :cond_31

    .line 1072
    .line 1073
    goto :goto_17

    .line 1074
    :cond_31
    move-object/from16 v2, p1

    .line 1075
    .line 1076
    :goto_17
    if-eqz v2, :cond_32

    .line 1077
    .line 1078
    const-string v3, " - "

    .line 1079
    .line 1080
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    const/16 v3, 0x20

    .line 1084
    .line 1085
    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v2

    .line 1089
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    .line 1095
    :cond_32
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    .line 1098
    goto/16 :goto_15

    .line 1099
    .line 1100
    :cond_33
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1101
    .line 1102
    .line 1103
    move-result v1

    .line 1104
    if-nez v1, :cond_34

    .line 1105
    .line 1106
    const-string v1, "- \u25cb **Not run/selected:** "

    .line 1107
    .line 1108
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    .line 1110
    .line 1111
    new-instance v1, Lsl;

    .line 1112
    .line 1113
    const/4 v2, 0x3

    .line 1114
    invoke-direct {v1, v2}, Lsl;-><init>(I)V

    .line 1115
    .line 1116
    .line 1117
    const/16 v19, 0x1e

    .line 1118
    .line 1119
    const-string v15, ", "

    .line 1120
    .line 1121
    const/16 v16, 0x0

    .line 1122
    .line 1123
    const/16 v17, 0x0

    .line 1124
    .line 1125
    move-object/from16 v18, v1

    .line 1126
    .line 1127
    invoke-static/range {v14 .. v19}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v1

    .line 1131
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    :cond_34
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v1

    .line 1141
    invoke-static {v1}, Lnq7;->J0(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v1

    .line 1145
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v1

    .line 1149
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1150
    .line 1151
    .line 1152
    move-result v2

    .line 1153
    if-eqz v2, :cond_36

    .line 1154
    .line 1155
    :cond_35
    const/4 v4, 0x0

    .line 1156
    goto :goto_18

    .line 1157
    :cond_36
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v2

    .line 1161
    :cond_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1162
    .line 1163
    .line 1164
    move-result v4

    .line 1165
    if-eqz v4, :cond_35

    .line 1166
    .line 1167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v4

    .line 1171
    check-cast v4, Lhe1;

    .line 1172
    .line 1173
    iget-boolean v5, v4, Lhe1;->e:Z

    .line 1174
    .line 1175
    if-eqz v5, :cond_37

    .line 1176
    .line 1177
    iget-boolean v5, v4, Lhe1;->f:Z

    .line 1178
    .line 1179
    if-eqz v5, :cond_37

    .line 1180
    .line 1181
    iget-object v4, v4, Lhe1;->b:Lrd1;

    .line 1182
    .line 1183
    invoke-virtual {v4}, Lrd1;->isReportableFailure()Z

    .line 1184
    .line 1185
    .line 1186
    move-result v4

    .line 1187
    if-eqz v4, :cond_37

    .line 1188
    .line 1189
    move v4, v3

    .line 1190
    :goto_18
    invoke-direct {v0, v1, v4}, Lye1;-><init>(Ljava/lang/String;Z)V

    .line 1191
    .line 1192
    .line 1193
    return-object v0
.end method

.method public static m(Ldd1;Ljava/util/ArrayList;)Lef1;
    .locals 12

    .line 1
    sget-object v0, Ltb1;->a:Ltb1;

    .line 2
    .line 3
    invoke-static {}, Lqb1;->m()Z

    .line 4
    .line 5
    .line 6
    move-result v9

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v9, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ldd1;->getDisplayName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v2, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->Companion:Lorg/swiftapps/swiftbackup/cloud/protocols/a;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/a;->b(Ldd1;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {p0, v0, v2}, Lvm4;->i(Ldd1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)Lki1;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move-object v2, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v0, v1

    .line 30
    move-object v2, v0

    .line 31
    :goto_0
    new-instance v1, Lef1;

    .line 32
    .line 33
    const v3, 0x7f1303c5

    .line 34
    .line 35
    .line 36
    if-eqz v9, :cond_2

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v4, v0, Lki1;->a:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Ldd1;->getDisplayName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 50
    .line 51
    invoke-static {v3}, Ldj7;->g(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :cond_3
    :goto_1
    if-eqz v9, :cond_5

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    iget v5, v0, Lki1;->b:I

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    invoke-virtual {p0}, Ldd1;->getBrandingIconRes()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    goto :goto_2

    .line 67
    :cond_5
    const v5, 0x7f080117

    .line 68
    .line 69
    .line 70
    :goto_2
    if-eqz v0, :cond_6

    .line 71
    .line 72
    iget-boolean v0, v0, Lki1;->c:Z

    .line 73
    .line 74
    :goto_3
    move v6, v0

    .line 75
    goto :goto_4

    .line 76
    :cond_6
    const/4 v0, 0x0

    .line 77
    goto :goto_3

    .line 78
    :goto_4
    if-eqz v9, :cond_a

    .line 79
    .line 80
    invoke-static {}, Lqb1;->m()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_9

    .line 85
    .line 86
    :try_start_0
    invoke-static {}, Lqb1;->g()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    goto :goto_5

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    new-instance v3, Lbn6;

    .line 93
    .line 94
    invoke-direct {v3, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    move-object v0, v3

    .line 98
    :goto_5
    nop

    .line 99
    instance-of v3, v0, Lbn6;

    .line 100
    .line 101
    if-eqz v3, :cond_7

    .line 102
    .line 103
    move-object v0, v2

    .line 104
    :cond_7
    check-cast v0, Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v0, :cond_8

    .line 107
    .line 108
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_8

    .line 113
    .line 114
    move-object v2, v0

    .line 115
    :cond_8
    if-nez v2, :cond_b

    .line 116
    .line 117
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 118
    .line 119
    const v0, 0x7f1301b9

    .line 120
    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_9
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 124
    .line 125
    invoke-static {v3}, Ldj7;->g(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    goto :goto_7

    .line 130
    :cond_a
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 131
    .line 132
    const v0, 0x7f1301b5

    .line 133
    .line 134
    .line 135
    :goto_6
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    :cond_b
    :goto_7
    sget-object v0, Ltb1;->a:Ltb1;

    .line 140
    .line 141
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    const/4 v10, 0x0

    .line 146
    const/4 v11, 0x0

    .line 147
    move-object v8, p1

    .line 148
    move-object v3, v4

    .line 149
    move v4, v5

    .line 150
    move v5, v6

    .line 151
    move-object v6, v2

    .line 152
    move-object v2, p0

    .line 153
    invoke-direct/range {v1 .. v11}, Lef1;-><init>(Ldd1;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZ)V

    .line 154
    .line 155
    .line 156
    return-object v1
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhf1;->g:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lwe1;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Lwe1;->b:Z

    .line 11
    .line 12
    iget-object v1, v0, Lwe1;->c:Lag8;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    sget-object v2, Lgz7;->CANCELLED:Lgz7;

    .line 17
    .line 18
    iput-object v2, v1, Lag8;->c:Lgz7;

    .line 19
    .line 20
    invoke-virtual {v1}, Lag8;->b()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, v0, Lwe1;->d:Lno2;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    sget-object v2, Lgz7;->CANCELLED:Lgz7;

    .line 28
    .line 29
    iput-object v2, v1, Lno2;->d:Lgz7;

    .line 30
    .line 31
    invoke-virtual {v1}, Lno2;->a()V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, v0, Lwe1;->e:Lxh2;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    sget-object v0, Lgz7;->WAITING:Lgz7;

    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lhf1;->i:Lbl7;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Lci4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-super {p0}, La55;->b()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lhf1;->h:Lef1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, v0, Lef1;->i:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lhf1;->g:Lgv7;

    .line 12
    .line 13
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lwe1;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, v0, Lwe1;->b:Z

    .line 21
    .line 22
    iget-object v2, v0, Lwe1;->c:Lag8;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    sget-object v3, Lgz7;->CANCELLED:Lgz7;

    .line 27
    .line 28
    iput-object v3, v2, Lag8;->c:Lgz7;

    .line 29
    .line 30
    invoke-virtual {v2}, Lag8;->b()V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v2, v0, Lwe1;->d:Lno2;

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    sget-object v3, Lgz7;->CANCELLED:Lgz7;

    .line 38
    .line 39
    iput-object v3, v2, Lno2;->d:Lgz7;

    .line 40
    .line 41
    invoke-virtual {v2}, Lno2;->a()V

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object v0, v0, Lwe1;->e:Lxh2;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    sget-object v0, Lgz7;->WAITING:Lgz7;

    .line 49
    .line 50
    :cond_4
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lhf1;->h:Lef1;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    const/16 v3, 0x1ff

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-static {v0, v4, v2, v1, v3}, Lef1;->a(Lef1;Ljava/util/ArrayList;ZZI)Lef1;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lhf1;->q(Lef1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    :try_start_1
    const-string v0, "Required value was null."

    .line 71
    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1

    .line 78
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw v0
.end method

.method public final n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lhf1;->h:Lef1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, v0, Lef1;->i:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    sget-object v0, Ltb1;->a:Ltb1;

    .line 12
    .line 13
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lhf1;->k:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v0, v1}, Liz1;->h(Ldd1;Z)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-static {v0}, Liz1;->g(Ldd1;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    const/16 v3, 0xa

    .line 40
    .line 41
    invoke-static {v1, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lqd1;

    .line 63
    .line 64
    new-instance v4, Lmd1;

    .line 65
    .line 66
    invoke-direct {v4, v3}, Lmd1;-><init>(Lqd1;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-static {v0, v2}, Lhf1;->m(Ldd1;Ljava/util/ArrayList;)Lef1;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lhf1;->q(Lef1;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final o(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lhf1;->h:Lef1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-boolean v1, v0, Lef1;->i:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lhf1;->j:Ljava/lang/Boolean;

    .line 15
    .line 16
    iput-object v1, p0, Lhf1;->k:Ljava/lang/Boolean;

    .line 17
    .line 18
    sget-object v2, Ltb1;->a:Ltb1;

    .line 19
    .line 20
    invoke-static {}, Lqb1;->m()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    iget-object v4, p0, Lhf1;->f:Lix6;

    .line 26
    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    new-instance p0, Lcf1;

    .line 30
    .line 31
    const v0, 0x7f1303c5

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcf1;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, p0}, Lix6;->k(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 41
    .line 42
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    new-instance p1, Lbf1;

    .line 50
    .line 51
    invoke-direct {p1, p0, v3}, Lbf1;-><init>(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    iget-object v0, v0, Lef1;->g:Ljava/util/List;

    .line 59
    .line 60
    new-instance v2, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_5

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    move-object v6, v5

    .line 80
    check-cast v6, Lmd1;

    .line 81
    .line 82
    iget-object v7, v6, Lmd1;->a:Lqd1;

    .line 83
    .line 84
    iget-boolean v7, v7, Lqd1;->d:Z

    .line 85
    .line 86
    if-eqz v7, :cond_4

    .line 87
    .line 88
    iget-boolean v6, v6, Lmd1;->b:Z

    .line 89
    .line 90
    if-eqz v6, :cond_4

    .line 91
    .line 92
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    .line 97
    .line 98
    const/16 v0, 0xa

    .line 99
    .line 100
    invoke-static {v2, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_6

    .line 116
    .line 117
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Lmd1;

    .line 122
    .line 123
    iget-object v5, v5, Lmd1;->a:Lqd1;

    .line 124
    .line 125
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_8

    .line 134
    .line 135
    new-instance p0, Lcf1;

    .line 136
    .line 137
    const v0, 0x7f1303d2

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, v0}, Lcf1;-><init>(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, p0}, Lix6;->k(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 147
    .line 148
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    if-nez p1, :cond_7

    .line 153
    .line 154
    :goto_2
    return-void

    .line 155
    :cond_7
    new-instance p1, Lbf1;

    .line 156
    .line 157
    invoke-direct {p1, p0, v3}, Lbf1;-><init>(Ljava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-static {v9, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_9

    .line 182
    .line 183
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    check-cast v3, Lqd1;

    .line 188
    .line 189
    iget-object v3, v3, Lqd1;->a:Lsd1;

    .line 190
    .line 191
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_9
    invoke-static {v2}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    new-instance v0, Lhj;

    .line 200
    .line 201
    const/4 v2, 0x6

    .line 202
    invoke-direct {v0, v11, v2}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v0}, Lhf1;->p(Lmt3;)Lef1;

    .line 206
    .line 207
    .line 208
    sget-object v0, Lzn4;->a:Lzn4;

    .line 209
    .line 210
    new-instance v7, Lp20;

    .line 211
    .line 212
    const/4 v12, 0x0

    .line 213
    const/4 v13, 0x1

    .line 214
    move-object v8, p0

    .line 215
    move v10, p1

    .line 216
    invoke-direct/range {v7 .. v13}, Lp20;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/util/Set;Ljv1;I)V

    .line 217
    .line 218
    .line 219
    invoke-static {v1, v7}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    iput-object p0, v8, Lhf1;->i:Lbl7;

    .line 224
    .line 225
    return-void
.end method

.method public final declared-synchronized p(Lmt3;)Lef1;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lhf1;->h:Lef1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {p1, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lef1;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lhf1;->q(Lef1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    const-string p1, "Required value was null."

    .line 20
    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public final declared-synchronized q(Lef1;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lhf1;->h:Lef1;

    .line 3
    .line 4
    iget-object v0, p0, Lhf1;->e:Lex6;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lex6;->k(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method
