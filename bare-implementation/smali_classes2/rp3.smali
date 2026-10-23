.class public final synthetic Lrp3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lrp3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lrp3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lrp3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lrp3;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lrp3;->e:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lrp3;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lrp3;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ltt8;

    .line 13
    .line 14
    iget-object v4, v0, Lrp3;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v4, Llh6;

    .line 17
    .line 18
    iget-object v5, v0, Lrp3;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v5, Lyp8;

    .line 21
    .line 22
    iget-object v5, v5, Lyp8;->f:Lkm5;

    .line 23
    .line 24
    iget-object v0, v0, Lrp3;->e:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Ldy7;

    .line 27
    .line 28
    move-object/from16 v6, p1

    .line 29
    .line 30
    check-cast v6, Ljava/lang/Integer;

    .line 31
    .line 32
    sget-object v7, Lbe8;->a:Lbe8;

    .line 33
    .line 34
    if-nez v6, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v1, v1, Ltt8;->p:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v8, v4, Llh6;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v8, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    if-nez v8, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-ne v10, v9, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    iput-object v6, v4, Llh6;->a:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {v5, v1}, Lkm5;->u(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v8, :cond_3

    .line 71
    .line 72
    move v2, v3

    .line 73
    :cond_3
    invoke-virtual {v5, v4, v2}, Lkm5;->v(IZ)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    mul-int/lit8 v2, v2, 0x64

    .line 81
    .line 82
    div-int/2addr v2, v1

    .line 83
    invoke-virtual {v0, v2}, Ldy7;->b(I)V

    .line 84
    .line 85
    .line 86
    :goto_1
    return-object v7

    .line 87
    :pswitch_0
    iget-object v1, v0, Lrp3;->b:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Lwp8;

    .line 90
    .line 91
    iget-object v4, v0, Lrp3;->c:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v4, Llh6;

    .line 94
    .line 95
    iget-object v5, v0, Lrp3;->d:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v5, Lyp8;

    .line 98
    .line 99
    iget-object v5, v5, Lyp8;->f:Lkm5;

    .line 100
    .line 101
    iget-object v0, v0, Lrp3;->e:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Ldy7;

    .line 104
    .line 105
    move-object/from16 v6, p1

    .line 106
    .line 107
    check-cast v6, Ljava/lang/Integer;

    .line 108
    .line 109
    sget-object v7, Lbe8;->a:Lbe8;

    .line 110
    .line 111
    if-nez v6, :cond_4

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    iget-object v1, v1, Lwp8;->n:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    iget-object v8, v4, Llh6;->a:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v8, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    if-nez v8, :cond_5

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-ne v10, v9, :cond_6

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    :goto_2
    iput-object v6, v4, Llh6;->a:Ljava/lang/Object;

    .line 139
    .line 140
    invoke-virtual {v5, v1}, Lkm5;->u(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v8, :cond_7

    .line 148
    .line 149
    move v2, v3

    .line 150
    :cond_7
    invoke-virtual {v5, v4, v2}, Lkm5;->v(IZ)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    mul-int/lit8 v2, v2, 0x64

    .line 158
    .line 159
    div-int/2addr v2, v1

    .line 160
    invoke-virtual {v0, v2}, Ldy7;->b(I)V

    .line 161
    .line 162
    .line 163
    :goto_3
    return-object v7

    .line 164
    :pswitch_1
    iget-object v1, v0, Lrp3;->b:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v1, Lu34;

    .line 167
    .line 168
    iget-object v2, v0, Lrp3;->c:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v2, Ljava/lang/String;

    .line 171
    .line 172
    iget-object v3, v0, Lrp3;->d:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v3, Ljava/lang/String;

    .line 175
    .line 176
    iget-object v0, v0, Lrp3;->e:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v0, Ll46;

    .line 179
    .line 180
    move-object/from16 v4, p1

    .line 181
    .line 182
    check-cast v4, Lij5;

    .line 183
    .line 184
    const-wide/16 v5, 0x0

    .line 185
    .line 186
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    sget-object v6, Lu34;->d:Ll46;

    .line 191
    .line 192
    const-string v7, ""

    .line 193
    .line 194
    invoke-static {v4, v6, v7}, Lly8;->w(Lij5;Ll46;Ljava/io/Serializable;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    check-cast v6, Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_a

    .line 205
    .line 206
    invoke-virtual {v1, v4, v2}, Lu34;->c(Lij5;Ljava/lang/String;)Ll46;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    if-nez v5, :cond_8

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_8
    iget-object v5, v5, Ll46;->a:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_9

    .line 220
    .line 221
    :goto_4
    const/16 p0, 0x0

    .line 222
    .line 223
    goto/16 :goto_a

    .line 224
    .line 225
    :cond_9
    monitor-enter v1

    .line 226
    :try_start_0
    invoke-virtual {v1, v4, v2}, Lu34;->d(Lij5;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    new-instance v3, Ljava/util/HashSet;

    .line 230
    .line 231
    new-instance v5, Ljava/util/HashSet;

    .line 232
    .line 233
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-static {v4, v0, v5}, Lly8;->w(Lij5;Ll46;Ljava/io/Serializable;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    check-cast v5, Ljava/util/Collection;

    .line 241
    .line 242
    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v0, v3}, Lij5;->d(Ll46;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .line 250
    .line 251
    monitor-exit v1

    .line 252
    goto :goto_4

    .line 253
    :catchall_0
    move-exception v0

    .line 254
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    throw v0

    .line 256
    :cond_a
    sget-object v3, Lu34;->c:Ll46;

    .line 257
    .line 258
    invoke-static {v4, v3, v5}, Lly8;->w(Lij5;Ll46;Ljava/io/Serializable;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    check-cast v6, Ljava/lang/Long;

    .line 263
    .line 264
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 265
    .line 266
    .line 267
    move-result-wide v8

    .line 268
    const-wide/16 v10, 0x1

    .line 269
    .line 270
    add-long v12, v8, v10

    .line 271
    .line 272
    const-wide/16 v14, 0x1e

    .line 273
    .line 274
    cmp-long v6, v12, v14

    .line 275
    .line 276
    if-nez v6, :cond_f

    .line 277
    .line 278
    monitor-enter v1

    .line 279
    :try_start_2
    invoke-static {v4, v3, v5}, Lly8;->w(Lij5;Ll46;Ljava/io/Serializable;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    check-cast v3, Ljava/lang/Long;

    .line 284
    .line 285
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 286
    .line 287
    .line 288
    move-result-wide v5

    .line 289
    const-string v3, ""

    .line 290
    .line 291
    new-instance v8, Ljava/util/HashSet;

    .line 292
    .line 293
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Lij5;->a()Ljava/util/Map;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    const/4 v12, 0x0

    .line 309
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 310
    .line 311
    .line 312
    move-result v13

    .line 313
    if-eqz v13, :cond_e

    .line 314
    .line 315
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v13

    .line 319
    check-cast v13, Ljava/util/Map$Entry;

    .line 320
    .line 321
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v14

    .line 325
    instance-of v14, v14, Ljava/util/Set;

    .line 326
    .line 327
    if-eqz v14, :cond_d

    .line 328
    .line 329
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v14

    .line 333
    check-cast v14, Ljava/util/Set;

    .line 334
    .line 335
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 336
    .line 337
    .line 338
    move-result-object v15

    .line 339
    :cond_b
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    .line 341
    .line 342
    move-result v16

    .line 343
    if-eqz v16, :cond_d

    .line 344
    .line 345
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v16

    .line 349
    const/16 p0, 0x0

    .line 350
    .line 351
    move-object/from16 v7, v16

    .line 352
    .line 353
    check-cast v7, Ljava/lang/String;

    .line 354
    .line 355
    if-eqz v12, :cond_c

    .line 356
    .line 357
    invoke-virtual {v12, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    move-result v16

    .line 361
    if-lez v16, :cond_b

    .line 362
    .line 363
    goto :goto_7

    .line 364
    :catchall_1
    move-exception v0

    .line 365
    goto :goto_8

    .line 366
    :cond_c
    :goto_7
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    check-cast v3, Ll46;

    .line 371
    .line 372
    iget-object v3, v3, Ll46;->a:Ljava/lang/String;

    .line 373
    .line 374
    move-object v12, v7

    .line 375
    move-object v8, v14

    .line 376
    goto :goto_6

    .line 377
    :cond_d
    const/16 p0, 0x0

    .line 378
    .line 379
    goto :goto_5

    .line 380
    :cond_e
    const/16 p0, 0x0

    .line 381
    .line 382
    new-instance v7, Ljava/util/HashSet;

    .line 383
    .line 384
    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v7, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    new-instance v8, Ll46;

    .line 394
    .line 395
    invoke-direct {v8, v3}, Ll46;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4, v8, v7}, Lij5;->d(Ll46;Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    sget-object v3, Lu34;->c:Ll46;

    .line 402
    .line 403
    sub-long v8, v5, v10

    .line 404
    .line 405
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    invoke-virtual {v4, v3, v5}, Lij5;->c(Ll46;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 410
    .line 411
    .line 412
    monitor-exit v1

    .line 413
    goto :goto_9

    .line 414
    :goto_8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 415
    throw v0

    .line 416
    :cond_f
    const/16 p0, 0x0

    .line 417
    .line 418
    :goto_9
    new-instance v1, Ljava/util/HashSet;

    .line 419
    .line 420
    new-instance v3, Ljava/util/HashSet;

    .line 421
    .line 422
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 423
    .line 424
    .line 425
    invoke-static {v4, v0, v3}, Lly8;->w(Lij5;Ll46;Ljava/io/Serializable;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    check-cast v3, Ljava/util/Collection;

    .line 430
    .line 431
    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    add-long/2addr v8, v10

    .line 438
    invoke-virtual {v4, v0, v1}, Lij5;->d(Ll46;Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    sget-object v0, Lu34;->c:Ll46;

    .line 442
    .line 443
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-virtual {v4, v0, v1}, Lij5;->c(Ll46;Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    sget-object v0, Lu34;->d:Ll46;

    .line 451
    .line 452
    invoke-virtual {v4, v0, v2}, Lij5;->c(Ll46;Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    :goto_a
    return-object p0

    .line 456
    :pswitch_2
    iget-object v1, v0, Lrp3;->b:Ljava/lang/Object;

    .line 457
    .line 458
    check-cast v1, Lqp3;

    .line 459
    .line 460
    iget-object v4, v0, Lrp3;->c:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast v4, Ltp3;

    .line 463
    .line 464
    iget-object v5, v4, Ltp3;->l:Landroid/widget/TextView;

    .line 465
    .line 466
    iget-object v6, v0, Lrp3;->d:Ljava/lang/Object;

    .line 467
    .line 468
    check-cast v6, Lih6;

    .line 469
    .line 470
    iget-object v0, v0, Lrp3;->e:Ljava/lang/Object;

    .line 471
    .line 472
    check-cast v0, Lih6;

    .line 473
    .line 474
    move-object/from16 v7, p1

    .line 475
    .line 476
    check-cast v7, Ljava/lang/String;

    .line 477
    .line 478
    if-eqz v7, :cond_11

    .line 479
    .line 480
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 481
    .line 482
    .line 483
    move-result v8

    .line 484
    if-nez v8, :cond_10

    .line 485
    .line 486
    goto :goto_b

    .line 487
    :cond_10
    invoke-virtual {v1}, Lpw6;->e()Lgz7;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-virtual {v1}, Lgz7;->isComplete()Z

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    if-nez v1, :cond_11

    .line 496
    .line 497
    move v2, v3

    .line 498
    :cond_11
    :goto_b
    invoke-static {v5, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 499
    .line 500
    .line 501
    iput-boolean v2, v6, Lih6;->a:Z

    .line 502
    .line 503
    invoke-static {v0, v6, v4}, Ltp3;->b(Lih6;Lih6;Ltp3;)V

    .line 504
    .line 505
    .line 506
    if-eqz v2, :cond_12

    .line 507
    .line 508
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    .line 510
    .line 511
    :cond_12
    sget-object v0, Lbe8;->a:Lbe8;

    .line 512
    .line 513
    return-object v0

    .line 514
    nop

    .line 515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
