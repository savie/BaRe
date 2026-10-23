.class public final Lol6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lta2;
.implements Lqa2;


# instance fields
.field public final a:Ltd2;

.field public final b:Lqd2;

.field public c:I

.field public d:I

.field public e:Ljo4;

.field public f:Ljava/util/List;

.field public k:I

.field public volatile n:Lbh5;

.field public p:Ljava/io/File;

.field public q:Lpl6;


# direct methods
.method public constructor <init>(Lqd2;Ltd2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lol6;->d:I

    .line 6
    .line 7
    iput-object p1, p0, Lol6;->b:Lqd2;

    .line 8
    .line 9
    iput-object p2, p0, Lol6;->a:Ltd2;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Failed to find any load path from "

    .line 4
    .line 5
    iget-object v2, v0, Lol6;->b:Lqd2;

    .line 6
    .line 7
    invoke-virtual {v2}, Lqd2;->a()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    iget-object v3, v0, Lol6;->b:Lqd2;

    .line 21
    .line 22
    iget-object v5, v3, Lqd2;->c:Ldy3;

    .line 23
    .line 24
    invoke-virtual {v5}, Ldy3;->a()Lmi6;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-object v6, v3, Lqd2;->d:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    iget-object v7, v3, Lqd2;->g:Ljava/lang/Class;

    .line 35
    .line 36
    iget-object v3, v3, Lqd2;->k:Ljava/lang/Class;

    .line 37
    .line 38
    iget-object v8, v5, Lmi6;->h:Lc00;

    .line 39
    .line 40
    iget-object v9, v8, Lc00;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v9, Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    check-cast v9, Lrh5;

    .line 50
    .line 51
    if-nez v9, :cond_1

    .line 52
    .line 53
    new-instance v9, Lrh5;

    .line 54
    .line 55
    invoke-direct {v9, v6, v7, v3}, Lrh5;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iput-object v6, v9, Lrh5;->a:Ljava/lang/Class;

    .line 60
    .line 61
    iput-object v7, v9, Lrh5;->b:Ljava/lang/Class;

    .line 62
    .line 63
    iput-object v3, v9, Lrh5;->c:Ljava/lang/Class;

    .line 64
    .line 65
    :goto_0
    iget-object v11, v8, Lc00;->c:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v11, Lk50;

    .line 68
    .line 69
    monitor-enter v11

    .line 70
    :try_start_0
    iget-object v12, v8, Lc00;->c:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v12, Lk50;

    .line 73
    .line 74
    invoke-virtual {v12, v9}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    check-cast v12, Ljava/util/List;

    .line 79
    .line 80
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 81
    iget-object v8, v8, Lc00;->b:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v8, Ljava/util/concurrent/atomic/AtomicReference;

    .line 84
    .line 85
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    if-nez v12, :cond_5

    .line 89
    .line 90
    new-instance v12, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v8, v5, Lmi6;->a:Lcd;

    .line 96
    .line 97
    monitor-enter v8

    .line 98
    :try_start_1
    iget-object v9, v8, Lcd;->b:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v9, Lai5;

    .line 101
    .line 102
    invoke-virtual {v9, v6}, Lai5;->j(Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    monitor-exit v8

    .line 107
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_4

    .line 116
    .line 117
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    check-cast v9, Ljava/lang/Class;

    .line 122
    .line 123
    iget-object v11, v5, Lmi6;->c:Lix0;

    .line 124
    .line 125
    invoke-virtual {v11, v9, v7}, Lix0;->f(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    if-eqz v11, :cond_2

    .line 138
    .line 139
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    check-cast v11, Ljava/lang/Class;

    .line 144
    .line 145
    iget-object v13, v5, Lmi6;->f:Ls40;

    .line 146
    .line 147
    invoke-virtual {v13, v11, v3}, Ls40;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    if-nez v13, :cond_3

    .line 156
    .line 157
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    if-nez v13, :cond_3

    .line 162
    .line 163
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_4
    iget-object v5, v5, Lmi6;->h:Lc00;

    .line 168
    .line 169
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    iget-object v9, v5, Lc00;->c:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v9, Lk50;

    .line 176
    .line 177
    monitor-enter v9

    .line 178
    :try_start_2
    iget-object v5, v5, Lc00;->c:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v5, Lk50;

    .line 181
    .line 182
    new-instance v11, Lrh5;

    .line 183
    .line 184
    invoke-direct {v11, v6, v7, v3}, Lrh5;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v11, v8}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    monitor-exit v9

    .line 191
    goto :goto_2

    .line 192
    :catchall_0
    move-exception v0

    .line 193
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    throw v0

    .line 195
    :catchall_1
    move-exception v0

    .line 196
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    throw v0

    .line 198
    :cond_5
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_7

    .line 203
    .line 204
    const-class v2, Ljava/io/File;

    .line 205
    .line 206
    iget-object v3, v0, Lol6;->b:Lqd2;

    .line 207
    .line 208
    iget-object v3, v3, Lqd2;->k:Ljava/lang/Class;

    .line 209
    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_6

    .line 215
    .line 216
    goto/16 :goto_5

    .line 217
    .line 218
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 219
    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v1, v0, Lol6;->b:Lqd2;

    .line 226
    .line 227
    iget-object v1, v1, Lqd2;->d:Ljava/lang/Object;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, " to "

    .line 237
    .line 238
    iget-object v0, v0, Lol6;->b:Lqd2;

    .line 239
    .line 240
    iget-object v0, v0, Lqd2;->k:Ljava/lang/Class;

    .line 241
    .line 242
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw v2

    .line 256
    :cond_7
    :goto_3
    iget-object v1, v0, Lol6;->f:Ljava/util/List;

    .line 257
    .line 258
    const/4 v3, 0x1

    .line 259
    if-eqz v1, :cond_a

    .line 260
    .line 261
    iget v5, v0, Lol6;->k:I

    .line 262
    .line 263
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-ge v5, v1, :cond_a

    .line 268
    .line 269
    iput-object v10, v0, Lol6;->n:Lbh5;

    .line 270
    .line 271
    :cond_8
    :goto_4
    if-nez v4, :cond_9

    .line 272
    .line 273
    iget v1, v0, Lol6;->k:I

    .line 274
    .line 275
    iget-object v2, v0, Lol6;->f:Ljava/util/List;

    .line 276
    .line 277
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-ge v1, v2, :cond_9

    .line 282
    .line 283
    iget-object v1, v0, Lol6;->f:Ljava/util/List;

    .line 284
    .line 285
    iget v2, v0, Lol6;->k:I

    .line 286
    .line 287
    add-int/lit8 v5, v2, 0x1

    .line 288
    .line 289
    iput v5, v0, Lol6;->k:I

    .line 290
    .line 291
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    check-cast v1, Lch5;

    .line 296
    .line 297
    iget-object v2, v0, Lol6;->p:Ljava/io/File;

    .line 298
    .line 299
    iget-object v5, v0, Lol6;->b:Lqd2;

    .line 300
    .line 301
    iget v6, v5, Lqd2;->e:I

    .line 302
    .line 303
    iget v7, v5, Lqd2;->f:I

    .line 304
    .line 305
    iget-object v5, v5, Lqd2;->i:Lou5;

    .line 306
    .line 307
    invoke-interface {v1, v2, v6, v7, v5}, Lch5;->b(Ljava/lang/Object;IILou5;)Lbh5;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iput-object v1, v0, Lol6;->n:Lbh5;

    .line 312
    .line 313
    iget-object v1, v0, Lol6;->n:Lbh5;

    .line 314
    .line 315
    if-eqz v1, :cond_8

    .line 316
    .line 317
    iget-object v1, v0, Lol6;->b:Lqd2;

    .line 318
    .line 319
    iget-object v2, v0, Lol6;->n:Lbh5;

    .line 320
    .line 321
    iget-object v2, v2, Lbh5;->c:Lra2;

    .line 322
    .line 323
    invoke-interface {v2}, Lra2;->a()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v1, v2}, Lqd2;->c(Ljava/lang/Class;)Laz4;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    if-eqz v1, :cond_8

    .line 332
    .line 333
    iget-object v1, v0, Lol6;->n:Lbh5;

    .line 334
    .line 335
    iget-object v1, v1, Lbh5;->c:Lra2;

    .line 336
    .line 337
    iget-object v2, v0, Lol6;->b:Lqd2;

    .line 338
    .line 339
    iget-object v2, v2, Lqd2;->o:Le66;

    .line 340
    .line 341
    invoke-interface {v1, v2, v0}, Lra2;->d(Le66;Lqa2;)V

    .line 342
    .line 343
    .line 344
    move v4, v3

    .line 345
    goto :goto_4

    .line 346
    :cond_9
    return v4

    .line 347
    :cond_a
    iget v1, v0, Lol6;->d:I

    .line 348
    .line 349
    add-int/2addr v1, v3

    .line 350
    iput v1, v0, Lol6;->d:I

    .line 351
    .line 352
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-lt v1, v5, :cond_c

    .line 357
    .line 358
    iget v1, v0, Lol6;->c:I

    .line 359
    .line 360
    add-int/2addr v1, v3

    .line 361
    iput v1, v0, Lol6;->c:I

    .line 362
    .line 363
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-lt v1, v3, :cond_b

    .line 368
    .line 369
    :goto_5
    return v4

    .line 370
    :cond_b
    iput v4, v0, Lol6;->d:I

    .line 371
    .line 372
    :cond_c
    iget v1, v0, Lol6;->c:I

    .line 373
    .line 374
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    move-object v15, v1

    .line 379
    check-cast v15, Ljo4;

    .line 380
    .line 381
    iget v1, v0, Lol6;->d:I

    .line 382
    .line 383
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    check-cast v1, Ljava/lang/Class;

    .line 388
    .line 389
    iget-object v3, v0, Lol6;->b:Lqd2;

    .line 390
    .line 391
    invoke-virtual {v3, v1}, Lqd2;->e(Ljava/lang/Class;)Ll98;

    .line 392
    .line 393
    .line 394
    move-result-object v19

    .line 395
    new-instance v13, Lpl6;

    .line 396
    .line 397
    iget-object v3, v0, Lol6;->b:Lqd2;

    .line 398
    .line 399
    iget-object v5, v3, Lqd2;->c:Ldy3;

    .line 400
    .line 401
    iget-object v14, v5, Ldy3;->a:Lm35;

    .line 402
    .line 403
    iget-object v5, v3, Lqd2;->n:Ljo4;

    .line 404
    .line 405
    iget v6, v3, Lqd2;->e:I

    .line 406
    .line 407
    iget v7, v3, Lqd2;->f:I

    .line 408
    .line 409
    iget-object v8, v3, Lqd2;->i:Lou5;

    .line 410
    .line 411
    move-object/from16 v20, v1

    .line 412
    .line 413
    move-object/from16 v16, v5

    .line 414
    .line 415
    move/from16 v17, v6

    .line 416
    .line 417
    move/from16 v18, v7

    .line 418
    .line 419
    move-object/from16 v21, v8

    .line 420
    .line 421
    invoke-direct/range {v13 .. v21}, Lpl6;-><init>(Lm35;Ljo4;Ljo4;IILl98;Ljava/lang/Class;Lou5;)V

    .line 422
    .line 423
    .line 424
    iput-object v13, v0, Lol6;->q:Lpl6;

    .line 425
    .line 426
    iget-object v1, v3, Lqd2;->h:Lyw2;

    .line 427
    .line 428
    invoke-virtual {v1}, Lyw2;->a()Lgm2;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    iget-object v3, v0, Lol6;->q:Lpl6;

    .line 433
    .line 434
    invoke-interface {v1, v3}, Lgm2;->e(Ljo4;)Ljava/io/File;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    iput-object v1, v0, Lol6;->p:Ljava/io/File;

    .line 439
    .line 440
    if-eqz v1, :cond_7

    .line 441
    .line 442
    iput-object v15, v0, Lol6;->e:Ljo4;

    .line 443
    .line 444
    iget-object v3, v0, Lol6;->b:Lqd2;

    .line 445
    .line 446
    iget-object v3, v3, Lqd2;->c:Ldy3;

    .line 447
    .line 448
    invoke-virtual {v3}, Ldy3;->a()Lmi6;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    invoke-virtual {v3, v1}, Lmi6;->f(Ljava/lang/Object;)Ljava/util/List;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    iput-object v1, v0, Lol6;->f:Ljava/util/List;

    .line 457
    .line 458
    iput v4, v0, Lol6;->k:I

    .line 459
    .line 460
    goto/16 :goto_3

    .line 461
    .line 462
    :catchall_2
    move-exception v0

    .line 463
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 464
    throw v0
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lol6;->a:Ltd2;

    .line 2
    .line 3
    iget-object v1, p0, Lol6;->q:Lpl6;

    .line 4
    .line 5
    iget-object p0, p0, Lol6;->n:Lbh5;

    .line 6
    .line 7
    iget-object p0, p0, Lbh5;->c:Lra2;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-virtual {v0, v1, p1, p0, v2}, Ltd2;->c(Ljo4;Ljava/lang/Exception;Lra2;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lol6;->n:Lbh5;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lbh5;->c:Lra2;

    .line 6
    .line 7
    invoke-interface {p0}, Lra2;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lol6;->a:Ltd2;

    .line 2
    .line 3
    iget-object v1, p0, Lol6;->e:Ljo4;

    .line 4
    .line 5
    iget-object v2, p0, Lol6;->n:Lbh5;

    .line 6
    .line 7
    iget-object v3, v2, Lbh5;->c:Lra2;

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    iget-object v5, p0, Lol6;->q:Lpl6;

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    invoke-virtual/range {v0 .. v5}, Ltd2;->b(Ljo4;Ljava/lang/Object;Lra2;ILjo4;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
