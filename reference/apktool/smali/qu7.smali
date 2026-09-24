.class public final Lqu7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lqc6;

.field public final synthetic b:Lez2;

.field public final synthetic c:Lwc2;

.field public final synthetic d:Z

.field public final synthetic e:Lbv7;


# direct methods
.method public constructor <init>(Lbv7;Lqc6;Lez2;Lwc2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqu7;->e:Lbv7;

    .line 5
    .line 6
    iput-object p2, p0, Lqu7;->a:Lqc6;

    .line 7
    .line 8
    iput-object p3, p0, Lqu7;->b:Lez2;

    .line 9
    .line 10
    iput-object p4, p0, Lqu7;->c:Lwc2;

    .line 11
    .line 12
    iput-boolean p5, p0, Lqu7;->d:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Lqu7;->a:Lqc6;

    .line 2
    .line 3
    iget-object v1, v0, Lqc6;->a:Lgy5;

    .line 4
    .line 5
    iget-object v2, p0, Lqu7;->e:Lbv7;

    .line 6
    .line 7
    iget-object v3, v2, Lbv7;->a:Lua4;

    .line 8
    .line 9
    iget-object v4, v2, Lbv7;->f:Lav7;

    .line 10
    .line 11
    invoke-virtual {v3, v1}, Lua4;->e(Lgy5;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Llu7;

    .line 16
    .line 17
    new-instance v5, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    if-eqz v3, :cond_17

    .line 23
    .line 24
    iget-object v6, v3, Llu7;->a:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v0}, Lqc6;->b()Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-nez v7, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Llu7;->h(Lqc6;)Lik8;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v5

    .line 40
    :cond_1
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v7, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Llu7;->g()Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    invoke-virtual {v0}, Lqc6;->b()Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    iget-object v10, v0, Lqc6;->b:Loc6;

    .line 59
    .line 60
    iget-object v11, p0, Lqu7;->c:Lwc2;

    .line 61
    .line 62
    iget-object v12, p0, Lqu7;->b:Lez2;

    .line 63
    .line 64
    if-eqz v9, :cond_3

    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-eqz v10, :cond_4

    .line 79
    .line 80
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    check-cast v10, Ljava/util/Map$Entry;

    .line 85
    .line 86
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    check-cast v10, Lik8;

    .line 91
    .line 92
    invoke-virtual {v10, v12, v11}, Lik8;->b(Lez2;Lwc2;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    iget-object v14, v10, Lik8;->a:Lqc6;

    .line 97
    .line 98
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    .line 100
    .line 101
    iget-object v10, v10, Lik8;->d:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    if-eqz v10, :cond_2

    .line 108
    .line 109
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 110
    .line 111
    .line 112
    iget-object v10, v14, Lqc6;->b:Loc6;

    .line 113
    .line 114
    invoke-virtual {v10}, Loc6;->d()Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-nez v10, :cond_2

    .line 119
    .line 120
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    check-cast v9, Lik8;

    .line 129
    .line 130
    if-eqz v9, :cond_4

    .line 131
    .line 132
    iget-object v13, v9, Lik8;->a:Lqc6;

    .line 133
    .line 134
    invoke-virtual {v9, v12, v11}, Lik8;->b(Lez2;Lwc2;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    .line 140
    .line 141
    iget-object v9, v9, Lik8;->d:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-eqz v9, :cond_4

    .line 148
    .line 149
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    iget-object v9, v13, Lqc6;->b:Loc6;

    .line 153
    .line 154
    invoke-virtual {v9}, Loc6;->d()Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-nez v9, :cond_4

    .line 159
    .line 160
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    :cond_4
    if-eqz v8, :cond_5

    .line 164
    .line 165
    invoke-virtual {v3}, Llu7;->g()Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-nez v3, :cond_5

    .line 170
    .line 171
    iget-object v3, v0, Lqc6;->a:Lgy5;

    .line 172
    .line 173
    invoke-static {v3}, Lqc6;->a(Lgy5;)Lqc6;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    :cond_5
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_6

    .line 185
    .line 186
    iget-object v3, v2, Lbv7;->a:Lua4;

    .line 187
    .line 188
    invoke-virtual {v3, v1}, Lua4;->g(Lgy5;)Lua4;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    iput-object v3, v2, Lbv7;->a:Lua4;

    .line 193
    .line 194
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    const/4 v6, 0x0

    .line 199
    :cond_7
    move v8, v6

    .line 200
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    const/4 v10, 0x1

    .line 205
    if-eqz v9, :cond_9

    .line 206
    .line 207
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    check-cast v9, Lqc6;

    .line 212
    .line 213
    iget-object v12, v2, Lbv7;->g:Leo5;

    .line 214
    .line 215
    invoke-virtual {v12}, Leo5;->c()V

    .line 216
    .line 217
    .line 218
    if-nez v8, :cond_8

    .line 219
    .line 220
    iget-object v8, v9, Lqc6;->b:Loc6;

    .line 221
    .line 222
    invoke-virtual {v8}, Loc6;->d()Z

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    if-eqz v8, :cond_7

    .line 227
    .line 228
    :cond_8
    move v8, v10

    .line 229
    goto :goto_2

    .line 230
    :cond_9
    iget-boolean p0, p0, Lqu7;->d:Z

    .line 231
    .line 232
    if-eqz p0, :cond_a

    .line 233
    .line 234
    const/4 p0, 0x0

    .line 235
    return-object p0

    .line 236
    :cond_a
    iget-object p0, v2, Lbv7;->a:Lua4;

    .line 237
    .line 238
    iget-object v3, p0, Lua4;->a:Ljava/lang/Object;

    .line 239
    .line 240
    if-eqz v3, :cond_b

    .line 241
    .line 242
    check-cast v3, Llu7;

    .line 243
    .line 244
    invoke-virtual {v3}, Llu7;->g()Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_b

    .line 249
    .line 250
    move v3, v10

    .line 251
    goto :goto_3

    .line 252
    :cond_b
    move v3, v6

    .line 253
    :goto_3
    new-instance v9, Ldy5;

    .line 254
    .line 255
    invoke-direct {v9, v1}, Ldy5;-><init>(Lgy5;)V

    .line 256
    .line 257
    .line 258
    :cond_c
    invoke-virtual {v9}, Ldy5;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    if-eqz v12, :cond_f

    .line 263
    .line 264
    invoke-virtual {v9}, Ldy5;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    check-cast v12, Lm61;

    .line 269
    .line 270
    invoke-virtual {p0, v12}, Lua4;->f(Lm61;)Lua4;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    if-nez v3, :cond_e

    .line 275
    .line 276
    iget-object v3, p0, Lua4;->a:Ljava/lang/Object;

    .line 277
    .line 278
    if-eqz v3, :cond_d

    .line 279
    .line 280
    check-cast v3, Llu7;

    .line 281
    .line 282
    invoke-virtual {v3}, Llu7;->g()Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_d

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_d
    move v3, v6

    .line 290
    goto :goto_5

    .line 291
    :cond_e
    :goto_4
    move v3, v10

    .line 292
    :goto_5
    if-nez v3, :cond_f

    .line 293
    .line 294
    invoke-virtual {p0}, Lua4;->isEmpty()Z

    .line 295
    .line 296
    .line 297
    move-result v12

    .line 298
    if-eqz v12, :cond_c

    .line 299
    .line 300
    :cond_f
    if-eqz v8, :cond_10

    .line 301
    .line 302
    if-nez v3, :cond_10

    .line 303
    .line 304
    iget-object p0, v2, Lbv7;->a:Lua4;

    .line 305
    .line 306
    invoke-virtual {p0, v1}, Lua4;->l(Lgy5;)Lua4;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    invoke-virtual {p0}, Lua4;->isEmpty()Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-nez v1, :cond_10

    .line 315
    .line 316
    new-instance v1, Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-static {p0, v1}, Lbv7;->j(Lua4;Ljava/util/ArrayList;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-eqz v1, :cond_10

    .line 333
    .line 334
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    check-cast v1, Lik8;

    .line 339
    .line 340
    new-instance v9, Lgd;

    .line 341
    .line 342
    invoke-direct {v9, v2, v1}, Lgd;-><init>(Lbv7;Lik8;)V

    .line 343
    .line 344
    .line 345
    iget-object v1, v1, Lik8;->a:Lqc6;

    .line 346
    .line 347
    invoke-static {v1}, Lbv7;->k(Lqc6;)Lqc6;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    iget-object v12, v9, Lgd;->c:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v12, Lhx7;

    .line 354
    .line 355
    invoke-interface {v4, v1, v12, v9, v9}, Lav7;->f(Lqc6;Lhx7;Lgd;Lgd;)V

    .line 356
    .line 357
    .line 358
    goto :goto_6

    .line 359
    :cond_10
    if-nez v3, :cond_13

    .line 360
    .line 361
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 362
    .line 363
    .line 364
    move-result p0

    .line 365
    if-nez p0, :cond_13

    .line 366
    .line 367
    if-nez v11, :cond_13

    .line 368
    .line 369
    if-eqz v8, :cond_11

    .line 370
    .line 371
    invoke-static {v0}, Lbv7;->k(Lqc6;)Lqc6;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    invoke-interface {v4, p0}, Lav7;->c(Lqc6;)V

    .line 376
    .line 377
    .line 378
    goto :goto_9

    .line 379
    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_13

    .line 388
    .line 389
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    check-cast v0, Lqc6;

    .line 394
    .line 395
    invoke-virtual {v2, v0}, Lbv7;->m(Lqc6;)Lhx7;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    if-eqz v1, :cond_12

    .line 400
    .line 401
    move v1, v10

    .line 402
    goto :goto_8

    .line 403
    :cond_12
    move v1, v6

    .line 404
    :goto_8
    invoke-static {v1}, Lzm5;->s(Z)V

    .line 405
    .line 406
    .line 407
    invoke-static {v0}, Lbv7;->k(Lqc6;)Lqc6;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-interface {v4, v0}, Lav7;->c(Lqc6;)V

    .line 412
    .line 413
    .line 414
    goto :goto_7

    .line 415
    :cond_13
    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 416
    .line 417
    .line 418
    move-result-object p0

    .line 419
    :cond_14
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-eqz v0, :cond_16

    .line 424
    .line 425
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    check-cast v0, Lqc6;

    .line 430
    .line 431
    iget-object v1, v0, Lqc6;->b:Loc6;

    .line 432
    .line 433
    invoke-virtual {v1}, Loc6;->d()Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-nez v1, :cond_14

    .line 438
    .line 439
    invoke-virtual {v2, v0}, Lbv7;->m(Lqc6;)Lhx7;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    if-eqz v1, :cond_15

    .line 444
    .line 445
    move v3, v10

    .line 446
    goto :goto_b

    .line 447
    :cond_15
    move v3, v6

    .line 448
    :goto_b
    invoke-static {v3}, Lzm5;->s(Z)V

    .line 449
    .line 450
    .line 451
    iget-object v3, v2, Lbv7;->d:Ljava/util/HashMap;

    .line 452
    .line 453
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    iget-object v0, v2, Lbv7;->c:Ljava/util/HashMap;

    .line 457
    .line 458
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    goto :goto_a

    .line 462
    :cond_16
    return-object v7

    .line 463
    :cond_17
    return-object v5
.end method
