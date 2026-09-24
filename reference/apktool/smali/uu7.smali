.class public final Luu7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:J

.field public final synthetic c:Z

.field public final synthetic d:Laa1;

.field public final synthetic e:Lbv7;


# direct methods
.method public constructor <init>(Lbv7;ZJZLaa1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luu7;->e:Lbv7;

    .line 5
    .line 6
    iput-boolean p2, p0, Luu7;->a:Z

    .line 7
    .line 8
    iput-wide p3, p0, Luu7;->b:J

    .line 9
    .line 10
    iput-boolean p5, p0, Luu7;->c:Z

    .line 11
    .line 12
    iput-object p6, p0, Luu7;->d:Laa1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Luu7;->e:Lbv7;

    .line 4
    .line 5
    iget-object v2, v1, Lbv7;->b:Lvq;

    .line 6
    .line 7
    iget-object v3, v1, Lbv7;->g:Leo5;

    .line 8
    .line 9
    iget-boolean v4, v0, Luu7;->a:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {v3}, Leo5;->c()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v4, v2, Lvq;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v6, 0x0

    .line 29
    iget-wide v7, v0, Luu7;->b:J

    .line 30
    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lkh8;

    .line 38
    .line 39
    iget-wide v9, v5, Lkh8;->a:J

    .line 40
    .line 41
    cmp-long v9, v9, v7

    .line 42
    .line 43
    if-nez v9, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move-object v5, v6

    .line 47
    :goto_0
    iget-object v4, v2, Lvq;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v4, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    const/4 v11, 0x0

    .line 56
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    if-eqz v12, :cond_4

    .line 61
    .line 62
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    check-cast v12, Lkh8;

    .line 67
    .line 68
    iget-wide v13, v12, Lkh8;->a:J

    .line 69
    .line 70
    cmp-long v13, v13, v7

    .line 71
    .line 72
    if-nez v13, :cond_3

    .line 73
    .line 74
    move-object v6, v12

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    :goto_2
    const/4 v7, 0x1

    .line 80
    if-eqz v6, :cond_5

    .line 81
    .line 82
    move v8, v7

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    const/4 v8, 0x0

    .line 85
    :goto_3
    const-string v9, "removeWrite called with nonexistent writeId"

    .line 86
    .line 87
    invoke-static {v9, v8}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    iget-boolean v8, v6, Lkh8;->e:Z

    .line 94
    .line 95
    iget-object v9, v6, Lkh8;->b:Lgy5;

    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    sub-int/2addr v12, v7

    .line 102
    const/4 v13, 0x0

    .line 103
    :goto_4
    if-eqz v8, :cond_b

    .line 104
    .line 105
    if-ltz v12, :cond_b

    .line 106
    .line 107
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    check-cast v14, Lkh8;

    .line 112
    .line 113
    iget-boolean v15, v14, Lkh8;->e:Z

    .line 114
    .line 115
    iget-object v10, v14, Lkh8;->b:Lgy5;

    .line 116
    .line 117
    if-eqz v15, :cond_a

    .line 118
    .line 119
    if-lt v12, v11, :cond_9

    .line 120
    .line 121
    invoke-virtual {v14}, Lkh8;->c()Z

    .line 122
    .line 123
    .line 124
    move-result v15

    .line 125
    if-eqz v15, :cond_6

    .line 126
    .line 127
    invoke-virtual {v10, v9}, Lgy5;->g(Lgy5;)Z

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    goto :goto_5

    .line 132
    :cond_6
    invoke-virtual {v14}, Lkh8;->a()Lnp1;

    .line 133
    .line 134
    .line 135
    move-result-object v14

    .line 136
    iget-object v14, v14, Lnp1;->a:Lua4;

    .line 137
    .line 138
    invoke-virtual {v14}, Lua4;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v14

    .line 142
    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    if-eqz v15, :cond_8

    .line 147
    .line 148
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v15

    .line 152
    check-cast v15, Ljava/util/Map$Entry;

    .line 153
    .line 154
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    check-cast v15, Lgy5;

    .line 159
    .line 160
    invoke-virtual {v10, v15}, Lgy5;->e(Lgy5;)Lgy5;

    .line 161
    .line 162
    .line 163
    move-result-object v15

    .line 164
    invoke-virtual {v15, v9}, Lgy5;->g(Lgy5;)Z

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    if-eqz v15, :cond_7

    .line 169
    .line 170
    move v14, v7

    .line 171
    goto :goto_5

    .line 172
    :cond_8
    const/4 v14, 0x0

    .line 173
    :goto_5
    if-eqz v14, :cond_9

    .line 174
    .line 175
    const/4 v8, 0x0

    .line 176
    goto :goto_6

    .line 177
    :cond_9
    invoke-virtual {v9, v10}, Lgy5;->g(Lgy5;)Z

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    if-eqz v10, :cond_a

    .line 182
    .line 183
    move v13, v7

    .line 184
    :cond_a
    :goto_6
    add-int/lit8 v12, v12, -0x1

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_b
    if-nez v8, :cond_c

    .line 188
    .line 189
    const/4 v10, 0x0

    .line 190
    goto/16 :goto_b

    .line 191
    .line 192
    :cond_c
    if-eqz v13, :cond_f

    .line 193
    .line 194
    sget-object v6, Lvq;->k:Lfk8;

    .line 195
    .line 196
    sget-object v8, Lgy5;->d:Lgy5;

    .line 197
    .line 198
    invoke-static {v4, v6, v8}, Lvq;->o(Ljava/util/ArrayList;Lq36;Lgy5;)Lnp1;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    iput-object v6, v2, Lvq;->b:Ljava/lang/Object;

    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-lez v6, :cond_d

    .line 209
    .line 210
    invoke-static {v4, v7}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    check-cast v4, Lkh8;

    .line 215
    .line 216
    iget-wide v8, v4, Lkh8;->a:J

    .line 217
    .line 218
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    iput-object v4, v2, Lvq;->d:Ljava/lang/Object;

    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_d
    const-wide/16 v8, -0x1

    .line 226
    .line 227
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    iput-object v4, v2, Lvq;->d:Ljava/lang/Object;

    .line 232
    .line 233
    :cond_e
    :goto_7
    move v10, v7

    .line 234
    goto :goto_b

    .line 235
    :cond_f
    invoke-virtual {v6}, Lkh8;->c()Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-eqz v4, :cond_11

    .line 240
    .line 241
    iget-object v4, v2, Lvq;->b:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v4, Lnp1;

    .line 244
    .line 245
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9}, Lgy5;->isEmpty()Z

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    if-eqz v6, :cond_10

    .line 253
    .line 254
    sget-object v4, Lnp1;->b:Lnp1;

    .line 255
    .line 256
    goto :goto_8

    .line 257
    :cond_10
    iget-object v4, v4, Lnp1;->a:Lua4;

    .line 258
    .line 259
    sget-object v6, Lua4;->d:Lua4;

    .line 260
    .line 261
    invoke-virtual {v4, v9, v6}, Lua4;->k(Lgy5;Lua4;)Lua4;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    new-instance v6, Lnp1;

    .line 266
    .line 267
    invoke-direct {v6, v4}, Lnp1;-><init>(Lua4;)V

    .line 268
    .line 269
    .line 270
    move-object v4, v6

    .line 271
    :goto_8
    iput-object v4, v2, Lvq;->b:Ljava/lang/Object;

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_11
    invoke-virtual {v6}, Lkh8;->a()Lnp1;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    iget-object v4, v4, Lnp1;->a:Lua4;

    .line 279
    .line 280
    invoke-virtual {v4}, Lua4;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    if-eqz v6, :cond_e

    .line 289
    .line 290
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    check-cast v6, Ljava/util/Map$Entry;

    .line 295
    .line 296
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    check-cast v6, Lgy5;

    .line 301
    .line 302
    iget-object v8, v2, Lvq;->b:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v8, Lnp1;

    .line 305
    .line 306
    invoke-virtual {v9, v6}, Lgy5;->e(Lgy5;)Lgy5;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v6}, Lgy5;->isEmpty()Z

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    if-eqz v10, :cond_12

    .line 318
    .line 319
    sget-object v6, Lnp1;->b:Lnp1;

    .line 320
    .line 321
    goto :goto_a

    .line 322
    :cond_12
    iget-object v8, v8, Lnp1;->a:Lua4;

    .line 323
    .line 324
    sget-object v10, Lua4;->d:Lua4;

    .line 325
    .line 326
    invoke-virtual {v8, v6, v10}, Lua4;->k(Lgy5;Lua4;)Lua4;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    new-instance v8, Lnp1;

    .line 331
    .line 332
    invoke-direct {v8, v6}, Lnp1;-><init>(Lua4;)V

    .line 333
    .line 334
    .line 335
    move-object v6, v8

    .line 336
    :goto_a
    iput-object v6, v2, Lvq;->b:Ljava/lang/Object;

    .line 337
    .line 338
    goto :goto_9

    .line 339
    :goto_b
    iget-boolean v2, v5, Lkh8;->e:Z

    .line 340
    .line 341
    iget-object v4, v5, Lkh8;->b:Lgy5;

    .line 342
    .line 343
    iget-boolean v6, v0, Luu7;->c:Z

    .line 344
    .line 345
    if-eqz v2, :cond_14

    .line 346
    .line 347
    if-nez v6, :cond_14

    .line 348
    .line 349
    iget-object v0, v0, Luu7;->d:Laa1;

    .line 350
    .line 351
    invoke-static {v0}, Lms8;->v(Laa1;)Ljava/util/HashMap;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v5}, Lkh8;->c()Z

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    if-eqz v2, :cond_13

    .line 360
    .line 361
    invoke-virtual {v5}, Lkh8;->b()Lqn5;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    new-instance v7, Ldj8;

    .line 366
    .line 367
    invoke-direct {v7, v1, v4}, Ldj8;-><init>(Lbv7;Lgy5;)V

    .line 368
    .line 369
    .line 370
    invoke-static {v2, v7, v0}, Lms8;->L(Lqn5;Lji8;Ljava/util/HashMap;)Lqn5;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3}, Leo5;->c()V

    .line 374
    .line 375
    .line 376
    goto :goto_c

    .line 377
    :cond_13
    invoke-virtual {v5}, Lkh8;->a()Lnp1;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-static {v2, v1, v4, v0}, Lms8;->K(Lnp1;Lbv7;Lgy5;Ljava/util/HashMap;)Lnp1;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3}, Leo5;->c()V

    .line 385
    .line 386
    .line 387
    :cond_14
    :goto_c
    if-nez v10, :cond_15

    .line 388
    .line 389
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 390
    .line 391
    return-object v0

    .line 392
    :cond_15
    sget-object v0, Lua4;->d:Lua4;

    .line 393
    .line 394
    invoke-virtual {v5}, Lkh8;->c()Z

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-eqz v2, :cond_16

    .line 399
    .line 400
    sget-object v2, Lgy5;->d:Lgy5;

    .line 401
    .line 402
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 403
    .line 404
    invoke-virtual {v0, v2, v3}, Lua4;->i(Lgy5;Ljava/lang/Object;)Lua4;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    goto :goto_e

    .line 409
    :cond_16
    invoke-virtual {v5}, Lkh8;->a()Lnp1;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    iget-object v2, v2, Lnp1;->a:Lua4;

    .line 414
    .line 415
    invoke-virtual {v2}, Lua4;->iterator()Ljava/util/Iterator;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    if-eqz v3, :cond_17

    .line 424
    .line 425
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    check-cast v3, Ljava/util/Map$Entry;

    .line 430
    .line 431
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    check-cast v3, Lgy5;

    .line 436
    .line 437
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 438
    .line 439
    invoke-virtual {v0, v3, v5}, Lua4;->i(Lgy5;Ljava/lang/Object;)Lua4;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    goto :goto_d

    .line 444
    :cond_17
    :goto_e
    new-instance v2, Ls7;

    .line 445
    .line 446
    invoke-direct {v2, v4, v0, v6}, Ls7;-><init>(Lgy5;Lua4;Z)V

    .line 447
    .line 448
    .line 449
    invoke-static {v1, v2}, Lbv7;->a(Lbv7;Lgu2;)Ljava/util/ArrayList;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    return-object v0
.end method
